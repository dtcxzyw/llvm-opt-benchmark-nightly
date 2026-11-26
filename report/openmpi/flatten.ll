Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/flatten?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ADIOI_Flatten:bb.a
  %i.z = load i32, ptr %i.f, align 4, !tbaa !10
  %i.aa = add nsw i32 %i.z, 1
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
  %i.el = shl i64 %.pre1222, 3                    ; 2 uses
  %i.em = shl i64 %i.co, 3                        ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sub i64 %i.em, %i.el
  %i.ep = xor i64 %i.co, -1
  %i.eq = add i64 %.pre1222, %i.ep
  %min.iters.check1484 = icmp ult i64 %i.ed, 8
  %invariant.op = add i64 %i.eo, -1
  %invariant.op1541 = add i64 %i.en, -1
  %n.vec1492 = and i64 %i.ed, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1493 = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %broadcast.splat1494 = shufflevector <2 x i64> %broadcast.splatinsert1493, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1503 = icmp eq i64 %i.ed, %n.vec1492
  %i.er = sub i64 %.pre1222, %i.co
  %xtraiter1526 = and i64 %i.er, 1
  %lcmp.mod1527.not = icmp eq i64 %xtraiter1526, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1106
  %.07761109 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.gq, %._crit_edge1106 ]
  %.07971108 = phi i64 [ %.pre1222, %.preheader.lr.ph ], [ %.1798.lcssa, %._crit_edge1106 ] ; 5 uses
  br i1 %i.eh, label %.lr.ph1105, label %._crit_edge1106

.lr.ph1105:                                       ; preds = %.preheader
  %i.es = load ptr, ptr %i.ei, align 8, !tbaa !19 ; 9 uses
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 9 uses
  br i1 %min.iters.check1484, label %scalar.ph1483.preheader, label %vector.memcheck1485

vector.memcheck1485:                              ; preds = %.lr.ph1105
  %i.eu = ptrtoaddr ptr %i.et to i64
  %i.ev = ptrtoaddr ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 3 uses
  %.reass.a = add i64 %i.ew, -1
  %diff.check1486 = icmp ult i64 %.reass.a, 31
  %.reass1542.a = add i64 %i.ew, %invariant.op
  %diff.check1487 = icmp ult i64 %.reass1542.a, 31
  %conflict.rdx1488 = or i1 %diff.check1486, %diff.check1487
  %i.ex = add i64 %i.ew, %invariant.op1541
  %diff.check1489 = icmp ult i64 %i.ex, 31
  %conflict.rdx1490 = or i1 %conflict.rdx1488, %diff.check1489
  br i1 %conflict.rdx1490, label %scalar.ph1483.preheader, label %vector.ph1491

vector.ph1491:                                    ; preds = %vector.memcheck1485
  %i.ey = add i64 %.07971108, %n.vec1492          ; 2 uses
  br label %vector.body1495

vector.body1495:                                  ; preds = %vector.body1495, %vector.ph1491
  %index1496 = phi i64 [ 0, %vector.ph1491 ], [ %index.next1501, %vector.body1495 ] ; 2 uses
  %i.ez = add i64 %.07971108, %index1496          ; 3 uses
  %i.fa = sub nsw i64 %i.ez, %i.ed                ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load1497 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !9
  %wide.load1498 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !9
  %i.fd = add nsw <2 x i64> %broadcast.splat1494, %wide.load1497
  %i.fe = add nsw <2 x i64> %broadcast.splat1494, %wide.load1498
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ez ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <2 x i64> %i.fd, ptr %i.ff, align 8, !tbaa !9
  store <2 x i64> %i.fe, ptr %i.fg, align 8, !tbaa !9
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fa ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load1499 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !9
  %wide.load1500 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !9
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.ez ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x i64> %wide.load1499, ptr %i.fj, align 8, !tbaa !9
  store <2 x i64> %wide.load1500, ptr %i.fk, align 8, !tbaa !9
  %index.next1501 = add nuw i64 %index1496, 4     ; 2 uses
  %i.fl = icmp eq i64 %index.next1501, %n.vec1492
  br i1 %i.fl, label %middle.block1502, label %vector.body1495, !llvm.loop !30

middle.block1502:                                 ; preds = %vector.body1495
  br i1 %cmp.n1503, label %._crit_edge1106, label %scalar.ph1483.preheader

scalar.ph1483.preheader:                          ; preds = %vector.memcheck1485, %.lr.ph1105, %middle.block1502
  %.17981104.ph = phi i64 [ %.07971108, %vector.memcheck1485 ], [ %.07971108, %.lr.ph1105 ], [ %i.ey, %middle.block1502 ] ; 5 uses
  %.08131103.ph = phi i64 [ 0, %vector.memcheck1485 ], [ 0, %.lr.ph1105 ], [ %n.vec1492, %middle.block1502 ] ; 3 uses
  br i1 %lcmp.mod1527.not, label %scalar.ph1483.prol.loopexit, label %scalar.ph1483.prol

scalar.ph1483.prol:                               ; preds = %scalar.ph1483.preheader
  %i.fm = sub nsw i64 %.17981104.ph, %i.ed        ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !9
  %i.fp = add nsw i64 %i.ej, %i.fo
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.17981104.ph
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !9
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fm
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !9
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.et, i64 %.17981104.ph
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !9
  %i.fu = add nsw i64 %.17981104.ph, 1            ; 2 uses
  %i.fv = or disjoint i64 %.08131103.ph, 1
  br label %scalar.ph1483.prol.loopexit

scalar.ph1483.prol.loopexit:                      ; preds = %scalar.ph1483.prol, %scalar.ph1483.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph1483.preheader ], [ %i.fu, %scalar.ph1483.prol ]
  %.17981104.unr = phi i64 [ %.17981104.ph, %scalar.ph1483.preheader ], [ %i.fu, %scalar.ph1483.prol ]
  %.08131103.unr = phi i64 [ %.08131103.ph, %scalar.ph1483.preheader ], [ %i.fv, %scalar.ph1483.prol ]
  %i.fw = icmp eq i64 %i.eq, %.08131103.ph
  br i1 %i.fw, label %._crit_edge1106, label %scalar.ph1483

scalar.ph1483:                                    ; preds = %scalar.ph1483.prol.loopexit, %scalar.ph1483
  %.17981104 = phi i64 [ %i.go, %scalar.ph1483 ], [ %.17981104.unr, %scalar.ph1483.prol.loopexit ] ; 5 uses
  %.08131103 = phi i64 [ %i.gp, %scalar.ph1483 ], [ %.08131103.unr, %scalar.ph1483.prol.loopexit ]
  %i.fx = sub nsw i64 %.17981104, %i.ed           ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !9
  %i.ga = add nsw i64 %i.ej, %i.fz
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.17981104
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !9
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fx
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !9
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.et, i64 %.17981104
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !9
  %i.gf = add nsw i64 %.17981104, 1               ; 3 uses
  %i.gg = sub nsw i64 %i.gf, %i.ed                ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !9
  %i.gj = add nsw i64 %i.ej, %i.gi
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.gf
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !9
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.gg
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !9
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.gf
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !9
  %i.go = add nsw i64 %.17981104, 2               ; 2 uses
  %i.gp = add nuw nsw i64 %.08131103, 2           ; 2 uses
  %exitcond1192.not.1 = icmp eq i64 %i.gp, %i.ed
  br i1 %exitcond1192.not.1, label %._crit_edge1106, label %scalar.ph1483, !llvm.loop !31

._crit_edge1106:                                  ; preds = %scalar.ph1483.prol.loopexit, %scalar.ph1483, %middle.block1502, %.preheader
  %.1798.lcssa = phi i64 [ %.07971108, %.preheader ], [ %i.ey, %middle.block1502 ], [ %.lcssa.unr, %scalar.ph1483.prol.loopexit ], [ %i.go, %scalar.ph1483 ] ; 2 uses
  %i.gq = add nuw nsw i32 %.07761109, 1           ; 2 uses
  %exitcond1193.not = icmp eq i32 %i.gq, %i.cj
  br i1 %exitcond1193.not, label %._crit_edge1110, label %.preheader, !llvm.loop !32

._crit_edge1110:                                  ; preds = %._crit_edge1106, %bb.k
  %.0797.lcssa = phi i64 [ %.pre1222, %bb.k ], [ %.1798.lcssa, %._crit_edge1106 ]
  store i64 %.0797.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.l:                                             ; preds = %bb.a
  %i.gr = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.gu = call i32 @PMPI_Type_get_envelope(ptr noundef %i.gt, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.gv = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.gv, ptr noundef nonnull %i.c) #7
  %i.gw = load i64, ptr %3, align 8, !tbaa !9     ; 13 uses
  %i.gx = load i32, ptr %i.b, align 4, !tbaa !10
  %i.gy = icmp eq i32 %i.gx, 0
  %i.gz = load i32, ptr %i.c, align 4
  %i.ha = icmp ne i32 %i.gz, 0
  %or.cond5 = select i1 %i.gy, i1 true, i1 %i.ha
  br i1 %or.cond5, label %.thread1327, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hb = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.hb, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %.pre1218 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.hc = icmp eq i64 %i.gw, %.pre1218
  br i1 %i.hc, label %.thread1327, label %bb.t

.thread1327:                                      ; preds = %bb.l, %bb.m
  %i.hd = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !10
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !10
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl i64 %i.gw, 32
  %i.hk = ashr exact i64 %i.hj, 32
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !16 ; 2 uses
  %.not.i874 = icmp sgt i64 %i.hm, %i.hk
  br i1 %.not.i874, label %.flatlist_node_grow.exit876_crit_edge, label %bb.n

.flatlist_node_grow.exit876_crit_edge:            ; preds = %.thread1327
  %.phi.trans.insert1219 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1220 = load ptr, ptr %.phi.trans.insert1219, align 8, !tbaa !19
  br label %flatlist_node_grow.exit876

bb.n:                                             ; preds = %.thread1327
  %i.hn = sitofp i64 %i.hm to double
  %i.ho = call double @llvm.fmuladd.f64(double %i.hn, double 1.250000e+00, double 4.000000e+00)
  %i.hp = fptosi double %i.ho to i32              ; 2 uses
  %i.hq = shl nsw i32 %i.hp, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = call ptr @ADIOI_Calloc_fn(i64 noundef %i.hr, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.ht = sext i32 %i.hp to i64                   ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ht ; 3 uses
  %i.hv = load i64, ptr %i.hl, align 8, !tbaa !16 ; 2 uses
  %.not20.i875 = icmp eq i64 %i.hv, 0
  br i1 %.not20.i875, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !18
  %i.hy = shl i64 %i.hv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hs, ptr align 8 %i.hx, i64 %i.hy, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !19
  %i.ib = load i64, ptr %i.hl, align 8, !tbaa !16
  %i.ic = shl i64 %i.ib, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hu, ptr align 8 %i.ia, i64 %i.ic, i1 false)
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.id, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.hs, ptr %i.ie, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.hu, ptr %i.if, align 8, !tbaa !19
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !16
  br label %flatlist_node_grow.exit876

flatlist_node_grow.exit876:                       ; preds = %.flatlist_node_grow.exit876_crit_edge, %bb.p
  %i.ig = phi ptr [ %.pre1220, %.flatlist_node_grow.exit876_crit_edge ], [ %i.hu, %bb.p ]
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.gw
  store i64 %2, ptr %i.ii, align 8, !tbaa !9
  %i.ij = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ik = call i32 @PMPI_Type_size_x(ptr noundef %i.ij, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.il = load i64, ptr %i.j, align 8, !tbaa !9
  %i.im = mul nsw i64 %i.il, %i.hf
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !18 ; 2 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.gw
  store i64 %i.im, ptr %i.ip, align 8, !tbaa !9
  %i.iq = add nsw i64 %i.gw, %i.gs
  %.18141097 = add nsw i64 %i.gw, 1               ; 2 uses
  %i.ir = icmp sgt i32 %i.gr, 1
  br i1 %i.ir, label %.lr.ph1100, label %._crit_edge1101

.lr.ph1100:                                       ; preds = %flatlist_node_grow.exit876, %flatlist_node_grow.exit879
  %i.is = phi ptr [ %i.jl, %flatlist_node_grow.exit879 ], [ %i.io, %flatlist_node_grow.exit876 ]
  %.18141099 = phi i64 [ %.1814, %flatlist_node_grow.exit879 ], [ %.18141097, %flatlist_node_grow.exit876 ] ; 5 uses
  %.1814.in1098 = phi i64 [ %.18141099, %flatlist_node_grow.exit879 ], [ %i.gw, %flatlist_node_grow.exit876 ]
  %i.it = shl i64 %.18141099, 32
  %i.iu = ashr exact i64 %i.it, 32
  %i.iv = load i64, ptr %i.hl, align 8, !tbaa !16 ; 2 uses
  %.not.i877 = icmp sgt i64 %i.iv, %i.iu
  br i1 %.not.i877, label %.lr.ph1100.flatlist_node_grow.exit879_crit_edge, label %bb.q

.lr.ph1100.flatlist_node_grow.exit879_crit_edge:  ; preds = %.lr.ph1100
  %.pre1221 = load ptr, ptr %i.ih, align 8, !tbaa !19
  br label %flatlist_node_grow.exit879

bb.q:                                             ; preds = %.lr.ph1100
  %i.iw = sitofp i64 %i.iv to double
  %i.ix = call double @llvm.fmuladd.f64(double %i.iw, double 1.250000e+00, double 4.000000e+00)
  %i.iy = fptosi double %i.ix to i32              ; 2 uses
  %i.iz = shl nsw i32 %i.iy, 1
  %i.ja = sext i32 %i.iz to i64
  %i.jb = call ptr @ADIOI_Calloc_fn(i64 noundef %i.ja, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.jc = sext i32 %i.iy to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jc ; 3 uses
  %i.je = load i64, ptr %i.hl, align 8, !tbaa !16 ; 2 uses
  %.not20.i878 = icmp eq i64 %i.je, 0
  br i1 %.not20.i878, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jf = load ptr, ptr %i.in, align 8, !tbaa !18
  %i.jg = shl i64 %i.je, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jb, ptr align 8 %i.jf, i64 %i.jg, i1 false)
  %i.jh = load ptr, ptr %i.ih, align 8, !tbaa !19
  %i.ji = load i64, ptr %i.hl, align 8, !tbaa !16
  %i.jj = shl i64 %i.ji, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jd, ptr align 8 %i.jh, i64 %i.jj, i1 false)
  %i.jk = load ptr, ptr %i.in, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.jk, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %i.jb, ptr %i.in, align 8, !tbaa !18
  store ptr %i.jd, ptr %i.ih, align 8, !tbaa !19
  store i64 %i.jc, ptr %i.hl, align 8, !tbaa !16
  br label %flatlist_node_grow.exit879

flatlist_node_grow.exit879:                       ; preds = %.lr.ph1100.flatlist_node_grow.exit879_crit_edge, %bb.s
  %i.jl = phi ptr [ %i.is, %.lr.ph1100.flatlist_node_grow.exit879_crit_edge ], [ %i.jb, %bb.s ] ; 3 uses
  %i.jm = phi ptr [ %.pre1221, %.lr.ph1100.flatlist_node_grow.exit879_crit_edge ], [ %i.jd, %bb.s ] ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %.1814.in1098
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !9
  %i.jp = load i64, ptr %i.j, align 8, !tbaa !9
  %i.jq = mul nsw i64 %i.jp, %i.hi
  %i.jr = add nsw i64 %i.jq, %i.jo
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %.18141099
  store i64 %i.jr, ptr %i.js, align 8, !tbaa !9
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.gw
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !9
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %.18141099
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !9
  %.1814 = add nsw i64 %.18141099, 1              ; 3 uses
  %i.jw = icmp slt i64 %.1814, %i.iq
  br i1 %i.jw, label %.lr.ph1100, label %._crit_edge1101, !llvm.loop !33

._crit_edge1101:                                  ; preds = %flatlist_node_grow.exit879, %flatlist_node_grow.exit876
  %.1814.lcssa = phi i64 [ %.18141097, %flatlist_node_grow.exit876 ], [ %.1814, %flatlist_node_grow.exit879 ]
  store i64 %.1814.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.t:                                             ; preds = %bb.m
  %i.jx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !10 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !10
  %i.kb = sext i32 %i.ka to i64
  %i.kc = sub i64 %.pre1218, %i.gw                ; 11 uses
  %i.kd = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ke = call i32 @PMPI_Type_get_extent(ptr noundef %i.kd, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.kf = icmp sgt i32 %i.jy, 1
  br i1 %i.kf, label %.preheader921.lr.ph, label %._crit_edge1085

.preheader921.lr.ph:                              ; preds = %bb.t
  %i.kg = icmp sgt i64 %i.kc, 0
  %i.kh = load i64, ptr %i.l, align 8             ; 4 uses
  br i1 %i.kg, label %.preheader921.lr.ph.split.us, label %._crit_edge1085

.preheader921.lr.ph.split.us:                     ; preds = %.preheader921.lr.ph
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !19 ; 9 uses
  %i.kl = ptrtoaddr ptr %i.kk to i64              ; 3 uses
  %i.km = load ptr, ptr %i.ki, align 8, !tbaa !18 ; 9 uses
  %i.kn = ptrtoaddr ptr %i.km to i64              ; 3 uses
  %i.ko = shl i64 %.pre1218, 3                    ; 2 uses
  %i.kp = add i64 %i.ko, %i.kn
  %i.kq = shl i64 %i.gw, 3                        ; 2 uses
  %i.kr = add i64 %i.kq, %i.kl
  %i.ks = add i64 %i.kq, %i.kn
  %i.kt = add i64 %i.ko, %i.kl
  %i.ku = xor i64 %i.gw, -1
  %i.kv = add i64 %.pre1218, %i.ku
  %min.iters.check1426 = icmp ult i64 %i.kc, 6
  %i.kw = sub i64 %i.kl, %i.kn
  %diff.check1428 = icmp ugt i64 %i.kw, -32
  %i.kx = sub i64 %i.kt, %i.ks
  %diff.check1429 = icmp ugt i64 %i.kx, -32
  %conflict.rdx1430 = or i1 %diff.check1428, %diff.check1429
  %i.ky = sub i64 %i.kr, %i.kp
  %diff.check1431 = icmp ugt i64 %i.ky, -32
  %conflict.rdx1432 = or i1 %conflict.rdx1430, %diff.check1431
  %n.vec1434 = and i64 %i.kc, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1435 = insertelement <2 x i64> poison, i64 %i.kh, i64 0
  %broadcast.splat1436 = shufflevector <2 x i64> %broadcast.splatinsert1435, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1445 = icmp eq i64 %i.kc, %n.vec1434
  %i.kz = sub i64 %.pre1218, %i.gw
  %xtraiter1522 = and i64 %i.kz, 1
  %lcmp.mod1523.not = icmp eq i64 %xtraiter1522, 0
  br label %.preheader921.us

.preheader921.us:                                 ; preds = %._crit_edge1081.us, %.preheader921.lr.ph.split.us
  %.17771084.us = phi i32 [ 1, %.preheader921.lr.ph.split.us ], [ %i.ms, %._crit_edge1081.us ]
  %.27991083.us = phi i64 [ %.pre1218, %.preheader921.lr.ph.split.us ], [ %.lcssa1371, %._crit_edge1081.us ] ; 3 uses
  %brmerge = select i1 %min.iters.check1426, i1 true, i1 %conflict.rdx1432
  br i1 %brmerge, label %scalar.ph1425.preheader, label %vector.ph1433

vector.ph1433:                                    ; preds = %.preheader921.us
  %i.la = add i64 %.27991083.us, %n.vec1434       ; 2 uses
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %vector.ph1433
  %index1438 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1443, %vector.body1437 ] ; 2 uses
  %i.lb = add i64 %.27991083.us, %index1438       ; 3 uses
  %i.lc = sub nsw i64 %i.lb, %i.kc                ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load1439 = load <2 x i64>, ptr %i.ld, align 8, !tbaa !9
  %wide.load1440 = load <2 x i64>, ptr %i.le, align 8, !tbaa !9
  %i.lf = add nsw <2 x i64> %broadcast.splat1436, %wide.load1439
  %i.lg = add nsw <2 x i64> %broadcast.splat1436, %wide.load1440
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lb ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <2 x i64> %i.lf, ptr %i.lh, align 8, !tbaa !9
  store <2 x i64> %i.lg, ptr %i.li, align 8, !tbaa !9
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lc ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %wide.load1441 = load <2 x i64>, ptr %i.lj, align 8, !tbaa !9
  %wide.load1442 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !9
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lb ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <2 x i64> %wide.load1441, ptr %i.ll, align 8, !tbaa !9
  store <2 x i64> %wide.load1442, ptr %i.lm, align 8, !tbaa !9
  %index.next1443 = add nuw i64 %index1438, 4     ; 2 uses
  %i.ln = icmp eq i64 %index.next1443, %n.vec1434
  br i1 %i.ln, label %middle.block1444, label %vector.body1437, !llvm.loop !34

middle.block1444:                                 ; preds = %vector.body1437
  br i1 %cmp.n1445, label %._crit_edge1081.us, label %scalar.ph1425.preheader

scalar.ph1425.preheader:                          ; preds = %.preheader921.us, %middle.block1444
  %.38001079.us.ph = phi i64 [ %i.la, %middle.block1444 ], [ %.27991083.us, %.preheader921.us ] ; 5 uses
  %.28151078.us.ph = phi i64 [ %n.vec1434, %middle.block1444 ], [ 0, %.preheader921.us ] ; 3 uses
  br i1 %lcmp.mod1523.not, label %scalar.ph1425.prol.loopexit, label %scalar.ph1425.prol

scalar.ph1425.prol:                               ; preds = %scalar.ph1425.preheader
  %i.lo = sub nsw i64 %.38001079.us.ph, %i.kc     ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lo
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !9
  %i.lr = add nsw i64 %i.kh, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %.38001079.us.ph
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !9
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lo
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !9
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.km, i64 %.38001079.us.ph
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !9
  %i.lw = add nsw i64 %.38001079.us.ph, 1         ; 2 uses
  %i.lx = or disjoint i64 %.28151078.us.ph, 1
  br label %scalar.ph1425.prol.loopexit

scalar.ph1425.prol.loopexit:                      ; preds = %scalar.ph1425.prol, %scalar.ph1425.preheader
  %.lcssa1508.unr = phi i64 [ poison, %scalar.ph1425.preheader ], [ %i.lw, %scalar.ph1425.prol ]
  %.38001079.us.unr = phi i64 [ %.38001079.us.ph, %scalar.ph1425.preheader ], [ %i.lw, %scalar.ph1425.prol ]
  %.28151078.us.unr = phi i64 [ %.28151078.us.ph, %scalar.ph1425.preheader ], [ %i.lx, %scalar.ph1425.prol ]
  %i.ly = icmp eq i64 %i.kv, %.28151078.us.ph
  br i1 %i.ly, label %._crit_edge1081.us, label %scalar.ph1425

scalar.ph1425:                                    ; preds = %scalar.ph1425.prol.loopexit, %scalar.ph1425
  %.38001079.us = phi i64 [ %i.mq, %scalar.ph1425 ], [ %.38001079.us.unr, %scalar.ph1425.prol.loopexit ] ; 5 uses
  %.28151078.us = phi i64 [ %i.mr, %scalar.ph1425 ], [ %.28151078.us.unr, %scalar.ph1425.prol.loopexit ]
  %i.lz = sub nsw i64 %.38001079.us, %i.kc        ; 2 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lz
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !9
  %i.mc = add nsw i64 %i.kh, %i.mb
  %i.md = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %.38001079.us
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !9
  %i.me = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lz
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !9
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.km, i64 %.38001079.us
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !9
  %i.mh = add nsw i64 %.38001079.us, 1            ; 3 uses
  %i.mi = sub nsw i64 %i.mh, %i.kc                ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.mi
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !9
  %i.ml = add nsw i64 %i.kh, %i.mk
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.mh
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !9
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.mi
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !9
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.mh
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !9
  %i.mq = add nsw i64 %.38001079.us, 2            ; 2 uses
  %i.mr = add nuw nsw i64 %.28151078.us, 2        ; 2 uses
  %exitcond1185.not.1 = icmp eq i64 %i.mr, %i.kc
  br i1 %exitcond1185.not.1, label %._crit_edge1081.us, label %scalar.ph1425, !llvm.loop !35

._crit_edge1081.us:                               ; preds = %scalar.ph1425.prol.loopexit, %scalar.ph1425, %middle.block1444
  %.lcssa1371 = phi i64 [ %i.la, %middle.block1444 ], [ %.lcssa1508.unr, %scalar.ph1425.prol.loopexit ], [ %i.mq, %scalar.ph1425 ] ; 3 uses
  %i.ms = add nuw nsw i32 %.17771084.us, 1        ; 2 uses
  %exitcond1186.not = icmp eq i32 %i.ms, %i.jy
  br i1 %exitcond1186.not, label %._crit_edge1085.loopexit, label %.preheader921.us, !llvm.loop !36

._crit_edge1085.loopexit:                         ; preds = %._crit_edge1081.us
  %.pre1225 = sub i64 %.lcssa1371, %i.gw
  br label %._crit_edge1085

._crit_edge1085:                                  ; preds = %.preheader921.lr.ph, %._crit_edge1085.loopexit, %bb.t
  %.pre-phi = phi i64 [ %i.kc, %bb.t ], [ %.pre1225, %._crit_edge1085.loopexit ], [ %i.kc, %.preheader921.lr.ph ] ; 12 uses
  %.2799.lcssa = phi i64 [ %.pre1218, %bb.t ], [ %.lcssa1371, %._crit_edge1085.loopexit ], [ %.pre1218, %.preheader921.lr.ph ] ; 3 uses
  store i64 %.2799.lcssa, ptr %3, align 8, !tbaa !9
  %i.mt = icmp sgt i32 %i.gr, 1
  br i1 %i.mt, label %.preheader920.lr.ph, label %._crit_edge1095

.preheader920.lr.ph:                              ; preds = %._crit_edge1085
  %i.mu = icmp sgt i64 %.pre-phi, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mw = load i64, ptr %i.l, align 8
  %i.mx = mul nsw i64 %i.mw, %i.kb                ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mz = shl i64 %.pre-phi, 3                    ; 2 uses
  %min.iters.check1455 = icmp ult i64 %.pre-phi, 8
  %n.vec1463 = and i64 %.pre-phi, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1464 = insertelement <2 x i64> poison, i64 %i.mx, i64 0
  %broadcast.splat1465 = shufflevector <2 x i64> %broadcast.splatinsert1464, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1474 = icmp eq i64 %.pre-phi, %n.vec1463
  %xtraiter1524 = and i64 %.pre-phi, 1
  %lcmp.mod1525.not = icmp eq i64 %xtraiter1524, 0
  br label %.preheader920

.preheader920:                                    ; preds = %.preheader920.lr.ph, %._crit_edge1091
  %.48011094 = phi i64 [ %.2799.lcssa, %.preheader920.lr.ph ], [ %.5802.lcssa, %._crit_edge1091 ] ; 5 uses
  %.38161093 = phi i64 [ 1, %.preheader920.lr.ph ], [ %i.ox, %._crit_edge1091 ]
  br i1 %i.mu, label %.lr.ph1090, label %._crit_edge1091

.lr.ph1090:                                       ; preds = %.preheader920
  %i.na = load ptr, ptr %i.mv, align 8, !tbaa !19 ; 9 uses
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !18 ; 9 uses
  br i1 %min.iters.check1455, label %scalar.ph1454.preheader, label %vector.memcheck1456

vector.memcheck1456:                              ; preds = %.lr.ph1090
  %i.nc = ptrtoaddr ptr %i.nb to i64              ; 2 uses
  %i.nd = ptrtoaddr ptr %i.na to i64              ; 2 uses
  %i.ne = sub i64 %i.nc, %i.nd                    ; 2 uses
  %4 = add i64 %i.ne, -1
  %diff.check1457 = icmp ult i64 %4, 31
  %i.nf = sub i64 %i.mz, %i.ne
  %diff.check1458 = icmp ugt i64 %i.nf, -32
  %conflict.rdx1459 = or i1 %diff.check1457, %diff.check1458
  %i.ng = add i64 %i.mz, %i.nc
  %5 = sub i64 %i.nd, %i.ng
  %diff.check1460 = icmp ugt i64 %5, -32
  %conflict.rdx1461 = or i1 %conflict.rdx1459, %diff.check1460
  br i1 %conflict.rdx1461, label %scalar.ph1454.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %vector.memcheck1456
  %i.nh = add i64 %.48011094, %n.vec1463          ; 2 uses
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1462
  %index1467 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1472, %vector.body1466 ] ; 2 uses
  %i.ni = add i64 %.48011094, %index1467          ; 3 uses
  %i.nj = sub nsw i64 %i.ni, %.pre-phi            ; 2 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load1468 = load <2 x i64>, ptr %i.nk, align 8, !tbaa !9
  %wide.load1469 = load <2 x i64>, ptr %i.nl, align 8, !tbaa !9
  %i.nm = add nsw <2 x i64> %broadcast.splat1465, %wide.load1468
  %i.nn = add nsw <2 x i64> %broadcast.splat1465, %wide.load1469
  %i.no = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.ni ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store <2 x i64> %i.nm, ptr %i.no, align 8, !tbaa !9
  store <2 x i64> %i.nn, ptr %i.np, align 8, !tbaa !9
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.nj ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %wide.load1470 = load <2 x i64>, ptr %i.nq, align 8, !tbaa !9
  %wide.load1471 = load <2 x i64>, ptr %i.nr, align 8, !tbaa !9
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.ni ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store <2 x i64> %wide.load1470, ptr %i.ns, align 8, !tbaa !9
  store <2 x i64> %wide.load1471, ptr %i.nt, align 8, !tbaa !9
  %index.next1472 = add nuw i64 %index1467, 4     ; 2 uses
  %i.nu = icmp eq i64 %index.next1472, %n.vec1463
  br i1 %i.nu, label %middle.block1473, label %vector.body1466, !llvm.loop !37

middle.block1473:                                 ; preds = %vector.body1466
  br i1 %cmp.n1474, label %._crit_edge1091, label %scalar.ph1454.preheader

scalar.ph1454.preheader:                          ; preds = %vector.memcheck1456, %.lr.ph1090, %middle.block1473
  %indvars.iv1187.ph = phi i64 [ 0, %vector.memcheck1456 ], [ 0, %.lr.ph1090 ], [ %n.vec1463, %middle.block1473 ] ; 3 uses
  %.58021088.ph = phi i64 [ %.48011094, %vector.memcheck1456 ], [ %.48011094, %.lr.ph1090 ], [ %i.nh, %middle.block1473 ] ; 5 uses
  %.neg1528 = or disjoint i64 %indvars.iv1187.ph, 1
  br i1 %lcmp.mod1525.not, label %scalar.ph1454.prol.loopexit, label %scalar.ph1454.prol

scalar.ph1454.prol:                               ; preds = %scalar.ph1454.preheader
  %i.nv = sub nsw i64 %.58021088.ph, %.pre-phi    ; 2 uses
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.nv
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !9
  %i.ny = add nsw i64 %i.mx, %i.nx
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.na, i64 %.58021088.ph
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !9
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.nv
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !9
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %.58021088.ph
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !9
  %i.od = add nsw i64 %.58021088.ph, 1            ; 2 uses
  %indvars.iv.next1188.prol = or disjoint i64 %indvars.iv1187.ph, 1
  br label %scalar.ph1454.prol.loopexit

scalar.ph1454.prol.loopexit:                      ; preds = %scalar.ph1454.prol, %scalar.ph1454.preheader
  %.lcssa1507.unr = phi i64 [ poison, %scalar.ph1454.preheader ], [ %i.od, %scalar.ph1454.prol ]
  %indvars.iv1187.unr = phi i64 [ %indvars.iv1187.ph, %scalar.ph1454.preheader ], [ %indvars.iv.next1188.prol, %scalar.ph1454.prol ]
  %.58021088.unr = phi i64 [ %.58021088.ph, %scalar.ph1454.preheader ], [ %i.od, %scalar.ph1454.prol ]
  %i.oe = icmp eq i64 %.pre-phi, %.neg1528
  br i1 %i.oe, label %._crit_edge1091, label %scalar.ph1454

scalar.ph1454:                                    ; preds = %scalar.ph1454.prol.loopexit, %scalar.ph1454
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188.1, %scalar.ph1454 ], [ %indvars.iv1187.unr, %scalar.ph1454.prol.loopexit ]
  %.58021088 = phi i64 [ %i.ow, %scalar.ph1454 ], [ %.58021088.unr, %scalar.ph1454.prol.loopexit ] ; 5 uses
  %i.of = sub nsw i64 %.58021088, %.pre-phi       ; 2 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !9
  %i.oi = add nsw i64 %i.mx, %i.oh
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.na, i64 %.58021088
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !9
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.of
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !9
  %i.om = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %.58021088
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !9
  %i.on = add nsw i64 %.58021088, 1               ; 3 uses
  %i.oo = sub nsw i64 %i.on, %.pre-phi            ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.oo
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !9
  %i.or = add nsw i64 %i.mx, %i.oq
  %i.os = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.on
  store i64 %i.or, ptr %i.os, align 8, !tbaa !9
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.oo
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !9
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.on
  store i64 %i.ou, ptr %i.ov, align 8, !tbaa !9
  %i.ow = add nsw i64 %.58021088, 2               ; 2 uses
  %indvars.iv.next1188.1 = add nuw nsw i64 %indvars.iv1187, 2 ; 2 uses
  %exitcond1190.not.1 = icmp eq i64 %indvars.iv.next1188.1, %.pre-phi
  br i1 %exitcond1190.not.1, label %._crit_edge1091, label %scalar.ph1454, !llvm.loop !38

._crit_edge1091:                                  ; preds = %scalar.ph1454.prol.loopexit, %scalar.ph1454, %middle.block1473, %.preheader920
  %.5802.lcssa = phi i64 [ %.48011094, %.preheader920 ], [ %i.nh, %middle.block1473 ], [ %.lcssa1507.unr, %scalar.ph1454.prol.loopexit ], [ %i.ow, %scalar.ph1454 ] ; 2 uses
  %i.ox = add nuw nsw i64 %.38161093, 1           ; 2 uses
  %exitcond1191.not = icmp eq i64 %i.ox, %i.gs
  br i1 %exitcond1191.not, label %._crit_edge1095, label %.preheader920, !llvm.loop !39

._crit_edge1095:                                  ; preds = %._crit_edge1091, %._crit_edge1085
  %.4801.lcssa = phi i64 [ %.2799.lcssa, %._crit_edge1085 ], [ %.5802.lcssa, %._crit_edge1091 ]
  store i64 %.4801.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.u:                                             ; preds = %bb.a, %bb.a
  %i.oy = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.oz = sext i32 %i.oy to i64                   ; 2 uses
  %i.pa = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.pb = call i32 @PMPI_Type_get_envelope(ptr noundef %i.pa, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.pc = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.pc, ptr noundef nonnull %i.c) #7
  %i.pd = load i64, ptr %3, align 8, !tbaa !9     ; 13 uses
  %i.pe = load i32, ptr %i.b, align 4, !tbaa !10
  %i.pf = icmp eq i32 %i.pe, 0
  %i.pg = load i32, ptr %i.c, align 4
  %i.ph = icmp ne i32 %i.pg, 0
  %or.cond7 = select i1 %i.pf, i1 true, i1 %i.ph
  br i1 %or.cond7, label %.thread1328, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.pi = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.pi, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %.pre1212 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.pj = icmp eq i64 %i.pd, %.pre1212
  br i1 %i.pj, label %.thread1328, label %bb.ac

.thread1328:                                      ; preds = %bb.u, %bb.v
  %i.pk = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !10
  %i.pm = sext i32 %i.pl to i64
  %i.pn = shl i64 %i.pd, 32
  %i.po = ashr exact i64 %i.pn, 32
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !16 ; 2 uses
  %.not.i880 = icmp sgt i64 %i.pq, %i.po
  br i1 %.not.i880, label %.flatlist_node_grow.exit882_crit_edge, label %bb.w

.flatlist_node_grow.exit882_crit_edge:            ; preds = %.thread1328
  %.phi.trans.insert1215 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1216 = load ptr, ptr %.phi.trans.insert1215, align 8, !tbaa !19
  br label %flatlist_node_grow.exit882

bb.w:                                             ; preds = %.thread1328
  %i.pr = sitofp i64 %i.pq to double
  %i.ps = call double @llvm.fmuladd.f64(double %i.pr, double 1.250000e+00, double 4.000000e+00)
  %i.pt = fptosi double %i.ps to i32              ; 2 uses
  %i.pu = shl nsw i32 %i.pt, 1
  %i.pv = sext i32 %i.pu to i64
  %i.pw = call ptr @ADIOI_Calloc_fn(i64 noundef %i.pv, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.px = sext i32 %i.pt to i64                   ; 2 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.px ; 3 uses
  %i.pz = load i64, ptr %i.pp, align 8, !tbaa !16 ; 2 uses
  %.not20.i881 = icmp eq i64 %i.pz, 0
  br i1 %.not20.i881, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !18
  %i.qc = shl i64 %i.pz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.pw, ptr align 8 %i.qb, i64 %i.qc, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !19
  %i.qf = load i64, ptr %i.pp, align 8, !tbaa !16
  %i.qg = shl i64 %i.qf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.py, ptr align 8 %i.qe, i64 %i.qg, i1 false)
  %i.qh = load ptr, ptr %i.qa, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.qh, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.pw, ptr %i.qi, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.py, ptr %i.qj, align 8, !tbaa !19
  store i64 %i.px, ptr %i.pp, align 8, !tbaa !16
  br label %flatlist_node_grow.exit882

flatlist_node_grow.exit882:                       ; preds = %.flatlist_node_grow.exit882_crit_edge, %bb.y
  %i.qk = phi ptr [ %.pre1216, %.flatlist_node_grow.exit882_crit_edge ], [ %i.py, %bb.y ]
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.qk, i64 %i.pd
  store i64 %2, ptr %i.qm, align 8, !tbaa !9
  %i.qn = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.qo = call i32 @PMPI_Type_size_x(ptr noundef %i.qn, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.qp = load i64, ptr %i.j, align 8, !tbaa !9
  %i.qq = mul nsw i64 %i.qp, %i.pm
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !18 ; 2 uses
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.pd
  store i64 %i.qq, ptr %i.qt, align 8, !tbaa !9
  %i.qu = add nsw i64 %i.pd, %i.oz
  %.48171072 = add nsw i64 %i.pd, 1               ; 2 uses
  %i.qv = icmp sgt i32 %i.oy, 1
  br i1 %i.qv, label %.lr.ph1075, label %._crit_edge1076

.lr.ph1075:                                       ; preds = %flatlist_node_grow.exit882, %flatlist_node_grow.exit885
  %i.qw = phi ptr [ %i.rp, %flatlist_node_grow.exit885 ], [ %i.qs, %flatlist_node_grow.exit882 ]
  %.48171074 = phi i64 [ %.4817, %flatlist_node_grow.exit885 ], [ %.48171072, %flatlist_node_grow.exit882 ] ; 5 uses
  %.4817.in1073 = phi i64 [ %.48171074, %flatlist_node_grow.exit885 ], [ %i.pd, %flatlist_node_grow.exit882 ]
  %i.qx = shl i64 %.48171074, 32
  %i.qy = ashr exact i64 %i.qx, 32
  %i.qz = load i64, ptr %i.pp, align 8, !tbaa !16 ; 2 uses
  %.not.i883 = icmp sgt i64 %i.qz, %i.qy
  br i1 %.not.i883, label %.lr.ph1075.flatlist_node_grow.exit885_crit_edge, label %bb.z

.lr.ph1075.flatlist_node_grow.exit885_crit_edge:  ; preds = %.lr.ph1075
  %.pre1217 = load ptr, ptr %i.ql, align 8, !tbaa !19
  br label %flatlist_node_grow.exit885

bb.z:                                             ; preds = %.lr.ph1075
  %i.ra = sitofp i64 %i.qz to double
  %i.rb = call double @llvm.fmuladd.f64(double %i.ra, double 1.250000e+00, double 4.000000e+00)
  %i.rc = fptosi double %i.rb to i32              ; 2 uses
  %i.rd = shl nsw i32 %i.rc, 1
  %i.re = sext i32 %i.rd to i64
  %i.rf = call ptr @ADIOI_Calloc_fn(i64 noundef %i.re, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.rg = sext i32 %i.rc to i64                   ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.rg ; 3 uses
  %i.ri = load i64, ptr %i.pp, align 8, !tbaa !16 ; 2 uses
  %.not20.i884 = icmp eq i64 %i.ri, 0
  br i1 %.not20.i884, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.rj = load ptr, ptr %i.qr, align 8, !tbaa !18
  %i.rk = shl i64 %i.ri, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rf, ptr align 8 %i.rj, i64 %i.rk, i1 false)
  %i.rl = load ptr, ptr %i.ql, align 8, !tbaa !19
  %i.rm = load i64, ptr %i.pp, align 8, !tbaa !16
  %i.rn = shl i64 %i.rm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rh, ptr align 8 %i.rl, i64 %i.rn, i1 false)
  %i.ro = load ptr, ptr %i.qr, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.ro, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr %i.rf, ptr %i.qr, align 8, !tbaa !18
  store ptr %i.rh, ptr %i.ql, align 8, !tbaa !19
  store i64 %i.rg, ptr %i.pp, align 8, !tbaa !16
  br label %flatlist_node_grow.exit885

flatlist_node_grow.exit885:                       ; preds = %.lr.ph1075.flatlist_node_grow.exit885_crit_edge, %bb.ab
  %i.rp = phi ptr [ %i.qw, %.lr.ph1075.flatlist_node_grow.exit885_crit_edge ], [ %i.rf, %bb.ab ] ; 3 uses
  %i.rq = phi ptr [ %.pre1217, %.lr.ph1075.flatlist_node_grow.exit885_crit_edge ], [ %i.rh, %bb.ab ] ; 2 uses
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %.4817.in1073
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !9
  %i.rt = load i64, ptr %i.y, align 8, !tbaa !73
  %i.ru = add nsw i64 %i.rt, %i.rs
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %.48171074
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !9
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.pd
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !9
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.48171074
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !9
  %.4817 = add nsw i64 %.48171074, 1              ; 3 uses
  %i.rz = icmp slt i64 %.4817, %i.qu
  br i1 %i.rz, label %.lr.ph1075, label %._crit_edge1076, !llvm.loop !40

._crit_edge1076:                                  ; preds = %flatlist_node_grow.exit885, %flatlist_node_grow.exit882
  %.4817.lcssa = phi i64 [ %.48171072, %flatlist_node_grow.exit882 ], [ %.4817, %flatlist_node_grow.exit885 ]
  store i64 %.4817.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.ac:                                            ; preds = %bb.v
  %i.sa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !10 ; 2 uses
  %i.sc = sub i64 %.pre1212, %i.pd                ; 11 uses
  %i.sd = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.se = call i32 @PMPI_Type_get_extent(ptr noundef %i.sd, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.sf = icmp sgt i32 %i.sb, 1
  br i1 %i.sf, label %.preheader923.lr.ph, label %._crit_edge1059

.preheader923.lr.ph:                              ; preds = %bb.ac
  %i.sg = icmp sgt i64 %i.sc, 0
  %i.sh = load i64, ptr %i.l, align 8             ; 4 uses
  br i1 %i.sg, label %.preheader923.lr.ph.split.us, label %._crit_edge1059

.preheader923.lr.ph.split.us:                     ; preds = %.preheader923.lr.ph
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !19 ; 9 uses
  %i.sl = ptrtoaddr ptr %i.sk to i64              ; 3 uses
  %i.sm = load ptr, ptr %i.si, align 8, !tbaa !18 ; 9 uses
  %i.sn = ptrtoaddr ptr %i.sm to i64              ; 3 uses
  %i.so = shl i64 %.pre1212, 3                    ; 2 uses
  %i.sp = add i64 %i.so, %i.sn
  %i.sq = shl i64 %i.pd, 3                        ; 2 uses
  %i.sr = add i64 %i.sq, %i.sl
  %i.ss = add i64 %i.sq, %i.sn
  %i.st = add i64 %i.so, %i.sl
  %i.su = xor i64 %i.pd, -1
  %i.sv = add i64 %.pre1212, %i.su
  %min.iters.check1397 = icmp ult i64 %i.sc, 6
  %i.sw = sub i64 %i.sl, %i.sn
  %diff.check1399 = icmp ugt i64 %i.sw, -32
  %i.sx = sub i64 %i.st, %i.ss
  %diff.check1400 = icmp ugt i64 %i.sx, -32
  %conflict.rdx1401 = or i1 %diff.check1399, %diff.check1400
  %i.sy = sub i64 %i.sr, %i.sp
  %diff.check1402 = icmp ugt i64 %i.sy, -32
  %conflict.rdx1403 = or i1 %conflict.rdx1401, %diff.check1402
  %n.vec1405 = and i64 %i.sc, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1406 = insertelement <2 x i64> poison, i64 %i.sh, i64 0
  %broadcast.splat1407 = shufflevector <2 x i64> %broadcast.splatinsert1406, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1416 = icmp eq i64 %i.sc, %n.vec1405
  %i.sz = sub i64 %.pre1212, %i.pd
  %xtraiter1520 = and i64 %i.sz, 1
  %lcmp.mod1521.not = icmp eq i64 %xtraiter1520, 0
  br label %.preheader923.us

.preheader923.us:                                 ; preds = %._crit_edge1055.us, %.preheader923.lr.ph.split.us
  %.31058.us = phi i32 [ 1, %.preheader923.lr.ph.split.us ], [ %i.us, %._crit_edge1055.us ]
  %.68031057.us = phi i64 [ %.pre1212, %.preheader923.lr.ph.split.us ], [ %.lcssa1374, %._crit_edge1055.us ] ; 3 uses
  %brmerge1543 = select i1 %min.iters.check1397, i1 true, i1 %conflict.rdx1403
  br i1 %brmerge1543, label %scalar.ph1396.preheader, label %vector.ph1404

vector.ph1404:                                    ; preds = %.preheader923.us
  %i.ta = add i64 %.68031057.us, %n.vec1405       ; 2 uses
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %vector.ph1404
  %index1409 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1414, %vector.body1408 ] ; 2 uses
  %i.tb = add i64 %.68031057.us, %index1409       ; 3 uses
  %i.tc = sub nsw i64 %i.tb, %i.sc                ; 2 uses
  %i.td = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %wide.load1410 = load <2 x i64>, ptr %i.td, align 8, !tbaa !9
  %wide.load1411 = load <2 x i64>, ptr %i.te, align 8, !tbaa !9
  %i.tf = add nsw <2 x i64> %broadcast.splat1407, %wide.load1410
  %i.tg = add nsw <2 x i64> %broadcast.splat1407, %wide.load1411
  %i.th = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.tb ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x i64> %i.tf, ptr %i.th, align 8, !tbaa !9
  store <2 x i64> %i.tg, ptr %i.ti, align 8, !tbaa !9
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.tc ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %wide.load1412 = load <2 x i64>, ptr %i.tj, align 8, !tbaa !9
  %wide.load1413 = load <2 x i64>, ptr %i.tk, align 8, !tbaa !9
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.tb ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store <2 x i64> %wide.load1412, ptr %i.tl, align 8, !tbaa !9
  store <2 x i64> %wide.load1413, ptr %i.tm, align 8, !tbaa !9
  %index.next1414 = add nuw i64 %index1409, 4     ; 2 uses
  %i.tn = icmp eq i64 %index.next1414, %n.vec1405
  br i1 %i.tn, label %middle.block1415, label %vector.body1408, !llvm.loop !41

middle.block1415:                                 ; preds = %vector.body1408
  br i1 %cmp.n1416, label %._crit_edge1055.us, label %scalar.ph1396.preheader

scalar.ph1396.preheader:                          ; preds = %.preheader923.us, %middle.block1415
  %.78041053.us.ph = phi i64 [ %i.ta, %middle.block1415 ], [ %.68031057.us, %.preheader923.us ] ; 5 uses
  %.58181052.us.ph = phi i64 [ %n.vec1405, %middle.block1415 ], [ 0, %.preheader923.us ] ; 3 uses
  br i1 %lcmp.mod1521.not, label %scalar.ph1396.prol.loopexit, label %scalar.ph1396.prol

scalar.ph1396.prol:                               ; preds = %scalar.ph1396.preheader
  %i.to = sub nsw i64 %.78041053.us.ph, %i.sc     ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.to
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !9
  %i.tr = add nsw i64 %i.sh, %i.tq
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %.78041053.us.ph
  store i64 %i.tr, ptr %i.ts, align 8, !tbaa !9
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.to
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !9
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %.78041053.us.ph
  store i64 %i.tu, ptr %i.tv, align 8, !tbaa !9
  %i.tw = add nsw i64 %.78041053.us.ph, 1         ; 2 uses
  %i.tx = or disjoint i64 %.58181052.us.ph, 1
  br label %scalar.ph1396.prol.loopexit

scalar.ph1396.prol.loopexit:                      ; preds = %scalar.ph1396.prol, %scalar.ph1396.preheader
  %.lcssa1511.unr = phi i64 [ poison, %scalar.ph1396.preheader ], [ %i.tw, %scalar.ph1396.prol ]
  %.78041053.us.unr = phi i64 [ %.78041053.us.ph, %scalar.ph1396.preheader ], [ %i.tw, %scalar.ph1396.prol ]
  %.58181052.us.unr = phi i64 [ %.58181052.us.ph, %scalar.ph1396.preheader ], [ %i.tx, %scalar.ph1396.prol ]
  %i.ty = icmp eq i64 %i.sv, %.58181052.us.ph
  br i1 %i.ty, label %._crit_edge1055.us, label %scalar.ph1396

scalar.ph1396:                                    ; preds = %scalar.ph1396.prol.loopexit, %scalar.ph1396
  %.78041053.us = phi i64 [ %i.uq, %scalar.ph1396 ], [ %.78041053.us.unr, %scalar.ph1396.prol.loopexit ] ; 5 uses
  %.58181052.us = phi i64 [ %i.ur, %scalar.ph1396 ], [ %.58181052.us.unr, %scalar.ph1396.prol.loopexit ]
  %i.tz = sub nsw i64 %.78041053.us, %i.sc        ; 2 uses
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.tz
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !9
  %i.uc = add nsw i64 %i.sh, %i.ub
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %.78041053.us
  store i64 %i.uc, ptr %i.ud, align 8, !tbaa !9
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.tz
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !9
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %.78041053.us
  store i64 %i.uf, ptr %i.ug, align 8, !tbaa !9
  %i.uh = add nsw i64 %.78041053.us, 1            ; 3 uses
  %i.ui = sub nsw i64 %i.uh, %i.sc                ; 2 uses
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.ui
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !9
  %i.ul = add nsw i64 %i.sh, %i.uk
  %i.um = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.uh
  store i64 %i.ul, ptr %i.um, align 8, !tbaa !9
  %i.un = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.ui
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !9
  %i.up = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.uh
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !9
  %i.uq = add nsw i64 %.78041053.us, 2            ; 2 uses
  %i.ur = add nuw nsw i64 %.58181052.us, 2        ; 2 uses
  %exitcond1178.not.1 = icmp eq i64 %i.ur, %i.sc
  br i1 %exitcond1178.not.1, label %._crit_edge1055.us, label %scalar.ph1396, !llvm.loop !42

._crit_edge1055.us:                               ; preds = %scalar.ph1396.prol.loopexit, %scalar.ph1396, %middle.block1415
  %.lcssa1374 = phi i64 [ %i.ta, %middle.block1415 ], [ %.lcssa1511.unr, %scalar.ph1396.prol.loopexit ], [ %i.uq, %scalar.ph1396 ] ; 3 uses
  %i.us = add nuw nsw i32 %.31058.us, 1           ; 2 uses
  %exitcond1179.not = icmp eq i32 %i.us, %i.sb
  br i1 %exitcond1179.not, label %._crit_edge1059.loopexit, label %.preheader923.us, !llvm.loop !43

._crit_edge1059.loopexit:                         ; preds = %._crit_edge1055.us
  %.pre1226 = sub i64 %.lcssa1374, %i.pd
  br label %._crit_edge1059

._crit_edge1059:                                  ; preds = %.preheader923.lr.ph, %._crit_edge1059.loopexit, %bb.ac
  %.pre-phi1227 = phi i64 [ %i.sc, %bb.ac ], [ %.pre1226, %._crit_edge1059.loopexit ], [ %i.sc, %.preheader923.lr.ph ] ; 3 uses
  %.6803.lcssa = phi i64 [ %.pre1212, %bb.ac ], [ %.lcssa1374, %._crit_edge1059.loopexit ], [ %.pre1212, %.preheader923.lr.ph ] ; 4 uses
  store i64 %.6803.lcssa, ptr %3, align 8, !tbaa !9
  %i.ut = icmp sgt i32 %i.oy, 1
  br i1 %i.ut, label %.preheader922.lr.ph, label %._crit_edge1069

.preheader922.lr.ph:                              ; preds = %._crit_edge1059
  %i.uu = icmp sgt i64 %.pre-phi1227, 0
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br i1 %i.uu, label %.preheader922.us, label %._crit_edge1069

.preheader922.us:                                 ; preds = %.preheader922.lr.ph, %._crit_edge1065.us
  %.88051068.us = phi i64 [ %i.wb, %._crit_edge1065.us ], [ %.6803.lcssa, %.preheader922.lr.ph ]
  %.68191067.us = phi i64 [ %i.wc, %._crit_edge1065.us ], [ 1, %.preheader922.lr.ph ]
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader922.us, %flatlist_node_grow.exit888.us
  %indvars.iv1180 = phi i64 [ 0, %.preheader922.us ], [ %indvars.iv.next1181, %flatlist_node_grow.exit888.us ]
  %.98061062.us = phi i64 [ %.88051068.us, %.preheader922.us ], [ %i.wb, %flatlist_node_grow.exit888.us ] ; 5 uses
  %i.uy = shl i64 %.98061062.us, 32
  %i.uz = ashr exact i64 %i.uy, 32
  %i.va = load i64, ptr %i.uv, align 8, !tbaa !16 ; 2 uses
  %.not.i886.us = icmp sgt i64 %i.va, %i.uz
  br i1 %.not.i886.us, label %.flatlist_node_grow.exit888.us_crit_edge, label %bb.ae

.flatlist_node_grow.exit888.us_crit_edge:         ; preds = %bb.ad
  %.pre1213 = load ptr, ptr %i.ux, align 8, !tbaa !19
  %.pre1214 = load ptr, ptr %i.uw, align 8, !tbaa !18
  br label %flatlist_node_grow.exit888.us

bb.ae:                                            ; preds = %bb.ad
  %i.vb = sitofp i64 %i.va to double
  %i.vc = call double @llvm.fmuladd.f64(double %i.vb, double 1.250000e+00, double 4.000000e+00)
  %i.vd = fptosi double %i.vc to i32              ; 2 uses
  %i.ve = shl nsw i32 %i.vd, 1
  %i.vf = sext i32 %i.ve to i64
  %i.vg = call ptr @ADIOI_Calloc_fn(i64 noundef %i.vf, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.vh = sext i32 %i.vd to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.vg, i64 %i.vh ; 3 uses
  %i.vj = load i64, ptr %i.uv, align 8, !tbaa !16 ; 2 uses
  %.not20.i887.us = icmp eq i64 %i.vj, 0
  br i1 %.not20.i887.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.vk = load ptr, ptr %i.uw, align 8, !tbaa !18
  %i.vl = shl i64 %i.vj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vg, ptr align 8 %i.vk, i64 %i.vl, i1 false)
  %i.vm = load ptr, ptr %i.ux, align 8, !tbaa !19
  %i.vn = load i64, ptr %i.uv, align 8, !tbaa !16
  %i.vo = shl i64 %i.vn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vi, ptr align 8 %i.vm, i64 %i.vo, i1 false)
  %i.vp = load ptr, ptr %i.uw, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.vp, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store ptr %i.vg, ptr %i.uw, align 8, !tbaa !18
  store ptr %i.vi, ptr %i.ux, align 8, !tbaa !19
  store i64 %i.vh, ptr %i.uv, align 8, !tbaa !16
  br label %flatlist_node_grow.exit888.us

flatlist_node_grow.exit888.us:                    ; preds = %.flatlist_node_grow.exit888.us_crit_edge, %bb.ag
  %i.vq = phi ptr [ %.pre1214, %.flatlist_node_grow.exit888.us_crit_edge ], [ %i.vg, %bb.ag ] ; 2 uses
  %i.vr = phi ptr [ %.pre1213, %.flatlist_node_grow.exit888.us_crit_edge ], [ %i.vi, %bb.ag ] ; 2 uses
  %i.vs = sub nsw i64 %.98061062.us, %.pre-phi1227 ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.vr, i64 %i.vs
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !9
  %i.vv = load i64, ptr %i.y, align 8, !tbaa !73
  %i.vw = add nsw i64 %i.vv, %i.vu
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.vr, i64 %.98061062.us
  store i64 %i.vw, ptr %i.vx, align 8, !tbaa !9
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.vs
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !9
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %.98061062.us
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !9
  %i.wb = add nsw i64 %.98061062.us, 1            ; 3 uses
  %indvars.iv.next1181 = add nuw nsw i64 %indvars.iv1180, 1 ; 2 uses
  %exitcond1183.not = icmp eq i64 %indvars.iv.next1181, %.pre-phi1227
  br i1 %exitcond1183.not, label %._crit_edge1065.us, label %bb.ad, !llvm.loop !44

._crit_edge1065.us:                               ; preds = %flatlist_node_grow.exit888.us
end_hunk_0
begin_hunk_1_@ADIOI_Flatten:bb.a
  %i.ana = add nuw nsw i64 %.15828973, 1
  br label %.loopexit933

.preheader932.lr.ph.split.us:                     ; preds = %._crit_edge
  %i.anb = load ptr, ptr %i.ama, align 8, !tbaa !18 ; 2 uses
  br label %.preheader932.us

.preheader932.us:                                 ; preds = %._crit_edge965.us, %.preheader932.lr.ph.split.us
  %.12968.us = phi i32 [ 1, %.preheader932.lr.ph.split.us ], [ %i.anq, %._crit_edge965.us ]
  %.29967.us = phi i64 [ %.28, %.preheader932.lr.ph.split.us ], [ %.31.us, %._crit_edge965.us ] ; 2 uses
  %i.anc = load i64, ptr %i.l, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader932.us, %bb.cu
  %indvars.iv1149 = phi i64 [ 0, %.preheader932.us ], [ %indvars.iv.next1150, %bb.cu ]
  %.14962.us = phi i64 [ %.29967.us, %.preheader932.us ], [ %.15.us, %bb.cu ] ; 4 uses
  %.30961.us = phi i64 [ %.29967.us, %.preheader932.us ], [ %.31.us, %bb.cu ] ; 3 uses
  %i.and = sub nsw i64 %.30961.us, %i.aky         ; 2 uses
  %i.ane = getelementptr inbounds [8 x i8], ptr %i.anb, i64 %i.and ; 2 uses
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !9
  %i.ang = icmp sgt i64 %i.anf, 0
  br i1 %i.ang, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.anh = load ptr, ptr %i.amb, align 8, !tbaa !19 ; 2 uses
  %i.ani = getelementptr inbounds [8 x i8], ptr %i.anh, i64 %i.and
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !9
  %i.ank = add nsw i64 %i.anc, %i.anj
  %i.anl = getelementptr inbounds [8 x i8], ptr %i.anh, i64 %.14962.us
  store i64 %i.ank, ptr %i.anl, align 8, !tbaa !9
  %i.anm = load i64, ptr %i.ane, align 8, !tbaa !9
  %i.ann = getelementptr inbounds [8 x i8], ptr %i.anb, i64 %.14962.us
  store i64 %i.anm, ptr %i.ann, align 8, !tbaa !9
  %i.ano = add nsw i64 %.30961.us, 1
  %i.anp = add nsw i64 %.14962.us, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.31.us = phi i64 [ %i.ano, %bb.ct ], [ %.30961.us, %bb.cs ] ; 3 uses
  %.15.us = phi i64 [ %i.anp, %bb.ct ], [ %.14962.us, %bb.cs ]
  %indvars.iv.next1150 = add nuw nsw i64 %indvars.iv1149, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1150, %i.aky
  br i1 %exitcond1152.not, label %._crit_edge965.us, label %bb.cs, !llvm.loop !63

._crit_edge965.us:                                ; preds = %bb.cu
  %i.anq = add nuw nsw i32 %.12968.us, 1          ; 2 uses
  %exitcond1153.not = icmp eq i32 %i.anq, %i.amy
  br i1 %exitcond1153.not, label %.loopexit933, label %.preheader932.us, !llvm.loop !64

bb.cv:                                            ; preds = %bb.a, %bb.a
  %i.anr = load i32, ptr %i.t, align 4, !tbaa !10 ; 2 uses
  %i.ans = icmp sgt i32 %i.anr, 0
  br i1 %i.ans, label %.lr.ph, label %.loopexit927

.lr.ph:                                           ; preds = %bb.cv
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext nneg i32 %i.anr to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph, %bb.di
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.di ] ; 6 uses
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv ; 7 uses
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !22
  %i.aoa = call i32 @PMPI_Type_get_envelope(ptr noundef %i.anz, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.aob = load ptr, ptr %i.any, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.aob, ptr noundef nonnull %i.c) #7
  %i.aoc = load i64, ptr %3, align 8, !tbaa !9    ; 10 uses
  %i.aod = load i32, ptr %i.b, align 4, !tbaa !10
  %i.aoe = icmp eq i32 %i.aod, 0
  %i.aof = load i32, ptr %i.c, align 4
  %i.aog = icmp ne i32 %i.aof, 0
  %or.cond15 = select i1 %i.aoe, i1 true, i1 %i.aog
  br i1 %or.cond15, label %.thread1339, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aoh = load ptr, ptr %i.any, align 8, !tbaa !22
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !73
  %i.aok = add nsw i64 %i.aoj, %2
  call void @ADIOI_Flatten(ptr noundef %i.aoh, ptr noundef %1, i64 noundef %i.aok, ptr noundef nonnull %3)
  %.pre1198 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.aol = icmp eq i64 %i.aoc, %.pre1198
  br i1 %i.aol, label %.thread1339, label %bb.dh

.thread1339:                                      ; preds = %bb.cw, %bb.cx
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !10 ; 2 uses
  %i.aop = icmp sgt i32 %i.aoo, 0
  br i1 %i.aop, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.thread1339
  %i.aoq = load ptr, ptr %i.any, align 8, !tbaa !22 ; 2 uses
  %i.aor = icmp eq ptr %i.aoq, @ompi_mpi_lb
  %i.aos = icmp eq ptr %i.aoq, @ompi_mpi_ub
  %or.cond873 = or i1 %i.aor, %i.aos
  br i1 %or.cond873, label %bb.cz, label %bb.di

bb.cz:                                            ; preds = %bb.cy, %.thread1339
  %i.aot = sext i32 %i.aoo to i64
  %i.aou = shl i64 %i.aoc, 32
  %i.aov = ashr exact i64 %i.aou, 32
  %i.aow = load i64, ptr %i.anv, align 8, !tbaa !16 ; 2 uses
  %.not.i907 = icmp sgt i64 %i.aow, %i.aov
  br i1 %.not.i907, label %.flatlist_node_grow.exit909_crit_edge, label %bb.da

.flatlist_node_grow.exit909_crit_edge:            ; preds = %bb.cz
  %.pre1199 = load ptr, ptr %i.ant, align 8, !tbaa !19
  br label %flatlist_node_grow.exit909

bb.da:                                            ; preds = %bb.cz
  %i.aox = sitofp i64 %i.aow to double
  %i.aoy = call double @llvm.fmuladd.f64(double %i.aox, double 1.250000e+00, double 4.000000e+00)
  %i.aoz = fptosi double %i.aoy to i32            ; 2 uses
  %i.apa = shl nsw i32 %i.aoz, 1
  %i.apb = sext i32 %i.apa to i64
  %i.apc = call ptr @ADIOI_Calloc_fn(i64 noundef %i.apb, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.apd = sext i32 %i.aoz to i64                 ; 2 uses
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.apd ; 3 uses
  %i.apf = load i64, ptr %i.anv, align 8, !tbaa !16 ; 2 uses
  %.not20.i908 = icmp eq i64 %i.apf, 0
  br i1 %.not20.i908, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.apg = load ptr, ptr %i.anu, align 8, !tbaa !18
  %i.aph = shl i64 %i.apf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.apc, ptr align 8 %i.apg, i64 %i.aph, i1 false)
  %i.api = load ptr, ptr %i.ant, align 8, !tbaa !19
  %i.apj = load i64, ptr %i.anv, align 8, !tbaa !16
  %i.apk = shl i64 %i.apj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ape, ptr align 8 %i.api, i64 %i.apk, i1 false)
  %i.apl = load ptr, ptr %i.anu, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.apl, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store ptr %i.apc, ptr %i.anu, align 8, !tbaa !18
  store ptr %i.ape, ptr %i.ant, align 8, !tbaa !19
  store i64 %i.apd, ptr %i.anv, align 8, !tbaa !16
  br label %flatlist_node_grow.exit909

flatlist_node_grow.exit909:                       ; preds = %.flatlist_node_grow.exit909_crit_edge, %bb.dc
  %i.apm = phi ptr [ %.pre1199, %.flatlist_node_grow.exit909_crit_edge ], [ %i.ape, %bb.dc ]
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !73
  %i.app = add nsw i64 %i.apo, %2
  %i.apq = getelementptr inbounds [8 x i8], ptr %i.apm, i64 %i.aoc
  store i64 %i.app, ptr %i.apq, align 8, !tbaa !9
  %i.apr = load ptr, ptr %i.any, align 8, !tbaa !22
  %i.aps = call i32 @PMPI_Type_size_x(ptr noundef %i.apr, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.apt = load i64, ptr %i.j, align 8, !tbaa !9
  %i.apu = mul nsw i64 %i.apt, %i.aot
  %i.apv = load ptr, ptr %i.anu, align 8, !tbaa !18
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.apv, i64 %i.aoc
  store i64 %i.apu, ptr %i.apw, align 8, !tbaa !9
  %i.apx = load ptr, ptr %i.any, align 8, !tbaa !22 ; 2 uses
  %i.apy = icmp eq ptr %i.apx, @ompi_mpi_lb
  br i1 %i.apy, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %flatlist_node_grow.exit909
  store i64 %i.aoc, ptr %i.anw, align 8, !tbaa !74
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %flatlist_node_grow.exit909
  %i.apz = icmp eq ptr %i.apx, @ompi_mpi_ub
  br i1 %i.apz, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i64 %i.aoc, ptr %i.anx, align 8, !tbaa !75
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.aqa = load i64, ptr %3, align 8, !tbaa !9
  %i.aqb = add nsw i64 %i.aqa, 1
  br label %.sink.split1365

bb.dh:                                            ; preds = %bb.cx
  %i.aqc = sub i64 %.pre1198, %i.aoc              ; 9 uses
  %i.aqd = load ptr, ptr %i.any, align 8, !tbaa !22
  %i.aqe = call i32 @PMPI_Type_get_extent(ptr noundef %i.aqd, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 4
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !10 ; 2 uses
  %i.aqi = icmp sgt i32 %i.aqh, 1
  br i1 %i.aqi, label %.preheader937.lr.ph, label %.sink.split1365

.preheader937.lr.ph:                              ; preds = %bb.dh
  %i.aqj = icmp sgt i64 %i.aqc, 0
  %i.aqk = load i64, ptr %i.l, align 8            ; 4 uses
  br i1 %i.aqj, label %.preheader937.lr.ph.split.us, label %.sink.split1365

.preheader937.lr.ph.split.us:                     ; preds = %.preheader937.lr.ph
  %i.aql = load ptr, ptr %i.ant, align 8, !tbaa !19 ; 9 uses
  %i.aqm = ptrtoaddr ptr %i.aql to i64            ; 3 uses
  %i.aqn = load ptr, ptr %i.anu, align 8, !tbaa !18 ; 9 uses
  %i.aqo = ptrtoaddr ptr %i.aqn to i64            ; 3 uses
  %i.aqp = shl i64 %.pre1198, 3                   ; 2 uses
  %i.aqq = add i64 %i.aqp, %i.aqo
  %i.aqr = shl i64 %i.aoc, 3                      ; 2 uses
  %i.aqs = add i64 %i.aqr, %i.aqm
  %i.aqt = add i64 %i.aqr, %i.aqo
  %i.aqu = add i64 %i.aqp, %i.aqm
  %i.aqv = xor i64 %i.aoc, -1
  %i.aqw = add i64 %.pre1198, %i.aqv
  %min.iters.check = icmp ult i64 %i.aqc, 6
  %i.aqx = sub i64 %i.aqm, %i.aqo
  %diff.check = icmp ugt i64 %i.aqx, -32
  %i.aqy = sub i64 %i.aqu, %i.aqt
  %diff.check1383 = icmp ugt i64 %i.aqy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1383
  %i.aqz = sub i64 %i.aqs, %i.aqq
  %diff.check1384 = icmp ugt i64 %i.aqz, -32
  %conflict.rdx1385 = or i1 %conflict.rdx, %diff.check1384
  %n.vec = and i64 %i.aqc, 9223372036854775804    ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aqk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.aqc, %n.vec
  %i.ara = sub i64 %.pre1198, %i.aoc
  %xtraiter = and i64 %i.ara, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader937.us

.preheader937.us:                                 ; preds = %._crit_edge.us, %.preheader937.lr.ph.split.us
  %.13943.us = phi i32 [ 1, %.preheader937.lr.ph.split.us ], [ %i.ast, %._crit_edge.us ]
  %.32942.us = phi i64 [ %.pre1198, %.preheader937.lr.ph.split.us ], [ %.lcssa1379, %._crit_edge.us ] ; 3 uses
  %brmerge1544 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1385
  br i1 %brmerge1544, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader937.us
  %i.arb = add i64 %.32942.us, %n.vec             ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.arc = add i64 %.32942.us, %index             ; 3 uses
  %i.ard = sub nsw i64 %i.arc, %i.aqc             ; 2 uses
  %i.are = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %i.ard ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  %wide.load = load <2 x i64>, ptr %i.are, align 8, !tbaa !9
  %wide.load1386 = load <2 x i64>, ptr %i.arf, align 8, !tbaa !9
  %i.arg = add nsw <2 x i64> %broadcast.splat, %wide.load
  %i.arh = add nsw <2 x i64> %broadcast.splat, %wide.load1386
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %i.arc ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 16
  store <2 x i64> %i.arg, ptr %i.ari, align 8, !tbaa !9
  store <2 x i64> %i.arh, ptr %i.arj, align 8, !tbaa !9
  %i.ark = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %i.ard ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  %wide.load1387 = load <2 x i64>, ptr %i.ark, align 8, !tbaa !9
  %wide.load1388 = load <2 x i64>, ptr %i.arl, align 8, !tbaa !9
  %i.arm = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %i.arc ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 16
  store <2 x i64> %wide.load1387, ptr %i.arm, align 8, !tbaa !9
  store <2 x i64> %wide.load1388, ptr %i.arn, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aro = icmp eq i64 %index.next, %n.vec
  br i1 %i.aro, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader937.us, %middle.block
  %.33941.us.ph = phi i64 [ %i.arb, %middle.block ], [ %.32942.us, %.preheader937.us ] ; 5 uses
  %.16829940.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader937.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.arp = sub nsw i64 %.33941.us.ph, %i.aqc      ; 2 uses
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %i.arp
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !9
  %i.ars = add nsw i64 %i.aqk, %i.arr
  %i.art = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %.33941.us.ph
  store i64 %i.ars, ptr %i.art, align 8, !tbaa !9
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %i.arp
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !9
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %.33941.us.ph
  store i64 %i.arv, ptr %i.arw, align 8, !tbaa !9
  %i.arx = add nsw i64 %.33941.us.ph, 1           ; 2 uses
  %i.ary = or disjoint i64 %.16829940.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa1519.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.arx, %scalar.ph.prol ]
  %.33941.us.unr = phi i64 [ %.33941.us.ph, %scalar.ph.preheader ], [ %i.arx, %scalar.ph.prol ]
  %.16829940.us.unr = phi i64 [ %.16829940.us.ph, %scalar.ph.preheader ], [ %i.ary, %scalar.ph.prol ]
  %i.arz = icmp eq i64 %i.aqw, %.16829940.us.ph
  br i1 %i.arz, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.33941.us = phi i64 [ %i.asr, %scalar.ph ], [ %.33941.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.16829940.us = phi i64 [ %i.ass, %scalar.ph ], [ %.16829940.us.unr, %scalar.ph.prol.loopexit ]
  %i.asa = sub nsw i64 %.33941.us, %i.aqc         ; 2 uses
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %i.asa
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !9
  %i.asd = add nsw i64 %i.aqk, %i.asc
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %.33941.us
  store i64 %i.asd, ptr %i.ase, align 8, !tbaa !9
  %i.asf = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %i.asa
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !9
  %i.ash = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %.33941.us
  store i64 %i.asg, ptr %i.ash, align 8, !tbaa !9
  %i.asi = add nsw i64 %.33941.us, 1              ; 3 uses
  %i.asj = sub nsw i64 %i.asi, %i.aqc             ; 2 uses
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %i.asj
  %i.asl = load i64, ptr %i.ask, align 8, !tbaa !9
  %i.asm = add nsw i64 %i.aqk, %i.asl
  %i.asn = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %i.asi
  store i64 %i.asm, ptr %i.asn, align 8, !tbaa !9
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %i.asj
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !9
  %i.asq = getelementptr inbounds [8 x i8], ptr %i.aqn, i64 %i.asi
  store i64 %i.asp, ptr %i.asq, align 8, !tbaa !9
  %i.asr = add nsw i64 %.33941.us, 2              ; 2 uses
  %i.ass = add nuw nsw i64 %.16829940.us, 2       ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ass, %i.aqc
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !66

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa1379 = phi i64 [ %i.arb, %middle.block ], [ %.lcssa1519.unr, %scalar.ph.prol.loopexit ], [ %i.asr, %scalar.ph ] ; 2 uses
  %i.ast = add nuw nsw i32 %.13943.us, 1          ; 2 uses
  %exitcond1140.not = icmp eq i32 %i.ast, %i.aqh
  br i1 %exitcond1140.not, label %.sink.split1365, label %.preheader937.us, !llvm.loop !67

.sink.split1365:                                  ; preds = %._crit_edge.us, %bb.dh, %.preheader937.lr.ph, %bb.dg
  %.32.lcssa.sink = phi i64 [ %i.aqb, %bb.dg ], [ %.pre1198, %bb.dh ], [ %.pre1198, %.preheader937.lr.ph ], [ %.lcssa1379, %._crit_edge.us ]
  store i64 %.32.lcssa.sink, ptr %3, align 8, !tbaa !9
  br label %bb.di

bb.di:                                            ; preds = %.sink.split1365, %bb.cy
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1142.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1142.not, label %.loopexit927, label %bb.cw, !llvm.loop !68

bb.dj:                                            ; preds = %bb.a
  %i.asu = load i64, ptr %3, align 8, !tbaa !9    ; 3 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !74
  %i.asx = icmp eq i64 %i.asw, -1
  br i1 %i.asx, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !75
  %i.ata = icmp eq i64 %i.asz, -1
  br i1 %i.ata, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.atb = trunc i64 %i.asu to i32
  call fastcc void @flatlist_node_grow(ptr noundef nonnull %1, i32 noundef %i.atb)
  %i.atc = load i64, ptr %i.y, align 8, !tbaa !73
  %i.atd = add nsw i64 %i.atc, %2
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !19
  %i.atg = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %i.asu
  store i64 %i.atd, ptr %i.atg, align 8, !tbaa !9
  %i.ath = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !18
  %i.atj = getelementptr inbounds [8 x i8], ptr %i.ati, i64 %i.asu
  store i64 0, ptr %i.atj, align 8, !tbaa !9
  %i.atk = load i64, ptr %3, align 8, !tbaa !9    ; 2 uses
  store i64 %i.atk, ptr %i.asv, align 8, !tbaa !74
  %i.atl = add nsw i64 %i.atk, 1
  store i64 %i.atl, ptr %3, align 8, !tbaa !9
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.dj
  %i.atm = load i64, ptr %i.y, align 8, !tbaa !73
  %i.atn = sub nsw i64 %2, %i.atm
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.old18.not = phi i1 [ false, %bb.dl ], [ true, %bb.dm ]
  %i.ato = phi i1 [ true, %bb.dl ], [ false, %bb.dm ]
  %.0 = phi i64 [ %2, %bb.dl ], [ %i.atn, %bb.dm ] ; 3 uses
  %i.atp = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.atq = call i32 @PMPI_Type_get_envelope(ptr noundef %i.atp, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.atr = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.atr, ptr noundef nonnull %i.c) #7
  %i.ats = load i32, ptr %i.b, align 4, !tbaa !10
  %i.att = icmp eq i32 %i.ats, 0
  %i.atu = load i32, ptr %i.c, align 4
  %i.atv = icmp ne i32 %i.atu, 0
  %or.cond17 = select i1 %i.att, i1 true, i1 %i.atv
  br i1 %or.cond17, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.atw = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.atx = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aty = add nsw i64 %i.atx, %.0
  call void @ADIOI_Flatten(ptr noundef %i.atw, ptr noundef nonnull %1, i64 noundef %i.aty, ptr noundef nonnull %3)
  br label %bb.dt

bb.dp:                                            ; preds = %bb.dn
  %i.atz = load i64, ptr %3, align 8, !tbaa !9    ; 3 uses
  %i.aua = shl i64 %i.atz, 32
  %i.aub = ashr exact i64 %i.aua, 32
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !16 ; 2 uses
  %.not.i910 = icmp sgt i64 %i.aud, %i.aub
  br i1 %.not.i910, label %.flatlist_node_grow.exit912_crit_edge, label %bb.dq

.flatlist_node_grow.exit912_crit_edge:            ; preds = %bb.dp
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %flatlist_node_grow.exit912

bb.dq:                                            ; preds = %bb.dp
  %i.aue = sitofp i64 %i.aud to double
  %i.auf = call double @llvm.fmuladd.f64(double %i.aue, double 1.250000e+00, double 4.000000e+00)
  %i.aug = fptosi double %i.auf to i32            ; 2 uses
  %i.auh = shl nsw i32 %i.aug, 1
end_hunk_1
