Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OffloadTargetVerifier?download=true
inline.NumInlined: 2444
inline.NumDeleted: 1567
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4mlir3acc14OpenACCSupportD2Ev.exit, label %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !354
  br label %_ZN4mlir3acc14OpenACCSupportD2Ev.exit

_ZN4mlir3acc14OpenACCSupportD2Ev.exit:            ; preds = %bb.a, %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !355
  br label %_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev.exit

_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4mlir3acc6detail20OpenACCSupportTraits7ConceptEEclEPS4_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail13AnalysisModelINS_3acc14OpenACCSupportEE10invalidateERNS0_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #22, !inline_history !356
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #22 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !163 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !163 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !163
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #22
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #22, !inline_history !356
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_121OffloadTargetVerifier14runOnOperationEvEUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %5 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %7 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %9 = alloca %"class.mlir::SymbolRefAttr", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.std::optional.394", align 8 ; 9 uses
  %14 = alloca %"class.llvm::SmallVector.378", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 9 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 9 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %23 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %24 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %25 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %26 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.mlir::Liveness", align 8   ; 7 uses
  %29 = alloca %"class.llvm::SmallVector.327", align 8 ; 11 uses
  %30 = alloca %"class.llvm::SmallVector.83", align 8 ; 16 uses
  %31 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %32 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.llvm::SmallVector.83", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 9 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %44 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %46 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 4 uses
  %i.i = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3acc24OffloadRegionOpInterfaceENS1_6detail39OffloadRegionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZZN12_GLOBAL__N_121OffloadTargetVerifier14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 456
  %.val.i = load i32, ptr %i.j, align 8, !tbaa !101
  %i.k = add i32 %.val.i, -3
  %spec.select.i.i = icmp ult i32 %i.k, 2
  br i1 %spec.select.i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87   ; 3 uses
  %i.o = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_3acc10ParallelOpEvE2idE
  %48 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc10ParallelOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %48, %i.o
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %49

49:                                               ; preds = %bb.c
  %50 = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_3acc9KernelsOpEvE2idE
  %51 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc9KernelsOpEvE2idE
  %spec.select.i.i.i.i4.i.i = and i1 %51, %50
  br i1 %spec.select.i.i.i.i4.i.i, label %bb.d, label %_ZN4llvm3isaIJN4mlir3acc10ParallelOpENS2_9KernelsOpENS2_8SerialOpEEPNS1_9OperationEEEbRKT0_.exit.i

_ZN4llvm3isaIJN4mlir3acc10ParallelOpENS2_9KernelsOpENS2_8SerialOpEEPNS1_9OperationEEEbRKT0_.exit.i: ; preds = %49
  %52 = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_3acc8SerialOpEvE2idE
  %53 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3acc8SerialOpEvE2idE
  %spec.select.i.i.i.i6.i.i = and i1 %53, %52
  br i1 %spec.select.i.i.i.i6.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvm3isaIJN4mlir3acc10ParallelOpENS2_9KernelsOpENS2_8SerialOpEEPNS1_9OperationEEEbRKT0_.exit.i, %49, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !477, !nonnull !43, !align !117
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.r, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.s = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !124
  store ptr @.str.26, ptr %45, align 8, !tbaa !112
  store i8 3, ptr %i.s, align 8, !tbaa !123
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !162, !noalias !478 ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14, !noalias !478
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !478
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %44, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(34) %45) #22, !inline_history !359
  br label %_ZN4mlir3acc14OpenACCSupport7emitNYIENS_8LocationERKN4llvm5TwineE.exit.i

_ZN4llvmplERKNS_5TwineES2_.exit.i.i:              ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22, !noalias !478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !481
  store ptr @.str.29, ptr %43, align 8, !alias.scope !482, !noalias !478
  %i.y = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr @.str.26, ptr %i.y, align 8, !alias.scope !482, !noalias !478
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !112, !alias.scope !482, !noalias !478
  %i.z = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i8 3, ptr %i.z, align 8, !tbaa !483, !noalias !478
  %i.aa = getelementptr inbounds nuw i8, ptr %43, i64 33
  store i8 3, ptr %i.aa, align 1, !tbaa !483, !noalias !478
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %44, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(34) %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22, !noalias !478
  br label %_ZN4mlir3acc14OpenACCSupport7emitNYIENS_8LocationERKN4llvm5TwineE.exit.i

_ZN4mlir3acc14OpenACCSupport7emitNYIENS_8LocationERKN4llvm5TwineE.exit.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i.i, %bb.e
  %i.ab = load ptr, ptr %44, align 8, !tbaa !171
  %.not.i7.i.a = icmp eq ptr %i.ab, null
  br i1 %.not.i7.i.a, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir3acc14OpenACCSupport7emitNYIENS_8LocationERKN4llvm5TwineE.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %44) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4mlir3acc14OpenACCSupport7emitNYIENS_8LocationERKN4llvm5TwineE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %44, i64 200 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !172, !range !42, !noundef !43
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !172
  br i1 %i.ae, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %44, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.af) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %_ZZN12_GLOBAL__N_121OffloadTargetVerifier14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

bb.i:                                             ; preds = %_ZN4llvm3isaIJN4mlir3acc10ParallelOpENS2_9KernelsOpENS2_8SerialOpEEPNS1_9OperationEEEbRKT0_.exit.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !477, !nonnull !43, !align !117 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 8388607
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNK12_GLOBAL__N_121OffloadTargetVerifier22hasIllegalLiveInValuesEPN4mlir9OperationERNS1_3acc14OpenACCSupportE.exit.thread.i, label %bb.j

_ZNK12_GLOBAL__N_121OffloadTargetVerifier22hasIllegalLiveInValuesEPN4mlir9OperationERNS1_3acc14OpenACCSupportE.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br label %bb.bx

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @_ZN4mlir8LivenessC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.am = load i32, ptr %i.ai, align 4            ; 3 uses
  %i.an = and i32 %i.am, 8388607
  %i.ao = icmp ne i32 %i.an, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = lshr i32 %i.am, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.aq, 1
  %i.ar = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ar
  %i.at = lshr i32 %i.am, 21
  %i.au = and i32 %i.at, 2040
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !484
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.az ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !163, !noalias !485
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK4mlir8Liveness9getLiveInEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull %i.bd) #22, !noalias !485 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44, !noalias !486 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !41, !range !42, !noalias !486, !noundef !43
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !486
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !noalias !486
  %.v.v.i.i.i.i.i.i.i.i.i = select i1 %i.bi, i32 %i.bk, i32 %i.bm ; 2 uses
  %.v.i.i.i.i.i.i.i.i.i = zext i32 %.v.v.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.v.i.i.i.i.i.i.i.i.i, 3
  %i.bn = getelementptr i8, ptr %i.bf, i64 %.idx.i.i.i.i.i.i.i ; 12 uses
  %.not1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bq, %bb.k ], [ %i.bf, %bb.j ] ; 3 uses
  %i.bo = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !tbaa !114, !noalias !487
  %i.bp = icmp eq ptr %i.bo, inttoptr (i64 -1 to ptr)
  br i1 %i.bp, label %bb.k, label %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !368

_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.j ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bn, %bb.k ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.v.i.i.i.i.i.i.i.i.i ; 9 uses
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i, %i.br
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i
  %.sroa.035.0.i.i.i.i = phi ptr [ %.sroa.035.2.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i ] ; 3 uses
  %i.bs = load ptr, ptr %.sroa.035.0.i.i.i.i, align 8, !tbaa !114, !noalias !487
  %i.bt = call noundef zeroext i1 @_ZN4mlir3acc14OpenACCSupport15isValidValueUseENS_5ValueERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(28) %i.ba) #22, !noalias !487
  br i1 %i.bt, label %bb.l, label %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i.i.i.i, i64 8 ; 3 uses
  %.not1.i.i.i.i.i.i.i16.i.i.i.i = icmp eq ptr %i.bu, %i.bn
  br i1 %.not1.i.i.i.i.i.i.i16.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i.i

.lr.ph.i.i.i.i.i.i.i17.i.i.i.i:                   ; preds = %bb.l, %bb.m
  %.sroa.035.1.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bu, %bb.l ] ; 3 uses
  %i.bv = load ptr, ptr %.sroa.035.1.i.i.i.i, align 8, !tbaa !114, !noalias !487
  %i.bw = icmp eq ptr %i.bv, inttoptr (i64 -1 to ptr)
  br i1 %i.bw, label %bb.m, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.035.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i18.i.i.i.i = icmp eq ptr %i.bx, %i.bn
  br i1 %.not.i.i.i.i.i.i.i18.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i.i, !llvm.loop !368

_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i17.i.i.i.i, %bb.l
  %.sroa.035.2.i.i.i.i = phi ptr [ %i.bu, %bb.l ], [ %.sroa.035.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i.i ], [ %i.bx, %bb.m ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.035.2.i.i.i.i, %i.br
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !369

_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i
  %.sroa.035.3.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i, %_ZN4llvm9adl_beginIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS7_.exit.i.i.i.i ], [ %.sroa.035.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.035.2.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.by, ptr %29, align 8, !tbaa !32, !alias.scope !485
  %i.bz = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 8 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !33, !alias.scope !485
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 2 uses
  store i32 6, ptr %i.ca, align 4, !tbaa !34, !alias.scope !485
  %.not17.i.i.i.i.i.i = icmp eq ptr %.sroa.035.3.i.i.i.i, %i.br ; 2 uses
  br i1 %.not17.i.i.i.i.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.i.i.i.i, label %.lr.ph20.i.i.i.i.i.i

.lr.ph20.i.i.i.i.i.i:                             ; preds = %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i, %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i
  %.019.i.i.i.i.i.i = phi i64 [ %i.ct, %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i ]
  %.promoted111418.i.i.i.i.i.i = phi ptr [ %.promoted1115.i.i.i.i.i.i, %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i ], [ %.sroa.035.3.i.i.i.i, %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.promoted111418.i.i.i.i.i.i, i64 8 ; 5 uses
  %.not1.i.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %i.cb, %i.bn
  br i1 %.not1.i.i.i.i.i.i.i.i6.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i:           ; preds = %.lr.ph20.i.i.i.i.i.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !114
  %i.cd = icmp eq ptr %i.cc, inttoptr (i64 -1 to ptr)
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i

.lr.ph.i.i.i.i.i.i.i.i9.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.ch, align 8, !tbaa !114
  %i.cf = icmp eq ptr %i.ce, inttoptr (i64 -1 to ptr)
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i, !llvm.loop !368

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i9.i.i.i
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i9.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i8.i.i.i = icmp eq ptr %i.ch, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i, label %._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.loopexit_crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i9.i.i.i, !llvm.loop !368

._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.loopexit_crit_edge.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i, !llvm.loop !368

_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i9.i.i.i, %._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.loopexit_crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph20.i.i.i.i.i.i
  %.promoted1113.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph20.i.i.i.i.i.i ], [ %i.ch, %._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.loopexit_crit_edge.i.i.i.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i9.i.i.i ] ; 3 uses
  %.not2.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted1113.i.i.i.i.i.i, %i.br
  br i1 %.not2.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i
  %i.ci = phi ptr [ %i.cs, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i ], [ %.promoted1113.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i ] ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !114
  %i.ck = call noundef zeroext i1 @_ZN4mlir3acc14OpenACCSupport15isValidValueUseENS_5ValueERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(28) %i.ba) #22
  br i1 %i.ck, label %bb.n, label %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 5 uses
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.bn
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i.i:         ; preds = %bb.n
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !114
  %i.cn = icmp eq ptr %i.cm, inttoptr (i64 -1 to ptr)
  br i1 %i.cn, label %.lr.ph6.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph6.i.i.i.i.i.i
  %i.co = load ptr, ptr %i.cr, align 8, !tbaa !114
  %i.cp = icmp eq ptr %i.co, inttoptr (i64 -1 to ptr)
  br i1 %i.cp, label %.lr.ph6.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !368

.lr.ph6.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.loopexit_crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !368

._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.loopexit_crit_edge.i.i.i.i.i.i: ; preds = %.lr.ph6.i.i.i.i.i.i
  br label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !368

_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.loopexit_crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i.i, %bb.n
  %i.cs = phi ptr [ %i.cl, %bb.n ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.cr, %._ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.loopexit_crit_edge.i.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.br
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !369

_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i
  %.promoted1115.i.i.i.i.i.i = phi ptr [ %.promoted1113.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i7.i.i.i ], [ %i.cs, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEES5_SG_S4_lS4_S4_EppEv.exit.i.i.i.i.i.i.i.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ct = add nuw nsw i64 %.019.i.i.i.i.i.i, 1    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.promoted1115.i.i.i.i.i.i, %i.br
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.loopexit.i.i.i.i, label %.lr.ph20.i.i.i.i.i.i, !llvm.loop !370

_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.loopexit.i.i.i.i: ; preds = %_ZN4llvm20filter_iterator_baseINS_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_St20forward_iterator_tagEppEv.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %i.bz, align 8, !tbaa !33, !alias.scope !485
  %.pre24.i.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !34, !alias.scope !485
  %i.cu = zext i32 %.pre24.i.i.i.i to i64
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.i.i.i.i

_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.i.i.i.i: ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.loopexit.i.i.i.i, %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i
  %i.cv = phi i64 [ 6, %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i ], [ %i.cu, %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.loopexit.i.i.i.i ]
  %i.cw = phi i32 [ 0, %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i ], [ %.pre.i.i.i.i, %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.loopexit.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %_ZN4llvm17make_filter_rangeIRKNS_11SmallPtrSetIN4mlir5ValueELj16EEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS2_6RegionERNS2_8LivenessERNS2_3acc14OpenACCSupportEEUlS3_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit.i.i.i ], [ %i.ct, %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.loopexit.i.i.i.i ] ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = add i64 %.0.lcssa.i.i.i.i.i.i, %i.cx    ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.cv
  br i1 %i.cz, label %bb.o, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i

bb.o:                                             ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implINS0_19SmallPtrSetIteratorIN4mlir5ValueEEEZNK12_GLOBAL__N_121OffloadTargetVerifier22getIllegalLiveInValuesERNS3_6RegionERNS3_8LivenessERNS3_3acc14OpenACCSupportEEUlS4_E_St20forward_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESJ_SJ_St18input_iterator_tag.exit.i.i.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull %i.by, i64 noundef %i.cy, i64 noundef 8) #22
  %.pre.i.i.i.i.i = load i32, ptr %i.bz, align 8, !tbaa !33, !alias.scope !485 ; 2 uses
  %.pre37.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
end_hunk_0
