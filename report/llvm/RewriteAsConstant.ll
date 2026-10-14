Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RewriteAsConstant?download=true
inline.NumInlined: 1545
inline.NumDeleted: 1090
begin_hunk_0_@_ZN4mlir14RewritePatternD2Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN4mlir6tensor5PadOp9getNofoldEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.255, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !52
  %i.c = load i8, ptr %2, align 1, !tbaa !53
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %4, align 8, !tbaa !53
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.a, %bb.b
  %storemerge.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge.i, ptr %i.a, align 8, !tbaa !54
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %4, ptr %3, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.g = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #17
  br i1 %i.g, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = ptrtoint ptr %3 to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6tensor5PadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.i) #17, !inline_history !199
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6tensor5PadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i8 0
}

declare ptr @_ZN4mlir6tensor5PadOp23getConstantPaddingValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir20getConstantIntValuesEN4llvm8ArrayRefINS_12OpFoldResultEEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeENS3_5ValueEEES4_E4CaseIZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS3_6tensor5PadOpERNS3_15PatternRewriterEEUlNS3_9FloatAttrEE_EERS6_OT_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.363", align 8 ; 6 uses
  %3 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 6 uses
  %4 = alloca %"class.mlir::FloatAttr", align 8   ; 4 uses
  %5 = alloca %"class.llvm::FailureOr", align 8   ; 6 uses
  %6 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.208", align 8 ; 11 uses
  %8 = alloca %"class.llvm::SmallVector.308", align 8 ; 12 uses
  %9 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.208", align 8 ; 8 uses
  %11 = alloca %"struct.llvm::detail::zip_enumerator", align 8 ; 7 uses
  %12 = alloca %"struct.llvm::detail::enumerator_result", align 8 ; 8 uses
  %13 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !66, !range !63, !noundef !64
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN4llvm10TypeSwitchIN4mlir9AttributeENS1_5ValueEE4CaseINS1_9FloatAttrEZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS1_6tensor5PadOpERNS1_15PatternRewriterEEUlS6_E_EERS4_OT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %i.e = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE
  br i1 %i.g, label %bb.c, label %_ZN4llvm10TypeSwitchIN4mlir9AttributeENS1_5ValueEE4CaseINS1_9FloatAttrEZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS1_6tensor5PadOpERNS1_15PatternRewriterEEUlS6_E_EERS4_OT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !64, !align !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214, !nonnull !64, !align !74
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !215, !nonnull !64, !align !74
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !216, !nonnull !64, !align !74 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217, !nonnull !64, !align !74 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 6 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.01.0.copyload.i.i, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNK4mlir17DenseElementsAttr17tryGetFloatValuesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !219, !range !63, !noundef !64
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %_ZZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteEN4mlir6tensor5PadOpERNS1_15PatternRewriterEENKUlNS1_9FloatAttrEE_clES6_.exit.i

bb.d:                                             ; preds = %bb.c
  %.fr.i.i = freeze i32 %i.y
  %i.ac = zext i32 %.fr.i.i to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ad = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  store ptr %i.ae, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  %.fr47.i.i.i = freeze { ptr, i64 } %i.ah        ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %.fr47.i.i.i, 0 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = extractvalue { ptr, i64 } %.fr47.i.i.i, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %.idx.i.i.i.i = shl i64 %i.ak, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !30, !alias.scope !220
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !23, !alias.scope !220
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.aq, align 4, !tbaa !24, !alias.scope !220
  %i.ar = icmp eq i64 %i.ak, 0
  br i1 %i.ar, label %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i:                 ; preds = %bb.d
  %umin.i.i = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.s) ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.preheader.i.i
  %i.as = phi ptr [ %i.at, %bb.e ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.preheader.i.i ]
  %.02.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %exitcond.i.i = icmp eq i64 %.02.i.i.i.i.i.i.i.i, %umin.i.i
  br i1 %exitcond.i.i, label %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = add nuw nsw i64 %.02.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.al
  br i1 %i.av, label %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !204

_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %umin.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.au, %bb.e ] ; 3 uses
  %i.aw = icmp ugt i64 %.0.lcssa.i.i.i.i.i.i.i.i, 6
  br i1 %i.aw, label %bb.f, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.ao, i64 noundef %.0.lcssa.i.i.i.i.i.i.i.i, i64 noundef 8) #17
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !23, !alias.scope !220
  %.pre.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !30, !alias.scope !220
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %i.ao, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ay = phi i32 [ 0, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_7APFloatEN4mlir9FloatAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az ; 4 uses
  %i.bb = add i64 %.idx.i.i.i.i, -8
  %i.bc = lshr exact i64 %i.bb, 3
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.ac)
  %i.be = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.s) ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.be, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i
  %i.bg = ptrtoaddr ptr %i.ax to i64
  %i.bh = shl nuw nsw i64 %i.az, 3
  %i.bi = add i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = sub i64 %i.w, %i.bi
  %diff.check = icmp ugt i64 %i.bj, -32
  %i.bk = sub i64 %i.p, %i.bi
  %diff.check13 = icmp ugt i64 %i.bk, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  %i.bl = sub i64 %i.aj, %i.bi
  %diff.check14 = icmp ugt i64 %i.bl, -32
  %conflict.rdx15 = or i1 %conflict.rdx, %diff.check14
  br i1 %conflict.rdx15, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = and i64 %i.bf, 3                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = select i1 %i.bn, i64 4, i64 %i.bm
  %n.vec = sub nsw i64 %i.bf, %i.bo               ; 2 uses
  %i.bp = shl nsw i64 %n.vec, 3                   ; 4 uses
  %i.bq = getelementptr i8, ptr %i.v, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.o, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.ai, i64 %i.bp
  %i.bt = getelementptr i8, ptr %i.ba, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.bu ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.o, i64 %i.bu ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.ai, i64 %i.bu ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ba, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !21
  %wide.load19 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !21
  %i.bw = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load20 = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !21
  %wide.load21 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !21
  %i.bx = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load22 = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !21
  %wide.load23 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !21
  %i.by = add <2 x i64> %wide.load20, %wide.load
  %i.bz = add <2 x i64> %wide.load21, %wide.load19
  %i.ca = add <2 x i64> %i.by, %wide.load22
  %i.cb = add <2 x i64> %i.bz, %wide.load23
  %i.cc = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x i64> %i.ca, ptr %next.gep18, align 8, !tbaa !21
  store <2 x i64> %i.cb, ptr %i.cc, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !205

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %vector.body, %vector.memcheck, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.bq, %vector.body ]
  %.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.br, %vector.body ]
  %.ph28 = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.bs, %vector.body ]
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.bt, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.g
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cp, %bb.g ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ce = phi ptr [ %i.co, %bb.g ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cf = phi ptr [ %i.cn, %bb.g ], [ %.ph28, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.g ], [ %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.am
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.an
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = load i64, ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !21
  %i.cj = load i64, ptr %i.cf, align 8, !tbaa !21
  %i.ck = add i64 %i.ci, %i.ch
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cq = icmp eq ptr %i.cn, %i.al
  br i1 %i.cq, label %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !206

_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32
  %i.cs = add i32 %i.ay, %i.cr
  br label %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i

_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i, %bb.d
  %i.ct = phi ptr [ %i.ao, %bb.d ], [ %i.ax, %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i ]
  %i.cu = phi i32 [ 0, %bb.d ], [ %i.cs, %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  store i32 %i.cu, ptr %i.ap, align 8, !tbaa !23, !alias.scope !220
  %i.cv = zext i32 %i.cu to i64
  %i.cw = call noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr %i.ct, i64 %i.cv) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.cx, ptr %8, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 2, ptr %i.cz, align 4, !tbaa !24
  call void @_ZN4llvm15SmallVectorImplINS_7APFloatEE6assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.da = load ptr, ptr %7, align 8, !tbaa !30
  %i.db = load i32, ptr %i.ap, align 8, !tbaa !23
  %i.dc = zext i32 %i.db to i64
  call void @_ZN4mlir20computeSuffixProductEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.208") align 8 %10, ptr %i.da, i64 %i.dc) #17
  %i.dd = load ptr, ptr %10, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !23
  %i.dg = zext i32 %i.df to i64
  %i.dh = call noundef i64 @_ZN4mlir9linearizeEN4llvm8ArrayRefIlEES2_(ptr %i.o, i64 %i.s, ptr %i.dd, i64 %i.dg) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 40, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 5 uses
  store i64 0, ptr %i.di, align 8, !alias.scope !221
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !77
  %.not4546.i.i.i = icmp eq i64 %i.dk, %.sroa.3.0.copyload.i.i.i
  br i1 %.not4546.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %.0811.i.i.i.i = add i64 %i.ak, -1              ; 2 uses
  %i.dm = icmp sgt i64 %.0811.i.i.i.i, -1
  br i1 %i.dm, label %.lr.ph.i.preheader.us.i.i.i, label %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.i.i.i

.lr.ph.i.preheader.us.i.i.i:                      ; preds = %.lr.ph.i.i.i, %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.loopexit.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZNK4llvm6detail10zip_commonINS0_14zip_enumeratorIJNS0_14index_iteratorEN4mlir17DenseElementsAttr20FloatElementIteratorEEEENS0_17enumerator_resultIJmNS_7APFloatEEEEJS3_S6_EE5derefIJLm0ELm1EEEESA_St16integer_sequenceImJXspT_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::detail::enumerator_result") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.dn = load i64, ptr %12, align 8, !tbaa !83
  %i.do = load ptr, ptr %10, align 8, !tbaa !30
  br label %.lr.ph.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.lr.ph.i.us.i.i.i, %.lr.ph.i.preheader.us.i.i.i
  %.0814.i.us.i.i.i = phi i64 [ %.08.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.0811.i.i.i.i, %.lr.ph.i.preheader.us.i.i.i ] ; 4 uses
  %.013.i.us.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.us.i.i.i ], [ %i.dn, %.lr.ph.i.preheader.us.i.i.i ]
  %.0712.i.us.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.us.i.i.i ], [ 0, %.lr.ph.i.preheader.us.i.i.i ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0814.i.us.i.i.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !21
  %i.dr = call { i64, i64 } @ldiv(i64 noundef %.013.i.us.i.i.i, i64 noundef %i.dq) #20 ; 2 uses
  %i.ds = extractvalue { i64, i64 } %i.dr, 0
  %i.dt = extractvalue { i64, i64 } %i.dr, 1
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0814.i.us.i.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !21
  %i.dw = mul nsw i64 %i.dv, %i.dt
  %i.dx = add nsw i64 %i.dw, %.0712.i.us.i.i.i    ; 2 uses
  %.08.i.us.i.i.i = add nsw i64 %.0814.i.us.i.i.i, -1
  %.not.i.us.i.i.i = icmp eq i64 %.0814.i.us.i.i.i, 0
  br i1 %.not.i.us.i.i.i, label %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.loopexit.us.i.i.i, label %.lr.ph.i.us.i.i.i, !llvm.loop !1

_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.loopexit.us.i.i.i: ; preds = %.lr.ph.i.us.i.i.i
  %i.dy = load ptr, ptr %8, align 8, !tbaa !30
  %i.dz = getelementptr [24 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = getelementptr [24 x i8], ptr %i.dz, i64 %i.dh
  %i.eb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.dl) #17 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dl) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.ec = load i64, ptr %i.di, align 8, !tbaa !85
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.di, align 8, !tbaa !85
  %i.ee = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.ef = add nsw i64 %i.ee, 1                    ; 2 uses
  store i64 %i.ef, ptr %i.dj, align 8, !tbaa !77
  %.not45.us.i.i.i = icmp eq i64 %i.ef, %.sroa.3.0.copyload.i.i.i
  br i1 %.not45.us.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.preheader.us.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.i.i.i, %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.loopexit.us.i.i.i, %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_7APFloatEN4mlir9FloatAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.eg = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17 ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0
  store ptr %i.eh, ptr %13, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ej = extractvalue { ptr, ptr } %i.eg, 1
  store ptr %i.ej, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %7, align 8, !tbaa !30
  %i.el = load i32, ptr %i.ap, align 8, !tbaa !23
  %i.em = zext i32 %i.el to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ek, ptr %2, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.em, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.en, align 8, !tbaa !89
  %i.eo = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #17
  %i.ep = call { ptr, ptr } @_ZNK4mlir10ShapedType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull byval(%"class.std::optional.363") align 8 %2, ptr %i.eo) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.ep, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.es = load ptr, ptr %8, align 8, !tbaa !30
  %i.et = load i32, ptr %i.cy, align 8, !tbaa !23
  %i.eu = zext i32 %i.et to i64
  %i.ev = call ptr @_ZN4mlir17DenseElementsAttr3getENS_10ShapedTypeEN4llvm8ArrayRefINS2_7APFloatEEE(ptr %i.eq, ptr %i.er, ptr %i.es, i64 %i.eu) #17
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !44
  %i.ey = call noundef ptr @_ZN4mlir11MLIRContext16getLoadedDialectEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr nonnull @.str.7, i64 6) #17 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef ptr %i.fb(ptr noundef nonnull align 8 dereferenceable(96) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr %i.ev, ptr %i.eq, ptr %.sroa.02.0.copyload.i.i) #17, !inline_history !211 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fc, null
end_hunk_0
begin_hunk_1_@_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeENS3_5ValueEEES4_E4CaseIZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS3_6tensor5PadOpERNS3_15PatternRewriterEEUlNS3_9FloatAttrEE_EERS6_OT_:bb.a
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fs) #17
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, %i.fs
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !30
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i.i, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i
  %i.ft = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i.i ], [ %i.fo, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i ] ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.cx
  br i1 %i.fu, label %_ZN4llvm11SmallVectorINS_7APFloatELj2EED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i.i
  call void @free(ptr noundef %i.ft) #17
  br label %_ZN4llvm11SmallVectorINS_7APFloatELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_7APFloatELj2EED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7APFloatELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.fv = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ao
  br i1 %i.fw, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit22.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorINS_7APFloatELj2EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.fv) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit22.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit22.i.i.i:    ; preds = %bb.j, %_ZN4llvm11SmallVectorINS_7APFloatELj2EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.fx = ptrtoint ptr %spec.select.i.i.i to i64
  br label %_ZZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteEN4mlir6tensor5PadOpERNS1_15PatternRewriterEENKUlNS1_9FloatAttrEE_clES6_.exit.i

_ZZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteEN4mlir6tensor5PadOpERNS1_15PatternRewriterEENKUlNS1_9FloatAttrEE_clES6_.exit.i: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit22.i.i.i, %bb.c
  %.sroa.041.0.i.i.i = phi i64 [ %i.fx, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit22.i.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.sroa.041.0.i.i.i, ptr %i.a, align 8, !tbaa !42
  store i8 1, ptr %i.b, align 8, !tbaa !66
  br label %_ZN4llvm10TypeSwitchIN4mlir9AttributeENS1_5ValueEE4CaseINS1_9FloatAttrEZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS1_6tensor5PadOpERNS1_15PatternRewriterEEUlS6_E_EERS4_OT0_.exit

_ZN4llvm10TypeSwitchIN4mlir9AttributeENS1_5ValueEE4CaseINS1_9FloatAttrEZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS1_6tensor5PadOpERNS1_15PatternRewriterEEUlS6_E_EERS4_OT0_.exit: ; preds = %bb.a, %bb.b, %_ZZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteEN4mlir6tensor5PadOpERNS1_15PatternRewriterEENKUlNS1_9FloatAttrEE_clES6_.exit.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIN4mlir9AttributeENS3_5ValueEEES4_E4CaseIZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS3_6tensor5PadOpERNS3_15PatternRewriterEEUlNS3_11IntegerAttrEE_EERS6_OT_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %3 = alloca %"class.std::optional.363", align 8 ; 6 uses
  %.sroa.047.i.i.i = alloca [48 x i8], align 8    ; 5 uses
  %4 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %5 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DenseElementsAttr::IntElementIterator", align 8 ; 6 uses
  %7 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 10 uses
  %8 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.208", align 8 ; 11 uses
  %11 = alloca %"class.llvm::SmallVector.384", align 8 ; 11 uses
  %12 = alloca %"class.llvm::SmallVector.208", align 8 ; 8 uses
  %13 = alloca %"struct.llvm::detail::zip_enumerator.394", align 8 ; 6 uses
  %14 = alloca %"struct.llvm::detail::enumerator_result.401", align 8 ; 5 uses
  %15 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !66, !range !63, !noundef !64
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN4llvm10TypeSwitchIN4mlir9AttributeENS1_5ValueEE4CaseINS1_11IntegerAttrEZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS1_6tensor5PadOpERNS1_15PatternRewriterEEUlS6_E_EERS4_OT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %i.e = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.g, label %bb.c, label %_ZN4llvm10TypeSwitchIN4mlir9AttributeENS1_5ValueEE4CaseINS1_11IntegerAttrEZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteENS1_6tensor5PadOpERNS1_15PatternRewriterEEUlS6_E_EERS4_OT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !245, !nonnull !64, !align !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !246, !nonnull !64, !align !74
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247, !nonnull !64, !align !74
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !248, !nonnull !64, !align !74 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !249, !nonnull !64, !align !74 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 6 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.047.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.01.0.copyload.i.i, ptr %7, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !250
  %i.z = call ptr @_ZNK4mlir17DenseElementsAttr14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17, !noalias !250
  store ptr %i.z, ptr %4, align 8, !noalias !250
  %i.aa = call noundef zeroext i1 @_ZNK4mlir4Type12isIntOrIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !250
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZZNK12_GLOBAL__N_115PadOpToConstant15matchAndRewriteEN4mlir6tensor5PadOpERNS1_15PatternRewriterEENKUlNS1_11IntegerAttrEE_clES6_.exit.i

bb.e:                                             ; preds = %bb.c
  %.fr.i.i = freeze i32 %i.y
  %i.ab = zext i32 %.fr.i.i to i64                ; 3 uses
  %i.ac = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17, !noalias !250 ; 0 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !noalias !251
  call void @_ZN4mlir17DenseElementsAttr18IntElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef 0) #17, !noalias !250
  %.sroa.0.0.copyload.i2.i.i.i.i = load ptr, ptr %7, align 8, !noalias !252
  %i.ad = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17, !noalias !252
  call void @_ZN4mlir17DenseElementsAttr18IntElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %.sroa.0.0.copyload.i2.i.i.i.i, i64 noundef %i.ad) #17, !noalias !250
  %.sroa.047.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.047.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.047.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.sroa.548.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.548.32.copyload.i.i.i = load i64, ptr %.sroa.548.32..sroa_idx.i.i.i, align 8, !noalias !250 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.047.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ae = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17 ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  store ptr %i.af, ptr %9, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #17 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 8 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = extractvalue { ptr, i64 } %i.ai, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %.idx.i.i.i.i = shl i64 %i.al, 3                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !30, !alias.scope !253
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !23, !alias.scope !253
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.ar, align 4, !tbaa !24, !alias.scope !253
  %i.as = icmp eq i64 %i.al, 0
  br i1 %i.as, label %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i:                 ; preds = %bb.e
  %umin.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.s) ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.preheader.i.i
  %i.at = phi ptr [ %i.au, %bb.f ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader.i.i ]
  %.02.i.i.i.i.i.i.i.i = phi i64 [ %i.av, %bb.f ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %exitcond.i.i = icmp eq i64 %.02.i.i.i.i.i.i.i.i, %umin.i.i
  br i1 %exitcond.i.i, label %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = add nuw nsw i64 %.02.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.am
  br i1 %i.aw, label %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !232

_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %umin.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.av, %bb.f ] ; 3 uses
  %i.ax = icmp ugt i64 %.0.lcssa.i.i.i.i.i.i.i.i, 6
  br i1 %i.ax, label %bb.g, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.ap, i64 noundef %.0.lcssa.i.i.i.i.i.i.i.i, i64 noundef 8) #17
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.aq, align 8, !tbaa !23, !alias.scope !253
  %.pre.i.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !30, !alias.scope !253
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.ap, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.az = phi i32 [ 0, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_6detail12zip_shortestIJPKlS5_S5_EEEZN12_GLOBAL__N_117constantFoldPadOpINS0_5APIntEN4mlir11IntegerAttrEEENSA_5ValueERNSA_15PatternRewriterENSA_8LocationENSA_17DenseElementsAttrET0_NS0_8ArrayRefIlEESJ_EUlSt5tupleIJlllEEE_lEEENSt15iterator_traitsIT_E15difference_typeESP_SP_St18input_iterator_tag.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba ; 4 uses
  %i.bc = add i64 %.idx.i.i.i.i, -8
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ab)
  %i.bf = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.s) ; 2 uses
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bf, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i
  %i.bh = ptrtoaddr ptr %i.ay to i64
  %i.bi = shl nuw nsw i64 %i.ba, 3
  %i.bj = add i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = sub i64 %i.w, %i.bj
  %diff.check = icmp ugt i64 %i.bk, -32
  %i.bl = sub i64 %i.p, %i.bj
  %diff.check12 = icmp ugt i64 %i.bl, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  %i.bm = sub i64 %i.ak, %i.bj
  %diff.check13 = icmp ugt i64 %i.bm, -32
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = and i64 %i.bg, 3                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 4, i64 %i.bn
  %n.vec = sub nsw i64 %i.bg, %i.bp               ; 2 uses
  %i.bq = shl nsw i64 %n.vec, 3                   ; 4 uses
  %i.br = getelementptr i8, ptr %i.v, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.o, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.aj, i64 %i.bq
  %i.bu = getelementptr i8, ptr %i.bb, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.bv ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.o, i64 %i.bv ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.aj, i64 %i.bv ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.bb, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !21
  %wide.load18 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !21
  %i.bx = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load19 = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !21
  %wide.load20 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !21
  %i.by = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load21 = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !21
  %wide.load22 = load <2 x i64>, ptr %i.by, align 8, !tbaa !21
  %i.bz = add <2 x i64> %wide.load19, %wide.load
  %i.ca = add <2 x i64> %wide.load20, %wide.load18
  %i.cb = add <2 x i64> %i.bz, %wide.load21
  %i.cc = add <2 x i64> %i.ca, %wide.load22
  %i.cd = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x i64> %i.cb, ptr %next.gep17, align 8, !tbaa !21
  store <2 x i64> %i.cc, ptr %i.cd, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !233

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %vector.body, %vector.memcheck, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.br, %vector.body ]
  %.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.bs, %vector.body ]
  %.ph26 = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.bt, %vector.body ]
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.bu, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.h
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.h ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cf = phi ptr [ %i.cp, %bb.h ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cg = phi ptr [ %i.co, %bb.h ], [ %.ph26, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.h ], [ %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.an
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ao
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ch, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = load i64, ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21
  %i.cj = load i64, ptr %i.cf, align 8, !tbaa !21
  %i.ck = load i64, ptr %i.cg, align 8, !tbaa !21
  %i.cl = add i64 %i.cj, %i.ci
  %i.cm = add i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cr = icmp eq ptr %i.co, %i.am
  br i1 %i.cr, label %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !234

_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32
  %i.ct = add i32 %i.az, %i.cs
  br label %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i

_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i, %bb.e
  %i.cu = phi ptr [ %i.ap, %bb.e ], [ %i.ay, %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i ]
  %i.cv = phi i32 [ 0, %bb.e ], [ %i.ct, %_ZN4llvm11SmallVectorIlLj6EEC2INS_15mapped_iteratorINS_6detail12zip_shortestIJPKlS7_S7_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSC_5ValueERNSC_15PatternRewriterENSC_8LocationENSC_17DenseElementsAttrET0_NS_8ArrayRefIlEESL_EUlSt5tupleIJlllEEE_lEEvEET_SQ_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  store i32 %i.cv, ptr %i.aq, align 8, !tbaa !23, !alias.scope !253
  %i.cw = zext i32 %i.cv to i64
  %i.cx = call noundef i64 @_ZN4mlir14computeProductEN4llvm8ArrayRefIlEE(ptr %i.cu, i64 %i.cw) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.cy = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.cz, ptr %11, align 8, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.da, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 3, ptr %i.db, align 4, !tbaa !24
  call void @_ZN4llvm15SmallVectorImplINS_5APIntEE6assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(12) %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.dc = load ptr, ptr %10, align 8, !tbaa !30
  %i.dd = load i32, ptr %i.aq, align 8, !tbaa !23
  %i.de = zext i32 %i.dd to i64
  call void @_ZN4mlir20computeSuffixProductEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.208") align 8 %12, ptr %i.dc, i64 %i.de) #17
  %i.df = load ptr, ptr %12, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !23
  %i.di = zext i32 %i.dh to i64
  %i.dj = call noundef i64 @_ZN4mlir9linearizeEN4llvm8ArrayRefIlEES2_(ptr %i.o, i64 %i.s, ptr %i.df, i64 %i.di) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.047.i.i.i, i64 32, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i64 0, ptr %i.dk, align 8, !alias.scope !254
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !77
  %.not5253.i.i.i = icmp eq i64 %i.dm, %.sroa.548.32.copyload.i.i.i
  br i1 %.not5253.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0811.i.i.i.i = add i64 %i.al, -1              ; 2 uses
  %i.dq = icmp sgt i64 %.0811.i.i.i.i, -1
  br label %bb.i

._crit_edge.i.i.i:                                ; preds = %_ZN4llvm6detail17enumerator_resultIJmNS_5APIntEEED2Ev.exit.i.i.i, %_ZN4llvm13map_to_vectorINS_6detail5zippyINS1_12zip_shortestEJRNS_8ArrayRefIlEES6_S6_EEEZN12_GLOBAL__N_117constantFoldPadOpINS_5APIntEN4mlir11IntegerAttrEEENSB_5ValueERNSB_15PatternRewriterENSB_8LocationENSB_17DenseElementsAttrET0_S5_S5_EUlSt5tupleIJlllEEE_EEDaOT_OSI_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.dr = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17 ; 2 uses
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0
  store ptr %i.ds, ptr %15, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.du = extractvalue { ptr, ptr } %i.dr, 1
  store ptr %i.du, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %10, align 8, !tbaa !30
  %i.dw = load i32, ptr %i.aq, align 8, !tbaa !23
  %i.dx = zext i32 %i.dw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.dv, ptr %3, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dx, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.dy, align 8, !tbaa !89
  %i.dz = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #17
  %i.ea = call { ptr, ptr } @_ZNK4mlir10ShapedType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull byval(%"class.std::optional.363") align 8 %3, ptr %i.dz) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0      ; 2 uses
  %i.ec = extractvalue { ptr, ptr } %i.ea, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.ed = load ptr, ptr %11, align 8, !tbaa !30
  %i.ee = load i32, ptr %i.da, align 8, !tbaa !23
  %i.ef = zext i32 %i.ee to i64
  %i.eg = call ptr @_ZN4mlir17DenseElementsAttr3getENS_10ShapedTypeEN4llvm8ArrayRefINS2_5APIntEEE(ptr %i.eb, ptr %i.ec, ptr %i.ed, i64 %i.ef) #17
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !44
  %i.ej = call noundef ptr @_ZN4mlir11MLIRContext16getLoadedDialectEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr nonnull @.str.7, i64 6) #17 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(96) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr %i.eg, ptr %i.eb, ptr %.sroa.02.0.copyload.i.i) #17, !inline_history !239 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.en, null
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.eo
  %i.ep = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i, label %bb.n

bb.i:                                             ; preds = %_ZN4llvm6detail17enumerator_resultIJmNS_5APIntEEED2Ev.exit.i.i.i, %.lr.ph.i.i.i
  %i.es = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.fs, %_ZN4llvm6detail17enumerator_resultIJmNS_5APIntEEED2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !257
  call void @_ZNK4mlir17DenseElementsAttr18IntElementIteratordeEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %13) #17, !noalias !257
  store i64 %i.es, ptr %14, align 8, !tbaa !262, !alias.scope !257
  %i.et = load i32, ptr %i.dp, align 8, !tbaa !91, !noalias !257 ; 2 uses
  store i32 %i.et, ptr %i.do, align 8, !tbaa !91, !alias.scope !257
  %i.eu = load i64, ptr %2, align 8, !noalias !257 ; 2 uses
  store i64 %i.eu, ptr %i.dn, align 8, !alias.scope !257
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !257
  %i.ev = load ptr, ptr %12, align 8, !tbaa !30
  br i1 %i.dq, label %.lr.ph.i.i.i.i, label %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.0814.i.i.i.i = phi i64 [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0811.i.i.i.i, %bb.i ] ; 4 uses
  %.013.i.i.i.i = phi i64 [ %i.ez, %.lr.ph.i.i.i.i ], [ %i.es, %bb.i ]
  %.0712.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.0814.i.i.i.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.ey = call { i64, i64 } @ldiv(i64 noundef %.013.i.i.i.i, i64 noundef %i.ex) #20 ; 2 uses
  %i.ez = extractvalue { i64, i64 } %i.ey, 0
  %i.fa = extractvalue { i64, i64 } %i.ey, 1
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.0814.i.i.i.i
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !21
  %i.fd = mul nsw i64 %i.fc, %i.fa
  %i.fe = add nsw i64 %i.fd, %.0712.i.i.i.i       ; 2 uses
  %.08.i.i.i.i = add nsw i64 %.0814.i.i.i.i, -1
  %.not.i.i.i.i = icmp eq i64 %.0814.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN12_GLOBAL__N_119transformIndexSpaceEN4llvm8ArrayRefIlEES2_l.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.07.lcssa.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.fe, %.lr.ph.i.i.i.i ]
  %i.ff = load ptr, ptr %11, align 8, !tbaa !30
end_hunk_1
