Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ACCEmitRemarksPrivate?download=true
inline.NumInlined: 1647
inline.NumDeleted: 1023
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJOS9_EEEEERSA_DpOT_:bb.a
  %i.bb = load <2 x i64>, ptr %i.ay, align 8, !tbaa !50
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !50
  store ptr null, ptr %i.ba, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.bc, %i.p
  br i1 %.not.i.i.i.i.i.i.7, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !210

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_6detail15AnalysisConceptESt14default_deleteIS4_EEED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.be, %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_6detail15AnalysisConceptESt14default_deleteIS4_EEED2Ev.exit.i.i ], [ %i.p, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_6detail15AnalysisConceptESt14default_deleteIS4_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4mlir6detail15AnalysisConceptEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir6detail15AnalysisConceptEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #20, !inline_history !211
  br label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_6detail15AnalysisConceptESt14default_deleteIS4_EEED2Ev.exit.i.i

_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_6detail15AnalysisConceptESt14default_deleteIS4_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail15AnalysisConceptEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.o, %i.be
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !212

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit.loopexit: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_6detail15AnalysisConceptESt14default_deleteIS4_EEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit.loopexit, %bb.a
  %i.bk = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit.loopexit ], [ %i.o, %bb.a ] ; 2 uses
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !70
  %i.bm = icmp eq ptr %i.bk, %i.b
  br i1 %i.bm, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE21takeAllocationForGrowEPSA_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit
  call void @free(ptr noundef %i.bk) #20
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE21takeAllocationForGrowEPSA_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE21takeAllocationForGrowEPSA_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_6detail15AnalysisConceptESt14default_deleteIS6_EEELb0EE19moveElementsForGrowEPSA_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.bn = trunc i64 %i.bl to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !17
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !46
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %i.d, align 8, !tbaa !46
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.bt
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4mlir3acc14OpenACCSupportD2Ev.exit, label %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !214
  br label %_ZN4mlir3acc14OpenACCSupportD2Ev.exit

_ZN4mlir3acc14OpenACCSupportD2Ev.exit:            ; preds = %bb.a, %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !215
  br label %_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev.exit

_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEE10invalidateERNS0_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #20, !inline_history !216
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #20 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !217 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !217 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !217  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #20
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #20, !inline_history !216
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::acc::LoopOp", align 8 ; 8 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %5 = alloca %"class.mlir::acc::SerialOp", align 8 ; 8 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %8 = alloca %"class.mlir::acc::KernelsOp", align 8 ; 8 uses
  %9 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %10 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %11 = alloca %"class.mlir::acc::ParallelOp", align 8 ; 8 uses
  %12 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !219 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3acc10ParallelOpEvE2idE
  %14 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc10ParallelOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i = or i1 %14, %i.e
  %.not1.i.i = icmp eq ptr %1, null
  %.not.i.i = or i1 %.not1.i.i, %spec.select.i.i.i.i.i.not.i.i
  br i1 %.not.i.i, label %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %1, ptr %11, align 8
  %i.f = call i64 @_ZN4mlir3acc10ParallelOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 9) #20 ; 3 uses
  %i.g = load ptr, ptr %11, align 8, !tbaa !221   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir3acc10ParallelOp23getFirstprivateOperandsEv.exit.i.i.i.i, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  br label %_ZN4mlir3acc10ParallelOp23getFirstprivateOperandsEv.exit.i.i.i.i

_ZN4mlir3acc10ParallelOp23getFirstprivateOperandsEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ]
  %i.m = and i64 %i.f, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i64 %i.f, 32
  %i.n = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i.i, %i.f
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 %i.m
  %i.q = sub nsw i64 %i.o, %i.m
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.p, i64 %i.q) #20
  %i.r = load i64, ptr %12, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = load i64, ptr %i.s, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc14FirstprivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef nonnull %1, i64 %i.r, i64 %i.t, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.12, i64 12)
  %i.u = load ptr, ptr %11, align 8, !tbaa !221
  %i.v = call i64 @_ZN4mlir3acc10ParallelOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 8) #20 ; 3 uses
  %i.w = load ptr, ptr %11, align 8, !tbaa !221   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 8388608
  %.not.i.i.i.i.i4.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i4.i.i.i.i, label %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.thread.i, label %bb.d, !prof !72

bb.d:                                             ; preds = %_ZN4mlir3acc10ParallelOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !224
  br label %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.thread.i

_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.thread.i: ; preds = %bb.d, %_ZN4mlir3acc10ParallelOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i5.i.i.i.i = phi ptr [ %i.ab, %bb.d ], [ null, %_ZN4mlir3acc10ParallelOp23getFirstprivateOperandsEv.exit.i.i.i.i ]
  %i.ac = and i64 %i.v, 4294967295                ; 2 uses
  %.sroa.5.0.extract.shift.i.i6.i.i.i.i = lshr i64 %i.v, 32
  %i.ad = add i64 %.sroa.5.0.extract.shift.i.i6.i.i.i.i, %i.v
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i5.i.i.i.i, i64 %i.ac
  %i.ag = sub nsw i64 %i.ae, %i.ac
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %i.af, i64 %i.ag) #20
  %i.ah = load i64, ptr %13, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc9PrivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef %i.u, i64 %i.ah, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.13, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i: ; preds = %bb.a
  %15 = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3acc9KernelsOpEvE2idE
  %.not.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc9KernelsOpEvE2idE
  %spec.select.i.i.i.i.i.not.i5.i = or i1 %.not.i, %15
  br i1 %spec.select.i.i.i.i.i.not.i5.i, label %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc9KernelsOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %1, ptr %8, align 8
  %i.ak = call i64 @_ZN4mlir3acc9KernelsOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 9) #20 ; 3 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !221   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 8388608
  %.not.i.i.i.i.i.i.i.i7.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i7.i, label %_ZN4mlir3acc9KernelsOp23getFirstprivateOperandsEv.exit.i.i.i.i, label %bb.f, !prof !72

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !224
  br label %_ZN4mlir3acc9KernelsOp23getFirstprivateOperandsEv.exit.i.i.i.i

_ZN4mlir3acc9KernelsOp23getFirstprivateOperandsEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i8.i = phi ptr [ %i.aq, %bb.f ], [ null, %bb.e ]
  %i.ar = and i64 %i.ak, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i9.i = lshr i64 %i.ak, 32
  %i.as = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i9.i, %i.ak
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i8.i, i64 %i.ar
  %i.av = sub nsw i64 %i.at, %i.ar
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.au, i64 %i.av) #20
  %i.aw = load i64, ptr %9, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc14FirstprivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef nonnull %1, i64 %i.aw, i64 %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.12, i64 12)
  %i.az = load ptr, ptr %8, align 8, !tbaa !221
  %i.ba = call i64 @_ZN4mlir3acc9KernelsOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 8) #20 ; 3 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !221   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 8388608
  %.not.i.i.i.i.i4.i.i.i10.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i4.i.i.i10.i, label %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc9KernelsOpEEEDaS5_.exit.i.i, label %bb.g, !prof !72

bb.g:                                             ; preds = %_ZN4mlir3acc9KernelsOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !224
  br label %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc9KernelsOpEEEDaS5_.exit.i.i

_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc9KernelsOpEEEDaS5_.exit.i.i: ; preds = %bb.g, %_ZN4mlir3acc9KernelsOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i5.i.i.i11.i = phi ptr [ %i.bg, %bb.g ], [ null, %_ZN4mlir3acc9KernelsOp23getFirstprivateOperandsEv.exit.i.i.i.i ]
  %i.bh = and i64 %i.ba, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i6.i.i.i12.i = lshr i64 %i.ba, 32
  %i.bi = add i64 %.sroa.5.0.extract.shift.i.i6.i.i.i12.i, %i.ba
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i5.i.i.i11.i, i64 %i.bh
  %i.bl = sub nsw i64 %i.bj, %i.bh
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.bk, i64 %i.bl) #20
  %i.bm = load i64, ptr %10, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bo = load i64, ptr %i.bn, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc9PrivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef %i.az, i64 %i.bm, i64 %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.13, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc9KernelsOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i: ; preds = %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i
  %16 = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3acc8SerialOpEvE2idE
  %.not11.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc8SerialOpEvE2idE
  %spec.select.i.i.i.i.i.not.i15.i = or i1 %.not11.i, %16
  br i1 %spec.select.i.i.i.i.i.not.i15.i, label %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc8SerialOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc9KernelsOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %5, align 8
  %i.bp = call i64 @_ZN4mlir3acc8SerialOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 6) #20 ; 3 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !221   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 8388608
  %.not.i.i.i.i.i.i.i.i16.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i16.i, label %_ZN4mlir3acc8SerialOp23getFirstprivateOperandsEv.exit.i.i.i.i, label %bb.i, !prof !72

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !224
  br label %_ZN4mlir3acc8SerialOp23getFirstprivateOperandsEv.exit.i.i.i.i

_ZN4mlir3acc8SerialOp23getFirstprivateOperandsEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i17.i = phi ptr [ %i.bv, %bb.i ], [ null, %bb.h ]
  %i.bw = and i64 %i.bp, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i18.i = lshr i64 %i.bp, 32
  %i.bx = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i18.i, %i.bp
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i17.i, i64 %i.bw
  %i.ca = sub nsw i64 %i.by, %i.bw
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.bz, i64 %i.ca) #20
  %i.cb = load i64, ptr %6, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc14FirstprivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef nonnull %1, i64 %i.cb, i64 %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.12, i64 12)
  %i.ce = load ptr, ptr %5, align 8, !tbaa !221
  %i.cf = call i64 @_ZN4mlir3acc8SerialOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 5) #20 ; 3 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !221   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = and i32 %i.ci, 8388608
  %.not.i.i.i.i.i4.i.i.i19.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i4.i.i.i19.i, label %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc8SerialOpEEEDaS5_.exit.i.i, label %bb.j, !prof !72

bb.j:                                             ; preds = %_ZN4mlir3acc8SerialOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !224
  br label %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc8SerialOpEEEDaS5_.exit.i.i

_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc8SerialOpEEEDaS5_.exit.i.i: ; preds = %bb.j, %_ZN4mlir3acc8SerialOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i5.i.i.i20.i = phi ptr [ %i.cl, %bb.j ], [ null, %_ZN4mlir3acc8SerialOp23getFirstprivateOperandsEv.exit.i.i.i.i ]
  %i.cm = and i64 %i.cf, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i6.i.i.i21.i = lshr i64 %i.cf, 32
  %i.cn = add i64 %.sroa.5.0.extract.shift.i.i6.i.i.i21.i, %i.cf
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i5.i.i.i20.i, i64 %i.cm
  %i.cq = sub nsw i64 %i.co, %i.cm
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.cp, i64 %i.cq) #20
  %i.cr = load i64, ptr %7, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ct = load i64, ptr %i.cs, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc9PrivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef %i.ce, i64 %i.cr, i64 %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.13, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc8SerialOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i: ; preds = %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc9KernelsOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i
  %17 = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3acc6LoopOpEvE2idE
  %.not12.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc6LoopOpEvE2idE
  %spec.select.i.i.i.i.i.not.i25.i = or i1 %.not12.i, %17
  br i1 %spec.select.i.i.i.i.i.not.i25.i, label %_ZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc8SerialOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %2, align 8
  %i.cu = call i64 @_ZN4mlir3acc6LoopOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 9) #20 ; 3 uses
  %i.cv = load ptr, ptr %2, align 8, !tbaa !221   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 8388608
  %.not.i.i.i.i.i.i.i.i25.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i.i.i25.i, label %_ZN4mlir3acc6LoopOp23getFirstprivateOperandsEv.exit.i.i.i.i, label %bb.l, !prof !72

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !224
  br label %_ZN4mlir3acc6LoopOp23getFirstprivateOperandsEv.exit.i.i.i.i

_ZN4mlir3acc6LoopOp23getFirstprivateOperandsEv.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i.i.i.i26.i = phi ptr [ %i.da, %bb.l ], [ null, %bb.k ]
  %i.db = and i64 %i.cu, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i27.i = lshr i64 %i.cu, 32
  %i.dc = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i27.i, %i.cu
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i26.i, i64 %i.db
  %i.df = sub nsw i64 %i.dd, %i.db
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.de, i64 %i.df) #20
  %i.dg = load i64, ptr %3, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load i64, ptr %i.dh, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc14FirstprivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef nonnull %1, i64 %i.dg, i64 %i.di, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.12, i64 12)
  %i.dj = load ptr, ptr %2, align 8, !tbaa !221
  %i.dk = call i64 @_ZN4mlir3acc6LoopOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 8) #20 ; 3 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !221   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = and i32 %i.dn, 8388608
  %.not.i.i.i.i.i4.i.i.i28.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i.i4.i.i.i28.i, label %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc6LoopOpEEEDaS5_.exit.i.i, label %bb.m, !prof !72

bb.m:                                             ; preds = %_ZN4mlir3acc6LoopOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !224
  br label %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc6LoopOpEEEDaS5_.exit.i.i

_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc6LoopOpEEEDaS5_.exit.i.i: ; preds = %bb.m, %_ZN4mlir3acc6LoopOp23getFirstprivateOperandsEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i5.i.i.i29.i = phi ptr [ %i.dq, %bb.m ], [ null, %_ZN4mlir3acc6LoopOp23getFirstprivateOperandsEv.exit.i.i.i.i ]
  %i.dr = and i64 %i.dk, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i6.i.i.i30.i = lshr i64 %i.dk, 32
  %i.ds = add i64 %.sroa.5.0.extract.shift.i.i6.i.i.i30.i, %i.dk
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i5.i.i.i29.i, i64 %i.dr
  %i.dv = sub nsw i64 %i.dt, %i.dr
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.du, i64 %i.dv) #20
  %i.dw = load i64, ptr %4, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dy = load i64, ptr %i.dx, align 8
  call fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc9PrivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef %i.dj, i64 %i.dw, i64 %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr nonnull @.str.13, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit: ; preds = %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc10ParallelOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.thread.i, %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc9KernelsOpEEEDaS5_.exit.i.i, %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc8SerialOpEEEDaS5_.exit.i.i, %_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE4CaseINS1_3acc8SerialOpERZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlS3_E_clES3_EUlT_E_EERS4_OT0_.exit.i, %_ZZZN12_GLOBAL__N_121ACCEmitRemarksPrivate14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_ENKUlT_E_clINS1_3acc6LoopOpEEEDaS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119reportPrivatizationIN4mlir3acc14FirstprivateOpEEEvPNS1_9OperationENS1_10ValueRangeERNS2_14OpenACCSupportEN4llvm9StringRefE(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %4, i64 %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.llvm::SmallVector.29", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.29", align 8 ; 11 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 6 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %10 = alloca %"class.mlir::acc::FirstprivateOp", align 8 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.mlir::remark::detail::InFlightRemark", align 8 ; 2 uses
  %14 = alloca %"class.std::function.273", align 8 ; 7 uses
  %15 = alloca %class.anon.275, align 8           ; 9 uses
  %16 = alloca %"class.mlir::remark::detail::InFlightRemark", align 8 ; 2 uses
  %17 = alloca %"class.std::function.273", align 8 ; 7 uses
  %18 = alloca %class.anon.276, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 1, ptr %i.g, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i64 %1, ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8
  %.not69 = icmp eq i64 %2, 0
  br i1 %.not69, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.m

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.l = ptrtoint ptr %12 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 25
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pre = load i32, ptr %i.c, align 8, !tbaa !46
  %i.o = icmp eq i32 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %i.o, label %bb.m, label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EEC2EOS7_.exit

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %storemerge70 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.p = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %storemerge70) #20
  store ptr %i.p, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.q = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20 ; 2 uses
  store ptr %i.q, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.s = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 noundef 0) #20
  call void @_ZN4mlir3acc14OpenACCSupport15getVariableNameB5cxx11ENS_5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %i.s) #20
  %i.t = call noundef zeroext i1 @_ZN4mlir3acc14FirstprivateOp11getImplicitEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20 ; 3 uses
  %. = select i1 %i.t, ptr %6, ptr %7             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.u = load i64, ptr %i.i, align 8, !tbaa !76   ; 5 uses
  %i.v = icmp eq i64 %i.u, 0
  store ptr %i.j, ptr %12, align 8, !tbaa !77
  br i1 %i.v, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.j, ptr noundef nonnull align 1 dereferenceable(9) @.str.14, i64 9, i1 false)
  store i64 9, ptr %i.k, align 8, !tbaa !76
  store i8 0, ptr %i.n, align 1, !tbaa !78
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %11, align 8, !tbaa !79    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.u, ptr %i.a, align 8, !tbaa !70
  %i.x = icmp ugt i64 %i.u, 15
  br i1 %i.x, label %._crit_edge.i.i17.thread, label %._crit_edge.i.i17

._crit_edge.i.i17.thread:                         ; preds = %bb.c
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.y, ptr %12, align 8, !tbaa !79
  %i.z = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.z, ptr %i.j, align 8, !tbaa !78
  br label %bb.e

._crit_edge.i.i17:                                ; preds = %bb.c
  %cond = icmp eq i64 %i.u, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i17
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !78
  store i8 %i.aa, ptr %i.j, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i17.thread, %._crit_edge.i.i17
  %i.ab = phi ptr [ %i.y, %._crit_edge.i.i17.thread ], [ %i.j, %._crit_edge.i.i17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.w, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !76
  %i.ad = load ptr, ptr %12, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %._crit_edge.i.i
  %..sroa.sel = select i1 %i.t, ptr %i.c, ptr %i.f ; 4 uses
  %i.af = load i32, ptr %..sroa.sel, align 8, !tbaa !46 ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %.val = load i32, ptr %i.d, align 4
  %.val68 = load i32, ptr %i.g, align 4
  %i.ai = select i1 %i.t, i32 %.val, i32 %.val68
  %.not.i.i.not.i = icmp ult i32 %i.af, %i.ai
  %.pre3.i = load ptr, ptr %., align 8, !tbaa !16 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i, label %bb.g, !prof !57

end_hunk_0
