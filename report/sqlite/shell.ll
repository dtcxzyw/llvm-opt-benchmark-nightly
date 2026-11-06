Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 120
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sha1QueryFunc:bb.a
  %i.t = call i32 @sqlite3_prepare_v2(ptr noundef %i.f, ptr noundef nonnull %i.s, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #45
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.v = call ptr @sqlite3_errmsg(ptr noundef %i.f) #45
  %i.w = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.296, ptr noundef %i.u, ptr noundef %i.v) #45 ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.y = call i32 @sqlite3_finalize(ptr noundef %i.x) #45 ; 0 uses
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef %i.w, i32 noundef -1) #45
  call void @sqlite3_free(ptr noundef %i.w) #45
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.aa = call i32 @sqlite3_stmt_readonly(ptr noundef %i.z) #45
  %.not48 = icmp eq i32 %i.aa, 0
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  br i1 %.not48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call ptr @sqlite3_sql(ptr noundef %i.ab) #45
  %i.ad = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.297, ptr noundef %i.ac) #45 ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.af = call i32 @sqlite3_finalize(ptr noundef %i.ae) #45 ; 0 uses
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef %i.ad, i32 noundef -1) #45
  call void @sqlite3_free(ptr noundef %i.ad) #45
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.ag = call i32 @sqlite3_column_count(ptr noundef %i.ab) #45 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ai = call ptr @sqlite3_sql(ptr noundef %i.ah) #45 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %spec.store.select = select i1 %i.aj, ptr @.str.48, ptr %i.ai ; 4 uses
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #46
  %i.al = trunc i64 %i.ak to i32                  ; 7 uses
  call void (ptr, ptr, ...) @hash_step_vformat(ptr noundef %3, ptr noundef nonnull @.str.298, i32 noundef %i.al)
  %i.am = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.an = shl i32 %i.al, 3
  %i.ao = add i32 %i.am, %i.an                    ; 2 uses
  store i32 %i.ao, ptr %i.k, align 4, !tbaa !53
  %i.ap = icmp ult i32 %i.ao, %i.am
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr i32 %i.al, 29
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = load i32, ptr %i.l, align 8, !tbaa !53
  %i.at = add i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.l, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = lshr i32 %i.am, 3
  %i.av = and i32 %i.au, 63                       ; 4 uses
  %i.aw = add i32 %i.av, %i.al
  %i.ax = icmp ugt i32 %i.aw, 63
  %i.ay = zext nneg i32 %i.av to i64              ; 2 uses
  br i1 %i.ax, label %bb.j, label %hash_step.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  %i.ba = sub nuw nsw i32 64, %i.av               ; 3 uses
  %i.bb = zext nneg i32 %i.ba to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select, i64 %i.bb, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  %i.bc = xor i32 %i.av, 127
  %i.bd = icmp ult i32 %i.bc, %i.al
  br i1 %i.bd, label %.lr.ph.i, label %hash_step.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.02627.i = phi i32 [ %i.bg, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 3 uses
  %i.be = zext i32 %.02627.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %i.be
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.bf)
  %i.bg = add i32 %.02627.i, 64                   ; 2 uses
  %i.bh = add i32 %.02627.i, 127
  %i.bi = icmp ult i32 %i.bh, %i.al
  br i1 %i.bi, label %.lr.ph.i, label %hash_step.exit, !llvm.loop !10

hash_step.exit:                                   ; preds = %.lr.ph.i, %bb.i, %bb.j
  %.1.i = phi i32 [ 0, %bb.i ], [ %i.ba, %bb.j ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %.0.i = phi i64 [ %i.ay, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i
  %i.bk = zext i32 %.1.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %i.bk
  %i.bm = sub i32 %i.al, %.1.i
  %i.bn = zext i32 %i.bm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %i.bl, i64 %i.bn, i1 false)
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bp = call i32 @sqlite3_step(ptr noundef %i.bo) #45
  %i.bq = icmp eq i32 %i.bp, 100
  br i1 %i.bq, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %hash_step.exit
  %i.br = icmp sgt i32 %i.ag, 0
  br label %bb.k

.loopexit:                                        ; preds = %bb.ak, %hash_step.exit53
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bt = call i32 @sqlite3_step(ptr noundef %i.bs) #45
  %i.bu = icmp eq i32 %i.bt, 100
  br i1 %i.bu, label %bb.k, label %._crit_edge, !llvm.loop !751

bb.k:                                             ; preds = %.lr.ph86, %.loopexit
  %i.bv = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.bw = add i32 %i.bv, 8
  store i32 %i.bw, ptr %i.k, align 4, !tbaa !53
  %i.bx = icmp ugt i32 %i.bv, -9
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = load i32, ptr %i.l, align 8, !tbaa !53
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.l, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ca = lshr i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 63                       ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 63
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 82, ptr %i.o, align 1
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  br label %hash_step.exit53

bb.o:                                             ; preds = %bb.m
  %i.cd = zext nneg i32 %i.cb to i64
  br label %hash_step.exit53

hash_step.exit53:                                 ; preds = %bb.o, %bb.n
  %.1.i49 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ]    ; 2 uses
  %.0.i50 = phi i64 [ %i.cd, %bb.o ], [ 0, %bb.n ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i50
  %i.cf = zext nneg i32 %.1.i49 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @.str.299, i64 %i.cf
  %i.ch = xor i32 %.1.i49, 1
  %i.ci = zext nneg i32 %i.ch to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %i.cg, i64 %i.ci, i1 false)
  br i1 %i.br, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %hash_step.exit53, %bb.ak
  %.085 = phi i32 [ %i.gx, %bb.ak ], [ 0, %hash_step.exit53 ] ; 8 uses
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ck = call i32 @sqlite3_column_type(ptr noundef %i.cj, i32 noundef %.085) #45
  switch i32 %i.ck, label %bb.ak [
    i32 5, label %bb.p
    i32 1, label %bb.u
    i32 2, label %bb.y
    i32 3, label %bb.ac
    i32 4, label %bb.ag
  ]

bb.p:                                             ; preds = %.lr.ph
  %i.cl = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.cm = add i32 %i.cl, 8
  store i32 %i.cm, ptr %i.k, align 4, !tbaa !53
  %i.cn = icmp ugt i32 %i.cl, -9
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.l, align 8, !tbaa !53
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.l, align 8, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = lshr i32 %i.cl, 3
  %i.cr = and i32 %i.cq, 63                       ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 63
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 78, ptr %i.r, align 1
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  br label %hash_step.exit58

bb.t:                                             ; preds = %bb.r
  %i.ct = zext nneg i32 %i.cr to i64
  br label %hash_step.exit58

hash_step.exit58:                                 ; preds = %bb.t, %bb.s
  %.1.i54 = phi i32 [ 0, %bb.t ], [ 1, %bb.s ]    ; 2 uses
  %.0.i55 = phi i64 [ %i.ct, %bb.t ], [ 0, %bb.s ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i55
  %i.cv = zext nneg i32 %.1.i54 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @.str.293, i64 %i.cv
  %i.cx = xor i32 %.1.i54, 1
  %i.cy = zext nneg i32 %i.cx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.cw, i64 %i.cy, i1 false)
  br label %bb.ak

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.da = call i64 @sqlite3_column_int64(ptr noundef %i.cz, i32 noundef %.085) #45
  %4 = call i64 @llvm.bswap.i64(i64 %i.da)
  store i64 %4, ptr %i.q, align 1, !tbaa !52
  store i8 73, ptr %i.d, align 1, !tbaa !52
  %i.db = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.dc = add i32 %i.db, 72
  store i32 %i.dc, ptr %i.k, align 4, !tbaa !53
  %i.dd = icmp ugt i32 %i.db, -73
  br i1 %i.dd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.de = load i32, ptr %i.l, align 8, !tbaa !53
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.l, align 8, !tbaa !53
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dg = lshr i32 %i.db, 3
  %i.dh = and i32 %i.dg, 63                       ; 3 uses
  %i.di = icmp samesign ugt i32 %i.dh, 54
  %i.dj = zext nneg i32 %i.dh to i64              ; 2 uses
  br i1 %i.di, label %bb.x, label %hash_step.exit63

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dj
  %i.dl = sub nuw nsw i32 64, %i.dh               ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dk, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, i64 %i.dm, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  br label %hash_step.exit63

hash_step.exit63:                                 ; preds = %bb.w, %bb.x
  %.1.i59 = phi i32 [ %i.dl, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.0.i60 = phi i64 [ 0, %bb.x ], [ %i.dj, %bb.w ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i60
  %i.do = zext nneg i32 %.1.i59 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.do
  %i.dq = sub nuw nsw i32 9, %.1.i59
  %i.dr = zext nneg i32 %i.dq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 1 %i.dp, i64 %i.dr, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %bb.ak

bb.y:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #45
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dt = call double @sqlite3_column_double(ptr noundef %i.ds, i32 noundef %.085) #45
  %5 = bitcast double %i.dt to i64
  %6 = call i64 @llvm.bswap.i64(i64 %5)
  store i64 %6, ptr %i.p, align 1, !tbaa !52
  store i8 70, ptr %i.e, align 1, !tbaa !52
  %i.du = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.dv = add i32 %i.du, 72
  store i32 %i.dv, ptr %i.k, align 4, !tbaa !53
  %i.dw = icmp ugt i32 %i.du, -73
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dx = load i32, ptr %i.l, align 8, !tbaa !53
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.l, align 8, !tbaa !53
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dz = lshr i32 %i.du, 3
  %i.ea = and i32 %i.dz, 63                       ; 3 uses
  %i.eb = icmp samesign ugt i32 %i.ea, 54
  %i.ec = zext nneg i32 %i.ea to i64              ; 2 uses
  br i1 %i.eb, label %bb.ab, label %hash_step.exit68

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ec
  %i.ee = sub nuw nsw i32 64, %i.ea               ; 2 uses
  %i.ef = zext nneg i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ed, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.e, i64 %i.ef, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  br label %hash_step.exit68

hash_step.exit68:                                 ; preds = %bb.aa, %bb.ab
  %.1.i64 = phi i32 [ %i.ee, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %.0.i65 = phi i64 [ 0, %bb.ab ], [ %i.ec, %bb.aa ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i65
  %i.eh = zext nneg i32 %.1.i64 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eh
  %i.ej = sub nuw nsw i32 9, %.1.i64
  %i.ek = zext nneg i32 %i.ej to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull readonly align 1 %i.ei, i64 %i.ek, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  br label %bb.ak

bb.ac:                                            ; preds = %.lr.ph
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.em = call i32 @sqlite3_column_bytes(ptr noundef %i.el, i32 noundef %.085) #45 ; 7 uses
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.eo = call ptr @sqlite3_column_text(ptr noundef %i.en, i32 noundef %.085) #45 ; 3 uses
  call void (ptr, ptr, ...) @hash_step_vformat(ptr noundef %3, ptr noundef nonnull @.str.294, i32 noundef %i.em)
  %i.ep = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.eq = shl i32 %i.em, 3
  %i.er = add i32 %i.ep, %i.eq                    ; 2 uses
  store i32 %i.er, ptr %i.k, align 4, !tbaa !53
  %i.es = icmp ult i32 %i.er, %i.ep
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.et = lshr i32 %i.em, 29
  %i.eu = add nuw nsw i32 %i.et, 1
  %i.ev = load i32, ptr %i.l, align 8, !tbaa !53
  %i.ew = add i32 %i.eu, %i.ev
  store i32 %i.ew, ptr %i.l, align 8, !tbaa !53
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ex = lshr i32 %i.ep, 3
  %i.ey = and i32 %i.ex, 63                       ; 4 uses
  %i.ez = add i32 %i.ey, %i.em
  %i.fa = icmp ugt i32 %i.ez, 63
  %i.fb = zext nneg i32 %i.ey to i64              ; 2 uses
  br i1 %i.fa, label %bb.af, label %hash_step.exit73

bb.af:                                            ; preds = %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fb
  %i.fd = sub nuw nsw i32 64, %i.ey               ; 3 uses
  %i.fe = zext nneg i32 %i.fd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fc, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.eo, i64 %i.fe, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  %i.ff = xor i32 %i.ey, 127
  %i.fg = icmp ult i32 %i.ff, %i.em
  br i1 %i.fg, label %.lr.ph.i71, label %hash_step.exit73

.lr.ph.i71:                                       ; preds = %bb.af, %.lr.ph.i71
  %.02627.i72 = phi i32 [ %i.fj, %.lr.ph.i71 ], [ %i.fd, %bb.af ] ; 3 uses
  %i.fh = zext i32 %.02627.i72 to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fh
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.fi)
  %i.fj = add i32 %.02627.i72, 64                 ; 2 uses
  %i.fk = add i32 %.02627.i72, 127
  %i.fl = icmp ult i32 %i.fk, %i.em
  br i1 %i.fl, label %.lr.ph.i71, label %hash_step.exit73, !llvm.loop !10

hash_step.exit73:                                 ; preds = %.lr.ph.i71, %bb.ae, %bb.af
  %.1.i69 = phi i32 [ 0, %bb.ae ], [ %i.fd, %bb.af ], [ %i.fj, %.lr.ph.i71 ] ; 2 uses
  %.0.i70 = phi i64 [ %i.fb, %bb.ae ], [ 0, %bb.af ], [ 0, %.lr.ph.i71 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i70
  %i.fn = zext i32 %.1.i69 to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fn
  %i.fp = sub i32 %i.em, %.1.i69
  %i.fq = zext i32 %i.fp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr readonly align 1 %i.fo, i64 %i.fq, i1 false)
  br label %bb.ak

bb.ag:                                            ; preds = %.lr.ph
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.fs = call i32 @sqlite3_column_bytes(ptr noundef %i.fr, i32 noundef %.085) #45 ; 7 uses
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.fu = call ptr @sqlite3_column_blob(ptr noundef %i.ft, i32 noundef %.085) #45 ; 3 uses
  call void (ptr, ptr, ...) @hash_step_vformat(ptr noundef %3, ptr noundef nonnull @.str.295, i32 noundef %i.fs)
  %i.fv = load i32, ptr %i.k, align 4, !tbaa !53  ; 3 uses
  %i.fw = shl i32 %i.fs, 3
  %i.fx = add i32 %i.fv, %i.fw                    ; 2 uses
  store i32 %i.fx, ptr %i.k, align 4, !tbaa !53
  %i.fy = icmp ult i32 %i.fx, %i.fv
  br i1 %i.fy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fz = lshr i32 %i.fs, 29
  %i.ga = add nuw nsw i32 %i.fz, 1
  %i.gb = load i32, ptr %i.l, align 8, !tbaa !53
  %i.gc = add i32 %i.ga, %i.gb
  store i32 %i.gc, ptr %i.l, align 8, !tbaa !53
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = lshr i32 %i.fv, 3
  %i.ge = and i32 %i.gd, 63                       ; 4 uses
  %i.gf = add i32 %i.ge, %i.fs
  %i.gg = icmp ugt i32 %i.gf, 63
  %i.gh = zext nneg i32 %i.ge to i64              ; 2 uses
  br i1 %i.gg, label %bb.aj, label %hash_step.exit78

bb.aj:                                            ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.gh
  %i.gj = sub nuw nsw i32 64, %i.ge               ; 3 uses
  %i.gk = zext nneg i32 %i.gj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gi, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.fu, i64 %i.gk, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  %i.gl = xor i32 %i.ge, 127
  %i.gm = icmp ult i32 %i.gl, %i.fs
  br i1 %i.gm, label %.lr.ph.i76, label %hash_step.exit78

.lr.ph.i76:                                       ; preds = %bb.aj, %.lr.ph.i76
  %.02627.i77 = phi i32 [ %i.gp, %.lr.ph.i76 ], [ %i.gj, %bb.aj ] ; 3 uses
  %i.gn = zext i32 %.02627.i77 to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gn
  call fastcc void @SHA1Transform(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.go)
  %i.gp = add i32 %.02627.i77, 64                 ; 2 uses
  %i.gq = add i32 %.02627.i77, 127
  %i.gr = icmp ult i32 %i.gq, %i.fs
  br i1 %i.gr, label %.lr.ph.i76, label %hash_step.exit78, !llvm.loop !10

hash_step.exit78:                                 ; preds = %.lr.ph.i76, %bb.ai, %bb.aj
  %.1.i74 = phi i32 [ 0, %bb.ai ], [ %i.gj, %bb.aj ], [ %i.gp, %.lr.ph.i76 ] ; 2 uses
  %.0.i75 = phi i64 [ %i.gh, %bb.ai ], [ 0, %bb.aj ], [ 0, %.lr.ph.i76 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i75
  %i.gt = zext i32 %.1.i74 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gt
  %i.gv = sub i32 %i.fs, %.1.i74
  %i.gw = zext i32 %i.gv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr readonly align 1 %i.gu, i64 %i.gw, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %hash_step.exit58, %hash_step.exit63, %hash_step.exit68, %hash_step.exit73, %hash_step.exit78
  %i.gx = add nuw nsw i32 %.085, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gx, %i.ag
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !752

._crit_edge:                                      ; preds = %.loopexit, %hash_step.exit
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.gz = call i32 @sqlite3_finalize(ptr noundef %i.gy) #45 ; 0 uses
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !52
  %.not = icmp eq i8 %i.hb, 0
  br i1 %.not, label %._crit_edge90, label %bb.c, !llvm.loop !753

._crit_edge90:                                    ; preds = %._crit_edge, %bb.b
  call fastcc void @hash_finish(ptr noundef %3, ptr noundef %i.c, i32 noundef 0)
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 40, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %._crit_edge90, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_uint_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_create_collation(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef null, ptr noundef nonnull @uintCollFunc) #45
  ret i32 %i.a
}

declare i32 @sqlite3_create_collation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @uintCollFunc(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp sgt i32 %3, 0
end_hunk_0
begin_hunk_1_@ieee754func:bb.a
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.aq, %i.at
  %i.av = bitcast i64 %i.au to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.aw = load ptr, ptr %2, align 8, !tbaa !126
  %i.ax = tail call double @sqlite3_value_double(ptr noundef %i.aw) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.082 = phi double [ %i.av, %bb.d ], [ %i.ax, %bb.e ] ; 3 uses
  %i.ay = fcmp uge double %.082, 0.000000e+00     ; 2 uses
  %i.az = fneg double %.082
  %.183 = select i1 %i.ay, double %.082, double %i.az
  %i.ba = bitcast double %.183 to i64             ; 5 uses
  switch i64 %i.ba, label %bb.h [
    i64 0, label %bb.i
    i64 -9223372036854775808, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bb = ashr i64 %i.ba, 52                      ; 3 uses
  %i.bc = trunc nsw i64 %i.bb to i32              ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 0
  %i.be = shl nuw nsw i64 %i.ba, 1
  %i.bf = and i64 %i.ba, 4503599627370495
  %i.bg = or disjoint i64 %i.bf, 4503599627370496
  %.084 = select i1 %i.bd, i64 %i.be, i64 %i.bg   ; 4 uses
  %i.bh = icmp slt i64 %i.bb, 1075
  %i.bi = icmp ne i64 %.084, 0
  %i.bj = and i64 %.084, 1
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = and i1 %i.bi, %i.bk
  %i.bm = select i1 %i.bh, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %bb.h, %.lr.ph112
  %.080110 = phi i32 [ %i.bo, %.lr.ph112 ], [ %i.bc, %bb.h ] ; 2 uses
  %.185109 = phi i64 [ %i.bn, %.lr.ph112 ], [ %.084, %bb.h ] ; 3 uses
  %i.bn = lshr exact i64 %.185109, 1              ; 2 uses
  %i.bo = add nsw i32 %.080110, 1                 ; 2 uses
  %i.bp = icmp slt i32 %.080110, 1074
  %i.bq = icmp ne i64 %.185109, 0
  %i.br = and i64 %.185109, 2
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = and i1 %i.bq, %i.bs
  %i.bu = select i1 %i.bp, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph112, label %._crit_edge113, !llvm.loop !770

._crit_edge113:                                   ; preds = %.lr.ph112, %bb.h
  %.185.lcssa = phi i64 [ %.084, %bb.h ], [ %i.bn, %.lr.ph112 ] ; 2 uses
  %.080.lcssa = phi i32 [ %i.bc, %bb.h ], [ %i.bo, %.lr.ph112 ]
  %i.bv = sub nsw i64 0, %.185.lcssa
  %spec.select = select i1 %i.ay, i64 %.185.lcssa, i64 %i.bv
  %i.bw = add nsw i32 %.080.lcssa, -1075
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge113, %bb.f, %bb.g
  %.286 = phi i64 [ %spec.select, %._crit_edge113 ], [ -1, %bb.g ], [ %i.ba, %bb.f ] ; 2 uses
  %.181 = phi i32 [ %i.bw, %._crit_edge113 ], [ -3071, %bb.g ], [ -1075, %bb.f ] ; 2 uses
  %i.bx = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !53
  switch i32 %i.by, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.315, i64 noundef %.286, i32 noundef %.181) #45 ; 0 uses
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %.286) #45
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @sqlite3_result_int(ptr noundef %0, i32 noundef %.181) #45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.ca = load ptr, ptr %2, align 8, !tbaa !126
  %i.cb = tail call i64 @sqlite3_value_int64(ptr noundef %i.ca) #45 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !126
  %i.ce = tail call i64 @sqlite3_value_int64(ptr noundef %i.cd) #45
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 -10000)
  %.072 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 10000) ; 3 uses
  %i.cf = icmp sgt i64 %i.cb, -1
  br i1 %i.cf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = icmp eq i64 %i.cb, -9223372036854775808
  br i1 %i.cg, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = sub nsw i64 0, %i.cb
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ci = icmp eq i64 %i.cb, 0
  %i.cj = add nsw i64 %.072, 999
  %i.ck = icmp ult i64 %i.cj, 1999
  %or.cond5 = and i1 %i.ci, %i.ck
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef 0.000000e+00) #45
  br label %bb.w

bb.s:                                             ; preds = %bb.q, %bb.p
  %.073 = phi i64 [ %i.ch, %bb.p ], [ %i.cb, %bb.q ] ; 3 uses
  %.not98 = icmp samesign ult i64 %.073, 9007199254740992
  br i1 %.not98, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.s
  %.174.lcssa = phi i64 [ %.073, %bb.s ], [ %i.cn, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i64 [ %.072, %bb.s ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.cl = add nsw i64 %.174.lcssa, -1
  %i.cm = icmp ult i64 %i.cl, 4503599627370495
  br i1 %i.cm, label %.lr.ph104, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.1100 = phi i64 [ %i.co, %.lr.ph ], [ %.072, %bb.s ]
  %.17499 = phi i64 [ %i.cn, %.lr.ph ], [ %.073, %bb.s ] ; 2 uses
  %i.cn = lshr i64 %.17499, 1                     ; 2 uses
  %i.co = add nsw i64 %.1100, 1                   ; 2 uses
  %.not = icmp ult i64 %.17499, 18014398509481984
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !771

.lr.ph104:                                        ; preds = %.preheader, %.lr.ph104
  %.2103 = phi i64 [ %i.cq, %.lr.ph104 ], [ %.1.lcssa, %.preheader ]
  %.275102 = phi i64 [ %i.cp, %.lr.ph104 ], [ %.174.lcssa, %.preheader ] ; 2 uses
  %i.cp = shl nuw nsw i64 %.275102, 1             ; 2 uses
  %i.cq = add nsw i64 %.2103, -1                  ; 2 uses
  %i.cr = icmp ult i64 %.275102, 2251799813685248
  br i1 %i.cr, label %.lr.ph104, label %._crit_edge, !llvm.loop !772

._crit_edge:                                      ; preds = %.lr.ph104, %.preheader
  %.275.lcssa = phi i64 [ %.174.lcssa, %.preheader ], [ %i.cp, %.lr.ph104 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader ], [ %i.cq, %.lr.ph104 ] ; 4 uses
  %i.cs = icmp slt i64 %.2.lcssa, -1074
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ct = icmp samesign ult i64 %.2.lcssa, -1137
  %i.cu = sub nuw nsw i64 -1074, %.2.lcssa
  %i.cv = lshr i64 %.275.lcssa, %i.cu
  %.376 = select i1 %i.ct, i64 0, i64 %i.cv
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cw = tail call i64 @llvm.smin.i64(i64 %.2.lcssa, i64 972)
  %spec.store.select6 = shl nsw i64 %i.cw, 52
  %i.cx = add nsw i64 %spec.store.select6, 4841369599423283200
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.4 = phi i64 [ %.376, %bb.t ], [ %.275.lcssa, %bb.u ]
  %.3 = phi i64 [ 0, %bb.t ], [ %i.cx, %bb.u ]
  %i.cy = and i64 %.4, 4503599627370495
  %i.cz = and i64 %i.cb, -9223372036854775808
  %i.da = or i64 %.3, %i.cz
  %spec.select97 = or i64 %i.da, %i.cy
  %i.db = bitcast i64 %spec.select97 to double
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.db) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.o, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func_to_blob(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !126
  %i.c = tail call i32 @sqlite3_value_type(ptr noundef %i.b) #45
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !126
  %i.f = tail call i32 @sqlite3_value_type(ptr noundef %i.e) #45
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !126
  %i.i = tail call double @sqlite3_value_double(ptr noundef %i.h) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %3 = bitcast double %i.i to i64
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  store i64 %4, ptr %i.a, align 8, !tbaa !52
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func_from_blob(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = tail call i32 @sqlite3_value_type(ptr noundef %i.a) #45
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !126
  %i.e = tail call i32 @sqlite3_value_bytes(ptr noundef %i.d) #45
  %i.f = icmp eq i32 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !126
  %i.h = tail call ptr @sqlite3_value_blob(ptr noundef %i.g) #45 ; 8 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !52
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.j, 16
  %i.o = shl nuw nsw i64 %i.m, 8
  %i.p = or disjoint i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.t, 16
  %i.y = shl nuw nsw i64 %i.w, 8
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ad, 16
  %i.ai = shl nuw nsw i64 %i.ag, 8
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  %i.ao = shl nuw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = bitcast i64 %i.as to double
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.at) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func_to_int(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = tail call i32 @sqlite3_value_type(ptr noundef %i.a) #45
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !126
  %i.e = tail call double @sqlite3_value_double(ptr noundef %i.d) #45
  %i.f = bitcast double %i.e to i64
  tail call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %i.f) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func_from_int(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = tail call i32 @sqlite3_value_type(ptr noundef %i.a) #45
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !126
  %i.e = tail call i64 @sqlite3_value_int64(ptr noundef %i.d) #45
  %i.f = bitcast i64 %i.e to double
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.f) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754inc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = tail call double @sqlite3_value_double(ptr noundef %i.a) #45
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.e = tail call i64 @sqlite3_value_int64(ptr noundef %i.d) #45
  %i.f = bitcast double %i.b to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = bitcast i64 %i.g to double
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.h) #45
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_series_init(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_libversion_number() #45
  %i.b = icmp slt i32 %i.a, 3008012
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.26) #45
  store ptr %i.d, ptr %1, align 8, !tbaa !88
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @seriesModule, ptr noundef null) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0
}

declare i32 @sqlite3_libversion_number() local_unnamed_addr #5

declare ptr @sqlite3_mprintf(ptr noundef, ...) local_unnamed_addr #5

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @sqlite3_regexp_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 2099201, ptr noundef null, ptr noundef nonnull @re_sql_func, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 2099201, ptr noundef %0, ptr noundef nonnull @re_sql_func, ptr noundef null, ptr noundef null) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @re_sql_func(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %3 = alloca [2 x %struct.ReStateSet], align 16  ; 7 uses
  %i.a = alloca [100 x i16], align 16             ; 4 uses
  %4 = alloca %struct.ReInput, align 8            ; 6 uses
  %i.b = tail call ptr @sqlite3_get_auxdata(ptr noundef %0, i32 noundef 0) #45 ; 2 uses
  %.not47 = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not47, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.d = tail call i32 @sqlite3_limit(ptr noundef %i.c, i32 noundef 8, i32 noundef -1) #45 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !126
  %i.f = tail call ptr @sqlite3_value_text(ptr noundef %i.e) #45 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8, !tbaa !126
  %i.i = tail call i32 @sqlite3_value_bytes(ptr noundef %i.h) #45
  %i.j = icmp sgt i32 %i.i, %i.d
  br i1 %i.j, label %sqlite3re_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.l = icmp ne ptr %i.k, null                   ; 2 uses
  %i.m = tail call ptr @sqlite3_malloc64(i64 noundef 80) #45 ; 28 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %sqlite3re_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@KeccakF1600Step:bb.a
  %i.uf = xor i64 %i.tx, %i.pt                    ; 2 uses
  %i.ug = tail call i64 @llvm.fshl.i64(i64 %i.uf, i64 %i.uf, i64 44) ; 3 uses
  %i.uh = xor i64 %i.tz, %i.qv                    ; 2 uses
  %i.ui = tail call i64 @llvm.fshl.i64(i64 %i.uh, i64 %i.uh, i64 43) ; 3 uses
  %i.uj = xor i64 %i.ub, %i.rx                    ; 2 uses
  %i.uk = tail call i64 @llvm.fshl.i64(i64 %i.uj, i64 %i.uj, i64 21) ; 3 uses
  %i.ul = xor i64 %i.ud, %i.sz                    ; 2 uses
  %i.um = tail call i64 @llvm.fshl.i64(i64 %i.ul, i64 %i.ul, i64 14) ; 3 uses
  %i.un = xor i64 %i.ug, -1
  %i.uo = and i64 %i.ui, %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !130
  %i.ur = xor i64 %i.uo, %i.uq
  %i.us = xor i64 %i.ur, %i.ue                    ; 2 uses
  %i.ut = xor i64 %i.ui, -1
  %i.uu = and i64 %i.uk, %i.ut
  %i.uv = xor i64 %i.ug, %i.uu                    ; 2 uses
  %i.uw = xor i64 %i.uk, -1
  %i.ux = and i64 %i.um, %i.uw
  %i.uy = xor i64 %i.ux, %i.ui                    ; 2 uses
  %i.uz = xor i64 %i.um, -1
  %i.va = and i64 %i.ue, %i.uz
  %i.vb = xor i64 %i.va, %i.uk                    ; 2 uses
  %i.vc = xor i64 %i.ue, -1
  %i.vd = and i64 %i.ug, %i.vc
  %i.ve = xor i64 %i.um, %i.vd                    ; 2 uses
  %i.vf = xor i64 %i.tv, %i.qp                    ; 2 uses
  %i.vg = tail call i64 @llvm.fshl.i64(i64 %i.vf, i64 %i.vf, i64 3) ; 3 uses
  %i.vh = xor i64 %i.tx, %i.rr                    ; 2 uses
  %i.vi = tail call i64 @llvm.fshl.i64(i64 %i.vh, i64 %i.vh, i64 45) ; 3 uses
  %i.vj = xor i64 %i.tz, %i.st                    ; 2 uses
  %i.vk = tail call i64 @llvm.fshl.i64(i64 %i.vj, i64 %i.vj, i64 61) ; 3 uses
  %i.vl = xor i64 %i.ub, %i.pa                    ; 2 uses
  %i.vm = tail call i64 @llvm.fshl.i64(i64 %i.vl, i64 %i.vl, i64 28) ; 3 uses
  %i.vn = xor i64 %i.ud, %i.qc                    ; 2 uses
  %i.vo = tail call i64 @llvm.fshl.i64(i64 %i.vn, i64 %i.vn, i64 20) ; 3 uses
  %i.vp = xor i64 %i.vo, -1
  %i.vq = and i64 %i.vg, %i.vp
  %i.vr = xor i64 %i.vq, %i.vm                    ; 2 uses
  %i.vs = xor i64 %i.vg, -1
  %i.vt = and i64 %i.vi, %i.vs
  %i.vu = xor i64 %i.vo, %i.vt                    ; 2 uses
  %i.vv = xor i64 %i.vi, -1
  %i.vw = and i64 %i.vk, %i.vv
  %i.vx = xor i64 %i.vw, %i.vg                    ; 2 uses
  %i.vy = xor i64 %i.vk, -1
  %i.vz = and i64 %i.vm, %i.vy
  %i.wa = xor i64 %i.vi, %i.vz                    ; 2 uses
  %i.wb = xor i64 %i.vm, -1
  %i.wc = and i64 %i.vo, %i.wb
  %i.wd = xor i64 %i.wc, %i.vk                    ; 2 uses
  %i.we = xor i64 %i.tv, %i.sn                    ; 2 uses
  %i.wf = tail call i64 @llvm.fshl.i64(i64 %i.we, i64 %i.we, i64 18) ; 3 uses
  %i.wg = xor i64 %i.tx, %i.ou                    ; 2 uses
  %i.wh = tail call i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 1) ; 3 uses
  %i.wi = xor i64 %i.tz, %i.pw                    ; 2 uses
  %i.wj = tail call i64 @llvm.fshl.i64(i64 %i.wi, i64 %i.wi, i64 6) ; 3 uses
  %i.wk = xor i64 %i.ub, %i.qy                    ; 2 uses
  %i.wl = tail call i64 @llvm.fshl.i64(i64 %i.wk, i64 %i.wk, i64 25) ; 3 uses
  %i.wm = xor i64 %i.ud, %i.sa                    ; 2 uses
  %i.wn = tail call i64 @llvm.fshl.i64(i64 %i.wm, i64 %i.wm, i64 8) ; 3 uses
  %i.wo = xor i64 %i.wj, -1
  %i.wp = and i64 %i.wl, %i.wo
  %i.wq = xor i64 %i.wh, %i.wp                    ; 2 uses
  %i.wr = xor i64 %i.wl, -1
  %i.ws = and i64 %i.wn, %i.wr
  %i.wt = xor i64 %i.ws, %i.wj                    ; 2 uses
  %i.wu = xor i64 %i.wn, -1
  %i.wv = and i64 %i.wf, %i.wu
  %i.ww = xor i64 %i.wv, %i.wl                    ; 2 uses
  %i.wx = xor i64 %i.wf, -1
  %i.wy = and i64 %i.wh, %i.wx
  %i.wz = xor i64 %i.wn, %i.wy                    ; 2 uses
  %i.xa = xor i64 %i.wh, -1
  %i.xb = and i64 %i.wj, %i.xa
  %i.xc = xor i64 %i.xb, %i.wf                    ; 2 uses
  %i.xd = xor i64 %i.tv, %i.pq                    ; 2 uses
  %i.xe = tail call i64 @llvm.fshl.i64(i64 %i.xd, i64 %i.xd, i64 36) ; 3 uses
  %i.xf = xor i64 %i.tx, %i.qs                    ; 2 uses
  %i.xg = tail call i64 @llvm.fshl.i64(i64 %i.xf, i64 %i.xf, i64 10) ; 3 uses
  %i.xh = xor i64 %i.tz, %i.ru                    ; 2 uses
  %i.xi = tail call i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 15) ; 3 uses
  %i.xj = xor i64 %i.ub, %i.sw                    ; 2 uses
  %i.xk = tail call i64 @llvm.fshl.i64(i64 %i.xj, i64 %i.xj, i64 56) ; 3 uses
  %i.xl = xor i64 %i.ud, %i.pd                    ; 2 uses
  %i.xm = tail call i64 @llvm.fshl.i64(i64 %i.xl, i64 %i.xl, i64 27) ; 3 uses
  %i.xn = xor i64 %i.xe, -1
  %i.xo = and i64 %i.xg, %i.xn
  %i.xp = xor i64 %i.xm, %i.xo                    ; 2 uses
  %i.xq = xor i64 %i.xg, -1
  %i.xr = and i64 %i.xi, %i.xq
  %i.xs = xor i64 %i.xr, %i.xe                    ; 2 uses
  %i.xt = xor i64 %i.xi, -1
  %i.xu = and i64 %i.xk, %i.xt
  %i.xv = xor i64 %i.xg, %i.xu                    ; 2 uses
  %i.xw = xor i64 %i.xk, -1
  %i.xx = and i64 %i.xm, %i.xw
  %i.xy = xor i64 %i.xx, %i.xi                    ; 2 uses
  %i.xz = xor i64 %i.xm, -1
  %i.ya = and i64 %i.xe, %i.xz
  %i.yb = xor i64 %i.ya, %i.xk                    ; 2 uses
  %i.yc = xor i64 %i.tv, %i.ro                    ; 2 uses
  %i.yd = tail call i64 @llvm.fshl.i64(i64 %i.yc, i64 %i.yc, i64 41) ; 3 uses
  %i.ye = xor i64 %i.tx, %i.sq                    ; 2 uses
  %i.yf = tail call i64 @llvm.fshl.i64(i64 %i.ye, i64 %i.ye, i64 2) ; 3 uses
  %i.yg = xor i64 %i.tz, %i.ox                    ; 2 uses
  %i.yh = tail call i64 @llvm.fshl.i64(i64 %i.yg, i64 %i.yg, i64 62) ; 3 uses
  %i.yi = xor i64 %i.ub, %i.pz                    ; 2 uses
  %i.yj = tail call i64 @llvm.fshl.i64(i64 %i.yi, i64 %i.yi, i64 55) ; 3 uses
  %i.yk = xor i64 %i.ud, %i.rb                    ; 2 uses
  %i.yl = tail call i64 @llvm.fshl.i64(i64 %i.yk, i64 %i.yk, i64 39) ; 3 uses
  %i.ym = xor i64 %i.yj, -1
  %i.yn = and i64 %i.yl, %i.ym
  %i.yo = xor i64 %i.yn, %i.yh                    ; 2 uses
  %i.yp = xor i64 %i.yl, -1
  %i.yq = and i64 %i.yd, %i.yp
  %i.yr = xor i64 %i.yq, %i.yj                    ; 2 uses
  %i.ys = xor i64 %i.yd, -1
  %i.yt = and i64 %i.yf, %i.ys
  %i.yu = xor i64 %i.yl, %i.yt                    ; 2 uses
  %i.yv = xor i64 %i.yf, -1
  %i.yw = and i64 %i.yh, %i.yv
  %i.yx = xor i64 %i.yw, %i.yd                    ; 2 uses
  %i.yy = xor i64 %i.yh, -1
  %i.yz = and i64 %i.yj, %i.yy
  %i.za = xor i64 %i.yf, %i.yz                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.zb = icmp samesign ult i64 %indvars.iv, 20
  br i1 %i.zb, label %bb.b, label %bb.c, !llvm.loop !1072

bb.c:                                             ; preds = %bb.b
  store i64 %i.us, ptr %0, align 8, !tbaa !52
  store i64 %i.vr, ptr %i.a, align 8, !tbaa !52
  store i64 %i.wq, ptr %i.b, align 8, !tbaa !52
  store i64 %i.xp, ptr %i.c, align 8, !tbaa !52
  store i64 %i.yo, ptr %i.d, align 8, !tbaa !52
  store i64 %i.uv, ptr %i.e, align 8, !tbaa !52
  store i64 %i.vu, ptr %i.f, align 8, !tbaa !52
  store i64 %i.wt, ptr %i.g, align 8, !tbaa !52
  store i64 %i.xs, ptr %i.h, align 8, !tbaa !52
  store i64 %i.yr, ptr %i.i, align 8, !tbaa !52
  store i64 %i.uy, ptr %i.j, align 8, !tbaa !52
  store i64 %i.vx, ptr %i.k, align 8, !tbaa !52
  store i64 %i.ww, ptr %i.l, align 8, !tbaa !52
  store i64 %i.xv, ptr %i.m, align 8, !tbaa !52
  store i64 %i.yu, ptr %i.n, align 8, !tbaa !52
  store i64 %i.vb, ptr %i.o, align 8, !tbaa !52
  store i64 %i.wa, ptr %i.p, align 8, !tbaa !52
  store i64 %i.wz, ptr %i.q, align 8, !tbaa !52
  store i64 %i.xy, ptr %i.r, align 8, !tbaa !52
  store i64 %i.yx, ptr %i.s, align 8, !tbaa !52
  store i64 %i.ve, ptr %i.t, align 8, !tbaa !52
  store i64 %i.wd, ptr %i.u, align 8, !tbaa !52
  store i64 %i.xc, ptr %i.v, align 8, !tbaa !52
  store i64 %i.yb, ptr %i.w, align 8, !tbaa !52
  store i64 %i.za, ptr %i.x, align 8, !tbaa !52
  ret void
}

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @sha3UpdateFromValue(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 7 uses
  %i.b = alloca [9 x i8], align 1                 ; 7 uses
  %i.c = tail call i32 @sqlite3_value_type(ptr noundef %1) #45
  switch i32 %i.c, label %SHA3Update.exit [
    i32 5, label %.lr.ph32.i
    i32 1, label %bb.c
    i32 2, label %bb.h
    i32 3, label %bb.m
    i32 4, label %bb.u
  ]

.lr.ph32.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = xor i8 %i.i, 78
  store i8 %i.j, ptr %i.h, align 1, !tbaa !52
  %i.k = load i32, ptr %i.d, align 4, !tbaa !131
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !131
  %i.m = load i32, ptr %i.f, align 8, !tbaa !129
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %SHA3Update.exit

bb.b:                                             ; preds = %.lr.ph32.i
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.d, align 4, !tbaa !131
  br label %SHA3Update.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.o = tail call i64 @sqlite3_value_int64(ptr noundef %1) #45
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %i.o)
  store i64 %2, ptr %i.p, align 1, !tbaa !52
  store i8 73, ptr %i.a, align 1, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 3 uses
  %i.s = and i32 %i.r, 7
  %i.t = icmp eq i32 %i.s, 0
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  %or.cond.i33 = and i1 %i.w, %i.t
  br i1 %or.cond.i33, label %.lr.ph.i, label %.lr.ph32.i34

.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.y = load i64, ptr %i.a, align 8, !tbaa !130
  %i.z = lshr exact i32 %i.r, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.ad = xor i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !52
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !131
  %i.af = add i32 %i.ae, 8                        ; 3 uses
  store i32 %i.af, ptr %i.q, align 4, !tbaa !131
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %.lr.ph32.i34, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.q, align 4, !tbaa !131
  br label %.lr.ph32.i34

.lr.ph32.i34:                                     ; preds = %.lr.ph.i, %bb.d, %bb.c
  %.1.i84 = phi i64 [ 0, %bb.c ], [ 8, %bb.d ], [ 8, %.lr.ph.i ]
  %i.ah = phi i32 [ %i.r, %bb.c ], [ 0, %bb.d ], [ %i.af, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i34
  %i.aj = phi i32 [ %i.ah, %.lr.ph32.i34 ], [ %i.au, %bb.g ]
  %indvars.iv35.i35 = phi i64 [ %.1.i84, %.lr.ph32.i34 ], [ %indvars.iv.next36.i36, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35.i35
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = xor i8 %i.ao, %i.al
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !52
  %i.aq = load i32, ptr %i.q, align 4, !tbaa !131
  %i.ar = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.ar, ptr %i.q, align 4, !tbaa !131
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !129
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.q, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi i32 [ %i.ar, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next36.i36 = add nuw nsw i64 %indvars.iv35.i35, 1 ; 2 uses
  %i.av = and i64 %indvars.iv.next36.i36, 4294967295
  %exitcond.not.i38 = icmp eq i64 %i.av, 9
  br i1 %exitcond.not.i38, label %SHA3Update.exit39, label %bb.e, !llvm.loop !9

SHA3Update.exit39:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %SHA3Update.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.aw = tail call double @sqlite3_value_double(ptr noundef %1) #45
  %3 = bitcast double %i.aw to i64
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %3)
  store i64 %5, ptr %4, align 1, !tbaa !52
  store i8 70, ptr %i.b, align 1, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131 ; 3 uses
  %i.az = and i32 %i.ay, 7
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = ptrtoint ptr %i.b to i64
  %i.bc = and i64 %i.bb, 7
  %i.bd = icmp eq i64 %i.bc, 0
  %or.cond.i40 = and i1 %i.bd, %i.ba
  br i1 %or.cond.i40, label %.lr.ph.i48, label %.lr.ph32.i43

.lr.ph.i48:                                       ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !130
  %i.bg = lshr exact i32 %i.ay, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !52
  %i.bk = xor i64 %i.bj, %i.bf
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !52
  %i.bl = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.bm = add i32 %i.bl, 8                        ; 3 uses
  store i32 %i.bm, ptr %i.ax, align 4, !tbaa !131
  %i.bn = load i32, ptr %i.be, align 8, !tbaa !129
  %.not.i50 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i50, label %.lr.ph32.i43, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i48
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ax, align 4, !tbaa !131
  br label %.lr.ph32.i43

.lr.ph32.i43:                                     ; preds = %.lr.ph.i48, %bb.i, %bb.h
  %.1.i4286 = phi i64 [ 0, %bb.h ], [ 8, %bb.i ], [ 8, %.lr.ph.i48 ]
  %i.bo = phi i32 [ %i.ay, %bb.h ], [ 0, %bb.i ], [ %i.bm, %.lr.ph.i48 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph32.i43
  %i.bq = phi i32 [ %i.bo, %.lr.ph32.i43 ], [ %i.cb, %bb.l ]
  %indvars.iv35.i44 = phi i64 [ %.1.i4286, %.lr.ph32.i43 ], [ %indvars.iv.next36.i45, %bb.l ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv35.i44
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !52
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !52
  %i.bw = xor i8 %i.bv, %i.bs
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !52
  %i.bx = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.by = add i32 %i.bx, 1                        ; 3 uses
  store i32 %i.by, ptr %i.ax, align 4, !tbaa !131
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !129
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ax, align 4, !tbaa !131
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cb = phi i32 [ %i.by, %bb.j ], [ 0, %bb.k ]
  %indvars.iv.next36.i45 = add nuw nsw i64 %indvars.iv35.i44, 1 ; 2 uses
  %i.cc = and i64 %indvars.iv.next36.i45, 4294967295
  %exitcond.not.i47 = icmp eq i64 %i.cc, 9
  br i1 %exitcond.not.i47, label %SHA3Update.exit53, label %bb.j, !llvm.loop !9

SHA3Update.exit53:                                ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %SHA3Update.exit

bb.m:                                             ; preds = %bb.a
  %i.cd = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.ce = tail call ptr @sqlite3_value_text(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.294, i32 noundef %i.cd)
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %SHA3Update.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !131 ; 3 uses
  %i.ci = and i32 %i.ch, 7
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = ptrtoint ptr %i.ce to i64
  %i.cl = and i64 %i.ck, 7
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond.i54 = and i1 %i.cm, %i.cj
  %i.cn = icmp ugt i32 %i.cd, 7
  %or.cond33.i = and i1 %i.cn, %or.cond.i54
  br i1 %or.cond33.i, label %.lr.ph.i62, label %.loopexit29.i55

.lr.ph.i62:                                       ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.cp = zext i32 %i.cd to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i62
  %i.cq = phi i32 [ %i.ch, %.lr.ph.i62 ], [ %i.db, %bb.q ]
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i65, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.i63
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !130
  %i.ct = lshr i32 %i.cq, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !52
  %i.cx = xor i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !52
  %i.cy = load i32, ptr %i.cg, align 4, !tbaa !131
  %i.cz = add i32 %i.cy, 8                        ; 3 uses
  store i32 %i.cz, ptr %i.cg, align 4, !tbaa !131
  %i.da = load i32, ptr %i.co, align 8, !tbaa !129
  %.not.i64 = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cg, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = phi i32 [ %i.cz, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i63, 8 ; 3 uses
  %i.dc = or disjoint i64 %indvars.iv.next.i65, 7
  %i.dd = icmp samesign ult i64 %i.dc, %i.cp
  br i1 %i.dd, label %bb.o, label %.loopexit29.loopexit.i66, !llvm.loop !8

.loopexit29.loopexit.i66:                         ; preds = %bb.q
  %i.de = trunc nuw i64 %indvars.iv.next.i65 to i32
  br label %.loopexit29.i55

.loopexit29.i55:                                  ; preds = %.loopexit29.loopexit.i66, %bb.n
  %i.df = phi i32 [ %i.ch, %bb.n ], [ %i.db, %.loopexit29.loopexit.i66 ]
  %.1.i56 = phi i32 [ 0, %bb.n ], [ %i.de, %.loopexit29.loopexit.i66 ] ; 2 uses
  %i.dg = icmp ult i32 %.1.i56, %i.cd
  br i1 %i.dg, label %.lr.ph32.i57, label %SHA3Update.exit

.lr.ph32.i57:                                     ; preds = %.loopexit29.i55
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.di = zext i32 %.1.i56 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i57
  %i.dj = phi i32 [ %i.df, %.lr.ph32.i57 ], [ %i.du, %bb.t ]
  %indvars.iv35.i58 = phi i64 [ %i.di, %.lr.ph32.i57 ], [ %indvars.iv.next36.i59, %bb.t ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv35.i58
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !52
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !52
  %i.dp = xor i8 %i.do, %i.dl
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !52
  %i.dq = load i32, ptr %i.cg, align 4, !tbaa !131
  %i.dr = add i32 %i.dq, 1                        ; 3 uses
  store i32 %i.dr, ptr %i.cg, align 4, !tbaa !131
  %i.ds = load i32, ptr %i.dh, align 8, !tbaa !129
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.cg, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.du = phi i32 [ %i.dr, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next36.i59 = add nuw nsw i64 %indvars.iv35.i58, 1 ; 2 uses
  %lftr.wideiv.i60 = trunc i64 %indvars.iv.next36.i59 to i32
  %exitcond.not.i61 = icmp eq i32 %i.cd, %lftr.wideiv.i60
  br i1 %exitcond.not.i61, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.dv = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.dw = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.295, i32 noundef %i.dv)
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %SHA3Update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !131 ; 3 uses
  %i.ea = and i32 %i.dz, 7
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = and i64 %i.ec, 7
  %i.ee = icmp eq i64 %i.ed, 0
  %or.cond.i68 = and i1 %i.ee, %i.eb
  %i.ef = icmp ugt i32 %i.dv, 7
  %or.cond33.i69 = and i1 %i.ef, %or.cond.i68
  br i1 %or.cond33.i69, label %.lr.ph.i77, label %.loopexit29.i70

.lr.ph.i77:                                       ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.eh = zext i32 %i.dv to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i77
  %i.ei = phi i32 [ %i.dz, %.lr.ph.i77 ], [ %i.et, %bb.y ]
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i80, %bb.y ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.i78
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !130
end_hunk_2
begin_hunk_3_@sha3_step_vformat:bb.a

bb.c:                                             ; preds = %bb.b
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %i.u, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.x = or disjoint i64 %indvars.iv.next.i, 7
  %i.y = icmp samesign ult i64 %i.x, %i.k
  br i1 %i.y, label %bb.b, label %.loopexit29.loopexit.i, !llvm.loop !8

.loopexit29.loopexit.i:                           ; preds = %bb.d
  %i.z = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.loopexit.i, %bb.a
  %i.aa = phi i32 [ %i.f, %bb.a ], [ %i.w, %.loopexit29.loopexit.i ]
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.z, %.loopexit29.loopexit.i ] ; 2 uses
  %i.ab = icmp ult i32 %.1.i, %i.d
  br i1 %i.ab, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ad = zext i32 %.1.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i
  %i.ae = phi i32 [ %i.aa, %.lr.ph32.i ], [ %i.ap, %bb.g ]
  %indvars.iv35.i = phi i64 [ %i.ad, %.lr.ph32.i ], [ %indvars.iv.next36.i, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = xor i8 %i.aj, %i.ag
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !52
  %i.al = load i32, ptr %i.e, align 4, !tbaa !131
  %i.am = add i32 %i.al, 1                        ; 3 uses
  store i32 %i.am, ptr %i.e, align 4, !tbaa !131
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !129
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i32 [ %i.am, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next36.i to i32
  %exitcond.not.i = icmp eq i32 %i.d, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %SHA3Update.exit, label %bb.e, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.g, %.loopexit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare ptr @sqlite3_vsnprintf(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_context_db_handle(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_stmt_readonly(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @hash_finish(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 5 uses
  %i.d = lshr i32 %i.c, 24
  %.sroa.043.0.insert.ext = zext nneg i32 %i.d to i64
  %i.e = load i32, ptr %i.a, align 4, !tbaa !53   ; 4 uses
  %i.f = add i32 %i.e, 8                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !53
  %i.g = icmp ugt i32 %i.e, -9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = add i32 %i.c, 1
  store i32 %i.i, ptr %i.h, align 4, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = lshr i32 %i.e, 3
  %i.k = and i32 %i.j, 63                         ; 2 uses
  %i.l = icmp eq i32 %i.k, 63
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 -128, ptr %i.n, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  br label %hash_step.exit

hash_step.exit:                                   ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.f, %bb.e ], [ %.pre, %bb.d ] ; 3 uses
  %.1.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]      ; 2 uses
  %.0.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i
  %i.s = zext nneg i32 %.1.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @.str.300, i64 %i.s
  %i.u = xor i32 %.1.i, 1
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.t, i64 %i.v, i1 false)
  %i.w = and i32 %i.p, 504
  %.not35 = icmp eq i32 %i.w, 448
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hash_step.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 91
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %hash_step.exit30
  %i.z = phi i32 [ %i.p, %.lr.ph ], [ %i.ai, %hash_step.exit30 ] ; 3 uses
  %i.aa = add i32 %i.z, 8                         ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !53
  %i.ab = icmp ugt i32 %i.z, -9
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !53
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.z, 3
  %i.af = and i32 %i.ae, 63                       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 63
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.y, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.pre47 = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit30

bb.j:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  br label %hash_step.exit30

hash_step.exit30:                                 ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ %i.aa, %bb.j ], [ %.pre47, %bb.i ] ; 3 uses
  %.1.i28 = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  %.0.i29 = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %.1.i28, i1 false)
  %i.ak = and i32 %i.ai, 504
  %.not = icmp eq i32 %i.ak, 448
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !1073

._crit_edge:                                      ; preds = %hash_step.exit30, %hash_step.exit
  %.lcssa = phi i32 [ %i.p, %hash_step.exit ], [ %i.ai, %hash_step.exit30 ] ; 2 uses
  %i.al = add i32 %.lcssa, 64
  store i32 %i.al, ptr %i.a, align 4, !tbaa !53
  %i.am = icmp ugt i32 %.lcssa, -65
  br i1 %i.am, label %bb.k, label %hash_step.exit33

bb.k:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !53
  br label %hash_step.exit33

hash_step.exit33:                                 ; preds = %._crit_edge, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %trunc = zext i32 %i.e to i64
  %rev = tail call i64 @llvm.bswap.i64(i64 %trunc)
  %i.ar = shl i32 %i.c, 24
  %.sroa.6.0.insert.shift = zext i32 %i.ar to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %rev, %.sroa.6.0.insert.shift
  %i.as = shl i32 %i.c, 8
  %i.at = and i32 %i.as, 16711680
  %.sroa.544.0.insert.shift = zext nneg i32 %i.at to i64
  %.sroa.544.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.544.0.insert.shift
  %i.au = lshr i32 %i.c, 8
  %i.av = and i32 %i.au, 65280
  %.sroa.4.0.insert.shift = zext nneg i32 %i.av to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.544.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.aq, align 4
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.aw = load i32, ptr %0, align 4, !tbaa !53    ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !53 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !53 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !53 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !53 ; 4 uses
  %i.bf = lshr i32 %i.be, 24
  %i.bg = trunc nuw i32 %i.bf to i8               ; 3 uses
  %i.bh = lshr i32 %i.be, 16
  %i.bi = trunc i32 %i.bh to i8                   ; 3 uses
  %i.bj = lshr i32 %i.be, 8
  %i.bk = trunc i32 %i.bj to i8                   ; 3 uses
  %i.bl = trunc i32 %i.be to i8                   ; 3 uses
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %hash_step.exit33
  %3 = trunc i32 %i.bc to i8                      ; 2 uses
  %4 = lshr i32 %i.bc, 8
  %5 = trunc i32 %4 to i8                         ; 2 uses
  %6 = lshr i32 %i.bc, 16
  %7 = trunc i32 %6 to i8                         ; 2 uses
  %8 = lshr i32 %i.bc, 24
  %9 = trunc nuw i32 %8 to i8                     ; 2 uses
  %10 = trunc i32 %i.ba to i8                     ; 2 uses
  %11 = lshr i32 %i.ba, 8
  %12 = trunc i32 %11 to i8                       ; 2 uses
  %13 = lshr i32 %i.ba, 16
  %14 = trunc i32 %13 to i8                       ; 2 uses
  %15 = lshr i32 %i.ba, 24
  %16 = trunc nuw i32 %15 to i8                   ; 2 uses
  %17 = trunc i32 %i.ay to i8                     ; 2 uses
  %18 = lshr i32 %i.ay, 8
  %19 = trunc i32 %18 to i8                       ; 2 uses
  %20 = lshr i32 %i.ay, 16
  %21 = trunc i32 %20 to i8                       ; 2 uses
  %22 = lshr i32 %i.ay, 24
  %23 = trunc nuw i32 %22 to i8                   ; 2 uses
  %24 = trunc i32 %i.aw to i8                     ; 2 uses
  %25 = lshr i32 %i.aw, 8
  %26 = trunc i32 %25 to i8                       ; 2 uses
  %27 = lshr i32 %i.aw, 16
  %28 = trunc i32 %27 to i8                       ; 2 uses
  %29 = lshr i32 %i.aw, 24
  %30 = trunc nuw i32 %29 to i8                   ; 2 uses
  %i.bm = lshr i8 %30, 4
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52
  store i8 %i.bp, ptr %1, align 1, !tbaa !52
  %i.bq = and i8 %30, 15
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !52
  %i.bv = lshr i8 %28, 4
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !52
  %i.ca = and i8 %28, 15
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !52
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !52
  %i.cf = lshr i8 %26, 4
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !52
  %i.ck = and i8 %26, 15
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !52
  %i.cp = lshr i8 %24, 4
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !52
  %i.cu = and i8 %24, 15
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !52
  %i.cz = lshr i8 %23, 4
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !52
  %i.de = and i8 %23, 15
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !52
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !52
  %i.dj = lshr i8 %21, 4
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !52
  %i.do = and i8 %21, 15
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !52
  %i.dt = lshr i8 %19, 4
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !52
  %i.dy = and i8 %19, 15
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !52
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !52
  %i.ed = lshr i8 %17, 4
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !52
  %i.ei = and i8 %17, 15
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.el, ptr %i.em, align 1, !tbaa !52
  %i.en = lshr i8 %16, 4
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !52
  %i.es = and i8 %16, 15
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !52
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !52
  %i.ex = lshr i8 %14, 4
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !52
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !52
  %i.fc = and i8 %14, 15
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !52
  %i.fh = lshr i8 %12, 4
  %i.fi = zext nneg i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !52
  %i.fm = and i8 %12, 15
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !52
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !52
  %i.fr = lshr i8 %10, 4
  %i.fs = zext nneg i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !52
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !52
  %i.fw = and i8 %10, 15
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !52
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !52
  %i.gb = lshr i8 %9, 4
  %i.gc = zext nneg i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !52
  %i.gg = and i8 %9, 15
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !52
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !52
  %i.gl = lshr i8 %7, 4
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !52
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !52
  %i.gq = and i8 %7, 15
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !52
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !52
  %i.gv = lshr i8 %5, 4
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !52
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !52
  %i.ha = and i8 %5, 15
  %i.hb = zext nneg i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !52
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !52
  %i.hf = lshr i8 %3, 4
  %i.hg = zext nneg i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !52
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !52
  %i.hk = and i8 %3, 15
  %i.hl = zext nneg i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !52
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !52
  %i.hp = lshr i8 %i.bg, 4
  %i.hq = zext nneg i8 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !52
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !52
  %i.hu = and i8 %i.bg, 15
  %i.hv = zext nneg i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !52
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !52
  %i.hz = lshr i8 %i.bi, 4
  %i.ia = zext nneg i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !52
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !52
  %i.ie = and i8 %i.bi, 15
  %i.if = zext nneg i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !52
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !52
  %i.ij = lshr i8 %i.bk, 4
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !52
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 %i.im, ptr %i.in, align 1, !tbaa !52
  %i.io = and i8 %i.bk, 15
  %i.ip = zext nneg i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !52
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 37
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !52
  %i.it = lshr i8 %i.bl, 4
  %i.iu = zext nneg i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !52
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 38
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !52
  %i.iy = and i8 %i.bl, 15
  %i.iz = zext nneg i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !52
  br label %bb.m

bb.l:                                             ; preds = %hash_step.exit33
  %31 = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  store i32 %31, ptr %1, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %32, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %33, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %34 = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %34, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.bg, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.bi, ptr %.sroa.37.0..sroa_idx, align 1
  br label %bb.m

bb.m:                                             ; preds = %.preheader.preheader, %bb.l
  %.sink54 = phi i64 [ 39, %.preheader.preheader ], [ 18, %bb.l ]
  %.sink52 = phi i8 [ %i.jb, %.preheader.preheader ], [ %i.bk, %bb.l ]
  %.sink51 = phi i64 [ 40, %.preheader.preheader ], [ 19, %bb.l ]
  %.sink = phi i8 [ 0, %.preheader.preheader ], [ %i.bl, %bb.l ]
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %.sink54
  store i8 %.sink52, ptr %i.jc, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 %.sink51
  store i8 %.sink, ptr %i.jd, align 1
  ret void
}

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SHA1Transform(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.836.0.copyload = load i32, ptr %.sroa.836.0..sroa_idx, align 4 ; 2 uses
  %.sroa.628.0.copyload = load i32, ptr %.sroa.628.0..sroa_idx, align 4 ; 4 uses
  %.sroa.421.0.copyload = load i32, ptr %.sroa.421.0..sroa_idx, align 4 ; 5 uses
  %.sroa.211.0.copyload = load i32, ptr %.sroa.211.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0577.0.copyload = load i32, ptr %0, align 4 ; 6 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 1
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.591.0.copyload = load i32, ptr %.sroa.591.0..sroa_idx, align 1
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.549.0.copyload = load i32, ptr %.sroa.549.0..sroa_idx, align 1
  %.sroa.507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.507.0.copyload = load i32, ptr %.sroa.507.0..sroa_idx, align 1
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.465.0.copyload = load i32, ptr %.sroa.465.0..sroa_idx, align 1
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.423.0.copyload = load i32, ptr %.sroa.423.0..sroa_idx, align 1
  %.sroa.381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.381.0.copyload = load i32, ptr %.sroa.381.0..sroa_idx, align 1
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.339.0.copyload = load i32, ptr %.sroa.339.0..sroa_idx, align 1
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.297.0.copyload = load i32, ptr %.sroa.297.0..sroa_idx, align 1
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.255.0.copyload = load i32, ptr %.sroa.255.0..sroa_idx, align 1
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.213.0.copyload = load i32, ptr %.sroa.213.0..sroa_idx, align 1
  %.sroa.171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.171.0.copyload = load i32, ptr %.sroa.171.0..sroa_idx, align 1
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.129.0.copyload = load i32, ptr %.sroa.129.0..sroa_idx, align 1
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.87.0.copyload = load i32, ptr %.sroa.87.0..sroa_idx, align 1
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 1
  %.sroa.0.0.copyload = load i32, ptr %1, align 1
  %i.a = xor i32 %.sroa.421.0.copyload, %.sroa.628.0.copyload
  %i.b = and i32 %.sroa.211.0.copyload, %i.a
  %i.c = xor i32 %i.b, %.sroa.628.0.copyload
  %i.d = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload) ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %.sroa.0577.0.copyload, i32 %.sroa.0577.0.copyload, i32 5)
  %i.f = add i32 %.sroa.836.0.copyload, 1518500249
  %i.g = add i32 %i.f, %i.c
  %i.h = add i32 %i.g, %i.e
  %i.i = add i32 %i.h, %i.d                       ; 5 uses
  %i.j = tail call i32 @llvm.fshl.i32(i32 %.sroa.211.0.copyload, i32 %.sroa.211.0.copyload, i32 30) ; 4 uses
  %i.k = xor i32 %i.j, %.sroa.421.0.copyload
  %i.l = and i32 %i.k, %.sroa.0577.0.copyload
  %i.m = xor i32 %i.l, %.sroa.421.0.copyload
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.sroa.45.0.copyload) ; 2 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.i, i32 5)
  %i.p = add i32 %.sroa.628.0.copyload, 1518500249
  %i.q = add i32 %i.p, %i.m
  %i.r = add i32 %i.q, %i.n
  %i.s = add i32 %i.r, %i.o                       ; 5 uses
  %i.t = tail call i32 @llvm.fshl.i32(i32 %.sroa.0577.0.copyload, i32 %.sroa.0577.0.copyload, i32 30) ; 4 uses
  %i.u = xor i32 %i.t, %i.j
  %i.v = and i32 %i.i, %i.u
  %i.w = xor i32 %i.v, %i.j
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.sroa.87.0.copyload) ; 3 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 5)
  %i.z = add i32 %.sroa.421.0.copyload, 1518500249
  %i.aa = add i32 %i.z, %i.x
  %i.ab = add i32 %i.aa, %i.w
  %i.ac = add i32 %i.ab, %i.y                     ; 5 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.i, i32 30) ; 4 uses
  %i.ae = xor i32 %i.ad, %i.t
  %i.af = and i32 %i.s, %i.ae
  %i.ag = xor i32 %i.af, %i.t
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %.sroa.129.0.copyload) ; 3 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 5)
  %i.aj = add i32 %i.j, 1518500249
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.ag
  %i.am = add i32 %i.al, %i.ai                    ; 5 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 30) ; 4 uses
  %i.ao = xor i32 %i.an, %i.ad
  %i.ap = and i32 %i.ac, %i.ao
  %i.aq = xor i32 %i.ap, %i.ad
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %.sroa.171.0.copyload) ; 3 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 5)
  %i.at = add i32 %i.t, 1518500249
  %i.au = add i32 %i.at, %i.ar
  %i.av = add i32 %i.au, %i.aq
  %i.aw = add i32 %i.av, %i.as                    ; 5 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 30) ; 4 uses
  %i.ay = xor i32 %i.ax, %i.an
  %i.az = and i32 %i.am, %i.ay
  %i.ba = xor i32 %i.az, %i.an
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %.sroa.213.0.copyload) ; 3 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 5)
  %i.bd = add i32 %i.bb, 1518500249
  %i.be = add i32 %i.bd, %i.ad
  %i.bf = add i32 %i.be, %i.ba
  %i.bg = add i32 %i.bf, %i.bc                    ; 5 uses
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 30) ; 4 uses
  %i.bi = xor i32 %i.bh, %i.ax
  %i.bj = and i32 %i.aw, %i.bi
  %i.bk = xor i32 %i.bj, %i.ax
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %.sroa.255.0.copyload) ; 3 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 5)
  %i.bn = add i32 %i.bl, 1518500249
  %i.bo = add i32 %i.bn, %i.an
  %i.bp = add i32 %i.bo, %i.bk
  %i.bq = add i32 %i.bp, %i.bm                    ; 5 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 30) ; 4 uses
  %i.bs = xor i32 %i.br, %i.bh
  %i.bt = and i32 %i.bg, %i.bs
  %i.bu = xor i32 %i.bt, %i.bh
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %.sroa.297.0.copyload) ; 3 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 5)
  %i.bx = add i32 %i.bv, 1518500249
  %i.by = add i32 %i.bx, %i.ax
  %i.bz = add i32 %i.by, %i.bu
  %i.ca = add i32 %i.bz, %i.bw                    ; 5 uses
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 30) ; 4 uses
  %i.cc = xor i32 %i.cb, %i.br
  %i.cd = and i32 %i.bq, %i.cc
  %i.ce = xor i32 %i.cd, %i.br
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %.sroa.339.0.copyload) ; 4 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 5)
  %i.ch = add i32 %i.cf, 1518500249
  %i.ci = add i32 %i.ch, %i.bh
  %i.cj = add i32 %i.ci, %i.ce
  %i.ck = add i32 %i.cj, %i.cg                    ; 5 uses
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 30) ; 4 uses
  %i.cm = xor i32 %i.cl, %i.cb
  %i.cn = and i32 %i.ca, %i.cm
  %i.co = xor i32 %i.cn, %i.cb
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %.sroa.381.0.copyload) ; 4 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 5)
  %i.cr = add i32 %i.cp, 1518500249
  %i.cs = add i32 %i.cr, %i.br
  %i.ct = add i32 %i.cs, %i.co
  %i.cu = add i32 %i.ct, %i.cq                    ; 5 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 30) ; 4 uses
  %i.cw = xor i32 %i.cv, %i.cl
  %i.cx = and i32 %i.ck, %i.cw
  %i.cy = xor i32 %i.cx, %i.cl
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %.sroa.423.0.copyload) ; 4 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 5)
  %i.db = add i32 %i.cz, 1518500249
  %i.dc = add i32 %i.db, %i.cb
  %i.dd = add i32 %i.dc, %i.cy
  %i.de = add i32 %i.dd, %i.da                    ; 5 uses
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 30) ; 4 uses
  %i.dg = xor i32 %i.df, %i.cv
  %i.dh = and i32 %i.cu, %i.dg
  %i.di = xor i32 %i.dh, %i.cv
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %.sroa.465.0.copyload) ; 4 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 5)
  %i.dl = add i32 %i.dj, 1518500249
  %i.dm = add i32 %i.dl, %i.cl
  %i.dn = add i32 %i.dm, %i.di
  %i.do = add i32 %i.dn, %i.dk                    ; 5 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 30) ; 4 uses
  %i.dq = xor i32 %i.dp, %i.df
  %i.dr = and i32 %i.de, %i.dq
  %i.ds = xor i32 %i.dr, %i.df
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %.sroa.507.0.copyload) ; 4 uses
  %i.du = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 5)
  %i.dv = add i32 %i.dt, 1518500249
  %i.dw = add i32 %i.dv, %i.cv
  %i.dx = add i32 %i.dw, %i.ds
  %i.dy = add i32 %i.dx, %i.du                    ; 5 uses
  %i.dz = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 30) ; 4 uses
  %i.ea = xor i32 %i.dz, %i.dp
  %i.eb = and i32 %i.do, %i.ea
  %i.ec = xor i32 %i.eb, %i.dp
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %.sroa.549.0.copyload) ; 5 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 5)
  %i.ef = add i32 %i.ed, 1518500249
  %i.eg = add i32 %i.ef, %i.df
end_hunk_3
begin_hunk_4_@apndAccess:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1, i32 noundef %2, ptr noundef %3) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndFullPathname(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1, i32 noundef %2, ptr noundef %3) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @apndDlOpen(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !286
  %i.e = tail call ptr %i.d(ptr noundef %i.b, ptr noundef %1) #45
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal void @apndDlError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287
  tail call void %i.d(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @apndDlSym(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = tail call ptr %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #45
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal void @apndDlClose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  tail call void %i.d(ptr noundef %i.b, ptr noundef %1) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @apndRandomness(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !250
  %i.e = tail call i32 %i.d(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndSleep(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.e = tail call i32 %i.d(ptr noundef %i.b, i32 noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndCurrentTime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !252
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndGetLastError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.e = tail call i32 %i.d(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndCurrentTimeInt64(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndSetSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @apndGetSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292
  %i.e = tail call ptr %i.d(ptr noundef %i.b, ptr noundef %1) #45
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @apndNextSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.e = tail call ptr %i.d(ptr noundef %i.b, ptr noundef %1) #45
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndClose(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndRead(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !275
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !550
  %i.g = add nsw i64 %i.f, %3
  %i.h = tail call i32 %i.d(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i64 noundef %i.g) #45
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal i32 @apndWrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 6 uses
  %i.b = sext i32 %2 to i64
  %i.c = add nsw i64 %3, %i.b                     ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1073741823
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !549  ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !550 ; 3 uses
  %.pre26 = add nsw i64 %.pre, %i.c               ; 3 uses
  %i.i = icmp sgt i64 %.pre26, %i.g
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.60, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %4 = tail call i64 @llvm.bswap.i64(i64 %.pre)
  store i64 %4, ptr %i.j, align 1, !tbaa !52
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276
  %i.n = call i32 %i.m(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 25, i64 noundef %.pre26) #45, !inline_history !28 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %apndWriteMark.exit.thread, label %apndWriteMark.exit

apndWriteMark.exit.thread:                        ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre26, ptr %i.f, align 8, !tbaa !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %.pre25 = load i64, ptr %i.p, align 8, !tbaa !550
  br label %bb.c

apndWriteMark.exit:                               ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %apndWriteMark.exit.thread
  %i.q = phi i64 [ %.pre25, %apndWriteMark.exit.thread ], [ %.pre, %bb.b ]
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !276
  %i.u = add nsw i64 %i.q, %3
  %i.v = call i32 %i.t(ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %2, i64 noundef %i.u) #45
  br label %bb.d

bb.d:                                             ; preds = %apndWriteMark.exit, %bb.a, %bb.c
  %.1 = phi i32 [ %i.n, %apndWriteMark.exit ], [ %i.v, %bb.c ], [ 13, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @apndTruncate(ptr noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.60, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %2 = tail call i64 @llvm.bswap.i64(i64 %i.d)
  store i64 %2, ptr %i.e, align 1, !tbaa !52
  %i.f = add nsw i64 %i.d, %1                     ; 3 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276
  %i.j = call i32 %i.i(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 25, i64 noundef %i.f) #45, !inline_history !28
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %apndWriteMark.exit

apndWriteMark.exit:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8, !tbaa !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !277
  %i.p = add nsw i64 %i.f, 25
  %i.q = call i32 %i.o(ptr noundef nonnull %i.b, i64 noundef %i.p) #45
  br label %bb.c

bb.c:                                             ; preds = %apndWriteMark.exit, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ 10, %apndWriteMark.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @apndSync(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !278
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @apndFileSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !550
  %i.f = sub nsw i64 %i.b, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  store i64 %i.g, ptr %1, align 8, !tbaa !130
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @apndLock(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndUnlock(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndCheckReservedLock(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, ptr noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndFileControl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq i32 %1, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550
  %i.e = load i64, ptr %2, align 8, !tbaa !130
  %i.f = add nsw i64 %i.e, %i.d
  store i64 %i.f, ptr %2, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !283
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #45 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %1, 12
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550
  %i.o = load ptr, ptr %2, align 8, !tbaa !88
  %i.p = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.357, i64 noundef %i.n, ptr noundef %i.o) #45
  store ptr %i.p, ptr %2, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal i32 @apndSectorSize(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndDeviceCharacteristics(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !285
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndShmMap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndShmLock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !551
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal void @apndShmBarrier(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !552
  tail call void %i.d(ptr noundef nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @apndShmUnmap(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !553
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndFetch(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 2 uses
end_hunk_4
begin_hunk_5_@recoverEscapeCrlf:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  %.4 = phi i32 [ %i.bt, %bb.z ], [ %.3, %bb.y ]
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.aq, i32 noundef %.4, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  call void @sqlite3_free(ptr noundef nonnull %i.aq) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.m, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.ad

.critedge:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bb.b, %bb.a
  %i.bu = load ptr, ptr %2, align 8, !tbaa !126
  call void @sqlite3_result_value(ptr noundef %0, ptr noundef %i.bu) #45
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  ret void
}

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @recoverDbError(ptr nofree noundef captures(none) initializes((96, 100)) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_errcode(ptr noundef %1) #45
  %i.b = tail call ptr @sqlite3_errmsg(ptr noundef %1) #45
  %i.c = tail call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.51, ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @recoverPageCount(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !305
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %recoverFinalize.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !299
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.g = tail call ptr (ptr, ptr, ptr, ...) @recoverPreparePrintf(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef nonnull @.str.677, ptr noundef %i.f) ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.split, label %.split10

.split:                                           ; preds = %bb.b
  %i.h = tail call ptr @sqlite3_db_handle(ptr noundef null) #45
  %i.i = tail call i32 @sqlite3_finalize(ptr noundef null) #45
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %recoverFinalize.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.j = load i32, ptr %i.a, align 8, !tbaa !305
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %recoverFinalize.exit.sink.split, label %recoverFinalize.exit

.split10:                                         ; preds = %bb.b
  %i.l = tail call i32 @sqlite3_step(ptr noundef nonnull %i.g) #45 ; 0 uses
  %i.m = tail call i64 @sqlite3_column_int64(ptr noundef nonnull %i.g, i32 noundef 0) #45 ; 3 uses
  %i.n = tail call ptr @sqlite3_db_handle(ptr noundef nonnull %i.g) #45
  %i.o = tail call i32 @sqlite3_finalize(ptr noundef nonnull %i.g) #45
  %.not.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i12, label %recoverFinalize.exit, label %bb.d

bb.d:                                             ; preds = %.split10
  %i.p = load i32, ptr %i.a, align 8, !tbaa !305
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %recoverFinalize.exit.sink.split, label %recoverFinalize.exit

recoverFinalize.exit.sink.split:                  ; preds = %bb.d, %bb.c
  %.sink16 = phi ptr [ %i.h, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.1.ph = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.r = tail call i32 @sqlite3_errcode(ptr noundef %.sink16) #45
  %i.s = tail call ptr @sqlite3_errmsg(ptr noundef %.sink16) #45
  %i.t = tail call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.r, ptr noundef nonnull @.str.51, ptr noundef %i.s) ; 0 uses
  br label %recoverFinalize.exit

recoverFinalize.exit:                             ; preds = %recoverFinalize.exit.sink.split, %bb.d, %.split10, %bb.c, %.split, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %.split ], [ 0, %bb.c ], [ %i.m, %.split10 ], [ %.1.ph, %recoverFinalize.exit.sink.split ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @recoverPreparePrintf(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !305
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.e = call ptr @sqlite3_vmprintf(ptr noundef %2, ptr noundef nonnull %3) #45 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.b, align 8, !tbaa !305
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.g = load i32, ptr %i.b, align 8, !tbaa !305
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %recoverPrepare.exit

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @sqlite3_prepare_v2(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %recoverPrepare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @sqlite3_errcode(ptr noundef %1) #45
  %i.k = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  %i.l = call i32 (ptr, i32, ptr, ...) @recoverError(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull @.str.51, ptr noundef %i.k) ; 0 uses
  br label %recoverPrepare.exit

recoverPrepare.exit:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @sqlite3_free(ptr noundef nonnull %i.e) #45
  br label %bb.g

bb.g:                                             ; preds = %recoverPrepare.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.m, %recoverPrepare.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.1 = phi ptr [ %.0, %bb.g ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsClose(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #45
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsRead(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.c = icmp eq ptr %i.b, @recover_methods
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45 ; 3 uses
  %i.h = icmp eq i32 %2, 16
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_randomness(i32 noundef 16, ptr noundef %1) #45
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.g, 0
  %i.j = icmp eq i64 %3, 0
  %or.cond = and i1 %i.j, %i.i
  %i.k = icmp sgt i32 %2, 107
  %or.cond3 = and i1 %i.k, %or.cond
  br i1 %or.cond3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val = load i8, ptr %i.l, align 1, !tbaa !52
  %i.m = getelementptr i8, ptr %1, i64 17         ; 2 uses
  %.val95 = load i8, ptr %i.m, align 1, !tbaa !52
  %i.n = zext i8 %.val to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = zext i8 %.val95 to i32
  %i.q = or disjoint i32 %i.o, %i.p               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !52
  %i.t = zext i8 %i.s to i32                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw i32 %i.w, 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !52
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 0, ptr %i.a, align 8, !tbaa !130
  %i.am = load ptr, ptr @recover_g.1, align 8, !tbaa !317 ; 8 uses
  %i.an = icmp eq i32 %i.q, 1
  %spec.store.select = select i1 %i.an, i32 65536, i32 %i.q ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !271
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !279
  %i.ar = call i32 %i.aq(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #45 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !668
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !130
  %i.ax = call fastcc i32 @recoverVfsDetectPagesize(ptr noundef nonnull %i.am, ptr noundef nonnull %0, i32 noundef %i.t, i64 noundef %i.aw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.086 = phi i32 [ %i.ax, %bb.g ], [ 0, %bb.f ], [ %i.ar, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !668 ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !667
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not93 = icmp eq i32 %spec.store.select, 0
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.084101 = phi i32 [ %i.bb, %.thread ], [ %i.t, %bb.i ]
  %.08599 = phi i32 [ %i.az, %.thread ], [ %spec.store.select, %bb.i ] ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !130
  %i.bd = zext i32 %.08599 to i64
  %i.be = sdiv i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %4 = call i32 @llvm.bswap.i32(i32 %i.bf)
  %5 = bitcast i32 %4 to <4 x i8>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.084102 = phi i32 [ %.084101, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  %.085100 = phi i32 [ %.08599, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.083 = phi <4 x i8> [ %5, %bb.j ], [ zeroinitializer, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 88 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !331
  call void @sqlite3_free(ptr noundef %i.bh) #45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.bj, align 4, !tbaa !665
  %i.bk = shl nuw nsw i32 %2, 1
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !305 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bp = call ptr @sqlite3_malloc64(i64 noundef range(i64 -17179869184, 17179869177) %i.bl) #45 ; 4 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 7, ptr %i.bm, align 8, !tbaa !305
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bp, i8 0, i64 range(i64 -17179869184, 17179869177) %i.bl, i1 false)
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !331
  %i.bq = and i32 %i.al, -3
  %or.cond5 = icmp ne i32 %i.bq, 1
  %i.br = icmp ne i32 %i.al, 2
  %or.cond7 = and i1 %i.br, %or.cond5
  %i.bs = zext nneg i32 %2 to i64                 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.bi, align 8, !tbaa !666
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %1, i64 %i.bs, i1 false)
  %i.bu = sub i32 %.085100, %.084102              ; 2 uses
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = trunc i32 %i.bu to i8
  %i.by = icmp eq i32 %.085100, 65536
  %spec.store.select8 = select i1 %i.by, i32 1, i32 %.085100 ; 2 uses
  %i.bz = lshr i32 %spec.store.select8, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = trunc i32 %spec.store.select8 to i8
  %i.cc = trunc i32 %.084102 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @__const.recoverVfsRead.aHdr, i64 16, i1 false)
  store i8 %i.ca, ptr %i.l, align 1
  store i8 %i.cb, ptr %i.m, align 1
  store i8 %i.cc, ptr %i.r, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @__const.recoverVfsRead.aHdr, i64 21), i64 7, i1 false)
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store <4 x i8> %.083, ptr %.sroa.9112.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @__const.recoverVfsRead.aHdr, i64 40), i64 12, i1 false)
  %6 = call i32 @llvm.bswap.i32(i32 %i.al)
  %7 = select i1 %or.cond7, i32 16777216, i32 %6
  store i32 %7, ptr %i.u, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %.sroa.23.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(33) getelementptr inbounds nuw (i8, ptr @__const.recoverVfsRead.aHdr, i64 72), i64 33, i1 false)
  %.sroa.23128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 105
  store i8 %i.bw, ptr %.sroa.23128.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 %i.bx, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 107
  store i8 0, ptr %.sroa.25.0..sroa_idx, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ce = add nsw i64 %i.bs, -108
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cd, i8 0, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr %i.bg, align 8, !tbaa !331
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %1, i64 %i.bs, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.cg = phi i32 [ 7, %bb.m ], [ %i.bn, %bb.k ]
  store ptr null, ptr %i.bg, align 8, !tbaa !331
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %.086, %bb.n ], [ %i.cg, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.p, %bb.c
  %.2 = phi i32 [ %i.g, %bb.c ], [ %.1, %bb.p ], [ %i.g, %bb.d ]
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !275
  %i.cj = tail call i32 %i.ci(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3 = phi i32 [ %.2, %bb.q ], [ %i.cj, %bb.r ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsWrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsTruncate(ptr noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i64 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !277
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i64 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsSync(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsFileSize(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !279
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !279
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsLock(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !280
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @recoverVfsUnlock(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq ptr %i.a, @recover_methods
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @recover_g.0, align 8, !tbaa !316 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #45
  store ptr @recover_methods, ptr %0, align 8, !tbaa !271
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !281
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
end_hunk_5
