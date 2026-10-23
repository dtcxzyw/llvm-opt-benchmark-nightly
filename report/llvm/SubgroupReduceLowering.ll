Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SubgroupReduceLowering?download=true
inline.NumInlined: 1352
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_128ScalarizeSingleElementReduce15matchAndRewriteEN4mlir3gpu16SubgroupReduceOpERNS1_15PatternRewriterE:bb.a
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.i, i64 %i.j) #17
  %.not = icmp eq i64 %i.k, 1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.m, align 1, !tbaa !100
  store ptr @.str.21, ptr %4, align 8, !tbaa !101
  store i8 3, ptr %i.l, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %4, ptr %3, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #17
  br i1 %i.p, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.q, align 8
  %i.r = ptrtoint ptr %3 to i64
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu16SubgroupReduceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.r) #17, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !123
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i.i12 = load ptr, ptr %i.z, align 8, !tbaa !125
  %i.aa = call ptr @_ZN4mlir6vector9ExtractOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEl(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i.i12, i64 noundef 0) #17
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.ac = call noundef i32 @_ZN4mlir3gpu16SubgroupReduceOp5getOpEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %i.ad = call noundef zeroext i1 @_ZN4mlir3gpu16SubgroupReduceOp10getUniformEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %i.ae = call i64 @_ZN4mlir3gpu16SubgroupReduceOp14getClusterSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %i.af = call noundef i32 @_ZN4mlir3gpu16SubgroupReduceOp16getClusterStrideEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %i.ag = call ptr @_ZN4mlir3gpu16SubgroupReduceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS0_18AllReduceOperationEbSt8optionalIjEj(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr %.sroa.0.0.copyload.i.i, ptr nonnull %i.ab, i32 noundef %i.ac, i1 noundef zeroext %i.ad, i64 %i.ae, i32 noundef %i.af) #17
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %i.aj, align 8
  %.sroa.01.0.copyload.i = load ptr, ptr %6, align 8, !tbaa !119
  %i.ak = call ptr @_ZN4mlir6vector11BroadcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr %.sroa.0.0.copyload.i.i13, ptr %.sroa.01.0.copyload.i, ptr nonnull %i.ah) #17
  %i.al = load ptr, ptr %2, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.ai, ptr noundef %i.ak) #17, !inline_history !214
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.011.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i8 %.sroa.011.0
}

declare ptr @_ZN4mlir6vector11BroadcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125ScalarSubgroupReduceToDPPD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_125ScalarSubgroupReduceToDPP15matchAndRewriteEN4mlir3gpu16SubgroupReduceOpERNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon, align 8                ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon, align 8                ; 4 uses
  %10 = alloca %"class.mlir::gpu::SubgroupReduceOp", align 8 ; 10 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::formatv_object.327", align 8 ; 14 uses
  %13 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %14 = alloca %"class.llvm::FailureOr.342", align 8 ; 5 uses
  store ptr %1, ptr %10, align 8
  %i.c = call i64 @_ZN4mlir3gpu16SubgroupReduceOp14getClusterSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %.sroa.3.0.extract.shift = lshr i64 %i.c, 32
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !82, !range !134, !noundef !130 ; 2 uses
  %.not = icmp eq i8 %i.e, %.sroa.3.0.extract.trunc
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = select i1 %i.f, i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @.str.25 to i64)
  %i.h = select i1 %i.f, i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @.str.24 to i64)
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr @.str.23, ptr %12, align 8, !tbaa !65, !alias.scope !221
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 75, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !64, !alias.scope !221
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !113, !alias.scope !221
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !64, !alias.scope !221
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.k, align 8, !tbaa !116, !alias.scope !221
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  store i64 %i.h, ptr %i.l, align 8, !tbaa !65, !alias.scope !221
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store i64 %i.g, ptr %i.m, align 8, !tbaa !65, !alias.scope !221
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %i.i, align 8, !alias.scope !221
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !221
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !221
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !101, !alias.scope !221
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 7, ptr %i.p, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !100
  store ptr %12, ptr %11, align 8, !tbaa !101
  %i.r = load ptr, ptr %10, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %11, ptr %9, align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #17
  br i1 %i.u, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.v, align 8
  %i.w = ptrtoint ptr %9 to i64
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu16SubgroupReduceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.w) #17, !inline_history !1
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.bb

bb.d:                                             ; preds = %bb.a
  %.sroa.04.0.copyload = load ptr, ptr %10, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !81
  %i.ac = call fastcc { i64, i64 } @_ZN12_GLOBAL__N_125getAndValidateClusterInfoEN4mlir3gpu16SubgroupReduceOpEj(ptr %.sroa.04.0.copyload, i32 noundef %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 8 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 3 uses
  %i.af = and i64 %i.ae, 4294967296
  %.not33 = icmp eq i64 %i.af, 0
  br i1 %.not33, label %bb.bb, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = and i64 %i.ad, 4294967295
  %.not11 = icmp eq i64 %i.ag, 1
  br i1 %.not11, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !100
  store ptr @.str.26, ptr %8, align 8, !tbaa !101
  store i8 3, ptr %i.ah, align 8, !tbaa !102
  %i.aj = load ptr, ptr %10, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %8, ptr %7, align 8, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.al) #17
  br i1 %i.am, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8
  %i.ao = ptrtoint ptr %7 to i64
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.al, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu16SubgroupReduceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ao) #17, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.bb

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.as = load ptr, ptr %10, align 8, !tbaa !120
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %13, align 8
  %i.aw = call noundef zeroext i1 @_ZNK4mlir4Type12isIntOrFloatEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  br i1 %i.aw, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !100
  store ptr @.str.27, ptr %6, align 8, !tbaa !101
  store i8 3, ptr %i.ax, align 8, !tbaa !102
  %i.az = load ptr, ptr %10, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %6, ptr %5, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !111 ; 4 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i15, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bb) #17
  br i1 %i.bc, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i16, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit18

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i16: ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.0.0.copyload.i.i.i.i17.a = load ptr, ptr %i.bd, align 8
  %i.be = ptrtoint ptr %5 to i64
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, ptr %.sroa.0.0.copyload.i.i.i.i17.a, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu16SubgroupReduceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.be) #17, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit18

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit18: ; preds = %bb.i, %bb.j, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ba

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %.sroa.02.0.copyload = load ptr, ptr %10, align 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i.i.i.i19 = load ptr, ptr %i.bk, align 8, !tbaa !125 ; 5 uses
  %i.bl = call noundef i32 @_ZN4mlir3gpu16SubgroupReduceOp5getOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.024.0.copyload = load i32, ptr %i.bm, align 8, !tbaa !83 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i20 = load ptr, ptr %i.bn, align 8 ; 25 uses
  %i.bo = icmp ugt i64 %i.ad, 8589934591
  br i1 %i.bo, label %bb.l, label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 41 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i19, i64 8
  %.0.copyload.i.i.i.i.i.i21 = load i64, ptr %i.bq, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i21, -8
  %i.bs = inttoptr i64 %i.br to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store <4 x i32> <i32 1, i32 0, i32 3, i32 2>, ptr %i.a, align 16, !tbaa !83
  %i.bt = call ptr @_ZN4mlir7Builder15getI32ArrayAttrEN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr nonnull %i.a, i64 4) #17
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = call ptr @_ZN4mlir6amdgpu5DPPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_7DPPPermENS_9AttributeEjjb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.bs, ptr %.sroa.0.0.copyload.i.i.i.i19, ptr %.sroa.0.0.copyload.i.i.i.i19, i32 noundef 0, i64 %i.bu, i32 noundef 15, i32 noundef 15, i1 noundef zeroext true) #17
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bx = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.by = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.bx, ptr %.sroa.0.0.copyload.i.i.i.i19, ptr nonnull %i.bw, ptr null, i64 0) #17 ; 5 uses
  %i.bz = icmp ugt i64 %i.ad, 17179869183
  br i1 %i.bz, label %bb.m, label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.0.copyload.i.i.i.i.i195.i = load i64, ptr %i.ca, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i195.i, -8
  %i.cc = inttoptr i64 %i.cb to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store <4 x i32> <i32 2, i32 3, i32 0, i32 1>, ptr %i.b, align 16, !tbaa !83
  %i.cd = call ptr @_ZN4mlir7Builder15getI32ArrayAttrEN4llvm8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr nonnull %i.b, i64 4) #17
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = call ptr @_ZN4mlir6amdgpu5DPPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_7DPPPermENS_9AttributeEjjb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.cc, ptr %i.by, ptr %i.by, i32 noundef 0, i64 %i.ce, i32 noundef 15, i32 noundef 15, i1 noundef zeroext true) #17
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ch = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.ci = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.ch, ptr %i.by, ptr nonnull %i.cg, ptr null, i64 0) #17 ; 5 uses
  %i.cj = icmp ugt i64 %i.ad, 34359738367
  br i1 %i.cj, label %bb.n, label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.0.copyload.i.i.i.i.i196.i = load i64, ptr %i.ck, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i.i196.i, -8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = call ptr @_ZN4mlir6amdgpu5DPPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_7DPPPermENS_9AttributeEjjb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.cm, ptr %i.ci, ptr %i.ci, i32 noundef 9, i64 %i.co, i32 noundef 15, i32 noundef 15, i1 noundef zeroext true) #17
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -16
  %i.cr = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.cs = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.cr, ptr %i.ci, ptr nonnull %i.cq, ptr null, i64 0) #17 ; 5 uses
  %i.ct = icmp ugt i64 %i.ad, 68719476735
  br i1 %i.ct, label %bb.o, label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.0.copyload.i.i.i.i.i197.i = load i64, ptr %i.cu, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i197.i, -8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = call ptr @_ZN4mlir6amdgpu5DPPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_7DPPPermENS_9AttributeEjjb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.cw, ptr %i.cs, ptr %i.cs, i32 noundef 8, i64 %i.cy, i32 noundef 15, i32 noundef 15, i1 noundef zeroext true) #17
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -16
  %i.db = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.dc = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.db, ptr %i.cs, ptr nonnull %i.da, ptr null, i64 0) #17 ; 9 uses
  %i.dd = icmp ugt i64 %i.ad, 137438953471
  br i1 %i.dd, label %bb.p, label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.p:                                             ; preds = %bb.o
  %i.de = icmp ult i32 %.sroa.024.0.copyload, 10  ; 2 uses
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.0.copyload.i.i.i.i.i198.i = load i64, ptr %i.df, align 8
  %i.dg = and i64 %.0.copyload.i.i.i.i.i198.i, -8
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = call ptr @_ZN4mlir6amdgpu5DPPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_7DPPPermENS_9AttributeEjjb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.dh, ptr %i.dc, ptr %i.dc, i32 noundef 10, i64 %i.dj, i32 noundef 10, i32 noundef 15, i1 noundef zeroext false) #17
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16
  %i.dm = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.dn = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.dm, ptr %i.dc, ptr nonnull %i.dl, ptr null, i64 0) #17 ; 2 uses
  %15 = and i64 %i.ae, 4294967295                 ; 2 uses
  %i.do = icmp eq i64 %15, 64
  %16 = icmp ult i64 %i.ad, 141733920768
  %or.cond = and i1 %i.do, %16
  br i1 %or.cond, label %.thread73.thread.i, label %bb.aa

.thread73.thread.i:                               ; preds = %bb.q
  %i.dp = call ptr @_ZN4mlir6amdgpu16SwizzleBitModeOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEjjj(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.dn, i32 noundef 0, i32 noundef 31, i32 noundef 0) #17
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -16
  br label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.r:                                             ; preds = %bb.p
  %i.dr = icmp ult i32 %.sroa.024.0.copyload, 13
  br i1 %i.dr, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ds = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.dt = call ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef -1) #17 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i23, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !224 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.u, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !225

bb.u:                                             ; preds = %bb.t
  %i.dy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 15) #17
  store ptr %i.dz, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !97 ; 2 uses
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !92 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ee = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ee ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !97
  %i.eg = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ei = xor i64 %i.ee, -1
  %i.ej = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ei
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eg, ptr %i.eh, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eg, i64 %i.ej, i64 %i.ee ; 2 uses
  %i.ek = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ek, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !219

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.ed, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.el
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.em = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !227
  %i.en = icmp eq ptr %i.em, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.en, label %bb.x, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !229
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i: ; preds = %bb.x, %bb.w, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.s
  %i.eq = phi ptr [ null, %bb.s ], [ %i.ep, %bb.x ], [ null, %bb.w ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ]
  %i.er = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.ds, ptr %i.dt, ptr %i.eq) #17
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.0.copyload.i.i.i.i.i199.i = load i64, ptr %i.et, align 8
  %i.eu = and i64 %.0.copyload.i.i.i.i.i199.i, -8
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = call ptr @_ZN4mlir5ROCDL13PermlaneX16Op6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_S6_S6_bb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.ev, ptr %i.dc, ptr %i.dc, ptr nonnull %i.es, i64 %i.ew, i1 noundef zeroext true, i1 noundef zeroext false) #17
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -16
  %i.ez = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.fa = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.ez, ptr %i.dc, ptr nonnull %i.ey, ptr null, i64 0) #17
  %.pre = and i64 %i.ae, 4294967295
  br label %bb.aa

bb.y:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.fc, align 1, !tbaa !100
  store ptr @.str.32, ptr %4, align 8, !tbaa !101
  store i8 3, ptr %i.fb, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %4, ptr %3, align 8, !tbaa !104
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !111 ; 4 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i22, label %bb.ay, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.fe) #17
  br i1 %i.ff, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, label %bb.ay

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i: ; preds = %bb.z
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bn, align 8
  %i.fg = ptrtoint ptr %3 to i64
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !40
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 88
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(12) %i.fe, ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3gpu16SubgroupReduceOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.fg) #17, !inline_history !220
  br label %bb.ay

bb.aa:                                            ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i, %bb.q
  %.pre-phi = phi i64 [ %.pre, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i ], [ %15, %bb.q ]
  %.sroa.046.4.i = phi ptr [ %i.fa, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit.i ], [ %i.dn, %bb.q ] ; 3 uses
  %i.fk = icmp eq i64 %.pre-phi, 32
  br i1 %i.fk, label %bb.ab, label %.thread73.i

bb.ab:                                            ; preds = %bb.aa
  %i.fl = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.fm = call ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 31) #17 ; 3 uses
  %.not.i.i.i201.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i201.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !224 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.ad, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i, !prof !225

bb.ad:                                            ; preds = %bb.ac
  %i.fr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i218.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i218.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 15) #17
  store ptr %i.fs, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i203.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !97 ; 2 uses
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !92 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i.i204.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i204.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i214.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i205.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i205.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i205.i
  %.017.i.i.i.i.i.i.i.i.i.i207.i = phi i64 [ %i.fw, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i205.i ], [ %.1.i.i.i.i.i.i.i.i.i.i213.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i208.i = phi ptr [ %i.ft, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i205.i ], [ %.112.i.i.i.i.i.i.i.i.i.i212.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i ] ; 2 uses
  %i.fx = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i207.i, 1 ; 3 uses
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i208.i, i64 %i.fx ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i211.i = load ptr, ptr %i.fy, align 8, !tbaa !97
  %i.fz = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i211.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i203.i ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gb = xor i64 %i.fx, -1
  %i.gc = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i207.i, %i.gb
  %.112.i.i.i.i.i.i.i.i.i.i212.i = select i1 %i.fz, ptr %i.ga, ptr %.01116.i.i.i.i.i.i.i.i.i.i208.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i213.i = select i1 %i.fz, i64 %i.gc, i64 %i.fx ; 2 uses
  %i.gd = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i213.i, 0
  br i1 %i.gd, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i214.i, !llvm.loop !219

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i214.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i
  %.pre-phi.i.i.i.i.i.i.i215.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i ], [ %i.fw, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i216.i = phi ptr [ %i.ft, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i202.i ], [ %.112.i.i.i.i.i.i.i.i.i.i212.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i206.i ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %.pre-phi.i.i.i.i.i.i.i215.i
  %.not.i.i.i.i.i.i.i217.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i216.i, %i.ge
  br i1 %.not.i.i.i.i.i.i.i217.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i214.i
  %i.gf = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i216.i, align 8, !tbaa !227
  %i.gg = icmp eq ptr %i.gf, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i203.i
  br i1 %i.gg, label %bb.ag, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i

bb.ag:                                            ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i216.i, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !229
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i: ; preds = %bb.ag, %bb.af, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i214.i, %bb.ab
  %i.gj = phi ptr [ null, %bb.ab ], [ %i.gi, %bb.ag ], [ null, %bb.af ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i214.i ]
  %i.gk = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.fl, ptr %i.fm, ptr %i.gj) #17
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -16
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.046.4.i, i64 8
  %.0.copyload.i.i.i.i.i220.i = load i64, ptr %i.gm, align 8
  %i.gn = and i64 %.0.copyload.i.i.i.i.i220.i, -8
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = call ptr @_ZN4mlir5ROCDL10ReadlaneOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.go, ptr %.sroa.046.4.i, ptr nonnull %i.gl) #17
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -16
  br label %.thread73.i

.thread73.i:                                      ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i, %bb.aa
  %.sroa.046.5.i = phi ptr [ %.sroa.046.4.i, %bb.aa ], [ %i.gq, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit219.i ] ; 8 uses
  %i.gr = icmp ugt i64 %i.ad, 274877906943
  br i1 %i.gr, label %bb.ah, label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.ah:                                            ; preds = %.thread73.i
  br i1 %i.de, label %.thread.i, label %bb.an

.thread.i:                                        ; preds = %bb.ah
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.046.5.i, i64 8
  %.0.copyload.i.i.i.i.i221.i = load i64, ptr %i.gs, align 8
  %i.gt = and i64 %.0.copyload.i.i.i.i.i221.i, -8
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = call ptr @_ZN4mlir6amdgpu5DPPOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_NS0_7DPPPermENS_9AttributeEjjb(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.gu, ptr %.sroa.046.5.i, ptr %.sroa.046.5.i, i32 noundef 11, i64 %i.gw, i32 noundef 15, i32 noundef 15, i1 noundef zeroext true) #17
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -16
  %i.gz = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.ha = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.gz, ptr nonnull %i.gy, ptr %.sroa.046.5.i, ptr null, i64 0) #17 ; 2 uses
  %i.hb = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.hc = call ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 63) #17 ; 3 uses
  %.not.i.i.i223.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i223.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i, label %bb.ai

bb.ai:                                            ; preds = %.thread.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !224 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.hg = icmp eq i8 %i.hf, 0
  br i1 %i.hg, label %bb.aj, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i, !prof !225

bb.aj:                                            ; preds = %bb.ai
  %i.hh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i240.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i240.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hi = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 15) #17
  store ptr %i.hi, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i225.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !97 ; 2 uses
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !92 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i.i226.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i.i226.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i236.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i227.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i227.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i227.i
  %.017.i.i.i.i.i.i.i.i.i.i229.i = phi i64 [ %i.hm, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i227.i ], [ %.1.i.i.i.i.i.i.i.i.i.i235.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i230.i = phi ptr [ %i.hj, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i227.i ], [ %.112.i.i.i.i.i.i.i.i.i.i234.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i ] ; 2 uses
  %i.hn = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i229.i, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i230.i, i64 %i.hn ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i233.i = load ptr, ptr %i.ho, align 8, !tbaa !97
  %i.hp = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i233.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i225.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hr = xor i64 %i.hn, -1
  %i.hs = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i229.i, %i.hr
  %.112.i.i.i.i.i.i.i.i.i.i234.i = select i1 %i.hp, ptr %i.hq, ptr %.01116.i.i.i.i.i.i.i.i.i.i230.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i235.i = select i1 %i.hp, i64 %i.hs, i64 %i.hn ; 2 uses
  %i.ht = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i235.i, 0
  br i1 %i.ht, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i236.i, !llvm.loop !219

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i236.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i
  %.pre-phi.i.i.i.i.i.i.i237.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i ], [ %i.hm, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i238.i = phi ptr [ %i.hj, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i224.i ], [ %.112.i.i.i.i.i.i.i.i.i.i234.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i228.i ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %.pre-phi.i.i.i.i.i.i.i237.i
  %.not.i.i.i.i.i.i.i239.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i238.i, %i.hu
  br i1 %.not.i.i.i.i.i.i.i239.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i236.i
  %i.hv = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i238.i, align 8, !tbaa !227
  %i.hw = icmp eq ptr %i.hv, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i225.i
  br i1 %i.hw, label %bb.am, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i238.i, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !229
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i: ; preds = %bb.am, %bb.al, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i236.i, %.thread.i
  %i.hz = phi ptr [ null, %.thread.i ], [ %i.hy, %bb.am ], [ null, %bb.al ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i236.i ]
  %i.ia = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.hb, ptr %i.hc, ptr %i.hz) #17
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.0.copyload.i.i.i.i.i242.i = load i64, ptr %i.ic, align 8
  %i.id = and i64 %.0.copyload.i.i.i.i.i242.i, -8
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = call ptr @_ZN4mlir5ROCDL10ReadlaneOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.ie, ptr %i.ha, ptr nonnull %i.ib) #17
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -16
  br label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.an:                                            ; preds = %bb.ah
  %i.ih = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.ii = call ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 31) #17 ; 3 uses
  %.not.i.i.i244.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i244.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !224 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.im = icmp eq i8 %i.il, 0
  br i1 %i.im, label %bb.ap, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i, !prof !225

bb.ap:                                            ; preds = %bb.ao
  %i.in = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i261.i = icmp eq i32 %i.in, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i261.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.io = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 15) #17
  store ptr %i.io, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i246.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !97 ; 2 uses
  %i.ip = load ptr, ptr %i.ik, align 8, !tbaa !92 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i.i247.i = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.i.i.i.i.i.i247.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i257.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i248.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i248.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i248.i
  %.017.i.i.i.i.i.i.i.i.i.i250.i = phi i64 [ %i.is, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i248.i ], [ %.1.i.i.i.i.i.i.i.i.i.i256.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i251.i = phi ptr [ %i.ip, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i248.i ], [ %.112.i.i.i.i.i.i.i.i.i.i255.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i ] ; 2 uses
  %i.it = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i250.i, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i251.i, i64 %i.it ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i254.i = load ptr, ptr %i.iu, align 8, !tbaa !97
  %i.iv = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i254.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i246.i ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.ix = xor i64 %i.it, -1
  %i.iy = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i250.i, %i.ix
  %.112.i.i.i.i.i.i.i.i.i.i255.i = select i1 %i.iv, ptr %i.iw, ptr %.01116.i.i.i.i.i.i.i.i.i.i251.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i256.i = select i1 %i.iv, i64 %i.iy, i64 %i.it ; 2 uses
  %i.iz = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i256.i, 0
  br i1 %i.iz, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i257.i, !llvm.loop !219

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i257.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i
  %.pre-phi.i.i.i.i.i.i.i258.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i ], [ %i.is, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i259.i = phi ptr [ %i.ip, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i245.i ], [ %.112.i.i.i.i.i.i.i.i.i.i255.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i249.i ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.ip, i64 %.pre-phi.i.i.i.i.i.i.i258.i
  %.not.i.i.i.i.i.i.i260.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i259.i, %i.ja
  br i1 %.not.i.i.i.i.i.i.i260.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i257.i
  %i.jb = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i259.i, align 8, !tbaa !227
  %i.jc = icmp eq ptr %i.jb, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i246.i
  br i1 %i.jc, label %bb.as, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i

bb.as:                                            ; preds = %bb.ar
  %i.jd = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i259.i, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !229
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i: ; preds = %bb.as, %bb.ar, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i257.i, %bb.an
  %i.jf = phi ptr [ null, %bb.an ], [ %i.je, %bb.as ], [ null, %bb.ar ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i257.i ]
  %i.jg = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.ih, ptr %i.ii, ptr %i.jf) #17
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -16
  %i.ji = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #17
  %i.jj = call ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 63) #17 ; 3 uses
  %.not.i.i.i264.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i264.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i, label %bb.at

bb.at:                                            ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !224 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.au, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i, !prof !225

bb.au:                                            ; preds = %bb.at
  %i.jo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i281.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i281.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jp = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 15) #17
  store ptr %i.jp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i: ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i266.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !97 ; 2 uses
  %i.jq = load ptr, ptr %i.jl, align 8, !tbaa !92 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i.i267.i = icmp eq i32 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i.i267.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i277.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i268.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i268.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i
  %i.jt = zext i32 %i.js to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i268.i
  %.017.i.i.i.i.i.i.i.i.i.i270.i = phi i64 [ %i.jt, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i268.i ], [ %.1.i.i.i.i.i.i.i.i.i.i276.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i271.i = phi ptr [ %i.jq, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i268.i ], [ %.112.i.i.i.i.i.i.i.i.i.i275.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i ] ; 2 uses
  %i.ju = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i270.i, 1 ; 3 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i271.i, i64 %i.ju ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i274.i = load ptr, ptr %i.jv, align 8, !tbaa !97
  %i.jw = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i274.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i266.i ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jy = xor i64 %i.ju, -1
  %i.jz = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i270.i, %i.jy
  %.112.i.i.i.i.i.i.i.i.i.i275.i = select i1 %i.jw, ptr %i.jx, ptr %.01116.i.i.i.i.i.i.i.i.i.i271.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i276.i = select i1 %i.jw, i64 %i.jz, i64 %i.ju ; 2 uses
  %i.ka = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i276.i, 0
  br i1 %i.ka, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i277.i, !llvm.loop !219

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i277.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i
  %.pre-phi.i.i.i.i.i.i.i278.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i ], [ %i.jt, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i279.i = phi ptr [ %i.jq, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i265.i ], [ %.112.i.i.i.i.i.i.i.i.i.i275.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i269.i ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.pre-phi.i.i.i.i.i.i.i278.i
  %.not.i.i.i.i.i.i.i280.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i279.i, %i.kb
  br i1 %.not.i.i.i.i.i.i.i280.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i277.i
  %i.kc = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i279.i, align 8, !tbaa !227
  %i.kd = icmp eq ptr %i.kc, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i266.i
  br i1 %i.kd, label %bb.ax, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i279.i, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !229
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i: ; preds = %bb.ax, %bb.aw, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i277.i, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i
  %i.kg = phi ptr [ null, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit262.i ], [ %i.kf, %bb.ax ], [ null, %bb.aw ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i277.i ]
  %i.kh = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.ji, ptr %i.jj, ptr %i.kg) #17
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -16
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.046.5.i, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i283.i = load i64, ptr %i.kj, align 8
  %i.kk = and i64 %.0.copyload.i.i.i.i.i283.i, -8
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = call ptr @_ZN4mlir5ROCDL10ReadlaneOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.kl, ptr %.sroa.046.5.i, ptr nonnull %i.jh) #17
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -16
  %.0.copyload.i.i.i.i.i284.i = load i64, ptr %i.kj, align 8
  %i.ko = and i64 %.0.copyload.i.i.i.i.i284.i, -8
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = call ptr @_ZN4mlir5ROCDL10ReadlaneOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.kp, ptr %.sroa.046.5.i, ptr nonnull %i.ki) #17
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -16
  %i.ks = call noundef i32 @_ZN4mlir3gpu20convertReductionKindENS0_18AllReduceOperationE(i32 noundef %i.bl) #17
  %i.kt = call ptr @_ZN4mlir6vector18makeArithReductionERNS_9OpBuilderENS_8LocationENS0_13CombiningKindENS_5ValueES5_NS_5arith17FastMathFlagsAttrES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr %.sroa.0.0.copyload.i.i.i20, i32 noundef %i.ks, ptr nonnull %i.kn, ptr nonnull %i.kr, ptr null, i64 0) #17
  br label %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit

bb.ay:                                            ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.az

_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit:      ; preds = %.thread73.thread.i, %bb.k, %bb.l, %bb.n, %bb.m, %bb.o, %.thread73.i, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i
  %.sroa.061.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i19, %bb.k ], [ %i.by, %bb.l ], [ %i.cs, %bb.n ], [ %i.ci, %bb.m ], [ %i.dc, %bb.o ], [ %.sroa.046.5.i, %.thread73.i ], [ %i.kt, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit282.i ], [ %i.ig, %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit241.i ], [ %i.dq, %.thread73.thread.i ]
  store ptr %.sroa.061.0.i.ph, ptr %14, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 1, ptr %i.ku, align 8
  %i.kv = load ptr, ptr %10, align 8, !tbaa !120
  %i.kw = ptrtoint ptr %14 to i64
  %i.kx = load ptr, ptr %2, align 8, !tbaa !40
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.kv, i64 %i.kw, i64 1) #17
  br label %bb.az

bb.az:                                            ; preds = %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit, %bb.ay
  %.sroa.010.0 = phi i8 [ 0, %bb.ay ], [ 1, %_ZNRSt8optionalIN4mlir5ValueEE5valueEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit18
  %.sroa.010.1 = phi i8 [ %.sroa.010.0, %bb.az ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit, %bb.ba, %bb.d, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.010.3 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %.sroa.010.1, %bb.ba ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3gpu16SubgroupReduceOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %bb.d ]
  ret i8 %.sroa.010.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i64 } @_ZN12_GLOBAL__N_125getAndValidateClusterInfoEN4mlir3gpu16SubgroupReduceOpEj(ptr %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::gpu::SubgroupReduceOp", align 8 ; 5 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  store ptr %0, ptr %10, align 8
  %i.a = call i64 @_ZN4mlir3gpu16SubgroupReduceOp14getClusterSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17 ; 3 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.a to i32 ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %i.c = icmp ne i64 %i.b, 0                      ; 2 uses
  %i.d = icmp ult i32 %1, %.sroa.027.0.extract.trunc
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !100
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(34) %12) #17
  %i.g = load ptr, ptr %11, align 8, !tbaa !237
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i32 3, ptr %9, align 8, !tbaa !239
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.28, ptr %i.i, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !67
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !240

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !66
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !66
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pr = load ptr, ptr %11, align 8, !tbaa !237
  %.not.i.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i.i1, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i32 5, ptr %8, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = and i64 %i.a, 4294967295
  store i64 %i.t, ptr %i.s, align 8, !tbaa !101
  %i.u = load i32, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !67
  %.not.i.i.i.i.i2 = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i.i.i.i2, label %bb.h, label %bb.g, !prof !240

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.z = load i32, ptr %i.j, align 8, !tbaa !66
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !66
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.pr48 = load ptr, ptr %11, align 8, !tbaa !237
  %.not.i.i3 = icmp eq ptr %.pr48, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 3, ptr %7, align 8, !tbaa !239
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.29, ptr %i.ab, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx.i.i.i.i.i4 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 31, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i4, align 8, !tbaa !64
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !66  ; 2 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !67
  %.not.i.i.i.i.i5 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i5, label %bb.k, label %bb.j, !prof !240

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !66
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.j, align 8, !tbaa !66
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pr50.pr = load ptr, ptr %11, align 8, !tbaa !237
  %.not.i.i6 = icmp eq ptr %.pr50.pr, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 5, ptr %6, align 8, !tbaa !239
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = zext i32 %1 to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !101
  %i.al = load i32, ptr %i.j, align 8, !tbaa !66  ; 2 uses
  %i.am = load i32, ptr %i.l, align 4, !tbaa !67
  %.not.i.i.i.i.i7 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i7, label %bb.n, label %bb.m, !prof !240

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9

bb.n:                                             ; preds = %bb.l
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !66
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.j, align 8, !tbaa !66
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pr52 = load ptr, ptr %11, align 8, !tbaa !237
  %.not.i = icmp eq ptr %.pr52, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #17
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA14_KcEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit, %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit9
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !241, !range !134, !noundef !130
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !241
end_hunk_0
