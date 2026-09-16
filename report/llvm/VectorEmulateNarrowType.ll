Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorEmulateNarrowType?download=true
inline.NumInlined: 4486
inline.NumDeleted: 2203
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_115BitCastRewriter18commonPreconditionERN4mlir15PatternRewriterENS1_10VectorTypeEPNS1_9OperationE:bb.a
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.1166, align 8           ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::VectorType", align 8  ; 3 uses
  store ptr %1, ptr %7, align 8
  %i.a = icmp eq ptr %.0.val, null
  %i.b = icmp eq ptr %.8.val, null
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !90
  store ptr @.str.37, ptr %6, align 8, !tbaa !91
  store i8 3, ptr %i.c, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %6, ptr %5, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #15
  br i1 %i.g, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = ptrtoint ptr %5 to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.i) #15, !inline_history !4
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  %i.o = extractvalue { ptr, i64 } %i.n, 1
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !90
  store ptr @.str.38, ptr %4, align 8, !tbaa !91
  store i8 3, ptr %i.p, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %4, ptr %3, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101  ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i5, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #15
  br i1 %i.t, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i6, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit8

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i6: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i.i.i7 = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %3 to i64
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr %.sroa.0.0.copyload.i.i.i.i7, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRPNS1_9OperationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.v) #15, !inline_history !4
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit8

_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit8: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8
  %i.z = call fastcc i8 @_ZL28commonConversionPreconditionRN4mlir15PatternRewriterENS_10VectorTypeEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %.sroa.0.0.copyload, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit8, %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.04.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRPNS_9OperationEEEN4llvm13LogicalResultEOT_PKc.exit8 ], [ %i.z, %bb.h ]
  ret i8 %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115BitCastRewriter18precomputeMetadataEN4mlir11IntegerTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::IntegerType", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.559", align 8 ; 10 uses
  %5 = alloca %"class.llvm::SmallVector.1140", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.1140", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.1140", align 8 ; 10 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 11 uses
  %9 = alloca %"struct.(anonymous namespace)::BitCastRewriter::Metadata", align 8 ; 28 uses
  store ptr %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val41 = load ptr, ptr %i.d, align 8, !tbaa !85 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val42 = load i32, ptr %i.e, align 8, !tbaa !68 ; 2 uses
  %.not6.i = icmp eq i32 %.val42, 0
  br i1 %.not6.i, label %._crit_edge82, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = zext i32 %.val42 to i64
  %i.g = add nuw nsw i64 %i.f, 288230376151711743
  %i.h = and i64 %i.g, 288230376151711743         ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 3 uses
  %i.j = icmp samesign ult i64 %i.h, 7
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.i, 576460752303423480
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi ptr [ %.val41, %.lr.ph.i.preheader.new ], [ %i.ai, %.lr.ph.i ] ; 9 uses
  %.057.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %.sroa.speculated.i.7, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68
  %i.m = zext i32 %i.l to i64
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.057.i, i64 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !68
  %i.p = zext i32 %i.o to i64
  %.sroa.speculated.i.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i, i64 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i, i64 136
  %i.r = load i32, ptr %i.q, align 8, !tbaa !68
  %i.s = zext i32 %i.r to i64
  %.sroa.speculated.i.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.1, i64 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 200
  %i.u = load i32, ptr %i.t, align 8, !tbaa !68
  %i.v = zext i32 %i.u to i64
  %.sroa.speculated.i.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.2, i64 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i, i64 264
  %i.x = load i32, ptr %i.w, align 8, !tbaa !68
  %i.y = zext i32 %i.x to i64
  %.sroa.speculated.i.4 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.3, i64 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i, i64 328
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !68
  %i.ab = zext i32 %i.aa to i64
  %.sroa.speculated.i.5 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.4, i64 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i, i64 392
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !68
  %i.ae = zext i32 %i.ad to i64
  %.sroa.speculated.i.6 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.5, i64 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i, i64 456
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !68
  %i.ah = zext i32 %i.ag to i64
  %.sroa.speculated.i.7 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.6, i64 %i.ah) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i, i64 512 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa, label %.lr.ph.i

_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi ptr [ %.val41, %.lr.ph.i.preheader ], [ %i.ai, %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa ]
  %.057.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.sroa.speculated.i.7, %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi ptr [ %i.am, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.057.i.epil = phi i64 [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ], [ %.057.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.epil, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !68
  %i.al = zext i32 %i.ak to i64
  %.sroa.speculated.i.epil = tail call i64 @llvm.umax.i64(i64 %.057.i.epil, i64 %i.al) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.epil, i64 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit, label %.lr.ph.i.epil, !llvm.loop !564

_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit: ; preds = %.lr.ph.i.epil, %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa
  %.sroa.speculated.i.lcssa = phi i64 [ %.sroa.speculated.i.7, %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.not109 = icmp eq i64 %.sroa.speculated.i.lcssa, 0
  br i1 %.not109, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %_ZN12_GLOBAL__N_121BitCastBitsEnumerator21getMaxNumberOfEntriesEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 76
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 140
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 204
  %i.bp = ptrtoint ptr %9 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph81, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %.080 = phi i64 [ 0, %.lr.ph81 ], [ %i.fc, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %i.an, ptr %4, align 8, !tbaa !85
  store i32 0, ptr %i.ao, align 8, !tbaa !68
  store i32 6, ptr %i.ap, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.aq, ptr %5, align 8, !tbaa !85
  store i32 0, ptr %i.ar, align 8, !tbaa !68
  store i32 6, ptr %i.as, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.at, ptr %6, align 8, !tbaa !85
  store i32 0, ptr %i.au, align 8, !tbaa !68
  store i32 6, ptr %i.av, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.aw, ptr %7, align 8, !tbaa !85
  store i32 0, ptr %i.ax, align 8, !tbaa !68
  store i32 6, ptr %i.ay, align 4, !tbaa !69
  %.val = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %.val40 = load i32, ptr %i.e, align 8, !tbaa !68 ; 2 uses
  %i.bq = zext i32 %.val40 to i64
  %.idx = shl nuw nsw i64 %i.bq, 6
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not78 = icmp eq i32 %.val40, 0
  br i1 %.not78, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %i.ba, ptr %9, align 8, !tbaa !85
  store i32 0, ptr %i.bb, align 8, !tbaa !68
  store i32 6, ptr %i.bc, align 4, !tbaa !69
  br label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit

.lr.ph:                                           ; preds = %bb.b
  %.not76 = icmp eq i64 %.080, 0
  %xtraiter111 = and i64 %.080, 3                 ; 3 uses
  %i.bs = icmp samesign ult i64 %.080, 4
  %unroll_iter116 = and i64 %.080, 9223372036854775804
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit75
  %.pre = load i32, ptr %i.ao, align 8, !tbaa !68 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %i.ba, ptr %9, align 8, !tbaa !85
  store i32 0, ptr %i.bb, align 8, !tbaa !68
  store i32 6, ptr %i.bc, align 4, !tbaa !69
  %.not.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bt = icmp ugt i32 %.pre, 6
  br i1 %i.bt, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i:           ; preds = %bb.c
  %i.bu = zext i32 %.pre to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.ba, i64 noundef %i.bu, i64 noundef 8) #15
  %.pre.i = load i32, ptr %i.ao, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i
  %.pre83 = load ptr, ptr %9, align 8, !tbaa !85
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i:    ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge, %bb.c
  %i.bv = phi ptr [ %.pre83, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.ba, %bb.c ]
  %i.bw = phi i32 [ %.pre.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %.pre, %bb.c ]
  %i.bx = zext i32 %i.bw to i64
  %i.by = load ptr, ptr %4, align 8, !tbaa !85
  %gepdiff.i.i = shl nuw nsw i64 %i.bx, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 8 %i.by, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i
  store i32 %.pre, ptr %i.bb, align 8, !tbaa !68
  br label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit

_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit:        ; preds = %._crit_edge.thread, %._crit_edge, %.sink.split.i.i
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !85
  store i32 0, ptr %i.bf, align 8, !tbaa !68
  store i32 6, ptr %i.bg, align 4, !tbaa !69
  %i.bz = load i32, ptr %i.ar, align 8, !tbaa !68 ; 5 uses
  %.not.i.i46 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i46, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit
  %i.ca = icmp ugt i32 %i.bz, 6
  br i1 %i.ca, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.d
  %i.cb = zext i32 %i.bz to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull %i.be, i64 noundef %i.cb, i64 noundef 8) #15
  %.pre.i49 = load i32, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i50 = icmp eq i32 %.pre.i49, 0
  br i1 %.not.i.i.i50, label %.sink.split.i.i48, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre84 = load ptr, ptr %i.bd, align 8, !tbaa !85
  br label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.d
  %i.cc = phi ptr [ %.pre84, %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.be, %bb.d ]
  %i.cd = phi i32 [ %.pre.i49, %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.bz, %bb.d ]
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %5, align 8, !tbaa !85
  %gepdiff.i.i47 = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 8 %i.cf, i64 %gepdiff.i.i47, i1 false)
  br label %.sink.split.i.i48

.sink.split.i.i48:                                ; preds = %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.bz, ptr %i.bf, align 8, !tbaa !68
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit, %.sink.split.i.i48
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !85
  store i32 0, ptr %i.bj, align 8, !tbaa !68
  store i32 6, ptr %i.bk, align 4, !tbaa !69
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !68 ; 5 uses
  %.not.i.i51 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i51, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit58, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit
  %i.ch = icmp ugt i32 %i.cg, 6
  br i1 %i.ch, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55: ; preds = %bb.e
  %i.ci = zext i32 %i.cg to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull %i.bi, i64 noundef %i.ci, i64 noundef 8) #15
  %.pre.i56 = load i32, ptr %i.au, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i57 = icmp eq i32 %.pre.i56, 0
  br i1 %.not.i.i.i57, label %.sink.split.i.i54, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52_crit_edge

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52_crit_edge: ; preds = %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55
  %.pre85 = load ptr, ptr %i.bh, align 8, !tbaa !85
  br label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52: ; preds = %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52_crit_edge, %bb.e
  %i.cj = phi ptr [ %.pre85, %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52_crit_edge ], [ %i.bi, %bb.e ]
  %i.ck = phi i32 [ %.pre.i56, %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55._ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52_crit_edge ], [ %i.cg, %bb.e ]
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load ptr, ptr %6, align 8, !tbaa !85
  %gepdiff.i.i53 = shl nuw nsw i64 %i.cl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 8 %i.cm, i64 %gepdiff.i.i53, i1 false)
  br label %.sink.split.i.i54

.sink.split.i.i54:                                ; preds = %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i52, %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i55
  store i32 %i.cg, ptr %i.bj, align 8, !tbaa !68
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit58

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit58: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit, %.sink.split.i.i54
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !85
  store i32 0, ptr %i.bn, align 8, !tbaa !68
  store i32 6, ptr %i.bo, align 4, !tbaa !69
  %i.cn = load i32, ptr %i.ax, align 8, !tbaa !68 ; 5 uses
  %.not.i.i59 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i59, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit66, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2ERKS3_.exit58
  %i.co = icmp ugt i32 %i.cn, 6
  br i1 %i.co, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i63, label %_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.thread.i60

_ZSt4copyIPKN4mlir9AttributeEPS1_ET0_T_S6_S5_.exit30.i.i63: ; preds = %bb.f
  %i.cp = zext i32 %i.cn to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull %i.bm, i64 noundef %i.cp, i64 noundef 8) #15
  %.pre.i64 = load i32, ptr %i.ax, align 8, !tbaa !68 ; 2 uses
end_hunk_0
