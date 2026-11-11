Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorOps?download=true
inline.NumInlined: 52322
inline.NumDeleted: 18098
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_117StepCompareFolder15matchAndRewriteEN4mlir6vector6StepOpERNS1_15PatternRewriterE:bb.a

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cg, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ch = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ch ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !106
  %i.cj = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = xor i64 %i.ch, -1
  %i.cm = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cl
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cj, ptr %i.ck, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cj, i64 %i.cm, i64 %i.ch ; 2 uses
  %i.cn = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.cg, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110
  %i.cq = icmp eq ptr %i.cp, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cq, label %bb.r, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !141
  br label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i

_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i: ; preds = %bb.r, %bb.q, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cs, %bb.r ], [ null, %bb.q ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.bu, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %i.ct, 1
  br label %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit

_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit: ; preds = %_ZNRSt8optionalIbE5valueEv.exit, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i ], [ zeroinitializer, %_ZNRSt8optionalIbE5valueEv.exit ] ; 2 uses
  %i.cu = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit
  %i.cw = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !607
  br label %bb.t

.critedge:                                        ; preds = %.split, %bb.g, %bb.b, %bb.c, %bb.d, %_ZZNK12_GLOBAL__N_117StepCompareFolder15matchAndRewriteEN4mlir6vector6StepOpERNS1_15PatternRewriterEENKUlvE_clEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.sroa.042.0 = load ptr, ptr %.sroa.042.071, align 8, !tbaa !289 ; 2 uses
  %.not65 = icmp eq ptr %.sroa.042.0, null
  br i1 %.not65, label %.loopexit, label %bb.b

bb.t:                                             ; preds = %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit, %bb.s
  %.sroa.3.0.i.i = phi ptr [ %i.cy, %bb.s ], [ null, %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit ]
  %i.cz = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.au, ptr %i.cu, ptr %.sroa.3.0.i.i) #27
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -16
  store ptr %i.da, ptr %5, align 8
  %i.db = load ptr, ptr %4, align 8, !tbaa !130
  %i.dc = ptrtoint ptr %5 to i64
  %i.dd = load ptr, ptr %2, align 8, !tbaa !83
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.db, i64 %i.dc, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.a, %bb.t
  %.sroa.016.7 = phi i8 [ 1, %bb.t ], [ 0, %bb.a ], [ 0, %.critedge ]
  ret i8 %.sroa.016.7
}

declare noundef i64 @_ZN4mlir5arith6CmpIOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir9OpBuilderEPNS1_9OperationEEE11callback_fnIS6_EEvlS3_S5_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #27
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128InterleaveDeinterleaveFolderD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #27
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector12InterleaveOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #27
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_128InterleaveDeinterleaveFolder15matchAndRewriteEN4mlir6vector12InterleaveOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 4 uses
  %4 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %5 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !125
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8
  %i.e = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = icmp eq ptr %i.h, @_ZN4mlir6detail14TypeIDResolverINS_6vector14DeinterleaveOpEvE2idE
  %spec.select.i.i.i.i = select i1 %i.i, ptr %i.e, ptr null
  br label %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit

_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.b ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.0.0.copyload.i.i.i.i10 = load ptr, ptr %i.k, align 8, !tbaa !125
  store ptr %.sroa.0.0.copyload.i.i.i.i10, ptr %4, align 8
  %i.l = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i11, label %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15.thread, label %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15

_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i12 = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i12, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.p = icmp ne ptr %i.o, @_ZN4mlir6detail14TypeIDResolverINS_6vector14DeinterleaveOpEvE2idE ; 2 uses
  %spec.select.i.i.i.i13 = select i1 %i.p, ptr null, ptr %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.q = icmp eq ptr %.sroa.0.0.i.i.i, null
  %or.cond.not54 = select i1 %i.q, i1 true, i1 %i.p
  %i.r = icmp ne ptr %.sroa.0.0.i.i.i, %spec.select.i.i.i.i13
  %or.cond51 = select i1 %or.cond.not54, i1 true, i1 %i.r
  br i1 %or.cond51, label %.thread, label %bb.c

_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15.thread: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.thread

bb.c:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15
  %i.s = load i32, ptr %i.a, align 4
  %i.t = and i32 %i.s, 8388608
  %.not.i.i.i16 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i16, label %._crit_edge, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12InterleaveOpENS0_9NOperandsILj2EE4ImplEE11getOperandsEv.exit, !prof !123

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12InterleaveOpENS0_9NOperandsILj2EE4ImplEE11getOperandsEv.exit: ; preds = %bb.c
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !277  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.not5556 = icmp eq i32 %i.w, 0
  br i1 %.not5556, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12InterleaveOpENS0_9NOperandsILj2EE4ImplEE11getOperandsEv.exit, %bb.e
  %.sroa.9.058 = phi i64 [ %i.ah, %bb.e ], [ 0, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12InterleaveOpENS0_9NOperandsILj2EE4ImplEE11getOperandsEv.exit ] ; 3 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.9.058
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !125, !noalias !3780 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.d, label %_ZNK4mlir8OpResult15getResultNumberEv.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !3786
  %i.af = add i64 %i.ae, 6
  %i.ag = and i64 %i.af, 4294967295
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit

_ZNK4mlir8OpResult15getResultNumberEv.exit:       ; preds = %.lr.ph, %bb.d
  %.1.i.i = phi i64 [ %i.ag, %bb.d ], [ %i.ab, %.lr.ph ]
  %.not = icmp eq i64 %.sroa.9.058, %.1.i.i
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit
  %i.ah = add nuw nsw i64 %.sroa.9.058, 1         ; 2 uses
  %.not55 = icmp eq i64 %i.ah, %i.x
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12InterleaveOpENS0_9NOperandsILj2EE4ImplEE11getOperandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !122
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.0.0.copyload.i.i.i.i20 = load ptr, ptr %i.ak, align 8, !tbaa !125
  store ptr %.sroa.0.0.copyload.i.i.i.i20, ptr %5, align 8
  %i.al = ptrtoint ptr %5 to i64
  %i.am = load ptr, ptr %2, align 8, !tbaa !83
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i64 %i.al, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.thread

.thread:                                          ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit, %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15.thread, %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15, %._crit_edge
  %.sroa.08.3 = phi i8 [ 0, %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15.thread ], [ 1, %._crit_edge ], [ 0, %_ZNK4mlir5Value13getDefiningOpINS_6vector14DeinterleaveOpEEET_v.exit15 ], [ 0, %_ZNK4mlir8OpResult15getResultNumberEv.exit ]
  ret i8 %.sroa.08.3
}

declare noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i32 noundef, ptr, i64, ptr noundef byval(%"class.llvm::function_ref.5323") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_6vector6detail24CombiningKindAttrStorageEJNSA_13CombiningKindEEEEPT_NS0_IFvSF_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_(i64 noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3788, !nonnull !149, !align !612
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !215
  %i.e = load i32, ptr %i.b, align 4, !tbaa !515
  %i.f = icmp eq i32 %i.d, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_6vector6detail24CombiningKindAttrStorageEJNSB_13CombiningKindEEEEPT_NS0_IFvSG_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3791, !nonnull !149, !align !612
  %i.c = load i32, ptr %i.b, align 4, !tbaa !515
  %i.d = load ptr, ptr %1, align 8, !tbaa !623    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !624
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %1, align 8, !tbaa !623
  br label %_ZN4mlir6vector6detail24CombiningKindAttrStorage9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJNS0_13CombiningKindEEE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 16, i64 noundef 16, i8 3)
  br label %_ZN4mlir6vector6detail24CombiningKindAttrStorage9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJNS0_13CombiningKindEEE.exit.i

_ZN4mlir6vector6detail24CombiningKindAttrStorage9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJNS0_13CombiningKindEEE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.c ] ; 4 uses
  store ptr null, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !139
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  store i32 %i.c, ptr %i.l, align 8, !tbaa !215
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3792, !nonnull !149, !align !150 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3794 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZZN4mlir14StorageUniquer3getINS_6vector6detail24CombiningKindAttrStorageEJNS2_13CombiningKindEEEEPT_N4llvm12function_refIFvS7_EEENS_6TypeIDEDpOT0_ENKUlRNS0_16StorageAllocatorEE_clESH_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6vector6detail24CombiningKindAttrStorage9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJNS0_13CombiningKindEEE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !3795
  tail call void %i.o(i64 noundef %i.q, ptr noundef nonnull %.0.i.i.i.i.i.i.i) #27, !inline_history !3789
  br label %_ZZN4mlir14StorageUniquer3getINS_6vector6detail24CombiningKindAttrStorageEJNS2_13CombiningKindEEEEPT_N4llvm12function_refIFvS7_EEENS_6TypeIDEDpOT0_ENKUlRNS0_16StorageAllocatorEE_clESH_.exit

_ZZN4mlir14StorageUniquer3getINS_6vector6detail24CombiningKindAttrStorageEJNS2_13CombiningKindEEEEPT_N4llvm12function_refIFvS7_EEENS_6TypeIDEDpOT0_ENKUlRNS0_16StorageAllocatorEE_clESH_.exit: ; preds = %_ZN4mlir6vector6detail24CombiningKindAttrStorage9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJNS0_13CombiningKindEEE.exit.i, %bb.d
  ret ptr %.0.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #27 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !133  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !134
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !119

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !133
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !133
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !133
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #27 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !133 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !132
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !133
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !133
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
end_hunk_0
