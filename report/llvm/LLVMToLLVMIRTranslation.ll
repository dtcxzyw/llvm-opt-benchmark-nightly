Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMToLLVMIRTranslation?download=true
inline.NumInlined: 18056
inline.NumDeleted: 7729
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4mlir11OpInterfaceINS_28ArgAndResultAttrsOpInterfaceENS_6detail43ArgAndResultAttrsOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 34) #18
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !53 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !8

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !222
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !376  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !389  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !70

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 34) #18
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !53
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #18, !inline_history !916
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !70

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 34) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !53
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #18, !inline_history !916
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare void @_ZN4llvm18ExtractElementInstC1EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm16ExtractValueInst6CreateEPNS_5ValueENS_8ArrayRefIjEERKNS_5TwineENS_14InsertPositionE(ptr noundef %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 104, i32 1) #18 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.d = tail call noundef ptr @_ZN4llvm16ExtractValueInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIjEE(ptr noundef %i.c, ptr %1, i64 %2) #18
  tail call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %i.d, i32 noundef 66, i32 1, ptr %4, i64 %5) #18
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -32 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !345  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 -24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346  ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !347
  %.not2.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not2.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.g, ptr %i.j, align 8, !tbaa !345
  store ptr null, ptr %i.h, align 8, !tbaa !346
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.f, align 8, !tbaa !345
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  store ptr %0, ptr %i.e, align 8, !tbaa !348
  %i.k = load i8, ptr %0, align 8, !tbaa !270
  %i.l = icmp ugt i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %_ZN4llvm16ExtractValueInstC2EPNS_5ValueENS_8ArrayRefIjEERKNS_5TwineENS_14InsertPositionE.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347  ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 -24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !346
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !345
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i:      ; preds = %bb.g, %bb.f
  store ptr %i.m, ptr %i.f, align 8, !tbaa !345
  store ptr %i.e, ptr %i.m, align 8, !tbaa !347
  br label %_ZN4llvm16ExtractValueInstC2EPNS_5ValueENS_8ArrayRefIjEERKNS_5TwineENS_14InsertPositionE.exit

_ZN4llvm16ExtractValueInstC2EPNS_5ValueENS_8ArrayRefIjEERKNS_5TwineENS_14InsertPositionE.exit: ; preds = %bb.e, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.r, ptr %i.q, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 0, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 4, ptr %i.t, align 4, !tbaa !30
  tail call void @_ZN4llvm16ExtractValueInst4initENS_8ArrayRefIjEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(34) %3) #18
  ret ptr %i.a
}

declare noundef ptr @_ZN4llvm16ExtractValueInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIjEE(ptr noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm16ExtractValueInst4initENS_8ArrayRefIjEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32, ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIjE6insertIPKlvEEPjS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 19 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q                  ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 4) #18
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %.pre9.i = zext i32 %.pre.i to i64
  %.pre63.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i:    ; preds = %bb.c, %bb.b
  %.pre63 = phi ptr [ %i.a, %bb.b ], [ %.pre63.pre, %bb.c ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre9.i, %bb.c ]
  %i.t = phi i32 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %i.u = icmp sgt i64 %i.m, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i, label %_ZN4llvm15SmallVectorImplIjE6appendIPKlvEEvT_S5_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i:               ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre63, i64 %.pre-phi.i ; 3 uses
  %min.iters.check119 = icmp ult i64 %i.m, 4
  br i1 %min.iters.check119, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %n.vec121 = and i64 %i.m, 9223372036854775804   ; 4 uses
  %i.w = and i64 %i.m, 3
  %i.x = shl i64 %n.vec121, 2
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x
  %i.z = shl i64 %n.vec121, 3
  %i.aa = getelementptr i8, ptr %2, i64 %i.z
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 3 uses
  %i.ab = shl i64 %index123, 2
  %next.gep124.a = getelementptr i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ac = shl i64 %index123, 3
  %next.gep125 = getelementptr i8, ptr %2, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126.a = load <2 x i64>, ptr %next.gep125, align 8, !tbaa !78
  %wide.load127 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !78
  %i.ae = trunc <2 x i64> %wide.load126.a to <2 x i32>
  %i.af = trunc <2 x i64> %wide.load127 to <2 x i32>
  %i.ag = getelementptr i8, ptr %next.gep124.a, i64 8
  store <2 x i32> %i.ae, ptr %next.gep124.a, align 4, !tbaa !204
  store <2 x i32> %i.af, ptr %i.ag, align 4, !tbaa !204
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.ah, label %middle.block129, label %vector.body122, !llvm.loop !917

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.m, %n.vec121
  br i1 %cmp.n130, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %middle.block129, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %.012.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.w, %middle.block129 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.y, %middle.block129 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.aa, %middle.block129 ] ; 3 uses
  %i.ai = load i64, ptr %.0910.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !78
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %.0811.i.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !204
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i

.lr.ph.i.i.i.i.i.i.i.i.i.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.ph, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !204
  %i.ap = icmp eq i64 %.012.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i

.lr.ph.i.i.i.i.i.i.i.i.i.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.ph, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !78
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !204
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.2, %middle.block129
  %.pre8.i = load i32, ptr %i.e, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIjE6appendIPKlvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIjE6appendIPKlvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i
  %i.au = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyIPKlPjEEvT_S6_T0_.exit.loopexit.i ], [ %i.t, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i ]
  %i.av = trunc i64 %i.m to i32
  %i.aw = add i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.e, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre63, i64 %i.d
  br label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.e, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ay, i64 noundef %i.n, i64 noundef 4) #18
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  %.pre61.a = load i32, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %.pre65.a = zext i32 %.pre61.a to i64
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit:      ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.g, %bb.d ], [ %.pre65.a, %bb.e ] ; 3 uses
  %i.az = phi i32 [ %i.f, %bb.d ], [ %.pre61.a, %bb.e ]
  %i.ba = phi ptr [ %i.a, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.d ; 19 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 2            ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx ; 6 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.bd = ashr exact i64 %gepdiff, 2              ; 7 uses
  %.not = icmp ult i64 %i.bd, %i.m
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %i.be = ashr exact i64 %i.l, 1                  ; 4 uses
  %.idx52 = sub nsw i64 0, %i.be
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %.idx52 ; 2 uses
  %i.bg = add nsw i64 %i.m, %.pre-phi             ; 2 uses
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !30
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp ugt i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bk, i64 noundef %i.bg, i64 noundef 4) #18
  %.pre.i48 = load i32, ptr %i.e, align 8, !tbaa !31
  %.pre11.i = zext i32 %.pre.i48 to i64
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46:  ; preds = %bb.g, %bb.f
  %i.bl = phi ptr [ %i.ba, %bb.f ], [ %.pre62, %bb.g ]
  %.pre-phi.i47 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre11.i, %bb.g ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.pre-phi.i47 ; 2 uses
  %i.bn = icmp sgt i64 %i.be, 4
  br i1 %i.bn, label %bb.h, label %bb.i, !prof !52

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr nonnull align 4 %i.bf, i64 %i.be, i1 false)
  br label %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46
  %i.bo = icmp eq i64 %i.l, 8
  br i1 %i.bo, label %bb.j, label %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %i.bf, align 4, !tbaa !204
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !204
  br label %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit

_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !31
  %i.br = trunc i64 %i.m to i32
  %i.bs = add i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.e, align 8, !tbaa !31
  %4 = add i64 %i.d, %i.be
  %gepdiff53 = sub i64 %.idx, %4                  ; 3 uses
  %i.bt = ashr exact i64 %gepdiff53, 2            ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.k, label %bb.l, !prof !52

bb.k:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.bb, i64 %gepdiff53, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit
  %i.bx = icmp eq i64 %gepdiff53, 4
  br i1 %i.bx, label %bb.m, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bz = load i32, ptr %i.bb, align 4, !tbaa !204
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !204
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  %i.ca = icmp sgt i64 %i.m, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.m, 9223372036854775804      ; 4 uses
  %i.cb = and i64 %i.m, 3
  %i.cc = shl i64 %n.vec, 2
  %i.cd = getelementptr i8, ptr %i.bb, i64 %i.cc
  %i.ce = shl i64 %n.vec, 3
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.cg ; 2 uses
  %i.ch = shl i64 %index, 3
  %next.gep82 = getelementptr i8, ptr %2, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep82, align 8, !tbaa !78
  %wide.load83 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !78
  %i.cj = trunc <2 x i64> %wide.load to <2 x i32>
  %i.ck = trunc <2 x i64> %wide.load83 to <2 x i32>
  %i.cl = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.cj, ptr %next.gep, align 4, !tbaa !204
  store <2 x i32> %i.ck, ptr %i.cl, align 4, !tbaa !204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !918

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ] ; 3 uses
  %i.cn = load i64, ptr %.0910.i.i.i.i.i.ph, align 8, !tbaa !78
  %i.co = trunc i64 %i.cn to i32
  store i32 %i.co, ptr %.0811.i.i.i.i.i.ph, align 4, !tbaa !204
  %i.cp = icmp samesign ugt i64 %.012.i.i.i.i.i.ph, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.1, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !78
  %i.ct = trunc i64 %i.cs to i32
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !204
  %i.cu = icmp eq i64 %.012.i.i.i.i.i.ph, 3
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.2, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !78
  %i.cy = trunc i64 %i.cx to i32
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !204
  br label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %i.cz = trunc i64 %i.m to i32
  %i.da = add i32 %i.az, %i.cz                    ; 2 uses
  store i32 %i.da, ptr %i.e, align 8, !tbaa !31
  %.not.i.i = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.db
  %i.dd = sub nsw i64 0, %i.bd
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 4 %i.bb, i64 %gepdiff, i1 false)
  %min.iters.check87 = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check87, label %.lr.ph.preheader135, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.preheader
  %n.vec89 = and i64 %i.bd, -4                    ; 4 uses
  %i.df = shl nsw i64 %n.vec89, 2
  %i.dg = getelementptr i8, ptr %i.bb, i64 %i.df
  %i.dh = and i64 %i.bd, 3
  %i.di = shl i64 %n.vec89, 3
  %i.dj = getelementptr i8, ptr %2, i64 %i.di     ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.dk = shl i64 %index91, 2
  %next.gep92.a = getelementptr i8, ptr %i.bb, i64 %i.dk ; 2 uses
  %i.dl = shl i64 %index91, 3
  %next.gep93 = getelementptr i8, ptr %2, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94.a = load <2 x i64>, ptr %next.gep93, align 8, !tbaa !78
  %wide.load95 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !78
  %i.dn = trunc <2 x i64> %wide.load94.a to <2 x i32>
  %i.do = trunc <2 x i64> %wide.load95 to <2 x i32>
  %i.dp = getelementptr i8, ptr %next.gep92.a, i64 8
  store <2 x i32> %i.dn, ptr %next.gep92.a, align 4, !tbaa !204
  store <2 x i32> %i.do, ptr %i.dp, align 4, !tbaa !204
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.dq = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.dq, label %middle.block97, label %vector.body90, !llvm.loop !919

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.bd, %n.vec89
  br i1 %cmp.n98, label %._crit_edge.loopexit, label %.lr.ph.preheader135

.lr.ph.preheader135:                              ; preds = %.lr.ph.preheader, %middle.block97
  %.059.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.dg, %middle.block97 ]
  %.04058.ph = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %i.dh, %middle.block97 ]
  %.04257.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.dj, %middle.block97 ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block97
  %.lcssa = phi ptr [ %i.dj, %middle.block97 ], [ %i.et, %.lr.ph ] ; 2 uses
  %.pre66 = ptrtoint ptr %.lcssa to i64
  %.pre68 = sub i64 %i.j, %.pre66
  %.pre70 = ashr exact i64 %.pre68, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.loopexit
  %.pre-phi71 = phi i64 [ %.pre70, %._crit_edge.loopexit ], [ %i.m, %bb.n ] ; 6 uses
  %.042.lcssa = phi ptr [ %.lcssa, %._crit_edge.loopexit ], [ %2, %bb.n ] ; 3 uses
  %i.dr = icmp sgt i64 %.pre-phi71, 0
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge
  %min.iters.check103 = icmp ult i64 %.pre-phi71, 4
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.i.i, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %.pre-phi71, 9223372036854775804 ; 4 uses
  %i.ds = and i64 %.pre-phi71, 3
  %i.dt = shl i64 %n.vec105, 2
  %i.du = getelementptr i8, ptr %i.bc, i64 %i.dt
  %i.dv = shl i64 %n.vec105, 3
  %i.dw = getelementptr i8, ptr %.042.lcssa, i64 %i.dv
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %i.dx = shl i64 %index107, 2
  %next.gep108.a = getelementptr i8, ptr %i.bc, i64 %i.dx ; 2 uses
  %i.dy = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %.042.lcssa, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load110.a = load <2 x i64>, ptr %next.gep109, align 8, !tbaa !78
  %wide.load111 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !78
  %i.ea = trunc <2 x i64> %wide.load110.a to <2 x i32>
  %i.eb = trunc <2 x i64> %wide.load111 to <2 x i32>
  %i.ec = getelementptr i8, ptr %next.gep108.a, i64 8
  store <2 x i32> %i.ea, ptr %next.gep108.a, align 4, !tbaa !204
  store <2 x i32> %i.eb, ptr %i.ec, align 4, !tbaa !204
  %index.next112 = add nuw i64 %index107, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.ed, label %middle.block113, label %vector.body106, !llvm.loop !920

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %.pre-phi71, %n.vec105
  br i1 %cmp.n114, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %middle.block113, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %.pre-phi71, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block113 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.du, %middle.block113 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %.042.lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dw, %middle.block113 ] ; 3 uses
  %i.ee = load i64, ptr %.0910.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !78
  %i.ef = trunc i64 %i.ee to i32
  store i32 %i.ef, ptr %.0811.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !204
  %i.eg = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %_ZSt4copyIPKlPjET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 8
end_hunk_0
