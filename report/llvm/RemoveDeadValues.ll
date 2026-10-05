Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RemoveDeadValues?download=true
inline.NumInlined: 4026
inline.NumDeleted: 2445
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir11OpInterfaceINS_15CallOpInterfaceENS_6detail30CallOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !155

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_15CallOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 21) #22
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_15CallOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !25
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #22, !inline_history !833
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !155

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 21) #22
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CallOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !25
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #22, !inline_history !833
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_15CallOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_15CallOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CallOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN4mlir5Block13eraseArgumentEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #7

declare void @_ZN4mlir15CallOpInterface21getArgOperandsMutableEv(ptr dead_on_unwind writable sret(%"class.mlir::MutableOperandRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN4mlir19MutableOperandRange5eraseEjj(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #7

declare { ptr, i64 } @_ZN4mlir15CallOpInterface14getArgOperandsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare ptr @_ZN4mlir2ub13UnreachableOp6createERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase18replaceAllUsesWithENS_5ValueES1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit
  %.sroa.09.016 = phi ptr [ %i.b, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit ], [ %i.a, %bb.a ] ; 8 uses
  %i.b = load ptr, ptr %.sroa.09.016, align 8, !tbaa !107 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.d) #22, !inline_history !834
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %.sroa.09.016, align 8, !tbaa !107 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !108
  %.not2.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !106
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24
  store ptr %2, ptr %i.l, align 8, !tbaa !98
  store ptr %2, ptr %i.h, align 8, !tbaa !106
  %i.m = load ptr, ptr %2, align 8, !tbaa !101    ; 3 uses
  store ptr %i.m, ptr %.sroa.09.016, align 8, !tbaa !107
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.09.016, ptr %i.n, align 8, !tbaa !106
  br label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit

_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit: ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, %bb.d
  store ptr %.sroa.09.016, ptr %2, align 8, !tbaa !101
  %i.o = load ptr, ptr %0, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.d) #22, !inline_history !834
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4mlir12RewriterBase7eraseOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !153  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #22
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !153  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #22, !inline_history !159
  br label %_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerD2Ev.exit

_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListenerD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListener23notifyOperationInsertedEPN4mlir9OperationENS2_9OpBuilder11InsertPointE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::ub::PoisonOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_2ub8PoisonOpEvE2idE
  %spec.select.i.i = select i1 %i.d, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %4, align 8
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !841 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !157  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds i8, ptr %2, i64 -16
  %i.e = zext i32 %i.b to i64
  %.sroa.0.0.i = select i1 %i.c, ptr null, ptr %i.d
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.0.0.i, i64 %i.e) #22
  %i.f = load i64, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i64 %i.f, i64 %i.h) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener23notifyOperationReplacedEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112_GLOBAL__N_116TrackingListener21notifyOperationErasedEPN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.631, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_2ub8PoisonOpEvE2idE
  %.not2 = icmp eq ptr %1, null
  %.not = or i1 %.not2, %i.d
  br i1 %.not, label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151, !noalias !846 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152, !noalias !846 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !153, !noalias !846 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
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
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !143
  %i.ac = and i32 %i.x, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !144

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.af = phi i64 [ %i.ak, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %.01421.i.i.i.i = phi i32 [ %i.aj, %bb.d ], [ %i.x, %bb.c ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ag, align 8
  %i.ah = icmp eq ptr %1, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i, label %bb.d, !prof !145

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = add nuw i32 %.01421.i.i.i.i, 1
  %i.aj = and i32 %i.ai, %i.l                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !143
  %i.ao = and i32 %i.aj, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !146

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit

_ZN4llvm6detail12DenseSetImplIN4mlir2ub8PoisonOpENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener18notifyPatternBeginERKNS_7PatternEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener16notifyPatternEndERKNS_7PatternEN4llvm13LogicalResultE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i8 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener18notifyMatchFailureENS_8LocationEN4llvm12function_refIFvRNS_10DiagnosticEEEE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !151, !noalias !851 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152, !noalias !851 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !153, !noalias !851 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !143
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !144

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !145

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !143
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !146, !llvm.loop !13

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !292
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !154
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !145

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !292
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !152
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !143
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !143
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !154
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir2ub8PoisonOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151, !noalias !856 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152, !noalias !856 ; 2 uses
end_hunk_0
