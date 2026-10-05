Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StaticMemoryPlannerAnalysis?download=true
inline.NumInlined: 1721
inline.NumDeleted: 1093
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir18InFlightDiagnostic6reportEv
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #25
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !310  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !311  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !313 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #25, !inline_history !305
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #24, !inline_history !305
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !313
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !306

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !310
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !314
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !317  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !318  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #24
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !307

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !317
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !319
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #25
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #25, !inline_history !320
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !79 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !79 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #25
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #25, !inline_history !320
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_117collectCandidatesENS1_19FunctionOpInterfaceERNS_13NoopStatisticESE_SE_E3$_0NS1_6memref7AllocOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %3 = alloca %"class.mlir::MemRefType", align 8  ; 5 uses
  %4 = alloca %"class.mlir::memref::AllocOp", align 8 ; 4 uses
  %5 = alloca %"class.mlir::MemRefType", align 8  ; 6 uses
  %6 = alloca %"struct.(anonymous namespace)::AllocationCandidate", align 8 ; 9 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6memref7AllocOpEvE2idE
  %7 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6memref7AllocOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %7, %i.e
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_117collectCandidatesENS_19FunctionOpInterfaceERN4llvm13NoopStatisticES8_S8_E3$_0NS_6memref7AllocOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %5, align 8
  %i.i = call noundef zeroext i1 @_ZNK4mlir14BaseMemRefType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  %i.j = ptrtoint ptr %1 to i64
  br i1 %i.i, label %bb.c, label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.k = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = lshr i64 %i.m, 2                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c, %bb.g
  %.047.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.g ], [ %i.p, %bb.c ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.l, %bb.c ] ; 9 uses
  %i.q = load i64, ptr %.02946.i.i.i.i.i.i.i.i.i, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %.not1.i.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not1.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44
  %.not2.i.i.i.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not2.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !44
  %.not3.i.i.i.i = icmp eq i64 %i.w, -9223372036854775808
  br i1 %.not3.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.y = add nsw i64 %.047.i.i.i.i.i.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, !llvm.loop !321

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.g
  %.pre.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.x to i64
  %.pre52.i.i.i.i.i.i.i.i.i = sub i64 %i.o, %.pre.i.i.i.i.i.i.i.i.i
  %i.aa = ashr exact i64 %.pre52.i.i.i.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, %bb.c
  %.pre-phi53.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ]
  %.029.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.l, %bb.c ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ab = load i64, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i, align 8, !tbaa !44
  %.not4.i.i.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not4.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ad = load i64, ptr %.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !44
  %.not5.i.i.i.i = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %.not5.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = load i64, ptr %.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !44
  %.not6.i.i.i.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not6.i.i.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 24
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit16: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 16
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit18: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 8
  br label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit16, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit18, %bb.l, %bb.j, %bb.h
  %.028.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.ai, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit18 ], [ %i.ah, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit16 ], [ %i.ag, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.aj = icmp eq ptr %i.n, %.028.i.i.i.i.i.i.i.i.i
  br i1 %i.aj, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i, label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i"

_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i: ; preds = %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %1, i64 -16
  %.sroa.011.021.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %.sroa.011.021.i.i.i, null
  %.not22.i.i.i.a = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6memref9DeallocOpEvE2idE
  %or.cond.i.i.i = or i1 %.not22.i.i.i.a, %.not24.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i, %bb.n
  %.sroa.011.024.i.i.i = phi ptr [ %.sroa.011.0.i.i.i, %bb.n ], [ %.sroa.011.021.i.i.i, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i ] ; 2 uses
  %.sroa.015.023.i.i.i = phi ptr [ %.sroa.015.1.i.i.i, %bb.n ], [ null, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.011.024.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !322 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !147
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.aq = icmp ne ptr %i.ap, @_ZN4mlir6detail14TypeIDResolverINS_6memref9DeallocOpEvE2idE
  %.not1819.i.i.i = icmp eq ptr %i.am, null
  %.not18.i.i.i = or i1 %.not1819.i.i.i, %i.aq
  br i1 %.not18.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not20.i.i.i = icmp eq ptr %.sroa.015.023.i.i.i, null
  br i1 %.not20.i.i.i, label %bb.n, label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i"

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.sroa.015.1.i.i.i = phi ptr [ %.sroa.015.023.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.m ] ; 4 uses
  %.sroa.011.0.i.i.i = load ptr, ptr %.sroa.011.024.i.i.i, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.011.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_117findUniqueDeallocEN4mlir5ValueE.exit.i.i, label %.lr.ph.i.i.i

_ZN12_GLOBAL__N_117findUniqueDeallocEN4mlir5ValueE.exit.i.i: ; preds = %bb.n
  %.not9.i.i = icmp eq ptr %.sroa.015.1.i.i.i, null
  br i1 %.not9.i.i, label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i", label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_117findUniqueDeallocEN4mlir5ValueE.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i, label %bb.p, label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i"

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.aw, align 8
  store i64 %i.j, ptr %6, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = ptrtoint ptr %.sroa.015.1.i.i.i to i64
  store i64 %i.ay, ptr %i.ax, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.az = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  %i.bc = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.ba, i64 %i.bb) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bd = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  store ptr %i.bd, ptr %2, align 8
  %i.be = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nsw i64 %i.bc, %i.bf
  %i.bh = add nsw i64 %i.bg, 7
  %i.bi = sdiv i64 %i.bh, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !94
  %i.bk = call { i64, i8 } @_ZN4mlir6memref7AllocOp12getAlignmentEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 2 uses
  %i.bl = extractvalue { i64, i8 } %i.bk, 0
  %i.bm = extractvalue { i64, i8 } %i.bk, 1
  %i.bn = trunc nuw i8 %i.bm to i1
  %.0.i.i.i = select i1 %i.bn, i64 %i.bl, i64 1
  store i64 %.0.i.i.i, ptr %i.av, align 8, !tbaa !86
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !324, !nonnull !50, !align !140 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !41 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !42
  %.not.i3.i.i = icmp ult i32 %i.br, %i.bt
  br i1 %.not.i3.i.i, label %bb.r, label %bb.q, !prof !80

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119AllocationCandidateELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(40) %6)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119AllocationCandidateELb1EE9push_backERKS2_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bu = zext i32 %i.br to i64
  %.val.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(40) %6, i64 40, i1 false)
  %i.bw = load i32, ptr %i.bq, align 8, !tbaa !41
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bq, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119AllocationCandidateELb1EE9push_backERKS2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119AllocationCandidateELb1EE9push_backERKS2_.exit.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i"

"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i": ; preds = %bb.m, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119AllocationCandidateELb1EE9push_backERKS2_.exit.i.i, %bb.o, %_ZN12_GLOBAL__N_117findUniqueDeallocEN4mlir5ValueE.exit.i.i, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.thread6.i.i, %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_117collectCandidatesENS_19FunctionOpInterfaceERN4llvm13NoopStatisticES8_S8_E3$_0NS_6memref7AllocOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_117collectCandidatesENS_19FunctionOpInterfaceERN4llvm13NoopStatisticES8_S8_E3$_0NS_6memref7AllocOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESK_E4typeESF_OT1_ENKUlSF_E_clESF_.exit": ; preds = %bb.a, %"_ZZN12_GLOBAL__N_117collectCandidatesEN4mlir19FunctionOpInterfaceERN4llvm13NoopStatisticES4_S4_ENK3$_0clENS0_6memref7AllocOpE.exit.i"
  ret void
}

declare { i64, i8 } @_ZN4mlir6memref7AllocOp12getAlignmentEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK4mlir14BaseMemRefType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr, i64) local_unnamed_addr #8

declare ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119AllocationCandidateELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::AllocationCandidate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 40) #25
  %.val = load ptr, ptr %0, align 8, !tbaa !40
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !41
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !41
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir13bufferization18MemoryPlannerAllocELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load <4 x i64>, ptr %1, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !40
  %i.g = load i32, ptr %i.a, align 8, !tbaa !41
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  store <4 x i64> %.sroa.0.0.copyload, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !41
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #25
  %.pre = load ptr, ptr %1, align 8, !tbaa !40
  br label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !144
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !144
  store ptr %i.c, ptr %1, align 8, !tbaa !40
  store i32 0, ptr %i.k, align 4, !tbaa !42
end_hunk_0
