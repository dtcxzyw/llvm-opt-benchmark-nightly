Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorOps?download=true
inline.NumInlined: 52322
inline.NumDeleted: 18098
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN12_GLOBAL__N_116CreateMaskFolderD0Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #27
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector12CreateMaskOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #27
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_116CreateMaskFolder15matchAndRewriteEN4mlir6vector12CreateMaskOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %4 = alloca %"class.mlir::ValueTypeRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::VectorType", align 8  ; 7 uses
  %6 = alloca %"struct.std::array.5202", align 8  ; 4 uses
  %7 = alloca %"struct.std::array.5203", align 1  ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.397", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !3696
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !356, !noalias !3696 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds i8, ptr %1, i64 -16
  %i.f = zext i32 %i.c to i64
  %.sroa.0.0.i.i.i = select i1 %i.d, ptr null, ptr %i.e
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !3696
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !noalias !3696
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !3696
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.h = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.2.0.copyload.i.i.i) #27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  store ptr %i.k, ptr %5, align 8
  %i.l = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  %i.o = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i8 0, ptr %7, align 1
  %i.q = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.r = extractvalue { ptr, i64 } %i.q, 1
  %i.s = icmp eq i64 %i.r, 0                      ; 3 uses
  %.sroa.0.0 = select i1 %i.s, ptr %6, ptr %i.m   ; 3 uses
  %.sroa.070.0 = select i1 %i.s, ptr %7, ptr %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.t, ptr %8, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  store i32 0, ptr %i.u, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  store i32 4, ptr %i.v, align 4, !tbaa !135
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 8388608
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit, !prof !124

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !278 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %.not86 = icmp eq i32 %i.ac, 0
  br i1 %.not86, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit, %bb.j
  %.sroa.9.088 = phi i64 [ %i.bl, %bb.j ], [ 0, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.9.088
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !126, !noalias !3697 ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.ah = or i64 %i.ag, 4
  %i.ai = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %i.ah) #27 ; 2 uses
  %i.aj = extractvalue { i64, i8 } %i.ai, 0       ; 3 uses
  %i.ak = extractvalue { i64, i8 } %i.ai, 1
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.070.0, i64 %.sroa.9.088
  %i.an = load i8, ptr %i.am, align 1, !tbaa !156, !range !157, !noundef !150
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = icmp sgt i64 %i.aj, -1
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.aq = load i32, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.ar = load i32, ptr %i.v, align 4, !tbaa !135
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !120

bb.c:                                             ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.aj)
  br label %bb.j

bb.d:                                             ; preds = %.critedge
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %8, align 8, !tbaa !133
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store i64 %i.aj, ptr %i.au, align 1
  %i.av = load i32, ptr %i.u, align 8, !tbaa !134
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.u, align 8, !tbaa !134
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph
  %i.ax = call { i64, i8 } @_ZN4mlir6vector27getConstantVscaleMultiplierENS_5ValueE(ptr %.sroa.0.0.copyload.i.i.i.i.i) ; 2 uses
  %i.ay = extractvalue { i64, i8 } %i.ax, 0       ; 3 uses
  %i.az = extractvalue { i64, i8 } %i.ax, 1
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.sroa.9.088
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp slt i64 %i.ay, %i.bc
  br i1 %i.bd, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load i32, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.bf = load i32, ptr %i.v, align 4, !tbaa !135
  %.not.i23 = icmp ult i32 %i.be, %i.bf
  br i1 %.not.i23, label %bb.i, label %bb.h, !prof !120

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.ay)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %8, align 8, !tbaa !133
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  store i64 %i.ay, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.u, align 8, !tbaa !134
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.u, align 8, !tbaa !134
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.i, %bb.h
  %i.bl = add nuw nsw i64 %.sroa.9.088, 1         ; 2 uses
  %.not = icmp eq i64 %i.bl, %i.ad
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, label %.lr.ph

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.j
  %.pre = load ptr, ptr %8, align 8, !tbaa !133, !noalias !3698 ; 11 uses
  %.pre106 = load i32, ptr %i.u, align 8, !tbaa !134, !noalias !3699 ; 11 uses
  %i.bm = zext i32 %.pre106 to i64                ; 3 uses
  %.idx = shl nuw nsw i64 %i.bm, 3                ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 2 uses
  %i.bo = shl nuw nsw i64 %i.n, 3
  %.idx101 = select i1 %i.s, i64 8, i64 %i.bo     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx101
  %i.bq = icmp ne i32 %.pre106, 0                 ; 2 uses
  %i.br = icmp samesign ne i64 %.idx101, 0
  %.not3.i89 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %.not3.i89, label %.lr.ph92, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %i.bs = lshr i64 %i.bm, 2                       ; 2 uses
  %.not.i25 = icmp eq i64 %i.bs, 0
  br i1 %.not.i25, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge
  %i.bt = and i64 %.idx, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %.pre, i64 %i.bt
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.cg, %bb.o ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %.pre, %.lr.ph.i.i.i.i ], [ %i.cf, %bb.o ] ; 9 uses
  %i.bu = load i64, ptr %.02946.i.i.i.i, align 8, !tbaa !112
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !112
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !112
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit128, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !112
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit130, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.cg = add nsw i64 %.047.i.i.i.i, -1
  %i.ch = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.ch, label %bb.k, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !68

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.o
  %i.ci = and i32 %.pre106, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %._crit_edge
  %.pre-phi56.i.i.i.i = phi i32 [ %i.ci, %._crit_edge.loopexit.i.i.i.i ], [ %.pre106, %._crit_edge ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.pre, %._crit_edge ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit [
    i32 3, label %bb.p
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cj = load i64, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !112
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.q
  %.1.i.i.i.i = phi ptr [ %i.cl, %bb.q ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cm = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !112
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.r
  %.2.i.i.i.i = phi ptr [ %i.co, %bb.r ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cp = load i64, ptr %.2.i.i.i.i, align 8, !tbaa !112
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit128: ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit130: ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit: ; preds = %bb.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit128, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit130, %bb.p, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.p ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.ct, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit130 ], [ %i.cs, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit128 ], [ %i.cr, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.k ]
  %.not85 = icmp eq ptr %.028.i.i.i.i, %i.bn
  br i1 %.not85, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %bb.s

.lr.ph92:                                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %.lr.ph92
  %.sroa.031.091 = phi ptr [ %i.db, %.lr.ph92 ], [ %.sroa.0.0, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ] ; 3 uses
  %.sroa.7.090 = phi ptr [ %i.da, %.lr.ph92 ], [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !112
  %i.cu = load i64, ptr %.sroa.7.090, align 8, !tbaa !112 ; 2 uses
  %i.cv = icmp slt i64 %i.cu, 0
  %..i.i = select i1 %i.cv, ptr %i.a, ptr %.sroa.7.090
  %i.cw = load i64, ptr %.sroa.031.091, align 8, !tbaa !112
  %i.cx = call i64 @llvm.smax.i64(i64 %i.cu, i64 0)
  %i.cy = icmp slt i64 %i.cw, %i.cx
  %..i3.i = select i1 %i.cy, ptr %.sroa.031.091, ptr %..i.i
  %i.cz = load i64, ptr %..i3.i, align 8, !tbaa !112
  store i64 %i.cz, ptr %.sroa.7.090, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.7.090, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.031.091, i64 8 ; 2 uses
  %i.dc = icmp ne ptr %i.da, %i.bn
  %i.dd = icmp ne ptr %i.db, %i.bp
  %.not3.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %.not3.i, label %.lr.ph92, label %._crit_edge

bb.s:                                             ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit
  %i.de = load i32, ptr %i.v, align 4, !tbaa !135
  %i.df = icmp ugt i32 %.pre106, %i.de
  br i1 %i.df, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE13growAndAssignEml.exit.i, label %bb.t

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE13growAndAssignEml.exit.i: ; preds = %bb.s
  store i32 0, ptr %i.u, align 8, !tbaa !134
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.t, i64 noundef %i.bm, i64 noundef 8) #27
  %i.dg = load ptr, ptr %8, align 8, !tbaa !133   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.dg, i8 0, i64 %.idx, i1 false), !tbaa !112
  store i32 %.pre106, ptr %i.u, align 8, !tbaa !134
  br label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit

bb.t:                                             ; preds = %bb.s
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr align 8 %.pre, i8 0, i64 %.idx, i1 false), !tbaa !112
  br label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit

_ZN4llvm15SmallVectorImplIlE6assignEml.exit:      ; preds = %bb.a, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit, %bb.t, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE13growAndAssignEml.exit.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit
  %i.dh = phi i32 [ %.pre106, %.lr.ph.i.i.i.i.i.preheader ], [ %.pre106, %._crit_edge._crit_edge52.i.i.i.i ], [ %.pre106, %._crit_edge.i.i.i.i ], [ %.pre106, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE13growAndAssignEml.exit.i ], [ 0, %bb.t ], [ %.pre106, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit ], [ 0, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit ], [ 0, %bb.a ]
  %i.di = phi ptr [ %.pre, %.lr.ph.i.i.i.i.i.preheader ], [ %.pre, %._crit_edge._crit_edge52.i.i.i.i ], [ %.pre, %._crit_edge.i.i.i.i ], [ %i.dg, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE13growAndAssignEml.exit.i ], [ %.pre, %bb.t ], [ %.pre, %_ZN4llvm12is_containedIRNS_11SmallVectorIlLj4EEEiEEbOT_RKT0_.exit ], [ %i.t, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_6vector12CreateMaskOpENS0_16VariadicOperandsEE11getOperandsEv.exit ], [ %i.t, %bb.a ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dk, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !179
  %i.dl = zext i32 %i.dh to i64
  %i.dm = call ptr @_ZN4mlir6vector14ConstantMaskOp6createERNS_9OpBuilderENS_8LocationENS_4TypeEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i, ptr %i.di, i64 %i.dl)
  %i.dn = load ptr, ptr %2, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, ptr noundef %i.dm) #27, !inline_history !3695
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82: ; preds = %bb.b, %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplIlE6assignEml.exit
  %.sroa.020.5 = phi i8 [ 1, %_ZN4llvm15SmallVectorImplIlE6assignEml.exit ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ]
  %i.dq = load ptr, ptr %8, align 8, !tbaa !133   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.t
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82
  call void @free(ptr noundef %i.dq) #27
  br label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit

_ZN4llvm11SmallVectorIlLj4EED2Ev.exit:            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.thread82, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i8 %.sroa.020.5
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir6RegionD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #3

declare void @_ZN4mlir4impl22ensureRegionTerminatorERNS_6RegionERNS_7BuilderENS_8LocationEN4llvm12function_refIFPNS_9OperationERNS_9OpBuilderES5_EEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir7OpTrait29SingleBlockImplicitTerminatorINS_6vector7YieldOpEE4ImplINS2_6MaskOpEE15buildTerminatorERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OperationState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %2, ptr %1, ptr nonnull @.str.489, i64 12) #27
  %i.a = call noundef ptr @_ZN4mlir9Operation6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(304) %2) #27
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm12function_refIFPN4mlir9OperationERNS1_9OpBuilderENS1_8LocationEEE11callback_fnIS7_EES3_lS5_S6_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call noundef ptr %i.a(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2) #27
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6insertINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEPS2_SE_T_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133    ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !134  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = sub nsw i64 %5, %3                       ; 9 uses
  %i.k = add i64 %i.j, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !135
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n                  ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.c, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 8) #27
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !134 ; 2 uses
  %.pre24.i = zext i32 %.pre.i to i64
  %.pre91.pre = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre91 = phi ptr [ %i.a, %bb.b ], [ %.pre91.pre, %bb.c ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre24.i, %bb.c ]
  %i.q = phi i32 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %.not8.i.i.i.i.i = icmp eq i64 %3, %5
  br i1 %.not8.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre91, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.010.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i ], [ %3, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.s = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.2.09.i.i.i.i.i) #27
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = or i64 %i.t, 4
  store i64 %i.u, ptr %.010.i.i.i.i.i, align 8
  %i.v = add nsw i64 %.sroa.2.09.i.i.i.i.i, 1     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.v, %5
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3700

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre23.i = load i32, ptr %i.e, align 8, !tbaa !134
  %.pre90 = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i
  %i.x = phi ptr [ %.pre90, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i ], [ %.pre91, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i ]
  %i.y = phi i32 [ %.pre23.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i ], [ %i.q, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i ]
  %i.z = trunc i64 %i.j to i32
  %i.aa = add i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.d
  br label %_ZSt4copyIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEPNS3_12OpFoldResultEET0_T_SE_SD_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ac, i64 noundef %i.k, i64 noundef 8) #27
  %.pre = load ptr, ptr %0, align 8, !tbaa !133
  %.pre89 = load i32, ptr %i.e, align 8, !tbaa !134 ; 2 uses
  %.pre93 = zext i32 %.pre89 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.g, %bb.d ], [ %.pre93, %bb.e ] ; 3 uses
  %i.ad = phi i32 [ %i.f, %bb.d ], [ %.pre89, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %i.a, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.d ; 9 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx ; 5 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.ah = ashr exact i64 %gepdiff, 3              ; 3 uses
  %.not = icmp ult i64 %i.ah, %i.j
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit
  %.neg = mul i64 %i.j, -8                        ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %.neg
  %i.aj = add nsw i64 %i.j, %.pre-phi             ; 2 uses
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !135
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i57

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.an, i64 noundef %i.aj, i64 noundef 8) #27
  %.pre.i62 = load i32, ptr %i.e, align 8, !tbaa !134 ; 2 uses
  %.pre12.i = zext i32 %.pre.i62 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i57

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i57: ; preds = %bb.g, %bb.f
  %.pre-phi.i58 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre12.i, %bb.g ]
  %i.ao = phi i32 [ %i.ad, %bb.f ], [ %.pre.i62, %bb.g ]
  %.not7.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit, label %.lr.ph.i.i.i.i.preheader.i59

.lr.ph.i.i.i.i.preheader.i59:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i57
  %i.ap = load ptr, ptr %0, align 8, !tbaa !133
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi.i58
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60, %.lr.ph.i.i.i.i.preheader.i59
  %.09.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i60 ], [ %i.aq, %.lr.ph.i.i.i.i.preheader.i59 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i60 ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i59 ] ; 2 uses
  %i.ar = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 8
  store i64 %i.ar, ptr %.09.i.i.i.i.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i61 = icmp eq ptr %i.as, %i.ag
  br i1 %.not.i.i.i.i.i61, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyISt13move_iteratorIPS2_ES6_EEvT_S8_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i60, !llvm.loop !56

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyISt13move_iteratorIPS2_ES6_EEvT_S8_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i60
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !134
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i57, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyISt13move_iteratorIPS2_ES6_EEvT_S8_T0_.exit.loopexit.i
  %i.au = phi i32 [ %.pre11.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyISt13move_iteratorIPS2_ES6_EEvT_S8_T0_.exit.loopexit.i ], [ %i.ao, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i57 ]
  %i.av = trunc i64 %i.j to i32
end_hunk_0
