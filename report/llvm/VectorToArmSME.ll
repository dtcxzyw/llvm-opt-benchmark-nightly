Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorToArmSME?download=true
inline.NumInlined: 2776
inline.NumDeleted: 1569
begin_hunk_0_@_ZNK12_GLOBAL__N_129TransferWriteToArmSMELowering15matchAndRewriteEN4mlir6vector15TransferWriteOpERNS1_15PatternRewriterE:bb.a

_ZN4mlir6vector15TransferWriteOp10getIndicesEv.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bl, %bb.i ], [ null, %bb.h ]
  %i.bm = and i64 %i.bf, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.bf, 32
  %i.bn = add i64 %.sroa.5.0.extract.shift.i.i, %i.bf
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.bm
  %i.bq = sub nsw i64 %i.bo, %i.bm
  %i.br = call i64 @_ZN4mlir6vector15TransferWriteOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 3) #15 ; 3 uses
  %i.bs = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 8388608
  %.not.i.i.i.i.i14 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i14, label %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i, label %bb.j, !prof !54

bb.j:                                             ; preds = %_ZN4mlir6vector15TransferWriteOp10getIndicesEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !23
  br label %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i

_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i: ; preds = %bb.j, %_ZN4mlir6vector15TransferWriteOp10getIndicesEv.exit
  %.sroa.0.0.i.i.i.i.i15 = phi ptr [ %i.bx, %bb.j ], [ null, %_ZN4mlir6vector15TransferWriteOp10getIndicesEv.exit ]
  %i.by = and i64 %i.br, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i16 = lshr i64 %i.br, 32
  %i.bz = add i64 %.sroa.5.0.extract.shift.i.i16, %i.br
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i15, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.0.0.copyload.i.i.i.i17 = load ptr, ptr %i.cd, align 8, !tbaa !25
  %i.ce = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i17 to i64
  br label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit

_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit:  ; preds = %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i, %bb.k
  %.sroa.06.0.i = phi i64 [ %i.ce, %bb.k ], [ 0, %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cg, align 8
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.bp, i64 %i.bq) #15
  %i.ch = load i64, ptr %3, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = call ptr @_ZN4mlir7arm_sme11TileStoreOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS_10ValueRangeES5_NS0_15TileSliceLayoutE(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr %.sroa.0.0.copyload.i.i, ptr %i.ax, ptr %.sroa.0.0.copyload.i.i.i.i12, i64 %i.ch, i64 %i.cj, i64 %.sroa.06.0.i, i32 noundef %i.av) #15
  %i.cl = load ptr, ptr %2, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.aw, ptr noundef %i.ck) #15, !inline_history !361
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit10
  %.sroa.05.0 = phi i8 [ 1, %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %bb.l, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.05.1 = phi i8 [ 0, %bb.a ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ %.sroa.05.0, %bb.l ], [ 0, %bb.b ]
  ret i8 %.sroa.05.1
}

declare ptr @_ZN4mlir6vector15TransferWriteOp13getVectorTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir6vector15TransferWriteOp17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir6vector15TransferWriteOp9getVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i64 @_ZN4mlir6vector15TransferWriteOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir6vector15TransferWriteOp11getInBoundsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363, !nonnull !53, !align !80
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #15 ; 0 uses
  ret void
}

declare ptr @_ZN4mlir7arm_sme11TileStoreOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_NS_10ValueRangeES5_NS0_15TileSliceLayoutE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, i64, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127TransposeOpToArmSMELoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #15
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector11TransposeOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #15
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_127TransposeOpToArmSMELowering15matchAndRewriteEN4mlir6vector11TransposeOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %4 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %5 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %6 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %7 = alloca %"class.mlir::vector::TransposeOp", align 8 ; 6 uses
  %8 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %9 = alloca %"class.llvm::ArrayRef.58", align 8 ; 5 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %11 = alloca %"class.mlir::vector::TransferReadOp", align 8 ; 6 uses
  %12 = alloca %class.anon.409, align 8           ; 6 uses
  %i.a = alloca [2 x i64], align 8                ; 5 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %14 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %15 = alloca %"class.mlir::arm_sme::TileStoreOp", align 8 ; 7 uses
  %16 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %17 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  store ptr %i.f, ptr %8, align 8
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4mlir7arm_sme24isValidSMETileVectorTypeENS_10VectorTypeE(ptr nonnull %i.f) #15
  br i1 %i.h, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.i = call { ptr, i64 } @_ZN4mlir6vector11TransposeOp14getPermutationEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  store ptr %i.j, ptr %9, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = extractvalue { ptr, i64 } %i.i, 1
  store i64 %i.l, ptr %i.k, align 8
  %i.m = load i64, ptr %i.j, align 8, !tbaa !14
  %.not = icmp eq i64 %i.m, 1
  br i1 %.not, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %7, align 8, !tbaa !62     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !25
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.u = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #15 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = icmp eq ptr %i.x, @_ZN4mlir6detail14TypeIDResolverINS_6vector14TransferReadOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector14TransferReadOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %18, %i.y
  br i1 %spec.select.i.i.i.i.i.i, label %bb.g, label %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread

bb.g:                                             ; preds = %bb.f
  store ptr %i.u, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !369
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !96, !noalias !369 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.ad = zext i32 %i.aa to i64
  %.sroa.0.0.i.i.i43 = select i1 %i.ab, ptr null, ptr %i.ac
  store ptr %.sroa.0.0.i.i.i43, ptr %5, align 8, !noalias !369
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !noalias !369
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !369
  %.sroa.4.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.4.0.copyload7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i.i, align 8 ; 2 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  %.sroa.33.0.copyload.i.i = load ptr, ptr %.sroa.33.0..sroa_idx.i.i, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.4.0.copyload7.i.i, %.sroa.33.0.copyload.i.i
  br i1 %.not.i.i, label %_ZN4mlir9Operation9hasOneUseEv.exit.thread, label %_ZN4mlir9Operation9hasOneUseEv.exit

_ZN4mlir9Operation9hasOneUseEv.exit.thread:       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread

_ZN4mlir9Operation9hasOneUseEv.exit:              ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %.sroa.4.0.copyload7.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #15, !noalias !370 ; 0 uses
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ag = icmp eq ptr %.sroa.3.0.copyload.i.i, %.sroa.33.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %i.ag, label %bb.h, label %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread

bb.h:                                             ; preds = %_ZN4mlir9Operation9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %11, ptr %12, align 8, !tbaa !371
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %9, ptr %i.ah, align 8, !tbaa !372
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %7, ptr %i.ai, align 8, !tbaa !373
  call fastcc void @_ZN4mlir12RewriterBase15modifyOpInPlaceIZNK12_GLOBAL__N_127TransposeOpToArmSMELowering15matchAndRewriteENS_6vector11TransposeOpERNS_15PatternRewriterEEUlvE_EEvPNS_9OperationEOT_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(24) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.aj = load ptr, ptr %7, align 8, !tbaa !62
  %i.ak = load ptr, ptr %11, align 8, !tbaa !62
  %i.al = load ptr, ptr %2, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.aj, ptr noundef %i.ak) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.t

_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread: ; preds = %bb.e, %bb.f, %_ZN4mlir9Operation9hasOneUseEv.exit, %_ZN4mlir9Operation9hasOneUseEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.ap = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #15
  %i.aq = call ptr @_ZN4mlir6vector13VectorScaleOp6createERNS_9OpBuilderENS_8LocationENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr %.sroa.0.0.copyload.i.i, ptr %i.ap) #15
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16
  %i.as = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14
  %i.av = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %i.au) #15 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i44, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !75

bb.j:                                             ; preds = %bb.i
  %i.ba = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.20, i64 49), i64 15) #15
  store ptr %i.bb, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !30 ; 2 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !20 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bg = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.bg ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bi = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = xor i64 %i.bg, -1
  %i.bl = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.bk
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bj, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 %i.bl, i64 %i.bg ; 2 uses
  %i.bm = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.bf, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bn
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.bo = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.bp = icmp eq ptr %i.bo, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %bb.m, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79
  br label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bs = phi ptr [ null, %_ZNK4mlir5Value13getDefiningOpINS_6vector14TransferReadOpEEET_v.exit.thread ], [ %i.br, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.bt = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr %.sroa.0.0.copyload.i.i, ptr %i.av, ptr %i.bs) #15
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.bv = call ptr @_ZN4mlir7Builder12getIndexAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef 0) #15 ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i46, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit64, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.o, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47, !prof !75

bb.o:                                             ; preds = %bb.n
  %i.ca = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i.i.i.i.i63 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i63, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.20, i64 49), i64 15) #15
  store ptr %i.cb, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i48 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !30 ; 2 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !20 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i.i.i.i.i49 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i.i49, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i59, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i50

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i50: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i50
  %.017.i.i.i.i.i.i.i.i.i.i52 = phi i64 [ %i.cf, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i50 ], [ %.1.i.i.i.i.i.i.i.i.i.i58, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i53 = phi ptr [ %i.cc, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i50 ], [ %.112.i.i.i.i.i.i.i.i.i.i57, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51 ] ; 2 uses
  %i.cg = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i52, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i53, i64 %i.cg ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i56 = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.ci = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i56, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = xor i64 %i.cg, -1
  %i.cl = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i52, %i.ck
  %.112.i.i.i.i.i.i.i.i.i.i57 = select i1 %i.ci, ptr %i.cj, ptr %.01116.i.i.i.i.i.i.i.i.i.i53 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i58 = select i1 %i.ci, i64 %i.cl, i64 %i.cg ; 2 uses
  %i.cm = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i58, 0
  br i1 %i.cm, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i59, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i59: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47
  %.pre-phi.i.i.i.i.i.i.i60 = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47 ], [ %i.cf, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51 ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i61 = phi ptr [ %i.cc, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i47 ], [ %.112.i.i.i.i.i.i.i.i.i.i57, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i51 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.pre-phi.i.i.i.i.i.i.i60
  %.not.i.i.i.i.i.i.i62 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i61, %i.cn
  br i1 %.not.i.i.i.i.i.i.i62, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit64, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i59
  %i.co = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i61, align 8, !tbaa !77
  %i.cp = icmp eq ptr %i.co, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i48
  br i1 %i.cp, label %bb.r, label %_ZN4mlir9TypedAttrCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_11IntegerAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit64

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i61, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !79
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_134VectorOuterProductToArmSMELowering15matchAndRewriteEN4mlir6vector14OuterProductOpERNS1_15PatternRewriterE:bb.a
bb.a:
  %3 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::ValueTypeRange", align 8 ; 5 uses
  %6 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %9 = alloca %"class.mlir::VectorType::Builder", align 8 ; 16 uses
  %10 = alloca %class.anon.806, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %class.anon.806, align 8           ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %class.anon.806, align 8           ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.mlir::vector::OuterProductOp", align 8 ; 15 uses
  %17 = alloca %"class.mlir::vector::MaskingOpInterface", align 8 ; 6 uses
  store ptr %1, ptr %16, align 8
  %i.a = call i64 @_ZN4mlir6vector14OuterProductOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1) #15
  %i.b = load ptr, ptr %16, align 8, !tbaa !62    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i15 = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.m = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i15, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !57
  store ptr @.str.28, ptr %15, align 8, !tbaa !58
  store i8 3, ptr %i.n, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr %15, ptr %14, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #15
  br i1 %i.r, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.s, align 8
  %i.t = ptrtoint ptr %14 to i64
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14OuterProductOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.t) #15, !inline_history !381
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %i.b, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call noundef zeroext i1 @_ZN4mlir7arm_sme24isValidSMETileVectorTypeENS_10VectorTypeE(ptr %i.z) #15
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !57
  store ptr @.str.29, ptr %13, align 8, !tbaa !58
  store i8 3, ptr %i.ab, align 8, !tbaa !59
  %i.ad = load ptr, ptr %16, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %13, ptr %12, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i16, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #15
  br i1 %i.ag, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit19

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %12 to i64
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14OuterProductOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ai) #15, !inline_history !381
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit19

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit19: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.am = call noundef i32 @_ZN4mlir6vector14OuterProductOp7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !57
  store ptr @.str.30, ptr %11, align 8, !tbaa !58
  store i8 3, ptr %i.an, align 8, !tbaa !59
  %i.ap = load ptr, ptr %16, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %11, ptr %10, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #15
  br i1 %i.as, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit23

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21: ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.at, align 8
  %i.au = ptrtoint ptr %10 to i64
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr %.sroa.0.0.copyload.i.i.i.i22, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14OuterProductOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.au) #15, !inline_history !381
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit23

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14OuterProductOpEEEN4llvm13LogicalResultEOT_PKc.exit23: ; preds = %bb.h, %bb.i, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %16, align 8, !tbaa !62   ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.az, align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.j
  %i.bc = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bb) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread, label %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit

_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.bd = call noundef ptr @_ZN4mlir11OpInterfaceINS_6vector18MaskingOpInterfaceENS1_6detail33MaskingOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.bc)
  %.not50 = icmp eq ptr %i.bd, null
  br i1 %.not50, label %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit.i25

_ZN4mlir9Operation11getParentOpEv.exit.i25:       ; preds = %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.be = load ptr, ptr %16, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !104, !nonnull !53, !noundef !53
  %i.bh = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bg) #15 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bi = call noundef ptr @_ZN4mlir11OpInterfaceINS_6vector18MaskingOpInterfaceENS1_6detail33MaskingOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.bh)
  store ptr %i.bh, ptr %17, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !104
  %i.bn = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.bh) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !105
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bq = call ptr @_ZN4mlir6vector18MaskingOpInterface7getMaskEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.bq, ptr %6, align 8, !noalias !387
  %i.br = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15, !noalias !387 ; 5 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i27, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !82, !noalias !387
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77, !noalias !387
  %i.bv = icmp eq ptr %i.bu, @_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE
  %18 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %18, %i.bv
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6vector12CreateMaskOpEEET_v.exit.i, label %.thread

_ZNK4mlir5Value13getDefiningOpINS_6vector12CreateMaskOpEEET_v.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !388
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !96, !noalias !388 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = getelementptr inbounds i8, ptr %i.br, i64 -16
  %i.ca = zext i32 %i.bx to i64
  %.sroa.0.0.i.i.i12.i = select i1 %i.by, ptr null, ptr %i.bz
  store ptr %.sroa.0.0.i.i.i12.i, ptr %4, align 8, !noalias !388
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !noalias !388
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #15, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !388
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %5, align 8, !noalias !387
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !387
  %i.cc = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i28, i64 noundef %.sroa.2.0.copyload.i.i.i.i) #15, !noalias !387
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !noalias !387
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !387
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !23, !noalias !387 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %i.ci, align 8, !tbaa !25, !noalias !387
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %7, align 8, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !387
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.cj, align 8, !tbaa !25, !noalias !387
  store ptr %.sroa.0.0.copyload.i.i.i14.i, ptr %8, align 8, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !387
  store ptr %i.cf, ptr %3, align 8, !noalias !387
  %i.ck = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15, !noalias !387
  store ptr %i.ck, ptr %9, align 8, !noalias !387
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cm = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15, !noalias !387 ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0
  %i.co = extractvalue { ptr, i64 } %i.cm, 1
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !32, !noalias !387
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 %i.co, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !14, !noalias !387
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !20, !noalias !387
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !17, !noalias !387
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 6, ptr %i.cs, align 4, !tbaa !18, !noalias !387
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.cu = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15, !noalias !387 ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  %i.cw = extractvalue { ptr, i64 } %i.cu, 1
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !34, !noalias !387
  %.sroa.2.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  store i64 %i.cw, ptr %.sroa.2.0..sroa_idx.i3.i.i, align 8, !tbaa !14, !noalias !387
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !36, !noalias !387
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  store i64 0, ptr %i.cz, align 8, !tbaa !37, !noalias !387
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 40, ptr %i.da, align 8, !tbaa !38, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !387
  call void @_ZN4mlir19CopyOnWriteArrayRefIlE5eraseEm(ptr noundef nonnull align 8 dereferenceable(80) %i.cl, i64 noundef 0), !noalias !387
  %i.db = load i64, ptr %.sroa.2.0..sroa_idx.i3.i.i, align 8, !tbaa !40, !noalias !387
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = load i64, ptr %i.cz, align 8, !noalias !387
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = select i1 %i.dc, i1 %i.de, i1 false
  br i1 %i.df, label %_ZN4mlir10VectorType7Builder7dropDimEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6vector12CreateMaskOpEEET_v.exit.i
  call void @_ZN4mlir19CopyOnWriteArrayRefIbE5eraseEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ct, i64 noundef 0), !noalias !387
  %.pre.i = load i64, ptr %.sroa.2.0..sroa_idx.i3.i.i, align 8, !tbaa !40, !noalias !387
  %.pre27.i = load i64, ptr %i.cz, align 8, !noalias !387
  br label %_ZN4mlir10VectorType7Builder7dropDimEj.exit.i

_ZN4mlir10VectorType7Builder7dropDimEj.exit.i:    ; preds = %bb.l, %_ZNK4mlir5Value13getDefiningOpINS_6vector12CreateMaskOpEEET_v.exit.i
  %i.dg = phi i64 [ 0, %_ZNK4mlir5Value13getDefiningOpINS_6vector12CreateMaskOpEEET_v.exit.i ], [ %.pre27.i, %bb.l ]
  %i.dh = phi i64 [ 0, %_ZNK4mlir5Value13getDefiningOpINS_6vector12CreateMaskOpEEET_v.exit.i ], [ %.pre.i, %bb.l ] ; 2 uses
  %i.di = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !42, !noalias !387 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0                    ; 2 uses
  %i.dk = load ptr, ptr %i.cp, align 8, !noalias !387
  %i.dl = load i32, ptr %i.cr, align 8, !noalias !387
  %i.dm = zext i32 %i.dl to i64
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !387
  %.sroa.3.0.i.i.i = select i1 %i.dj, i64 %i.dm, i64 %i.di
  %.sroa.0.0.i.i.i = select i1 %i.dj, ptr %i.dk, ptr %.sroa.0.0.copyload.i.i.i
  %.sroa.01.0.copyload.i.i = load ptr, ptr %9, align 8, !tbaa !44, !noalias !387
  %i.dn = icmp eq i64 %i.dh, 0                    ; 2 uses
  %i.do = load ptr, ptr %i.cx, align 8, !noalias !387
  %.sroa.0.0.copyload.i5.i.i = load ptr, ptr %i.ct, align 8, !noalias !387
  %.sroa.3.0.i6.i.i = select i1 %i.dn, i64 %i.dg, i64 %i.dh
  %.sroa.0.0.i7.i.i = select i1 %i.dn, ptr %i.do, ptr %.sroa.0.0.copyload.i5.i.i
  %i.dp = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %.sroa.0.0.i.i.i, i64 %.sroa.3.0.i.i.i, ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.0.0.i7.i.i, i64 %.sroa.3.0.i6.i.i) #15, !noalias !387 ; 2 uses
  %i.dq = load ptr, ptr %i.cx, align 8, !tbaa !36, !noalias !387 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cy
  br i1 %i.dr, label %_ZN4mlir19CopyOnWriteArrayRefIbED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir10VectorType7Builder7dropDimEj.exit.i
  call void @free(ptr noundef %i.dq) #15, !noalias !387
  br label %_ZN4mlir19CopyOnWriteArrayRefIbED2Ev.exit.i.i

_ZN4mlir19CopyOnWriteArrayRefIbED2Ev.exit.i.i:    ; preds = %bb.m, %_ZN4mlir10VectorType7Builder7dropDimEj.exit.i
  %i.ds = load ptr, ptr %i.cp, align 8, !tbaa !20, !noalias !387 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cq
  br i1 %i.dt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir19CopyOnWriteArrayRefIbED2Ev.exit.i.i
  call void @free(ptr noundef %i.ds) #15, !noalias !387
  br label %bb.o

.thread:                                          ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i25, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.r

bb.o:                                             ; preds = %_ZN4mlir19CopyOnWriteArrayRefIbED2Ev.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !387
  %i.du = ptrtoint ptr %7 to i64
  %i.dv = call ptr @_ZN4mlir6vector12CreateMaskOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.dp, i64 %i.du, i64 1) #15, !noalias !387
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -16
  %i.dx = ptrtoint ptr %8 to i64
  %i.dy = call ptr @_ZN4mlir6vector12CreateMaskOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr %.sroa.0.0.copyload.i.i, ptr %i.dp, i64 %i.dx, i64 1) #15, !noalias !387
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.ea = ptrtoint ptr %i.dz to i64
  br label %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread

_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread: ; preds = %bb.j, %_ZN4mlir9Operation11getParentOpEv.exit.i, %bb.o, %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit
  %.sroa.044.1 = phi i64 [ %i.ea, %bb.o ], [ 0, %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit ], [ 0, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ 0, %bb.j ]
  %.sroa.0.1 = phi ptr [ %i.dw, %bb.o ], [ null, %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ null, %bb.j ]
  %.014 = phi ptr [ %i.bh, %bb.o ], [ %i.ay, %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit ], [ %i.ay, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.eb = load ptr, ptr %16, align 8, !tbaa !62
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8
  %.0.copyload.i.i.i.i.i.i.i29 = load i64, ptr %i.ec, align 8
  %i.ed = and i64 %.0.copyload.i.i.i.i.i.i.i29, -8
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = call i64 @_ZN4mlir6vector14OuterProductOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #15
  %i.eg = load ptr, ptr %16, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !23
  %i.ej = and i64 %i.ef, 4294967295
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %.sroa.0.0.copyload.i.i.i.i30 = load ptr, ptr %i.el, align 8, !tbaa !25
  %i.em = call i64 @_ZN4mlir6vector14OuterProductOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1) #15
  %i.en = load ptr, ptr %16, align 8, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !23
  %i.eq = and i64 %i.em, 4294967295
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.sroa.0.0.copyload.i.i.i.i32 = load ptr, ptr %i.es, align 8, !tbaa !25
  %i.et = call i64 @_ZN4mlir6vector14OuterProductOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2) #15 ; 3 uses
  %i.eu = load ptr, ptr %16, align 8, !tbaa !62   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 44
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = and i32 %i.ew, 8388608
  %.not.i.i.i.i.i33 = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i.i.i.i33, label %_ZN4mlir6vector14OuterProductOp14getODSOperandsEj.exit.i, label %bb.p, !prof !54

bb.p:                                             ; preds = %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  br label %_ZN4mlir6vector14OuterProductOp14getODSOperandsEj.exit.i

_ZN4mlir6vector14OuterProductOp14getODSOperandsEj.exit.i: ; preds = %bb.p, %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ez, %bb.p ], [ null, %_ZN4mlir6vector6detail24MaskableOpInterfaceTraitINS0_14OuterProductOpEE8isMaskedEv.exit.thread ]
  %i.fa = and i64 %i.et, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.et, 32
  %i.fb = add i64 %.sroa.5.0.extract.shift.i.i, %i.et
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = icmp eq i64 %i.fc, %i.fa
  br i1 %i.fd, label %_ZN4mlir6vector14OuterProductOp6getAccEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4mlir6vector14OuterProductOp14getODSOperandsEj.exit.i
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.fa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %.sroa.0.0.copyload.i.i.i.i34 = load ptr, ptr %i.ff, align 8, !tbaa !25
  %i.fg = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i34 to i64
  br label %_ZN4mlir6vector14OuterProductOp6getAccEv.exit

_ZN4mlir6vector14OuterProductOp6getAccEv.exit:    ; preds = %_ZN4mlir6vector14OuterProductOp14getODSOperandsEj.exit.i, %bb.q
  %.sroa.06.0.i = phi i64 [ %i.fg, %bb.q ], [ 0, %_ZN4mlir6vector14OuterProductOp14getODSOperandsEj.exit.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fi, align 8
  %i.fj = call ptr @_ZN4mlir7arm_sme14OuterProductOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueES6_S6_S6_S6_NS0_13CombiningKindE(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr %.sroa.0.0.copyload.i.i35, ptr %i.ee, ptr %.sroa.0.0.copyload.i.i.i.i30, ptr %.sroa.0.0.copyload.i.i.i.i32, ptr %.sroa.0.1, i64 %.sroa.044.1, i64 %.sroa.06.0.i, i32 noundef 0) #15
  %i.fk = load ptr, ptr %2, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
end_hunk_1
begin_hunk_2_@_ZN4mlir3scf5ForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_NS_10ValueRangeEN4llvm12function_refIFvS3_S4_S5_S6_EEEb
declare ptr @_ZN4mlir3scf5ForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_NS_10ValueRangeEN4llvm12function_refIFvS3_S4_S5_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr noundef byval(%"class.mlir::ValueRange") align 8, ptr noundef byval(%"class.llvm::function_ref.1033") align 8, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare ptr @_ZN4mlir6vector7PrintOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS0_16PrintPunctuationE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN4mlir6vector7PrintOp14getPunctuationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i64 @_ZN4mlir6vector7PrintOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135FoldTransferWriteOfExtractTileSliceD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #15
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_135FoldTransferWriteOfExtractTileSlice15matchAndRewriteEN4mlir6vector15TransferWriteOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::optional.1091", align 8 ; 4 uses
  %5 = alloca %class.anon.361, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon.361, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon.361, align 8            ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %12 = alloca %"class.mlir::BoolAttr", align 8   ; 4 uses
  %13 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %14 = alloca %class.anon.361, align 8           ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.mlir::vector::TransferWriteOp", align 8 ; 20 uses
  %17 = alloca %"struct.mlir::detail::TypedValue.224", align 8 ; 4 uses
  %18 = alloca %"class.mlir::arm_sme::ExtractTileSliceOp", align 8 ; 5 uses
  %19 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %20 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %21 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  store ptr %1, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.b = call i64 @_ZN4mlir6vector15TransferWriteOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1) #15
  %i.c = load ptr, ptr %16, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = and i64 %i.b, 4294967295
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %17, align 8
  %i.i = call { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.m = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !57
  store ptr @.str.39, ptr %15, align 8, !tbaa !58
  store i8 3, ptr %i.n, align 8, !tbaa !59
  %i.p = load ptr, ptr %16, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr %15, ptr %14, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.r) #15
  br i1 %i.s, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i.i.i17 = load ptr, ptr %i.t, align 8
  %i.u = ptrtoint ptr %14 to i64
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr %.sroa.0.0.copyload.i.i.i.i17, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.u) #15, !inline_history !2
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.y = call ptr @_ZN4mlir6vector15TransferWriteOp17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  store ptr %i.y, ptr %13, align 8
  %i.z = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.aa = call ptr @_ZN4mlir6vector15TransferWriteOp11getInBoundsEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  store ptr %i.aa, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ab = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !74
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %12, align 8
  %i.ae = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not.i = select i1 %i.ae, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit, !llvm.loop !1

_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit: ; preds = %.lr.ph.i
  br i1 %i.ae, label %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !57
  store ptr @.str.17, ptr %10, align 8, !tbaa !58
  store i8 3, ptr %i.af, align 8, !tbaa !59
  %i.ah = load ptr, ptr %16, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %10, ptr %9, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i18, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #15
  br i1 %i.ak, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit21

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i19: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.0.0.copyload.i.i.i.i20 = load ptr, ptr %i.al, align 8
  %i.am = ptrtoint ptr %9 to i64
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr %.sroa.0.0.copyload.i.i.i.i20, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.am) #15, !inline_history !2
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit21

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit21: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.ad

_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread: ; preds = %bb.d, %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.aq = call ptr @_ZN4mlir6vector15TransferWriteOp9getVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  store ptr %i.aq, ptr %19, align 8
  %i.ar = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #15 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77
  %i.av = icmp eq ptr %i.au, @_ZN4mlir6detail14TypeIDResolverINS_7arm_sme18ExtractTileSliceOpEvE2idE
  %22 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_7arm_sme18ExtractTileSliceOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %22, %i.av
  br i1 %spec.select.i.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector15TransferWriteOpEE17hasOutOfBoundsDimEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ax, align 1, !tbaa !57
  store ptr @.str.40, ptr %8, align 8, !tbaa !58
  store i8 3, ptr %i.aw, align 8, !tbaa !59
  %i.ay = load ptr, ptr %16, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %8, ptr %7, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i22, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ba) #15
  br i1 %i.bb, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i23, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit25

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i23: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.0.0.copyload.i.i.i.i24 = load ptr, ptr %i.bc, align 8
  %i.bd = ptrtoint ptr %7 to i64
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr %.sroa.0.0.copyload.i.i.i.i24, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bd) #15, !inline_history !2
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit25

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit25: ; preds = %bb.h, %bb.i, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ac

bb.j:                                             ; preds = %bb.g
  store ptr %i.ar, ptr %18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.bh = call ptr @_ZN4mlir6vector15TransferWriteOp17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  store ptr %i.bh, ptr %20, align 8
  %i.bi = call noundef zeroext i1 @_ZNK4mlir9AffineMap15isMinorIdentityEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #15
  br i1 %i.bi, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !57
  store ptr @.str.13, ptr %6, align 8, !tbaa !58
  store i8 3, ptr %i.bj, align 8, !tbaa !59
  %i.bl = load ptr, ptr %16, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %6, ptr %5, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i26, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #15
  br i1 %i.bo, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i27, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit29

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i27: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.bp, align 8
  %i.bq = ptrtoint ptr %5 to i64
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bn, ptr %.sroa.0.0.copyload.i.i.i.i28, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector15TransferWriteOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bq) #15, !inline_history !2
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit29

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector15TransferWriteOpEEEN4llvm13LogicalResultEOT_PKc.exit29: ; preds = %bb.k, %bb.l, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.bu = call i64 @_ZN4mlir6vector15TransferWriteOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 3) #15 ; 3 uses
  %i.bv = load ptr, ptr %16, align 8, !tbaa !62   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 8388608
  %.not.i.i.i.i.i30 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i30, label %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i, label %bb.n, !prof !54

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23
  br label %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i

_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ca, %bb.n ], [ null, %bb.m ]
  %i.cb = and i64 %i.bu, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.bu, 32
  %i.cc = add i64 %.sroa.5.0.extract.shift.i.i, %i.bu
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = icmp eq i64 %i.cd, %i.cb
  br i1 %i.ce, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit

_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit:  ; preds = %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.cb
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.0.0.copyload.i.i.i.i31 = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i31, null
  br i1 %.not, label %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread, label %bb.z

_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread: ; preds = %_ZN4mlir6vector15TransferWriteOp14getODSOperandsEj.exit.i, %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.ch = call ptr @_ZN4mlir6vector15TransferWriteOp13getVectorTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  store ptr %i.ch, ptr %21, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cj = call ptr @_ZN4mlir7Builder9getI1TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ck, align 8, !tbaa !416
  %i.cl = call ptr @_ZNK4mlir10VectorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull byval(%"class.std::optional.1091") align 8 %4, ptr %i.cj) #15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.cm = load ptr, ptr %16, align 8, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cn, align 8
  %.not.i.i.i32 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i32, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !28 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.p, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !75

bb.p:                                             ; preds = %bb.o
  %i.cs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #15
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 49), i64 16) #15
  store ptr %i.ct, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #15
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !30 ; 2 uses
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !20 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cy = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.cy ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !30
  %i.da = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = xor i64 %i.cy, -1
  %i.dd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.dc
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.da, ptr %i.db, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.da, i64 %i.dd, i64 %i.cy ; 2 uses
  %i.de = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.cx, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.df
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.dg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.dh = icmp eq ptr %i.dg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.dh, label %bb.s, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !79
  br label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.r, %bb.s
  %i.dk = phi ptr [ null, %_ZN4mlir6vector15TransferWriteOp7getMaskEv.exit.thread ], [ %i.dj, %bb.s ], [ null, %bb.r ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !51
  %i.dl = call ptr @_ZN4mlir17DenseElementsAttr3getENS_10ShapedTypeEN4llvm8ArrayRefIbEE(ptr %i.cl, ptr %i.dk, ptr nonnull %i.a, i64 1) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !102 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE

declare noundef i32 @_ZN4mlir7arm_sme18ExtractTileSliceOp9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir10VectorType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"class.std::optional.1091") align 8, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir17DenseElementsAttr3getENS_10ShapedTypeEN4llvm8ArrayRefIbEE(ptr, ptr, ptr, i64) local_unnamed_addr #3

declare ptr @_ZN4mlir7arm_sme16StoreTileSliceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_S5_NS_10ValueRangeENS0_15TileSliceLayoutE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, ptr noundef byval(%"class.mlir::ValueRange") align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #15
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135ExtractFromCreateMaskToPselLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #15
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_135ExtractFromCreateMaskToPselLowering15matchAndRewriteEN4mlir6vector9ExtractOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.1138, align 8           ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.1138, align 8           ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %8 = alloca %"class.mlir::ValueTypeRange", align 8 ; 5 uses
  %9 = alloca %class.anon.1137, align 8           ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %class.anon.1137, align 8          ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.1137, align 8          ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::vector::ExtractOp", align 8 ; 12 uses
  %16 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %17 = alloca %"class.mlir::VectorType", align 8 ; 10 uses
  %18 = alloca %"class.mlir::VectorType::Builder", align 8 ; 5 uses
  %19 = alloca %"class.mlir::VectorType::Builder", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %21 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %22 = alloca %"class.llvm::SmallVector.907", align 8 ; 6 uses
  %23 = alloca %"class.llvm::SmallVector.902", align 8 ; 7 uses
  store ptr %1, ptr %15, align 8
  %i.a = call { ptr, i64 } @_ZN4mlir6vector9ExtractOp17getStaticPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = and i64 %i.b, 4294967295
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !57
  store ptr @.str.43, ptr %14, align 8, !tbaa !58
  store i8 3, ptr %i.d, align 8, !tbaa !59
  %i.f = load ptr, ptr %15, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %14, ptr %13, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #15
  br i1 %i.i, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8
  %i.k = ptrtoint ptr %13 to i64
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector9ExtractOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.k) #15, !inline_history !420
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %15, align 8, !tbaa !62
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  %i.q = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 0) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.r, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !30
  %.not75 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %.not75, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !57
  store ptr @.str.44, ptr %12, align 8, !tbaa !58
  store i8 3, ptr %i.w, align 8, !tbaa !59
  %i.y = load ptr, ptr %15, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %12, ptr %11, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 4 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i24, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #15
  br i1 %i.ab, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i25, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit27

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i25: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i.i26 = load ptr, ptr %i.ac, align 8
  %i.ad = ptrtoint ptr %11 to i64
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr %.sroa.0.0.copyload.i.i.i.i26, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector9ExtractOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ad) #15, !inline_history !420
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit27

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit27: ; preds = %bb.e, %bb.f, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.ab

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.ah = call i64 @_ZN4mlir6vector9ExtractOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0) #15
  %i.ai = load ptr, ptr %15, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = and i64 %i.ah, 4294967295
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.an, align 8, !tbaa !25
  store ptr %.sroa.0.0.copyload.i.i.i.i28, ptr %16, align 8
  %i.ao = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #15 ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77
  %i.as = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE
  %24 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector12CreateMaskOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %24, %i.as
  br i1 %spec.select.i.i.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !57
  store ptr @.str.45, ptr %10, align 8, !tbaa !58
  store i8 3, ptr %i.at, align 8, !tbaa !59
  %i.av = load ptr, ptr %15, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %10, ptr %9, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i29, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #15
  br i1 %i.ay, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i30, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit32

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i30: ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0.0.copyload.i.i.i.i31 = load ptr, ptr %i.az, align 8
  %i.ba = ptrtoint ptr %9 to i64
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr %.sroa.0.0.copyload.i.i.i.i31, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector9ExtractOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ba) #15, !inline_history !420
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit32

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector9ExtractOpEEEN4llvm13LogicalResultEOT_PKc.exit32: ; preds = %bb.i, %bb.j, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.ab

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !426
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !96, !noalias !426 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.bi = zext i32 %i.bf to i64
  %.sroa.0.0.i.i.i33 = select i1 %i.bg, ptr null, ptr %i.bh
  store ptr %.sroa.0.0.i.i.i33, ptr %7, align 8, !noalias !426
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !426
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !426
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.bk = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.2.0.copyload.i.i.i) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store ptr %i.bn, ptr %17, align 8
  %i.bo = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #15
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1
  %.not23 = icmp eq i64 %i.bp, 2
  br i1 %.not23, label %bb.l, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bq = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #15
  %i.br = extractvalue { ptr, i64 } %i.bq, 1
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #15 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 4 uses
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1      ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ashr i64 %i.bv, 2                       ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ca = and i64 %i.bv, -4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bu, i64 %i.ca
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.cn, %bb.r ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.cm, %bb.r ] ; 9 uses
  %i.cb = load i8, ptr %.02946.i.i.i.i.i, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit98, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit96, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.cn = add nsw i64 %.047.i.i.i.i.i, -1
  %i.co = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.co, label %bb.n, label %._crit_edge.i.i.i.i.i, !llvm.loop !423

._crit_edge.i.i.i.i.i:                            ; preds = %bb.r, %bb.m
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.bu, %bb.m ], [ %scevgep.i.i.i.i.i, %bb.r ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i to i64
  %i.cp = sub i64 %i.bx, %.pre-phi.i.i.i.i.i
  switch i64 %i.cp, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread66 [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cq = load i8, ptr %.029.lcssa.i.i.i.i.i, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.t, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.cs, %bb.t ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ct = load i8, ptr %.1.i.i.i.i.i, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.u, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.cv, %bb.u ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.cw = load i8, ptr %.2.i.i.i.i.i, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread66

_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit: ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  br label %_ZNK4mlir10VectorType15allDimsScalableEv.exit

_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit96: ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  br label %_ZNK4mlir10VectorType15allDimsScalableEv.exit

_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit98: ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  br label %_ZNK4mlir10VectorType15allDimsScalableEv.exit

_ZNK4mlir10VectorType15allDimsScalableEv.exit:    ; preds = %bb.n, %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit, %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit96, %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit98, %bb.s, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.s ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.da, %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit98 ], [ %i.cz, %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit96 ], [ %i.cy, %_ZNK4mlir10VectorType15allDimsScalableEv.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.n ]
  %.not.i = icmp eq ptr %.028.i.i.i.i.i, %i.bw
  br i1 %.not.i, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread66, label %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread

_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread: ; preds = %bb.l, %_ZNK4mlir10VectorType15allDimsScalableEv.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !57
  store ptr @.str.46, ptr %6, align 8, !tbaa !58
  store i8 3, ptr %i.db, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %6, ptr %5, align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i34, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector12CreateMaskOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread
  %i.df = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.de) #15
  br i1 %i.df, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i35, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector12CreateMaskOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i35: ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0.0.copyload.i.i.i.i36 = load ptr, ptr %i.dg, align 8
  %i.dh = ptrtoint ptr %5 to i64
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(12) %i.de, ptr %.sroa.0.0.copyload.i.i.i.i36, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector12CreateMaskOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.dh) #15, !inline_history !424
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector12CreateMaskOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector12CreateMaskOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZNK4mlir10VectorType15allDimsScalableEv.exit.thread, %bb.v, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i35
end_hunk_3
