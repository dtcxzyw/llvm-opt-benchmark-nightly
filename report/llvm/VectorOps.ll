Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorOps?download=true
inline.NumInlined: 52322
inline.NumDeleted: 18098
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir6vector19MultiDimReductionOp6verifyEv:bb.a
  %.not.i14 = icmp eq i64 %i.am, 0
  br i1 %.not.i14, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph
  %i.an = and i64 %.idx1.i, 9223372036854775776
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.aj, i64 %i.an
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i
  %.057.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.e ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02956.i.i.i.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load i64, ptr %.02956.i.i.i.i.i.i, align 8, !tbaa !111
  %i.ao = icmp eq i64 %.029.val39.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.ao, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 8
  %.val37.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !111
  %i.aq = icmp eq i64 %.val37.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.aq, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 16
  %.val35.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !111
  %i.as = icmp eq i64 %.val35.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.as, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit93", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 24
  %.val33.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !tbaa !111
  %i.au = icmp eq i64 %.val33.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.au, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 32
  %i.aw = add nsw i64 %.057.i.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.057.i.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !794

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.e
  %i.ay = and i64 %i.ak, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %.lr.ph
  %.pre-phi63.i.i.i.i.i.i = phi i64 [ %i.ay, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ak, %.lr.ph ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.aj, %.lr.ph ] ; 5 uses
  switch i64 %.pre-phi63.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i64, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !111
  %i.az = icmp eq i64 %.029.val.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.az, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.g ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i64, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !111
  %i.bb = icmp eq i64 %.1.val.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.bb, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i64, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !111
  %i.bd = icmp eq i64 %.2.val.i.i.i.i.i.i, %.sroa.7.073
  br i1 %i.bd, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit93": ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95": ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit93", %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95", %bb.f, %bb.h, %bb.j
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %bb.f ], [ %.2.i.i.i.i.i.i, %bb.j ], [ %i.bg, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit95" ], [ %i.bf, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit93" ], [ %i.be, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02956.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not63 = icmp eq ptr %i.al, %.028.i.i.i.i.i.i
  br i1 %.not63, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.thread", label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit"
  %i.bh = load i64, ptr %.sroa.046.074, align 8, !tbaa !111 ; 2 uses
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !133 ; 2 uses
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !134
  %.not.i15 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i15, label %bb.l, label %bb.k, !prof !119

bb.k:                                             ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.thread"
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.l:                                             ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit.thread"
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %6, align 8, !tbaa !132
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  store i64 %i.bh, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.b, align 8, !tbaa !133
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.b, align 8, !tbaa !133
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.k, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.073
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !155, !range !156, !noundef !149 ; 2 uses
  %i.br = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !184
  %.not.i16 = icmp ult i64 %i.br, %i.bs
  br i1 %.not.i16, label %bb.n, label %bb.m, !prof !119

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %i.bt = trunc nuw i8 %i.bq to i1
  call void @_ZN4llvm23SmallVectorTemplateBaseIbLb1EE15growAndPushBackEb(ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %i.bu = load ptr, ptr %7, align 8, !tbaa !182
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  store i8 %i.bq, ptr %i.bv, align 1
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !183
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.e, align 8, !tbaa !183
  br label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE9push_backEb.exit: ; preds = %bb.n, %bb.m, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir6vector19MultiDimReductionOp6verifyEvE3$_0EEbOT_T0_.exit"
  %i.by = add nuw nsw i64 %.sroa.7.073, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.046.074, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.z
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ca = load ptr, ptr %0, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !122
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i18 = load ptr, ptr %i.cd, align 8, !tbaa !125
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i18, i64 8
  %.0.copyload.i.i.i.i.i.i.i19 = load i64, ptr %i.ce, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i.i19, -8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %10, align 8
  %i.ch = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %6, align 8, !tbaa !132
  %i.cj = zext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ck = load ptr, ptr %0, align 8, !tbaa !130
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !122
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i21 = load ptr, ptr %i.cn, align 8, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i21, i64 8
  %.0.copyload.i.i.i.i.i.i.i22 = load i64, ptr %i.co, align 8
  %i.cp = and i64 %.0.copyload.i.i.i.i.i.i.i22, -8
  %i.cq = inttoptr i64 %i.cp to ptr
  store ptr %i.cq, ptr %11, align 8
  %i.cr = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #27
  %i.cs = load ptr, ptr %7, align 8, !tbaa !182
  %i.ct = load i64, ptr %i.e, align 8, !tbaa !183
  %i.cu = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %i.ci, i64 %i.cj, ptr %i.cr, ptr %i.cs, i64 %i.ct) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.056.0 = phi ptr [ %i.ch, %bb.o ], [ %i.cu, %bb.p ]
  %i.cv = load ptr, ptr %0, align 8, !tbaa !130
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cw, align 8
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.cy = inttoptr i64 %i.cx to ptr
  %.not62 = icmp eq ptr %.sroa.056.0, %i.cy
  br i1 %.not62, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.cz, align 8, !tbaa !187
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.da, align 1, !tbaa !188
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #27
  %i.db = load ptr, ptr %12, align 8, !tbaa !196
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 3, ptr %4, align 8, !tbaa !199
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.21, ptr %i.dd, align 8, !tbaa !200
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 17, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !111
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 9 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !133 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !134
  %.not.i.i.i.i.i = icmp ult i32 %i.df, %i.dh
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t, !prof !119

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit

bb.u:                                             ; preds = %bb.s
  %i.di = zext i32 %i.df to i64
  %i.dj = load ptr, ptr %i.dc, align 8, !tbaa !132
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dl = load i32, ptr %i.de, align 8, !tbaa !133
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.de, align 8, !tbaa !133
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pr = load ptr, ptr %12, align 8, !tbaa !196
  %.not.i.i24 = icmp eq ptr %.pr, null
  br i1 %.not.i.i24, label %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit
  %i.dn = load ptr, ptr %0, align 8, !tbaa !130
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %.0.copyload.i.i.i.i.i.i23 = load i64, ptr %i.do, align 8
  %i.dp = and i64 %.0.copyload.i.i.i.i.i.i23, -8
  %i.dq = inttoptr i64 %i.dp to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dq) #27
  %i.dr = load i32, ptr %i.de, align 8, !tbaa !133 ; 2 uses
  %i.ds = load i32, ptr %i.dg, align 4, !tbaa !134
  %.not.i.i.i.i.i25 = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i.i.i.i.i25, label %bb.x, label %bb.w, !prof !119

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.x:                                             ; preds = %bb.v
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %i.dc, align 8, !tbaa !132
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.dw = load i32, ptr %i.de, align 8, !tbaa !133
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.de, align 8, !tbaa !133
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pr60.pre = load ptr, ptr %12, align 8, !tbaa !196
  %i.dy = icmp eq ptr %.pr60.pre, null
  br i1 %i.dy, label %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i32 3, ptr %2, align 8, !tbaa !199
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.22, ptr %i.dz, align 8, !tbaa !200
  %.sroa.2.0..sroa_idx.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 34, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i27, align 8, !tbaa !111
  %i.ea = load i32, ptr %i.de, align 8, !tbaa !133 ; 2 uses
  %i.eb = load i32, ptr %i.dg, align 4, !tbaa !134
  %.not.i.i.i.i.i28 = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i.i.i.i.i28, label %bb.aa, label %bb.z, !prof !119

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA35_KcEEOS0_OT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %i.dc, align 8, !tbaa !132
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ef = load i32, ptr %i.de, align 8, !tbaa !133
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.de, align 8, !tbaa !133
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA35_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA35_KcEEOS0_OT_.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pre = load ptr, ptr %12, align 8, !tbaa !196
  %i.eh = icmp eq ptr %.pre, null
  br i1 %i.eh, label %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA35_KcEEOS0_OT_.exit
  %i.ei = load ptr, ptr %0, align 8, !tbaa !130
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !122
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i30 = load ptr, ptr %i.el, align 8, !tbaa !125
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i30, i64 8
  %.0.copyload.i.i.i.i.i.i.i31 = load i64, ptr %i.em, align 8
  %i.en = and i64 %.0.copyload.i.i.i.i.i.i.i31, -8
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.eo) #27
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !133 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.et = load i32, ptr %i.es, align 4, !tbaa !134
  %.not.i.i.i.i.i34 = icmp ult i32 %i.er, %i.et
  br i1 %.not.i.i.i.i.i34, label %bb.ad, label %bb.ac, !prof !119

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendINS_10VectorTypeEEERS0_OT_.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.eu = zext i32 %i.er to i64
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !132
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ex = load i32, ptr %i.eq, align 8, !tbaa !133
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.eq, align 8, !tbaa !133
  br label %_ZN4mlir10Diagnostic6appendINS_10VectorTypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_10VectorTypeEEERS0_OT_.exit.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRA35_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_10VectorTypeEEERS0_OT_.exit.i.i
  %i.ez = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  %i.fa = load ptr, ptr %12, align 8, !tbaa !196
  %.not.i35 = icmp eq ptr %i.fa, null
  br i1 %.not.i35, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNO4mlir18InFlightDiagnosticlsINS_10VectorTypeEEEOS0_OT_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !201, !range !156, !noundef !149
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ag, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.fb, align 8, !tbaa !201
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fe) #27
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.09.0 = phi i8 [ %i.ez, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.q ]
  %i.ff = load ptr, ptr %7, align 8, !tbaa !182   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.d
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.ff) #27
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.fh = load ptr, ptr %6, align 8, !tbaa !132   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.a
  br i1 %i.fi, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit
  call void @free(ptr noundef %i.fh) #27
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret i8 %.sroa.09.0
}

declare { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr, i64, ptr, ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !201, !range !156, !noundef !149
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !201
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.e) #27
  br label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6vector19MultiDimReductionOp19getExpectedMaskTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = load ptr, ptr %0, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %1, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  %i.l = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.k, i32 noundef 1, i32 noundef 0) #27
  %i.m = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #27 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %i.i, i64 %i.j, ptr %i.l, ptr %i.n, i64 %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret ptr %i.p
}

declare ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6vector19MultiDimReductionOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.650", align 8 ; 4 uses
  %3 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !804
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28, !noalias !805 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %3, i32 noundef 1) #27, !noalias !805
  %i.b = load i16, ptr %3, align 2, !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !805
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !805
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr nonnull @.str.456, i64 22, i16 %i.b, ptr noundef %1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.650") align 8 %2) #27, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !805
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionE, i64 16), ptr %i.a, align 8, !tbaa !83, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !804
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !111, !noalias !804
  %i.d = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.587, i64 49), ptr %i.e, align 8, !tbaa !200, !noalias !804
  store i64 55, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !111, !noalias !804
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !133  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !134
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.m, i64 noundef %i.k, i64 noundef 16) #27
  %.pre8.pre.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !133
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.g, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.f, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !204  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !205
  %.not.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.a, ptr %i.p, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !204
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_132ElideUnitDimsInMultiDimReductionEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !209  ; 7 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.377) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i4.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i4.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
end_hunk_0
