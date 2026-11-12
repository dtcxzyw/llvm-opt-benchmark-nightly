Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestDeadCodeAnalysis?download=true
inline.NumInlined: 1751
inline.NumDeleted: 1109
begin_hunk_0_@_ZN4mlir8dataflow7LatticeINS0_13ConstantValueEE4meetERKNS0_21AbstractSparseLatticeE
define linkonce_odr hidden noundef i32 @_ZN4mlir8dataflow7LatticeINS0_13ConstantValueEE4meetERKNS0_21AbstractSparseLatticeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind
declare void @_ZN4mlir13AnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #12

declare void @_ZNK4mlir8dataflow13ConstantValue5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow7LatticeINS2_13ConstantValueEEENS_5ValueEEEPT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.mlir::LatticeAnchor", align 8 ; 4 uses
  %3 = alloca %"class.mlir::TypeID", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = ptrtoint ptr %1 to i64
  %i.b = or i64 %i.a, 4                           ; 2 uses
  %i.c = tail call i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfINS_8dataflow7LatticeINS2_13ConstantValueEEEEENS_13LatticeAnchorES6_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.b)
  store i64 %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 54) #18
  store ptr %i.j, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit

_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8, !tbaa !17
  store ptr %.sroa.01.0.copyload.i.i, ptr %3, align 8
  %i.k = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i8 = extractvalue { ptr, i8 } %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i8, i64 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit
  %i.n = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #19 ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.b, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 0, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  store i32 0, ptr %i.t, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.u, ptr %i.r, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i32 4, ptr %i.v, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  store i32 0, ptr %i.w, align 4, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i8 1, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store ptr %i.z, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i32 0, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 124
  store i32 4, ptr %i.ab, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir8dataflow7LatticeINS0_13ConstantValueEEE, i64 16), ptr %i.n, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i8 0, ptr %i.ac, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store ptr null, ptr %i.ad, align 8, !tbaa !128
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !121 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !121
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #18, !inline_history !4
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !121
  br label %_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit
  %i.ai = phi ptr [ %i.n, %bb.d ], [ %.pre, %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i ], [ %i.m, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.ai
}

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #18, !inline_history !402
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #18 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !106 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !106 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !106  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #18
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #18, !inline_history !402
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZL20printAnalysisResultsRNS1_14DataFlowSolverES3_RNS_11raw_ostreamEE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::function_ref.263", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.261", align 8    ; 6 uses
  %4 = alloca %class.anon.264, align 8            ; 4 uses
  %5 = alloca %class.anon.265, align 8            ; 5 uses
  %6 = alloca %"class.llvm::function_ref.104", align 8 ; 5 uses
  %7 = alloca %"class.llvm::function_ref.93", align 8 ; 4 uses
  %8 = alloca %"class.std::tuple.94", align 8     ; 7 uses
  %9 = alloca %class.anon.259, align 8            ; 4 uses
  %10 = alloca %class.anon.260, align 8           ; 5 uses
  %11 = alloca %"class.llvm::function_ref.104", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.llvm::ilist_iterator.91", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.llvm::ilist_iterator.91", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"class.llvm::ilist_iterator.91", align 8 ; 4 uses
  %15 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 47
  %16 = load i8, ptr %i.h, align 1
  %.not.i.i.i = icmp eq i8 %16, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.12, i64 3) #18 ; 2 uses
  %i.j = extractvalue { ptr, i8 } %i.i, 0
  %i.k = extractvalue { ptr, i8 } %i.i, 1
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = tail call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr nonnull @.str.12, i64 3) #18
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.05.1.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.05.1.i.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZZL20printAnalysisResultsRN4mlir14DataFlowSolverEPNS_9OperationERN4llvm11raw_ostreamEENK3$_0clES3_.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i
  %i.o = load ptr, ptr %.sroa.05.1.i.i.i, align 8, !tbaa !441
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  br i1 %i.q, label %bb.e, label %"_ZZL20printAnalysisResultsRN4mlir14DataFlowSolverEPNS_9OperationERN4llvm11raw_ostreamEENK3$_0clES3_.exit"

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.05.1.i.i.i, ptr %15, align 8
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !443, !nonnull !33, !align !89 ; 5 uses
  %i.s = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #18 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !447
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !448  ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %i.u, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.u) #18 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %i.u, i1 false)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !448
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.u ; 2 uses
  store ptr %i.af, ptr %i.x, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = phi ptr [ %.pre.i, %bb.f ], [ %i.af, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.r, %bb.h ], [ %i.r, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !447
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.13, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  store i16 2618, ptr %i.ag, align 1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !448
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.j, %bb.i
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ar = load i32, ptr %17, align 4              ; 3 uses
  %i.as = and i32 %i.ar, 8388607                  ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %._crit_edge157.i, label %_ZN4mlir9Operation10getRegionsEv.exit.i

_ZN4mlir9Operation10getRegionsEv.exit.i:          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = lshr i32 %i.ar, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.av, 1
  %i.aw = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aw
  %i.ay = lshr i32 %i.ar, 21
  %i.az = and i32 %i.ay, 2040
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !105
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = shl nuw nsw i32 %i.as, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = ptrtoint ptr %9 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bp = ptrtoint ptr %10 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = ptrtoint ptr %4 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bu = ptrtoint ptr %5 to i64
  br label %bb.m

._crit_edge157.i:                                 ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit105.i, %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !449, !nonnull !33, !align !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !tbaa !129
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !130 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.by, null
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 152 ; 2 uses
  br i1 %.not.i38.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge157.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr %i.by, ptr %i.d, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ca = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !106
  store ptr %i.cc, ptr %13, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr null, ptr %i.e, align 8, !tbaa !134
  %i.cd = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJPNS_5BlockERN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEDnEEEPT_NS5_12function_refIFvSE_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN4mlir14DataFlowSolver20getProgramPointAfterEPNS_9OperationE.exit.i

bb.l:                                             ; preds = %._crit_edge157.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr null, ptr %i.f, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr null, ptr %14, align 8, !tbaa !132
  %i.ce = call noundef ptr @_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJDnN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERPS7_EEEPT_NS3_12function_refIFvSD_EEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %_ZN4mlir14DataFlowSolver20getProgramPointAfterEPNS_9OperationE.exit.i

_ZN4mlir14DataFlowSolver20getProgramPointAfterEPNS_9OperationE.exit.i: ; preds = %bb.l, %bb.k
  %.0.i39.i = phi ptr [ %i.cd, %bb.k ], [ %i.ce, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cf = call noundef ptr @_ZNK4mlir14DataFlowSolver11lookupStateINS_8dataflow16PredecessorStateEPNS_12ProgramPointEEEPKT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bw, ptr noundef %.0.i39.i) ; 3 uses
  %.not34.i = icmp eq ptr %i.cf, null
  br i1 %.not34.i, label %"_ZZL20printAnalysisResultsRN4mlir14DataFlowSolverEPNS_9OperationERN4llvm11raw_ostreamEENK3$_0clES3_.exit", label %bb.bi

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit105.i, %_ZN4mlir9Operation10getRegionsEv.exit.i
  %.0155.i = phi ptr [ %i.bf, %_ZN4mlir9Operation10getRegionsEv.exit.i ], [ %i.qo, %_ZN4llvm11raw_ostreamlsEPKc.exit105.i ] ; 7 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !443, !nonnull !33, !align !89 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !447
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !448 ; 2 uses
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp ult i64 %i.cn, 9
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull @.str.14, i64 noundef 9) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ck, ptr noundef nonnull align 1 dereferenceable(9) @.str.14, i64 9, i1 false)
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !448
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  store ptr %i.cr, ptr %i.cj, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42.i

_ZN4llvm11raw_ostreamlsEPKc.exit42.i:             ; preds = %bb.o, %bb.n
  %.0.i.i41.i = phi ptr [ %i.cp, %bb.n ], [ %i.cg, %bb.o ]
  %i.cs = call noundef i32 @_ZN4mlir6Region15getRegionNumberEv(ptr noundef nonnull align 8 dereferenceable(28) %.0155.i) #18
  %i.ct = zext i32 %i.cs to i64
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i41.i, i64 noundef %i.ct) #18 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !447
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !448 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42.i
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull @.str.15, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45.i

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42.i
  store i8 10, ptr %i.cy, align 1
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !448
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45.i

_ZN4llvm11raw_ostreamlsEPKc.exit45.i:             ; preds = %bb.q, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.0155.i, i64 8 ; 2 uses
  %.sroa.0124.0149.i = load ptr, ptr %i.dd, align 8, !tbaa !106 ; 2 uses
  %.not137150.i = icmp eq ptr %.sroa.0124.0149.i, %.0155.i
  br i1 %.not137150.i, label %._crit_edge153.i, label %.lr.ph152.i

._crit_edge153.i:                                 ; preds = %._crit_edge.i, %_ZN4llvm11raw_ostreamlsEPKc.exit45.i
  %i.de = load ptr, ptr %.0155.i, align 8, !tbaa !84
  %i.df = icmp eq ptr %.0155.i, %i.de
  br i1 %i.df, label %_ZN4llvm11raw_ostreamlsEPKc.exit105.i, label %bb.bc

.lr.ph152.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45.i, %._crit_edge.i
  %.sroa.0124.0151.i = phi ptr [ %.sroa.0124.0.i, %._crit_edge.i ], [ %.sroa.0124.0149.i, %_ZN4llvm11raw_ostreamlsEPKc.exit45.i ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0124.0151.i, i64 -8 ; 5 uses
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !443, !nonnull !33, !align !89 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !447
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !448 ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp ult i64 %i.do, 2
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph152.i
  %i.dq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull @.str.16, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48.i

bb.s:                                             ; preds = %.lr.ph152.i
  store i16 8224, ptr %i.dl, align 1
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !448
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store ptr %i.ds, ptr %i.dk, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48.i

_ZN4llvm11raw_ostreamlsEPKc.exit48.i:             ; preds = %bb.s, %bb.r
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !443, !nonnull !33, !align !89
  call void @_ZN4mlir5Block14printAsOperandERN4llvm11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef nonnull align 8 dereferenceable(48) %i.dt, i1 noundef zeroext true) #18
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !443, !nonnull !33, !align !89 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !447
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !448 ; 2 uses
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, 3
  br i1 %i.ec, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48.i
  %i.ed = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull @.str.17, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51.i

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dy, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false)
  %i.ee = load ptr, ptr %i.dx, align 8, !tbaa !448
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  store ptr %i.ef, ptr %i.dx, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51.i

_ZN4llvm11raw_ostreamlsEPKc.exit51.i:             ; preds = %bb.u, %bb.t
  %i.eg = load ptr, ptr %i.bj, align 8, !tbaa !449, !nonnull !33, !align !89 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 152
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0124.0151.i, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !106
  %i.ek = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_12ProgramPointEvE13resolveTypeIDEvE2id acquire, align 8
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.v, label %_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJRPNS_5BlockEN4llvm14ilist_iteratorINS6_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEDnEEEPT_NS6_12function_refIFvSE_EEEDpOT0_.exit.i, !prof !62

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51.i
  %i.em = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ProgramPointEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i113.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i113.i, label %_ZN4mlir14StorageUniquer3getINS_12ProgramPointEJRPNS_5BlockEN4llvm14ilist_iteratorINS6_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEDnEEEPT_NS6_12function_refIFvSE_EEEDpOT0_.exit.i, label %bb.w
end_hunk_0
