Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ArithToEmitC?download=true
inline.NumInlined: 6196
inline.NumDeleted: 3235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_120ItoFCastOpConversionIN4mlir5arith8SIToFPOpEED0Ev:bb.a
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8SIToFPOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::arith::SIToFPOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir5arith6detail26SIToFPOpGenericAdaptorBaseC2ENS0_8SIToFPOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::SIToFPOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8SIToFPOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::arith::SIToFPOpGenericAdaptor.2485", align 8 ; 4 uses
  call void @_ZN4mlir5arith6detail26SIToFPOpGenericAdaptorBaseC2ENS0_8SIToFPOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !87
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::SIToFPOpGenericAdaptor.2485") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_120ItoFCastOpConversionIN4mlir5arith8SIToFPOpEE15matchAndRewriteES3_NS2_15SIToFPOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::arith::SIToFPOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %5 = alloca %class.anon.2486, align 8           ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon.2486, align 8           ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon.2486, align 8           ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %12 = alloca %"class.mlir::Type", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %11, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  store ptr %i.f, ptr %12, align 8
  %i.g = call noundef zeroext i1 @_ZN4mlir5emitc22isSupportedIntegerTypeENS_4TypeE(ptr %i.f) #17
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !110
  store ptr @.str.85, ptr %10, align 8, !tbaa !111
  store i8 3, ptr %i.h, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %10, ptr %9, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !121  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #17
  br i1 %i.l, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = ptrtoint ptr %9 to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8SIToFPOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.n) #17, !inline_history !1183
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.s, ptr %i.v) #17 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !110
  store ptr @.str.9, ptr %8, align 8, !tbaa !111
  store i8 3, ptr %i.y, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %8, ptr %7, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121 ; 4 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i17, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ab) #17
  br i1 %i.ac, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i18, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit20

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i18: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i19 = load ptr, ptr %i.ad, align 8
  %i.ae = ptrtoint ptr %7 to i64
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr %.sroa.0.0.copyload.i.i.i.i19, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8SIToFPOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ae) #17, !inline_history !1183
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit20

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit20: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.ai = call noundef zeroext i1 @_ZN4mlir5emitc20isSupportedFloatTypeENS_4TypeE(ptr nonnull %i.w) #17
  br i1 %i.ai, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !110
  store ptr @.str.86, ptr %6, align 8, !tbaa !111
  store i8 3, ptr %i.aj, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %6, ptr %5, align 8, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !121 ; 4 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i21, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.am) #17
  br i1 %i.an, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i22, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit24

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i22: ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.ao, align 8
  %i.ap = ptrtoint ptr %5 to i64
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr %.sroa.0.0.copyload.i.i.i.i23, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8SIToFPOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ap) #17, !inline_history !1183
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit24

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit24: ; preds = %bb.h, %bb.i, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !161
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !158
  %i.aw = icmp eq ptr %i.av, @_ZN4mlir6detail14TypeIDResolverINS_5arith8UIToFPOpEvE2idE
  %13 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5arith8UIToFPOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %13, %i.aw
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  %i.az = call ptr @_ZN4mlir7Builder14getIntegerTypeEjb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.ay, i1 noundef zeroext false) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.028.0 = phi ptr [ %i.az, %bb.k ], [ %i.f, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %4, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ba, align 8
  %i.bb = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.sroa.05.0.copyload = load ptr, ptr %12, align 8, !tbaa !134
  %.not = icmp eq ptr %.sroa.028.0, %.sroa.05.0.copyload
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bd, align 8
  %i.be = call ptr @_ZN4mlir5emitc6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.028.0, ptr %i.bb, i1 noundef zeroext false) #17
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.027.0 = phi ptr [ %i.bf, %bb.m ], [ %i.bb, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i26 = load ptr, ptr %i.bh, align 8
  %i.bi = call ptr @_ZN4mlir5emitc6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr %.sroa.0.0.copyload.i.i26, ptr nonnull %i.w, ptr %.sroa.027.0, i1 noundef zeroext false) #17
  %i.bj = load ptr, ptr %3, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef %i.bi) #17, !inline_history !5
  br label %bb.o

bb.o:                                             ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit20, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit24, %bb.n, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.016.1 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit20 ], [ 1, %bb.n ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_PKc.exit24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  ret i8 %.sroa.016.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8SIToFPOpEE15matchAndRewriteES2_NS1_22SIToFPOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::arith::SIToFPOpGenericAdaptor.2485") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5arith8SIToFPOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::SIToFPOpGenericAdaptor.2485") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir5arith6detail26SIToFPOpGenericAdaptorBaseC2ENS0_8SIToFPOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir5emitc22isSupportedIntegerTypeENS_4TypeE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8SIToFPOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1185, !nonnull !122, !align !123
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5arith8SIToFPOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::arith::SIToFPOpGenericAdaptor.2485") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.2486, align 8           ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::arith::SIToFPOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !87
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !126, !range !127, !noundef !122
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !112, !alias.scope !1193
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !110, !alias.scope !1193
  store ptr @.str.10, ptr %7, align 8, !tbaa !111, !alias.scope !1193
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !111, !alias.scope !1193
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !111, !alias.scope !1193
  store ptr %7, ptr %6, align 8, !alias.scope !1194
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.11, ptr %i.j, align 8, !alias.scope !1194
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !112, !alias.scope !1194
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !110, !alias.scope !1194
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %6, ptr %4, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #17
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8SIToFPOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #17, !inline_history !1192
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::SIToFPOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8SIToFPOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !126, !range !127, !noundef !122
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !126
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120ItoFCastOpConversionIN4mlir5arith8UIToFPOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120FtoICastOpConversionIN4mlir5arith8FPToSIOpEED0Ev:bb.a
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8FPToSIOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::arith::FPToSIOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir5arith6detail26FPToSIOpGenericAdaptorBaseC2ENS0_8FPToSIOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::FPToSIOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8FPToSIOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::arith::FPToSIOpGenericAdaptor.2608", align 8 ; 4 uses
  call void @_ZN4mlir5arith6detail26FPToSIOpGenericAdaptorBaseC2ENS0_8FPToSIOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !87
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::FPToSIOpGenericAdaptor.2608") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_120FtoICastOpConversionIN4mlir5arith8FPToSIOpEE15matchAndRewriteES3_NS2_15FPToSIOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr nofree noundef readonly byval(%"class.mlir::arith::FPToSIOpAdaptor") align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.2609, align 8           ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %class.anon.2609, align 8           ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %class.anon.2609, align 8           ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 7 uses
  %12 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %13 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %14 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.344", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %10, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = call noundef zeroext i1 @_ZN4mlir5emitc20isSupportedFloatTypeENS_4TypeE(ptr %i.f) #17
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !110
  store ptr @.str.85, ptr %9, align 8, !tbaa !111
  store i8 3, ptr %i.h, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr %9, ptr %8, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !121  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #17
  br i1 %i.l, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = ptrtoint ptr %8 to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8FPToSIOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.n) #17, !inline_history !1207
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.s, ptr %i.v) #17 ; 3 uses
  store ptr %i.w, ptr %11, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !110
  store ptr @.str.9, ptr %7, align 8, !tbaa !111
  store i8 3, ptr %i.y, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %7, ptr %6, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ab) #17
  br i1 %i.ac, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ad, align 8
  %i.ae = ptrtoint ptr %6 to i64
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8FPToSIOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ae) #17, !inline_history !1207
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.ai = call noundef zeroext i1 @_ZN4mlir5emitc22isSupportedIntegerTypeENS_4TypeE(ptr nonnull %i.w) #17
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = call noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1) #17
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !110
  store ptr @.str.86, ptr %5, align 8, !tbaa !111
  store i8 3, ptr %i.ak, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %5, ptr %4, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !121 ; 4 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i23, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.an) #17
  br i1 %i.ao, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i24, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit26

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i24: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.ap, align 8
  %i.aq = ptrtoint ptr %4 to i64
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(12) %i.an, ptr %.sroa.0.0.copyload.i.i.i.i25, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8FPToSIOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.aq) #17, !inline_history !1207
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit26

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit26: ; preds = %bb.i, %bb.j, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.p

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.au = load i64, ptr %11, align 8, !tbaa !134
  store i64 %i.au, ptr %12, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !161
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !158
  %i.ay = icmp eq ptr %i.ax, @_ZN4mlir6detail14TypeIDResolverINS_5arith8FPToUIOpEvE2idE
  %16 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5arith8FPToUIOpEvE2idE ; 2 uses
  %spec.select.i.i.i.i.i.i.i = and i1 %16, %i.ay
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = call noundef i32 @_ZNK4mlir4Type21getIntOrFloatBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %i.bb = call ptr @_ZN4mlir7Builder14getIntegerTypeEjb(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %i.ba, i1 noundef zeroext false) #17
  store ptr %i.bb, ptr %12, align 8, !tbaa !134
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bd, align 8
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr nonnull align 8 dereferenceable(8) %12, i64 1) #17
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.be = load i64, ptr %14, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = call ptr @_ZN4mlir5emitc6CastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr %.sroa.0.0.copyload.i.i, i64 %i.be, i64 %i.bg, i64 %.sroa.0.0.copyload.i13.i.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.344") align 8 %15) #17
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  store ptr %i.bi, ptr %13, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i27 = load ptr, ptr %i.av, align 8, !tbaa !161
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i27, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !158
  %i.bl = icmp eq ptr %i.bk, @_ZN4mlir6detail14TypeIDResolverINS_5arith8FPToUIOpEvE2idE
  %spec.select.i.i.i.i.i.i.i28 = and i1 %16, %i.bl
  br i1 %spec.select.i.i.i.i.i.i.i28, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i28 = load ptr, ptr %i.bd, align 8
  %.sroa.01.0.copyload = load ptr, ptr %11, align 8, !tbaa !134
  %i.bm = call ptr @_ZN4mlir5emitc6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr %.sroa.0.0.copyload.i.i28, ptr %.sroa.01.0.copyload, ptr nonnull %i.bi, i1 noundef zeroext false) #17
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16
  store ptr %i.bn, ptr %13, align 8, !tbaa !132
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = ptrtoint ptr %13 to i64
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %1, i64 %i.bo, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit26, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit22
  %.sroa.018.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit22 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit26 ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.018.1 = phi i8 [ %.sroa.018.0, %bb.p ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  ret i8 %.sroa.018.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8FPToSIOpEE15matchAndRewriteES2_NS1_22FPToSIOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::arith::FPToSIOpGenericAdaptor.2608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5arith8FPToSIOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::FPToSIOpGenericAdaptor.2608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir5arith6detail26FPToSIOpGenericAdaptorBaseC2ENS0_8FPToSIOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #2

declare ptr @_ZN4mlir5emitc6CastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.344") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8FPToSIOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1209, !nonnull !122, !align !123
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5arith8FPToSIOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::arith::FPToSIOpGenericAdaptor.2608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.2609, align 8           ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::arith::FPToSIOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !87
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !126, !range !127, !noundef !122
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !112, !alias.scope !1217
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !110, !alias.scope !1217
  store ptr @.str.10, ptr %7, align 8, !tbaa !111, !alias.scope !1217
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !111, !alias.scope !1217
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !111, !alias.scope !1217
  store ptr %7, ptr %6, align 8, !alias.scope !1218
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.11, ptr %i.j, align 8, !alias.scope !1218
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !112, !alias.scope !1218
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !110, !alias.scope !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %6, ptr %4, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #17
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5arith8FPToSIOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #17, !inline_history !1216
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::FPToSIOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith8FPToSIOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !126, !range !127, !noundef !122
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !126
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120FtoICastOpConversionIN4mlir5arith8FPToUIOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith8FPToUIOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::arith::FPToUIOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir5arith6detail26FPToUIOpGenericAdaptorBaseC2ENS0_8FPToUIOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #17
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::FPToUIOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  ret i8 %i.f
}

end_hunk_1
