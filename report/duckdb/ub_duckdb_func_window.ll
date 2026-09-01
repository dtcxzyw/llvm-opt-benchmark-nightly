Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK6duckdb21WindowLeadLagExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE:bb.a
bb.f:                                             ; preds = %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit174
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 368 ; 3 uses
  tail call void @_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef 1)
  %i.av = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef 0) ; 4 uses
  %.not288 = icmp eq i64 %4, 0
  br i1 %.not288, label %.loopexit256, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.w
  %.0148268 = phi i64 [ %5, %.lr.ph ], [ %i.ds, %bb.w ] ; 2 uses
  %.0166265 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %bb.w ] ; 13 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !231, !nonnull !42, !align !232
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !134
  %.not251 = icmp eq ptr %i.be, null
  br i1 %.not251, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !411 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null           ; 2 uses
  br i1 %.sroa.4209.0.shrunk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i.i, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit

bb.j:                                             ; preds = %bb.h
  br i1 %.not.i.i.i, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread, label %.split

.split:                                           ; preds = %bb.j
  %i.bi = lshr i64 %.0166265, 6
  %i.bj = and i64 %.0166265, 63
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !252
  %i.bm = shl nuw i64 1, %i.bj
  %i.bn = and i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit: ; preds = %bb.i
  %i.bp = load i64, ptr %i.bh, align 8, !tbaa !252
  %i.bq = trunc i64 %i.bp to i1
  br i1 %i.bq, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread, label %bb.k

bb.k:                                             ; preds = %.split, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.0166265, i1 noundef zeroext true)
  br label %bb.w

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread: ; preds = %bb.j, %bb.i, %.split, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit
  %i.br = phi i64 [ %.0166265, %bb.j ], [ 0, %bb.i ], [ %.0166265, %.split ], [ 0, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit ]
  %i.bs = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !316
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !252
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread, %bb.g
  %.0165 = phi i64 [ %i.bw, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread ], [ 1, %bb.g ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0166265
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !252
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0166265
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !252
  store i64 %i.by, ptr %i.av, align 8, !tbaa !252
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !252
  %i.cb = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowTokenTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  %i.cc = load i64, ptr %i.av, align 8, !tbaa !978
  %i.cd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !979
  %i.ce = tail call noundef i64 @_ZNK6duckdb15WindowTokenTree4RankEmmm(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i64 noundef %i.cc, i64 noundef %i.cd, i64 noundef %.0148268)
  %i.cf = add i64 %i.ce, -1
  %i.cg = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.cf) ; 2 uses
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !231, !nonnull !42, !align !232
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !422
  %i.ck = icmp eq i8 %i.cj, -124
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = tail call noundef i64 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIlllEET1_T_T0_(i64 noundef %i.cg, i64 noundef %.0165)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cm = tail call noundef i64 @_ZN6duckdb29SubtractOperatorOverflowCheck9OperationIlllEET1_T_T0_(i64 noundef %i.cg, i64 noundef %.0165)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0164 = phi i64 [ %i.cl, %bb.m ], [ %i.cm, %bb.n ] ; 3 uses
  %i.cn = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !979
  %i.co = load i64, ptr %i.av, align 8, !tbaa !978
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.cp)
  %i.cr = icmp sgt i64 %.0164, -1
  %i.cs = icmp slt i64 %.0164, %i.cq
  %or.cond = and i1 %i.cr, %i.cs
  br i1 %or.cond, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ct = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %.0164)
  %i.cu = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  %i.cv = tail call { i64, i64 } @_ZNK6duckdb15WindowIndexTree9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS2_EEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.ct) ; 2 uses
  %i.cw = extractvalue { i64, i64 } %i.cv, 1
  %.not170 = icmp eq i64 %i.cw, 0
  br i1 %.not170, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.0166265, i1 noundef zeroext true)
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.cx = extractvalue { i64, i64 } %i.cv, 0      ; 4 uses
  %i.cy = load i64, ptr %i.ay, align 8, !tbaa !502
  %i.cz = icmp ult i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.az, align 8            ; 2 uses
  %i.db = icmp ule i64 %i.da, %i.cx
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %i.dc, label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !513, !nonnull !42, !align !232
  %i.de = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
  %i.df = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.de, i64 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(144) %i.ba, ptr noundef nonnull align 8 dereferenceable(72) %i.bb) ; 0 uses
  %.pre.i.i = load i64, ptr %i.az, align 8, !tbaa !514
  br label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit

_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit: ; preds = %bb.r, %bb.s
  %i.dg = phi i64 [ %.pre.i.i, %bb.s ], [ %i.da, %bb.r ]
  %i.dh = sub i64 %i.cx, %i.dg
  %i.di = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dj = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef 0)
  %i.dk = add nuw nsw i64 %i.di, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.dk, i64 noundef %i.di, i64 noundef %.0166265)
  br label %bb.w

bb.t:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !231, !nonnull !42, !align !232
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !134
  %.not252 = icmp eq ptr %i.dn, null
  br i1 %.not252, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.y)
  %i.dp = select i1 %.sroa.4200.0.shrunk, i64 0, i64 %.0166265 ; 2 uses
  %i.dq = add nuw i64 %i.dp, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.do, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.dq, i64 noundef %i.dp, i64 noundef %.0166265)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.0166265, i1 noundef zeroext true)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit, %bb.q, %bb.k
  %i.dr = add nuw i64 %.0166265, 1                ; 2 uses
  %i.ds = add i64 %.0148268, 1
  %exitcond.not = icmp eq i64 %i.dr, %4
  br i1 %exitcond.not, label %.loopexit256, label %bb.g, !llvm.loop !1466

bb.x:                                             ; preds = %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit174
  %i.dt = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !316
  %i.dw = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !316
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !1467, !range !41, !noundef !42
  %i.eb = trunc nuw i8 %i.ea to i1                ; 2 uses
  %spec.select = select i1 %i.eb, ptr %i.ao, ptr %i.dv
  %spec.select171 = select i1 %i.eb, ptr %i.ar, ptr %i.dy ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 224 ; 6 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1469
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.ee, null
  br i1 %.not.i, label %bb.y, label %.thread334

.thread334:                                       ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.eg = load i8, ptr %i.dz, align 8, !tbaa !1467, !range !41, !noundef !42
  %i.eh = trunc nuw i8 %i.eg to i1                ; 2 uses
  %i.ei = xor i1 %i.eh, true
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !231, !nonnull !42, !align !232 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 232 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !134
  %.not246 = icmp eq ptr %i.em, null              ; 2 uses
  %brmerge.not.not = or i1 %.not246, %i.eh
  %narrow = and i1 %.not246, %i.ei
  br i1 %brmerge.not.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el) ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !135
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = tail call noundef zeroext i1 %i.eq(ptr noundef nonnull align 8 dereferenceable(88) %i.en)
  %.pre = load ptr, ptr %i.ej, align 8, !tbaa !231
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.es = phi ptr [ %i.ek, %bb.y ], [ %.pre, %bb.z ]
  %.0160.in = phi i1 [ %narrow, %bb.y ], [ %i.er, %bb.z ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 240 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !134
  %.not247 = icmp eq ptr %i.eu, null              ; 2 uses
  %.0160.in.not = xor i1 %.0160.in, true
  %brmerge = or i1 %.not247, %.0160.in.not
  %.0160.in.mux = and i1 %.not247, %.0160.in
  br i1 %brmerge, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et) ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !135
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(88) %i.ev)
  br label %bb.ac

bb.ac:                                            ; preds = %.thread334, %bb.aa, %bb.ab
  %i.fa = phi ptr [ %i.ej, %bb.aa ], [ %i.ej, %bb.ab ], [ %i.ef, %.thread334 ] ; 4 uses
  %.1161.shrunk = phi i1 [ %.0160.in.mux, %bb.aa ], [ %i.ez, %bb.ab ], [ false, %.thread334 ] ; 2 uses
  %i.fb = add i64 %5, %4                          ; 2 uses
  %.not289 = icmp eq i64 %4, 0
  br i1 %.not289, label %.loopexit256, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph287, %.loopexit
  %.1285 = phi i64 [ %5, %.lr.ph287 ], [ %.6, %.loopexit ] ; 19 uses
  %.0154284 = phi i64 [ 0, %.lr.ph287 ], [ %.5159, %.loopexit ] ; 22 uses
  %i.fi = load ptr, ptr %i.fa, align 8, !tbaa !231, !nonnull !42, !align !232 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !134
  %.not248 = icmp eq ptr %i.fk, null
  br i1 %.not248, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !411 ; 3 uses
  %.not.i.i.i175 = icmp eq ptr %i.fn, null        ; 2 uses
  br i1 %.sroa.4209.0.shrunk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i.i175, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not.i.i.i175, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread, label %.split229

.split229:                                        ; preds = %bb.ag
  %i.fo = lshr i64 %.0154284, 6
  %i.fp = and i64 %.0154284, 63
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !252
  %i.fs = shl nuw i64 1, %i.fp
  %i.ft = and i64 %i.fr, %i.fs
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.ah, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177: ; preds = %bb.af
  %i.fv = load i64, ptr %i.fn, align 8, !tbaa !252
  %i.fw = trunc i64 %i.fv to i1
  br i1 %i.fw, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread, label %bb.ah

bb.ah:                                            ; preds = %.split229, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.0154284, i1 noundef zeroext true)
  %i.fx = add nuw i64 %.0154284, 1
  %i.fy = add i64 %.1285, 1
  br label %.loopexit, !llvm.loop !1470

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread: ; preds = %bb.ag, %bb.af, %.split229, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177
  %i.fz = phi i64 [ %.0154284, %bb.ag ], [ 0, %bb.af ], [ %.0154284, %.split229 ], [ 0, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177 ]
  %i.ga = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !316
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fz
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !252
  %.pre303 = load ptr, ptr %i.fa, align 8, !tbaa !231
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread, %bb.ad
  %i.gf = phi ptr [ %.pre303, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread ], [ %i.fi, %bb.ad ]
  %.0153 = phi i64 [ %i.ge, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit177.thread ], [ 1, %bb.ad ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !422
  %i.gi = icmp eq i8 %i.gh, -124
  br i1 %i.gi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gj = tail call noundef i64 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIlllEET1_T_T0_(i64 noundef %.1285, i64 noundef %.0153)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.gk = tail call noundef i64 @_ZN6duckdb29SubtractOperatorOverflowCheck9OperationIlllEET1_T_T0_(i64 noundef %.1285, i64 noundef %.0153)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0151 = phi i64 [ %i.gj, %bb.aj ], [ %i.gk, %bb.ak ] ; 9 uses
  %i.gl = icmp slt i64 %.0151, %.1285
  br i1 %i.gl, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.gm = sub i64 %.1285, %.0151                  ; 4 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
  %i.gn = load ptr, ptr %i.ec, align 8, !tbaa !1469
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.0154284
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !252 ; 8 uses
  %i.gq = load ptr, ptr %i.gn, align 8, !tbaa !411 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i, label %bb.an, label %.preheader.i

.preheader.i:                                     ; preds = %bb.am
  %i.gr = icmp ult i64 %i.gp, %.1285
  br i1 %i.gr, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

bb.an:                                            ; preds = %bb.am
  %i.gs = add i64 %i.gp, %i.gm
  %.not.i178 = icmp ugt i64 %.1285, %i.gs
  %i.gt = select i1 %.not.i178, i64 %.0151, i64 %i.gp ; 2 uses
  %i.gu = sub i64 %i.gt, %.0151
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %.preheader.i, %.loopexit.i
  %.1222 = phi i64 [ %.2223, %.loopexit.i ], [ %i.gm, %.preheader.i ] ; 3 uses
  %.02547.i = phi i64 [ %.227.i, %.loopexit.i ], [ %.1285, %.preheader.i ] ; 5 uses
  %i.gv = phi i64 [ %i.hs, %.loopexit.i ], [ %i.gm, %.preheader.i ] ; 3 uses
  %i.gw = add i64 %.02547.i, -1                   ; 2 uses
  %i.gx = lshr i64 %i.gw, 6
  %i.gy = and i64 %i.gw, 63                       ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gx
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !252 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  %i.hc = icmp eq i64 %i.gy, 63
  %or.cond.i = and i1 %i.hc, %i.hb
  br i1 %or.cond.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.hd = add i64 %.02547.i, -64
  br label %.loopexit.i, !llvm.loop !414

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.he = icmp ult i64 %i.gp, %.02547.i
  br i1 %i.he, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.ap, %bb.ar
  %.3224 = phi i64 [ %.4, %bb.ar ], [ %.1222, %bb.ap ]
  %i.hf = phi i64 [ %i.hm, %bb.ar ], [ %i.gv, %bb.ap ] ; 2 uses
  %i.hg = phi i64 [ %i.ho, %bb.ar ], [ %i.gy, %bb.ap ] ; 3 uses
  %.12646.i = phi i64 [ %i.hn, %bb.ar ], [ %.02547.i, %bb.ap ] ; 2 uses
  %i.hh = shl nuw i64 1, %i.hg
  %i.hi = and i64 %i.hh, %i.ha
  %.not42.i = icmp eq i64 %i.hi, 0
  br i1 %.not42.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i
  %i.hj = add i64 %i.hf, -1                       ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %.thread.i, label %bb.ar

.thread.i:                                        ; preds = %bb.aq
  %i.hl = add i64 %.12646.i, -1
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i
  %.4 = phi i64 [ %.3224, %.lr.ph.i ], [ %i.hj, %bb.aq ] ; 2 uses
  %i.hm = phi i64 [ %i.hf, %.lr.ph.i ], [ %i.hj, %bb.aq ] ; 2 uses
  %i.hn = add i64 %.12646.i, -1                   ; 3 uses
  %i.ho = add nsw i64 %i.hg, -1
  %i.hp = icmp ne i64 %i.hg, 0
  %i.hq = icmp ult i64 %i.gp, %i.hn
  %i.hr = select i1 %i.hp, i1 %i.hq, i1 false
  br i1 %i.hr, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !415

.loopexit.i:                                      ; preds = %bb.ar, %bb.ap, %bb.ao
  %.2223 = phi i64 [ %.1222, %bb.ao ], [ %.1222, %bb.ap ], [ %.4, %bb.ar ] ; 2 uses
  %i.hs = phi i64 [ %i.gv, %bb.ao ], [ %i.gv, %bb.ap ], [ %i.hm, %bb.ar ]
  %.227.i = phi i64 [ %i.hd, %bb.ao ], [ %.02547.i, %bb.ap ], [ %i.hn, %bb.ar ] ; 2 uses
  %i.ht = icmp ult i64 %i.gp, %.227.i
  br i1 %i.ht, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

end_hunk_0
