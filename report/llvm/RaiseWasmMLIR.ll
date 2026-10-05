Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RaiseWasmMLIR?download=true
inline.NumInlined: 8514
inline.NumDeleted: 4873
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_7wasmssa14GlobalImportOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE:bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa14GlobalImportOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #19, !inline_history !1363
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa14GlobalImportOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa14GlobalImportOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !77
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::wasmssa::GlobalImportOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa14GlobalImportOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa14GlobalImportOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !107, !range !108, !noundef !109
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !107
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #19
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i8 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa14GlobalImportOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1367, !nonnull !109, !align !123
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #19 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_133WasmGlobalWithConstInitConversionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #19
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #19
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_7wasmssa8GlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::wasmssa::GlobalOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir7wasmssa6detail26GlobalOpGenericAdaptorBaseC2ENS0_8GlobalOpE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr %1) #19
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::wasmssa::GlobalOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_7wasmssa8GlobalOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::wasmssa::GlobalOpGenericAdaptor.1859", align 8 ; 4 uses
  call void @_ZN4mlir7wasmssa6detail26GlobalOpGenericAdaptorBaseC2ENS0_8GlobalOpE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %2, ptr %i.a, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %i.b = load ptr, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::wasmssa::GlobalOpGenericAdaptor.1859") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_117GlobalOpConverterINS_33WasmGlobalWithConstInitConversionEN4mlir7wasmssa7ConstOpEE15matchAndRewriteENS3_8GlobalOpENS3_15GlobalOpAdaptorERNS2_25ConversionPatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr nofree noundef readnone byval(%"class.mlir::wasmssa::GlobalOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::wasmssa::GlobalOp", align 8 ; 7 uses
  %5 = alloca %"class.mlir::wasmssa::ConstOp", align 8 ; 4 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %6 = alloca [1 x %"class.mlir::Attribute"], align 8 ; 4 uses
  %7 = alloca %"class.mlir::memref::GlobalOp", align 8 ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %9 = alloca %class.anon.1873, align 8           ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %class.anon.1873, align 8          ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::wasmssa::GlobalOp", align 8 ; 5 uses
  %14 = alloca %"class.mlir::Value", align 8      ; 4 uses
  store ptr %1, ptr %13, align 8
  %i.c = call ptr @_ZN4mlir7wasmssa8GlobalOp17getInitTerminatorEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 8388608
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread, label %_ZN4mlir9Operation14getNumOperandsEv.exit, !prof !130

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.c, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread

_ZN4mlir9Operation14getNumOperandsEv.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation14getNumOperandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !113
  store ptr @.str.53, ptr %12, align 8, !tbaa !114
  store i8 3, ptr %i.i, align 8, !tbaa !112
  %i.k = load ptr, ptr %13, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %12, ptr %11, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread
  %i.n = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #19
  br i1 %i.n, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.o, align 8
  %i.p = ptrtoint ptr %11 to i64
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.p) #19, !inline_history !1
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.l

bb.c:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8, !tbaa !128
  store ptr %.sroa.0.0.copyload.i.i, ptr %14, align 8
  %i.w = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #19 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148
  %i.aa = icmp ne ptr %i.z, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa7ConstOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %.not1415 = icmp eq ptr %i.w, null
  %.not14 = or i1 %.not1415, %i.aa
  br i1 %.not14, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !113
  store ptr @.str.54, ptr %10, align 8, !tbaa !114
  store i8 3, ptr %i.ab, align 8, !tbaa !112
  %i.ad = load ptr, ptr %13, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %10, ptr %9, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !122 ; 4 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i6, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #19
  br i1 %i.ag, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i7, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i7: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i.i8 = load ptr, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %9 to i64
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr %.sroa.0.0.copyload.i.i.i.i8, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ai) #19, !inline_history !1
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9: ; preds = %bb.d, %bb.e, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %.sroa.01.0.copyload = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.01.0.copyload, ptr %4, align 8
  store ptr %i.w, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1, ptr %i.a, align 8, !tbaa !75
  %i.am = call ptr @_ZN4mlir7wasmssa8GlobalOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.an = call ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr nonnull %i.a, i64 1, ptr %i.am, ptr null) #19 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !149

bb.h:                                             ; preds = %bb.g
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.56, i64 49), i64 16) #19
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !18 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !148
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.k, label %_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !151
  br label %_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit

_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit: ; preds = %bb.f, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.k
  %i.bk = phi ptr [ null, %bb.f ], [ %i.bj, %bb.k ], [ null, %bb.j ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bl = call { ptr, ptr } @_ZN4mlir7wasmssa7ConstOp12getValueAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0
  store ptr %i.bm, ptr %6, align 8, !tbaa !144
  %i.bn = call ptr @_ZN4mlir17DenseElementsAttr3getENS_10ShapedTypeEN4llvm8ArrayRefINS_9AttributeEEE(ptr %i.an, ptr %i.bk, ptr nonnull %6, i64 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bo = load ptr, ptr %4, align 8, !tbaa !129   ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %.not.i.i.i.i10 = icmp ugt i32 %i.bq, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.br = lshr i32 %i.bq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.br, 1
  %i.bs = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %.sroa.0.0.copyload.i.i14.i = load ptr, ptr %i.bu, align 8, !tbaa !144
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bx, align 1, !tbaa !113
  store ptr @.str.55, ptr %8, align 8, !tbaa !114
  store i8 3, ptr %i.bw, align 8, !tbaa !112
  %i.by = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(34) %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 1, ptr %i.b, align 8, !tbaa !75
  %i.bz = call ptr @_ZN4mlir7wasmssa8GlobalOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.ca = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr nonnull %i.b, i64 1, ptr %i.bz, ptr null, ptr null, ptr null) #19
  %i.cb = call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr %i.ca) #19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.0.0.copyload.i.i15.i = load ptr, ptr %i.cc, align 8
  %i.cd = call ptr @_ZN4mlir6memref8GlobalOp6createERNS_9OpBuilderENS_8LocationENS_10StringAttrES5_NS_8TypeAttrENS_9AttributeENS_8UnitAttrENS_11IntegerAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr %.sroa.0.0.copyload.i.i15.i, ptr %.sroa.0.0.copyload.i.i14.i, ptr %i.by, ptr %i.cb, ptr %i.bn, i64 0, i64 0) #19 ; 2 uses
  %i.ce = load ptr, ptr %3, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.bo, ptr noundef %i.cd) #19, !inline_history !1368
  store ptr %i.cd, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ch = call noundef zeroext i1 @_ZN4mlir7wasmssa8GlobalOp12getIsMutableEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.ci = xor i1 %i.ch, true
  call void @_ZN4mlir6memref8GlobalOp11setConstantEb(ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %i.ci) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9, %_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.05.1 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %_ZNK12_GLOBAL__N_133WasmGlobalWithConstInitConversion17handleInitializerEN4mlir7wasmssa8GlobalOpERNS1_25ConversionPatternRewriterENS2_7ConstOpE.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9 ]
  ret i8 %.sroa.05.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_7wasmssa8GlobalOpEE15matchAndRewriteES2_NS1_22GlobalOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::wasmssa::GlobalOpGenericAdaptor.1859") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_7wasmssa8GlobalOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::wasmssa::GlobalOpGenericAdaptor.1859") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir7wasmssa6detail26GlobalOpGenericAdaptorBaseC2ENS0_8GlobalOpE(ptr noundef nonnull align 8 dereferenceable(72), ptr) unnamed_addr #3

declare ptr @_ZN4mlir7wasmssa8GlobalOp17getInitTerminatorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1370, !nonnull !109, !align !123
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #19 ; 0 uses
  ret void
}

declare ptr @_ZN4mlir17DenseElementsAttr3getENS_10ShapedTypeEN4llvm8ArrayRefINS_9AttributeEEE(ptr, ptr, ptr, i64) local_unnamed_addr #3

declare ptr @_ZN4mlir16RankedTensorType3getEN4llvm8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr, i64, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir7wasmssa8GlobalOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4mlir7wasmssa7ConstOp12getValueAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_7wasmssa8GlobalOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE:bb.a
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !112, !alias.scope !1378
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !113, !alias.scope !1378
  store ptr @.str.6, ptr %7, align 8, !tbaa !114, !alias.scope !1378
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !114, !alias.scope !1378
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !114, !alias.scope !1378
  store ptr %7, ptr %6, align 8, !alias.scope !1379
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.7, ptr %i.j, align 8, !alias.scope !1379
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !112, !alias.scope !1379
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !113, !alias.scope !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %6, ptr %4, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #19
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #19, !inline_history !1377
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !77
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::wasmssa::GlobalOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !107, !range !108, !noundef !109
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !107
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #19
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i8 %.sroa.09.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_137WasmGlobalWithGetGlobalInitConversionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #19
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #19
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_117GlobalOpConverterINS_37WasmGlobalWithGetGlobalInitConversionEN4mlir7wasmssa11GlobalGetOpEE15matchAndRewriteENS3_8GlobalOpENS3_15GlobalOpAdaptorERNS2_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr nofree noundef readnone byval(%"class.mlir::wasmssa::GlobalOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::wasmssa::GlobalOp", align 8 ; 7 uses
  %5 = alloca %"class.mlir::wasmssa::GlobalGetOp", align 8 ; 5 uses
  %6 = alloca %"class.mlir::memref::GlobalOp", align 8 ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %10 = alloca %"class.mlir::func::FuncOp", align 8 ; 4 uses
  %11 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %12 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %13 = alloca %"class.llvm::ArrayRef.153", align 8 ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef.1625", align 8 ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %16 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %17 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %18 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %19 = alloca [1 x %"class.mlir::Value"], align 8 ; 4 uses
  %20 = alloca %class.anon.1873, align 8          ; 4 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %class.anon.1873, align 8          ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.mlir::wasmssa::GlobalOp", align 8 ; 5 uses
  %25 = alloca %"class.mlir::Value", align 8      ; 4 uses
  store ptr %1, ptr %24, align 8
  %i.c = call ptr @_ZN4mlir7wasmssa8GlobalOp17getInitTerminatorEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 8388608
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread, label %_ZN4mlir9Operation14getNumOperandsEv.exit, !prof !130

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.c, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread

_ZN4mlir9Operation14getNumOperandsEv.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation14getNumOperandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.i = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !113
  store ptr @.str.53, ptr %23, align 8, !tbaa !114
  store i8 3, ptr %i.i, align 8, !tbaa !112
  %i.k = load ptr, ptr %24, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store ptr %23, ptr %22, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread
  %i.n = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #19
  br i1 %i.n, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.o, align 8
  %i.p = ptrtoint ptr %22 to i64
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.p) #19, !inline_history !1
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.i

bb.c:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8, !tbaa !128
  store ptr %.sroa.0.0.copyload.i.i, ptr %25, align 8
  %i.w = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #19 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148
  %i.aa = icmp ne ptr %i.z, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa11GlobalGetOpEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %.not1415 = icmp eq ptr %i.w, null
  %.not14 = or i1 %.not1415, %i.aa
  br i1 %.not14, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !113
  store ptr @.str.54, ptr %21, align 8, !tbaa !114
  store i8 3, ptr %i.ab, align 8, !tbaa !112
  %i.ad = load ptr, ptr %24, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %21, ptr %20, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !122 ; 4 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i6, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #19
  br i1 %i.ag, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i7, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i7: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i.i8 = load ptr, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %20 to i64
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr %.sroa.0.0.copyload.i.i.i.i8, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_7wasmssa8GlobalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ai) #19, !inline_history !1
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_7wasmssa8GlobalOpEEEN4llvm13LogicalResultEOT_PKc.exit9: ; preds = %bb.d, %bb.e, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %.sroa.01.0.copyload = load ptr, ptr %24, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %.sroa.01.0.copyload, ptr %4, align 8
  store ptr %i.w, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 44
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not.i.i.i.i10 = icmp ugt i32 %i.an, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.ao = lshr i32 %i.an, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.ao, 1
  %i.ap = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.copyload, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !144
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !113
  store ptr @.str.55, ptr %7, align 8, !tbaa !114
  store i8 3, ptr %i.at, align 8, !tbaa !112
  %i.av = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(34) %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1, ptr %i.a, align 8, !tbaa !75
  %i.aw = call ptr @_ZN4mlir7wasmssa8GlobalOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.ax = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr nonnull %i.a, i64 1, ptr %i.aw, ptr null, ptr null, ptr null) #19
  %i.ay = call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr %i.ax) #19
  %i.az = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %.sroa.0.0.copyload.i.i58.i = load ptr, ptr %i.ba, align 8
  %i.bb = call ptr @_ZN4mlir6memref8GlobalOp6createERNS_9OpBuilderENS_8LocationENS_10StringAttrES5_NS_8TypeAttrENS_9AttributeENS_8UnitAttrENS_11IntegerAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i58.i, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.av, ptr %i.ay, ptr %i.az, i64 0, i64 0) #19 ; 2 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %.sroa.01.0.copyload, ptr noundef %i.bb) #19, !inline_history !1380
  store ptr %i.bb, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bf = call noundef zeroext i1 @_ZN4mlir7wasmssa8GlobalOp12getIsMutableEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.bg = xor i1 %i.bf, true
  call void @_ZN4mlir6memref8GlobalOp11setConstantEb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext %i.bg) #19
  %i.bh = load ptr, ptr %4, align 8, !tbaa !129
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.0.0.copyload.i.i59.i = load ptr, ptr %i.bi, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bj = call { ptr, i64 } @_ZN4mlir7wasmssa8GlobalOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.bm, align 8, !tbaa !112, !alias.scope !1383
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.bn, align 1, !tbaa !113, !alias.scope !1383
  store ptr %i.bk, ptr %9, align 8, !tbaa !114, !alias.scope !1383
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bl, ptr %i.bo, align 8, !tbaa !114, !alias.scope !1383
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.59, ptr %i.bp, align 8, !tbaa !114, !alias.scope !1383
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bq = load ptr, ptr %8, align 8, !tbaa !157
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1384
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr null, i64 0) #19
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr null, i64 0) #19
  %i.bw = load i64, ptr %11, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load i64, ptr %12, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = call ptr @_ZN4mlir12FunctionType3getEPNS_11MLIRContextENS_9TypeRangeES3_(ptr noundef %i.bv, i64 %i.bw, i64 %i.by, i64 %i.bz, i64 %i.cb) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.cd = call ptr @_ZN4mlir4func6FuncOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_12FunctionTypeENS5_8ArrayRefINS_14NamedAttributeEEENS8_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i, ptr %i.bq, i64 %i.bs, ptr %i.cc, ptr noundef nonnull byval(%"class.llvm::ArrayRef.153") align 8 %13, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1625") align 8 %14) #19 ; 2 uses
  store ptr %i.cd, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.cf, align 1, !tbaa !113
  store ptr @.str.60, ptr %15, align 8, !tbaa !114
  store i8 3, ptr %i.ce, align 8, !tbaa !112
  %i.cg = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(34) %15) #19
  %i.ch = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #19
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr %i.cg, ptr %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ci = call noundef ptr @_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE13addEntryBlockEv(ptr noundef nonnull align 1 dereferenceable(1) %10) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cl = load <2 x ptr>, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !1385
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !135
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !1385
  store ptr %i.co, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 1, ptr %i.b, align 8, !tbaa !75
  %i.cp = load ptr, ptr %5, align 8, !tbaa !129
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr nonnull %i.b, i64 1, ptr %i.cs, ptr null, ptr null, ptr null) #19
  %i.cu = call { ptr, i64 } @_ZN4mlir7wasmssa11GlobalGetOp9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19 ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  %i.cw = extractvalue { ptr, i64 } %i.cu, 1
  %i.cx = call ptr @_ZN4mlir6memref11GetGlobalOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i, ptr %i.ct, ptr %i.cv, i64 %i.cw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.cy = call ptr @_ZN4mlir6memref8GlobalOp7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %i.cz = call { ptr, i64 } @_ZN4mlir6memref8GlobalOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19 ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %i.dc = call ptr @_ZN4mlir6memref11GetGlobalOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i, ptr %i.cy, ptr %i.da, i64 %i.db) #19
  %i.dd = call ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i, i64 noundef 0) #19
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16
  %i.df = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 noundef 0) #19 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cx, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr %i.df, ptr %17, align 8, !tbaa !128
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr nonnull %17, i64 1) #19
  %i.dh = load i64, ptr %16, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = call ptr @_ZN4mlir6memref6LoadOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS_10ValueRangeEbN4llvm10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i, ptr nonnull %i.dg, i64 %i.dh, i64 %i.dj, i1 noundef zeroext false, i16 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16
  %i.dm = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 noundef 0) #19
  %i.dn = getelementptr inbounds i8, ptr %i.dc, i64 -16
  %i.do = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 noundef 0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %i.df, ptr %19, align 8, !tbaa !128
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr nonnull %19, i64 1) #19
  %i.dp = load i64, ptr %18, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = call ptr @_ZN4mlir6memref7StoreOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS_10ValueRangeEbN4llvm10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i, ptr %i.dm, ptr %i.do, i64 %i.dp, i64 %i.dr, i1 noundef zeroext false, i16 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.dt = call ptr @_ZN4mlir4func8ReturnOp6createERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr %.sroa.0.0.copyload.i.i59.i) #19 ; 0 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x ptr> %i.cl, ptr %i.cj, align 8
  br label %_ZN4mlir9OpBuilder21restoreInsertionPointENS0_11InsertPointE.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder21restoreInsertionPointENS0_11InsertPointE.exit.i

_ZN4mlir9OpBuilder21restoreInsertionPointENS0_11InsertPointE.exit.i: ; preds = %bb.h, %bb.g
end_hunk_1
