Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/xsatCnfReader?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0_@xSAT_SolverParseDimacs:bb.a
bb.f:                                             ; preds = %.sink.split.i.i, %._crit_edge.i.i
  %i.ar = phi i16 [ %i.ao, %._crit_edge.i.i ], [ %.pre166.i, %.sink.split.i.i ]
  %i.as = phi i8 [ %i.al, %._crit_edge.i.i ], [ %.pre.i, %.sink.split.i.i ] ; 2 uses
  %.promoted25.i.i = phi ptr [ %i.ak, %._crit_edge.i.i ], [ %i.aq, %.sink.split.i.i ]
  %i.at = and i16 %i.ar, 2048
  %.not16.i.i = icmp eq i16 %i.at, 0
  br i1 %.not16.i.i, label %bb.g, label %.lr.ph28.i.i

bb.g:                                             ; preds = %bb.f
  %i.au = sext i8 %i.as to i32
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.1, i32 noundef %i.au) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

.lr.ph28.i.i:                                     ; preds = %bb.f, %.lr.ph28.i.i
  %i.ax = phi i8 [ %i.be, %.lr.ph28.i.i ], [ %i.as, %bb.f ]
  %.01427.i.i = phi i32 [ %i.bc, %.lr.ph28.i.i ], [ 0, %bb.f ]
  %i.ay = phi ptr [ %i.bd, %.lr.ph28.i.i ], [ %.promoted25.i.i, %bb.f ]
  %i.az = sext i8 %i.ax to i32
  %i.ba = mul nsw i32 %.01427.i.i, 10
  %i.bb = add nsw i32 %i.az, -48
  %i.bc = add i32 %i.bb, %i.ba                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 4 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8   ; 3 uses
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !19 ; 2 uses
  %i.bi = and i16 %i.bh, 2048
  %.not17.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not17.i.i, label %xSAT_ReadInt.exit.i, label %.lr.ph28.i.i, !llvm.loop !13

xSAT_ReadInt.exit.i:                              ; preds = %.lr.ph28.i.i
  %.not19.i.i = icmp eq i8 %i.al, 45
  %i.bj = sub nsw i32 0, %i.bc
  %i.bk = select i1 %.not19.i.i, i32 %i.bj, i32 %i.bc ; 2 uses
  %i.bl = and i16 %i.bh, 8192
  %.not22.i21.i = icmp eq i16 %i.bl, 0
  br i1 %.not22.i21.i, label %._crit_edge.i24.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %xSAT_ReadInt.exit.i, %.lr.ph.i22.i
  %i.bm = phi ptr [ %i.bn, %.lr.ph.i22.i ], [ %i.bd, %xSAT_ReadInt.exit.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8   ; 2 uses
  %i.bp = sext i8 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !19
  %i.bs = and i16 %i.br, 8192
  %.not.i23.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i23.i, label %._crit_edge.i24.i, label %.lr.ph.i22.i, !llvm.loop !12

._crit_edge.i24.i:                                ; preds = %.lr.ph.i22.i, %xSAT_ReadInt.exit.i
  %.lcssa20.i25.i = phi ptr [ %i.bd, %xSAT_ReadInt.exit.i ], [ %i.bn, %.lr.ph.i22.i ] ; 2 uses
  %.lcssa.i26.i = phi i8 [ %i.be, %xSAT_ReadInt.exit.i ], [ %i.bo, %.lr.ph.i22.i ] ; 2 uses
  switch i8 %.lcssa.i26.i, label %bb.h [
    i8 45, label %.sink.split.i27.i
    i8 43, label %.sink.split.i27.i
  ]

.sink.split.i27.i:                                ; preds = %._crit_edge.i24.i, %._crit_edge.i24.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa20.i25.i, i64 1 ; 2 uses
  %.pre167.i = load i8, ptr %i.bt, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i27.i, %._crit_edge.i24.i
  %i.bu = phi i8 [ %.lcssa.i26.i, %._crit_edge.i24.i ], [ %.pre167.i, %.sink.split.i27.i ] ; 2 uses
  %.promoted25.i28.i = phi ptr [ %.lcssa20.i25.i, %._crit_edge.i24.i ], [ %i.bt, %.sink.split.i27.i ]
  %i.bv = sext i8 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !19
  %i.by = and i16 %i.bx, 2048
  %.not16.i29.i = icmp eq i16 %i.by, 0
  br i1 %.not16.i29.i, label %bb.i, label %.lr.ph28.i30.i

bb.i:                                             ; preds = %bb.h
  %i.bz = sext i8 %i.bu to i32
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.1, i32 noundef %i.bz) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

.lr.ph28.i30.i:                                   ; preds = %bb.h, %.lr.ph28.i30.i
  %i.cc = phi ptr [ %i.cd, %.lr.ph28.i30.i ], [ %.promoted25.i28.i, %bb.h ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8   ; 2 uses
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !19
  %i.ci = and i16 %i.ch, 2048
  %.not17.i32.i = icmp eq i16 %i.ci, 0
  br i1 %.not17.i32.i, label %xSAT_ReadInt.exit34.i, label %.lr.ph28.i30.i, !llvm.loop !13

xSAT_ReadInt.exit34.i:                            ; preds = %.lr.ph28.i30.i, %bb.k
  %i.cj = phi i8 [ %.pre168.i, %bb.k ], [ %i.ce, %.lr.ph28.i30.i ]
  %.6.i = phi ptr [ %i.cl, %bb.k ], [ %i.cd, %.lr.ph28.i30.i ] ; 3 uses
  switch i8 %i.cj, label %bb.k [
    i8 0, label %skipLine.exit36.i
    i8 10, label %bb.j
  ]

bb.j:                                             ; preds = %xSAT_ReadInt.exit34.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  br label %skipLine.exit36.i

bb.k:                                             ; preds = %xSAT_ReadInt.exit34.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 2 uses
  %.pre168.i = load i8, ptr %i.cl, align 1, !tbaa !8
  br label %xSAT_ReadInt.exit34.i

skipLine.exit36.i:                                ; preds = %xSAT_ReadInt.exit34.i, %bb.j
  %.7.i = phi ptr [ %i.ck, %bb.j ], [ %.6.i, %xSAT_ReadInt.exit34.i ]
  %i.cm = tail call ptr (...) @xSAT_SolverCreate() #15
  %i.cn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  %i.co = add i32 %i.bk, -1
  %or.cond.i.i = icmp ult i32 %i.co, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.bk ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 0, ptr %i.cp, align 4, !tbaa !25
  store i32 %spec.store.select.i.i, ptr %i.cn, align 8, !tbaa !26
  %.not.i37.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i37.i, label %Vec_IntAlloc.exit.i, label %bb.l

bb.l:                                             ; preds = %skipLine.exit36.i
  %i.cq = sext i32 %spec.store.select.i.i to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cr) #11
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.l, %skipLine.exit36.i
  %i.ct = phi ptr [ %i.cs, %bb.l ], [ null, %skipLine.exit36.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !27
  br label %skipLine.exit.i.outer

bb.m:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %i.m, align 4, !tbaa !25
  %i.cv = load i8, ptr %.174.i, align 1, !tbaa !8 ; 2 uses
  %i.cw = sext i8 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !19
  %i.cz = and i16 %i.cy, 8192
  %.not22.i58.i = icmp eq i16 %i.cz, 0
  br i1 %.not22.i58.i, label %._crit_edge.i61.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %bb.o, %.lr.ph.i59.i
  %i.da = phi ptr [ %i.db, %.lr.ph.i59.i ], [ %.174.i, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8   ; 2 uses
  %i.dd = sext i8 %i.dc to i64
  %i.de = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !19
  %i.dg = and i16 %i.df, 8192
  %.not.i60.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i60.i, label %._crit_edge.i61.i, label %.lr.ph.i59.i, !llvm.loop !12

._crit_edge.i61.i:                                ; preds = %.lr.ph.i59.i, %bb.o
  %.lcssa20.i62.i = phi ptr [ %.174.i, %bb.o ], [ %i.db, %.lr.ph.i59.i ] ; 2 uses
  %.lcssa.i63.i = phi i8 [ %i.cv, %bb.o ], [ %i.dc, %.lr.ph.i59.i ] ; 3 uses
  switch i8 %.lcssa.i63.i, label %bb.p [
    i8 45, label %.sink.split.i64.i
    i8 43, label %.sink.split.i64.i
  ]

.sink.split.i64.i:                                ; preds = %._crit_edge.i61.i, %._crit_edge.i61.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.lcssa20.i62.i, i64 1 ; 2 uses
  %.pre170.i = load i8, ptr %i.dh, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i64.i, %._crit_edge.i61.i
  %i.di = phi i8 [ %.lcssa.i63.i, %._crit_edge.i61.i ], [ %.pre170.i, %.sink.split.i64.i ] ; 3 uses
  %.promoted25.i65.i = phi ptr [ %.lcssa20.i62.i, %._crit_edge.i61.i ], [ %i.dh, %.sink.split.i64.i ]
  %i.dj = sext i8 %i.di to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !19
  %i.dm = and i16 %i.dl, 2048
  %.not16.i66.i = icmp eq i16 %i.dm, 0
  br i1 %.not16.i66.i, label %bb.q, label %.lr.ph28.i67.i

bb.q:                                             ; preds = %bb.p
  %i.dn = sext i8 %i.di to i32
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.1, i32 noundef %i.dn) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

.lr.ph28.i67.i:                                   ; preds = %bb.p, %.lr.ph28.i67.i
  %i.dq = phi i8 [ %i.dx, %.lr.ph28.i67.i ], [ %i.di, %bb.p ]
  %.01427.i68.i = phi i32 [ %i.dv, %.lr.ph28.i67.i ], [ 0, %bb.p ]
  %i.dr = phi ptr [ %i.dw, %.lr.ph28.i67.i ], [ %.promoted25.i65.i, %bb.p ]
  %i.ds = sext i8 %i.dq to i32
  %i.dt = mul nsw i32 %.01427.i68.i, 10
  %i.du = add nsw i32 %i.ds, -48
  %i.dv = add i32 %i.du, %i.dt                    ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !8   ; 2 uses
  %i.dy = sext i8 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !19
  %i.eb = and i16 %i.ea, 2048
  %.not17.i69.i = icmp eq i16 %i.eb, 0
  br i1 %.not17.i69.i, label %xSAT_ReadInt.exit71.i.a, label %.lr.ph28.i67.i, !llvm.loop !13

xSAT_ReadInt.exit71.i.a:                          ; preds = %.lr.ph28.i67.i
  %.not19.i70.i = icmp eq i8 %.lcssa.i63.i, 45
  %i.ec = sub nsw i32 0, %i.dv
  %i.ed = select i1 %.not19.i70.i, i32 %i.ec, i32 %i.dv ; 2 uses
  %2 = icmp eq i32 %i.ed, 0
  br i1 %2, label %xSAT_ReadClause.exit.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %xSAT_ReadInt.exit71.i.a, %xSAT_ReadInt.exit56.i
  %i.ee = phi ptr [ %i.fa, %xSAT_ReadInt.exit56.i ], [ %i.o, %xSAT_ReadInt.exit71.i.a ] ; 2 uses
  %.8.i = phi ptr [ %i.gh, %xSAT_ReadInt.exit56.i ], [ %i.dw, %xSAT_ReadInt.exit71.i.a ] ; 3 uses
  %i.ef = phi i32 [ %i.go, %xSAT_ReadInt.exit56.i ], [ %i.ed, %xSAT_ReadInt.exit71.i.a ] ; 2 uses
  %i.eg = tail call i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.eh = icmp slt i32 %i.ef, 1
  %i.ei = zext i1 %i.eh to i32
  %i.ej = shl nuw i32 %i.eg, 1
  %i.ek = add i32 %i.ej, -2
  %i.el = or disjoint i32 %i.ek, %i.ei
  %i.em = load i32, ptr %i.m, align 4, !tbaa !25  ; 7 uses
  %i.en = load i32, ptr %.0.i.ph, align 8, !tbaa !26
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.r, label %.Vec_IntPush.exit_crit_edge.i.i

.Vec_IntPush.exit_crit_edge.i.i:                  ; preds = %.lr.ph.i38.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !27
  br label %Vec_IntPush.exit.i.i

bb.r:                                             ; preds = %.lr.ph.i38.i
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.eq = load ptr, ptr %i.n, align 8, !tbaa !27  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not9.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.es = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.et = icmp samesign ult i32 %i.em, 1073741823
  %i.eu = shl nuw nsw i32 %i.em, 1
  %spec.select.i.i.i = select i1 %i.et, i32 %i.eu, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.em, %spec.select.i.i.i
  %.pre1.i.i = load ptr, ptr %i.n, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.w, label %Vec_IntPush.exit.i.i

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i.i.i = icmp eq ptr %.pre1.i.i, null
  %i.ev = zext nneg i32 %spec.select.i.i.i to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = tail call ptr @realloc(ptr noundef nonnull %.pre1.i.i, i64 noundef %i.ew) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ew) #11
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.y, %bb.x, %bb.u, %bb.t
  %i.ez = phi ptr [ %i.es, %bb.u ], [ %i.er, %bb.t ], [ %i.ex, %bb.x ], [ %i.ey, %bb.y ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i.i.i, %bb.x ], [ %spec.select.i.i.i, %bb.y ]
  store ptr %i.ez, ptr %i.n, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i.i, ptr %.0.i.ph, align 8, !tbaa !26
  %.pre2.i.i = load i32, ptr %i.m, align 4, !tbaa !25
  %.pre171.i = load ptr, ptr %i.k, align 8, !tbaa !17
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.v, %.Vec_IntPush.exit_crit_edge.i.i
  %i.fa = phi ptr [ %i.ee, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.ee, %bb.v ], [ %.pre171.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 5 uses
  %i.fb = phi i32 [ %i.em, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.em, %bb.v ], [ %.pre2.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.fc = phi ptr [ %.pre.i.i, %.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre1.i.i, %bb.v ], [ %i.ez, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.fd = add nsw i32 %i.fb, 1
  store i32 %i.fd, ptr %i.m, align 4, !tbaa !25
  %i.fe = sext i32 %i.fb to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fe
  store i32 %i.el, ptr %i.ff, align 4, !tbaa !28
  %i.fg = load i8, ptr %.8.i, align 1, !tbaa !8   ; 2 uses
  %i.fh = sext i8 %i.fg to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !19
  %i.fk = and i16 %i.fj, 8192
  %.not22.i43.i = icmp eq i16 %i.fk, 0
  br i1 %.not22.i43.i, label %._crit_edge.i46.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %Vec_IntPush.exit.i.i, %.lr.ph.i44.i
  %i.fl = phi ptr [ %i.fm, %.lr.ph.i44.i ], [ %.8.i, %Vec_IntPush.exit.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8   ; 2 uses
  %i.fo = sext i8 %i.fn to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !19
  %i.fr = and i16 %i.fq, 8192
  %.not.i45.i = icmp eq i16 %i.fr, 0
  br i1 %.not.i45.i, label %._crit_edge.i46.i, label %.lr.ph.i44.i, !llvm.loop !12

._crit_edge.i46.i:                                ; preds = %.lr.ph.i44.i, %Vec_IntPush.exit.i.i
  %.lcssa20.i47.i = phi ptr [ %.8.i, %Vec_IntPush.exit.i.i ], [ %i.fm, %.lr.ph.i44.i ] ; 2 uses
  %.lcssa.i48.i = phi i8 [ %i.fg, %Vec_IntPush.exit.i.i ], [ %i.fn, %.lr.ph.i44.i ] ; 3 uses
  switch i8 %.lcssa.i48.i, label %bb.z [
    i8 45, label %.sink.split.i49.i
    i8 43, label %.sink.split.i49.i
  ]

.sink.split.i49.i:                                ; preds = %._crit_edge.i46.i, %._crit_edge.i46.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.lcssa20.i47.i, i64 1 ; 2 uses
  %.pre172.i = load i8, ptr %i.fs, align 1, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i49.i, %._crit_edge.i46.i
  %i.ft = phi i8 [ %.lcssa.i48.i, %._crit_edge.i46.i ], [ %.pre172.i, %.sink.split.i49.i ] ; 3 uses
  %.promoted25.i50.i = phi ptr [ %.lcssa20.i47.i, %._crit_edge.i46.i ], [ %i.fs, %.sink.split.i49.i ]
  %i.fu = sext i8 %i.ft to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !19
  %i.fx = and i16 %i.fw, 2048
  %.not16.i51.i = icmp eq i16 %i.fx, 0
  br i1 %.not16.i51.i, label %bb.aa, label %.lr.ph28.i52.i

bb.aa:                                            ; preds = %bb.z
  %i.fy = sext i8 %i.ft to i32
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ga = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.1, i32 noundef %i.fy) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

.lr.ph28.i52.i:                                   ; preds = %bb.z, %.lr.ph28.i52.i
  %i.gb = phi i8 [ %i.gi, %.lr.ph28.i52.i ], [ %i.ft, %bb.z ]
  %.01427.i53.i = phi i32 [ %i.gg, %.lr.ph28.i52.i ], [ 0, %bb.z ]
  %i.gc = phi ptr [ %i.gh, %.lr.ph28.i52.i ], [ %.promoted25.i50.i, %bb.z ]
  %i.gd = sext i8 %i.gb to i32
  %i.ge = mul nsw i32 %.01427.i53.i, 10
  %i.gf = add nsw i32 %i.gd, -48
  %i.gg = add i32 %i.gf, %i.ge                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 4 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !8   ; 2 uses
  %i.gj = sext i8 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !19
  %i.gm = and i16 %i.gl, 2048
  %.not17.i54.i = icmp eq i16 %i.gm, 0
  br i1 %.not17.i54.i, label %xSAT_ReadInt.exit56.i, label %.lr.ph28.i52.i, !llvm.loop !13

xSAT_ReadInt.exit56.i:                            ; preds = %.lr.ph28.i52.i
  %.not19.i55.i = icmp eq i8 %.lcssa.i48.i, 45
  %i.gn = sub nsw i32 0, %i.gg
  %i.go = select i1 %.not19.i55.i, i32 %i.gn, i32 %i.gg ; 2 uses
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %xSAT_ReadClause.exit.i, label %.lr.ph.i38.i

xSAT_ReadClause.exit.i:                           ; preds = %xSAT_ReadInt.exit56.i, %xSAT_ReadInt.exit71.i.a
  %.9.i = phi ptr [ %i.dw, %xSAT_ReadInt.exit71.i.a ], [ %i.gh, %xSAT_ReadInt.exit56.i ]
  %i.gq = tail call i32 @xSAT_SolverAddClause(ptr noundef nonnull %.012.i.ph, ptr noundef nonnull %.0.i.ph) #15
  %.not16.i = icmp eq i32 %i.gq, 0
  br i1 %.not16.i, label %bb.ab, label %skipLine.exit.i.backedge

skipLine.exit.i.backedge:                         ; preds = %.preheader.i, %xSAT_ReadClause.exit.i, %bb.d
  %.073.i.be = phi ptr [ %i.w, %bb.d ], [ %.9.i, %xSAT_ReadClause.exit.i ], [ %.4.i, %.preheader.i ]
  br label %skipLine.exit.i

bb.ab:                                            ; preds = %xSAT_ReadClause.exit.i
  %.val6.i.i = load i32, ptr %i.m, align 4, !tbaa !25
  %i.gr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.val6.i.i) ; 0 uses
  %.val8.i.i = load i32, ptr %i.m, align 4, !tbaa !25
  %i.gs = icmp sgt i32 %.val8.i.i, 0
  br i1 %i.gs, label %.lr.ph.i40.i, label %Vec_IntPrint.exit.i

.lr.ph.i40.i:                                     ; preds = %bb.ab
  %i.gt = getelementptr i8, ptr %.0.i.ph, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i40.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 2 uses
  %.val7.i.i = load ptr, ptr %i.gt, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val7.i.i, i64 %indvars.iv.i.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !28
  %i.gw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.gv) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i = load i32, ptr %i.m, align 4, !tbaa !25
  %i.gx = sext i32 %.val.i.i to i64
  %i.gy = icmp slt i64 %indvars.iv.next.i.i, %i.gx
  br i1 %i.gy, label %bb.ac, label %Vec_IntPrint.exit.i, !llvm.loop !14

Vec_IntPrint.exit.i:                              ; preds = %bb.ac, %bb.ab
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %xSAT_ParseDimacs.exit

bb.ad:                                            ; preds = %bb.c
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !27 ; 2 uses
  %.not.i41.i = icmp eq ptr %i.ha, null
  br i1 %.not.i41.i, label %Vec_IntFree.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.ha) #15
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.ae, %bb.ad
  tail call void @free(ptr noundef nonnull %.0.i.ph) #15
  store ptr %.012.i.ph, ptr %1, align 8, !tbaa !30
  %i.hb = tail call i32 @xSAT_SolverSimplify(ptr noundef %.012.i.ph) #15
  br label %xSAT_ParseDimacs.exit

xSAT_ParseDimacs.exit:                            ; preds = %Vec_IntPrint.exit.i, %Vec_IntFree.exit.i
  %.014.i = phi i32 [ %i.hb, %Vec_IntFree.exit.i ], [ 0, %Vec_IntPrint.exit.i ]
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %xSAT_ParseDimacs.exit
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.ag

bb.ag:                                            ; preds = %xSAT_ParseDimacs.exit, %bb.af
  ret i32 %.014.i
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare ptr @xSAT_SolverCreate(...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @xSAT_SolverAddClause(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @xSAT_SolverSimplify(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20}
!12 = distinct !{!12, !20}
!13 = distinct !{!13, !20}
!14 = distinct !{!14, !20}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 short", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"short", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !23, i64 8}
!25 = !{!24, !5, i64 4}
!26 = !{!24, !5, i64 0}
!27 = !{!24, !23, i64 8}
!28 = !{!5, !5, i64 0}
!29 = !{!"p1 _ZTS14xSAT_Solver_t_", !15, i64 0}
!30 = !{!29, !29, i64 0}
end_hunk_0
