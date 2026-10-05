Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TosaToSPIRVTosaConstants?download=true
inline.NumInlined: 689
inline.NumDeleted: 539
begin_hunk_0_@_ZN4mlir4Pass10initializeEPNS_11MLIRContextE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
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
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nonnull %.sroa.0.0.copyload.i) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir4impl37TosaToSPIRVTosaMarkGraphConstantsBaseINS_4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstantsEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstantsESt14default_deleteIS3_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #13, !noalias !69, !inline_history !68 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !69
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !11, !noalias !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !23, !noalias !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !noalias !69
  store ptr %i.i, ptr %i.h, align 8, !tbaa !13, !noalias !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !31, !noalias !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.k, align 4, !tbaa !14, !noalias !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.m, ptr %i.l, align 8, !tbaa !13, !noalias !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.n, align 8, !tbaa !31, !noalias !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.o, align 4, !tbaa !14, !noalias !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !69
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstantsE, i64 16), ptr %i.a, align 8, !tbaa !16, !noalias !69
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #3

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #15, !inline_history !70
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #15 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !71 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !71 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #15
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #15, !inline_history !70
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvEUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  %9 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE ; 3 uses
  %spec.select.i.i.i.i.i.i = and i1 %9, %i.e
  br i1 %spec.select.i.i.i.i.i.i, label %bb.b, label %_ZN4llvm3isaIJN4mlir4tosa7ConstOpENS2_12ConstShapeOpEEPNS1_9OperationEEEbRKT0_.exit.i

_ZN4llvm3isaIJN4mlir4tosa7ConstOpENS2_12ConstShapeOpEEPNS1_9OperationEEEbRKT0_.exit.i: ; preds = %bb.a
  %10 = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4tosa12ConstShapeOpEvE2idE
  %11 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4tosa12ConstShapeOpEvE2idE
  %spec.select.i.i.i.i3.i.i = and i1 %11, %10
  br i1 %spec.select.i.i.i.i3.i.i, label %bb.b, label %_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit

bb.b:                                             ; preds = %_ZN4llvm3isaIJN4mlir4tosa7ConstOpENS2_12ConstShapeOpEEPNS1_9OperationEEEbRKT0_.exit.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not.i.i = icmp ult i32 %i.g, 16777216
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.12, i64 26) #15 ; 2 uses
  %i.i = extractvalue { ptr, i8 } %i.h, 1
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = tail call noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr nonnull @.str.12, i64 26) #15
  br i1 %i.l, label %bb.d, label %bb.m

_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit.i: ; preds = %bb.c
  %i.m = extractvalue { ptr, i8 } %i.h, 0
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit.i, %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !77
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %8) #15
  %i.p = load ptr, ptr %7, align 8, !tbaa !85
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 3, ptr %6, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.10, ptr %i.r, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %.not.i.i.i.i.i.i = icmp ult i32 %i.t, %i.v
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f, !prof !90

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.z = load i32, ptr %i.s, align 8, !tbaa !31
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !85
  %.not.i.i2.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i2.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i, label %_ZNO4mlir18InFlightDiagnosticlsIRKN4llvm13StringLiteralEEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRKN4llvm13StringLiteralEEEOS0_OT_.exit.i: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 6, ptr %i.ac, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !77
  store ptr @.str.12, ptr %5, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 26, ptr %i.ae, align 8, !tbaa !37
  %i.af = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %5) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.pr15.i = load ptr, ptr %7, align 8, !tbaa !85
  %.not.i.i3.i = icmp eq ptr %.pr15.i, null
  br i1 %.not.i.i3.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRKN4llvm13StringLiteralEEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 3, ptr %4, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.11, ptr %i.ag, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i.i.i.i.i4.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 95, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i4.i, align 8, !tbaa !89
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %i.ai = load i32, ptr %i.u, align 4, !tbaa !14
  %.not.i.i.i.i.i5.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i5.i, label %bb.j, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.am = load i32, ptr %i.s, align 8, !tbaa !31
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.s, align 8, !tbaa !31
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pr17.pr.i = load ptr, ptr %7, align 8, !tbaa !85
  %.not.i6.i = icmp eq ptr %.pr17.pr.i, null
  br i1 %.not.i6.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #15
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i

_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRKN4llvm13StringLiteralEEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !91, !range !24, !noundef !25
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !91
  br i1 %i.aq, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #15
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.l, %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit

bb.m:                                             ; preds = %_ZN4mlir9Operation7hasAttrEN4llvm9StringRefE.exit.i, %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !104 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %i.av = getelementptr inbounds i8, ptr %1, i64 -16
  %i.aw = zext i32 %i.at to i64                   ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.au, ptr null, ptr %i.av ; 2 uses
  %i.ax = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS4_9use_emptyEvEUlS8_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i.i, i64 %i.aw)
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1
  %i.az = icmp eq i64 %i.ay, %i.aw
  br i1 %i.az, label %_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !105
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !28, !noalias !105
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30, !noalias !105 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %9, %i.bc
  %spec.select.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i, ptr %3, align 8, !noalias !105
  %.not.i.i7.i = icmp eq ptr %spec.select.i.i.i.i.i, null
  br i1 %.not.i.i7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = call { ptr, ptr } @_ZN4mlir4tosa7ConstOp13getValuesAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !105
  br label %_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !105
  %12 = icmp ne ptr %i.bb, @_ZN4mlir6detail14TypeIDResolverINS_4tosa12ConstShapeOpEvE2idE
  %.not12.i.i.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4tosa12ConstShapeOpEvE2idE
  %spec.select.i.i.i.i4.not.i.i.i = or i1 %.not12.i.i.i, %12
  br i1 %spec.select.i.i.i.i4.not.i.i.i, label %_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = load i32, ptr %i.f, align 4, !noalias !105 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp ugt i32 %i.be, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i9.i)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = lshr i32 %i.be, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.bg, 1
  %i.bh = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bh
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !39, !noalias !105 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !42, !noalias !105 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !105
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !43

bb.s:                                             ; preds = %bb.r
  %i.bn = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id) #15, !noalias !105
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 49), i64 18) #15, !noalias !105
  store ptr %i.bo, ptr @_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id, align 8, !noalias !105
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id) #15, !noalias !105
  br label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !11, !noalias !105 ; 2 uses
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !13, !noalias !105 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !31, !noalias !105 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bt = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bt ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !11, !noalias !105
  %i.bv = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = xor i64 %i.bt, -1
  %i.by = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bx
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bv, ptr %i.bw, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bv, i64 %i.by, i64 %i.bt ; 2 uses
  %i.bz = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bs, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ca
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30, !noalias !105
  %i.cc = icmp eq ptr %i.cb, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cc, label %bb.v, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46, !noalias !105
  br label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i.i.i.i

_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %bb.v ], [ null, %bb.u ]
  %.fca.0.insert.i.i.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i.i.i, ptr %i.cf, 1
  br label %_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i

_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i: ; preds = %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i.i.i.i, %bb.q, %bb.o
  %.pn.i.i = phi { ptr, ptr } [ %i.bd, %bb.o ], [ %.fca.1.insert.i.i.i.i.i.i.i, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i.i.i.i ], [ zeroinitializer, %bb.q ] ; 2 uses
  %.sroa.0.0.ph.i.i = extractvalue { ptr, ptr } %.pn.i.i, 0
  %.sroa.5.0.ph.i.i = extractvalue { ptr, ptr } %.pn.i.i, 1
  %.sroa.0.0.copyload.i.i.i.i.i.i.i1.i.i = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i1.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  %i.ci = icmp eq ptr %i.ch, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  %spec.select.i.i.i.i.i2.i.i = and i1 %9, %i.ci
  %i.cj = call noundef i64 @_ZN4mlir12ElementsAttr14getNumElementsES0_(ptr %.sroa.0.0.ph.i.i, ptr %.sroa.5.0.ph.i.i) #15
  %i.ck = select i1 %spec.select.i.i.i.i.i2.i.i, i64 16, i64 32
  %i.cl = icmp sgt i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.w, label %_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit

bb.w:                                             ; preds = %_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !107, !nonnull !25, !align !108 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !26 ; 2 uses
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cq = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #15
  %i.cr = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.cq, i32 noundef 32, i32 noundef 0) #15
  %i.cs = zext i32 %i.cn to i64
  %i.ct = call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.cr, i64 noundef %i.cs) #15
  %i.cu = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.cv, align 8, !tbaa !76
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.cw, align 1, !tbaa !77
  store ptr @.str.12, ptr %2, align 8, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 26, ptr %i.cx, align 8, !tbaa !37
  %i.cy = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %2) #15
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.cy, ptr %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit

_ZZN4mlir4tosa12_GLOBAL__N_133TosaToSPIRVTosaMarkGraphConstants14runOnOperationEvENKUlPNS_9OperationEE_clES4_.exit: ; preds = %_ZN4llvm3isaIJN4mlir4tosa7ConstOpENS2_12ConstShapeOpEEPNS1_9OperationEEEbRKT0_.exit.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i, %bb.m, %bb.p, %_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i, %bb.w
  %.sroa.01.0.i = phi i32 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ 1, %_ZN4llvm3isaIJN4mlir4tosa7ConstOpENS2_12ConstShapeOpEEPNS1_9OperationEEEbRKT0_.exit.i ], [ 1, %_ZN4mlir4tosa12_GLOBAL__N_123shouldMarkGraphConstantEPNS_9OperationE.exit.i ], [ 1, %bb.w ], [ 1, %bb.m ], [ 1, %bb.p ]
  ret i32 %.sroa.01.0.i
}

declare void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #15
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = load i32, ptr %i.a, align 8, !tbaa !31
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !31
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !119 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #15, !inline_history !111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #14, !inline_history !111
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !112

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #14
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #14
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !113

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !123
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #14
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #15
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS4_9use_emptyEvEUlS8_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub nsw i64 %3, %1
  %i.b = ashr i64 %i.a, 2                         ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.076 = phi i64 [ %i.p, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.15.075 = phi i64 [ %i.o, %bb.e ], [ %1, %bb.a ] ; 6 uses
  %i.d = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.15.075) #15
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %.not70 = icmp eq ptr %i.e, null
  br i1 %.not70, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nsw i64 %.sroa.15.075, 1             ; 2 uses
  %i.g = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.f) #15
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129
  %.not71 = icmp eq ptr %i.h, null
  br i1 %.not71, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.sroa.15.075, 2             ; 2 uses
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.i) #15
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129
  %.not72 = icmp eq ptr %i.k, null
  br i1 %.not72, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %.sroa.15.075, 3             ; 2 uses
  %i.m = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.l) #15
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %.not73 = icmp eq ptr %i.n, null
  br i1 %.not73, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %.sroa.15.075, 4             ; 2 uses
  %i.p = add nsw i64 %.076, -1
  %i.q = icmp sgt i64 %.076, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = sub nsw i64 %3, %.sroa.15.0.lcssa
end_hunk_0
