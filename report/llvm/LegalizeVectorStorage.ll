Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeVectorStorage?download=true
inline.NumInlined: 2669
inline.NumDeleted: 1710
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_120LegalizeTransferRead15matchAndRewriteEN4mlir6vector14TransferReadOpERNS1_15PatternRewriterE:bb.a
  %unroll_iter = and i64 %i.az, -8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.08.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %spec.select.i.i.i.i.7, %.lr.ph.i.i.i.i ]
  %.057.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %i.bb = load i8, ptr %.057.i.i.i.i, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bc = zext nneg i8 %i.bb to i64
  %spec.select.i.i.i.i = add nuw nsw i64 %.08.i.i.i.i, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bf = zext nneg i8 %i.be to i64
  %spec.select.i.i.i.i.1 = add nuw nsw i64 %spec.select.i.i.i.i, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bi = zext nneg i8 %i.bh to i64
  %spec.select.i.i.i.i.2 = add nuw nsw i64 %spec.select.i.i.i.i.1, %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bl = zext nneg i8 %i.bk to i64
  %spec.select.i.i.i.i.3 = add nuw nsw i64 %spec.select.i.i.i.i.2, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bo = zext nneg i8 %i.bn to i64
  %spec.select.i.i.i.i.4 = add nuw nsw i64 %spec.select.i.i.i.i.3, %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !61, !range !62, !noundef !63
  %i.br = zext nneg i8 %i.bq to i64
  %spec.select.i.i.i.i.5 = add nuw nsw i64 %spec.select.i.i.i.i.4, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bu = zext nneg i8 %i.bt to i64
  %spec.select.i.i.i.i.6 = add nuw nsw i64 %spec.select.i.i.i.i.5, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bx = zext nneg i8 %i.bw to i64
  %spec.select.i.i.i.i.7 = add nuw nsw i64 %spec.select.i.i.i.i.6, %i.bx ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !305

_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.08.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %spec.select.i.i.i.i.7, %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa ]
  %.057.i.i.i.i.epil.init = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.08.i.i.i.i.epil = phi i64 [ %spec.select.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ %.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.057.i.i.i.i.epil = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.epil ], [ %.057.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.bz = load i8, ptr %.057.i.i.i.i.epil, align 1, !tbaa !61, !range !62, !noundef !63
  %i.ca = zext nneg i8 %i.bz to i64
  %spec.select.i.i.i.i.epil = add nuw nsw i64 %.08.i.i.i.i.epil, %i.ca ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !306

_ZNK4mlir10VectorType18getNumScalableDimsEv.exit: ; preds = %.lr.ph.i.i.i.i.epil, %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa
  %spec.select.i.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.i.7, %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.unr-lcssa ], [ %spec.select.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ]
  %.not = icmp eq i64 %spec.select.i.i.i.i.lcssa, 1
  br i1 %.not, label %bb.i, label %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.thread

_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.thread: ; preds = %bb.g, %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.cd, align 1, !tbaa !76
  store ptr @.str.22, ptr %4, align 8, !tbaa !77
  store i8 3, ptr %i.cc, align 8, !tbaa !75
  %i.ce = load ptr, ptr %9, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %4, ptr %3, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i71, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit74, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.thread
  %i.ch = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cg) #21
  br i1 %i.ch, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i72, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit74

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i72: ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.0.0.copyload.i.i.i.i73 = load ptr, ptr %i.ci, align 8
  %i.cj = ptrtoint ptr %3 to i64
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr %.sroa.0.0.copyload.i.i.i.i73, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14TransferReadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cj) #21, !inline_history !304
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit74

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit74: ; preds = %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit.thread, %bb.h, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.an

bb.i:                                             ; preds = %_ZNK4mlir10VectorType18getNumScalableDimsEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = ashr i64 %i.at, 2                       ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i75, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i75:                                 ; preds = %bb.i
  %i.cr = and i64 %i.at, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.cr
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i75
  %.047.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i75 ], [ %i.da, %bb.n ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i75 ], [ %i.cz, %bb.n ] ; 9 uses
  %i.cs = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !61, !range !62, !noundef !63
  %.not148 = icmp eq i8 %i.cs, 0
  br i1 %.not148, label %bb.k, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !61, !range !62, !noundef !63
  %.not149 = icmp eq i8 %i.cu, 0
  br i1 %.not149, label %bb.l, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !61, !range !62, !noundef !63
  %.not150 = icmp eq i8 %i.cw, 0
  br i1 %.not150, label %bb.m, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit191

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !61, !range !62, !noundef !63
  %.not151 = icmp eq i8 %i.cy, 0
  br i1 %.not151, label %bb.n, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit193

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.da = add nsw i64 %.047.i.i.i.i, -1
  %i.db = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.db, label %bb.j, label %._crit_edge.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.i
  %.029.lcssa.i.i.i.i = phi ptr [ %i.ar, %bb.i ], [ %scevgep.i.i.i.i, %bb.n ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.dc = sub i64 %i.co, %.pre-phi.i.i.i.i
  switch i64 %i.dc, label %bb.r [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !61, !range !62, !noundef !63
  %.not152 = icmp eq i8 %i.dd, 0
  br i1 %.not152, label %bb.p, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.p
  %.1.i.i.i.i = phi ptr [ %i.de, %bb.p ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.df = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !61, !range !62, !noundef !63
  %.not153 = icmp eq i8 %i.df, 0
  br i1 %.not153, label %bb.q, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.q
  %.2.i.i.i.i = phi ptr [ %i.dg, %bb.q ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dh = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !61, !range !62, !noundef !63
  %.not154 = icmp eq i8 %i.dh, 0
  br i1 %.not154, label %bb.r, label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

bb.r:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit191: ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit193: ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit: ; preds = %bb.j, %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit191, %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit193, %bb.o, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %bb.r
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.cn, %bb.r ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.o ], [ %i.dk, %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit193 ], [ %i.di, %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.dj, %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit.loopexit.split.loop.exit191 ], [ %.02946.i.i.i.i, %bb.j ]
  %i.dl = ptrtoint ptr %.028.i.i.i.i to i64       ; 3 uses
  %i.dm = sub i64 %i.co, %i.dl                    ; 7 uses
  %i.dn = icmp slt i64 %i.dm, 2
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit
  %i.do = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.23)
  br label %bb.an

bb.t:                                             ; preds = %_ZN4llvm4findIRNS_8ArrayRefIbEEbEEDaOT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.dp = call i64 @_ZN4mlir6vector14TransferReadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #21
  %i.dq = load ptr, ptr %9, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !92
  %i.dt = and i64 %i.dp, 4294967295
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %.sroa.0.0.copyload.i.i.i.i78 = load ptr, ptr %i.dv, align 8, !tbaa !72
  store ptr %.sroa.0.0.copyload.i.i.i.i78, ptr %13, align 8
  %i.dw = call { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_10ShapedTypeEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.dx = extractvalue { ptr, ptr } %i.dw, 0      ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !52
  %i.ea = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.ea, ptr %i.dx, ptr null
  store ptr %spec.select.i.i, ptr %12, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %i.ea, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = call noundef zeroext i1 @_ZN4mlir10MemRefType25areTrailingDimsContiguousEl(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.dm) #21
  br i1 %i.eb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ec = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.24)
  br label %bb.am

bb.w:                                             ; preds = %bb.u
  %i.ed = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 2 uses
  %i.eg = add nsw i64 %i.dm, -1                   ; 10 uses
  %.sroa.0.0.copyload.pn.idx.i = call i64 @llvm.usub.sat.i64(i64 %i.ef, i64 %i.eg)
  %.sroa.0.0.copyload.pn.i = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.0.0.copyload.pn.idx.i
  %.pn2.i = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.ef) ; 3 uses
  %i.eh = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21 ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1      ; 2 uses
  %.sroa.0.0.copyload.pn.idx.i81 = call i64 @llvm.usub.sat.i64(i64 %i.ej, i64 %i.eg)
  %.sroa.0.0.copyload.pn.i82 = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.0.0.copyload.pn.idx.i81
  %.pn2.i83 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.ej)
  %.idx.i = shl nuw nsw i64 %.pn2.i, 3
  %.not.i.i.i = icmp eq i64 %.pn2.i, %.pn2.i83
  br i1 %.not.i.i.i, label %bb.x, label %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread144

bb.x:                                             ; preds = %bb.w
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %.pn2.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread, label %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit

_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit: ; preds = %bb.x
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.pn.i, ptr %.sroa.0.0.copyload.pn.i82, i64 %.idx.i)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread, label %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread144

_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread144: ; preds = %bb.w, %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit
  %i.ek = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.25)
  br label %bb.am

_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread: ; preds = %bb.x, %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @_ZN4mlir6detail30VectorTransferOpInterfaceTraitINS_6vector14TransferReadOpEE17getInBoundsValuesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.182") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.el = load ptr, ptr %14, align 8, !tbaa !85
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !86 ; 2 uses
  %.sroa.0.0.copyload.pn.idx.i87 = call i64 @llvm.usub.sat.i64(i64 %i.en, i64 %i.eg)
  %.sroa.0.0.copyload.pn.i88 = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.0.0.copyload.pn.idx.i87
  %.pn2.i89 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.en)
  %i.eo = call fastcc noundef zeroext i1 @_ZN4llvm6all_ofINS_8ArrayRefIbEEZNK12_GLOBAL__N_120LegalizeTransferRead15matchAndRewriteEN4mlir6vector14TransferReadOpERNS5_15PatternRewriterEEUlbE_EEbOT_T0_(ptr %.sroa.0.0.copyload.pn.i88, i64 %.pn2.i89)
  br i1 %i.eo, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread
  %i.ep = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.26)
  br label %bb.ak

bb.z:                                             ; preds = %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.eq, ptr %15, align 8, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i32 0, ptr %i.er, align 8, !tbaa !43
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 1, ptr %i.es, align 4, !tbaa !44
  %i.et = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.eu = extractvalue { ptr, i64 } %i.et, 1
  %.not63163 = icmp slt i64 %i.eu, %i.dm
  br i1 %.not63163, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ey = ptrtoint ptr %16 to i64
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit, %bb.z
  %i.ez = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.fa = extractvalue { ptr, i64 } %i.ez, 1
  %i.fb = sub nsw i64 %i.fa, %i.dm
  %.059165 = add nsw i64 %i.fb, 1                 ; 2 uses
  %i.fc = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.fd = extractvalue { ptr, i64 } %i.fc, 1
  %i.fe = icmp slt i64 %.059165, %i.fd
  br i1 %i.fe, label %.lr.ph168, label %._crit_edge169

bb.aa:                                            ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.ge, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr %i.ev, ptr %16, align 8, !tbaa !53
  store i32 2, ptr %i.ex, align 4, !tbaa !44
  store i64 %.0164, ptr %i.ev, align 8
  store i32 1, ptr %i.ew, align 8, !tbaa !43
  %i.ff = load i32, ptr %i.er, align 8, !tbaa !43 ; 2 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %i.fi = load i32, ptr %i.es, align 4, !tbaa !44
  %.not.i.i.not.i = icmp ult i32 %i.ff, %i.fi
  %.pre4.i = load ptr, ptr %15, align 8, !tbaa !53 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i, label %bb.ab, !prof !125

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %.pre4.i, i64 %i.fg
  %i.fk = icmp uge ptr %16, %.pre4.i
  %i.fl = icmp ult ptr %16, %i.fj
  %spec.select.i.i.i.i.i = and i1 %i.fk, %i.fl
  br i1 %spec.select.i.i.i.i.i, label %bb.ac, label %.critedge.i.i.i, !prof !89

bb.ac:                                            ; preds = %bb.ab
  %i.fm = ptrtoint ptr %.pre4.i to i64
  %i.fn = sub i64 %i.ey, %i.fm
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef %i.fh)
  %i.fo = load ptr, ptr %15, align 8, !tbaa !53   ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fn
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef %i.fh)
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !53
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i: ; preds = %.critedge.i.i.i, %bb.ac, %bb.aa
  %i.fq = phi ptr [ %.pre4.i, %bb.aa ], [ %i.fo, %bb.ac ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %16, %bb.aa ], [ %i.fp, %bb.ac ], [ %16, %.critedge.i.i.i ] ; 2 uses
  %i.fr = load i32, ptr %i.er, align 8, !tbaa !43
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fq, i64 %i.fs ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !53
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 0, ptr %i.fv, align 8, !tbaa !43
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 2, ptr %i.fw, align 4, !tbaa !44
  %i.fx = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !43
  %.not.i.i3.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i3.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.fz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %.016.i.i.i) ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE28reserveForParamAndGetAddressERS2_m.exit.i, %bb.ad
  %i.ga = load i32, ptr %i.er, align 8, !tbaa !43
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.er, align 8, !tbaa !43
  %i.gc = load ptr, ptr %16, align 8, !tbaa !53   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ev
  br i1 %i.gd, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit
  call void @free(ptr noundef %i.gc) #21
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit:            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE9push_backEOS2_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.ge = add nuw nsw i64 %.0164, 1
  %i.gf = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.gg = extractvalue { ptr, i64 } %i.gf, 1
  %i.gh = sub nsw i64 %i.gg, %i.dm
  %.not63.not = icmp slt i64 %.0164, %i.gh
  br i1 %.not63.not, label %bb.aa, label %._crit_edge, !llvm.loop !307

._crit_edge169:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %._crit_edge
  %.sroa.022.0.copyload = load ptr, ptr %12, align 8
  %i.gi = load ptr, ptr %15, align 8, !tbaa !53
  %i.gj = load i32, ptr %i.er, align 8, !tbaa !43
  %i.gk = zext i32 %i.gj to i64
  %i.gl = call noundef zeroext i1 @_ZN4mlir6memref15CollapseShapeOp23isGuaranteedCollapsibleENS_10MemRefTypeEN4llvm8ArrayRefINS3_11SmallVectorIlLj2EEEEE(ptr %.sroa.022.0.copyload, ptr %i.gi, i64 %i.gk) #21
  br i1 %i.gl, label %bb.ah, label %bb.aj

.lr.ph168:                                        ; preds = %._crit_edge, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.059166 = phi i64 [ %.059, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %.059165, %._crit_edge ] ; 3 uses
  %i.gm = load ptr, ptr %15, align 8, !tbaa !53
  %i.gn = load i32, ptr %i.er, align 8, !tbaa !43
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.gm, i64 %i.go ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -32 ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -24 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !43 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gp, i64 -20
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !44
  %.not.i92 = icmp ult i32 %i.gs, %i.gu
  br i1 %.not.i92, label %bb.ag, label %bb.af, !prof !125

bb.af:                                            ; preds = %.lr.ph168
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 noundef %.059166)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.ag:                                            ; preds = %.lr.ph168
  %i.gv = zext i32 %i.gs to i64
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !53
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gv
  store i64 %.059166, ptr %i.gx, align 1
  %i.gy = load i32, ptr %i.gr, align 8, !tbaa !43
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gr, align 8, !tbaa !43
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.af, %bb.ag
  %.059 = add nsw i64 %.059166, 1                 ; 2 uses
  %i.ha = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.hb = extractvalue { ptr, i64 } %i.ha, 1
  %i.hc = icmp slt i64 %.059, %i.hb
  br i1 %i.hc, label %.lr.ph168, label %._crit_edge169, !llvm.loop !308

bb.ah:                                            ; preds = %._crit_edge169
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.he = load ptr, ptr %9, align 8, !tbaa !64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.hf, align 8
  %i.hg = call i64 @_ZN4mlir6vector14TransferReadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #21
  %i.hh = load ptr, ptr %9, align 8, !tbaa !64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !92
  %i.hk = and i64 %i.hg, 4294967295
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %.sroa.0.0.copyload.i.i.i.i95 = load ptr, ptr %i.hm, align 8, !tbaa !72
  %i.hn = load ptr, ptr %15, align 8, !tbaa !53
  %i.ho = load i32, ptr %i.er, align 8, !tbaa !43
  %i.hp = zext i32 %i.ho to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.hq = call ptr @_ZN4mlir6memref15CollapseShapeOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS6_11SmallVectorIlLj2EEEEENS7_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i.i95, ptr %i.hn, i64 %i.hp, ptr noundef nonnull byval(%"class.llvm::ArrayRef.162") align 8 %17) #21
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.hs = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21 ; 2 uses
  %i.ht = extractvalue { ptr, i64 } %i.hs, 0
  %i.hu = extractvalue { ptr, i64 } %i.hs, 1
  call void @_ZN4llvm11SmallVectorIlLj6EEC2IlvEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr %i.ht, i64 %i.hu)
  %i.hv = sub nsw i64 %i.av, %i.dm                ; 2 uses
  %.060170 = add nsw i64 %i.hv, 1                 ; 3 uses
  %i.hw = icmp slt i64 %.060170, %i.av
  %.pre = load ptr, ptr %18, align 8, !tbaa !53   ; 7 uses
  br i1 %i.hw, label %.lr.ph173, label %._crit_edge174

.lr.ph173:                                        ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.hv ; 6 uses
  %.promoted = load i64, ptr %i.hx, align 8, !tbaa !42 ; 2 uses
  %i.hy = add i64 %i.at, %i.as                    ; 2 uses
  %22 = xor i64 %i.dl, -1
  %23 = add i64 %i.hy, %22
  %i.hz = add i64 %i.hy, -2
  %i.ia = sub i64 %i.hz, %i.dl
  %xtraiter209 = and i64 %23, 3                   ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph173, %.prol.preheader
  %i.ib = phi i64 [ %i.ie, %.prol.preheader ], [ %.promoted, %.lr.ph173 ]
  %.060171.prol = phi i64 [ %.060.prol, %.prol.preheader ], [ %.060170, %.lr.ph173 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph173 ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.060171.prol
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !42
  %i.ie = mul nsw i64 %i.ib, %i.id                ; 3 uses
  store i64 %i.ie, ptr %i.hx, align 8, !tbaa !42
  %.060.prol = add nsw i64 %.060171.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !309

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph173
  %.unr = phi i64 [ %.promoted, %.lr.ph173 ], [ %i.ie, %.prol.preheader ]
  %.060171.unr = phi i64 [ %.060170, %.lr.ph173 ], [ %.060.prol, %.prol.preheader ]
  %i.if = icmp ult i64 %i.ia, 3
  br i1 %i.if, label %._crit_edge174, label %.lr.ph173.new

._crit_edge174:                                   ; preds = %.prol.loopexit, %.lr.ph173.new, %bb.ah
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !43
  %i.ii = trunc i64 %i.eg to i32
  %i.ij = sub i32 %i.ih, %i.ii                    ; 2 uses
  store i32 %i.ij, ptr %i.ig, align 8, !tbaa !43
  %i.ik = zext i32 %i.ij to i64
  %i.il = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  %i.im = sub i64 %i.at, %i.eg
  %i.in = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %.pre, i64 %i.ik, ptr %i.il, ptr %i.ar, i64 %i.im) #21
  %i.io = call { ptr, i64 } @_ZN4mlir6vector14TransferReadOp10getIndicesEv(ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %i.ip = extractvalue { ptr, i64 } %i.io, 1
  %i.iq = sub i64 %i.ip, %i.eg
  %i.ir = extractvalue { ptr, i64 } %i.io, 0
  %i.is = load ptr, ptr %9, align 8, !tbaa !64
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %.sroa.0.0.copyload.i.i96 = load ptr, ptr %i.it, align 8
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.ir, i64 %i.iq) #21
  %i.iu = call i64 @_ZN4mlir6vector14TransferReadOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2) #21
  %i.iv = load ptr, ptr %9, align 8, !tbaa !64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 72
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !92
  %i.iy = and i64 %i.iu, 4294967295
  %i.iz = getelementptr inbounds nuw [32 x i8], ptr %i.ix, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %.sroa.0.0.copyload.i.i.i.i99 = load ptr, ptr %i.ja, align 8, !tbaa !72
  %i.jb = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i99 to i64
  store i64 %i.jb, ptr %20, align 8, !tbaa !72
  %i.jc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i8 1, ptr %i.jc, align 8, !tbaa !314
  %i.jd = load ptr, ptr %14, align 8, !tbaa !85
  %i.je = load i64, ptr %i.em, align 8, !tbaa !86
  %i.jf = sub i64 %i.je, %i.eg
  store ptr %i.jd, ptr %21, align 8, !tbaa !83
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.jf, ptr %.sroa.4105.0..sroa_idx, align 8, !tbaa !42
  %i.jg = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i8 1, ptr %i.jg, align 8, !tbaa !316
  %i.jh = load i64, ptr %19, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = call ptr @_ZN4mlir6vector14TransferReadOp6createERNS_9OpBuilderENS_8LocationENS_10VectorTypeENS_5ValueENS_10ValueRangeESt8optionalIS6_ES8_IN4llvm8ArrayRefIbEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr %.sroa.0.0.copyload.i.i96, ptr %i.in, ptr nonnull %i.hr, i64 %i.jh, i64 %i.jj, ptr noundef nonnull byval(%"class.std::optional.271") align 8 %20, ptr noundef nonnull byval(%"class.std::optional.536") align 8 %21) #21
  %i.jl = load ptr, ptr %9, align 8, !tbaa !64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %.sroa.0.0.copyload.i.i102 = load ptr, ptr %i.jm, align 8
  %.sroa.02.0.copyload = load ptr, ptr %11, align 8, !tbaa !68
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 -16
  %i.jo = call ptr @_ZN4mlir6vector11ShapeCastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr %.sroa.0.0.copyload.i.i102, ptr %.sroa.02.0.copyload, ptr nonnull %i.jn) #21
  %i.jp = load ptr, ptr %9, align 8, !tbaa !64
  %i.jq = load ptr, ptr %2, align 8, !tbaa !40
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.jp, ptr noundef %i.jo) #21
  %i.jt = load ptr, ptr %18, align 8, !tbaa !53   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge174
  call void @free(ptr noundef %i.jt) #21
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %._crit_edge174, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.aj

.lr.ph173.new:                                    ; preds = %.prol.loopexit, %.lr.ph173.new
  %i.jw = phi i64 [ %i.kl, %.lr.ph173.new ], [ %.unr, %.prol.loopexit ]
  %.060171 = phi i64 [ %.060.3, %.lr.ph173.new ], [ %.060171.unr, %.prol.loopexit ] ; 5 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.060171
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !42
  %i.jz = mul nsw i64 %i.jw, %i.jy                ; 2 uses
  store i64 %i.jz, ptr %i.hx, align 8, !tbaa !42
  %i.ka = getelementptr [8 x i8], ptr %.pre, i64 %.060171
  %i.kb = getelementptr i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !42
  %i.kd = mul nsw i64 %i.jz, %i.kc                ; 2 uses
  store i64 %i.kd, ptr %i.hx, align 8, !tbaa !42
  %i.ke = getelementptr [8 x i8], ptr %.pre, i64 %.060171
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !42
  %i.kh = mul nsw i64 %i.kd, %i.kg                ; 2 uses
  store i64 %i.kh, ptr %i.hx, align 8, !tbaa !42
  %i.ki = getelementptr [8 x i8], ptr %.pre, i64 %.060171
  %i.kj = getelementptr i8, ptr %i.ki, i64 24
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !42
  %i.kl = mul nsw i64 %i.kh, %i.kk                ; 2 uses
  store i64 %i.kl, ptr %i.hx, align 8, !tbaa !42
  %.060.3 = add nsw i64 %.060171, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %.060.3, %i.av
  br i1 %exitcond.not.3, label %._crit_edge174, label %.lr.ph173.new, !llvm.loop !310

bb.aj:                                            ; preds = %._crit_edge169, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %.sroa.058.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ 0, %._crit_edge169 ]
  call void @_ZN4llvm11SmallVectorINS0_IlLj2EEELj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.y
  %.sroa.058.1 = phi i8 [ %i.ep, %bb.y ], [ %.sroa.058.0, %bb.aj ]
  %i.km = load ptr, ptr %14, align 8, !tbaa !85   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.km) #21
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread144, %bb.v
  %.sroa.058.2 = phi i8 [ %i.ek, %_ZN4llvm5equalINS_8ArrayRefIlEES2_EEbOT_OT0_.exit.thread144 ], [ %.sroa.058.1, %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit ], [ %i.ec, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.s, %bb.am, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit74
  %.sroa.058.4 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit74 ], [ %i.do, %bb.s ], [ %.sroa.058.2, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit69, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.058.5 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc.exit69 ], [ %.sroa.058.4, %bb.an ]
  ret i8 %.sroa.058.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.601, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !76
  %i.c = load i8, ptr %2, align 1, !tbaa !77
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %4, align 8, !tbaa !77
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.a, %bb.b
  %storemerge.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge.i, ptr %i.a, align 8, !tbaa !75
  %i.d = load ptr, ptr %1, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %4, ptr %3, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.g = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #21
  br i1 %i.g, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8
  %i.i = ptrtoint ptr %3 to i64
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector14TransferReadOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.i) #21, !inline_history !317
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector14TransferReadOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit: ; preds = %_ZN4llvm5TwineC2EPKc.exit, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i8 0
}

declare ptr @_ZN4mlir6vector14TransferReadOp17getPermutationMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

end_hunk_0
