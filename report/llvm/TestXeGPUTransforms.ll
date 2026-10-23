Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestXeGPUTransforms?download=true
inline.NumInlined: 5436
inline.NumDeleted: 3258
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_:bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.ai = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = xor i64 %i.ag, -1
  %i.al = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ak
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, ptr %i.aj, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.al, i64 %i.ag ; 2 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.af, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i5 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i5, label %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE6doCastES4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.ao = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !102
  %i.ap = icmp eq ptr %i.ao, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ap, label %bb.i, label %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE6doCastES4_.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132
  br label %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE6doCastES4_.exit

_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE6doCastES4_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.h, %bb.i
  %i.as = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.i ], [ null, %bb.h ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.as, 1
  br label %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit.thread

_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, %bb.d, %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit, %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE6doCastES4_.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE6doCastES4_.exit ], [ zeroinitializer, %_ZN4llvm8CastInfoIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeEvE10isPossibleES4_.exit ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir4TypeELj6EEENS2_10ShapedTypeENS0_8ArrayRefIlEEEZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlS5_S7_E_E9_M_invokeERKSt9_Any_dataOS5_OS7_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.452") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) #2 align 2 {
bb.a:
  %4 = alloca %"class.std::optional.458", align 8 ; 6 uses
  %5 = alloca %"class.mlir::ShapedType", align 16 ; 8 uses
  %6 = alloca %"class.mlir::xegpu::TensorDescType", align 8 ; 6 uses
  %7 = alloca %"class.mlir::xegpu::DistributeLayoutAttr", align 8 ; 8 uses
  %8 = alloca %"class.llvm::SmallVector.317", align 8 ; 6 uses
  %9 = alloca %"class.std::optional.311", align 8 ; 8 uses
  %.val4 = load ptr, ptr %3, align 8, !tbaa !134  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !tbaa !128 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !405
  %i.b = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.b, ptr %5, align 16, !noalias !406
  %i.c = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24, !noalias !406 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !406
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %5, align 16, !noalias !406 ; 2 uses
  %i.d = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !137, !noalias !406
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !41, !noalias !406
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5xegpu14TensorDescTypeEvE2idE ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.f, ptr %.sroa.0.0.copyload.i.i.i.i, ptr null
  store ptr %spec.select.i.i.i.i.i, ptr %6, align 8, !noalias !406
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @_ZNK4mlir5xegpu14TensorDescType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !406
  %i.h = call ptr @_ZNK4mlir5xegpu14TensorDescType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24, !noalias !406 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_(ptr nonnull %i.h), !noalias !406
  br label %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit.i.i.i

_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pn.i.i.i.i.i = phi { ptr, ptr } [ %i.i, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.j = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 0 ; 2 uses
  store ptr %i.j, ptr %7, align 8, !noalias !406
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 1
  store ptr %i.l, ptr %i.k, align 8, !noalias !406
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !406
  call void @_ZNK4mlir5xegpu20DistributeLayoutAttr27getEffectiveLaneLayoutAsIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.317") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7) #24, !noalias !406
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30, !noalias !406
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %8, align 8, !tbaa !29, !noalias !406 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.o) #24, !noalias !406
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i:      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !406
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !noalias !406
  br label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i
  %i.r = call { ptr, ptr } @_ZNK4mlir5xegpu20DistributeLayoutAttr12dropInstDataEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #24, !noalias !406 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.s, ptr %7, align 8, !noalias !406
  store ptr %i.t, ptr %i.k, align 8, !noalias !406
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit.i.i.i
  %.sroa.010.0.copyload.i.i.i = phi ptr [ null, %bb.f ], [ %i.s, %bb.g ], [ null, %_ZNK4mlir5xegpu14TensorDescType13getLayoutAttrEv.exit.i.i.i ]
  %i.u = load ptr, ptr %1, align 8, !tbaa !408, !noalias !406, !nonnull !139, !align !409
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49, !noalias !406
  %i.w = call ptr @_ZN4mlir5xegpu14TensorDescType3getEPNS_11MLIRContextEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeES8_(ptr noundef %i.v, ptr %.val4, i64 %.val5, ptr %i.c, ptr %i.g, ptr %.sroa.010.0.copyload.i.i.i) #24, !noalias !406 ; 2 uses
  %i.x = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24, !noalias !406 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 1        ; 2 uses
  %i.z = icmp ugt i64 %i.y, 2
  br i1 %i.z, label %bb.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i.i.i

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i.i.i: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !29, !alias.scope !406
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ac, align 4, !tbaa !31, !alias.scope !406
  br label %.lr.ph.preheader.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add i64 %i.y, -2
  %i.ae = extractvalue { ptr, i64 } %i.x, 0
  %i.af = call noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr %i.ae, i64 %i.ad) #24, !noalias !406 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !29, !alias.scope !406
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ai, align 4, !tbaa !31, !alias.scope !406
  %i.aj = icmp ugt i64 %i.af, 6
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8, !tbaa !30, !alias.scope !406
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.ag, i64 noundef %i.af, i64 noundef 8) #24
  %i.ak = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !406 ; 2 uses
  %i.al = ptrtoint ptr %i.w to i64                ; 2 uses
  %n.vec34 = and i64 %i.af, -4                    ; 3 uses
  %i.am = shl i64 %n.vec34, 3
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.ao = and i64 %i.af, 3
  %broadcast.splatinsert35 = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat36 = shufflevector <2 x i64> %broadcast.splatinsert35, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %index38 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ap = shl i64 %index38, 3
  %next.gep39 = getelementptr i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x i64> %broadcast.splat36, ptr %next.gep39, align 8, !tbaa !140
  store <2 x i64> %broadcast.splat36, ptr %i.aq, align 8, !tbaa !140
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.ar, label %middle.block41, label %vector.body37, !llvm.loop !396

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.af, %n.vec34
  br i1 %cmp.n42, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %middle.block41, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.an, %middle.block41 ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ao, %middle.block41 ]
  store i64 %i.al, ptr %.09.i.i.i.i.i.i.i.i.i, align 8, !tbaa !140
  %i.as = add i64 %.068.i.i.i.i.i.i.i.i.i, -1     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !397

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i: ; preds = %bb.i
  %.not.i25.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i25.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i.i.i
  %i.au = phi i64 [ 1, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i.i.i ], [ %i.af, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i ] ; 7 uses
  %i.av = phi ptr [ %i.aa, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i.i.i ], [ %i.ag, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i ]
  %i.aw = phi ptr [ %i.ab, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.thread.i.i.i ], [ %i.ah, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i ] ; 2 uses
  %i.ax = ptrtoint ptr %i.w to i64                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph21

vector.ph21:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %n.vec22 = and i64 %i.au, 4                     ; 3 uses
  %10 = shl nuw nsw i64 %n.vec22, 3
  %i.az = getelementptr i8, ptr %i.ay, i64 %10
  %i.ba = and i64 %i.au, 3
  %broadcast.splatinsert23 = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat24 = shufflevector <2 x i64> %broadcast.splatinsert23, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph21
  %index26 = phi i64 [ 0, %vector.ph21 ], [ %index.next28, %vector.body25 ] ; 2 uses
  %i.bc = shl i64 %index26, 3
  %next.gep27 = getelementptr i8, ptr %i.bb, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x i64> %broadcast.splat24, ptr %next.gep27, align 8, !tbaa !140, !alias.scope !406
  store <2 x i64> %broadcast.splat24, ptr %i.bd, align 8, !tbaa !140, !alias.scope !406
  %index.next28 = add nuw i64 %index26, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next28, %n.vec22
  br i1 %i.be, label %middle.block29, label %vector.body25, !llvm.loop !398

middle.block29:                                   ; preds = %vector.body25
  %cmp.n30 = icmp eq i64 %i.au, %n.vec22
  br i1 %cmp.n30, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %middle.block29
  %.09.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ %i.az, %middle.block29 ]
  %.068.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.au, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ %i.ba, %middle.block29 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  store i64 %i.ax, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !140, !alias.scope !406
  %i.bf = add nsw i64 %.068.i.i.i.i.i.i.i.i, -1   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !399

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block29, %middle.block41, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i
  %i.bh = phi ptr [ %i.ah, %middle.block41 ], [ %i.ah, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i ], [ %i.aw, %middle.block29 ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bi = phi i64 [ %i.af, %middle.block41 ], [ 0, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i ], [ %i.au, %middle.block29 ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i = trunc i64 %i.bi to i32
  store i32 %storemerge.i.i.i.i, ptr %i.bh, align 8, !tbaa !30, !alias.scope !406
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !406
  br label %_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir4TypeELj6EEERZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlNS2_10ShapedTypeENS0_8ArrayRefIlEEE_JS7_S9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !406
  store ptr %.val4, ptr %4, align 8, !tbaa !134, !noalias !406
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.val5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !128, !noalias !406
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.bj, align 8, !tbaa !144, !noalias !406
  %i.bk = call { ptr, ptr } @_ZNK4mlir10ShapedType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull byval(%"class.std::optional.458") align 8 %4, ptr %i.c) #24, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !406
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !406
  %i.bm = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24, !noalias !406 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1
  call void @_ZN4mlir17computeShapeRatioEN4llvm8ArrayRefIlEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.311") align 8 %9, ptr %i.bn, i64 %i.bo, ptr %.val4, i64 %.val5) #24, !noalias !406
  %i.bp = load ptr, ptr %9, align 8, !tbaa !29, !noalias !406
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !30, !noalias !406
  %i.bs = zext i32 %i.br to i64
  %i.bt = call noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr %i.bp, i64 %i.bs) #24, !noalias !406 ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !29, !alias.scope !406
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.bw, align 4, !tbaa !31, !alias.scope !406
  %i.bx = icmp ugt i64 %i.bt, 6
  br i1 %i.bx, label %.lr.ph.preheader.i.i.i.i.i.i35.i.i.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i27.i.i.i

.lr.ph.preheader.i.i.i.i.i.i35.i.i.i:             ; preds = %bb.j
  store i32 0, ptr %i.bv, align 8, !tbaa !30, !alias.scope !406
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.bu, i64 noundef %i.bt, i64 noundef 8) #24
  %i.by = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !406 ; 2 uses
  %i.bz = ptrtoint ptr %i.bl to i64               ; 2 uses
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.ca = shl i64 %n.vec, 3
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = and i64 %i.bt, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i35.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i35.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !140
  store <2 x i64> %broadcast.splat, ptr %i.ce, align 8, !tbaa !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i.i36.i.i.i

.lr.ph.i.i.i.i.i.i36.i.i.i:                       ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i36.i.i.i
  %.09.i.i.i.i.i.i37.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i36.i.i.i ], [ %i.cb, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i38.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i36.i.i.i ], [ %i.cc, %middle.block ]
  store i64 %i.bz, ptr %.09.i.i.i.i.i.i37.i.i.i, align 8, !tbaa !140
  %i.cg = add i64 %.068.i.i.i.i.i.i38.i.i.i, -1   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i37.i.i.i, i64 8
  %.not.i.i.i.i.i.i39.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i39.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i.i36.i.i.i, !llvm.loop !401

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i27.i.i.i: ; preds = %bb.j
  %.not.i28.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i28.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.preheader.i.i.i.i.i29.i.i.i

.lr.ph.preheader.i.i.i.i.i29.i.i.i:               ; preds = %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i27.i.i.i
  %i.ci = ptrtoint ptr %i.bl to i64               ; 6 uses
  store i64 %i.ci, ptr %i.bu, align 8, !tbaa !140, !alias.scope !406
  %.not.i.i.i.i.i33.i.i.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i.i.i.i.i33.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i30.i.i.i.1

.lr.ph.i.i.i.i.i30.i.i.i.1:                       ; preds = %.lr.ph.preheader.i.i.i.i.i29.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !140, !alias.scope !406
  %.not.i.i.i.i.i33.i.i.i.1 = icmp eq i64 %i.bt, 2
  br i1 %.not.i.i.i.i.i33.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i30.i.i.i.2

.lr.ph.i.i.i.i.i30.i.i.i.2:                       ; preds = %.lr.ph.i.i.i.i.i30.i.i.i.1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !140, !alias.scope !406
  %.not.i.i.i.i.i33.i.i.i.2 = icmp eq i64 %i.bt, 3
  br i1 %.not.i.i.i.i.i33.i.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i30.i.i.i.3

.lr.ph.i.i.i.i.i30.i.i.i.3:                       ; preds = %.lr.ph.i.i.i.i.i30.i.i.i.2
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ci, ptr %i.cl, align 8, !tbaa !140, !alias.scope !406
  %.not.i.i.i.i.i33.i.i.i.3 = icmp eq i64 %i.bt, 4
  br i1 %.not.i.i.i.i.i33.i.i.i.3, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i30.i.i.i.4

.lr.ph.i.i.i.i.i30.i.i.i.4:                       ; preds = %.lr.ph.i.i.i.i.i30.i.i.i.3
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ci, ptr %i.cm, align 8, !tbaa !140, !alias.scope !406
  %.not.i.i.i.i.i33.i.i.i.4 = icmp eq i64 %i.bt, 5
  br i1 %.not.i.i.i.i.i33.i.i.i.4, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i30.i.i.i.5

.lr.ph.i.i.i.i.i30.i.i.i.5:                       ; preds = %.lr.ph.i.i.i.i.i30.i.i.i.4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ci, ptr %i.cn, align 8, !tbaa !140, !alias.scope !406
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i29.i.i.i, %.lr.ph.i.i.i.i.i30.i.i.i.1, %.lr.ph.i.i.i.i.i30.i.i.i.2, %.lr.ph.i.i.i.i.i30.i.i.i.3, %.lr.ph.i.i.i.i.i30.i.i.i.4, %.lr.ph.i.i.i.i.i30.i.i.i.5, %.lr.ph.i.i.i.i.i.i36.i.i.i, %middle.block, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i27.i.i.i
  %storemerge.i34.i.i.i = trunc i64 %i.bt to i32
  store i32 %storemerge.i34.i.i.i, ptr %i.bv, align 8, !tbaa !30, !alias.scope !406
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !126, !range !145, !noalias !406, !noundef !139
  %i.cq = trunc nuw i8 %i.cp to i1
  store i8 0, ptr %i.co, align 8, !tbaa !126, !noalias !406
  br i1 %i.cq, label %bb.k, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit.i.i.i

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i
  %i.cr = load ptr, ptr %9, align 8, !tbaa !29, !noalias !406 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.cr) #24
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.l, %bb.k, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !406
  br label %_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir4TypeELj6EEERZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlNS2_10ShapedTypeENS0_8ArrayRefIlEEE_JS7_S9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir4TypeELj6EEERZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlNS2_10ShapedTypeENS0_8ArrayRefIlEEE_JS7_S9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIlLj6EEELb0ELb0EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !405
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir4TypeELj6EEENS2_10ShapedTypeENS0_8ArrayRefIlEEEZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlS5_S7_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlN4mlir10ShapedTypeEN4llvm8ArrayRefIlEEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !45
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlN4mlir10ShapedTypeEN4llvm8ArrayRefIlEEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !147
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlN4mlir10ShapedTypeEN4llvm8ArrayRefIlEEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !410
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlN4mlir10ShapedTypeEN4llvm8ArrayRefIlEEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126TestXeGPUUnrollingPatterns14runOnOperationEvEUlN4mlir10ShapedTypeEN4llvm8ArrayRefIlEEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
end_hunk_0
