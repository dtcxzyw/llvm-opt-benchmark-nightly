Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HostOpFiltering?download=true
inline.NumInlined: 1865
inline.NumDeleted: 1193
begin_hunk_0_@_ZN4mlir11OpInterfaceINS_3omp22OffloadModuleInterfaceENS1_6detail37OffloadModuleInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !38
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !44

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 33) #18
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !14
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #18, !inline_history !142
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
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 33) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !14
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #18, !inline_history !142
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_3omp22OffloadModuleInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #18, !inline_history !143
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #18 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !66 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !66 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #18
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #18, !inline_history !143
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE0ENS1_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS1_4LLVM10LLVMFuncOpEE_SF_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::LLVM::LLVMFuncOp", align 8 ; 8 uses
  %5 = alloca %"class.mlir::LLVM::LLVMFunctionType", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.175", align 8 ; 10 uses
  %7 = alloca %class.anon.180, align 8            ; 4 uses
  %8 = alloca %"class.mlir::OpBuilder", align 8   ; 9 uses
  %9 = alloca %"class.llvm::SmallVector.181", align 8 ; 11 uses
  %10 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %11 = alloca %"class.llvm::SetVector", align 8  ; 16 uses
  %12 = alloca %"class.llvm::SetVector.227", align 8 ; 11 uses
  %13 = alloca %"class.mlir::omp::TargetOp", align 8 ; 27 uses
  %14 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %15 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %16 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %17 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %18 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %19 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %21 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %22 = alloca %"class.mlir::omp::MapInfoOp", align 8 ; 9 uses
  %23 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %24 = alloca %"class.llvm::SmallVector.284", align 8 ; 12 uses
  %25 = alloca %"class.mlir::Value", align 8      ; 8 uses
  %26 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %27 = alloca %"class.mlir::omp::DeclareTargetInterface", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %i.d
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  %i.f = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp22DeclareTargetInterfaceENS1_6detail37DeclareTargetInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp22DeclareTargetInterfaceENS1_6detail37DeclareTargetInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i.i, ptr %i.g, 1
  br label %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i

_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pn.i.i.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i.i.i, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.h = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 0 ; 2 uses
  store ptr %i.h, ptr %27, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.j = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 1
  store ptr %i.j, ptr %i.i, align 8
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i
  %i.k = call noundef zeroext i1 @_ZN4mlir3omp22DeclareTargetInterface15isDeclareTargetEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #18
  br i1 %i.k, label %bb.e, label %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef i32 @_ZN4mlir3omp22DeclareTargetInterface26getDeclareTargetDeviceTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #18
  %i.m = zext i32 %i.l to i64
  %i.n = or disjoint i64 %i.m, 4294967296
  br label %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i

_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i
  %.sroa.2.0.i.i.i = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.o = and i64 %.sroa.2.0.i.i.i, 4294967296
  %.not.i.i = icmp ne i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = and i32 %i.q, 8388607
  %i.s = icmp ne i32 %i.r, 0
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = lshr i32 %i.q, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.u, 1
  %i.v = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v
  %i.x = lshr i32 %i.q, 21
  %i.y = and i32 %i.x, 2040
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !153
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ad ; 13 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = and i64 %.sroa.2.0.i.i.i, 4294967295
  %i.ai = icmp ne i64 %i.ah, 1
  %i.aj = and i1 %.not.i.i, %i.ai
  %or.cond.i.i = or i1 %i.aj, %i.ag
  br i1 %or.cond.i.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.f

bb.f:                                             ; preds = %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ak = call ptr @_ZN4mlir4LLVM10LLVMFuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  store ptr %i.ak, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.am, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.an, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %6, ptr %7, align 8, !tbaa !155
  %.sroa.07.0.in16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %.sroa.07.017.i.i.i.i = load ptr, ptr %.sroa.07.0.in16.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %.sroa.07.017.i.i.i.i, %i.ae
  br i1 %.not18.i.i.i.i, label %_ZN4mlir6Region4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ao = ptrtoint ptr %7 to i64
  br label %bb.g

_ZN4mlir5Block4walkILNS_9WalkOrderE0ENS_15ForwardIteratorERZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.loopexit.i.i.i.i: ; preds = %bb.h
  %.sroa.07.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i.i.i, i64 8
  %.sroa.07.0.i.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN4mlir6Region4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir5Block4walkILNS_9WalkOrderE0ENS_15ForwardIteratorERZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.07.019.i.i.i.i = phi ptr [ %.sroa.07.017.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.07.0.i.i.i.i, %_ZN4mlir5Block4walkILNS_9WalkOrderE0ENS_15ForwardIteratorERZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.loopexit.i.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i.i.i, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i.i.i, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.at, %bb.i ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir5Block4walkILNS_9WalkOrderE0ENS_15ForwardIteratorERZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.loopexit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.02.0.i.i.i.i.i.i) #18
  %i.av = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.au, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS1_4LLVM10LLVMFuncOpEEUlS4_E_EES2_lS4_, i64 %i.ao, i32 noundef 0)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4mlir6Region4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.i.i.i, label %bb.h

_ZN4mlir6Region4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.i.i.i: ; preds = %_ZN4mlir5Block4walkILNS_9WalkOrderE0ENS_15ForwardIteratorERZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.loopexit.i.i.i.i, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #18
  store ptr %i.bb, ptr %8, align 8, !tbaa !157
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 0, ptr %i.bc, align 8
  %i.be = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !158
  %i.bh = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.be) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !163
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.bj, ptr %i.bk, align 8
  %.sroa.089.0.copyload.i.i.i = load ptr, ptr %4, align 8
  %i.bl = call noundef ptr @_ZN4mlir9Operation19cloneWithoutRegionsEv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.089.0.copyload.i.i.i) #18
  %i.bm = call noundef ptr @_ZN4mlir9OpBuilder6insertEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.bl) #18 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 44 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 3 uses
  %i.bp = and i32 %i.bo, 8388607
  %i.bq = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.bs = lshr i32 %i.bo, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.bs, 1
  %i.bt = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bt
  %i.bv = lshr i32 %i.bo, 21
  %i.bw = and i32 %i.bv, 2040
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !153
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.cb ; 4 uses
  %i.cd = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #16 ; 14 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.ce, align 8, !tbaa !180
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 6 uses
  store ptr %i.cf, ptr %i.cf, align 8, !tbaa !70
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !66
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE13addNodeToListEPS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, ptr noundef nonnull %i.cd) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !66
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !66
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.cm, ptr %9, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 6, ptr %i.co, align 4, !tbaa !17
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.cq = icmp eq ptr %i.ae, %i.cp
  br i1 %i.cq, label %_ZN4llvm9transformINS_15MutableArrayRefIN4mlir13BlockArgumentEEESt20back_insert_iteratorINS_11SmallVectorINS2_8LocationELj6EEEEZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS2_4LLVM10LLVMFuncOpEEUlRKS3_E_EET0_OT_SH_T1_.exit.i.i.i, label %_ZN4mlir6Region15getNumArgumentsEv.exit.i.i.i

_ZN4mlir6Region15getNumArgumentsEv.exit.i.i.i:    ; preds = %_ZN4mlir6Region4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS_4LLVM10LLVMFuncOpEEUlPNS_9OperationEE_S9_NS_10WalkResultEEET3_OT1_.exit.i.i.i
  %i.cr = load ptr, ptr %.sroa.07.0.in16.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !181 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !182 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
end_hunk_0
begin_hunk_1_@_ZL14collectRewriteN4mlir5ValueERN4llvm9SetVectorIS0_NS1_11SmallVectorIS0_Lj0EEENS1_8DenseSetIS0_NS1_12DenseMapInfoIS0_vEEEELj0EEE:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !39 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !17
  %.not.i.i14 = icmp ult i32 %i.bw, %i.by
  br i1 %.not.i.i14, label %bb.m, label %bb.l, !prof !75

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr %.sroa.0.0.copyload.i13)
  br label %_ZNK4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %.sroa.0.0.copyload.i13, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.bv, align 8, !tbaa !39
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bv, align 8, !tbaa !39
  br label %_ZNK4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsERKS2_.exit

_ZNK4llvm9SetVectorIN4mlir5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE8containsERKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.m, %bb.l, %_ZL18keepHostOpInDeviceRN4mlir9OperationE.exit.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14collectRewriteN4mlir3omp9MapInfoOpERN4llvm9SetVectorIS1_NS2_11SmallVectorIS1_Lj0EEENS2_8DenseSetIS1_NS2_12DenseMapInfoIS1_vEEEELj0EEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::omp::MapInfoOp", align 8 ; 5 uses
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  store ptr %0, ptr %2, align 8
  %i.a = call i64 @_ZN4mlir3omp9MapInfoOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 2) #18 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir3omp9MapInfoOp10getMembersEv.exit, label %bb.b, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  br label %_ZN4mlir3omp9MapInfoOp10getMembersEv.exit

_ZN4mlir3omp9MapInfoOp10getMembersEv.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h
  %i.l = sub nsw i64 %i.j, %i.h
  %.not11 = icmp eq i64 %i.j, %i.h
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4mlir3omp9MapInfoOp10getMembersEv.exit
  %i.m = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !208
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.m, 1
  %i.n = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.n, label %bb.c, label %_ZN4llvm9SetVectorIN4mlir3omp9MapInfoOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %.not.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !75

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp9MapInfoOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr %.sroa.0.0.copyload.i)
  br label %_ZN4llvm9SetVectorIN4mlir3omp9MapInfoOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = zext i32 %i.q to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store ptr %.sroa.0.0.copyload.i, ptr %i.v, align 1
  %i.w = load i32, ptr %i.p, align 8, !tbaa !39
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.p, align 8, !tbaa !39
  br label %_ZN4llvm9SetVectorIN4mlir3omp9MapInfoOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

_ZN4llvm9SetVectorIN4mlir3omp9MapInfoOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit: ; preds = %._crit_edge, %bb.d, %bb.e
  ret void

.lr.ph:                                           ; preds = %_ZN4mlir3omp9MapInfoOp10getMembersEv.exit, %.lr.ph
  %.sroa.4.012 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %_ZN4mlir3omp9MapInfoOp10getMembersEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.4.012
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !76
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %3, align 8
  %i.aa = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call fastcc void @_ZL14collectRewriteN4mlir3omp9MapInfoOpERN4llvm9SetVectorIS1_NS2_11SmallVectorIS1_Lj0EEENS2_8DenseSetIS1_NS2_12DenseMapInfoIS1_vEEEELj0EEE(ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ab = add nuw nsw i64 %.sroa.4.012, 1         ; 2 uses
  %.not = icmp eq i64 %i.ab, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4mlir3omp9MapInfoOp16getBoundsMutableEv(ptr dead_on_unwind writable sret(%"class.mlir::MutableOperandRange") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4mlir9Operation10moveBeforeEPNS_5BlockEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir4LLVM16LLVMFunctionType9getParamsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare ptr @_ZN4mlir5Block11addArgumentENS_4TypeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr) local_unnamed_addr #6

declare ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare ptr @_ZN4mlir4LLVM8ReturnOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6Region8takeBodyERS0_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6Region17dropAllReferencesEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.b, %0
  br i1 %.not4.i.i, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.03.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.03.05.i.i, i64 -8 ; 3 uses
  tail call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE18removeNodeFromListEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e) #18
  %i.f = load ptr, ptr %.sroa.03.05.i.i, align 8, !tbaa !70 ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.05.i.i, i8 0, i64 16, i1 false)
  tail call void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.e) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 80) #17
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !209

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !70
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 5 uses
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.l, ptr nonnull align 8 dereferenceable(16) %1) #18
  %i.n = icmp eq ptr %i.l, %1
  br i1 %i.n, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !66
  store ptr %i.p, ptr %1, align 8, !tbaa !70
  %i.r = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !66
  store ptr %i.r, ptr %i.l, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.l, ptr %i.t, align 8, !tbaa !66
  store ptr %i.o, ptr %0, align 8, !tbaa !70
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit: ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE5clearEv.exit, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare ptr @_ZN4mlir4LLVM16LLVMFunctionType3getENS_4TypeEN4llvm8ArrayRefIS2_EEb(ptr, ptr, i64, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 1, 3) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionENS1_4LLVM10LLVMFuncOpEEUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.348", align 8 ; 9 uses
  %3 = alloca %"class.mlir::omp::BlockArgOpenMPOpInterface", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.356", align 8    ; 5 uses
  %5 = alloca %"class.mlir::omp::MapInfoOp", align 8 ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3omp8TargetOpEvE2idE
  %.not34.i = icmp eq ptr %1, null                ; 2 uses
  %.not3.i = or i1 %.not34.i, %i.e
  br i1 %.not3.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE9push_backES3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %.not.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !75

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %.val, ptr nonnull %1)
  br label %_ZZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionEN4mlir4LLVM10LLVMFuncOpEENKUlPNS1_9OperationEE_clES5_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %.val, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  store ptr %1, ptr %i.l, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !39
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !39
  br label %_ZZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionEN4mlir4LLVM10LLVMFuncOpEENKUlPNS1_9OperationEE_clES5_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE9push_backES3_.exit.i: ; preds = %bb.a
  %i.o = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3omp12TargetDataOpEvE2idE
  %.not5.i = or i1 %.not34.i, %i.o
  br i1 %.not5.i, label %_ZZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionEN4mlir4LLVM10LLVMFuncOpEENKUlPNS1_9OperationEE_clES5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE9push_backES3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.r, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.s = call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp25BlockArgOpenMPOpInterfaceENS1_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  store ptr %1, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.s, ptr %i.t, align 8
  call void @_ZN4mlir3omp25BlockArgOpenMPOpInterface17getBlockArgsPairsERN4llvm15SmallVectorImplISt4pairINS_5ValueENS_13BlockArgumentEEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.u = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i = shl nuw nsw i64 %i.w, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i
  %.not7.i = icmp eq i32 %i.v, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.g

._crit_edge.loopexit.i:                           ; preds = %_ZN4mlir5Value18replaceAllUsesWithES0_.exit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %i.z = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.p
  br i1 %i.aa, label %_ZN4llvm11SmallVectorISt4pairIN4mlir5ValueENS2_13BlockArgumentEELj3EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.z) #18
  br label %_ZN4llvm11SmallVectorISt4pairIN4mlir5ValueENS2_13BlockArgumentEELj3EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIN4mlir5ValueENS2_13BlockArgumentEELj3EED2Ev.exit.i: ; preds = %bb.f, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionEN4mlir4LLVM10LLVMFuncOpEENKUlPNS1_9OperationEE_clES5_.exit

bb.g:                                             ; preds = %_ZN4mlir5Value18replaceAllUsesWithES0_.exit.i, %.lr.ph.i
  %.0148.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aw, %_ZN4mlir5Value18replaceAllUsesWithES0_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0148.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ab = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  store ptr %i.ab, ptr %5, align 8
  %i.ac = call i64 @_ZN4mlir3omp9MapInfoOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #18
  %i.ad = load ptr, ptr %5, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ag = and i64 %i.ac, 4294967295
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 4 uses
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !74  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i
  %i.am = phi ptr [ %i.au, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i ], [ %i.ak, %bb.g ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !82 ; 3 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !83
  %.not2.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not2.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !81
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !76
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.an, align 8, !tbaa !81
  %i.as = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !78 ; 3 uses
  store ptr %i.as, ptr %i.am, align 8, !tbaa !82
  %.not.i.i.i.i.i17.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i17.i, label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.am, ptr %i.at, align 8, !tbaa !81
  br label %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i: ; preds = %bb.j, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i
  store ptr %i.am, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !78
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4mlir5Value18replaceAllUsesWithES0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4mlir5Value18replaceAllUsesWithES0_.exit.i:    ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %.0148.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.x
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g

_ZZN12_GLOBAL__N_119HostOpFilteringPass19rewriteHostFunctionEN4mlir4LLVM10LLVMFuncOpEENKUlPNS1_9OperationEE_clES5_.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE9push_backES3_.exit.i, %_ZN4llvm11SmallVectorISt4pairIN4mlir5ValueENS2_13BlockArgumentEELj3EED2Ev.exit.i
  %.sroa.013.1.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE9push_backES3_.exit.i ], [ 1, %_ZN4llvm11SmallVectorISt4pairIN4mlir5ValueENS2_13BlockArgumentEELj3EED2Ev.exit.i ], [ 2, %bb.d ], [ 2, %bb.c ]
  ret i32 %.sroa.013.1.i
}

declare void @_ZN4mlir3omp25BlockArgOpenMPOpInterface17getBlockArgsPairsERN4llvm15SmallVectorImplISt4pairINS_5ValueENS_13BlockArgumentEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp8TargetOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !39
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !39
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_3omp25BlockArgOpenMPOpInterfaceENS1_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !36 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp25BlockArgOpenMPOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp25BlockArgOpenMPOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 36) #18
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3omp25BlockArgOpenMPOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3omp25BlockArgOpenMPOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3omp25BlockArgOpenMPOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_3omp25BlockArgOpenMPOpInterfaceEPNS_9OperationENS2_6detail40BlockArgOpenMPOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_:bb.a

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !97
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !235

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa12.i
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !97
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !97
  %i.bc = add i32 %.0.i16, -1
  %i.bd = and i32 %i.bc, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !236

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !237

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !90
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !104
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !104
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !91
  %i.bk = zext i32 %i.be to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #18
  store i32 0, ptr %i.d, align 4, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3omp9MapInfoOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !39
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !39
  ret void
}

declare noundef zeroext i1 @_ZN4mlir6isPureEPNS_9OperationE(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir11MLIRContext16getLoadedDialectEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !39
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !39
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !39
  ret void
}

declare void @_ZN4mlir6Region17dropAllReferencesEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #12

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE18removeNodeFromListEPS2_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #6

declare void @_ZN4mlir23function_interface_impl15setFunctionTypeENS_19FunctionOpInterfaceENS_4TypeE(ptr, ptr, ptr) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #18, !inline_history !238
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
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !66 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !66 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #18
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #18, !inline_history !238
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS1_4LLVM8GlobalOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::omp::DeclareTargetInterface", align 8 ; 7 uses
  %3 = alloca %"class.mlir::LLVM::GlobalOp", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8GlobalOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.d
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS_4LLVM8GlobalOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp22DeclareTargetInterfaceENS1_6detail37DeclareTargetInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp22DeclareTargetInterfaceENS1_6detail37DeclareTargetInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i.i, ptr %i.f, 1
  br label %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i

_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pn.i.i.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i.i.i, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.g = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 0 ; 2 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 1
  store ptr %i.i, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i
  %i.j = call noundef zeroext i1 @_ZN4mlir3omp22DeclareTargetInterface15isDeclareTargetEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br i1 %i.j, label %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i, label %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.thread.i.i

_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.thread.i.i: ; preds = %bb.d, %_ZN4llvm8dyn_castIN4mlir3omp22DeclareTargetInterfaceENS1_9OperationEEEDcRT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN4mlir4LLVM8GlobalOp10setLinkageENS0_7linkage7LinkageE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 7) #18
  br label %_ZZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvENKUlN4mlir4LLVM8GlobalOpEE_clES3_.exit.i

_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i: ; preds = %bb.d
  %i.k = call noundef i32 @_ZN4mlir3omp22DeclareTargetInterface26getDeclareTargetDeviceTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvENKUlN4mlir4LLVM8GlobalOpEE_clES3_.exit.i

_ZZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvENKUlN4mlir4LLVM8GlobalOpEE_clES3_.exit.i: ; preds = %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.i.i, %_ZL22getDeclareTargetDeviceRN4mlir9OperationE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS_4LLVM8GlobalOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlNS_4LLVM8GlobalOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %_ZZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvENKUlN4mlir4LLVM8GlobalOpEE_clES3_.exit.i
  ret void
}

declare void @_ZN4mlir4LLVM8GlobalOp10setLinkageENS0_7linkage7LinkageE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = distinct !{!3, !45}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !9, i64 8, !9, i64 12}
!16 = !{!15, !12, i64 0}
!17 = !{!15, !9, i64 12}
!18 = !{!"vtable pointer", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTSN4mlir4PassE", !12, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir4PassELb0EE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"any p2 pointer", !12, i64 0}
!24 = !{!"p1 int", !12, i64 0}
!25 = !{!"bool", !8, i64 0}
!26 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6detail18PassExecutionStateEE", !8, i64 0, !25, i64 72}
!27 = !{!26, !25, i64 72}
!28 = !{!"p1 _ZTSN4mlir9OperationE", !12, i64 0}
!29 = !{!"_ZTSN4mlir7OpStateE", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"p1 _ZTSN12_GLOBAL__N_119HostOpFilteringPassE", !12, i64 0}
!32 = !{!"_ZTSZN12_GLOBAL__N_119HostOpFilteringPass14runOnOperationEvEUlN4mlir4LLVM10LLVMFuncOpEE_", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !12, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTSN4mlir6TypeIDE", !13, i64 0}
!38 = !{!37, !13, i64 0}
!39 = !{!15, !9, i64 8}
!40 = !{!"p1 _ZTSN4mlir11MLIRContextE", !12, i64 0}
!41 = !{!"_ZTSZN4mlir11MLIRContext16getOrLoadDialectINS_4LLVM11LLVMDialectEEEPT_vEUlvE_", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"p1 _ZTSN4mlir7DialectE", !12, i64 0}
!44 = !{!"branch_weights", i32 1, i32 1048575}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !37, i64 0, !12, i64 8}
!47 = !{!46, !12, i64 8}
!48 = !{!"_ZTSN4mlir13OperationName16InterfaceConceptE"}
!49 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !12, i64 0}
!50 = !{!"_ZTSN4mlir9AttributeE", !49, i64 0}
!51 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_10StringAttrENS_9AttributeENS0_17StringAttrStorageENS0_16AttributeUniquerEJNS_9TypedAttr5TraitEEEE", !50, i64 0}
!52 = !{!"_ZTSN4mlir10StringAttrE", !51, i64 0}
!53 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIN4mlir6TypeIDEPvEvEE", !15, i64 0}
!54 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDEPvELb1EEE", !53, i64 0}
!55 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIN4mlir6TypeIDEPvEEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIN4mlir6TypeIDEPvELj3EEE", !8, i64 0}
!57 = !{!"_ZTSN4llvm11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEE", !55, i64 0, !56, i64 16}
!58 = !{!"_ZTSN4mlir6detail12InterfaceMapE", !57, i64 0}
!59 = !{!"p1 _ZTSN4mlir10StringAttrE", !12, i64 0}
!60 = !{!"long", !8, i64 0}
!61 = !{!"_ZTSN4llvm8ArrayRefIN4mlir10StringAttrEEE", !59, i64 0, !60, i64 8}
!62 = !{!"_ZTSN4mlir13OperationName4ImplE", !48, i64 0, !52, i64 8, !37, i64 16, !43, i64 24, !58, i64 32, !61, i64 96, !37, i64 112}
!63 = !{!62, !43, i64 24}
!64 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !12, i64 0}
!65 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !64, i64 0, !64, i64 8}
!66 = !{!65, !64, i64 8}
!67 = !{!"p1 _ZTSN4mlir5BlockE", !12, i64 0}
!68 = !{!"_ZTSN4mlir12LocationAttrE", !50, i64 0}
!69 = !{!"_ZTSN4mlir8LocationE", !68, i64 0}
!70 = !{!65, !64, i64 0}
!71 = !{!"p1 _ZTSN4mlir6detail13IROperandBaseE", !12, i64 0}
!72 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !12, i64 0}
!73 = !{!"_ZTSN4mlir5ValueE", !72, i64 0}
!74 = !{!73, !72, i64 0}
!75 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!76 = !{!72, !72, i64 0}
!77 = !{!"_ZTSN4mlir19IRObjectWithUseListINS_9OpOperandEEE", !71, i64 0}
!78 = !{!77, !71, i64 0}
!79 = !{!"p2 _ZTSN4mlir6detail13IROperandBaseE", !23, i64 0}
!80 = !{!"_ZTSN4mlir6detail13IROperandBaseE", !71, i64 0, !79, i64 8, !28, i64 16}
!81 = !{!80, !79, i64 8}
!82 = !{!80, !71, i64 0}
!83 = !{!71, !71, i64 0}
!84 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!85 = !{!"p1 _ZTSN4mlir9OpOperandE", !12, i64 0}
!86 = !{!"_ZTSN4mlir6detail14OperandStorageE", !9, i64 0, !9, i64 3, !9, i64 4, !85, i64 8}
!87 = !{!86, !85, i64 8}
!88 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIN4mlir3omp9MapInfoOpEEE", !12, i64 0}
!89 = !{!"_ZTSN4llvm8DenseMapIN4mlir3omp9MapInfoOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEE", !88, i64 0, !24, i64 8, !9, i64 16, !9, i64 20}
!90 = !{!89, !9, i64 20}
!91 = !{!89, !88, i64 0}
!92 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIN4mlir5ValueEEE", !12, i64 0}
!93 = !{!"_ZTSN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !92, i64 0, !24, i64 8, !9, i64 16, !9, i64 20}
!94 = !{!93, !9, i64 20}
!95 = !{!93, !92, i64 0}
!96 = !{!93, !24, i64 8}
!97 = !{!9, !9, i64 0}
!98 = !{!"branch_weights", i32 1, i32 1999}
!99 = !{!"branch_weights", i32 0, i32 1}
!100 = !{!92, !92, i64 0}
!101 = !{!93, !9, i64 16}
!102 = !{!89, !24, i64 8}
!103 = !{!88, !88, i64 0}
!104 = !{!89, !9, i64 16}
!105 = distinct !{!105, i1 false, !"_ZN4mlir3omp4impl25createHostOpFilteringPassEv"}
!106 = distinct !{!106, !105, !"_ZN4mlir3omp4impl25createHostOpFilteringPassEv: argument 0"}
!107 = distinct !{!107, i1 false, !"_ZSt11make_uniqueIN12_GLOBAL__N_119HostOpFilteringPassEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!108 = distinct !{!108, !107, !"_ZSt11make_uniqueIN12_GLOBAL__N_119HostOpFilteringPassEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!109 = !{!106}
!110 = !{!108, !106}
!111 = !{!"p2 _ZTSN4mlir6detail11PassOptions10OptionBaseE", !23, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 16}
!115 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefEPNS_2cl6OptionEEE", !12, i64 0}
!116 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEEE", !115, i64 0, !24, i64 8, !9, i64 16, !9, i64 20}
end_hunk_2
