Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConstantPropagationAnalysis?download=true
inline.NumInlined: 1017
inline.NumDeleted: 677
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_12ProgramPointEJDnNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERPSF_EEEPT_NS0_IFvSL_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_:bb.a
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr %1, align 8, !tbaa !144    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !155
  %i.j = icmp ult i64 %i.g, %i.i                  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.g to ptr
  store ptr %i.k, ptr %1, align 8, !tbaa !144
  br label %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 24, i64 noundef 24, i8 3)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !95
  br label %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit.i.i

_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.d, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.e, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8
  store ptr %i.m, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !141
  br label %_ZN4mlir12ProgramPoint9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJPNS_5BlockEN4llvm14ilist_iteratorINS7_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEPSB_EE.exit.i

bb.e:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.f, label %bb.g, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.q = inttoptr i64 %i.g to ptr
  store ptr %i.q, ptr %1, align 8, !tbaa !144
  br label %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit8.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit8.i.i

_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit8.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i7.i.i = phi ptr [ %i.e, %bb.f ], [ %i.r, %bb.g ] ; 3 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i7.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i.i.i7.i.i, i8 0, i64 16, i1 false)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !141
  br label %_ZN4mlir12ProgramPoint9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJPNS_5BlockEN4llvm14ilist_iteratorINS7_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEPSB_EE.exit.i

_ZN4mlir12ProgramPoint9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJPNS_5BlockEN4llvm14ilist_iteratorINS7_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEPSB_EE.exit.i: ; preds = %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit8.i.i, %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit.i.i
  %.0.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit.i.i ], [ %.0.i.i.i.i.i7.i.i, %_ZN4mlir14StorageUniquer16StorageAllocator8allocateINS_12ProgramPointEEEPT_v.exit8.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !12, !align !91 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZZN4mlir14StorageUniquer3getINS_12ProgramPointEJDnN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERPS7_EEEPT_NS3_12function_refIFvSD_EEENS_6TypeIDEDpOT0_ENKUlRNS0_16StorageAllocatorEE_clESM_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir12ProgramPoint9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJPNS_5BlockEN4llvm14ilist_iteratorINS7_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEPSB_EE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159
  tail call void %i.w(i64 noundef %i.y, ptr noundef nonnull %.0.i.i) #15, !inline_history !166
  br label %_ZZN4mlir14StorageUniquer3getINS_12ProgramPointEJDnN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERPS7_EEEPT_NS3_12function_refIFvSD_EEENS_6TypeIDEDpOT0_ENKUlRNS0_16StorageAllocatorEE_clESM_.exit

_ZZN4mlir14StorageUniquer3getINS_12ProgramPointEJDnN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEERPS7_EEEPT_NS3_12function_refIFvSD_EEENS_6TypeIDEDpOT0_ENKUlRNS0_16StorageAllocatorEE_clESM_.exit: ; preds = %_ZN4mlir12ProgramPoint9constructERNS_14StorageUniquer16StorageAllocatorEOSt5tupleIJPNS_5BlockEN4llvm14ilist_iteratorINS7_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEPSB_EE.exit.i, %bb.h
  ret ptr %.0.i.i
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4mlir8dataflow37AbstractSparseForwardDataFlowAnalysis19setAllToEntryStatesEN4llvm8ArrayRefIPNS0_21AbstractSparseLatticeEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #15
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  %i.g = load i32, ptr %i.a, align 8, !tbaa !24
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !24
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !24
  ret void
}

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

declare noundef ptr @_ZN4mlir8dataflow37AbstractSparseForwardDataFlowAnalysis20getLatticeElementForEPNS_12ProgramPointENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow7LatticeINS2_13ConstantValueEEENS_5ValueEEEPT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.mlir::LatticeAnchor", align 8 ; 4 uses
  %3 = alloca %"class.mlir::TypeID", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = ptrtoint ptr %1 to i64
  %i.b = or i64 %i.a, 4                           ; 2 uses
  %i.c = tail call i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfINS_8dataflow7LatticeINS2_13ConstantValueEEEEENS_13LatticeAnchorES6_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.b)
  store i64 %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 54) #15
  store ptr %i.j, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit

_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8, !tbaa !119
  store ptr %.sroa.01.0.copyload.i.i, ptr %3, align 8
  %i.k = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i8 = extractvalue { ptr, i8 } %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i8, i64 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit
  %i.n = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #17 ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.b, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 0, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  store i32 0, ptr %i.t, align 4, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.u, ptr %i.r, align 8, !tbaa !169
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i32 4, ptr %i.v, align 8, !tbaa !171
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  store i32 0, ptr %i.w, align 4, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i8 1, ptr %i.x, align 8, !tbaa !173
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store ptr %i.z, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i32 0, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 124
  store i32 4, ptr %i.ab, align 4, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir8dataflow7LatticeINS0_13ConstantValueEEE, i64 16), ptr %i.n, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i8 0, ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store ptr null, ptr %i.ad, align 8, !tbaa !174
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !167 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !167
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #15, !inline_history !179
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir8dataflow7LatticeINS1_13ConstantValueEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit
  %i.ai = phi ptr [ %i.n, %bb.d ], [ %.pre, %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i ], [ %i.m, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfINS_8dataflow7LatticeINS2_13ConstantValueEEEEENS_13LatticeAnchorES6_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.014 = alloca [8 x i8], align 8           ; 7 uses
  store i64 %1, ptr %.sroa.014, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 54) #15
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit

_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8, !tbaa !119 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !180, !noalias !184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189, !noalias !184 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !190, !noalias !184 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i, label %bb.l, !prof !192

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ae, %bb.e ], [ %i.s, %bb.d ]
  %.01419.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %i.aa = getelementptr inbounds nuw [176 x i8], ptr %i.f, i64 %i.z
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ab = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit, label %bb.e, !prof !32

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = add nuw i32 %.01419.i.i, 1
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !191
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i, label %bb.l, !prof !193

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit: ; preds = %.lr.ph.i.i
  %i.al = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.f, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit7, !prof !118

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit
  %i.an = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #15
  %.not.i.i6 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i6, label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 54) #15
  store ptr %i.ao, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit7

_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit7: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i5 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow7LatticeINS2_13ConstantValueEEEvE13resolveTypeIDEvE2id, align 8, !tbaa !119 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !180, !noalias !194 ; 2 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !189, !noalias !194 ; 2 uses
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !190, !noalias !194 ; 3 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit7
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = ptrtoint ptr %.sroa.01.0.copyload.i.i5 to i64
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.at, %i.ay                    ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191, !noalias !203
  %i.be = and i32 %i.az, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !192

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %i.bh = phi i64 [ %i.bm, %bb.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.01419.i.i.i.i = phi i32 [ %i.bl, %bb.i ], [ %i.az, %bb.h ]
  %i.bi = getelementptr inbounds nuw [176 x i8], ptr %i.ap, i64 %i.bh
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !119, !noalias !203
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i5, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.bj, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit, label %bb.i, !prof !32

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = add nuw i32 %.01419.i.i.i.i, 1
  %i.bl = and i32 %i.bk, %i.at                    ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !191, !noalias !203
  %i.bq = and i32 %i.bl, 31
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !193

.loopexit.i.i.i:                                  ; preds = %bb.i, %bb.h, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit7
  %i.bt = zext i32 %i.ar to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.bu = phi i64 [ %i.bt, %.loopexit.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [176 x i8], ptr %i.ap, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !204, !noalias !207 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !216, !noalias !207 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !217, !noalias !207 ; 4 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit.i.i.i8, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.cd = add i32 %i.cb, -1                       ; 2 uses
  %.sroa.014.0..sroa.014.0..sroa.014.0..sroa.014.0..0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.014, align 8, !noalias !218 ; 2 uses
  %i.ce = mul i64 %.sroa.014.0..sroa.014.0..sroa.014.0..sroa.014.0..0.copyload.i.i.i.i.i.i.i, -4658895280553007687 ; 2 uses
  %i.cf = lshr i64 %i.ce, 31
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.cd, %i.ch                    ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = lshr i64 %i.cj, 5
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !191, !noalias !218
  %i.cn = and i32 %i.ci, 31
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i.i.i.i9, label %.loopexit.i.i.i8, !prof !192

.lr.ph.i.i.i.i9:                                  ; preds = %bb.j, %bb.k
  %i.cq = phi i64 [ %i.cv, %bb.k ], [ %i.cj, %bb.j ]
  %.017.i.i.i.i = phi i32 [ %i.cu, %bb.k ], [ %i.ci, %bb.j ]
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.cq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cr, align 8, !noalias !218
  %i.cs = icmp eq i64 %.sroa.014.0..sroa.014.0..sroa.014.0..sroa.014.0..0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.cs, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.ct = add nuw i32 %.017.i.i.i.i, 1
  %i.cu = and i32 %i.ct, %i.cd                    ; 3 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 5
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !191, !noalias !218
  %i.cz = and i32 %i.cu, 31
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %.lr.ph.i.i.i.i9, label %.loopexit.i.i.i8, !prof !193

.loopexit.i.i.i8:                                 ; preds = %bb.k, %bb.j, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.dc = zext i32 %i.cb to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.dc
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i9
  %.pre.i = zext i32 %i.cb to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i8
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.dc, %.loopexit.i.i.i8 ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cr, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.dd, %.loopexit.i.i.i8 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.pre-phi.i
  %i.df = icmp eq ptr %.lcssa.sink.i.i.i, %i.de
  br i1 %i.df, label %bb.l, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !219
  %i.di = tail call noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) ; 2 uses
  %.not = icmp eq ptr %i.di, null
  %2 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %spec.select = select i1 %.not, ptr %.sroa.014, ptr %2
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit, %bb.d, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit
  %.sroa.0.1.in = phi ptr [ %spec.select, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit ], [ %.sroa.014, %_ZN4mlir6TypeID3getINS_8dataflow7LatticeINS2_13ConstantValueEEEEES0_v.exit ], [ %.sroa.014, %bb.d ], [ %.sroa.014, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i ], [ %.sroa.014, %bb.e ]
  %.sroa.0.0.in.sroa.speculate.load. = load i64, ptr %.sroa.0.1.in, align 8
  ret i64 %.sroa.0.0.in.sroa.speculate.load.
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %common.ret2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !229
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %common.ret2, label %bb.c

common.ret2:                                      ; preds = %bb.b, %bb.a, %bb.c
  %common.ret2.op = phi ptr [ %i.j, %bb.c ], [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %common.ret2.op

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !231
  br label %common.ret2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !232, !noalias !235 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240, !noalias !235 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !241, !noalias !235 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 8 ; 2 uses
  %i.i = mul i64 %.0.copyload.i.i.i.i, -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !prof !192

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 8
  %i.w = icmp eq i64 %.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.w, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E15LookupBucketForIS3_EEbRKT_RPSH_.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw i32 %.024.i, 1
  %i.y = and i32 %i.x, %i.h                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %.loopexit, !prof !193, !llvm.loop !242

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !243
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !244
  %i.aj = shl i32 %i.ai, 2
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E15LookupBucketForIS3_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !243
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !240
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !232
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.aq = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 5                 ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = lshr i64 %i.au, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !191
  %i.bb = or i32 %i.ax, %i.ba
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !191
  %i.bc = load i32, ptr %i.ah, align 8, !tbaa !244
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load i64, ptr %1, align 8
  store i64 %i.be, ptr %i.aq, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E15LookupBucketForIS3_EEbRKT_RPSH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E15LookupBucketForIS3_EEbRKT_RPSH_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit ], [ %i.v, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E15LookupBucketForIS3_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !232, !noalias !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240, !noalias !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241, !noalias !245 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %1, align 8  ; 2 uses
  %i.h = mul i64 %.0.copyload.i.i.i, -4658895280553007687 ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !191
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !192

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.z, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.x, %bb.c ], [ %i.l, %bb.b ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8
  %i.v = icmp eq i64 %.0.copyload.i.i.i, %.sroa.0.0.copyload.i ; 3 uses
  br i1 %i.v, label %.thread, label %bb.c, !prof !32

bb.c:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.024, 1
  %i.x = and i32 %i.w, %i.g                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !191
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !193, !llvm.loop !242

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.z, %bb.c ], [ %i.u, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.v, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !243
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.101", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
end_hunk_0
