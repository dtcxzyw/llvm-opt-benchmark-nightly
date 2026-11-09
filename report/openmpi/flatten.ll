Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/flatten?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ADIOI_Flatten:bb.a
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ac, i32 noundef 163, ptr noundef nonnull @.str) #7 ; 42 uses
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !10
  %i.af = load i32, ptr %i.e, align 4, !tbaa !10
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !10
  %i.ah = call i32 @PMPI_Type_get_contents(ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef %i.t, ptr noundef %i.y, ptr noundef %i.ad) #7 ; 0 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !10
  switch i32 %i.ai, label %bb.ec [
    i32 1, label %bb.b
    i32 12, label %bb.d
    i32 13, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.l
    i32 5, label %bb.u
    i32 4, label %bb.u
    i32 6, label %bb.ah
    i32 18, label %bb.ax
    i32 9, label %bb.ay
    i32 8, label %bb.cc
    i32 7, label %bb.cc
    i32 11, label %bb.cv
    i32 10, label %bb.cv
    i32 17, label %bb.dj
  ]

bb.b:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ak = call i32 @PMPI_Type_get_envelope(ptr noundef %i.aj, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.al, ptr noundef nonnull %i.c) #7
  %i.am = load i32, ptr %i.b, align 4, !tbaa !10
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load i32, ptr %i.c, align 4
  %i.ap = icmp ne i32 %i.ao, 0
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond, label %.loopexit927, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.aq, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  br label %.loopexit927

bb.d:                                             ; preds = %bb.a
  %i.ar = load i32, ptr %i.t, align 4, !tbaa !10  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr [4 x i8], ptr %i.t, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = shl nsw i32 %i.ar, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr %i.t, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %i.ba = mul nsw i32 %i.ar, 3
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.t, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.bg = call i32 @ADIO_Type_create_subarray(i32 noundef %i.ar, ptr noundef nonnull %i.as, ptr noundef %i.av, ptr noundef %i.az, i32 noundef %i.be, ptr noundef %i.bf, ptr noundef nonnull %i.m) #7 ; 0 uses
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.bh, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %i.bi = call i32 @PMPI_Type_free(ptr noundef nonnull %i.m) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  br label %.loopexit927

bb.e:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.bl = load i32, ptr %i.t, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.bp = sext i32 %i.bk to i64
  %i.bq = getelementptr [4 x i8], ptr %i.t, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 12
  %i.bs = shl nsw i32 %i.bk, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr %i.t, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  %i.bw = mul nsw i32 %i.bk, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %i.t, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  %i.ca = shl nsw i32 %i.bk, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %i.t, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !10
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.cg = call i32 @ADIO_Type_create_darray(i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bk, ptr noundef nonnull %i.bo, ptr noundef %i.br, ptr noundef %i.bv, ptr noundef %i.bz, i32 noundef %i.ce, ptr noundef %i.cf, ptr noundef nonnull %i.n) #7 ; 0 uses
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.ch, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %i.ci = call i32 @PMPI_Type_free(ptr noundef nonnull %i.n) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  br label %.loopexit927

bb.f:                                             ; preds = %bb.a
  %i.cj = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.cm = call i32 @PMPI_Type_get_envelope(ptr noundef %i.cl, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.cn, ptr noundef nonnull %i.c) #7
  %i.co = load i64, ptr %3, align 8, !tbaa !9     ; 8 uses
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !10
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = load i32, ptr %i.c, align 4
  %i.cs = icmp ne i32 %i.cr, 0
  %or.cond3 = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond3, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.ct, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %.pre1222 = load i64, ptr %3, align 8, !tbaa !9 ; 7 uses
  %i.cu = icmp eq i64 %i.co, %.pre1222
  br i1 %i.cu, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g
  %i.cv = shl i64 %i.co, 32
  %i.cw = ashr exact i64 %i.cv, 32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i64 %i.cy, %i.cw
  br i1 %.not.i, label %.flatlist_node_grow.exit_crit_edge, label %bb.h

.flatlist_node_grow.exit_crit_edge:               ; preds = %.thread
  %.phi.trans.insert1223 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1224 = load ptr, ptr %.phi.trans.insert1223, align 8, !tbaa !19
  br label %flatlist_node_grow.exit

bb.h:                                             ; preds = %.thread
  %i.cz = sitofp i64 %i.cy to double
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double 1.250000e+00, double 4.000000e+00)
  %i.db = fptosi double %i.da to i32              ; 2 uses
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = call ptr @ADIOI_Calloc_fn(i64 noundef %i.dd, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.df = sext i32 %i.db to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = load i64, ptr %i.cx, align 8, !tbaa !16 ; 2 uses
  %.not20.i = icmp eq i64 %i.dh, 0
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.dk = shl i64 %i.dh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.de, ptr align 8 %i.dj, i64 %i.dk, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !19
  %i.dn = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.do = shl i64 %i.dn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dg, ptr align 8 %i.dm, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.dp, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.de, ptr %i.dq, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.dg, ptr %i.dr, align 8, !tbaa !19
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !16
  br label %flatlist_node_grow.exit

flatlist_node_grow.exit:                          ; preds = %.flatlist_node_grow.exit_crit_edge, %bb.j
  %i.ds = phi ptr [ %.pre1224, %.flatlist_node_grow.exit_crit_edge ], [ %i.dg, %bb.j ]
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.co
  store i64 %2, ptr %i.dt, align 8, !tbaa !9
  %i.du = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.dv = call i32 @PMPI_Type_size_x(ptr noundef %i.du, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.dw = load i64, ptr %i.j, align 8, !tbaa !9
  %i.dx = mul nsw i64 %i.dw, %i.ck
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !18
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.co
  store i64 %i.dx, ptr %i.ea, align 8, !tbaa !9
  %i.eb = load i64, ptr %3, align 8, !tbaa !9
  %i.ec = add nsw i64 %i.eb, 1
  store i64 %i.ec, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.k:                                             ; preds = %bb.g
  %i.ed = sub i64 %.pre1222, %i.co                ; 9 uses
  %i.ee = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ef = call i32 @PMPI_Type_get_extent(ptr noundef %i.ee, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.eg = icmp sgt i32 %i.cj, 1
  br i1 %i.eg, label %.preheader.lr.ph, label %._crit_edge1110

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.eh = icmp sgt i64 %i.ed, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ej = load i64, ptr %i.l, align 8             ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = shl i64 %i.co, 3                        ; 2 uses
  %i.em = shl i64 %.pre1222, 3                    ; 2 uses
  %4 = sub i64 %i.el, %i.em
  %5 = sub i64 %i.em, %i.el
  %i.en = xor i64 %i.co, -1
  %i.eo = add i64 %.pre1222, %i.en
  %min.iters.check1484 = icmp ult i64 %i.ed, 8
  %invariant.op = add i64 %5, -1
  %invariant.op1541 = add i64 %4, -1
  %n.vec1492 = and i64 %i.ed, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1493 = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %broadcast.splat1494 = shufflevector <2 x i64> %broadcast.splatinsert1493, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1503 = icmp eq i64 %i.ed, %n.vec1492
  %i.ep = sub i64 %.pre1222, %i.co
  %xtraiter1526 = and i64 %i.ep, 1
  %lcmp.mod1527.not = icmp eq i64 %xtraiter1526, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1106
  %.07761109 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.go, %._crit_edge1106 ]
  %.07971108 = phi i64 [ %.pre1222, %.preheader.lr.ph ], [ %.1798.lcssa, %._crit_edge1106 ] ; 5 uses
  br i1 %i.eh, label %.lr.ph1105, label %._crit_edge1106

.lr.ph1105:                                       ; preds = %.preheader
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !19 ; 9 uses
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 9 uses
  br i1 %min.iters.check1484, label %scalar.ph1483.preheader, label %vector.memcheck1485

vector.memcheck1485:                              ; preds = %.lr.ph1105
  %i.es = ptrtoaddr ptr %i.er to i64
  %i.et = ptrtoaddr ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = add i64 %i.eu, %invariant.op
  %diff.check1486 = icmp ult i64 %i.ev, 31
  %.reass1542 = add i64 %i.eu, %invariant.op1541
  %diff.check1487 = icmp ult i64 %.reass1542, 31
  %conflict.rdx1488 = or i1 %diff.check1486, %diff.check1487
  %6 = add i64 %i.eu, -1
  %diff.check1489 = icmp ult i64 %6, 31
  %conflict.rdx1490 = or i1 %conflict.rdx1488, %diff.check1489
  br i1 %conflict.rdx1490, label %scalar.ph1483.preheader, label %vector.ph1491

vector.ph1491:                                    ; preds = %vector.memcheck1485
  %i.ew = add i64 %.07971108, %n.vec1492          ; 2 uses
  br label %vector.body1495

vector.body1495:                                  ; preds = %vector.body1495, %vector.ph1491
  %index1496 = phi i64 [ 0, %vector.ph1491 ], [ %index.next1501, %vector.body1495 ] ; 2 uses
  %i.ex = add i64 %.07971108, %index1496          ; 3 uses
  %i.ey = sub nsw i64 %i.ex, %i.ed                ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load1497 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !9
  %wide.load1498 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !9
  %i.fb = add nsw <2 x i64> %broadcast.splat1494, %wide.load1497
  %i.fc = add nsw <2 x i64> %broadcast.splat1494, %wide.load1498
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ex ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> %i.fb, ptr %i.fd, align 8, !tbaa !9
  store <2 x i64> %i.fc, ptr %i.fe, align 8, !tbaa !9
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ey ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load1499 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !9
  %wide.load1500 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !9
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ex ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x i64> %wide.load1499, ptr %i.fh, align 8, !tbaa !9
  store <2 x i64> %wide.load1500, ptr %i.fi, align 8, !tbaa !9
  %index.next1501 = add nuw i64 %index1496, 4     ; 2 uses
  %i.fj = icmp eq i64 %index.next1501, %n.vec1492
  br i1 %i.fj, label %middle.block1502, label %vector.body1495, !llvm.loop !30

middle.block1502:                                 ; preds = %vector.body1495
  br i1 %cmp.n1503, label %._crit_edge1106, label %scalar.ph1483.preheader

scalar.ph1483.preheader:                          ; preds = %vector.memcheck1485, %.lr.ph1105, %middle.block1502
  %.17981104.ph = phi i64 [ %.07971108, %vector.memcheck1485 ], [ %.07971108, %.lr.ph1105 ], [ %i.ew, %middle.block1502 ] ; 5 uses
  %.08131103.ph = phi i64 [ 0, %vector.memcheck1485 ], [ 0, %.lr.ph1105 ], [ %n.vec1492, %middle.block1502 ] ; 3 uses
  br i1 %lcmp.mod1527.not, label %scalar.ph1483.prol.loopexit, label %scalar.ph1483.prol

scalar.ph1483.prol:                               ; preds = %scalar.ph1483.preheader
  %i.fk = sub nsw i64 %.17981104.ph, %i.ed        ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !9
  %i.fn = add nsw i64 %i.ej, %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.17981104.ph
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !9
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fk
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !9
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.17981104.ph
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !9
  %i.fs = add nsw i64 %.17981104.ph, 1            ; 2 uses
  %i.ft = or disjoint i64 %.08131103.ph, 1
  br label %scalar.ph1483.prol.loopexit

scalar.ph1483.prol.loopexit:                      ; preds = %scalar.ph1483.prol, %scalar.ph1483.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph1483.preheader ], [ %i.fs, %scalar.ph1483.prol ]
  %.17981104.unr = phi i64 [ %.17981104.ph, %scalar.ph1483.preheader ], [ %i.fs, %scalar.ph1483.prol ]
  %.08131103.unr = phi i64 [ %.08131103.ph, %scalar.ph1483.preheader ], [ %i.ft, %scalar.ph1483.prol ]
  %i.fu = icmp eq i64 %i.eo, %.08131103.ph
  br i1 %i.fu, label %._crit_edge1106, label %scalar.ph1483

scalar.ph1483:                                    ; preds = %scalar.ph1483.prol.loopexit, %scalar.ph1483
  %.17981104 = phi i64 [ %i.gm, %scalar.ph1483 ], [ %.17981104.unr, %scalar.ph1483.prol.loopexit ] ; 5 uses
  %.08131103 = phi i64 [ %i.gn, %scalar.ph1483 ], [ %.08131103.unr, %scalar.ph1483.prol.loopexit ]
  %i.fv = sub nsw i64 %.17981104, %i.ed           ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !9
  %i.fy = add nsw i64 %i.ej, %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.17981104
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !9
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fv
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.17981104
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !9
  %i.gd = add nsw i64 %.17981104, 1               ; 3 uses
  %i.ge = sub nsw i64 %i.gd, %i.ed                ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !9
  %i.gh = add nsw i64 %i.ej, %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.gd
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !9
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ge
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !9
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.gd
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !9
  %i.gm = add nsw i64 %.17981104, 2               ; 2 uses
  %i.gn = add nuw nsw i64 %.08131103, 2           ; 2 uses
  %exitcond1192.not.1 = icmp eq i64 %i.gn, %i.ed
  br i1 %exitcond1192.not.1, label %._crit_edge1106, label %scalar.ph1483, !llvm.loop !31

._crit_edge1106:                                  ; preds = %scalar.ph1483.prol.loopexit, %scalar.ph1483, %middle.block1502, %.preheader
  %.1798.lcssa = phi i64 [ %.07971108, %.preheader ], [ %i.ew, %middle.block1502 ], [ %.lcssa.unr, %scalar.ph1483.prol.loopexit ], [ %i.gm, %scalar.ph1483 ] ; 2 uses
  %i.go = add nuw nsw i32 %.07761109, 1           ; 2 uses
  %exitcond1193.not = icmp eq i32 %i.go, %i.cj
  br i1 %exitcond1193.not, label %._crit_edge1110, label %.preheader, !llvm.loop !32

._crit_edge1110:                                  ; preds = %._crit_edge1106, %bb.k
  %.0797.lcssa = phi i64 [ %.pre1222, %bb.k ], [ %.1798.lcssa, %._crit_edge1106 ]
  store i64 %.0797.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.l:                                             ; preds = %bb.a
  %i.gp = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.gs = call i32 @PMPI_Type_get_envelope(ptr noundef %i.gr, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.gt = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.gt, ptr noundef nonnull %i.c) #7
  %i.gu = load i64, ptr %3, align 8, !tbaa !9     ; 13 uses
  %i.gv = load i32, ptr %i.b, align 4, !tbaa !10
  %i.gw = icmp eq i32 %i.gv, 0
  %i.gx = load i32, ptr %i.c, align 4
  %i.gy = icmp ne i32 %i.gx, 0
  %or.cond5 = select i1 %i.gw, i1 true, i1 %i.gy
  br i1 %or.cond5, label %.thread1327, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gz = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.gz, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %.pre1218 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.ha = icmp eq i64 %i.gu, %.pre1218
  br i1 %i.ha, label %.thread1327, label %bb.t

.thread1327:                                      ; preds = %bb.l, %bb.m
  %i.hb = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !10
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !10
  %i.hg = sext i32 %i.hf to i64
  %i.hh = shl i64 %i.gu, 32
  %i.hi = ashr exact i64 %i.hh, 32
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !16 ; 2 uses
  %.not.i874 = icmp sgt i64 %i.hk, %i.hi
  br i1 %.not.i874, label %.flatlist_node_grow.exit876_crit_edge, label %bb.n

.flatlist_node_grow.exit876_crit_edge:            ; preds = %.thread1327
  %.phi.trans.insert1219 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1220 = load ptr, ptr %.phi.trans.insert1219, align 8, !tbaa !19
  br label %flatlist_node_grow.exit876

bb.n:                                             ; preds = %.thread1327
  %i.hl = sitofp i64 %i.hk to double
  %i.hm = call double @llvm.fmuladd.f64(double %i.hl, double 1.250000e+00, double 4.000000e+00)
  %i.hn = fptosi double %i.hm to i32              ; 2 uses
  %i.ho = shl nsw i32 %i.hn, 1
  %i.hp = sext i32 %i.ho to i64
  %i.hq = call ptr @ADIOI_Calloc_fn(i64 noundef %i.hp, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.hr = sext i32 %i.hn to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr ; 3 uses
  %i.ht = load i64, ptr %i.hj, align 8, !tbaa !16 ; 2 uses
  %.not20.i875 = icmp eq i64 %i.ht, 0
  br i1 %.not20.i875, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !18
  %i.hw = shl i64 %i.ht, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hq, ptr align 8 %i.hv, i64 %i.hw, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !19
  %i.hz = load i64, ptr %i.hj, align 8, !tbaa !16
  %i.ia = shl i64 %i.hz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hs, ptr align 8 %i.hy, i64 %i.ia, i1 false)
  %i.ib = load ptr, ptr %i.hu, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.ib, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.hq, ptr %i.ic, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.hs, ptr %i.id, align 8, !tbaa !19
  store i64 %i.hr, ptr %i.hj, align 8, !tbaa !16
  br label %flatlist_node_grow.exit876

flatlist_node_grow.exit876:                       ; preds = %.flatlist_node_grow.exit876_crit_edge, %bb.p
  %i.ie = phi ptr [ %.pre1220, %.flatlist_node_grow.exit876_crit_edge ], [ %i.hs, %bb.p ]
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.gu
  store i64 %2, ptr %i.ig, align 8, !tbaa !9
  %i.ih = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ii = call i32 @PMPI_Type_size_x(ptr noundef %i.ih, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.ij = load i64, ptr %i.j, align 8, !tbaa !9
  %i.ik = mul nsw i64 %i.ij, %i.hd
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.gu
  store i64 %i.ik, ptr %i.in, align 8, !tbaa !9
  %i.io = add nsw i64 %i.gu, %i.gq
  %.18141097 = add nsw i64 %i.gu, 1               ; 2 uses
  %i.ip = icmp sgt i32 %i.gp, 1
  br i1 %i.ip, label %.lr.ph1100, label %._crit_edge1101

.lr.ph1100:                                       ; preds = %flatlist_node_grow.exit876, %flatlist_node_grow.exit879
  %i.iq = phi ptr [ %i.jj, %flatlist_node_grow.exit879 ], [ %i.im, %flatlist_node_grow.exit876 ]
  %.18141099 = phi i64 [ %.1814, %flatlist_node_grow.exit879 ], [ %.18141097, %flatlist_node_grow.exit876 ] ; 5 uses
end_hunk_0
