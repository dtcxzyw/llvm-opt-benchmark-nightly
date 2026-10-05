Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GPUToSPIRV?download=true
inline.NumInlined: 5498
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu16SubgroupReduceOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE:bb.a
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !72, !alias.scope !917
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !70, !alias.scope !917
  store ptr @.str.7, ptr %7, align 8, !tbaa !71, !alias.scope !917
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !71, !alias.scope !917
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !71, !alias.scope !917
  store ptr %7, ptr %6, align 8, !alias.scope !918
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.8, ptr %i.j, align 8, !alias.scope !918
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !72, !alias.scope !918
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !70, !alias.scope !918
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %6, ptr %4, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #17
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu16SubgroupReduceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #17, !inline_history !916
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !49
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::SubgroupReduceOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !98, !range !99, !noundef !94
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !98
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #17
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119GPUPrintfConversionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_3gpu8PrintfOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::gpu::PrintfOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir3gpu6detail26PrintfOpGenericAdaptorBaseC2ENS0_8PrintfOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::PrintfOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_3gpu8PrintfOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::gpu::PrintfOpGenericAdaptor.2891", align 8 ; 4 uses
  call void @_ZN4mlir3gpu6detail26PrintfOpGenericAdaptorBaseC2ENS0_8PrintfOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !47
  %i.b = load ptr, ptr %0, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::PrintfOpGenericAdaptor.2891") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef byval(%"class.mlir::gpu::PrintfOpAdaptor") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 8 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::SmallString", align 8 ; 12 uses
  %13 = alloca %"class.llvm::SmallVector.2927", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::SmallVector.3063", align 8 ; 10 uses
  %18 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 6 uses
  %.not8.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5spirv8ModuleOpEvE2idE
  br i1 %.not8.i, label %.split.us.i, label %bb.b

.split.us.i:                                      ; preds = %bb.a
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !931    ; 2 uses
  %.not.i.us6.i = icmp eq ptr %20, null
  br i1 %.not.i.us6.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i

21:                                               ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.us.i
  %22 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !931    ; 2 uses
  %.not.i.us.i = icmp eq ptr %23, null
  br i1 %.not.i.us.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i

_ZN4mlir9Operation11getParentOpEv.exit.us.i:      ; preds = %.split.us.i, %21
  %24 = phi ptr [ %23, %21 ], [ %20, %.split.us.i ]
  %25 = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %24) #17 ; 2 uses
  %.not.us.i = icmp eq ptr %25, null
  br i1 %.not.us.i, label %.loopexit, label %21

bb.b:                                             ; preds = %bb.a, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !931  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_5spirv8ModuleOpEvE2idE
  br i1 %i.h, label %_ZN4mlir9Operation15getParentOfTypeINS_5spirv8ModuleOpEEET_v.exit, label %bb.b, !llvm.loop !919

_ZN4mlir9Operation15getParentOfTypeINS_5spirv8ModuleOpEEET_v.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !70
  store ptr @.str.71, ptr %11, align 8, !tbaa !71
  store i8 3, ptr %i.i, align 8, !tbaa !72
  call fastcc void @_ZL11makeVarNameB5cxx11N4mlir5spirv8ModuleOpEN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %10, ptr nonnull %i.d, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %11)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  %i.l = call ptr @_ZN4mlir7Builder9getI8TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #17 ; 2 uses
  %i.m = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !931  ; 2 uses
  %.not.i58 = icmp eq ptr %i.o, null
  br i1 %.not.i58, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_5spirv8ModuleOpEEET_v.exit
  %i.p = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.o) #17
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_5spirv8ModuleOpEEET_v.exit, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ null, %_ZN4mlir9Operation15getParentOfTypeINS_5spirv8ModuleOpEEET_v.exit ]
  %i.r = call noundef ptr @_ZN4mlir11SymbolTable21getNearestSymbolTableEPNS_9OperationE(ptr noundef %i.q) #17 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = load <2 x ptr>, ptr %i.s, align 8
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !932
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = and i32 %i.x, 8388607
  %i.z = icmp ne i32 %i.y, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = lshr i32 %i.x, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.aa, 1
  %i.ab = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ab
  %i.ad = lshr i32 %i.x, 21
  %i.ae = and i32 %i.ad, 2040
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !117
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !119
  store ptr %i.an, ptr %i.s, align 8, !tbaa !932
  store ptr %i.ap, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.aq = call { ptr, i64 } @_ZN4mlir3gpu6detail26PrintfOpGenericAdaptorBase9getFormatEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #17 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !174
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  store i64 0, ptr %i.au, align 8, !tbaa !175
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 20, ptr %i.av, align 8, !tbaa !933
  %i.aw = icmp ugt i64 %i.as, 20
  br i1 %i.aw, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull %i.at, i64 noundef %i.as, i64 noundef 1) #17
  %.pre8.pre.i.i.i = load i64, ptr %i.au, align 8, !tbaa !175
  %.pre = load ptr, ptr %12, align 8, !tbaa !174
  br label %bb.e

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %.not.i.i.i.i = icmp samesign eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallStringILj20EEC2ENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i
  %i.ax = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.at, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.ar, i64 %i.as, i1 false)
  %.pre.i.i.i = load i64, ptr %i.au, align 8, !tbaa !175
  %.pre98 = load i64, ptr %i.av, align 8, !tbaa !933
  br label %_ZN4llvm11SmallStringILj20EEC2ENS_9StringRefE.exit

_ZN4llvm11SmallStringILj20EEC2ENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %bb.e
  %i.az = phi i64 [ 20, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre98, %bb.e ]
  %i.ba = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.e ]
  %i.bb = add i64 %i.ba, %i.as                    ; 3 uses
  store i64 %i.bb, ptr %i.au, align 8, !tbaa !175
  %.not.i59 = icmp ult i64 %i.bb, %i.az
  br i1 %.not.i59, label %bb.g, label %bb.f, !prof !120

bb.f:                                             ; preds = %_ZN4llvm11SmallStringILj20EEC2ENS_9StringRefE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef signext 0)
  %.pre99 = load i64, ptr %i.au, align 8, !tbaa !175
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.g:                                             ; preds = %_ZN4llvm11SmallStringILj20EEC2ENS_9StringRefE.exit
  %i.bc = load ptr, ptr %12, align 8, !tbaa !174
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1
  %i.be = load i64, ptr %i.au, align 8, !tbaa !175
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.au, align 8, !tbaa !175
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit: ; preds = %bb.f, %bb.g
  %i.bg = phi i64 [ %.pre99, %bb.f ], [ %i.bf, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.bh, ptr %13, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 4, ptr %i.bj, align 4, !tbaa !50
  %i.bk = load ptr, ptr %12, align 8, !tbaa !174  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bg
  %.not90 = icmp samesign eq i64 %i.bg, 0
  br i1 %.not90, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.o

_ZN4llvmplERKNS_5TwineES2_.exit.loopexit:         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit
  %.pre100 = load i32, ptr %i.bi, align 8, !tbaa !49
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit
  %i.bs = phi i32 [ %.pre100, %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit ]
  %i.bt = call ptr @_ZN4mlir5spirv9ArrayType3getENS_4TypeEj(ptr %i.l, i32 noundef %i.bs) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %10, ptr %15, align 8, !alias.scope !934
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.72, ptr %i.bu, align 8, !alias.scope !934
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 4, ptr %i.bv, align 8, !tbaa !72, !alias.scope !934
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.bw, align 1, !tbaa !70, !alias.scope !934
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(34) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.bx = call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr %i.bt) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 4, ptr %i.by, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.bz, align 1, !tbaa !70
  store ptr %14, ptr %16, align 8, !tbaa !71
  %i.ca = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(34) %16) #17
  %i.cb = load ptr, ptr %13, align 8, !tbaa !61
  %i.cc = load i32, ptr %i.bi, align 8, !tbaa !49
  %i.cd = zext i32 %i.cc to i64
  %i.ce = call ptr @_ZN4mlir7Builder12getArrayAttrEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr %i.cb, i64 %i.cd) #17
  %i.cf = call ptr @_ZN4mlir5spirv23SpecConstantCompositeOp6createERNS_9OpBuilderENS_8LocationENS_8TypeAttrENS_10StringAttrENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr %.sroa.0.0.copyload.i.i, ptr %i.bx, ptr %i.ca, ptr %i.ce) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.cg = call ptr @_ZN4mlir5spirv11PointerType3getENS_4TypeENS0_12StorageClassE(ptr %i.bt, i32 noundef 0) #17
  %i.ch = load ptr, ptr %10, align 8, !tbaa !151
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !152
  %i.ck = call ptr @_ZN4mlir13SymbolRefAttr3getEPNS_9OperationE(ptr noundef %i.cf) #17
  %i.cl = call ptr @_ZN4mlir5spirv16GlobalVariableOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEN4llvm9StringRefENS_17FlatSymbolRefAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr %.sroa.0.0.copyload.i.i, ptr %i.cg, ptr %i.ch, i64 %i.cj, ptr %i.ck) #17 ; 3 uses
  %i.cm = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.co = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.cp, align 8, !tbaa !72
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.cq, align 1, !tbaa !70
  store ptr @.str.73, ptr %9, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.cr, align 8, !tbaa !71
  %i.cs = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(34) %9) #17
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr %i.cs, ptr %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.ct = load ptr, ptr %14, align 8, !tbaa !151  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %7, align 8, !noalias !935
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.dy, align 8, !noalias !935
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %_ZN4mlir3gpu22PrintfOpGenericAdaptorINS_10ValueRangeEE7getArgsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !935
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %7, align 8, !noalias !935
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.dz, align 8, !noalias !935
  %.not5.i.i.i.i.i.i.i = icmp eq i64 %i.ds, %i.dq
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN4llvm12to_vector_ofIN4mlir5ValueELj4ENS1_10ValueRangeEEENS_11SmallVectorIT_XT0_EEEOT1_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ea = phi ptr [ %i.dy, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.dz, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i9.i = phi i64 [ %.pre28.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.eb = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.du, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.pre-phi.i.i9.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.ed = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ee = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.ed) #17
  %i.ef = ptrtoint ptr %i.ee to i64
  store i64 %i.ef, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !93, !noalias !935
  %i.eh = add nsw i64 %i.eg, 1                    ; 3 uses
  store i64 %i.eh, ptr %i.ea, align 8, !tbaa !93, !noalias !935
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.eh, %i.dt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !926

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre27.i.i.i = load i32, ptr %i.dv, align 8, !tbaa !49, !alias.scope !935
  %.pre101 = load ptr, ptr %17, align 8, !tbaa !61
  br label %_ZN4llvm12to_vector_ofIN4mlir5ValueELj4ENS1_10ValueRangeEEENS_11SmallVectorIT_XT0_EEEOT1_.exit

_ZN4llvm12to_vector_ofIN4mlir5ValueELj4ENS1_10ValueRangeEEENS_11SmallVectorIT_XT0_EEEOT1_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i
  %i.ej = phi ptr [ %.pre101, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i ], [ %i.du, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ek = phi i32 [ %.pre27.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !935
  %i.el = trunc i64 %i.dt to i32
  %i.em = add i32 %i.ek, %i.el                    ; 2 uses
  store i32 %i.em, ptr %i.dv, align 8, !tbaa !49, !alias.scope !935
  %i.en = zext i32 %i.em to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr %i.ej, i64 %i.en) #17
  %i.eo = load i64, ptr %18, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = call ptr @_ZN4mlir5spirv10CLPrintfOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr %.sroa.0.0.copyload.i.i, ptr %i.m, ptr nonnull %i.dg, i64 %i.eo, i64 %i.eq) #17 ; 0 uses
  call void @_ZN4mlir25ConversionPatternRewriter7eraseOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #17
  %i.es = load ptr, ptr %17, align 8, !tbaa !61   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.du
  br i1 %i.et, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12to_vector_ofIN4mlir5ValueELj4ENS1_10ValueRangeEEENS_11SmallVectorIT_XT0_EEEOT1_.exit
  call void @free(ptr noundef %i.es) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit: ; preds = %_ZN4llvm12to_vector_ofIN4mlir5ValueELj4ENS1_10ValueRangeEEENS_11SmallVectorIT_XT0_EEEOT1_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.eu = load ptr, ptr %10, align 8, !tbaa !151  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !71
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj4EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit
  %.091 = phi ptr [ %i.bk, %.lr.ph ], [ %i.gm, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit ] ; 2 uses
  %i.ez = load i8, ptr %.091, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.fa = call ptr @_ZN4mlir7Builder16getI8IntegerAttrEa(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %i.ez) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %10, ptr %5, align 8, !alias.scope !936
  store ptr @.str.74, ptr %i.bm, align 8, !alias.scope !936
  store i8 4, ptr %i.bn, align 8, !tbaa !72, !alias.scope !936
  store i8 3, ptr %i.bo, align 1, !tbaa !70, !alias.scope !936
  call fastcc void @_ZL11makeVarNameB5cxx11N4mlir5spirv8ModuleOpEN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %4, ptr nonnull %i.d, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i8 4, ptr %i.bp, align 8, !tbaa !72
  store i8 1, ptr %i.bq, align 1, !tbaa !70
  store ptr %4, ptr %6, align 8, !tbaa !71
  %i.fb = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(34) %6) #17
  %.not.i.i.i.i67 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i67, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !138 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.q, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.fg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 15) #17
  store ptr %i.fh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !140 ; 2 uses
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !61 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fl, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fm = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fm ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fn, align 8, !tbaa !140
  %i.fo = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fq = xor i64 %i.fm, -1
  %i.fr = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.fq
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fo, ptr %i.fp, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fo, i64 %i.fr, i64 %i.fm ; 2 uses
  %i.fs = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fs, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.fl, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.ft
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.fu = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !143
  %i.fv = icmp eq ptr %i.fu, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fv, label %bb.t, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.fw = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !145
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i: ; preds = %bb.t, %bb.s, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.fy = phi ptr [ null, %bb.o ], [ %i.fx, %bb.t ], [ null, %bb.s ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ]
  %i.fz = call ptr @_ZN4mlir5spirv14SpecConstantOp6createERNS_9OpBuilderENS_8LocationENS_10StringAttrENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr %.sroa.0.0.copyload.i.i, ptr %i.fb, ptr %i.fa, ptr %i.fy) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ga = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.br
  br i1 %i.gb, label %"_ZZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_0clEj.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i
  %i.gc = load i64, ptr %i.br, align 8, !tbaa !71
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #20
  br label %"_ZZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_0clEj.exit"

"_ZZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_0clEj.exit": ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ge = call ptr @_ZN4mlir13SymbolRefAttr3getEPNS_9OperationE(ptr noundef %i.fz) #17 ; 2 uses
  %i.gf = load i32, ptr %i.bi, align 8, !tbaa !49 ; 2 uses
  %i.gg = load i32, ptr %i.bj, align 4, !tbaa !50
  %.not.i68 = icmp ult i32 %i.gf, %i.gg
  br i1 %.not.i68, label %bb.v, label %bb.u, !prof !120

bb.u:                                             ; preds = %"_ZZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_0clEj.exit"
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %i.ge)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit

bb.v:                                             ; preds = %"_ZZNK12_GLOBAL__N_119GPUPrintfConversion15matchAndRewriteEN4mlir3gpu8PrintfOpENS2_15PrintfOpAdaptorERNS1_25ConversionPatternRewriterEENK3$_0clEj.exit"
  %i.gh = zext i32 %i.gf to i64
  %i.gi = load ptr, ptr %13, align 8, !tbaa !61
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gh
  store ptr %i.ge, ptr %i.gj, align 1
  %i.gk = load i32, ptr %i.bi, align 8, !tbaa !49
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr %i.bi, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit: ; preds = %bb.u, %bb.v
  %i.gm = getelementptr inbounds nuw i8, ptr %.091, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.gm, %i.bl
  br i1 %.not, label %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit, label %bb.o

.loopexit:                                        ; preds = %bb.b, %_ZN4mlir9Operation11getParentOpEv.exit.i, %21, %_ZN4mlir9Operation11getParentOpEv.exit.us.i, %.split.us.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.sroa.057.0 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ 0, %.split.us.i ], [ 0, %21 ], [ 0, %_ZN4mlir9Operation11getParentOpEv.exit.us.i ], [ 0, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ 0, %bb.b ]
  ret i8 %.sroa.057.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_3gpu8PrintfOpEE15matchAndRewriteES2_NS1_22PrintfOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::gpu::PrintfOpGenericAdaptor.2891") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3gpu8PrintfOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::gpu::PrintfOpGenericAdaptor.2891") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir3gpu6detail26PrintfOpGenericAdaptorBaseC2ENS0_8PrintfOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11makeVarNameB5cxx11N4mlir5spirv8ModuleOpEN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, ptr noundef byval(%"class.llvm::Twine") align 8 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !942
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i8 0, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %.not21.i = icmp eq ptr %4, %0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !152
  %i.n = load ptr, ptr %0, align 8, !tbaa !151
  store i8 0, ptr %i.n, align 1, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.o = add i32 %.0, 1
  %.sroa.0.0.insert.ext = zext i32 %.0 to i64
  %i.p = inttoptr i64 %.sroa.0.0.insert.ext to ptr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.q = load i8, ptr %i.c, align 8, !tbaa !72, !noalias !945 ; 3 uses
  switch i8 %i.q, label %bb.d [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit
    i8 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %5, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.f, align 1, !tbaa !70, !noalias !945
  %i.s = icmp eq i8 %i.r, 1                       ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %2, align 8, !noalias !945
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !945
  %.014.i.i = select i1 %i.s, i8 %i.q, i8 2
  %.sroa.05.0.i.i = select i1 %i.s, ptr %.sroa.05.0.copyload.i.i, ptr %2
  %.sroa.56.0.i.i = select i1 %i.s, i64 %.sroa.56.0.copyload.i.i, i64 undef
  store ptr %.sroa.05.0.i.i, ptr %5, align 8, !alias.scope !945
  store i64 %.sroa.56.0.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !71, !alias.scope !945
  store ptr %i.p, ptr %i.g, align 8, !alias.scope !945
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.b, %bb.c, %bb.d
  %.sink14 = phi i8 [ %.014.i.i, %bb.d ], [ 9, %bb.c ], [ %i.q, %bb.b ]
  %.sink = phi i8 [ 9, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink14, ptr %i.d, align 8, !tbaa !946
  store i8 %.sink, ptr %i.e, align 1, !tbaa !946
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5) #17
  %i.t = load ptr, ptr %0, align 8, !tbaa !151    ; 6 uses
  %i.u = icmp eq ptr %i.t, %i.a
  %i.v = load ptr, ptr %4, align 8, !tbaa !151    ; 6 uses
  %i.w = icmp eq ptr %i.v, %i.h                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  br i1 %i.w, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = load i64, ptr %i.i, align 8, !tbaa !152  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !148

bb.f:                                             ; preds = %bb.e
  switch i64 %i.x, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.v, align 1, !tbaa !71
  store i8 %i.z, ptr %i.t, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !152 ; 2 uses
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !152
  %i.ab = load ptr, ptr %0, align 8, !tbaa !151
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !71
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !151
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.v, ptr %0, align 8, !tbaa !151
  %i.ad = load <2 x i64>, ptr %i.i, align 8, !tbaa !71
  store <2 x i64> %i.ad, ptr %i.b, align 8, !tbaa !71
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !71
  store ptr %i.v, ptr %0, align 8, !tbaa !151
  %i.af = load <2 x i64>, ptr %i.i, align 8, !tbaa !71
  store <2 x i64> %i.af, ptr %i.b, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.t, ptr %4, align 8, !tbaa !151
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %4, align 8, !tbaa !151
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ag = phi ptr [ %i.t, %bb.i ], [ %i.h, %bb.j ], [ %i.v, %bb.e ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.i, align 8, !tbaa !152
  store i8 0, ptr %i.ag, align 1, !tbaa !71
  %i.ah = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !71
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.al = load ptr, ptr %0, align 8, !tbaa !151
  %i.am = load i64, ptr %i.b, align 8, !tbaa !152
  %i.an = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i8 5, ptr %i.k, align 8, !tbaa !72
  store i8 1, ptr %i.l, align 1, !tbaa !70
  store ptr %i.al, ptr %3, align 8, !tbaa !71
  store i64 %i.am, ptr %i.m, align 8, !tbaa !71
  %i.ao = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3) #17
  %i.ap = call noundef ptr @_ZN4mlir11SymbolTable14lookupSymbolInEPNS_9OperationENS_10StringAttrE(ptr noundef nonnull %1, ptr %i.ao) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.k, label %bb.b, !llvm.loop !941

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare ptr @_ZN4mlir7Builder9getI8TypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir11SymbolTable21getNearestSymbolTableEPNS_9OperationE(ptr noundef) local_unnamed_addr #3

declare { ptr, i64 } @_ZN4mlir3gpu6detail26PrintfOpGenericAdaptorBase9getFormatEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare ptr @_ZN4mlir13SymbolRefAttr3getEPNS_9OperationE(ptr noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv9ArrayType3getENS_4TypeEj(ptr, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv23SpecConstantCompositeOp6createERNS_9OpBuilderENS_8LocationENS_8TypeAttrENS_10StringAttrENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir7Builder12getArrayAttrEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv11PointerType3getENS_4TypeENS0_12StorageClassE(ptr, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir5spirv16GlobalVariableOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEN4llvm9StringRefENS_17FlatSymbolRefAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3
end_hunk_1
