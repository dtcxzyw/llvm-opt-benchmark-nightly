Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SCFToSPIRV?download=true
inline.NumInlined: 2573
inline.NumDeleted: 1480
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4mlir14RewritePatternD2Ev:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117WhileOpConversionD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #15
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_3scf7WhileOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_5ValueEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::scf::WhileOpAdaptor", align 8 ; 3 uses
  %6 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load <2 x i64>, ptr %6, align 16
  call void @_ZN4mlir3scf6detail25WhileOpGenericAdaptorBaseC2ENS0_7WhileOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #15
  store <2 x i64> %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::scf::WhileOpAdaptor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_3scf7WhileOpEE15matchAndRewriteEPNS_9OperationEN4llvm8ArrayRefINS_10ValueRangeEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::scf::WhileOpGenericAdaptor.937", align 8 ; 4 uses
  call void @_ZN4mlir3scf6detail25WhileOpGenericAdaptorBaseC2ENS0_7WhileOpE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60
  %i.b = load ptr, ptr %0, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::scf::WhileOpGenericAdaptor.937") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_117WhileOpConversion15matchAndRewriteEN4mlir3scf7WhileOpENS2_14WhileOpAdaptorERNS1_25ConversionPatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr %1, ptr noundef byval(%"class.mlir::scf::WhileOpAdaptor") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca %"class.std::optional.381", align 8 ; 4 uses
  %7 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %8 = alloca %class.anon.993, align 8            ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::spirv::LoopControlAttr", align 8 ; 4 uses
  %11 = alloca %"class.mlir::spirv::LoopOp", align 8 ; 10 uses
  %12 = alloca %"class.mlir::scf::ConditionOp", align 8 ; 9 uses
  %13 = alloca %"class.llvm::SmallVector.508", align 8 ; 10 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %15 = alloca %"class.mlir::scf::YieldOp", align 8 ; 6 uses
  %16 = alloca %"class.llvm::SmallVector.508", align 8 ; 9 uses
  %17 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %18 = alloca %"class.llvm::SmallVector.508", align 8 ; 11 uses
  %19 = alloca %"class.mlir::ValueRange", align 8 ; 4 uses
  %20 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.b = tail call { ptr, i64 } @_ZN4mlir5spirv22getLoopControlAttrNameEv() #15 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not.i.i = icmp ult i32 %i.f, 16777216
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.c, i64 %i.d) #15 ; 2 uses
  %i.h = extractvalue { ptr, i8 } %i.g, 0
  %i.i = extractvalue { ptr, i8 } %i.g, 1
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = tail call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr %i.c, i64 %i.d) #15
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.05.1.i.i = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.05.1.i.i, null
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation13getAttrOfTypeINS_5spirv15LoopControlAttrEEET_N4llvm9StringRefE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i
  %i.m = load ptr, ptr %.sroa.05.1.i.i, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.o = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5spirv15LoopControlAttrEvE2idE
  br i1 %i.o, label %bb.e, label %_ZN4mlir9Operation13getAttrOfTypeINS_5spirv15LoopControlAttrEEET_N4llvm9StringRefE.exit.thread

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.05.1.i.i, ptr %10, align 8
  %i.p = call noundef i32 @_ZNK4mlir5spirv15LoopControlAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  br label %_ZN4mlir9Operation13getAttrOfTypeINS_5spirv15LoopControlAttrEEET_N4llvm9StringRefE.exit.thread

_ZN4mlir9Operation13getAttrOfTypeINS_5spirv15LoopControlAttrEEET_N4llvm9StringRefE.exit.thread: ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i, %bb.d, %bb.e
  %.0 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.r = call ptr @_ZN4mlir5spirv6LoopOp6createERNS_9OpBuilderENS_8LocationENS0_11LoopControlE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i, i32 noundef %.0) #15
  store ptr %i.r, ptr %11, align 8
  call void @_ZN4mlir5spirv6LoopOp21addEntryAndMergeBlockERNS_9OpBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #15
  %i.s = load i32, ptr %i.e, align 4              ; 3 uses
  %i.t = and i32 %i.s, 8388607
  %i.u = icmp ne i32 %i.t, 0
  call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = lshr i32 %i.s, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x
  %i.z = lshr i32 %i.s, 21
  %i.aa = and i32 %i.z, 2040
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !106
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !434, !nonnull !133, !align !149
  %i.an = call { ptr, i8 } @_ZN4mlir25ConversionPatternRewriter18convertRegionTypesEPNS_6RegionERKNS_13TypeConverterEPNS3_19SignatureConversionE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(508) %i.am, ptr noundef null) #15
  %i.ao = extractvalue { ptr, i8 } %i.an, 1
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4mlir9Operation13getAttrOfTypeINS_5spirv15LoopControlAttrEEET_N4llvm9StringRefE.exit.thread
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !434, !nonnull !133, !align !149
  %i.ar = call { ptr, i8 } @_ZN4mlir25ConversionPatternRewriter18convertRegionTypesEPNS_6RegionERKNS_13TypeConverterEPNS3_19SignatureConversionE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(508) %i.aq, ptr noundef null) #15
  %i.as = extractvalue { ptr, i8 } %i.ar, 1
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %.critedge

.critedge:                                        ; preds = %_ZN4mlir9Operation13getAttrOfTypeINS_5spirv15LoopControlAttrEEET_N4llvm9StringRefE.exit.thread, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !144
  store ptr @.str.21, ptr %9, align 8, !tbaa !145
  store i8 3, ptr %i.au, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %9, ptr %8, align 8, !tbaa !147
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !148 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ay = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #15
  br i1 %i.ay, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8
  %i.az = ptrtoint ptr %8 to i64
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3scf7WhileOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.az) #15, !inline_history !423
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %.critedge, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !88
  %i.bh = call noundef ptr @_ZN4mlir5spirv6LoopOp13getEntryBlockEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !107 ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 3 uses
  %i.bo = call noundef ptr @_ZN4mlir5spirv6LoopOp13getMergeBlockEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.bp = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bk) #15
  store ptr %i.bp, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.bq, ptr %13, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i32 0, ptr %i.br, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.bs, align 4, !tbaa !63
  %i.bt = call i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1) #15 ; 3 uses
  %i.bu = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir3scf11ConditionOp7getArgsEv.exit, label %bb.i, !prof !134

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162
  br label %_ZN4mlir3scf11ConditionOp7getArgsEv.exit

_ZN4mlir3scf11ConditionOp7getArgsEv.exit:         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bz, %bb.i ], [ null, %bb.h ]
  %i.ca = and i64 %i.bt, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.bt, 32
  %i.cb = add i64 %.sroa.5.0.extract.shift.i.i, %i.bt
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.ca
  %i.ce = sub nsw i64 %i.cc, %i.ca
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr %i.cd, i64 %i.ce) #15
  %i.cf = load i64, ptr %14, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = call i8 @_ZN4mlir25ConversionPatternRewriter17getRemappedValuesENS_10ValueRangeERN4llvm15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %i.cf, i64 %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %13) #15
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.j, label %bb.s

bb.j:                                             ; preds = %_ZN4mlir3scf11ConditionOp7getArgsEv.exit
  %i.ck = call i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #15
  %i.cl = load ptr, ptr %12, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !162
  %i.co = and i64 %i.ck, 4294967295
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.0.0.copyload.i.i.i.i82 = load ptr, ptr %i.cq, align 8, !tbaa !123
  %i.cr = call ptr @_ZN4mlir25ConversionPatternRewriter16getRemappedValueENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.sroa.0.0.copyload.i.i.i.i82) #15 ; 2 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.cs = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bn) #15
  store ptr %i.cs, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ct, ptr %16, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.cu, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 6, ptr %i.cv, align 4, !tbaa !63
  %i.cw = call i64 @_ZN4mlir3scf7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0) #15 ; 3 uses
  %i.cx = load ptr, ptr %15, align 8, !tbaa !89   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = and i32 %i.cz, 8388608
  %.not.i.i.i.i.i83 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i.i83, label %_ZN4mlir3scf7YieldOp10getResultsEv.exit, label %bb.l, !prof !134

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !162
  br label %_ZN4mlir3scf7YieldOp10getResultsEv.exit

_ZN4mlir3scf7YieldOp10getResultsEv.exit:          ; preds = %bb.k, %bb.l
  %.sroa.0.0.i.i.i.i.i84 = phi ptr [ %i.dc, %bb.l ], [ null, %bb.k ]
  %i.dd = and i64 %i.cw, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i85 = lshr i64 %i.cw, 32
  %i.de = add i64 %.sroa.5.0.extract.shift.i.i85, %i.cw
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i84, i64 %i.dd
  %i.dh = sub nsw i64 %i.df, %i.dd
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.dg, i64 %i.dh) #15
  %i.di = load i64, ptr %17, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = call i8 @_ZN4mlir25ConversionPatternRewriter17getRemappedValuesENS_10ValueRangeERN4llvm15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %i.di, i64 %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %16) #15
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZN12_GLOBAL__N_110getBlockItERN4mlir6RegionEj.exit, label %bb.q

_ZN12_GLOBAL__N_110getBlockItERN4mlir6RegionEj.exit: ; preds = %_ZN4mlir3scf7YieldOp10getResultsEv.exit
  %i.dn = load ptr, ptr %11, align 8, !tbaa !89   ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  %i.dp = load i32, ptr %i.do, align 4            ; 3 uses
  %i.dq = and i32 %i.dp, 8388607
  %i.dr = icmp ne i32 %i.dq, 0
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dt = lshr i32 %i.dp, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i88 = and i32 %i.dt, 1
  %i.du = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i88 to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.du
  %i.dw = lshr i32 %i.dp, 21
  %i.dx = and i32 %i.dw, 2040
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !106
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.dz, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %.val79 = load ptr, ptr %i.ee, align 8, !tbaa !107
  %i.ef = getelementptr inbounds nuw i8, ptr %.val79, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !107
  call void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull align 8 dereferenceable(28) %i.ed, ptr %i.eg) #15
  %i.eh = load ptr, ptr %11, align 8, !tbaa !89   ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  %i.ej = load i32, ptr %i.ei, align 4            ; 3 uses
  %i.ek = and i32 %i.ej, 8388607
  %i.el = icmp ne i32 %i.ek, 0
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.en = lshr i32 %i.ej, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i90 = and i32 %i.en, 1
  %i.eo = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i90 to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.eo
  %i.eq = lshr i32 %i.ej, 21
  %i.er = and i32 %i.eq, 2040
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !106
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.ew ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %.val = load ptr, ptr %i.ey, align 8, !tbaa !107
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !107
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !107
  call void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.ak, ptr noundef nonnull align 8 dereferenceable(28) %i.ex, ptr %i.fc) #15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !88
  store ptr %i.fd, ptr %i.be, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !117
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = call i64 @_ZN4mlir3scf6detail25WhileOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.fg) #15 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.fi, align 8 ; 2 uses
  %i.fj = and i64 %i.fh, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %7, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.fj, ptr %i.fk, align 8
  %i.fl = icmp eq i64 %i.fj, 0
  br i1 %i.fl, label %_ZN4mlir3scf21WhileOpGenericAdaptorINS_10ValueRangeEE8getInitsEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_110getBlockItERN4mlir6RegionEj.exit
  %i.fm = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.fj) #15
  %.pre.i.i.i.i = load i64, ptr %i.fk, align 8, !tbaa !119
  br label %_ZN4mlir3scf21WhileOpGenericAdaptorINS_10ValueRangeEE8getInitsEv.exit

_ZN4mlir3scf21WhileOpGenericAdaptorINS_10ValueRangeEE8getInitsEv.exit: ; preds = %_ZN12_GLOBAL__N_110getBlockItERN4mlir6RegionEj.exit, %bb.m
  %i.fn = phi i64 [ %.pre.i.i.i.i, %bb.m ], [ 0, %_ZN12_GLOBAL__N_110getBlockItERN4mlir6RegionEj.exit ]
  %.sroa.0.0.i.i.i.i.i95 = phi i64 [ %i.fm, %bb.m ], [ %.sroa.0.0.copyload.i13.i.i, %_ZN12_GLOBAL__N_110getBlockItERN4mlir6RegionEj.exit ]
  %.sroa.5.0.extract.shift.i.i96 = lshr i64 %i.fh, 32
  %i.fo = add i64 %.sroa.5.0.extract.shift.i.i96, %i.fh
  %i.fp = and i64 %i.fo, 4294967295
  %i.fq = sub nsw i64 %i.fp, %i.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fr = call ptr @_ZN4mlir5spirv8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull %i.bk, i64 %.sroa.0.0.i.i.i.i.i95, i64 %i.fq) #15 ; 0 uses
  %i.fs = load ptr, ptr %12, align 8, !tbaa !89
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %.sroa.0.0.copyload.i.i99 = load ptr, ptr %i.ft, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.fu = load i32, ptr %i.br, align 8, !tbaa !62 ; 5 uses
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.fw, ptr %18, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i32 0, ptr %i.fx, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 6, ptr %i.fy, align 4, !tbaa !63
  %i.fz = icmp eq i32 %i.fu, 0
  br i1 %i.fz, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir3scf21WhileOpGenericAdaptorINS_10ValueRangeEE8getInitsEv.exit
  %i.ga = icmp ugt i32 %i.fu, 6
  br i1 %i.ga, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %bb.n
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.fw, i64 noundef %i.fv, i64 noundef 8) #15
  %.pre.i.i.i = load i32, ptr %i.fx, align 8, !tbaa !62 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.fu, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2Em.exit, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !27
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.n
  %i.gb = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.fw, %bb.n ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.n ] ; 2 uses
  %i.gc = getelementptr [8 x i8], ptr %i.gb, i64 %.pre-phi.i.i3.i
  %i.gd = sub nsw i64 %i.fv, %.pre-phi.i.i3.i
  %i.ge = shl nsw i64 %i.gd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gc, i8 0, i64 %i.ge, i1 false), !tbaa !127
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2Em.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  store i32 %i.fu, ptr %i.fx, align 8, !tbaa !62
  %.pre = load i32, ptr %i.br, align 8, !tbaa !62, !noalias !435 ; 2 uses
  %i.gf = load ptr, ptr %13, align 8, !tbaa !27, !noalias !436 ; 2 uses
  %i.gg = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.gg, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx
  %.not142144 = icmp eq i32 %.pre, 0
  br i1 %.not142144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2Em.exit
  %21 = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %_ZN4mlir3scf21WhileOpGenericAdaptorINS_10ValueRangeEE8getInitsEv.exit, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2Em.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !88
  store ptr %i.gi, ptr %i.be, align 8
  %i.gj = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr null, i64 0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %.sroa.0.0.copyload.i.i100 = load ptr, ptr %i.gk, align 8
  %i.gl = load ptr, ptr %13, align 8, !tbaa !27
  %i.gm = load i32, ptr %i.br, align 8, !tbaa !62
  %i.gn = zext i32 %i.gm to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.gl, i64 %i.gn) #15
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.go, align 8, !tbaa !125
  %i.gp = load i64, ptr %5, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = call ptr @_ZN4mlir5spirv19BranchConditionalOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEPNS_5BlockENS_10ValueRangeES7_S8_St8optionalISt4pairIjjEE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i100, ptr nonnull %i.cr, ptr noundef nonnull %i.bn, i64 %i.gp, i64 %i.gr, ptr noundef %i.bo, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %19, ptr noundef nonnull byval(%"class.std::optional.381") align 8 %6) #15
  %i.gt = load ptr, ptr %3, align 8, !tbaa !59
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.gj, ptr noundef %i.gs) #15, !inline_history !432
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bn, ptr %i.bd, align 8, !tbaa !88
  store ptr %i.gw, ptr %i.be, align 8
  %i.gx = load ptr, ptr %15, align 8, !tbaa !89   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %.sroa.0.0.copyload.i.i101 = load ptr, ptr %i.gy, align 8
  %i.gz = load ptr, ptr %16, align 8, !tbaa !27
  %i.ha = load i32, ptr %i.cu, align 8, !tbaa !62
  %i.hb = zext i32 %i.ha to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.gz, i64 %i.hb) #15
  %i.hc = load i64, ptr %4, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = call ptr @_ZN4mlir5spirv8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i101, ptr noundef nonnull %i.bk, i64 %i.hc, i64 %i.he) #15
  %i.hg = load ptr, ptr %3, align 8, !tbaa !59
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.gx, ptr noundef %i.hf) #15, !inline_history !433
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hj = load ptr, ptr %18, align 8, !tbaa !27
  %i.hk = load i32, ptr %i.fx, align 8, !tbaa !62
  %i.hl = zext i32 %i.hk to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr %i.hj, i64 %i.hl) #15
  %i.hm = load i64, ptr %20, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ho = load i64, ptr %i.hn, align 8
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %1, i64 %i.hm, i64 %i.ho) #15
  %i.hp = load ptr, ptr %18, align 8, !tbaa !27   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.fw
  br i1 %i.hq, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.hp) #15
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.7.0146 = phi i64 [ 0, %.lr.ph ], [ %i.io, %bb.p ] ; 2 uses
  %.sroa.0120.0145 = phi ptr [ %i.gf, %.lr.ph ], [ %i.ip, %bb.p ] ; 2 uses
  %i.hr = load i64, ptr %.sroa.0120.0145, align 8, !tbaa !123
  %i.hs = inttoptr i64 %i.hr to ptr               ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ht, align 8
  %i.hu = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.hv = inttoptr i64 %i.hu to ptr
  %i.hw = call ptr @_ZN4mlir5spirv11PointerType3getENS_4TypeENS0_12StorageClassE(ptr %i.hv, i32 noundef 7) #15
  %i.hx = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !108
  %i.ia = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.hx) #15
  store ptr %i.hz, ptr %i.bd, align 8, !tbaa !88
  store ptr %i.ia, ptr %i.be, align 8
  %i.ib = call ptr @_ZN4mlir5spirv10VariableOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS0_12StorageClassENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i99, ptr %i.hw, i32 noundef 7, ptr null) #15
  %i.ic = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !108
  %i.if = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.ic) #15
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !107
  store ptr %i.ie, ptr %i.bd, align 8, !tbaa !88
  store ptr %i.ih, ptr %i.be, align 8
  %i.ii = getelementptr inbounds i8, ptr %i.ib, i64 -16 ; 2 uses
  %i.ij = call ptr @_ZN4mlir5spirv6LoadOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS0_16MemoryAccessAttrENS_11IntegerAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i99, ptr nonnull %i.ii, ptr null, ptr null) #15
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -16
  %i.il = load ptr, ptr %18, align 8, !tbaa !27
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.7.0146
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !123
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !88
  store ptr %21, ptr %i.be, align 8
  %i.in = call ptr @_ZN4mlir5spirv7StoreOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr %.sroa.0.0.copyload.i.i99, ptr nonnull %i.ii, ptr %i.hs, ptr null, i64 0) #15 ; 0 uses
  %i.io = add nuw nsw i64 %.sroa.7.0146, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0120.0145, i64 8 ; 2 uses
  %.not142 = icmp eq ptr %i.ip, %i.gh
  br i1 %.not142, label %._crit_edge, label %bb.p

bb.q:                                             ; preds = %_ZN4mlir3scf7YieldOp10getResultsEv.exit, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  %.sroa.078.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit ], [ 0, %_ZN4mlir3scf7YieldOp10getResultsEv.exit ]
  %i.iq = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ct
  br i1 %i.ir, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit102, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.iq) #15
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit102

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit102: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit102, %bb.j, %_ZN4mlir3scf11ConditionOp7getArgsEv.exit
  %.sroa.078.2 = phi i8 [ 0, %_ZN4mlir3scf11ConditionOp7getArgsEv.exit ], [ %.sroa.078.0, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit102 ], [ 0, %bb.j ] ; 2 uses
  %i.is = load ptr, ptr %13, align 8, !tbaa !27   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.bq
  br i1 %i.it, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.is) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %.not.i.i105 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i105, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store <2 x ptr> %i.bf, ptr %i.bd, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.w, %bb.v, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.078.3 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ %.sroa.078.2, %bb.v ], [ %.sroa.078.2, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  ret i8 %.sroa.078.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_3scf7WhileOpEE15matchAndRewriteES2_NS1_21WhileOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::scf::WhileOpGenericAdaptor.937") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3scf7WhileOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::scf::WhileOpGenericAdaptor.937") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir3scf6detail25WhileOpGenericAdaptorBaseC2ENS0_7WhileOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #6

declare { ptr, i8 } @_ZN4mlir25ConversionPatternRewriter18convertRegionTypesEPNS_6RegionERKNS_13TypeConverterEPNS3_19SignatureConversionE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(508), ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir5spirv6LoopOp13getEntryBlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare i8 @_ZN4mlir25ConversionPatternRewriter17getRemappedValuesENS_10ValueRangeERN4llvm15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(48), i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

declare ptr @_ZN4mlir25ConversionPatternRewriter16getRemappedValueENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3scf7WhileOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !438, !nonnull !133, !align !149
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #15 ; 0 uses
  ret void
}

declare i64 @_ZN4mlir3scf11ConditionOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare i64 @_ZN4mlir3scf7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare i64 @_ZN4mlir3scf6detail25WhileOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_3scf7WhileOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::scf::WhileOpGenericAdaptor.937") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.993, align 8            ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.mlir::scf::WhileOpAdaptor", align 8 ; 3 uses
  %9 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60
  call void @_ZNK4mlir17ConversionPattern26getOneToOneAdaptorOperandsEN4llvm8ArrayRefINS_10ValueRangeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #15
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !140, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.e, align 8, !tbaa !61
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !143, !alias.scope !446
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !144, !alias.scope !446
  store ptr @.str.6, ptr %7, align 8, !tbaa !145, !alias.scope !446
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.0.0.copyload.i10, ptr %i.h, align 8, !tbaa !145, !alias.scope !446
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.2.0.copyload.i12, ptr %i.i, align 8, !tbaa !145, !alias.scope !446
  store ptr %7, ptr %6, align 8, !alias.scope !447
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.7, ptr %i.j, align 8, !alias.scope !447
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !143, !alias.scope !447
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !144, !alias.scope !447
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %6, ptr %4, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !148  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.o = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #15
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = ptrtoint ptr %4 to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_3scf7WhileOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.q) #15, !inline_history !445
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %5, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !62
  %i.x = zext i32 %i.w to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.u, i64 %i.x) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::scf::WhileOpAdaptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.09.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_3scf7WhileOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ %i.ad, %bb.c ]
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !140, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.b, align 8, !tbaa !140
  br i1 %i.af, label %bb.e, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ag) #15
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i8 %.sroa.09.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
