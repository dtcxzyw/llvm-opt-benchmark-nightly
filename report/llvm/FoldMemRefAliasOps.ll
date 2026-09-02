Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FoldMemRefAliasOps?download=true
inline.NumInlined: 3011
inline.NumDeleted: 1816
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@__cxa_guard_release

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #6

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125AccessOpOfSubViewOpFolderD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #18
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6memref24IndexedAccessOpInterfaceEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir6memref24IndexedAccessOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6memref24IndexedAccessOpInterfaceENS1_6detail39IndexedAccessOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm4castIN4mlir6memref24IndexedAccessOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm4castIN4mlir6memref24IndexedAccessOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = load ptr, ptr %0, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  ret i8 %i.f
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_125AccessOpOfSubViewOpFolder15matchAndRewriteEN4mlir6memref24IndexedAccessOpInterfaceERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.252", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.258", align 8 ; 7 uses
  %6 = alloca %class.anon.284, align 8            ; 4 uses
  %7 = alloca %class.anon.284, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::memref::SubViewOp", align 8 ; 6 uses
  %10 = alloca %class.anon.284, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %class.anon.284, align 8           ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::memref::IndexedAccessOpInterface", align 8 ; 12 uses
  %15 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 4 uses
  %16 = alloca %"class.mlir::memref::SubViewOp", align 8 ; 12 uses
  %17 = alloca %"class.llvm::SmallVector.231", align 8 ; 6 uses
  %18 = alloca %"class.llvm::SmallBitVector", align 8 ; 6 uses
  %19 = alloca %"class.mlir::MemRefType", align 8 ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %22 = alloca %"class.llvm::SmallVector.247", align 8 ; 9 uses
  %23 = alloca %"class.llvm::SmallVector.258", align 8 ; 7 uses
  %24 = alloca %"class.llvm::SmallVector.258", align 8 ; 7 uses
  %25 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %26 = alloca %"class.std::optional.264", align 8 ; 8 uses
  %27 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %28 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  store ptr %1, ptr %14, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.b = call ptr @_ZN4mlir6memref24IndexedAccessOpInterface17getAccessedMemrefEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #18 ; 2 uses
  store ptr %i.b, ptr %15, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !92
  store ptr @.str.12, ptr %13, align 8, !tbaa !93
  store i8 3, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %14, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %13, ptr %12, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #18
  br i1 %i.h, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.j = ptrtoint ptr %12 to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref24IndexedAccessOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.j) #18, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.n = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #18 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.r = icmp eq ptr %i.q, @_ZN4mlir6detail14TypeIDResolverINS_6memref9SubViewOpEvE2idE
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !92
  store ptr @.str.13, ptr %11, align 8, !tbaa !93
  store i8 3, ptr %i.s, align 8, !tbaa !94
  %i.u = load ptr, ptr %14, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %11, ptr %10, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i27, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.w) #18
  br i1 %i.x, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i28, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit30

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i28: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i.i.i29 = load ptr, ptr %i.y, align 8
  %i.z = ptrtoint ptr %10 to i64
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr %.sroa.0.0.copyload.i.i.i.i29, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref24IndexedAccessOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.z) #18, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit30

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit30: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.an

bb.h:                                             ; preds = %bb.e
  store ptr %i.n, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @_ZN4mlir6memref24IndexedAccessOpInterface16getAccessedShapeEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.231") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !59 ; 5 uses
  %i.af = zext i32 %i.ae to i64                   ; 5 uses
  %.sroa.012.0.copyload = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.012.0.copyload, ptr %9, align 8
  %i.ag = icmp eq i32 %i.ae, 0
  br i1 %i.ag, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call { ptr, i64 } @_ZN4mlir6memref9SubViewOp16getStaticStridesEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %i.aj = icmp slt i64 %i.ai, %i.af
  br i1 %i.aj, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.thread68, label %bb.j

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.thread68: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0
  %.sroa.0.0.copyload.pn.idx.i8.i = sub nuw nsw i64 %i.ai, %i.af
  %.sroa.0.0.copyload.pn.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.0.0.copyload.pn.idx.i8.i ; 4 uses
  %.idx1.i.i = shl nuw nsw i64 %i.af, 3           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pn.i.i, i64 %.idx1.i.i
  %i.am = lshr i64 %i.af, 2                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.j
  %i.an = and i64 %.idx1.i.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.an
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.as, %bb.n ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.n ], [ %.sroa.0.0.copyload.pn.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i64, ptr %.02949.i.i.i.i.i.i, align 8, !tbaa !58
  %.not35.i.i.i.i.i.i = icmp eq i64 %.029.val32.i.i.i.i.i.i, 1
  br i1 %.not35.i.i.i.i.i.i, label %bb.k, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !58
  %.not36.i.i.i.i.i.i = icmp eq i64 %.val31.i.i.i.i.i.i, 1
  br i1 %.not36.i.i.i.i.i.i, label %bb.l, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit138

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !58
  %.not37.i.i.i.i.i.i = icmp eq i64 %.val30.i.i.i.i.i.i, 1
  br i1 %.not37.i.i.i.i.i.i, label %bb.m, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit136

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !58
  %.not38.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 1
  br i1 %.not38.i.i.i.i.i.i, label %bb.n, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 32
  %i.as = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.at = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.n
  %i.au = and i32 %i.ae, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.j
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.au, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ae, %bb.j ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.pn.i.i, %bb.j ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %.sink.split [
    i32 3, label %bb.o
    i32 2, label %bb.q
    i32 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i64, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i64 %.029.val.i.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.av, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !58
  %.not33.i.i.i.i.i.i = icmp eq i64 %.1.val.i.i.i.i.i.i, 1
  br i1 %.not33.i.i.i.i.i.i, label %bb.r, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i64, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !58
  %.not34.i.i.i.i.i.i = icmp eq i64 %.2.val.i.i.i.i.i.i, 1
  br i1 %.not34.i.i.i.i.i.i, label %.sink.split, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  br label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit136: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  br label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit138: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  br label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit136, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit138, %bb.o, %bb.q, %bb.s
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i.i, %bb.s ], [ %i.az, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit138 ], [ %i.ay, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit136 ], [ %i.ax, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ba = icmp eq ptr %i.al, %.028.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.ba, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.thread68, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bc, align 1, !tbaa !92
  store ptr @.str.14, ptr %8, align 8, !tbaa !93
  store i8 3, ptr %i.bb, align 8, !tbaa !94
  %i.bd = load ptr, ptr %14, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %8, ptr %7, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !102 ; 4 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i31, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit34, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bf) #18
  br i1 %i.bg, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i32, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit34

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i32: ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.0.0.copyload.i.i.i.i33 = load ptr, ptr %i.bh, align 8
  %i.bi = ptrtoint ptr %7 to i64
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr %.sroa.0.0.copyload.i.i.i.i33, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref24IndexedAccessOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bi) #18, !inline_history !0
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit34

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref24IndexedAccessOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit34: ; preds = %bb.t, %bb.u, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.al

.sink.split:                                      ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @_ZN4mlir6memref9SubViewOp14getDroppedDimsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallBitVector") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.bm = call i64 @_ZN4mlir6memref9SubViewOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #18
  %i.bn = load ptr, ptr %16, align 8, !tbaa !89
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !105
  %i.bq = and i64 %i.bm, 4294967295
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  store ptr %i.bv, ptr %19, align 8
  %i.bw = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #18
  %i.bx = extractvalue { ptr, i64 } %i.bw, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.by = icmp ugt i32 %i.ae, 1
  br i1 %i.by, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %reass.sub = sub i64 %i.bx, %i.af
  %i.bz = add i64 %reass.sub, 1                   ; 3 uses
  %.not7991 = icmp eq i64 %i.bz, %i.bx
  br i1 %.not7991, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.ca = load i64, ptr %18, align 8, !tbaa !109  ; 4 uses
  %i.cb = trunc i64 %i.ca to i1
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = lshr i64 %i.ca, 58
  %i.ce = shl nsw i64 -1, %i.cd
  %i.cf = xor i64 %i.ce, -1
  %i.cg = and i64 %i.cc, %i.cf
  br i1 %i.cb, label %.split.us, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph, %bb.x
  %.sroa.060.092.us = phi i64 [ %i.ck, %bb.x ], [ %i.bz, %.lr.ph ] ; 3 uses
  %i.ch = and i64 %.sroa.060.092.us, 4294967295
  %i.ci = lshr i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %_ZN4llvmplERKNS_5TwineES2_.exit52, label %bb.x

bb.x:                                             ; preds = %.split.us
  %i.ck = add i64 %.sroa.060.092.us, 1            ; 2 uses
  %.not79.us = icmp eq i64 %i.ck, %i.bx
  br i1 %.not79.us, label %.loopexit, label %.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cl = inttoptr i64 %i.ca to ptr
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23
  br label %_ZNK4llvm14SmallBitVector4testEj.exit

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %.lr.ph.split, %bb.z
  %.sroa.060.092 = phi i64 [ %i.bz, %.lr.ph.split ], [ %i.dj, %bb.z ] ; 4 uses
  %i.cn = lshr i64 %.sroa.060.092, 6
  %i.co = and i64 %i.cn, 67108863
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = and i64 %.sroa.060.092, 63
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !58
  %i.cs = shl nuw i64 1, %i.cq
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_127TransferOpOfSubViewOpFolderD0Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_25VectorTransferOpInterfaceEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir25VectorTransferOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_25VectorTransferOpInterfaceENS_6detail40VectorTransferOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm4castIN4mlir25VectorTransferOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm4castIN4mlir25VectorTransferOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = load ptr, ptr %0, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i8 %i.e(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_127TransferOpOfSubViewOpFolder15matchAndRewriteEN4mlir25VectorTransferOpInterfaceERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.252", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.258", align 8 ; 7 uses
  %6 = alloca %class.anon.518, align 8            ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %class.anon.518, align 8            ; 4 uses
  %9 = alloca %"class.mlir::memref::SubViewOp", align 8 ; 6 uses
  %10 = alloca %class.anon.517, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %13 = alloca %"class.mlir::BoolAttr", align 8   ; 4 uses
  %14 = alloca %"class.mlir::AffineMap", align 8  ; 4 uses
  %15 = alloca %class.anon.517, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.mlir::VectorTransferOpInterface", align 8 ; 13 uses
  %18 = alloca %"class.mlir::memref::SubViewOp", align 8 ; 17 uses
  %19 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %20 = alloca %"class.mlir::VectorType", align 8 ; 5 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %23 = alloca %"class.mlir::MemRefType", align 8 ; 4 uses
  %24 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  %25 = alloca %"class.llvm::SmallVector.247", align 8 ; 9 uses
  %26 = alloca %"class.llvm::SmallVector.258", align 8 ; 7 uses
  %27 = alloca %"class.llvm::SmallVector.258", align 8 ; 7 uses
  %28 = alloca %"class.llvm::SmallBitVector", align 8 ; 5 uses
  %29 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %30 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  store ptr %1, ptr %17, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.b = call ptr @_ZN4mlir25VectorTransferOpInterface7getBaseEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  store ptr %i.b, ptr %19, align 8
  %i.c = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #18 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_6memref9SubViewOpEvE2idE
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !92
  store ptr @.str.13, ptr %16, align 8, !tbaa !93
  store i8 3, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %17, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %16, ptr %15, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #18
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %15 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_25VectorTransferOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #18, !inline_history !8
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.an

bb.e:                                             ; preds = %bb.b
  store ptr %i.c, ptr %18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.s = call ptr @_ZN4mlir25VectorTransferOpInterface17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.t = call ptr @_ZN4mlir25VectorTransferOpInterface17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  store ptr %i.t, ptr %14, align 8
  %i.u = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext i32 %i.u to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.v = call ptr @_ZN4mlir25VectorTransferOpInterface11getInBoundsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  store ptr %i.v, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.w = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !134
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %13, align 8
  %i.z = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not.i = select i1 %i.z, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i, label %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit, !llvm.loop !9

_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit: ; preds = %.lr.ph.i
  br i1 %i.z, label %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ab, align 1, !tbaa !92
  store ptr @.str.35, ptr %11, align 8, !tbaa !93
  store i8 3, ptr %i.aa, align 8, !tbaa !94
  %i.ac = load ptr, ptr %17, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %11, ptr %10, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #18
  br i1 %i.af, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit23

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.ag, align 8
  %i.ah = ptrtoint ptr %10 to i64
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr %.sroa.0.0.copyload.i.i.i.i22, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_25VectorTransferOpInterfaceEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ah) #18, !inline_history !8
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit23

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc.exit23: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.an

_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread: ; preds = %bb.e, %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.al = call ptr @_ZN4mlir25VectorTransferOpInterface13getVectorTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  store ptr %i.al, ptr %20, align 8
  %.sroa.012.0.copyload = load ptr, ptr %18, align 8
  %i.am = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  %i.an = extractvalue { ptr, i64 } %i.am, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.012.0.copyload, ptr %9, align 8
  %i.ao = icmp slt i64 %i.an, 1
  br i1 %i.ao, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread
  %i.ap = call { ptr, i64 } @_ZN4mlir6memref9SubViewOp16getStaticStridesEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1      ; 2 uses
  %i.ar = icmp sgt i64 %i.an, %i.aq
  br i1 %i.ar, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.thread61, label %bb.i

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.thread61: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN4llvmplERKNS_5TwineES2_.exit38

bb.i:                                             ; preds = %bb.h
  %i.as = extractvalue { ptr, i64 } %i.ap, 0
  %.sroa.0.0.copyload.pn.idx.i8.i = sub nuw nsw i64 %i.aq, %i.an
  %.sroa.0.0.copyload.pn.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.0.0.copyload.pn.idx.i8.i ; 4 uses
  %.idx1.i.i = shl nuw nsw i64 %i.an, 3           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pn.i.i, i64 %.idx1.i.i
  %i.au = lshr i64 %i.an, 2                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.i
  %i.av = and i64 %.idx1.i.i, 9223372036854775776
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.0.copyload.pn.i.i, i64 %i.av
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.ba, %bb.m ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.az, %bb.m ], [ %.sroa.0.0.copyload.pn.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i64, ptr %.02949.i.i.i.i.i.i, align 8, !tbaa !58
  %.not35.i.i.i.i.i.i = icmp eq i64 %.029.val32.i.i.i.i.i.i, 1
  br i1 %.not35.i.i.i.i.i.i, label %bb.j, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !58
  %.not36.i.i.i.i.i.i = icmp eq i64 %.val31.i.i.i.i.i.i, 1
  br i1 %.not36.i.i.i.i.i.i, label %bb.k, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit103

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !58
  %.not37.i.i.i.i.i.i = icmp eq i64 %.val30.i.i.i.i.i.i, 1
  br i1 %.not37.i.i.i.i.i.i, label %bb.l, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit101

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !58
  %.not38.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 1
  br i1 %.not38.i.i.i.i.i.i, label %bb.m, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 32
  %i.ba = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.m
  %i.bc = and i64 %i.an, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.i
  %.pre-phi56.i.i.i.i.i.i = phi i64 [ %i.bc, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.an, %bb.i ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.pn.i.i, %bb.i ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i.i, label %.sink.split [
    i64 3, label %bb.n
    i64 2, label %bb.p
    i64 1, label %bb.r
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i64, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i64 %.029.val.i.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.o ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !58
  %.not33.i.i.i.i.i.i = icmp eq i64 %.1.val.i.i.i.i.i.i, 1
  br i1 %.not33.i.i.i.i.i.i, label %bb.q, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.be, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i64, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !58
  %.not34.i.i.i.i.i.i = icmp eq i64 %.2.val.i.i.i.i.i.i, 1
  br i1 %.not34.i.i.i.i.i.i, label %.sink.split, label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  br label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit101: ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  br label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit103: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  br label %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit

_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit101, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit103, %bb.n, %bb.p, %bb.r
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i, %bb.n ], [ %.2.i.i.i.i.i.i, %bb.r ], [ %i.bh, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit103 ], [ %i.bg, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit101 ], [ %i.bf, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.loopexit.split.loop.exit ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bi = icmp eq ptr %i.at, %.028.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.bi, label %bb.t, label %_ZN4llvmplERKNS_5TwineES2_.exit38

_ZN4llvmplERKNS_5TwineES2_.exit38:                ; preds = %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit.thread61, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.bj = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  %i.bk = extractvalue { ptr, i64 } %i.bj, 1
  %i.bl = inttoptr i64 %i.bk to ptr
  store ptr @.str.36, ptr %22, align 8, !alias.scope !466
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !466
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 3, ptr %i.bn, align 8, !tbaa !94, !alias.scope !466
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 12, ptr %i.bo, align 1, !tbaa !92, !alias.scope !466
  store ptr %22, ptr %21, align 8, !alias.scope !467
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @.str.37, ptr %i.bp, align 8, !alias.scope !467
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 2, ptr %i.bq, align 8, !tbaa !94, !alias.scope !467
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 3, ptr %i.br, align 1, !tbaa !92, !alias.scope !467
  %i.bs = load ptr, ptr %18, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %21, ptr %8, align 8, !tbaa !96
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !102 ; 4 uses
  %.not.i.i.i39 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i39, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9SubViewOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit38
  %i.bv = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bu) #18
  br i1 %i.bv, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9SubViewOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.i.i.i40 = load ptr, ptr %i.bw, align 8
  %i.bx = ptrtoint ptr %8 to i64
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %i.bu, ptr %.sroa.0.0.copyload.i.i.i40, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6memref9SubViewOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bx) #18, !inline_history !464
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9SubViewOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6memref9SubViewOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit38, %bb.s, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.am

.sink.split:                                      ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i, %_ZN4mlir25VectorTransferOpInterface17hasOutOfBoundsDimEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_ZL22hasTrailingUnitStridesN4mlir6memref9SubViewOpEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.cb = call i64 @_ZN4mlir6memref9SubViewOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 0) #18
  %i.cc = load ptr, ptr %18, align 8, !tbaa !89
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !105
  %i.cf = and i64 %i.cb, 4294967295
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8
  %i.cj = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.ck = inttoptr i64 %i.cj to ptr
  store ptr %i.ck, ptr %23, align 8
  %i.cl = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #18
  %i.cm = extractvalue { ptr, i64 } %i.cl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @_ZN4mlir6memref9SubViewOp14getDroppedDimsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallBitVector") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  %i.cn = call ptr @_ZN4mlir16expandDimsToRankENS_9AffineMapElRKN4llvm14SmallBitVectorE(ptr %i.s, i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %24) #18 ; 2 uses
  %i.co = load i64, ptr %24, align 8, !tbaa !109  ; 3 uses
  %i.cp = trunc i64 %i.co to i1
  br i1 %i.cp, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = inttoptr i64 %i.co to ptr               ; 3 uses
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.cs) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.w, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 72) #20
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %bb.t, %bb.u, %_ZN4llvm9BitVectorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.cv = call i64 @_ZN4mlir6memref9SubViewOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 0) #18
  %i.cw = load ptr, ptr %18, align 8, !tbaa !89
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !105
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_122SubViewOfSubViewFolder15matchAndRewriteEN4mlir6memref9SubViewOpERNS1_15PatternRewriterE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.ak, ptr noundef %i.bj) #18, !inline_history !523
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit, %bb.h
  %.sroa.06.0 = phi i8 [ 1, %bb.h ], [ 0, %_ZN4llvm14SmallBitVectorD2Ev.exit ]
  %i.bn = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.s
  br i1 %i.bo, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bn) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.bp = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit
  call void @free(ptr noundef %i.bp) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.br = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.m
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13
  call void @free(ptr noundef %i.br) #18
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14: ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit13, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14, %bb.c
  %.sroa.06.1 = phi i8 [ %.sroa.06.0, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit14 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i8 %.sroa.06.1
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.193") align 8) unnamed_addr #6

declare i8 @_ZN4mlir6affine27mergeOffsetsSizesAndStridesERNS_9OpBuilderENS_8LocationENS_30OffsetSizeAndStrideOpInterfaceES4_RKN4llvm14SmallBitVectorERNS5_11SmallVectorINS_12OpFoldResultELj6EEESC_SC_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_30OffsetSizeAndStrideOpInterfaceENS_6detail45OffsetSizeAndStrideOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !77 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.49, i64 49), i64 36) #18
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !21 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_30OffsetSizeAndStrideOpInterfaceEPNS_9OperationENS0_45OffsetSizeAndStrideOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !79
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !130  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !56

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.49, i64 49), i64 36) #18
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !21
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #18, !inline_history !524
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
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.49, i64 49), i64 36) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_30OffsetSizeAndStrideOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !21
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #18, !inline_history !524
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_30OffsetSizeAndStrideOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare ptr @_ZN4mlir6memref9SubViewOp6createERNS_9OpBuilderENS_8LocationENS_10MemRefTypeENS_5ValueEN4llvm8ArrayRefINS_12OpFoldResultEEESA_SA_NS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.252") align 8, ptr noundef byval(%"class.llvm::ArrayRef.252") align 8, ptr noundef byval(%"class.llvm::ArrayRef.588") align 8) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !65}
!2 = distinct !{!2, !65}
!3 = distinct !{!3, !65}
!4 = distinct !{!4, !65}
!5 = distinct !{!5, !65}
!6 = distinct !{null, null, null}
!7 = distinct !{!7, !65}
!8 = distinct !{ptr @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_25VectorTransferOpInterfaceEEEN4llvm13LogicalResultEOT_PKc, null, null}
!9 = distinct !{!9, !65}
!10 = distinct !{!10, !65}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"any pointer", !15, i64 0}
!20 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !19, i64 0, !16, i64 8, !16, i64 12}
!23 = !{!22, !19, i64 0}
!24 = !{!22, !16, i64 12}
!25 = !{!"vtable pointer", !14, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSN4mlir4PassE", !19, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir4PassELb0EE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"p1 _ZTSN4mlir11MLIRContextE", !19, i64 0}
!31 = !{!"p1 _ZTSSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS1_EE", !19, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !34, i64 0}
!36 = !{!"p1 _ZTSN4mlir9OperationE", !19, i64 0}
!37 = !{!"_ZTSN4mlir7OpStateE", !36, i64 0}
!38 = !{!"_ZTSN4mlir2OpINS_8ModuleOpEJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_17NoRegionArgumentsENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_11AffineScopeENS2_19IsIsolatedFromAboveENS2_11SymbolTableENS_17SymbolOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEE", !37, i64 0}
!39 = !{!"_ZTSN4mlir8ModuleOpE", !38, i64 0}
!40 = !{!"_ZTSN4mlir11OwningOpRefINS_8ModuleOpEEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEvEE", !22, i64 0}
!42 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EEE", !41, i64 0}
!43 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm18SmallVectorStorageISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !15, i64 0}
!45 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !43, i64 0, !44, i64 16}
!46 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN4mlir9OperationEPNS2_19PDLPatternConfigSetEEE", !19, i64 0}
!47 = !{!"p1 int", !19, i64 0}
!48 = !{!"_ZTSN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !46, i64 0, !47, i64 8, !16, i64 16, !16, i64 20}
!49 = !{!"any p2 pointer", !19, i64 0}
!50 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !49, i64 0}
!51 = !{!"_ZTSN4llvm13StringMapImplE", !50, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!52 = !{!"_ZTSN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEEE", !51, i64 0}
!53 = !{!"_ZTSN4mlir16PDLPatternModuleE", !40, i64 0, !45, i64 8, !48, i64 72, !52, i64 96, !52, i64 120}
!54 = !{!"_ZTSN4mlir17RewritePatternSetE", !30, i64 0, !35, i64 8, !53, i64 32}
!55 = !{!54, !30, i64 0}
!56 = !{!"branch_weights", i32 1, i32 1048575}
!57 = !{!"long", !15, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!22, !16, i64 8}
!60 = !{!32, !31, i64 8}
!61 = !{!32, !31, i64 16}
!62 = !{!"p1 _ZTSN4mlir14RewritePatternE", !19, i64 0}
!63 = !{!32, !31, i64 0}
!64 = !{!62, !62, i64 0}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"bool", !15, i64 0}
!67 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6detail18PassExecutionStateEE", !15, i64 0, !66, i64 72}
!68 = !{!67, !66, i64 72}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!"_ZTSSt14_Function_base", !15, i64 0, !19, i64 16}
!72 = !{!71, !19, i64 16}
!73 = !{!"p1 _ZTSN4mlir5BlockE", !19, i64 0}
!74 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !19, i64 0}
!75 = !{!"_ZTSN4mlir9AttributeE", !74, i64 0}
!76 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !19, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"_ZTSN4mlir6TypeIDE", !20, i64 0}
!79 = !{!78, !20, i64 0}
!80 = !{!30, !30, i64 0}
!81 = !{!"_ZTSZN4mlir11MLIRContext16getOrLoadDialectINS_6memref13MemRefDialectEEEPT_vEUlvE_", !30, i64 0}
!82 = !{!81, !30, i64 0}
!83 = !{!19, !19, i64 0}
!84 = !{!"p1 _ZTSN4mlir7DialectE", !19, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir7DialectELb0EE", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{!"_ZTSZN4mlir11MLIRContext16getOrLoadDialectINS_6vector13VectorDialectEEEPT_vEUlvE_", !30, i64 0}
!88 = !{!87, !30, i64 0}
!89 = !{!37, !36, i64 0}
!90 = !{!"_ZTSN4llvm5Twine8NodeKindE", !15, i64 0}
!91 = !{!"_ZTSN4llvm5TwineE", !15, i64 0, !15, i64 16, !90, i64 32, !90, i64 33}
!92 = !{!91, !90, i64 33}
!93 = !{!15, !15, i64 0}
!94 = !{!91, !90, i64 32}
!95 = !{!"p1 _ZTSN4llvm5TwineE", !19, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"_ZTSN4mlir7BuilderE", !30, i64 0}
!98 = !{!"p1 _ZTSN4mlir9OpBuilder8ListenerE", !19, i64 0}
!99 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !19, i64 0}
!100 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEE", !99, i64 0}
!101 = !{!"_ZTSN4mlir9OpBuilderE", !97, i64 0, !98, i64 8, !73, i64 16, !100, i64 24}
!102 = !{!101, !98, i64 8}
!103 = !{!"p1 _ZTSN4mlir9OpOperandE", !19, i64 0}
!104 = !{!"_ZTSN4mlir6detail14OperandStorageE", !16, i64 0, !16, i64 3, !16, i64 4, !103, i64 8}
!105 = !{!104, !103, i64 8}
!106 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !19, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"_ZTSN4llvm14SmallBitVectorE", !57, i64 0}
!109 = !{!108, !57, i64 0}
!110 = !{!"p1 _ZTSN4mlir12OpFoldResultE", !19, i64 0}
!111 = !{!"_ZTSN4llvm8ArrayRefIN4mlir12OpFoldResultEEE", !110, i64 0, !57, i64 8}
!112 = !{!111, !110, i64 0}
!113 = !{!111, !57, i64 8}
!114 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm11SmallVectorIN4mlir5ValueELj6EEEE", !15, i64 0, !66, i64 64}
!115 = !{!114, !66, i64 64}
!116 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !78, i64 0, !19, i64 8}
!117 = !{!116, !19, i64 8}
!118 = !{!"_ZTSN4mlir13OperationName16InterfaceConceptE"}
!119 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_10StringAttrENS_9AttributeENS0_17StringAttrStorageENS0_16AttributeUniquerEJNS_9TypedAttr5TraitEEEE", !75, i64 0}
!120 = !{!"_ZTSN4mlir10StringAttrE", !119, i64 0}
!121 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIN4mlir6TypeIDEPvEvEE", !22, i64 0}
!122 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDEPvELb1EEE", !121, i64 0}
!123 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIN4mlir6TypeIDEPvEEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIN4mlir6TypeIDEPvELj3EEE", !15, i64 0}
!125 = !{!"_ZTSN4llvm11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEE", !123, i64 0, !124, i64 16}
!126 = !{!"_ZTSN4mlir6detail12InterfaceMapE", !125, i64 0}
!127 = !{!"p1 _ZTSN4mlir10StringAttrE", !19, i64 0}
!128 = !{!"_ZTSN4llvm8ArrayRefIN4mlir10StringAttrEEE", !127, i64 0, !57, i64 8}
!129 = !{!"_ZTSN4mlir13OperationName4ImplE", !118, i64 0, !120, i64 8, !78, i64 16, !84, i64 24, !126, i64 32, !128, i64 96, !78, i64 112}
!130 = !{!129, !84, i64 24}
!131 = !{!97, !30, i64 0}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{i64 8}
!134 = !{!74, !74, i64 0}
!135 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!136 = !{!16, !16, i64 0}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !{!"p1 _ZTSN4mlir12AbstractTypeE", !19, i64 0}
!139 = !{!"_ZTSN4mlir11TypeStorageE", !138, i64 0}
!140 = !{!139, !138, i64 0}
!141 = !{!"branch_weights", i32 1, i32 1999}
!142 = !{!"branch_weights", i32 0, i32 1}
!143 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIllEE", !19, i64 0}
!144 = !{!143, !143, i64 0}
!145 = distinct !{!145, !"_ZN4mlir6memref4impl28createFoldMemRefAliasOpsPassEv"}
!146 = distinct !{!146, !145, !"_ZN4mlir6memref4impl28createFoldMemRefAliasOpsPassEv: argument 0"}
!147 = distinct !{!147, !"_ZSt11make_uniqueIN12_GLOBAL__N_122FoldMemRefAliasOpsPassEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!148 = distinct !{!148, !147, !"_ZSt11make_uniqueIN12_GLOBAL__N_122FoldMemRefAliasOpsPassEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!149 = !{!146}
!150 = !{!148, !146}
!151 = distinct !{!151, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125AccessOpOfSubViewOpFolderEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_"}
!152 = distinct !{!152, !151, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125AccessOpOfSubViewOpFolderEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_: argument 0"}
!153 = distinct !{!153, !"_ZSt11make_uniqueIN12_GLOBAL__N_125AccessOpOfSubViewOpFolderEJPN4mlir11MLIRContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!154 = distinct !{!154, !153, !"_ZSt11make_uniqueIN12_GLOBAL__N_125AccessOpOfSubViewOpFolderEJPN4mlir11MLIRContextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!155 = distinct !{!155, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!156 = distinct !{!156, !155, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!157 = distinct !{!157, !155, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!158 = distinct !{!158, !"LVerDomain"}
!159 = distinct !{!159, !158}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !65, !281, !282}
!162 = distinct !{!162, !65, !281}
!163 = distinct !{!163, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_129AccessOpOfExpandShapeOpFolderEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_"}
!164 = distinct !{!164, !163, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_129AccessOpOfExpandShapeOpFolderEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_: argument 0"}
end_hunk_2
