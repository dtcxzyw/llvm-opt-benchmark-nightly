Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestSCFUtils?download=true
inline.NumInlined: 2207
inline.NumDeleted: 1497
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !211

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !49
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !215  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !228  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !213

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 25) #25
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #25, !inline_history !212
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #25 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !213

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 25) #25
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #25, !inline_history !212
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir19LoopLikeOpInterface18getStaticTripCountEv(ptr dead_on_unwind writable sret(%"class.std::optional.119") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9Operation18setDiscardableAttrEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::NamedAttrList", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !86
  store ptr %1, ptr %5, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !67
  %i.f = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(34) %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.g, align 8
  call void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.04.0.copyload.i) #25
  %i.h = call ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %i.f, ptr %3) #25
  %.not.i = icmp eq ptr %i.h, %3
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  %i.j = call ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.i) #25
  store ptr %i.j, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4mlir9Operation18setDiscardableAttrENS_10StringAttrENS_9AttributeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.k) #25
  br label %_ZN4mlir9Operation18setDiscardableAttrENS_10StringAttrENS_9AttributeE.exit

_ZN4mlir9Operation18setDiscardableAttrENS_10StringAttrENS_9AttributeE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

declare ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr, i64 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88), ptr) unnamed_addr #2

declare ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #14 comdat {
bb.a:
  tail call void @abort() #28
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_119TestSCFForUtilsPass14runOnOperationEvEUlNS1_3scf5ForOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 8 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 6 uses
  %4 = alloca %"class.std::optional.206", align 8 ; 6 uses
  %5 = alloca %"class.mlir::scf::ForOp", align 8  ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.176", align 8 ; 10 uses
  %7 = alloca %"class.std::function.187", align 8 ; 9 uses
  %8 = alloca %"class.mlir::IRRewriter", align 8  ; 7 uses
  %9 = alloca %"class.llvm::FailureOr", align 8   ; 4 uses
  %10 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %11 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %11, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_119TestSCFForUtilsPass14runOnOperationEvEUlNS_3scf5ForOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %1, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZZN12_GLOBAL__N_119TestSCFForUtilsPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @_ZN4mlir3scf5ForOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 3) #25 ; 3 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 8388608
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir3scf5ForOp11getInitArgsEv.exit.i.i, label %bb.d, !prof !233

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !236
  br label %_ZN4mlir3scf5ForOp11getInitArgsEv.exit.i.i

_ZN4mlir3scf5ForOp11getInitArgsEv.exit.i.i:       ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ]
  %i.p = and i64 %i.i, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.i, 32
  %i.q = add i64 %.sroa.5.0.extract.shift.i.i.i.i, %i.i
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %i.p
  %i.t = sub nsw i64 %i.r, %i.p
  %i.u = icmp eq i64 %i.r, %i.p
  br i1 %i.u, label %_ZZN12_GLOBAL__N_119TestSCFForUtilsPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir3scf5ForOp11getInitArgsEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4mlir3scf5ForOp23getYieldedValuesMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.206") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !238, !range !32, !noundef !33
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !240
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr null, i64 0) #25
  br label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE16getYieldedValuesEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %4, align 8, !tbaa !241   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 2 uses
  %i.ae = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir9Operation13operand_beginEv.exit10.i.i.i, label %bb.i, !prof !233

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !236
  br label %_ZN4mlir9Operation13operand_beginEv.exit10.i.i.i

_ZN4mlir9Operation13operand_beginEv.exit10.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i31.i.i.i = phi ptr [ %i.aj, %bb.i ], [ null, %bb.h ]
  %i.ak = zext i32 %i.ae to i64
  %i.al = load i64, ptr %i.y, align 8, !tbaa !240
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i31.i.i.i, i64 %i.ak
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.am, i64 %i.al) #25
  br label %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE16getYieldedValuesEv.exit.i.i

_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE16getYieldedValuesEv.exit.i.i: ; preds = %_ZN4mlir9Operation13operand_beginEv.exit10.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.load.i.i.i = load i64, ptr %3, align 8  ; 2 uses
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !15, !alias.scope !242
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !52, !alias.scope !242
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.ap, align 4, !tbaa !16, !alias.scope !242
  %i.aq = icmp ugt i64 %.fca.1.load.i.i.i, 6
  br i1 %i.aq, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i.i: ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE16getYieldedValuesEv.exit.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.an, i64 noundef %.fca.1.load.i.i.i, i64 noundef 8) #25
  %.pre.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !52, !alias.scope !242
  %.pre28.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !242
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !242
  store i64 %.fca.0.load.i.i.i, ptr %2, align 8, !noalias !242
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !noalias !242
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i: ; preds = %_ZN4mlir6detail24LoopLikeOpInterfaceTraitINS_3scf5ForOpEE16getYieldedValuesEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !242
  store i64 %.fca.0.load.i.i.i, ptr %2, align 8, !noalias !242
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !noalias !242
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.load.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9to_vectorIN4mlir10ValueRangeEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i.i
  %i.at = phi ptr [ %i.ar, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i.i ], [ %i.as, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i9.i.i.i = phi i64 [ %.pre28.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i ]
  %i.au = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i.i.i ], [ %i.an, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.pre-phi.i.i9.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.aw = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i ]
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ax = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.aw) #25
  %i.ay = ptrtoint ptr %i.ax to i64
  store i64 %i.ay, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !109
  %i.az = load i64, ptr %i.at, align 8, !tbaa !251, !noalias !242
  %i.ba = add nsw i64 %i.az, 1                    ; 3 uses
  store i64 %i.ba, ptr %i.at, align 8, !tbaa !251, !noalias !242
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ba, %.fca.1.load.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !231

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pre27.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !52, !alias.scope !242
  br label %_ZN4llvm9to_vectorIN4mlir10ValueRangeEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit.i.i

_ZN4llvm9to_vectorIN4mlir10ValueRangeEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i
  %i.bc = phi i32 [ %.pre27.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !242
  %i.bd = trunc i64 %.fca.1.load.i.i.i to i32
  %i.be = add i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.ao, align 8, !tbaa !52, !alias.scope !242
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bf = ptrtoint ptr %6 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bi, align 8
  store i64 %i.bf, ptr %7, align 8, !tbaa !111
  store ptr @_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS0_8ArrayRefINS2_13BlockArgumentEEEEZZN12_GLOBAL__N_119TestSCFForUtilsPass14runOnOperationEvENKUlNS2_3scf5ForOpEE_clESF_EUlS6_S7_SA_E_E9_M_invokeERKSt9_Any_dataS6_OS7_OSA_, ptr %i.bh, align 8, !tbaa !253
  store ptr @_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS0_8ArrayRefINS2_13BlockArgumentEEEEZZN12_GLOBAL__N_119TestSCFForUtilsPass14runOnOperationEvENKUlNS2_3scf5ForOpEE_clESF_EUlS6_S7_SA_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.bg, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bj = load ptr, ptr %5, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4mlir10IRRewriterE, i64 16), ptr %8, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.s, i64 %i.t) #25
  %i.bo = load i64, ptr %10, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  call void @_ZN4mlir3scf5ForOp27replaceWithAdditionalYieldsERNS_12RewriterBaseENS_10ValueRangeEbRKSt8functionIFN4llvm11SmallVectorINS_5ValueELj6EEERNS_9OpBuilderENS_8LocationENS6_8ArrayRefINS_13BlockArgumentEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 %i.bo, i64 %i.bq, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !255, !range !32, !noundef !33
  %i.bt = trunc nuw i8 %i.bs to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm9to_vectorIN4mlir10ValueRangeEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bu, align 8
  %i.bv = or i64 %.0.copyload.i.i.i.i.i.i, 4
  store i64 %i.bv, ptr %i.bu, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm9to_vectorIN4mlir10ValueRangeEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISC_EE5valueEEEOS6_.exit.i.i
  call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #25, !inline_history !232 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.by = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.an
end_hunk_0
begin_hunk_1_@_ZNK4mlir13OperationPassINS_8ModuleOpEE13canScheduleOnENS_23RegisteredOperationNameE:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.not.i.i = icmp eq i64 %i.d, %.sroa.4.0.copyload
  %or.cond = select i1 %i.f, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i = call i32 @bcmp(ptr %i.c, ptr %.sroa.0.0.copyload, i64 %i.d)
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_118TestSCFIfUtilsPassENS_13OperationPassINS_8ModuleOpEEEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_118TestSCFIfUtilsPassESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #26, !noalias !289, !inline_history !288 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !13, !noalias !289
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !289
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !13, !noalias !289
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !51, !noalias !289
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !noalias !289
  store ptr %i.i, ptr %i.h, align 8, !tbaa !15, !noalias !289
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !52, !noalias !289
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.k, align 4, !tbaa !16, !noalias !289
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.m, ptr %i.l, align 8, !tbaa !15, !noalias !289
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.n, align 8, !tbaa !52, !noalias !289
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.o, align 4, !tbaa !16, !noalias !289
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !289
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_118TestSCFIfUtilsPassE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !289
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  ret void
}

declare void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr, ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.292, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !125
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.20, i64 4, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4func11FuncDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4func11FuncDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !28
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_4func11FuncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_4func11FuncDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.293") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir4func11FuncDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125, !noalias !292
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26, !noalias !292 ; 2 uses
  tail call void @_ZN4mlir4func11FuncDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #25, !noalias !292
  store ptr %i.c, ptr %0, align 8, !tbaa !127
  ret void
}

declare void @_ZN4mlir4func11FuncDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #25, !inline_history !293
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !77 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !77 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #25
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #25, !inline_history !293
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_118TestSCFIfUtilsPass14runOnOperationEvEUlNS1_3scf4IfOpEE_SF_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %4 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %5 = alloca %"class.mlir::IRRewriter", align 8  ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3scf4IfOpEvE2idE
  %11 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3scf4IfOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %11, %i.d
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_118TestSCFIfUtilsPass14runOnOperationEvEUlNS_3scf4IfOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !302 ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val3.i = load ptr, ptr %i.f, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = load i32, ptr %.val.i, align 4, !tbaa !118 ; 3 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %.val.i, align 4, !tbaa !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.g, i1 false) ; 5 uses
  %i.j = icmp ult i32 %i.i, 10
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.h
  %.030.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02329.i.i.i.i = phi i32 [ %i.q, %bb.h ], [ %i.i, %bb.b ] ; 5 uses
  %i.k = icmp ult i32 %.02329.i.i.i.i, 100
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = add i32 %.030.i.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = icmp ult i32 %.02329.i.i.i.i, 1000
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %.030.i.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ult i32 %.02329.i.i.i.i, 10000
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %.030.i.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = udiv i32 %.02329.i.i.i.i, 10000
  %i.r = add i32 %.030.i.i.i.i, 4                 ; 2 uses
  %i.s = icmp ult i32 %.02329.i.i.i.i, 100000
  br i1 %i.s, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !296

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.l, %bb.c ], [ %i.n, %bb.e ], [ 1, %bb.b ], [ %i.r, %bb.h ] ; 2 uses
  %.lobit.i.i.i = lshr i32 %i.g, 31               ; 2 uses
  %i.t = add i32 %.022.i.i.i.i, %.lobit.i.i.i
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !305, !alias.scope !303
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.u, i8 noundef signext 45) #25
  %i.w = zext nneg i32 %.lobit.i.i.i to i64
  %i.x = load ptr, ptr %2, align 8, !tbaa !307, !alias.scope !303
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 4 uses
  %i.z = icmp ugt i32 %i.i, 99
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i
  %i.aa = add i32 %.022.i.i.i.i, -1
  br label %.lr.ph.i11.i.i.i

.lr.ph.i11.i.i.i:                                 ; preds = %.lr.ph.i11.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.ad, %.lr.ph.i11.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.01819.i.i.i.i = phi i32 [ %i.ao, %.lr.ph.i11.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.ab = urem i32 %.020.i.i.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = udiv i32 %.020.i.i.i.i, 100             ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !67, !noalias !303
  %i.ai = zext i32 %.01819.i.i.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !67
  %i.ak = load i8, ptr %i.af, align 2, !tbaa !67, !noalias !303
  %i.al = add i32 %.01819.i.i.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !67
  %i.ao = add i32 %.01819.i.i.i.i, -2
  %i.ap = icmp ugt i32 %.020.i.i.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i11.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !297

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i11.i.i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i ], [ %i.ad, %.lr.ph.i11.i.i.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i.i.i.i, 9
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = shl nuw nsw i32 %.0.lcssa.i.i.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !67, !noalias !303
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !67
  %i.ax = load i8, ptr %i.at, align 2, !tbaa !67, !noalias !303
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = trunc nuw nsw i32 %.0.lcssa.i.i.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i

_ZNSt7__cxx119to_stringEi.exit.i.i:               ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i = phi i8 [ %i.az, %bb.j ], [ %i.ax, %bb.i ]
  store i8 %storemerge.i.i.i.i, ptr %i.y, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr null, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.be = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bb, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bd, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.be, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4mlir10IRRewriterE, i64 16), ptr %5, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bg, ptr %7, align 8, !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bg, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, i64 13, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.bh, align 8, !tbaa !308
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.bi, align 1, !tbaa !67
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !308, !noalias !309 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 4611686018427387890
  br i1 %i.bl, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #28, !noalias !309
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i
  %i.bm = load ptr, ptr %2, align 8, !tbaa !307, !noalias !309
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bm, i64 noundef %i.bk) #25, !noalias !309 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !305, !alias.scope !309
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !307 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !308 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  store ptr %i.bp, ptr %6, align 8, !tbaa !307, !alias.scope !309
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !67
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !67, !alias.scope !309
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !308
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l
  %i.bx = phi ptr [ %i.bo, %bb.l ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.by = phi i64 [ %i.bt, %bb.l ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !308, !alias.scope !309
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !307
  store i64 0, ptr %i.bz, align 8, !tbaa !308
  store i8 0, ptr %i.bq, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cb, ptr %10, align 8, !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cb, ptr noundef nonnull align 1 dereferenceable(13) @.str.24, i64 13, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 13, ptr %i.cc, align 8, !tbaa !308
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 29
  store i8 0, ptr %i.cd, align 1, !tbaa !67
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ce = load i64, ptr %i.bj, align 8, !tbaa !308, !noalias !310 ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, 4611686018427387890
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_121TestSCFPipeliningPass11getScheduleEN4mlir3scf5ForOpERSt6vectorISt4pairIPNS1_9OperationEjESaIS8_EE:bb.a
  %.not.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.i.i, label %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit, label %.lr.ph.i.i, !llvm.loop !379

_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit: ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ -1, %bb.c ], [ %.06.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 4                 ; 3 uses
  %i.al = icmp ugt i64 %.0.lcssa.i.i, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit
  %i.am = sub nuw i64 %.0.lcssa.i.i, %i.ak
  tail call void @_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.am)
  br label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit
  %i.an = icmp ult i64 %.0.lcssa.i.i, %i.ak
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.0.lcssa.i.i ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.af, %i.ao
  br i1 %.not.i.i3, label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !140
  br label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit

_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %1, ptr %2, align 8, !tbaa !380
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_121TestSCFPipeliningPass11getScheduleENS1_3scf5ForOpERSt6vectorISt4pairIS4_jESaISE_EEEUlS4_E_EES2_lS4_, i64 %i.ap, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE5clearEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !140
  %.not.i.i4 = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i4, label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.as, ptr %i.ae, align 8, !tbaa !140
  br label %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE5clearEv.exit

_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairIPN4mlir9OperationEjESaIS4_EE6resizeEm.exit, %bb.h, %bb.i, %.thread.i, %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_121TestSCFPipeliningPass11predicateOpERN4mlir12RewriterBaseEPNS1_9OperationENS1_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %5 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %6 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %7 = alloca %"class.mlir::ValueTypeRange", align 8 ; 4 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %9 = alloca %"class.llvm::SmallVector.176", align 8 ; 13 uses
  %10 = alloca %"class.mlir::ValueTypeRange", align 8 ; 6 uses
  %11 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !386
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !103, !noalias !386 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.g = zext i32 %i.d to i64
  %.sroa.0.0.i.i = select i1 %i.e, ptr null, ptr %i.f
  store ptr %.sroa.0.0.i.i, ptr %5, align 8, !noalias !386
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !386
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !386
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.sroa.067.0.copyload = load ptr, ptr %7, align 8 ; 2 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.468.0.copyload = load i64, ptr %.sroa.468.0..sroa_idx, align 8 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.569.0.copyload = load i64, ptr %.sroa.569.0..sroa_idx, align 8
  %i.i = icmp eq i64 %.sroa.468.0.copyload, 0
  br i1 %i.i, label %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.067.0.copyload, i64 noundef %.sroa.468.0.copyload) #25
  br label %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit

_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %.sroa.067.0.copyload, %bb.a ]
  %i.l = sub nsw i64 %.sroa.569.0.copyload, %.sroa.468.0.copyload
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.k, i64 %i.l) #25
  %i.m = load i64, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8
  call void @_ZN4mlir9TypeRangeC2ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.m, i64 %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.p = load i64, ptr %6, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = call ptr @_ZN4mlir3scf4IfOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i, i64 %i.p, i64 %i.r, ptr %2, i1 noundef zeroext true) #25 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607
  %i.w = icmp ne i32 %i.v, 0
  call void @llvm.assume(i1 %i.w)
  %i.x = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.x, 1
  %i.y = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.y
  %i.aa = lshr i32 %i.u, 21
  %i.ab = and i32 %i.aa, 2040
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !133
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !77
  call void @_ZN4mlir12RewriterBase12moveOpBeforeEPNS_9OperationEPNS_5BlockEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ak, ptr %i.am) #25
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !128
  %i.ap = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !147
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ar, ptr %i.at, align 8
  %i.au = load i32, ptr %i.c, align 4, !tbaa !103 ; 2 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit
  %i.av = zext i32 %i.au to i64
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.f, i64 %i.av) #25
  %i.aw = load i64, ptr %8, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = call ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i, i64 %i.aw, i64 %i.ay) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir9TypeRangeC2INS_11ResultRangeEEENS_14ValueTypeRangeIT_EE.exit
  %i.ba = load i32, ptr %i.t, align 4             ; 3 uses
  %i.bb = and i32 %i.ba, 8388607
  %i.bc = icmp ne i32 %i.bb, 0
  call void @llvm.assume(i1 %i.bc)
  %i.bd = lshr i32 %i.ba, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i44 = and i32 %i.bd, 1
  %i.be = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i44 to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.be
  %i.bg = lshr i32 %i.ba, 21
  %i.bh = and i32 %i.bg, 2040
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bi
  %i.bk = load i32, ptr %i.ae, align 8, !tbaa !133
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77
  store ptr %i.bp, ptr %i.as, align 8, !tbaa !147
  store ptr %i.br, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i32 6, ptr %i.bu, align 4, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !103 ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 6
  br i1 %i.bx, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.by = zext i32 %i.bw to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bs, i64 noundef %i.by, i64 noundef 8) #25
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !49
  %i.cc = icmp eq ptr %i.cb, @_ZN4mlir6detail14TypeIDResolverINS_6memref9SubViewOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6memref9SubViewOpEvE2idE
  %spec.select.i.i.i.i = and i1 %12, %i.cc
  br i1 %spec.select.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.cd = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !103 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 -16
  %i.ch = zext i32 %i.cf to i64                   ; 2 uses
  %i.ci = load i32, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, %i.ch            ; 2 uses
  %i.cl = load i32, ptr %i.bu, align 4, !tbaa !16
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ugt i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.g, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bs, i64 noundef %i.ck, i64 noundef 8) #25
  %.pre.i = load i32, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %.pre24.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.cj, %bb.f ], [ %.pre24.i, %bb.g ]
  %i.co = phi i32 [ %i.ci, %bb.f ], [ %.pre.i, %bb.g ]
  %.not8.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i
  %i.cp = load ptr, ptr %9, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.010.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.cr = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 noundef %.sroa.2.09.i.i.i.i.i) #25
  %i.cs = ptrtoint ptr %i.cr to i64
  store i64 %i.cs, ptr %.010.i.i.i.i.i, align 8, !tbaa !109
  %i.ct = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, %i.ch
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !383

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre23.i = load i32, ptr %i.bt, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i
  %i.cv = phi i32 [ %.pre23.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i ], [ %i.co, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i ]
  %i.cw = add i32 %i.cv, %i.cf
  store i32 %i.cw, ptr %i.bt, align 8, !tbaa !52
  br label %bb.k

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !387
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !103, !noalias !387 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = zext i32 %i.cx to i64
  %.sroa.0.0.i.i48 = select i1 %i.cy, ptr null, ptr %i.f
  store ptr %.sroa.0.0.i.i48, ptr %3, align 8, !noalias !387
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !noalias !387
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !387
  %.sroa.0.0.copyload.i49 = load ptr, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.2.0.copyload.i54 = load i64, ptr %.sroa.2.0..sroa_idx.i53, align 8 ; 2 uses
  %.not7071 = icmp eq i64 %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i54
  br i1 %.not7071, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.k

.lr.ph:                                           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %.sroa.4.072 = phi i64 [ %i.dr, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ], [ %.sroa.2.0.copyload.i, %bb.h ] ; 2 uses
  %i.db = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i49, i64 noundef %.sroa.4.072) #25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.dd = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = call { ptr, ptr } @_ZN4mlir7Builder11getZeroAttrENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %i.de) #25 ; 2 uses
  %i.dg = extractvalue { ptr, ptr } %i.df, 0
  %i.dh = extractvalue { ptr, ptr } %i.df, 1
  %i.di = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i, ptr %i.dg, ptr %i.dh) #25
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -16 ; 2 uses
  %i.dk = load i32, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %i.dl = load i32, ptr %i.bu, align 4, !tbaa !16
  %.not.i = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !115

bb.i:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.dj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %9, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store ptr %i.dj, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.bt, align 8, !tbaa !52
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.bt, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.i, %bb.j
  %i.dr = add nsw i64 %.sroa.4.072, 1             ; 2 uses
  %.not70 = icmp eq i64 %i.dr, %.sroa.2.0.copyload.i54
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !103
  %.not42 = icmp eq i32 %i.ds, 0
  br i1 %.not42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = load ptr, ptr %9, align 8, !tbaa !15
  %i.du = load i32, ptr %i.bt, align 8, !tbaa !52
  %i.dv = zext i32 %i.du to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr %i.dt, i64 %i.dv) #25
  %i.dw = load i64, ptr %11, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = call ptr @_ZN4mlir3scf7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i, i64 %i.dw, i64 %i.dy) #25 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ea = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bs
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.ea) #25
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret ptr %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121TestSCFPipeliningPass8annotateEPN4mlir9OperationENS1_3scf16PipeliningOption13PipelinerPartEj(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.mlir::OpBuilder", align 8   ; 10 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  store ptr %i.b, ptr %7, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.g = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %0) #25
  store ptr %i.f, ptr %i.d, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.g, ptr %i.h, align 8
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !86
  store ptr @.str.46, ptr %8, align 8, !tbaa !67
  store i8 3, ptr %i.i, align 8, !tbaa !87
  %i.k = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(34) %8) #25
  %i.l = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !86
  store ptr @.str.49, ptr %6, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 22, ptr %i.o, align 8, !tbaa !67
  %i.p = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(34) %6) #25
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.p, ptr %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 33
end_hunk_2
