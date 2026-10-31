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
  %i.en = xor i64 %i.co, -1
  %i.eo = add i64 %.pre1222, %i.en
  %min.iters.check1463 = icmp ult i64 %i.ed, 8
  %n.vec1465 = and i64 %i.ed, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1466 = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %broadcast.splat1467 = shufflevector <2 x i64> %broadcast.splatinsert1466, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1476 = icmp eq i64 %i.ed, %n.vec1465
  %i.ep = sub i64 %.pre1222, %i.co
  %xtraiter1499 = and i64 %i.ep, 1
  %lcmp.mod1500.not = icmp eq i64 %xtraiter1499, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1106
  %.07761109 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.gt, %._crit_edge1106 ]
  %.07971108 = phi i64 [ %.pre1222, %.preheader.lr.ph ], [ %.1798.lcssa, %._crit_edge1106 ] ; 5 uses
  br i1 %i.eh, label %.lr.ph1105, label %._crit_edge1106

.lr.ph1105:                                       ; preds = %.preheader
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !19 ; 9 uses
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 9 uses
  br i1 %min.iters.check1463, label %scalar.ph1462.preheader, label %vector.memcheck1456.a

vector.memcheck1456.a:                            ; preds = %.lr.ph1105
  %i.es = ptrtoaddr ptr %i.er to i64              ; 3 uses
  %i.et = ptrtoaddr ptr %i.eq to i64              ; 3 uses
  %i.eu = add i64 %i.el, %i.es
  %i.ev = add i64 %i.em, %i.et
  %i.ew = sub i64 %i.ev, %i.eu
  %diff.check1457.a = icmp ugt i64 %i.ew, -32
  %i.ex = add i64 %i.em, %i.es
  %i.ey = add i64 %i.el, %i.et
  %i.ez = sub i64 %i.ey, %i.ex
  %diff.check1458.a = icmp ugt i64 %i.ez, -32
  %conflict.rdx1459.a = or i1 %diff.check1457.a, %diff.check1458.a
  %i.fa = sub i64 %i.et, %i.es
  %diff.check1460.a = icmp ugt i64 %i.fa, -32
  %conflict.rdx1461.a = or i1 %conflict.rdx1459.a, %diff.check1460.a
  br i1 %conflict.rdx1461.a, label %scalar.ph1462.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %vector.memcheck1456.a
  %i.fb = add i64 %.07971108, %n.vec1465          ; 2 uses
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1464
  %index1469 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1474, %vector.body1468 ] ; 2 uses
  %i.fc = add i64 %.07971108, %index1469          ; 3 uses
  %i.fd = sub nsw i64 %i.fc, %i.ed                ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load1470.a = load <2 x i64>, ptr %i.fe, align 8, !tbaa !9
  %wide.load1471.a = load <2 x i64>, ptr %i.ff, align 8, !tbaa !9
  %i.fg = add nsw <2 x i64> %broadcast.splat1467, %wide.load1470.a
  %i.fh = add nsw <2 x i64> %broadcast.splat1467, %wide.load1471.a
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fc ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <2 x i64> %i.fg, ptr %i.fi, align 8, !tbaa !9
  store <2 x i64> %i.fh, ptr %i.fj, align 8, !tbaa !9
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fd ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load1472 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !9
  %wide.load1473 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !9
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fc ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x i64> %wide.load1472, ptr %i.fm, align 8, !tbaa !9
  store <2 x i64> %wide.load1473, ptr %i.fn, align 8, !tbaa !9
  %index.next1474 = add nuw i64 %index1469, 4     ; 2 uses
  %i.fo = icmp eq i64 %index.next1474, %n.vec1465
  br i1 %i.fo, label %middle.block1475, label %vector.body1468, !llvm.loop !30

middle.block1475:                                 ; preds = %vector.body1468
  br i1 %cmp.n1476, label %._crit_edge1106, label %scalar.ph1462.preheader

scalar.ph1462.preheader:                          ; preds = %vector.memcheck1456.a, %.lr.ph1105, %middle.block1475
  %.17981104.ph = phi i64 [ %.07971108, %vector.memcheck1456.a ], [ %.07971108, %.lr.ph1105 ], [ %i.fb, %middle.block1475 ] ; 5 uses
  %.08131103.ph = phi i64 [ 0, %vector.memcheck1456.a ], [ 0, %.lr.ph1105 ], [ %n.vec1465, %middle.block1475 ] ; 3 uses
  br i1 %lcmp.mod1500.not, label %scalar.ph1462.prol.loopexit, label %scalar.ph1462.prol

scalar.ph1462.prol:                               ; preds = %scalar.ph1462.preheader
  %i.fp = sub nsw i64 %.17981104.ph, %i.ed        ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !9
  %i.fs = add nsw i64 %i.ej, %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.17981104.ph
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !9
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fp
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !9
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.17981104.ph
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !9
  %i.fx = add nsw i64 %.17981104.ph, 1            ; 2 uses
  %i.fy = or disjoint i64 %.08131103.ph, 1
  br label %scalar.ph1462.prol.loopexit

scalar.ph1462.prol.loopexit:                      ; preds = %scalar.ph1462.prol, %scalar.ph1462.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph1462.preheader ], [ %i.fx, %scalar.ph1462.prol ]
  %.17981104.unr = phi i64 [ %.17981104.ph, %scalar.ph1462.preheader ], [ %i.fx, %scalar.ph1462.prol ]
  %.08131103.unr = phi i64 [ %.08131103.ph, %scalar.ph1462.preheader ], [ %i.fy, %scalar.ph1462.prol ]
  %i.fz = icmp eq i64 %i.eo, %.08131103.ph
  br i1 %i.fz, label %._crit_edge1106, label %scalar.ph1462

scalar.ph1462:                                    ; preds = %scalar.ph1462.prol.loopexit, %scalar.ph1462
  %.17981104 = phi i64 [ %i.gr, %scalar.ph1462 ], [ %.17981104.unr, %scalar.ph1462.prol.loopexit ] ; 5 uses
  %.08131103 = phi i64 [ %i.gs, %scalar.ph1462 ], [ %.08131103.unr, %scalar.ph1462.prol.loopexit ]
  %i.ga = sub nsw i64 %.17981104, %i.ed           ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !9
  %i.gd = add nsw i64 %i.ej, %i.gc
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.17981104
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !9
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ga
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !9
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.17981104
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !9
  %i.gi = add nsw i64 %.17981104, 1               ; 3 uses
  %i.gj = sub nsw i64 %i.gi, %i.ed                ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !9
  %i.gm = add nsw i64 %i.ej, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.gi
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !9
  %i.go = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.gj
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !9
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.gi
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !9
  %i.gr = add nsw i64 %.17981104, 2               ; 2 uses
  %i.gs = add nuw nsw i64 %.08131103, 2           ; 2 uses
  %exitcond1192.not.1 = icmp eq i64 %i.gs, %i.ed
  br i1 %exitcond1192.not.1, label %._crit_edge1106, label %scalar.ph1462, !llvm.loop !31

._crit_edge1106:                                  ; preds = %scalar.ph1462.prol.loopexit, %scalar.ph1462, %middle.block1475, %.preheader
  %.1798.lcssa = phi i64 [ %.07971108, %.preheader ], [ %i.fb, %middle.block1475 ], [ %.lcssa.unr, %scalar.ph1462.prol.loopexit ], [ %i.gr, %scalar.ph1462 ] ; 2 uses
  %i.gt = add nuw nsw i32 %.07761109, 1           ; 2 uses
  %exitcond1193.not = icmp eq i32 %i.gt, %i.cj
  br i1 %exitcond1193.not, label %._crit_edge1110, label %.preheader, !llvm.loop !32

._crit_edge1110:                                  ; preds = %._crit_edge1106, %bb.k
  %.0797.lcssa = phi i64 [ %.pre1222, %bb.k ], [ %.1798.lcssa, %._crit_edge1106 ]
  store i64 %.0797.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.l:                                             ; preds = %bb.a
  %i.gu = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.gx = call i32 @PMPI_Type_get_envelope(ptr noundef %i.gw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.gy = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.gy, ptr noundef nonnull %i.c) #7
  %i.gz = load i64, ptr %3, align 8, !tbaa !9     ; 13 uses
  %i.ha = load i32, ptr %i.b, align 4, !tbaa !10
  %i.hb = icmp eq i32 %i.ha, 0
  %i.hc = load i32, ptr %i.c, align 4
  %i.hd = icmp ne i32 %i.hc, 0
  %or.cond5 = select i1 %i.hb, i1 true, i1 %i.hd
  br i1 %or.cond5, label %.thread1327, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.he = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.he, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %.pre1218 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.hf = icmp eq i64 %i.gz, %.pre1218
  br i1 %i.hf, label %.thread1327, label %bb.t

.thread1327:                                      ; preds = %bb.l, %bb.m
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !10
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !10
  %i.hl = sext i32 %i.hk to i64
  %i.hm = shl i64 %i.gz, 32
  %i.hn = ashr exact i64 %i.hm, 32
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !16 ; 2 uses
  %.not.i874 = icmp sgt i64 %i.hp, %i.hn
  br i1 %.not.i874, label %.flatlist_node_grow.exit876_crit_edge, label %bb.n

.flatlist_node_grow.exit876_crit_edge:            ; preds = %.thread1327
  %.phi.trans.insert1219 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1220 = load ptr, ptr %.phi.trans.insert1219, align 8, !tbaa !19
  br label %flatlist_node_grow.exit876

bb.n:                                             ; preds = %.thread1327
  %i.hq = sitofp i64 %i.hp to double
  %i.hr = call double @llvm.fmuladd.f64(double %i.hq, double 1.250000e+00, double 4.000000e+00)
  %i.hs = fptosi double %i.hr to i32              ; 2 uses
  %i.ht = shl nsw i32 %i.hs, 1
  %i.hu = sext i32 %i.ht to i64
  %i.hv = call ptr @ADIOI_Calloc_fn(i64 noundef %i.hu, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.hw = sext i32 %i.hs to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.hw ; 3 uses
  %i.hy = load i64, ptr %i.ho, align 8, !tbaa !16 ; 2 uses
  %.not20.i875 = icmp eq i64 %i.hy, 0
  br i1 %.not20.i875, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !18
  %i.ib = shl i64 %i.hy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hv, ptr align 8 %i.ia, i64 %i.ib, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !19
  %i.ie = load i64, ptr %i.ho, align 8, !tbaa !16
  %i.if = shl i64 %i.ie, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hx, ptr align 8 %i.id, i64 %i.if, i1 false)
  %i.ig = load ptr, ptr %i.hz, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.ig, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.hv, ptr %i.ih, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.hx, ptr %i.ii, align 8, !tbaa !19
  store i64 %i.hw, ptr %i.ho, align 8, !tbaa !16
  br label %flatlist_node_grow.exit876

flatlist_node_grow.exit876:                       ; preds = %.flatlist_node_grow.exit876_crit_edge, %bb.p
  %i.ij = phi ptr [ %.pre1220, %.flatlist_node_grow.exit876_crit_edge ], [ %i.hx, %bb.p ]
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.gz
  store i64 %2, ptr %i.il, align 8, !tbaa !9
  %i.im = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.in = call i32 @PMPI_Type_size_x(ptr noundef %i.im, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.io = load i64, ptr %i.j, align 8, !tbaa !9
  %i.ip = mul nsw i64 %i.io, %i.hi
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !18 ; 2 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.gz
  store i64 %i.ip, ptr %i.is, align 8, !tbaa !9
  %i.it = add nsw i64 %i.gz, %i.gv
  %.18141097 = add nsw i64 %i.gz, 1               ; 2 uses
  %i.iu = icmp sgt i32 %i.gu, 1
  br i1 %i.iu, label %.lr.ph1100, label %._crit_edge1101

.lr.ph1100:                                       ; preds = %flatlist_node_grow.exit876, %flatlist_node_grow.exit879
  %i.iv = phi ptr [ %i.jo, %flatlist_node_grow.exit879 ], [ %i.ir, %flatlist_node_grow.exit876 ]
  %.18141099 = phi i64 [ %.1814, %flatlist_node_grow.exit879 ], [ %.18141097, %flatlist_node_grow.exit876 ] ; 5 uses
  %.1814.in1098 = phi i64 [ %.18141099, %flatlist_node_grow.exit879 ], [ %i.gz, %flatlist_node_grow.exit876 ]
  %i.iw = shl i64 %.18141099, 32
  %i.ix = ashr exact i64 %i.iw, 32
  %i.iy = load i64, ptr %i.ho, align 8, !tbaa !16 ; 2 uses
  %.not.i877 = icmp sgt i64 %i.iy, %i.ix
  br i1 %.not.i877, label %.lr.ph1100.flatlist_node_grow.exit879_crit_edge, label %bb.q

.lr.ph1100.flatlist_node_grow.exit879_crit_edge:  ; preds = %.lr.ph1100
  %.pre1221 = load ptr, ptr %i.ik, align 8, !tbaa !19
  br label %flatlist_node_grow.exit879

bb.q:                                             ; preds = %.lr.ph1100
  %i.iz = sitofp i64 %i.iy to double
  %i.ja = call double @llvm.fmuladd.f64(double %i.iz, double 1.250000e+00, double 4.000000e+00)
  %i.jb = fptosi double %i.ja to i32              ; 2 uses
  %i.jc = shl nsw i32 %i.jb, 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = call ptr @ADIOI_Calloc_fn(i64 noundef %i.jd, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.jf = sext i32 %i.jb to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jf ; 3 uses
  %i.jh = load i64, ptr %i.ho, align 8, !tbaa !16 ; 2 uses
  %.not20.i878 = icmp eq i64 %i.jh, 0
  br i1 %.not20.i878, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ji = load ptr, ptr %i.iq, align 8, !tbaa !18
  %i.jj = shl i64 %i.jh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.je, ptr align 8 %i.ji, i64 %i.jj, i1 false)
  %i.jk = load ptr, ptr %i.ik, align 8, !tbaa !19
  %i.jl = load i64, ptr %i.ho, align 8, !tbaa !16
  %i.jm = shl i64 %i.jl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jg, ptr align 8 %i.jk, i64 %i.jm, i1 false)
  %i.jn = load ptr, ptr %i.iq, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.jn, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %i.je, ptr %i.iq, align 8, !tbaa !18
  store ptr %i.jg, ptr %i.ik, align 8, !tbaa !19
  store i64 %i.jf, ptr %i.ho, align 8, !tbaa !16
  br label %flatlist_node_grow.exit879

flatlist_node_grow.exit879:                       ; preds = %.lr.ph1100.flatlist_node_grow.exit879_crit_edge, %bb.s
  %i.jo = phi ptr [ %i.iv, %.lr.ph1100.flatlist_node_grow.exit879_crit_edge ], [ %i.je, %bb.s ] ; 3 uses
  %i.jp = phi ptr [ %.pre1221, %.lr.ph1100.flatlist_node_grow.exit879_crit_edge ], [ %i.jg, %bb.s ] ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %.1814.in1098
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !9
  %i.js = load i64, ptr %i.j, align 8, !tbaa !9
  %i.jt = mul nsw i64 %i.js, %i.hl
  %i.ju = add nsw i64 %i.jt, %i.jr
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %.18141099
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !9
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.gz
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !9
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %.18141099
  store i64 %i.jx, ptr %i.jy, align 8, !tbaa !9
  %.1814 = add nsw i64 %.18141099, 1              ; 3 uses
  %i.jz = icmp slt i64 %.1814, %i.it
  br i1 %i.jz, label %.lr.ph1100, label %._crit_edge1101, !llvm.loop !33

._crit_edge1101:                                  ; preds = %flatlist_node_grow.exit879, %flatlist_node_grow.exit876
  %.1814.lcssa = phi i64 [ %.18141097, %flatlist_node_grow.exit876 ], [ %.1814, %flatlist_node_grow.exit879 ]
  store i64 %.1814.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.t:                                             ; preds = %bb.m
  %i.ka = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !10 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !10
  %i.ke = sext i32 %i.kd to i64
  %i.kf = sub i64 %.pre1218, %i.gz                ; 11 uses
  %i.kg = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.kh = call i32 @PMPI_Type_get_extent(ptr noundef %i.kg, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.ki = icmp sgt i32 %i.kb, 1
  br i1 %i.ki, label %.preheader921.lr.ph, label %._crit_edge1085

.preheader921.lr.ph:                              ; preds = %bb.t
  %i.kj = icmp sgt i64 %i.kf, 0
  %i.kk = load i64, ptr %i.l, align 8             ; 4 uses
  br i1 %i.kj, label %.preheader921.lr.ph.split.us, label %._crit_edge1085

.preheader921.lr.ph.split.us:                     ; preds = %.preheader921.lr.ph
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !19 ; 9 uses
  %i.ko = ptrtoaddr ptr %i.kn to i64              ; 3 uses
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !18 ; 9 uses
  %i.kq = ptrtoaddr ptr %i.kp to i64              ; 3 uses
  %i.kr = shl i64 %.pre1218, 3                    ; 2 uses
  %i.ks = add i64 %i.kr, %i.kq
  %i.kt = shl i64 %i.gz, 3                        ; 2 uses
  %i.ku = add i64 %i.kt, %i.ko
  %i.kv = add i64 %i.kt, %i.kq
  %i.kw = add i64 %i.kr, %i.ko
  %i.kx = xor i64 %i.gz, -1
  %i.ky = add i64 %.pre1218, %i.kx
  %min.iters.check1417 = icmp ult i64 %i.kf, 6
  %i.kz = sub i64 %i.ku, %i.ks
  %diff.check1411 = icmp ugt i64 %i.kz, -32
  %i.la = sub i64 %i.kw, %i.kv
  %diff.check1412 = icmp ugt i64 %i.la, -32
  %conflict.rdx1413 = or i1 %diff.check1411, %diff.check1412
  %i.lb = sub i64 %i.ko, %i.kq
  %diff.check1414 = icmp ugt i64 %i.lb, -32
  %conflict.rdx1415 = or i1 %conflict.rdx1413, %diff.check1414
  %n.vec1419 = and i64 %i.kf, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1420 = insertelement <2 x i64> poison, i64 %i.kk, i64 0
  %broadcast.splat1421 = shufflevector <2 x i64> %broadcast.splatinsert1420, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1430 = icmp eq i64 %i.kf, %n.vec1419
  %i.lc = sub i64 %.pre1218, %i.gz
  %xtraiter1495 = and i64 %i.lc, 1
  %lcmp.mod1496.not = icmp eq i64 %xtraiter1495, 0
  br label %.preheader921.us

.preheader921.us:                                 ; preds = %._crit_edge1081.us, %.preheader921.lr.ph.split.us
  %.17771084.us = phi i32 [ 1, %.preheader921.lr.ph.split.us ], [ %i.mv, %._crit_edge1081.us ]
  %.27991083.us = phi i64 [ %.pre1218, %.preheader921.lr.ph.split.us ], [ %.lcssa1371, %._crit_edge1081.us ] ; 3 uses
  %brmerge = select i1 %min.iters.check1417, i1 true, i1 %conflict.rdx1415
  br i1 %brmerge, label %scalar.ph1416.preheader, label %vector.ph1418

vector.ph1418:                                    ; preds = %.preheader921.us
  %i.ld = add i64 %.27991083.us, %n.vec1419       ; 2 uses
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1418
  %index1423 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1428, %vector.body1422 ] ; 2 uses
  %i.le = add i64 %.27991083.us, %index1423       ; 3 uses
  %i.lf = sub nsw i64 %i.le, %i.kf                ; 2 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %wide.load1424 = load <2 x i64>, ptr %i.lg, align 8, !tbaa !9
  %wide.load1425 = load <2 x i64>, ptr %i.lh, align 8, !tbaa !9
  %i.li = add nsw <2 x i64> %broadcast.splat1421, %wide.load1424
  %i.lj = add nsw <2 x i64> %broadcast.splat1421, %wide.load1425
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.le ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store <2 x i64> %i.li, ptr %i.lk, align 8, !tbaa !9
  store <2 x i64> %i.lj, ptr %i.ll, align 8, !tbaa !9
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.lf ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load1426 = load <2 x i64>, ptr %i.lm, align 8, !tbaa !9
  %wide.load1427 = load <2 x i64>, ptr %i.ln, align 8, !tbaa !9
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.le ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <2 x i64> %wide.load1426, ptr %i.lo, align 8, !tbaa !9
  store <2 x i64> %wide.load1427, ptr %i.lp, align 8, !tbaa !9
  %index.next1428 = add nuw i64 %index1423, 4     ; 2 uses
  %i.lq = icmp eq i64 %index.next1428, %n.vec1419
  br i1 %i.lq, label %middle.block1429, label %vector.body1422, !llvm.loop !34

middle.block1429:                                 ; preds = %vector.body1422
  br i1 %cmp.n1430, label %._crit_edge1081.us, label %scalar.ph1416.preheader

scalar.ph1416.preheader:                          ; preds = %.preheader921.us, %middle.block1429
  %.38001079.us.ph = phi i64 [ %i.ld, %middle.block1429 ], [ %.27991083.us, %.preheader921.us ] ; 5 uses
  %.28151078.us.ph = phi i64 [ %n.vec1419, %middle.block1429 ], [ 0, %.preheader921.us ] ; 3 uses
  br i1 %lcmp.mod1496.not, label %scalar.ph1416.prol.loopexit, label %scalar.ph1416.prol

scalar.ph1416.prol:                               ; preds = %scalar.ph1416.preheader
  %i.lr = sub nsw i64 %.38001079.us.ph, %i.kf     ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.lr
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !9
  %i.lu = add nsw i64 %i.kk, %i.lt
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %.38001079.us.ph
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !9
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.lr
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !9
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.38001079.us.ph
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !9
  %i.lz = add nsw i64 %.38001079.us.ph, 1         ; 2 uses
  %i.ma = or disjoint i64 %.28151078.us.ph, 1
  br label %scalar.ph1416.prol.loopexit

scalar.ph1416.prol.loopexit:                      ; preds = %scalar.ph1416.prol, %scalar.ph1416.preheader
  %.lcssa1481.unr = phi i64 [ poison, %scalar.ph1416.preheader ], [ %i.lz, %scalar.ph1416.prol ]
  %.38001079.us.unr = phi i64 [ %.38001079.us.ph, %scalar.ph1416.preheader ], [ %i.lz, %scalar.ph1416.prol ]
  %.28151078.us.unr = phi i64 [ %.28151078.us.ph, %scalar.ph1416.preheader ], [ %i.ma, %scalar.ph1416.prol ]
  %i.mb = icmp eq i64 %i.ky, %.28151078.us.ph
  br i1 %i.mb, label %._crit_edge1081.us, label %scalar.ph1416

scalar.ph1416:                                    ; preds = %scalar.ph1416.prol.loopexit, %scalar.ph1416
  %.38001079.us = phi i64 [ %i.mt, %scalar.ph1416 ], [ %.38001079.us.unr, %scalar.ph1416.prol.loopexit ] ; 5 uses
  %.28151078.us = phi i64 [ %i.mu, %scalar.ph1416 ], [ %.28151078.us.unr, %scalar.ph1416.prol.loopexit ]
  %i.mc = sub nsw i64 %.38001079.us, %i.kf        ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !9
  %i.mf = add nsw i64 %i.kk, %i.me
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %.38001079.us
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !9
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.mc
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !9
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.38001079.us
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !9
  %i.mk = add nsw i64 %.38001079.us, 1            ; 3 uses
  %i.ml = sub nsw i64 %i.mk, %i.kf                ; 2 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !9
  %i.mo = add nsw i64 %i.kk, %i.mn
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.mk
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !9
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.ml
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !9
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.mk
  store i64 %i.mr, ptr %i.ms, align 8, !tbaa !9
  %i.mt = add nsw i64 %.38001079.us, 2            ; 2 uses
  %i.mu = add nuw nsw i64 %.28151078.us, 2        ; 2 uses
  %exitcond1185.not.1 = icmp eq i64 %i.mu, %i.kf
  br i1 %exitcond1185.not.1, label %._crit_edge1081.us, label %scalar.ph1416, !llvm.loop !35

._crit_edge1081.us:                               ; preds = %scalar.ph1416.prol.loopexit, %scalar.ph1416, %middle.block1429
  %.lcssa1371 = phi i64 [ %i.ld, %middle.block1429 ], [ %.lcssa1481.unr, %scalar.ph1416.prol.loopexit ], [ %i.mt, %scalar.ph1416 ] ; 3 uses
  %i.mv = add nuw nsw i32 %.17771084.us, 1        ; 2 uses
  %exitcond1186.not = icmp eq i32 %i.mv, %i.kb
  br i1 %exitcond1186.not, label %._crit_edge1085.loopexit, label %.preheader921.us, !llvm.loop !36

._crit_edge1085.loopexit:                         ; preds = %._crit_edge1081.us
  %.pre1225 = sub i64 %.lcssa1371, %i.gz
  br label %._crit_edge1085

._crit_edge1085:                                  ; preds = %.preheader921.lr.ph, %._crit_edge1085.loopexit, %bb.t
  %.pre-phi = phi i64 [ %i.kf, %bb.t ], [ %.pre1225, %._crit_edge1085.loopexit ], [ %i.kf, %.preheader921.lr.ph ] ; 13 uses
  %.2799.lcssa = phi i64 [ %.pre1218, %bb.t ], [ %.lcssa1371, %._crit_edge1085.loopexit ], [ %.pre1218, %.preheader921.lr.ph ] ; 3 uses
  store i64 %.2799.lcssa, ptr %3, align 8, !tbaa !9
  %i.mw = icmp sgt i32 %i.gu, 1
  br i1 %i.mw, label %.preheader920.lr.ph, label %._crit_edge1095

.preheader920.lr.ph:                              ; preds = %._crit_edge1085
  %i.mx = icmp sgt i64 %.pre-phi, 0
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mz = load i64, ptr %i.l, align 8
  %i.na = mul nsw i64 %i.mz, %i.ke                ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nc = shl i64 %.pre-phi, 3
  %min.iters.check1440 = icmp ult i64 %.pre-phi, 8
  %4 = shl i64 %.pre-phi, 3
  %n.vec1442 = and i64 %.pre-phi, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1443 = insertelement <2 x i64> poison, i64 %i.na, i64 0
  %broadcast.splat1444 = shufflevector <2 x i64> %broadcast.splatinsert1443, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1453 = icmp eq i64 %.pre-phi, %n.vec1442
  %xtraiter1497 = and i64 %.pre-phi, 1
  %lcmp.mod1498.not = icmp eq i64 %xtraiter1497, 0
  br label %.preheader920

.preheader920:                                    ; preds = %.preheader920.lr.ph, %._crit_edge1091
  %.48011094 = phi i64 [ %.2799.lcssa, %.preheader920.lr.ph ], [ %.5802.lcssa, %._crit_edge1091 ] ; 5 uses
  %.38161093 = phi i64 [ 1, %.preheader920.lr.ph ], [ %i.pa, %._crit_edge1091 ]
  br i1 %i.mx, label %.lr.ph1090, label %._crit_edge1091

.lr.ph1090:                                       ; preds = %.preheader920
  %i.nd = load ptr, ptr %i.my, align 8, !tbaa !19 ; 9 uses
  %i.ne = load ptr, ptr %i.nb, align 8, !tbaa !18 ; 9 uses
  br i1 %min.iters.check1440, label %scalar.ph1439.preheader, label %vector.memcheck1433

vector.memcheck1433:                              ; preds = %.lr.ph1090
  %i.nf = ptrtoaddr ptr %i.ne to i64              ; 3 uses
  %i.ng = ptrtoaddr ptr %i.nd to i64              ; 3 uses
  %i.nh = add i64 %i.nc, %i.nf
  %i.ni = sub i64 %i.ng, %i.nh
  %diff.check1434 = icmp ugt i64 %i.ni, -32
  %5 = add i64 %4, %i.ng
  %i.nj = sub i64 %5, %i.nf
  %diff.check1435 = icmp ugt i64 %i.nj, -32
  %conflict.rdx1436 = or i1 %diff.check1434, %diff.check1435
  %6 = sub i64 %i.ng, %i.nf
  %diff.check1437 = icmp ugt i64 %6, -32
  %conflict.rdx1438 = or i1 %conflict.rdx1436, %diff.check1437
  br i1 %conflict.rdx1438, label %scalar.ph1439.preheader, label %vector.ph1441

vector.ph1441:                                    ; preds = %vector.memcheck1433
  %i.nk = add i64 %.48011094, %n.vec1442          ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1441
  %index1446 = phi i64 [ 0, %vector.ph1441 ], [ %index.next1451, %vector.body1445 ] ; 2 uses
  %i.nl = add i64 %.48011094, %index1446          ; 3 uses
  %i.nm = sub nsw i64 %i.nl, %.pre-phi            ; 2 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load1447 = load <2 x i64>, ptr %i.nn, align 8, !tbaa !9
  %wide.load1448 = load <2 x i64>, ptr %i.no, align 8, !tbaa !9
  %i.np = add nsw <2 x i64> %broadcast.splat1444, %wide.load1447
  %i.nq = add nsw <2 x i64> %broadcast.splat1444, %wide.load1448
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.nl ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store <2 x i64> %i.np, ptr %i.nr, align 8, !tbaa !9
  store <2 x i64> %i.nq, ptr %i.ns, align 8, !tbaa !9
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.nm ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %wide.load1449 = load <2 x i64>, ptr %i.nt, align 8, !tbaa !9
  %wide.load1450 = load <2 x i64>, ptr %i.nu, align 8, !tbaa !9
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.nl ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store <2 x i64> %wide.load1449, ptr %i.nv, align 8, !tbaa !9
  store <2 x i64> %wide.load1450, ptr %i.nw, align 8, !tbaa !9
  %index.next1451 = add nuw i64 %index1446, 4     ; 2 uses
  %i.nx = icmp eq i64 %index.next1451, %n.vec1442
  br i1 %i.nx, label %middle.block1452, label %vector.body1445, !llvm.loop !37

middle.block1452:                                 ; preds = %vector.body1445
  br i1 %cmp.n1453, label %._crit_edge1091, label %scalar.ph1439.preheader

scalar.ph1439.preheader:                          ; preds = %vector.memcheck1433, %.lr.ph1090, %middle.block1452
  %indvars.iv1187.ph = phi i64 [ 0, %vector.memcheck1433 ], [ 0, %.lr.ph1090 ], [ %n.vec1442, %middle.block1452 ] ; 3 uses
  %.58021088.ph = phi i64 [ %.48011094, %vector.memcheck1433 ], [ %.48011094, %.lr.ph1090 ], [ %i.nk, %middle.block1452 ] ; 5 uses
  %.neg1501 = or disjoint i64 %indvars.iv1187.ph, 1
  br i1 %lcmp.mod1498.not, label %scalar.ph1439.prol.loopexit, label %scalar.ph1439.prol

scalar.ph1439.prol:                               ; preds = %scalar.ph1439.preheader
  %i.ny = sub nsw i64 %.58021088.ph, %.pre-phi    ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.ny
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !9
  %i.ob = add nsw i64 %i.na, %i.oa
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %.58021088.ph
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !9
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.ny
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !9
  %i.of = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %.58021088.ph
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !9
  %i.og = add nsw i64 %.58021088.ph, 1            ; 2 uses
  %indvars.iv.next1188.prol = or disjoint i64 %indvars.iv1187.ph, 1
  br label %scalar.ph1439.prol.loopexit

scalar.ph1439.prol.loopexit:                      ; preds = %scalar.ph1439.prol, %scalar.ph1439.preheader
  %.lcssa1480.unr = phi i64 [ poison, %scalar.ph1439.preheader ], [ %i.og, %scalar.ph1439.prol ]
  %indvars.iv1187.unr = phi i64 [ %indvars.iv1187.ph, %scalar.ph1439.preheader ], [ %indvars.iv.next1188.prol, %scalar.ph1439.prol ]
  %.58021088.unr = phi i64 [ %.58021088.ph, %scalar.ph1439.preheader ], [ %i.og, %scalar.ph1439.prol ]
  %i.oh = icmp eq i64 %.pre-phi, %.neg1501
  br i1 %i.oh, label %._crit_edge1091, label %scalar.ph1439

scalar.ph1439:                                    ; preds = %scalar.ph1439.prol.loopexit, %scalar.ph1439
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188.1, %scalar.ph1439 ], [ %indvars.iv1187.unr, %scalar.ph1439.prol.loopexit ]
  %.58021088 = phi i64 [ %i.oz, %scalar.ph1439 ], [ %.58021088.unr, %scalar.ph1439.prol.loopexit ] ; 5 uses
  %i.oi = sub nsw i64 %.58021088, %.pre-phi       ; 2 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !9
  %i.ol = add nsw i64 %i.na, %i.ok
  %i.om = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %.58021088
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !9
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.oi
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !9
  %i.op = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %.58021088
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !9
  %i.oq = add nsw i64 %.58021088, 1               ; 3 uses
  %i.or = sub nsw i64 %i.oq, %.pre-phi            ; 2 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.or
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !9
  %i.ou = add nsw i64 %i.na, %i.ot
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.oq
  store i64 %i.ou, ptr %i.ov, align 8, !tbaa !9
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.or
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !9
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.oq
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !9
  %i.oz = add nsw i64 %.58021088, 2               ; 2 uses
  %indvars.iv.next1188.1 = add nuw nsw i64 %indvars.iv1187, 2 ; 2 uses
  %exitcond1190.not.1 = icmp eq i64 %indvars.iv.next1188.1, %.pre-phi
  br i1 %exitcond1190.not.1, label %._crit_edge1091, label %scalar.ph1439, !llvm.loop !38

._crit_edge1091:                                  ; preds = %scalar.ph1439.prol.loopexit, %scalar.ph1439, %middle.block1452, %.preheader920
  %.5802.lcssa = phi i64 [ %.48011094, %.preheader920 ], [ %i.nk, %middle.block1452 ], [ %.lcssa1480.unr, %scalar.ph1439.prol.loopexit ], [ %i.oz, %scalar.ph1439 ] ; 2 uses
  %i.pa = add nuw nsw i64 %.38161093, 1           ; 2 uses
  %exitcond1191.not = icmp eq i64 %i.pa, %i.gv
  br i1 %exitcond1191.not, label %._crit_edge1095, label %.preheader920, !llvm.loop !39

._crit_edge1095:                                  ; preds = %._crit_edge1091, %._crit_edge1085
  %.4801.lcssa = phi i64 [ %.2799.lcssa, %._crit_edge1085 ], [ %.5802.lcssa, %._crit_edge1091 ]
  store i64 %.4801.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.u:                                             ; preds = %bb.a, %bb.a
  %i.pb = load i32, ptr %i.t, align 4, !tbaa !10  ; 3 uses
  %i.pc = sext i32 %i.pb to i64                   ; 2 uses
  %i.pd = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.pe = call i32 @PMPI_Type_get_envelope(ptr noundef %i.pd, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.pf = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.pf, ptr noundef nonnull %i.c) #7
  %i.pg = load i64, ptr %3, align 8, !tbaa !9     ; 13 uses
  %i.ph = load i32, ptr %i.b, align 4, !tbaa !10
  %i.pi = icmp eq i32 %i.ph, 0
  %i.pj = load i32, ptr %i.c, align 4
  %i.pk = icmp ne i32 %i.pj, 0
  %or.cond7 = select i1 %i.pi, i1 true, i1 %i.pk
  br i1 %or.cond7, label %.thread1328, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.pl = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Flatten(ptr noundef %i.pl, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %.pre1212 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.pm = icmp eq i64 %i.pg, %.pre1212
  br i1 %i.pm, label %.thread1328, label %bb.ac

.thread1328:                                      ; preds = %bb.u, %bb.v
  %i.pn = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !10
  %i.pp = sext i32 %i.po to i64
  %i.pq = shl i64 %i.pg, 32
  %i.pr = ashr exact i64 %i.pq, 32
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !16 ; 2 uses
  %.not.i880 = icmp sgt i64 %i.pt, %i.pr
  br i1 %.not.i880, label %.flatlist_node_grow.exit882_crit_edge, label %bb.w

.flatlist_node_grow.exit882_crit_edge:            ; preds = %.thread1328
  %.phi.trans.insert1215 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1216 = load ptr, ptr %.phi.trans.insert1215, align 8, !tbaa !19
  br label %flatlist_node_grow.exit882

bb.w:                                             ; preds = %.thread1328
  %i.pu = sitofp i64 %i.pt to double
  %i.pv = call double @llvm.fmuladd.f64(double %i.pu, double 1.250000e+00, double 4.000000e+00)
  %i.pw = fptosi double %i.pv to i32              ; 2 uses
  %i.px = shl nsw i32 %i.pw, 1
  %i.py = sext i32 %i.px to i64
  %i.pz = call ptr @ADIOI_Calloc_fn(i64 noundef %i.py, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.qa = sext i32 %i.pw to i64                   ; 2 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.pz, i64 %i.qa ; 3 uses
  %i.qc = load i64, ptr %i.ps, align 8, !tbaa !16 ; 2 uses
  %.not20.i881 = icmp eq i64 %i.qc, 0
  br i1 %.not20.i881, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !18
  %i.qf = shl i64 %i.qc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.pz, ptr align 8 %i.qe, i64 %i.qf, i1 false)
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !19
  %i.qi = load i64, ptr %i.ps, align 8, !tbaa !16
  %i.qj = shl i64 %i.qi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qb, ptr align 8 %i.qh, i64 %i.qj, i1 false)
  %i.qk = load ptr, ptr %i.qd, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.qk, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.pz, ptr %i.ql, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.qb, ptr %i.qm, align 8, !tbaa !19
  store i64 %i.qa, ptr %i.ps, align 8, !tbaa !16
  br label %flatlist_node_grow.exit882

flatlist_node_grow.exit882:                       ; preds = %.flatlist_node_grow.exit882_crit_edge, %bb.y
  %i.qn = phi ptr [ %.pre1216, %.flatlist_node_grow.exit882_crit_edge ], [ %i.qb, %bb.y ]
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.pg
  store i64 %2, ptr %i.qp, align 8, !tbaa !9
  %i.qq = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.qr = call i32 @PMPI_Type_size_x(ptr noundef %i.qq, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.qs = load i64, ptr %i.j, align 8, !tbaa !9
  %i.qt = mul nsw i64 %i.qs, %i.pp
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !18 ; 2 uses
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.pg
  store i64 %i.qt, ptr %i.qw, align 8, !tbaa !9
  %i.qx = add nsw i64 %i.pg, %i.pc
  %.48171072 = add nsw i64 %i.pg, 1               ; 2 uses
  %i.qy = icmp sgt i32 %i.pb, 1
  br i1 %i.qy, label %.lr.ph1075, label %._crit_edge1076

.lr.ph1075:                                       ; preds = %flatlist_node_grow.exit882, %flatlist_node_grow.exit885
  %i.qz = phi ptr [ %i.rs, %flatlist_node_grow.exit885 ], [ %i.qv, %flatlist_node_grow.exit882 ]
  %.48171074 = phi i64 [ %.4817, %flatlist_node_grow.exit885 ], [ %.48171072, %flatlist_node_grow.exit882 ] ; 5 uses
  %.4817.in1073 = phi i64 [ %.48171074, %flatlist_node_grow.exit885 ], [ %i.pg, %flatlist_node_grow.exit882 ]
  %i.ra = shl i64 %.48171074, 32
  %i.rb = ashr exact i64 %i.ra, 32
  %i.rc = load i64, ptr %i.ps, align 8, !tbaa !16 ; 2 uses
  %.not.i883 = icmp sgt i64 %i.rc, %i.rb
  br i1 %.not.i883, label %.lr.ph1075.flatlist_node_grow.exit885_crit_edge, label %bb.z

.lr.ph1075.flatlist_node_grow.exit885_crit_edge:  ; preds = %.lr.ph1075
  %.pre1217 = load ptr, ptr %i.qo, align 8, !tbaa !19
  br label %flatlist_node_grow.exit885

bb.z:                                             ; preds = %.lr.ph1075
  %i.rd = sitofp i64 %i.rc to double
  %i.re = call double @llvm.fmuladd.f64(double %i.rd, double 1.250000e+00, double 4.000000e+00)
  %i.rf = fptosi double %i.re to i32              ; 2 uses
  %i.rg = shl nsw i32 %i.rf, 1
  %i.rh = sext i32 %i.rg to i64
  %i.ri = call ptr @ADIOI_Calloc_fn(i64 noundef %i.rh, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.rj = sext i32 %i.rf to i64                   ; 2 uses
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.rj ; 3 uses
  %i.rl = load i64, ptr %i.ps, align 8, !tbaa !16 ; 2 uses
  %.not20.i884 = icmp eq i64 %i.rl, 0
  br i1 %.not20.i884, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.rm = load ptr, ptr %i.qu, align 8, !tbaa !18
  %i.rn = shl i64 %i.rl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ri, ptr align 8 %i.rm, i64 %i.rn, i1 false)
  %i.ro = load ptr, ptr %i.qo, align 8, !tbaa !19
  %i.rp = load i64, ptr %i.ps, align 8, !tbaa !16
  %i.rq = shl i64 %i.rp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rk, ptr align 8 %i.ro, i64 %i.rq, i1 false)
  %i.rr = load ptr, ptr %i.qu, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.rr, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr %i.ri, ptr %i.qu, align 8, !tbaa !18
  store ptr %i.rk, ptr %i.qo, align 8, !tbaa !19
  store i64 %i.rj, ptr %i.ps, align 8, !tbaa !16
  br label %flatlist_node_grow.exit885

flatlist_node_grow.exit885:                       ; preds = %.lr.ph1075.flatlist_node_grow.exit885_crit_edge, %bb.ab
  %i.rs = phi ptr [ %i.qz, %.lr.ph1075.flatlist_node_grow.exit885_crit_edge ], [ %i.ri, %bb.ab ] ; 3 uses
  %i.rt = phi ptr [ %.pre1217, %.lr.ph1075.flatlist_node_grow.exit885_crit_edge ], [ %i.rk, %bb.ab ] ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.rt, i64 %.4817.in1073
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !9
  %i.rw = load i64, ptr %i.y, align 8, !tbaa !73
  %i.rx = add nsw i64 %i.rw, %i.rv
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.rt, i64 %.48171074
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !9
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.rs, i64 %i.pg
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !9
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.rs, i64 %.48171074
  store i64 %i.sa, ptr %i.sb, align 8, !tbaa !9
  %.4817 = add nsw i64 %.48171074, 1              ; 3 uses
  %i.sc = icmp slt i64 %.4817, %i.qx
  br i1 %i.sc, label %.lr.ph1075, label %._crit_edge1076, !llvm.loop !40

._crit_edge1076:                                  ; preds = %flatlist_node_grow.exit885, %flatlist_node_grow.exit882
  %.4817.lcssa = phi i64 [ %.48171072, %flatlist_node_grow.exit882 ], [ %.4817, %flatlist_node_grow.exit885 ]
  store i64 %.4817.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit927

bb.ac:                                            ; preds = %bb.v
  %i.sd = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !10 ; 2 uses
  %i.sf = sub i64 %.pre1212, %i.pg                ; 11 uses
  %i.sg = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.sh = call i32 @PMPI_Type_get_extent(ptr noundef %i.sg, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.si = icmp sgt i32 %i.se, 1
  br i1 %i.si, label %.preheader923.lr.ph, label %._crit_edge1059

.preheader923.lr.ph:                              ; preds = %bb.ac
  %i.sj = icmp sgt i64 %i.sf, 0
  %i.sk = load i64, ptr %i.l, align 8             ; 4 uses
  br i1 %i.sj, label %.preheader923.lr.ph.split.us, label %._crit_edge1059

.preheader923.lr.ph.split.us:                     ; preds = %.preheader923.lr.ph
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !19 ; 9 uses
  %i.so = ptrtoaddr ptr %i.sn to i64              ; 3 uses
  %i.sp = load ptr, ptr %i.sl, align 8, !tbaa !18 ; 9 uses
  %i.sq = ptrtoaddr ptr %i.sp to i64              ; 3 uses
  %i.sr = shl i64 %.pre1212, 3                    ; 2 uses
  %i.ss = add i64 %i.sr, %i.sq
  %i.st = shl i64 %i.pg, 3                        ; 2 uses
  %i.su = add i64 %i.st, %i.so
  %i.sv = add i64 %i.st, %i.sq
  %i.sw = add i64 %i.sr, %i.so
  %i.sx = xor i64 %i.pg, -1
  %i.sy = add i64 %.pre1212, %i.sx
  %min.iters.check1394 = icmp ult i64 %i.sf, 6
  %i.sz = sub i64 %i.su, %i.ss
  %diff.check1388 = icmp ugt i64 %i.sz, -32
  %i.ta = sub i64 %i.sw, %i.sv
  %diff.check1389 = icmp ugt i64 %i.ta, -32
  %conflict.rdx1390 = or i1 %diff.check1388, %diff.check1389
  %i.tb = sub i64 %i.so, %i.sq
  %diff.check1391 = icmp ugt i64 %i.tb, -32
  %conflict.rdx1392 = or i1 %conflict.rdx1390, %diff.check1391
  %n.vec1396 = and i64 %i.sf, 9223372036854775804 ; 4 uses
  %broadcast.splatinsert1397 = insertelement <2 x i64> poison, i64 %i.sk, i64 0
  %broadcast.splat1398 = shufflevector <2 x i64> %broadcast.splatinsert1397, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1407 = icmp eq i64 %i.sf, %n.vec1396
  %i.tc = sub i64 %.pre1212, %i.pg
  %xtraiter1493 = and i64 %i.tc, 1
  %lcmp.mod1494.not = icmp eq i64 %xtraiter1493, 0
  br label %.preheader923.us

.preheader923.us:                                 ; preds = %._crit_edge1055.us, %.preheader923.lr.ph.split.us
  %.31058.us = phi i32 [ 1, %.preheader923.lr.ph.split.us ], [ %i.uv, %._crit_edge1055.us ]
  %.68031057.us = phi i64 [ %.pre1212, %.preheader923.lr.ph.split.us ], [ %.lcssa1374, %._crit_edge1055.us ] ; 3 uses
  %brmerge1514 = select i1 %min.iters.check1394, i1 true, i1 %conflict.rdx1392
  br i1 %brmerge1514, label %scalar.ph1393.preheader, label %vector.ph1395

vector.ph1395:                                    ; preds = %.preheader923.us
  %i.td = add i64 %.68031057.us, %n.vec1396       ; 2 uses
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %vector.ph1395
  %index1400 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1405, %vector.body1399 ] ; 2 uses
  %i.te = add i64 %.68031057.us, %index1400       ; 3 uses
  %i.tf = sub nsw i64 %i.te, %i.sf                ; 2 uses
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %wide.load1401 = load <2 x i64>, ptr %i.tg, align 8, !tbaa !9
  %wide.load1402 = load <2 x i64>, ptr %i.th, align 8, !tbaa !9
  %i.ti = add nsw <2 x i64> %broadcast.splat1398, %wide.load1401
  %i.tj = add nsw <2 x i64> %broadcast.splat1398, %wide.load1402
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.te ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store <2 x i64> %i.ti, ptr %i.tk, align 8, !tbaa !9
  store <2 x i64> %i.tj, ptr %i.tl, align 8, !tbaa !9
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.tf ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %wide.load1403 = load <2 x i64>, ptr %i.tm, align 8, !tbaa !9
  %wide.load1404 = load <2 x i64>, ptr %i.tn, align 8, !tbaa !9
  %i.to = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.te ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store <2 x i64> %wide.load1403, ptr %i.to, align 8, !tbaa !9
  store <2 x i64> %wide.load1404, ptr %i.tp, align 8, !tbaa !9
  %index.next1405 = add nuw i64 %index1400, 4     ; 2 uses
  %i.tq = icmp eq i64 %index.next1405, %n.vec1396
  br i1 %i.tq, label %middle.block1406, label %vector.body1399, !llvm.loop !41

middle.block1406:                                 ; preds = %vector.body1399
  br i1 %cmp.n1407, label %._crit_edge1055.us, label %scalar.ph1393.preheader

scalar.ph1393.preheader:                          ; preds = %.preheader923.us, %middle.block1406
  %.78041053.us.ph = phi i64 [ %i.td, %middle.block1406 ], [ %.68031057.us, %.preheader923.us ] ; 5 uses
  %.58181052.us.ph = phi i64 [ %n.vec1396, %middle.block1406 ], [ 0, %.preheader923.us ] ; 3 uses
  br i1 %lcmp.mod1494.not, label %scalar.ph1393.prol.loopexit, label %scalar.ph1393.prol

scalar.ph1393.prol:                               ; preds = %scalar.ph1393.preheader
  %i.tr = sub nsw i64 %.78041053.us.ph, %i.sf     ; 2 uses
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.tr
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !9
  %i.tu = add nsw i64 %i.sk, %i.tt
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %.78041053.us.ph
  store i64 %i.tu, ptr %i.tv, align 8, !tbaa !9
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.tr
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !9
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %.78041053.us.ph
  store i64 %i.tx, ptr %i.ty, align 8, !tbaa !9
  %i.tz = add nsw i64 %.78041053.us.ph, 1         ; 2 uses
  %i.ua = or disjoint i64 %.58181052.us.ph, 1
  br label %scalar.ph1393.prol.loopexit

scalar.ph1393.prol.loopexit:                      ; preds = %scalar.ph1393.prol, %scalar.ph1393.preheader
  %.lcssa1484.unr = phi i64 [ poison, %scalar.ph1393.preheader ], [ %i.tz, %scalar.ph1393.prol ]
  %.78041053.us.unr = phi i64 [ %.78041053.us.ph, %scalar.ph1393.preheader ], [ %i.tz, %scalar.ph1393.prol ]
  %.58181052.us.unr = phi i64 [ %.58181052.us.ph, %scalar.ph1393.preheader ], [ %i.ua, %scalar.ph1393.prol ]
  %i.ub = icmp eq i64 %i.sy, %.58181052.us.ph
  br i1 %i.ub, label %._crit_edge1055.us, label %scalar.ph1393

scalar.ph1393:                                    ; preds = %scalar.ph1393.prol.loopexit, %scalar.ph1393
  %.78041053.us = phi i64 [ %i.ut, %scalar.ph1393 ], [ %.78041053.us.unr, %scalar.ph1393.prol.loopexit ] ; 5 uses
  %.58181052.us = phi i64 [ %i.uu, %scalar.ph1393 ], [ %.58181052.us.unr, %scalar.ph1393.prol.loopexit ]
  %i.uc = sub nsw i64 %.78041053.us, %i.sf        ; 2 uses
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.uc
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !9
  %i.uf = add nsw i64 %i.sk, %i.ue
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %.78041053.us
  store i64 %i.uf, ptr %i.ug, align 8, !tbaa !9
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.uc
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !9
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %.78041053.us
  store i64 %i.ui, ptr %i.uj, align 8, !tbaa !9
  %i.uk = add nsw i64 %.78041053.us, 1            ; 3 uses
  %i.ul = sub nsw i64 %i.uk, %i.sf                ; 2 uses
  %i.um = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !9
  %i.uo = add nsw i64 %i.sk, %i.un
  %i.up = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.uk
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !9
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.ul
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !9
  %i.us = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.uk
  store i64 %i.ur, ptr %i.us, align 8, !tbaa !9
  %i.ut = add nsw i64 %.78041053.us, 2            ; 2 uses
  %i.uu = add nuw nsw i64 %.58181052.us, 2        ; 2 uses
  %exitcond1178.not.1 = icmp eq i64 %i.uu, %i.sf
  br i1 %exitcond1178.not.1, label %._crit_edge1055.us, label %scalar.ph1393, !llvm.loop !42

._crit_edge1055.us:                               ; preds = %scalar.ph1393.prol.loopexit, %scalar.ph1393, %middle.block1406
  %.lcssa1374 = phi i64 [ %i.td, %middle.block1406 ], [ %.lcssa1484.unr, %scalar.ph1393.prol.loopexit ], [ %i.ut, %scalar.ph1393 ] ; 3 uses
  %i.uv = add nuw nsw i32 %.31058.us, 1           ; 2 uses
  %exitcond1179.not = icmp eq i32 %i.uv, %i.se
  br i1 %exitcond1179.not, label %._crit_edge1059.loopexit, label %.preheader923.us, !llvm.loop !43

._crit_edge1059.loopexit:                         ; preds = %._crit_edge1055.us
  %.pre1226 = sub i64 %.lcssa1374, %i.pg
  br label %._crit_edge1059

._crit_edge1059:                                  ; preds = %.preheader923.lr.ph, %._crit_edge1059.loopexit, %bb.ac
  %.pre-phi1227 = phi i64 [ %i.sf, %bb.ac ], [ %.pre1226, %._crit_edge1059.loopexit ], [ %i.sf, %.preheader923.lr.ph ] ; 3 uses
  %.6803.lcssa = phi i64 [ %.pre1212, %bb.ac ], [ %.lcssa1374, %._crit_edge1059.loopexit ], [ %.pre1212, %.preheader923.lr.ph ] ; 4 uses
  store i64 %.6803.lcssa, ptr %3, align 8, !tbaa !9
  %i.uw = icmp sgt i32 %i.pb, 1
  br i1 %i.uw, label %.preheader922.lr.ph, label %._crit_edge1069

.preheader922.lr.ph:                              ; preds = %._crit_edge1059
  %i.ux = icmp sgt i64 %.pre-phi1227, 0
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br i1 %i.ux, label %.preheader922.us, label %._crit_edge1069

.preheader922.us:                                 ; preds = %.preheader922.lr.ph, %._crit_edge1065.us
  %.88051068.us = phi i64 [ %i.we, %._crit_edge1065.us ], [ %.6803.lcssa, %.preheader922.lr.ph ]
  %.68191067.us = phi i64 [ %i.wf, %._crit_edge1065.us ], [ 1, %.preheader922.lr.ph ]
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader922.us, %flatlist_node_grow.exit888.us
  %indvars.iv1180 = phi i64 [ 0, %.preheader922.us ], [ %indvars.iv.next1181, %flatlist_node_grow.exit888.us ]
  %.98061062.us = phi i64 [ %.88051068.us, %.preheader922.us ], [ %i.we, %flatlist_node_grow.exit888.us ] ; 5 uses
  %i.vb = shl i64 %.98061062.us, 32
  %i.vc = ashr exact i64 %i.vb, 32
  %i.vd = load i64, ptr %i.uy, align 8, !tbaa !16 ; 2 uses
  %.not.i886.us = icmp sgt i64 %i.vd, %i.vc
  br i1 %.not.i886.us, label %.flatlist_node_grow.exit888.us_crit_edge, label %bb.ae

.flatlist_node_grow.exit888.us_crit_edge:         ; preds = %bb.ad
  %.pre1213 = load ptr, ptr %i.va, align 8, !tbaa !19
  %.pre1214 = load ptr, ptr %i.uz, align 8, !tbaa !18
  br label %flatlist_node_grow.exit888.us

bb.ae:                                            ; preds = %bb.ad
  %i.ve = sitofp i64 %i.vd to double
  %i.vf = call double @llvm.fmuladd.f64(double %i.ve, double 1.250000e+00, double 4.000000e+00)
  %i.vg = fptosi double %i.vf to i32              ; 2 uses
  %i.vh = shl nsw i32 %i.vg, 1
  %i.vi = sext i32 %i.vh to i64
  %i.vj = call ptr @ADIOI_Calloc_fn(i64 noundef %i.vi, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.vk = sext i32 %i.vg to i64                   ; 2 uses
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.vj, i64 %i.vk ; 3 uses
  %i.vm = load i64, ptr %i.uy, align 8, !tbaa !16 ; 2 uses
  %.not20.i887.us = icmp eq i64 %i.vm, 0
  br i1 %.not20.i887.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.vn = load ptr, ptr %i.uz, align 8, !tbaa !18
  %i.vo = shl i64 %i.vm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vj, ptr align 8 %i.vn, i64 %i.vo, i1 false)
  %i.vp = load ptr, ptr %i.va, align 8, !tbaa !19
  %i.vq = load i64, ptr %i.uy, align 8, !tbaa !16
  %i.vr = shl i64 %i.vq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vl, ptr align 8 %i.vp, i64 %i.vr, i1 false)
  %i.vs = load ptr, ptr %i.uz, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.vs, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store ptr %i.vj, ptr %i.uz, align 8, !tbaa !18
  store ptr %i.vl, ptr %i.va, align 8, !tbaa !19
  store i64 %i.vk, ptr %i.uy, align 8, !tbaa !16
  br label %flatlist_node_grow.exit888.us

flatlist_node_grow.exit888.us:                    ; preds = %.flatlist_node_grow.exit888.us_crit_edge, %bb.ag
  %i.vt = phi ptr [ %.pre1214, %.flatlist_node_grow.exit888.us_crit_edge ], [ %i.vj, %bb.ag ] ; 2 uses
  %i.vu = phi ptr [ %.pre1213, %.flatlist_node_grow.exit888.us_crit_edge ], [ %i.vl, %bb.ag ] ; 2 uses
  %i.vv = sub nsw i64 %.98061062.us, %.pre-phi1227 ; 2 uses
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %i.vv
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !9
  %i.vy = load i64, ptr %i.y, align 8, !tbaa !73
  %i.vz = add nsw i64 %i.vy, %i.vx
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %.98061062.us
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !9
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %i.vv
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !9
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %.98061062.us
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !9
  %i.we = add nsw i64 %.98061062.us, 1            ; 3 uses
  %indvars.iv.next1181 = add nuw nsw i64 %indvars.iv1180, 1 ; 2 uses
  %exitcond1183.not = icmp eq i64 %indvars.iv.next1181, %.pre-phi1227
end_hunk_0
begin_hunk_1_@ADIOI_Flatten:bb.a
  %i.and = add nuw nsw i64 %.15828973, 1
  br label %.loopexit933

.preheader932.lr.ph.split.us:                     ; preds = %._crit_edge
  %i.ane = load ptr, ptr %i.amd, align 8, !tbaa !18 ; 2 uses
  br label %.preheader932.us

.preheader932.us:                                 ; preds = %._crit_edge965.us, %.preheader932.lr.ph.split.us
  %.12968.us = phi i32 [ 1, %.preheader932.lr.ph.split.us ], [ %i.ant, %._crit_edge965.us ]
  %.29967.us = phi i64 [ %.28, %.preheader932.lr.ph.split.us ], [ %.31.us, %._crit_edge965.us ] ; 2 uses
  %i.anf = load i64, ptr %i.l, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader932.us, %bb.cu
  %indvars.iv1149 = phi i64 [ 0, %.preheader932.us ], [ %indvars.iv.next1150, %bb.cu ]
  %.14962.us = phi i64 [ %.29967.us, %.preheader932.us ], [ %.15.us, %bb.cu ] ; 4 uses
  %.30961.us = phi i64 [ %.29967.us, %.preheader932.us ], [ %.31.us, %bb.cu ] ; 3 uses
  %i.ang = sub nsw i64 %.30961.us, %i.alb         ; 2 uses
  %i.anh = getelementptr inbounds [8 x i8], ptr %i.ane, i64 %i.ang ; 2 uses
  %i.ani = load i64, ptr %i.anh, align 8, !tbaa !9
  %i.anj = icmp sgt i64 %i.ani, 0
  br i1 %i.anj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ank = load ptr, ptr %i.ame, align 8, !tbaa !19 ; 2 uses
  %i.anl = getelementptr inbounds [8 x i8], ptr %i.ank, i64 %i.ang
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !9
  %i.ann = add nsw i64 %i.anf, %i.anm
  %i.ano = getelementptr inbounds [8 x i8], ptr %i.ank, i64 %.14962.us
  store i64 %i.ann, ptr %i.ano, align 8, !tbaa !9
  %i.anp = load i64, ptr %i.anh, align 8, !tbaa !9
  %i.anq = getelementptr inbounds [8 x i8], ptr %i.ane, i64 %.14962.us
  store i64 %i.anp, ptr %i.anq, align 8, !tbaa !9
  %i.anr = add nsw i64 %.30961.us, 1
  %i.ans = add nsw i64 %.14962.us, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.31.us = phi i64 [ %i.anr, %bb.ct ], [ %.30961.us, %bb.cs ] ; 3 uses
  %.15.us = phi i64 [ %i.ans, %bb.ct ], [ %.14962.us, %bb.cs ]
  %indvars.iv.next1150 = add nuw nsw i64 %indvars.iv1149, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1150, %i.alb
  br i1 %exitcond1152.not, label %._crit_edge965.us, label %bb.cs, !llvm.loop !63

._crit_edge965.us:                                ; preds = %bb.cu
  %i.ant = add nuw nsw i32 %.12968.us, 1          ; 2 uses
  %exitcond1153.not = icmp eq i32 %i.ant, %i.anb
  br i1 %exitcond1153.not, label %.loopexit933, label %.preheader932.us, !llvm.loop !64

bb.cv:                                            ; preds = %bb.a, %bb.a
  %i.anu = load i32, ptr %i.t, align 4, !tbaa !10 ; 2 uses
  %i.anv = icmp sgt i32 %i.anu, 0
  br i1 %i.anv, label %.lr.ph, label %.loopexit927

.lr.ph:                                           ; preds = %bb.cv
  %i.anw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.any = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext nneg i32 %i.anu to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph, %bb.di
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.di ] ; 6 uses
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv ; 7 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !22
  %i.aod = call i32 @PMPI_Type_get_envelope(ptr noundef %i.aoc, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.aoe = load ptr, ptr %i.aob, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.aoe, ptr noundef nonnull %i.c) #7
  %i.aof = load i64, ptr %3, align 8, !tbaa !9    ; 10 uses
  %i.aog = load i32, ptr %i.b, align 4, !tbaa !10
  %i.aoh = icmp eq i32 %i.aog, 0
  %i.aoi = load i32, ptr %i.c, align 4
  %i.aoj = icmp ne i32 %i.aoi, 0
  %or.cond15 = select i1 %i.aoh, i1 true, i1 %i.aoj
  br i1 %or.cond15, label %.thread1339, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aok = load ptr, ptr %i.aob, align 8, !tbaa !22
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !73
  %i.aon = add nsw i64 %i.aom, %2
  call void @ADIOI_Flatten(ptr noundef %i.aok, ptr noundef %1, i64 noundef %i.aon, ptr noundef nonnull %3)
  %.pre1198 = load i64, ptr %3, align 8, !tbaa !9 ; 8 uses
  %i.aoo = icmp eq i64 %i.aof, %.pre1198
  br i1 %i.aoo, label %.thread1339, label %bb.dh

.thread1339:                                      ; preds = %bb.cw, %bb.cx
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !10 ; 2 uses
  %i.aos = icmp sgt i32 %i.aor, 0
  br i1 %i.aos, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.thread1339
  %i.aot = load ptr, ptr %i.aob, align 8, !tbaa !22 ; 2 uses
  %i.aou = icmp eq ptr %i.aot, @ompi_mpi_lb
  %i.aov = icmp eq ptr %i.aot, @ompi_mpi_ub
  %or.cond873 = or i1 %i.aou, %i.aov
  br i1 %or.cond873, label %bb.cz, label %bb.di

bb.cz:                                            ; preds = %bb.cy, %.thread1339
  %i.aow = sext i32 %i.aor to i64
  %i.aox = shl i64 %i.aof, 32
  %i.aoy = ashr exact i64 %i.aox, 32
  %i.aoz = load i64, ptr %i.any, align 8, !tbaa !16 ; 2 uses
  %.not.i907 = icmp sgt i64 %i.aoz, %i.aoy
  br i1 %.not.i907, label %.flatlist_node_grow.exit909_crit_edge, label %bb.da

.flatlist_node_grow.exit909_crit_edge:            ; preds = %bb.cz
  %.pre1199 = load ptr, ptr %i.anw, align 8, !tbaa !19
  br label %flatlist_node_grow.exit909

bb.da:                                            ; preds = %bb.cz
  %i.apa = sitofp i64 %i.aoz to double
  %i.apb = call double @llvm.fmuladd.f64(double %i.apa, double 1.250000e+00, double 4.000000e+00)
  %i.apc = fptosi double %i.apb to i32            ; 2 uses
  %i.apd = shl nsw i32 %i.apc, 1
  %i.ape = sext i32 %i.apd to i64
  %i.apf = call ptr @ADIOI_Calloc_fn(i64 noundef %i.ape, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.apg = sext i32 %i.apc to i64                 ; 2 uses
  %i.aph = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.apg ; 3 uses
  %i.api = load i64, ptr %i.any, align 8, !tbaa !16 ; 2 uses
  %.not20.i908 = icmp eq i64 %i.api, 0
  br i1 %.not20.i908, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.apj = load ptr, ptr %i.anx, align 8, !tbaa !18
  %i.apk = shl i64 %i.api, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.apf, ptr align 8 %i.apj, i64 %i.apk, i1 false)
  %i.apl = load ptr, ptr %i.anw, align 8, !tbaa !19
  %i.apm = load i64, ptr %i.any, align 8, !tbaa !16
  %i.apn = shl i64 %i.apm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aph, ptr align 8 %i.apl, i64 %i.apn, i1 false)
  %i.apo = load ptr, ptr %i.anx, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.apo, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store ptr %i.apf, ptr %i.anx, align 8, !tbaa !18
  store ptr %i.aph, ptr %i.anw, align 8, !tbaa !19
  store i64 %i.apg, ptr %i.any, align 8, !tbaa !16
  br label %flatlist_node_grow.exit909

flatlist_node_grow.exit909:                       ; preds = %.flatlist_node_grow.exit909_crit_edge, %bb.dc
  %i.app = phi ptr [ %.pre1199, %.flatlist_node_grow.exit909_crit_edge ], [ %i.aph, %bb.dc ]
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !73
  %i.aps = add nsw i64 %i.apr, %2
  %i.apt = getelementptr inbounds [8 x i8], ptr %i.app, i64 %i.aof
  store i64 %i.aps, ptr %i.apt, align 8, !tbaa !9
  %i.apu = load ptr, ptr %i.aob, align 8, !tbaa !22
  %i.apv = call i32 @PMPI_Type_size_x(ptr noundef %i.apu, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.apw = load i64, ptr %i.j, align 8, !tbaa !9
  %i.apx = mul nsw i64 %i.apw, %i.aow
  %i.apy = load ptr, ptr %i.anx, align 8, !tbaa !18
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.apy, i64 %i.aof
  store i64 %i.apx, ptr %i.apz, align 8, !tbaa !9
  %i.aqa = load ptr, ptr %i.aob, align 8, !tbaa !22 ; 2 uses
  %i.aqb = icmp eq ptr %i.aqa, @ompi_mpi_lb
  br i1 %i.aqb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %flatlist_node_grow.exit909
  store i64 %i.aof, ptr %i.anz, align 8, !tbaa !74
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %flatlist_node_grow.exit909
  %i.aqc = icmp eq ptr %i.aqa, @ompi_mpi_ub
  br i1 %i.aqc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i64 %i.aof, ptr %i.aoa, align 8, !tbaa !75
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.aqd = load i64, ptr %3, align 8, !tbaa !9
  %i.aqe = add nsw i64 %i.aqd, 1
  br label %.sink.split1365

bb.dh:                                            ; preds = %bb.cx
  %i.aqf = sub i64 %.pre1198, %i.aof              ; 9 uses
  %i.aqg = load ptr, ptr %i.aob, align 8, !tbaa !22
  %i.aqh = call i32 @PMPI_Type_get_extent(ptr noundef %i.aqg, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 4
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !10 ; 2 uses
  %i.aql = icmp sgt i32 %i.aqk, 1
  br i1 %i.aql, label %.preheader937.lr.ph, label %.sink.split1365

.preheader937.lr.ph:                              ; preds = %bb.dh
  %i.aqm = icmp sgt i64 %i.aqf, 0
  %i.aqn = load i64, ptr %i.l, align 8            ; 4 uses
  br i1 %i.aqm, label %.preheader937.lr.ph.split.us, label %.sink.split1365

.preheader937.lr.ph.split.us:                     ; preds = %.preheader937.lr.ph
  %i.aqo = load ptr, ptr %i.anw, align 8, !tbaa !19 ; 9 uses
  %i.aqp = ptrtoaddr ptr %i.aqo to i64            ; 3 uses
  %i.aqq = load ptr, ptr %i.anx, align 8, !tbaa !18 ; 9 uses
  %i.aqr = ptrtoaddr ptr %i.aqq to i64            ; 3 uses
  %i.aqs = shl i64 %.pre1198, 3                   ; 2 uses
  %i.aqt = add i64 %i.aqs, %i.aqr
  %i.aqu = shl i64 %i.aof, 3                      ; 2 uses
  %i.aqv = add i64 %i.aqu, %i.aqp
  %i.aqw = add i64 %i.aqu, %i.aqr
  %i.aqx = add i64 %i.aqs, %i.aqp
  %i.aqy = xor i64 %i.aof, -1
  %i.aqz = add i64 %.pre1198, %i.aqy
  %min.iters.check = icmp ult i64 %i.aqf, 6
  %i.ara = sub i64 %i.aqv, %i.aqt
  %diff.check = icmp ugt i64 %i.ara, -32
  %i.arb = sub i64 %i.aqx, %i.aqw
  %diff.check1380 = icmp ugt i64 %i.arb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1380
  %i.arc = sub i64 %i.aqp, %i.aqr
  %diff.check1381 = icmp ugt i64 %i.arc, -32
  %conflict.rdx1382 = or i1 %conflict.rdx, %diff.check1381
  %n.vec = and i64 %i.aqf, 9223372036854775804    ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aqn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.aqf, %n.vec
  %i.ard = sub i64 %.pre1198, %i.aof
  %xtraiter = and i64 %i.ard, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader937.us

.preheader937.us:                                 ; preds = %._crit_edge.us, %.preheader937.lr.ph.split.us
  %.13943.us = phi i32 [ 1, %.preheader937.lr.ph.split.us ], [ %i.asw, %._crit_edge.us ]
  %.32942.us = phi i64 [ %.pre1198, %.preheader937.lr.ph.split.us ], [ %.lcssa1379, %._crit_edge.us ] ; 3 uses
  %brmerge1515 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1382
  br i1 %brmerge1515, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader937.us
  %i.are = add i64 %.32942.us, %n.vec             ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.arf = add i64 %.32942.us, %index             ; 3 uses
  %i.arg = sub nsw i64 %i.arf, %i.aqf             ; 2 uses
  %i.arh = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %i.arg ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 16
  %wide.load = load <2 x i64>, ptr %i.arh, align 8, !tbaa !9
  %wide.load1383 = load <2 x i64>, ptr %i.ari, align 8, !tbaa !9
  %i.arj = add nsw <2 x i64> %broadcast.splat, %wide.load
  %i.ark = add nsw <2 x i64> %broadcast.splat, %wide.load1383
  %i.arl = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %i.arf ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  store <2 x i64> %i.arj, ptr %i.arl, align 8, !tbaa !9
  store <2 x i64> %i.ark, ptr %i.arm, align 8, !tbaa !9
  %i.arn = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.arg ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  %wide.load1384 = load <2 x i64>, ptr %i.arn, align 8, !tbaa !9
  %wide.load1385 = load <2 x i64>, ptr %i.aro, align 8, !tbaa !9
  %i.arp = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.arf ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  store <2 x i64> %wide.load1384, ptr %i.arp, align 8, !tbaa !9
  store <2 x i64> %wide.load1385, ptr %i.arq, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.arr = icmp eq i64 %index.next, %n.vec
  br i1 %i.arr, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader937.us, %middle.block
  %.33941.us.ph = phi i64 [ %i.are, %middle.block ], [ %.32942.us, %.preheader937.us ] ; 5 uses
  %.16829940.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader937.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ars = sub nsw i64 %.33941.us.ph, %i.aqf      ; 2 uses
  %i.art = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %i.ars
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !9
  %i.arv = add nsw i64 %i.aqn, %i.aru
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %.33941.us.ph
  store i64 %i.arv, ptr %i.arw, align 8, !tbaa !9
  %i.arx = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.ars
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !9
  %i.arz = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %.33941.us.ph
  store i64 %i.ary, ptr %i.arz, align 8, !tbaa !9
  %i.asa = add nsw i64 %.33941.us.ph, 1           ; 2 uses
  %i.asb = or disjoint i64 %.16829940.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa1492.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.asa, %scalar.ph.prol ]
  %.33941.us.unr = phi i64 [ %.33941.us.ph, %scalar.ph.preheader ], [ %i.asa, %scalar.ph.prol ]
  %.16829940.us.unr = phi i64 [ %.16829940.us.ph, %scalar.ph.preheader ], [ %i.asb, %scalar.ph.prol ]
  %i.asc = icmp eq i64 %i.aqz, %.16829940.us.ph
  br i1 %i.asc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.33941.us = phi i64 [ %i.asu, %scalar.ph ], [ %.33941.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.16829940.us = phi i64 [ %i.asv, %scalar.ph ], [ %.16829940.us.unr, %scalar.ph.prol.loopexit ]
  %i.asd = sub nsw i64 %.33941.us, %i.aqf         ; 2 uses
  %i.ase = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %i.asd
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !9
  %i.asg = add nsw i64 %i.aqn, %i.asf
  %i.ash = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %.33941.us
  store i64 %i.asg, ptr %i.ash, align 8, !tbaa !9
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.asd
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !9
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %.33941.us
  store i64 %i.asj, ptr %i.ask, align 8, !tbaa !9
  %i.asl = add nsw i64 %.33941.us, 1              ; 3 uses
  %i.asm = sub nsw i64 %i.asl, %i.aqf             ; 2 uses
  %i.asn = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %i.asm
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !9
  %i.asp = add nsw i64 %i.aqn, %i.aso
  %i.asq = getelementptr inbounds [8 x i8], ptr %i.aqo, i64 %i.asl
  store i64 %i.asp, ptr %i.asq, align 8, !tbaa !9
  %i.asr = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.asm
  %i.ass = load i64, ptr %i.asr, align 8, !tbaa !9
  %i.ast = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.asl
  store i64 %i.ass, ptr %i.ast, align 8, !tbaa !9
  %i.asu = add nsw i64 %.33941.us, 2              ; 2 uses
  %i.asv = add nuw nsw i64 %.16829940.us, 2       ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.asv, %i.aqf
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !66

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa1379 = phi i64 [ %i.are, %middle.block ], [ %.lcssa1492.unr, %scalar.ph.prol.loopexit ], [ %i.asu, %scalar.ph ] ; 2 uses
  %i.asw = add nuw nsw i32 %.13943.us, 1          ; 2 uses
  %exitcond1140.not = icmp eq i32 %i.asw, %i.aqk
  br i1 %exitcond1140.not, label %.sink.split1365, label %.preheader937.us, !llvm.loop !67

.sink.split1365:                                  ; preds = %._crit_edge.us, %bb.dh, %.preheader937.lr.ph, %bb.dg
  %.32.lcssa.sink = phi i64 [ %i.aqe, %bb.dg ], [ %.pre1198, %bb.dh ], [ %.pre1198, %.preheader937.lr.ph ], [ %.lcssa1379, %._crit_edge.us ]
  store i64 %.32.lcssa.sink, ptr %3, align 8, !tbaa !9
  br label %bb.di

bb.di:                                            ; preds = %.sink.split1365, %bb.cy
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1142.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1142.not, label %.loopexit927, label %bb.cw, !llvm.loop !68

bb.dj:                                            ; preds = %bb.a
  %i.asx = load i64, ptr %3, align 8, !tbaa !9    ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !74
  %i.ata = icmp eq i64 %i.asz, -1
  br i1 %i.ata, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !75
  %i.atd = icmp eq i64 %i.atc, -1
  br i1 %i.atd, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ate = trunc i64 %i.asx to i32
  call fastcc void @flatlist_node_grow(ptr noundef nonnull %1, i32 noundef %i.ate)
  %i.atf = load i64, ptr %i.y, align 8, !tbaa !73
  %i.atg = add nsw i64 %i.atf, %2
  %i.ath = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !19
  %i.atj = getelementptr inbounds [8 x i8], ptr %i.ati, i64 %i.asx
  store i64 %i.atg, ptr %i.atj, align 8, !tbaa !9
  %i.atk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !18
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.atl, i64 %i.asx
  store i64 0, ptr %i.atm, align 8, !tbaa !9
  %i.atn = load i64, ptr %3, align 8, !tbaa !9    ; 2 uses
  store i64 %i.atn, ptr %i.asy, align 8, !tbaa !74
  %i.ato = add nsw i64 %i.atn, 1
  store i64 %i.ato, ptr %3, align 8, !tbaa !9
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.dj
  %i.atp = load i64, ptr %i.y, align 8, !tbaa !73
  %i.atq = sub nsw i64 %2, %i.atp
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.old18.not = phi i1 [ false, %bb.dl ], [ true, %bb.dm ]
  %i.atr = phi i1 [ true, %bb.dl ], [ false, %bb.dm ]
  %.0 = phi i64 [ %2, %bb.dl ], [ %i.atq, %bb.dm ] ; 3 uses
  %i.ats = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.att = call i32 @PMPI_Type_get_envelope(ptr noundef %i.ats, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.atu = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.atu, ptr noundef nonnull %i.c) #7
  %i.atv = load i32, ptr %i.b, align 4, !tbaa !10
  %i.atw = icmp eq i32 %i.atv, 0
  %i.atx = load i32, ptr %i.c, align 4
  %i.aty = icmp ne i32 %i.atx, 0
  %or.cond17 = select i1 %i.atw, i1 true, i1 %i.aty
  br i1 %or.cond17, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.atz = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.aua = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aub = add nsw i64 %i.aua, %.0
  call void @ADIOI_Flatten(ptr noundef %i.atz, ptr noundef nonnull %1, i64 noundef %i.aub, ptr noundef nonnull %3)
  br label %bb.dt

bb.dp:                                            ; preds = %bb.dn
  %i.auc = load i64, ptr %3, align 8, !tbaa !9    ; 3 uses
  %i.aud = shl i64 %i.auc, 32
  %i.aue = ashr exact i64 %i.aud, 32
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aug = load i64, ptr %i.auf, align 8, !tbaa !16 ; 2 uses
  %.not.i910 = icmp sgt i64 %i.aug, %i.aue
  br i1 %.not.i910, label %.flatlist_node_grow.exit912_crit_edge, label %bb.dq

.flatlist_node_grow.exit912_crit_edge:            ; preds = %bb.dp
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %flatlist_node_grow.exit912

bb.dq:                                            ; preds = %bb.dp
  %i.auh = sitofp i64 %i.aug to double
end_hunk_1
