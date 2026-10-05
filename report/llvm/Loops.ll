Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Loops?download=true
inline.NumInlined: 3087
inline.NumDeleted: 1940
begin_hunk_0_@_ZN12_GLOBAL__N_120LinalgRewritePatternIN4mlir3scf10ParallelOpEED0Ev:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_120LinalgRewritePatternIN4mlir3scf10ParallelOpEE15matchAndRewriteEPNS1_9OperationERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.206, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 7 uses
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.c, 1
  br label %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.a, %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.d = extractvalue { ptr, ptr } %.pn.i.i, 0    ; 6 uses
  %i.e = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.f = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8388608
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.e, !prof !136

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !140
  %i.n = zext i32 %i.m to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.o = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6linalg8LinalgOp22hasPureBufferSemanticsEvEUlS7_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.p
  br i1 %.not.i, label %bb.f, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread

bb.f:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.q = load i32, ptr %i.g, align 4
  %i.r = and i32 %i.q, 8388608
  %.not.i.i2.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !140
  %i.w = zext i32 %i.v to i64
  br label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit

_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i3.i = phi ptr [ %i.t, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.w, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.x = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6linalg8LinalgOp22hasPureBufferSemanticsEvEUlS7_E0_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.y = extractvalue { ptr, i64 } %i.x, 1
  %.not9 = icmp eq i64 %.sroa.4.0.i.i4.i, %i.y
  br i1 %.not9, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread, label %bb.i

_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit, %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !143
  store ptr @.str.7, ptr %4, align 8, !tbaa !144
  store i8 3, ptr %i.z, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %4, ptr %3, align 8, !tbaa !147
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !153 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #18
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #18, !inline_history !2
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread, %bb.h, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.i:                                             ; preds = %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call fastcc void @_ZL19linalgOpToLoopsImplIN4mlir3scf10ParallelOpEEN4llvm9FailureOrINS3_11SmallVectorIPNS0_9OperationELj4EEEEERNS0_12RewriterBaseENS0_6linalg8LinalgOpE(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull %i.d, ptr %i.e)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !47, !range !154, !noundef !155
  %i.al = trunc nuw i8 %i.ak to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !47
  br i1 %i.al, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.am) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ap = load ptr, ptr %2, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.04.0 = phi i8 [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit ]
  ret i8 %.sroa.04.0
}

declare void @_ZN4mlir6linalg8LinalgOp16createLoopRangesERNS_9OpBuilderENS_8LocationE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.402") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #6

declare void @_ZN4mlir6linalg8LinalgOp21getIteratorTypesArrayEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.407") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN4mlir6linalg16GenerateLoopNestINS_6affine11AffineForOpEE4doitERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_5RangeEEENS0_8LinalgOpENS9_INS_5utils12IteratorTypeEEENS8_12function_refIFNS8_11SmallVectorINS_5ValueELj6EEES6_S7_NS_10ValueRangeESK_EEENS9_INS0_8ProcInfoEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, ptr, ptr, ptr noundef byval(%"class.llvm::ArrayRef.418") align 8, ptr noundef byval(%"class.llvm::function_ref.419") align 8, ptr noundef byval(%"class.llvm::ArrayRef.420") align 8) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL35replaceIndexOpsByInductionVariablesRN4mlir12RewriterBaseENS_6linalg8LinalgOpEN4llvm8ArrayRefIPNS_9OperationEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::optional.659", align 8 ; 8 uses
  %4 = alloca %"class.mlir::scf::ParallelOp", align 8 ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.412", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.412", align 8 ; 14 uses
  %7 = alloca %"class.mlir::LoopLikeOpInterface", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.590", align 8 ; 7 uses
  %.sroa.02 = alloca [80 x i8], align 8           ; 4 uses
  %9 = alloca %"class.llvm::iterator_range.602", align 8 ; 5 uses
  %10 = alloca %"class.llvm::early_inc_iterator_impl", align 8 ; 9 uses
  %11 = alloca %"class.mlir::linalg::IndexOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 6, ptr %i.c, align 4, !tbaa !22
  %.idx = shl nuw nsw i64 %2, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not25 = icmp eq i64 %2, 0
  br i1 %.not25, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %12 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3scf10ParallelOpEvE2idE
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %13 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %14 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"
  %.01626 = phi ptr [ %1, %.lr.ph ], [ %i.cq, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit" ] ; 2 uses
  %i.k = load ptr, ptr %.01626, align 8, !tbaa !60 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 3 uses
  %i.o = icmp ne ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_3scf10ParallelOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i = or i1 %12, %i.o
  %.not1.i.i = icmp eq ptr %i.k, null
  %.not.i.i = or i1 %.not1.i.i, %spec.select.i.i.i.i.i.not.i.i
  br i1 %.not.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.k, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !412
  call void @_ZN4mlir3scf10ParallelOp20getLoopInductionVarsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.659") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18, !noalias !412
  store ptr %i.e, ptr %5, align 8, !tbaa !21, !alias.scope !412
  store i32 0, ptr %i.f, align 8, !tbaa !28, !alias.scope !412
  store i32 6, ptr %i.g, align 4, !tbaa !22, !alias.scope !412
  %i.p = load i32, ptr %i.h, align 8, !tbaa !28, !noalias !412 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i32 %i.p, 6
  br i1 %i.q, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = zext i32 %i.p to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 8) #18
  %.pre.i.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !28, !noalias !412 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !21, !alias.scope !412
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i, %bb.d
  %i.s = phi ptr [ %.pre.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.e, %bb.d ]
  %i.t = phi i32 [ %.pre.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.p, %bb.d ]
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %3, align 8, !tbaa !21, !noalias !412
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %i.u, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %i.v, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i
  store i32 %i.p, ptr %i.f, align 8, !tbaa !28, !alias.scope !412
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.c
  %i.w = load i8, ptr %i.i, align 8, !tbaa !414, !range !154, !noalias !412, !noundef !155
  %i.x = trunc nuw i8 %i.w to i1
  store i8 0, ptr %i.i, align 8, !tbaa !414, !noalias !412
  br i1 %i.x, label %bb.e, label %_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit.i.i.i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !21, !noalias !412 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.y) #18
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !28
  br label %_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i

_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit.i.i.i.i
  %i.aa = phi i32 [ %i.p, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit.i.i.i.i ], [ %i.p, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !412
  %i.ab = load ptr, ptr %5, align 8, !tbaa !21
  %i.ac = zext i32 %i.aa to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ac, 3
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, %i.ac            ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !22
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.a, i64 noundef %i.af, i64 noundef 8) #18
  %.pre8.pre.i.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !28
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i
  %.pre8.i.i.i.i.i = phi i32 [ %i.ad, %_ZN4mlir3scf10ParallelOp16getInductionVarsEv.exit.i.i.i ], [ %.pre8.pre.i.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i1.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i1.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i
  %i.aj = load ptr, ptr %6, align 8, !tbaa !21
  %i.ak = zext i32 %.pre8.i.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 8 %i.ab, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i2.i.i.i = load i32, ptr %i.b, align 8, !tbaa !28
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i.i: ; preds = %bb.h, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i
  %i.am = phi i32 [ %.pre8.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i.i.i ], [ %.pre.i.i2.i.i.i, %bb.h ]
  %i.an = add i32 %i.am, %i.aa
  store i32 %i.an, ptr %i.b, align 8, !tbaa !28
  %i.ao = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit.thread", label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i.i
  call void @free(ptr noundef %i.ao) #18
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit.thread"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit.thread": ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendERKS3_.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit": ; preds = %bb.b
  %15 = icmp ne ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %spec.select.i.i.i.i.i.not.i.i21 = or i1 %13, %15
  br i1 %spec.select.i.i.i.i.i.not.i.i21, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_1EERS6_OT_.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ar = load i32, ptr %i.aq, align 4            ; 3 uses
  %i.as = and i32 %i.ar, 8388607
  %i.at = icmp ne i32 %i.as, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = lshr i32 %i.ar, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.au, 1
  %i.av = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.av
  %i.ax = lshr i32 %i.ar, 21
  %i.ay = and i32 %i.ax, 2040
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !120
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !181
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bi, align 8 ; 2 uses
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !22
  %.not.i.i.i.i = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !61

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.0.0.copyload.i.i.i.i.i)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %6, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !28
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !28
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_1EERS6_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit"
  %.not23 = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  call void @llvm.assume(i1 %14)
  call void @llvm.assume(i1 %.not23)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.br = load i32, ptr %i.bq, align 4            ; 3 uses
  %i.bs = and i32 %i.br, 8388607
  %i.bt = icmp ne i32 %i.bs, 0
  call void @llvm.assume(i1 %i.bt)
  %i.bu = lshr i32 %i.br, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i26 = and i32 %i.bu, 1
  %i.bv = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i26 to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.bv
  %i.bx = lshr i32 %i.br, 21
  %i.by = and i32 %i.bx, 2040
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !120
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !178
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !181
  %.sroa.0.0.copyload.i.i.i.i.i27 = load ptr, ptr %i.ci, align 8 ; 2 uses
  %i.cj = load i32, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !22
  %.not.i.i.i.i28 = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i.i.i.i28, label %bb.n, label %bb.m, !prof !61

bb.m:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_1EERS6_OT_.exit"
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.0.0.copyload.i.i.i.i.i27)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"

bb.n:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_1EERS6_OT_.exit"
  %i.cl = zext i32 %i.cj to i64
  %i.cm = load ptr, ptr %6, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  store ptr %.sroa.0.0.copyload.i.i.i.i.i27, ptr %i.cn, align 1
  %i.co = load i32, ptr %i.b, align 8, !tbaa !28
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.b, align 8, !tbaa !28
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit": ; preds = %bb.k, %bb.l, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_0EERS6_OT_.exit.thread", %bb.m, %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %.01626, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZL35replaceIndexOpsByInductionVariablesRNS3_12RewriterBaseENS3_6linalg8LinalgOpENS_8ArrayRefIS5_EEE3$_2EERS6_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.cr = getelementptr i8, ptr %i.d, i64 -8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ct = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.cs)
  br label %_ZN4llvm4castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm4castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %._crit_edge, %bb.o
  %i.cu = phi ptr [ %i.ct, %bb.o ], [ null, %._crit_edge ]
  store ptr %i.cs, ptr %7, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cu, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN4mlir19LoopLikeOpInterface14getLoopRegionsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.590") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  %i.cw = load ptr, ptr %8, align 8, !tbaa !21    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx35 = shl nuw nsw i64 %i.cz, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx35
  %.not1731 = icmp eq i32 %i.cy, 0
  br i1 %.not1731, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %_ZN4llvm4castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %.sroa.6.64..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 48
  br label %bb.q

._crit_edge34.loopexit:                           ; preds = %._crit_edge30
  %.pre = load ptr, ptr %8, align 8, !tbaa !21
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %_ZN4llvm4castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit
  %i.de = phi ptr [ %.pre, %._crit_edge34.loopexit ], [ %i.cw, %_ZN4llvm4castIN4mlir19LoopLikeOpInterfaceENS1_9OperationEEEDcPT0_.exit ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge34
  call void @free(ptr noundef %i.de) #18
  br label %_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit: ; preds = %._crit_edge34, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %._crit_edge.thread

bb.q:                                             ; preds = %.lr.ph33, %._crit_edge30
  %.032 = phi ptr [ %i.cw, %.lr.ph33 ], [ %i.dj, %._crit_edge30 ] ; 2 uses
  %i.dh = load ptr, ptr %.032, align 8, !tbaa !415
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZN4mlir6Region6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.602") align 8 %9, ptr noundef nonnull align 8 dereferenceable(28) %i.dh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false)
  %.sroa.6.64.copyload = load ptr, ptr %.sroa.6.64..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.02, i64 64, i1 false)
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !183 ; 2 uses
  %.not2427 = icmp eq ptr %i.di, %.sroa.6.64.copyload
  br i1 %.not2427, label %._crit_edge30, label %.lr.ph29

._crit_edge30:                                    ; preds = %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  %i.dj = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.dj, %i.da
  br i1 %.not17, label %._crit_edge34.loopexit, label %bb.q

.lr.ph29:                                         ; preds = %bb.q, %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit
  %i.dk = phi ptr [ %i.ed, %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit ], [ %i.di, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8
  %i.dl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #18, !noalias !416 ; 0 uses
  %i.dm = load ptr, ptr %i.db, align 8, !tbaa !183, !noalias !416 ; 2 uses
  %i.dn = load ptr, ptr %i.dc, align 8, !tbaa !183, !noalias !416
  %.not1.i.i.i.i.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph29, %bb.r
  %i.do = phi ptr [ %i.dt, %bb.r ], [ %i.dm, %.lr.ph29 ]
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !189, !noalias !416
  %i.dq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.do) #18, !noalias !416
  %i.dr = call noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(64) %i.dq) #18, !noalias !416, !inline_history !410
  br i1 %i.dr, label %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ds = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #18, !noalias !416 ; 0 uses
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !183, !noalias !416 ; 2 uses
  %i.du = load ptr, ptr %i.dc, align 8, !tbaa !183, !noalias !416
  %.not.i.i.i.i.i29 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i.i29, label %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS1_6Region10OpIteratorEEEEdeEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.r, %.lr.ph29
  %i.dv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.dk) #18
  %i.dw = call ptr %.sroa.41.0.copyload.i(ptr noundef nonnull align 8 dereferenceable(64) %i.dv) #18, !inline_history !411 ; 2 uses
  store ptr %i.dw, ptr %11, align 8
  %i.dx = call noundef i64 @_ZN4mlir6linalg7IndexOp6getDimEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %i.dy = load ptr, ptr %6, align 8, !tbaa !21
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = load ptr, ptr %0, align 8, !tbaa !24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.dw, i64 %i.ea, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ed = load ptr, ptr %i.db, align 8, !tbaa !183 ; 2 uses
  %.not24 = icmp eq ptr %i.ed, %.sroa.6.64.copyload
  br i1 %.not24, label %._crit_edge30, label %.lr.ph29

._crit_edge.thread:                               ; preds = %bb.a, %_ZN4llvm11SmallVectorIPN4mlir6RegionELj6EED2Ev.exit
  %i.ee = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.a
  br i1 %i.ef, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  call void @free(ptr noundef %i.ee) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %._crit_edge.thread, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFNS_11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS2_10ValueRangeES8_EE11callback_fnIZL19linalgOpToLoopsImplINS2_6affine11AffineForOpEENS_9FailureOrINS1_IPNS2_9OperationELj4EEEEERNS2_12RewriterBaseENS2_6linalg8LinalgOpEEUlS6_S7_S8_S8_E_EES4_lS6_S7_S8_S8_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.412") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %6) #0 align 2 {
bb.a:
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::IRMapping", align 8   ; 20 uses
  %9 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %10 = alloca %"class.mlir::linalg::LinalgOp", align 16 ; 10 uses
  %11 = alloca %"class.llvm::SmallVector.412", align 8 ; 15 uses
  %12 = alloca %"class.llvm::SmallVector.412", align 8 ; 12 uses
  %13 = alloca %"class.llvm::SmallVector.447", align 8 ; 7 uses
  %14 = alloca %"class.llvm::SmallVector.412", align 8 ; 7 uses
  %15 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %16 = alloca %"class.mlir::MutableOperandRange", align 8 ; 7 uses
  %17 = alloca %"class.llvm::SmallVector.412", align 8 ; 7 uses
  %18 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.481", align 8 ; 14 uses
  %20 = alloca %"class.llvm::SmallVector.412", align 8 ; 10 uses
  %21 = alloca %"class.mlir::MutableOperandRange", align 8 ; 7 uses
  %22 = alloca %"class.llvm::SmallVector.412", align 8 ; 10 uses
  %23 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !441, !noalias !439, !nonnull !155, !align !175 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir6Region6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv:bb.a
bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !183
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.o, align 8, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !183  ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !183
  %.not1.i.i.i.i1 = icmp eq ptr %i.r, %i.s
  br i1 %.not1.i.i.i.i1, label %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.r, %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit ]
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #18
  %i.w = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #18, !inline_history !484
  br i1 %i.w, label %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #18 ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !183  ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !183
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2, !llvm.loop !4

_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4: ; preds = %.lr.ph.i.i.i.i2, %bb.c, %_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEEC2ES5_S5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4mlir6detail11op_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN4mlir6detail11op_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare noundef i64 @_ZN4mlir6linalg7IndexOp6getDimEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4mlir3scf10ParallelOp20getLoopInductionVarsEv(ptr dead_on_unwind writable sret(%"class.std::optional.659") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !121 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !156

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 25) #18
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !19 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !3

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_19LoopLikeOpInterfaceEPNS_9OperationENS0_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !123
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !158  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !156

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 25) #18
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !19
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #18, !inline_history !485
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
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !156

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 25) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !19
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #18, !inline_history !485
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_19LoopLikeOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19LoopLikeOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18op_filter_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEE6filterERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7IndexOpEvE2idE
  %1 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7IndexOpEvE2idE
  %spec.select.i.i.i.i = and i1 %1, %i.d
  ret i1 %spec.select.i.i.i.i
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail11op_iteratorINS_6linalg7IndexOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #18
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !207
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !207
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !22
  store i32 0, ptr %i.j, align 8, !tbaa !28
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !221

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.t, ptr %i.s, align 8, !tbaa !60
  br label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !28
  store i32 0, ptr %i.m, align 8, !tbaa !28
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #18
  br label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !136

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.z, ptr %i.y, align 8, !tbaa !60
  br label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !28
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !28
  store i32 0, ptr %i.m, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit
  ret ptr %0
}

declare void @_ZN4mlir6linalg16GenerateLoopNestINS_3scf5ForOpEE4doitERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefINS_5RangeEEENS0_8LinalgOpENS9_INS_5utils12IteratorTypeEEENS8_12function_refIFNS8_11SmallVectorINS_5ValueELj6EEES6_S7_NS_10ValueRangeESK_EEENS9_INS0_8ProcInfoEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, ptr, ptr, ptr noundef byval(%"class.llvm::ArrayRef.418") align 8, ptr noundef byval(%"class.llvm::function_ref.419") align 8, ptr noundef byval(%"class.llvm::ArrayRef.420") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFNS_11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_8LocationENS2_10ValueRangeES8_EE11callback_fnIZL19linalgOpToLoopsImplINS2_3scf5ForOpEENS_9FailureOrINS1_IPNS2_9OperationELj4EEEEERNS2_12RewriterBaseENS2_6linalg8LinalgOpEEUlS6_S7_S8_S8_E_EES4_lS6_S7_S8_S8_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.412") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %6) #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !490, !noalias !488, !nonnull !155, !align !175 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28, !noalias !488 ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %5, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22, !noalias !488
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #18, !noalias !488
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !28, !noalias !488 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.a ], [ %.pre28.i.i, %bb.b ]
  %i.l = phi i32 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !21, !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !488
  store i64 %4, ptr %7, align 8, !noalias !488
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8, !noalias !488
  %.not5.i.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZZL19linalgOpToLoopsImplIN4mlir3scf5ForOpEEN4llvm9FailureOrINS3_11SmallVectorIPNS0_9OperationELj4EEEEERNS0_12RewriterBaseENS0_6linalg8LinalgOpEENKUlRNS0_9OpBuilderENS0_8LocationENS0_10ValueRangeESH_E_clESF_SG_SH_SH_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %i.p = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ]
  %.06.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.q = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.p) #18, !noalias !488
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !44, !noalias !488
  %i.s = load i64, ptr %i.n, align 8, !tbaa !198, !noalias !488
  %i.t = add nsw i64 %i.s, 1                      ; 3 uses
  store i64 %i.t, ptr %i.n, align 8, !tbaa !198, !noalias !488
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.t, %5
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.c, align 8, !tbaa !28, !noalias !488
  br label %_ZZL19linalgOpToLoopsImplIN4mlir3scf5ForOpEEN4llvm9FailureOrINS3_11SmallVectorIPNS0_9OperationELj4EEEEERNS0_12RewriterBaseENS0_6linalg8LinalgOpEENKUlRNS0_9OpBuilderENS0_8LocationENS0_10ValueRangeESH_E_clESF_SG_SH_SH_.exit

_ZZL19linalgOpToLoopsImplIN4mlir3scf5ForOpEEN4llvm9FailureOrINS3_11SmallVectorIPNS0_9OperationELj4EEEEERNS0_12RewriterBaseENS0_6linalg8LinalgOpEENKUlRNS0_9OpBuilderENS0_8LocationENS0_10ValueRangeESH_E_clESF_SG_SH_SH_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i
  %i.v = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i ], [ %i.l, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !488
  %i.w = trunc i64 %5 to i32
  %i.x = add i32 %i.v, %i.w
  store i32 %i.x, ptr %i.c, align 8, !tbaa !28, !noalias !488
end_hunk_1
