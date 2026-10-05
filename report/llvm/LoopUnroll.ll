Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUnroll?download=true
inline.NumInlined: 1211
inline.NumDeleted: 778
begin_hunk_0_@_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.23, i64 49), i64 25) #20
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !78
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !263  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !76

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.23, i64 49), i64 25) #20
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #20, !inline_history !249
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !76

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.23, i64 49), i64 25) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #20, !inline_history !249
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #20, !inline_history !264
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
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !128 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !128 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #20
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #20, !inline_history !264
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvE3$_0NS1_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::affine::AffineForOp", align 8 ; 5 uses
  %3 = alloca %"class.std::optional.232", align 8 ; 9 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %4 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %4, %i.e
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.f = load ptr, ptr %.val, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4mlir6affine11AffineForOp18getStaticTripCountEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.232") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !266, !range !38, !noundef !39
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = icmp ult i32 %i.k, 65
  %i.m = load ptr, ptr %3, align 8
  %spec.select.i.i2.i = select i1 %i.l, ptr %3, ptr %i.m
  %.0.i.i.i = load i64, ptr %spec.select.i.i2.i, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.o = load i32, ptr %i.n, align 8, !tbaa !68
  %i.p = zext i32 %i.o to i64
  %.not.i.i = icmp ugt i64 %.0.i.i.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !269, !nonnull !39, !align !129 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !22   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !23
  %.not.i.i.i = icmp ult i32 %i.t, %i.v
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !prof !130

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr %.sroa.0.0.copyload.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.y, align 1
  %i.z = load i32, ptr %i.s, align 8, !tbaa !22
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.ab = load i8, ptr %i.g, align 8, !tbaa !266, !range !38, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  store i8 0, ptr %i.g, align 8, !tbaa !266
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp ugt i32 %i.ae, 64
  %or.cond.i.i.i.i.i = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %"_ZZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i"

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %"_ZZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #21
  br label %"_ZZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i"

"_ZZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i": ; preds = %bb.h, %bb.g, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE9push_backES3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit": ; preds = %bb.a, %"_ZZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i"
  ret void
}

declare void @_ZN4mlir6affine11AffineForOp18getStaticTripCountEv(ptr dead_on_unwind writable sret(%"class.std::optional.232") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !22
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !22
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !22
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL20gatherInnermostLoopsNS1_19FunctionOpInterfaceERNS_15SmallVectorImplINS1_6affine11AffineForOpEEEE3$_0SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.248, align 8            ; 4 uses
  %3 = alloca %class.anon.245, align 1            ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %4 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %4, %i.e
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL20gatherInnermostLoopsNS_19FunctionOpInterfaceERN4llvm15SmallVectorImplINS_6affine11AffineForOpEEEE3$_0S8_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.k
  %i.m = lshr i32 %i.g, 21
  %i.n = and i32 %i.m, 2040
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !56
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = ptrtoint ptr %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %i.ab, %bb.d ] ; 3 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i, %i.y
  br i1 %.not.i.i.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128
  %i.ac = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.02.0.i.i.i.i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %3, ptr %2, align 8, !tbaa !34
  %i.ad = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.ac, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL22isInnermostAffineForOpNS1_6affine11AffineForOpEE3$_0SD_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESM_E4typeES4_OT1_EUlS4_E_EES2_lS4_", i64 %i.z, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZL22isInnermostAffineForOpN4mlir6affine11AffineForOpE.exit.i.i, label %bb.c

_ZL22isInnermostAffineForOpN4mlir6affine11AffineForOpE.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL20gatherInnermostLoopsNS_19FunctionOpInterfaceERN4llvm15SmallVectorImplINS_6affine11AffineForOpEEEE3$_0S8_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.af = load ptr, ptr %.val, align 8, !tbaa !271, !nonnull !39, !align !129 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  %.not.i.i.i = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !130

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir6affine11AffineForOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr %1)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL20gatherInnermostLoopsNS_19FunctionOpInterfaceERN4llvm15SmallVectorImplINS_6affine11AffineForOpEEEE3$_0S8_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit"

bb.g:                                             ; preds = %bb.e
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  store ptr %1, ptr %i.am, align 1
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !22
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !22
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL20gatherInnermostLoopsNS_19FunctionOpInterfaceERN4llvm15SmallVectorImplINS_6affine11AffineForOpEEEE3$_0S8_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL20gatherInnermostLoopsNS_19FunctionOpInterfaceERN4llvm15SmallVectorImplINS_6affine11AffineForOpEEEE3$_0S8_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit": ; preds = %bb.a, %_ZL22isInnermostAffineForOpN4mlir6affine11AffineForOpE.exit.i.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #20, !inline_history !272
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #20 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !128 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !128 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #20
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #20, !inline_history !272
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL22isInnermostAffineForOpNS1_6affine11AffineForOpEE3$_0SD_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESM_E4typeES4_OT1_EUlS4_E_EES2_lS4_"(i64 %0, ptr nofree noundef readonly captures(address_is_null) %1) #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %spec.select.i.i.i.i.not4.i = or i1 %2, %i.d
  %i.e = icmp eq ptr %1, null
  %.not2.i = or i1 %i.e, %spec.select.i.i.i.i.not4.i
  %.sroa.02.1.i = zext i1 %.not2.i to i32
  ret i32 %.sroa.02.1.i
}

declare i8 @_ZN4mlir6affine18loopUnrollByFactorENS0_11AffineForOpEmN4llvm12function_refIFvjPNS_9OperationENS_9OpBuilderEEEEb(ptr, i64 noundef, ptr, i64, i1 noundef zeroext) local_unnamed_addr #4

declare i8 @_ZN4mlir6affine20loopUnrollUpToFactorENS0_11AffineForOpEm(ptr, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !75}
!2 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev, null, null}
!3 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev, null, null}
!4 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionIlN4llvm2cl6parserIlEEED2Ev, ptr @_ZN4llvm2cl3optIlLb0ENS0_6parserIlEEED2Ev, null}
!5 = distinct !{ptr @_ZN4llvm2cl3optIlLb0ENS0_6parserIlEEED2Ev, null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"bool", !10, i64 0}
!18 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6detail18PassExecutionStateEE", !10, i64 0, !17, i64 72}
!19 = !{!18, !17, i64 72}
!20 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !14, i64 0, !11, i64 8, !11, i64 12}
!21 = !{!20, !14, i64 0}
!22 = !{!20, !11, i64 8}
!23 = !{!20, !11, i64 12}
!24 = !{!"vtable pointer", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"long", !10, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!11, !11, i64 0}
!31 = !{!17, !17, i64 0}
!32 = !{!"_ZTSSt14_Function_base", !10, i64 0, !14, i64 16}
!33 = !{!32, !14, i64 16}
!34 = !{!14, !14, i64 0}
!35 = !{!"_ZTSSt8functionIFvRKlEE", !32, i64 0, !14, i64 24}
!36 = !{!35, !14, i64 24}
!37 = !{!10, !10, i64 0}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !14, i64 0}
!41 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !40, i64 0, !40, i64 8}
!42 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !41, i64 0}
!43 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm10ilist_nodeIN4mlir9OperationEJEEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm22ilist_node_with_parentIN4mlir9OperationENS1_5BlockEJEEE", !44, i64 0}
!46 = !{!"p1 _ZTSN4mlir5BlockE", !14, i64 0}
!47 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !14, i64 0}
!48 = !{!"_ZTSN4mlir9AttributeE", !47, i64 0}
!49 = !{!"_ZTSN4mlir12LocationAttrE", !48, i64 0}
!50 = !{!"_ZTSN4mlir8LocationE", !49, i64 0}
!51 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !14, i64 0}
!52 = !{!"_ZTSN4mlir13OperationNameE", !51, i64 0}
!53 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_14DictionaryAttrENS_9AttributeENS0_21DictionaryAttrStorageENS0_16AttributeUniquerEJEEE", !48, i64 0}
!54 = !{!"_ZTSN4mlir14DictionaryAttrE", !53, i64 0}
!55 = !{!"_ZTSN4mlir9OperationE", !45, i64 0, !46, i64 16, !50, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !17, i64 46, !10, i64 47, !52, i64 48, !54, i64 56}
!56 = !{!55, !11, i64 40}
!57 = !{!"_ZTSN4mlir6detail11PassOptions10OptionBaseE", !17, i64 8}
!58 = !{!57, !17, i64 8}
!59 = !{!"p1 _ZTSN12_GLOBAL__N_110LoopUnrollE", !14, i64 0}
!60 = !{!"p1 _ZTSN4llvm11SmallVectorIN4mlir6affine11AffineForOpELj4EEE", !14, i64 0}
!61 = !{!"_ZTSZN12_GLOBAL__N_110LoopUnroll14runOnOperationEvE3$_0", !59, i64 0, !60, i64 8}
!62 = !{!61, !59, i64 0}
!63 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!64 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !63, i64 0, !11, i64 8, !17, i64 12}
!65 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !11, i64 0, !66, i64 8}
!68 = !{!67, !11, i64 0}
!69 = !{!"p1 _ZTSN4llvm15SmallVectorImplIN4mlir6affine11AffineForOpEEE", !14, i64 0}
!70 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !63, i64 0, !17, i64 8, !17, i64 9}
!71 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !71, i64 0}
!73 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !17, i64 0, !72, i64 8}
!74 = !{!73, !17, i64 0}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"branch_weights", i32 1, i32 1048575}
!77 = !{!"_ZTSN4mlir6TypeIDE", !15, i64 0}
!78 = !{!77, !15, i64 0}
!79 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !77, i64 0, !14, i64 8}
!80 = !{!79, !14, i64 8}
!81 = !{!"any p2 pointer", !14, i64 0}
!82 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !81, i64 0, !11, i64 8, !11, i64 12, !17, i64 16}
!83 = !{!82, !17, i64 16}
!84 = !{!82, !81, i64 0}
!85 = !{ptr @_ZN4llvm2cl3optIlLb0ENS0_6parserIlEEED2Ev}
!86 = !{!"p2 _ZTSN4mlir6detail11PassOptions10OptionBaseE", !81, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!87, !86, i64 16}
!90 = !{!"p1 int", !14, i64 0}
!91 = !{!"p1 _ZTSN4llvm2cl10SubCommandE", !14, i64 0}
!92 = !{!"p1 _ZTSN4llvm2cl15SubCommandGroupE", !14, i64 0}
!93 = !{!"_ZTSN4llvm2cl3subE", !91, i64 0, !92, i64 8}
!94 = !{!93, !91, i64 0}
!95 = !{!93, !92, i64 8}
!96 = !{!"_ZTSN4llvm2cl11initializerIiEE", !90, i64 0}
!97 = !{!96, !90, i64 0}
!98 = !{i64 4}
!99 = !{!"_ZTSN4llvm2cl15OptionValueCopyIlEE", !63, i64 0, !28, i64 8, !17, i64 16}
!100 = !{!"_ZTSN4llvm2cl15OptionValueBaseIlLb0EEE", !99, i64 0}
!101 = !{!"_ZTSN4llvm2cl11OptionValueIlEE", !100, i64 0}
!102 = !{!"_ZTSN4llvm2cl11opt_storageIlLb0ELb0EEE", !28, i64 0, !101, i64 8}
!103 = !{!102, !28, i64 0}
!104 = !{!99, !17, i64 16}
!105 = !{!87, !86, i64 8}
!106 = !{!"p1 _ZTSN4mlir6detail11PassOptions10OptionBaseE", !14, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"p1 _ZTSN4mlir6detail11PassOptions6OptionIlN4llvm2cl6parserIlEEEE", !14, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{i64 0, i64 16, !37}
!111 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !10, i64 0}
!112 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !10, i64 0}
!113 = !{!"_ZTSN4llvm11raw_ostreamE", !111, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !17, i64 40, !112, i64 44}
!114 = !{!113, !26, i64 24}
!115 = !{!113, !26, i64 32}
!116 = !{!82, !11, i64 12}
!117 = !{!82, !11, i64 8}
!118 = !{!91, !91, i64 0}
!119 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!70, !17, i64 9}
!122 = !{!"p1 _ZTSN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEE", !14, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!64, !17, i64 12}
!125 = !{!"p1 _ZTSN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEE", !14, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!51, !51, i64 0}
!128 = !{!41, !40, i64 8}
!129 = !{i64 8}
!130 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!131 = distinct !{!131, i1 false, !"_ZSt11make_uniqueIN12_GLOBAL__N_110LoopUnrollEJSt8optionalIjERbRKSt8functionIFjN4mlir6affine11AffineForOpEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!132 = distinct !{!132, !131, !"_ZSt11make_uniqueIN12_GLOBAL__N_110LoopUnrollEJSt8optionalIjERbRKSt8functionIFjN4mlir6affine11AffineForOpEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!133 = distinct !{null, null, null}
!134 = distinct !{null, null, null, null}
!135 = distinct !{null, null, null, null}
!136 = !{!132}
!137 = !{!"_ZTSSt8functionIFvRKbEE", !32, i64 0, !14, i64 24}
!138 = !{!137, !14, i64 24}
!139 = !{!"p1 _ZTSN4mlir13InterfacePassINS_19FunctionOpInterfaceEEE", !14, i64 0}
!140 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir13InterfacePassINS0_19FunctionOpInterfaceEEELb0EE", !139, i64 0}
!141 = !{!140, !139, i64 0}
!142 = distinct !{ptr @_ZN12_GLOBAL__N_110LoopUnrollD2Ev, null}
!143 = !{ptr @_ZN12_GLOBAL__N_110LoopUnrollD2Ev}
!144 = distinct !{null, null}
!145 = distinct !{!145, !75}
!146 = !{!"_ZTSN4llvm5Twine8NodeKindE", !10, i64 0}
!147 = !{!"_ZTSN4llvm5TwineE", !10, i64 0, !10, i64 16, !146, i64 32, !146, i64 33}
!148 = !{!147, !146, i64 33}
!149 = !{!147, !146, i64 32}
!150 = !{!"p1 _ZTSN4mlir16DiagnosticEngineE", !14, i64 0}
!151 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir10DiagnosticEE", !10, i64 0, !17, i64 192}
!152 = !{!"_ZTSSt17_Optional_payloadIN4mlir10DiagnosticELb1ELb0ELb0EE", !151, i64 0}
!153 = !{!"_ZTSSt17_Optional_payloadIN4mlir10DiagnosticELb0ELb0ELb0EE", !152, i64 0}
!154 = !{!"_ZTSSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EE", !153, i64 0}
end_hunk_0
