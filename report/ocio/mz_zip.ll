Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_zip?download=true
inline.NumInlined: 69
inline.NumDeleted: 11
begin_hunk_0_@mz_zip_open:bb.a
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !24
  br label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.bc = call i32 @mz_stream_read_uint16(ptr noundef %i.bb, ptr noundef nonnull %i.p) #23 ; 2 uses
  %i.bd = load i16, ptr %i.p, align 2, !tbaa !21
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !24
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.bi = call i32 @mz_stream_read_uint16(ptr noundef %i.bh, ptr noundef nonnull %i.p) #23 ; 2 uses
  %.pr.i = load i16, ptr %i.p, align 2, !tbaa !21 ; 2 uses
  %.pre.i = load i64, ptr %i.bf, align 8, !tbaa !24
  %.pre204.i.a = zext i16 %.pr.i to i64           ; 2 uses
  %i.bj = icmp eq i64 %.pre.i, %.pre204.i.a
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !25
  %.not120.i = icmp eq i8 %i.bl, 0
  br i1 %.not120.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.bo = call i32 @mz_stream_read_uint32(ptr noundef %i.bn, ptr noundef nonnull %i.q) #23 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.critedge.i, label %.thread

.critedge.i:                                      ; preds = %bb.o
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !22
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !26
  %i.bt = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.bu = call i32 @mz_stream_read_uint32(ptr noundef %i.bt, ptr noundef nonnull %i.q) #23 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.critedge128.i, label %.thread

.critedge128.i:                                   ; preds = %.critedge.i
  %i.bw = load i32, ptr %i.q, align 4, !tbaa !22
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 8 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !27
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ca = call i32 @mz_stream_read_uint16(ptr noundef %i.bz, ptr noundef nonnull %i.s) #23 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0                    ; 2 uses
  %i.cc = load i16, ptr %i.s, align 2             ; 3 uses
  %i.cd = icmp ne i16 %i.cc, 0
  %or.cond.i = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge128.i
  %i.ce = zext i16 %i.cc to i64
  %i.cf = add nuw nsw i64 %i.ce, 1
  %i.cg = call noalias ptr @malloc(i64 noundef %i.cf) #24 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !28
  %.not121.i = icmp eq ptr %i.cg, null
  br i1 %.not121.i, label %.thread241.i, label %.split.i

.split.i:                                         ; preds = %bb.p
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.cj = zext i16 %i.cc to i32
  %i.ck = call i32 @mz_stream_read(ptr noundef %i.ci, ptr noundef nonnull %i.cg, i32 noundef %i.cj) #23
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !28
  %i.cm = zext nneg i32 %spec.store.select.i to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 0, ptr %i.cn, align 1, !tbaa !29
  br label %.thread241.i

bb.q:                                             ; preds = %.critedge128.i
  br i1 %i.cb, label %.thread241.i, label %.thread

.thread241.i:                                     ; preds = %bb.q, %.split.i, %bb.p
  %i.co = icmp eq i16 %.pr.i, -1
  br i1 %i.co, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread241.i
  %i.cp = load i64, ptr %i.by, align 8, !tbaa !27 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967295
  br i1 %i.cq, label %bb.s, label %.thread186.i

bb.s:                                             ; preds = %bb.r, %.thread241.i
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !17  ; 7 uses
  %i.cs = load i64, ptr %i.o, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 0, ptr %i.k, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i32 0, ptr %i.l, align 4, !tbaa !22
  %i.ct = add nsw i64 %i.cs, -20
  %i.cu = call i32 @mz_stream_seek(ptr noundef %i.cr, i64 noundef %i.ct, i32 noundef 0) #23
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.t, label %bb.al

bb.t:                                             ; preds = %bb.s
  %i.cw = call i32 @mz_stream_read_uint32(ptr noundef %i.cr, ptr noundef nonnull %i.l) #23
  %i.cx = load i32, ptr %i.l, align 4, !tbaa !22
  %.not.i132.i = icmp eq i32 %i.cx, 117853008
  %i.cy = icmp eq i32 %i.cw, 0
  %or.cond197.i = select i1 %.not.i132.i, i1 %i.cy, i1 false
  br i1 %or.cond197.i, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.cz = call i32 @mz_stream_read_uint32(ptr noundef %i.cr, ptr noundef nonnull %i.l) #23
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.v, label %bb.al

bb.v:                                             ; preds = %bb.u
  %i.db = call i32 @mz_stream_read_uint64(ptr noundef %i.cr, ptr noundef nonnull %i.k) #23
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.dd = call i32 @mz_stream_read_uint32(ptr noundef %i.cr, ptr noundef nonnull %i.l) #23
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.x, label %bb.al

bb.x:                                             ; preds = %bb.w
  %i.df = load i64, ptr %i.k, align 8, !tbaa !20
  %i.dg = call i32 @mz_stream_seek(ptr noundef %i.cr, i64 noundef %i.df, i32 noundef 0) #23
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.di = call i32 @mz_stream_read_uint32(ptr noundef %i.cr, ptr noundef nonnull %i.l) #23
  %i.dj = load i32, ptr %i.l, align 4, !tbaa !22
  %.not19.i.i = icmp eq i32 %i.dj, 101075792
  %i.dk = icmp eq i32 %i.di, 0
  %or.cond198.i = select i1 %.not19.i.i, i1 %i.dk, i1 false
  br i1 %or.cond198.i, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.dl = load i64, ptr %i.k, align 8, !tbaa !20  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  store i64 %i.dl, ptr %i.o, align 8, !tbaa !20
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.dn = call i32 @mz_stream_seek(ptr noundef %i.dm, i64 noundef %i.dl, i32 noundef 0) #23 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.aa, label %.thread173.i

bb.aa:                                            ; preds = %bb.z
  %i.dp = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.dq = call i32 @mz_stream_read_uint32(ptr noundef %i.dp, ptr noundef nonnull %i.q) #23 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ab, label %.thread173.i

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.dt = call i32 @mz_stream_read_uint64(ptr noundef %i.ds, ptr noundef nonnull %i.r) #23 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %.thread173.i

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dx = call i32 @mz_stream_read_uint16(ptr noundef %i.dv, ptr noundef nonnull %i.dw) #23 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ad, label %.thread173.i

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ea = call i32 @mz_stream_read_uint16(ptr noundef %i.dz, ptr noundef nonnull %i.p) #23 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ae, label %.thread173.i

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ed = call i32 @mz_stream_read_uint32(ptr noundef %i.ec, ptr noundef nonnull %i.q) #23 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.af, label %.thread173.i

bb.af:                                            ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.eg = call i32 @mz_stream_read_uint32(ptr noundef %i.ef, ptr noundef nonnull %i.aw) #23 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ag, label %.thread173.i

bb.ag:                                            ; preds = %bb.af
  %i.ei = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ej = call i32 @mz_stream_read_uint64(ptr noundef %i.ei, ptr noundef nonnull %i.bf) #23 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ah, label %.thread173.i

bb.ah:                                            ; preds = %bb.ag
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.em = call i32 @mz_stream_read_uint64(ptr noundef %i.el, ptr noundef nonnull %i.n) #23
  %.pre199.i = load i64, ptr %i.n, align 8, !tbaa !20
  br label %.thread173.i

.thread173.i:                                     ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %4 = phi i64 [ %.pre199.i, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ]
  %.15.i = phi i32 [ %i.em, %bb.ah ], [ %i.ej, %bb.ag ], [ %i.eg, %bb.af ], [ %i.ed, %bb.ae ], [ %i.ea, %bb.ad ], [ %i.dx, %bb.ac ], [ %i.dt, %bb.ab ], [ %i.dq, %bb.aa ], [ %i.dn, %bb.z ]
  %i.en = load i64, ptr %i.bf, align 8, !tbaa !24
  %.not123.i = icmp eq i64 %i.en, %4
  %spec.select129.i = select i1 %.not123.i, i32 %.15.i, i32 -103 ; 2 uses
  %i.eo = icmp eq i32 %spec.select129.i, 0
  br i1 %i.eo, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %.thread173.i
  %i.ep = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.eq = call i32 @mz_stream_read_int64(ptr noundef %i.ep, ptr noundef nonnull %i.bs) #23 ; 2 uses
  %i.er = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = icmp eq i32 %i.eq, 0
  br i1 %i.et, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.eu = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ev = call i32 @mz_stream_read_int64(ptr noundef %i.eu, ptr noundef nonnull %i.by) #23 ; 2 uses
  %i.ew = load i64, ptr %i.by, align 8, !tbaa !27 ; 2 uses
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %.thread, label %bb.ao

bb.al:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.ey = load i64, ptr %i.bf, align 8, !tbaa !24 ; 2 uses
  %i.ez = icmp ne i64 %i.ey, 65535
  %.not122.i = icmp eq i64 %i.ey, %.pre204.i.a
  %or.cond130.i = and i1 %i.ez, %.not122.i
  br i1 %or.cond130.i, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.fa = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.fb = icmp eq i64 %i.fa, 65535
  br i1 %i.fb, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = load i64, ptr %i.by, align 8, !tbaa !27 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967295
  br i1 %i.fd, label %.thread, label %.thread186.i

bb.ao:                                            ; preds = %bb.ak
  %i.fe = icmp eq i32 %i.ev, 0
  br i1 %i.fe, label %..thread186_crit_edge.i, label %.thread

..thread186_crit_edge.i:                          ; preds = %bb.ao
  %i.ff = icmp ne i64 %i.dl, 0
  br label %.thread186.i

.thread186.i:                                     ; preds = %..thread186_crit_edge.i, %bb.an, %bb.r
  %i.fg = phi i64 [ %i.ew, %..thread186_crit_edge.i ], [ %i.fc, %bb.an ], [ %i.cp, %bb.r ]
  %.0134189.i = phi i1 [ %i.ff, %..thread186_crit_edge.i ], [ false, %bb.an ], [ false, %bb.r ]
  %i.fh = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.fi = call i32 @mz_stream_seek(ptr noundef %i.fh, i64 noundef %i.fg, i32 noundef 0) #23 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %.thread186.i
  %i.fk = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.fm = call i32 @mz_stream_read_uint32(ptr noundef %i.fk, ptr noundef nonnull %i.fl) #23 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load i32, ptr %i.fl, align 8, !tbaa !85
  %.not124.i = icmp eq i32 %i.fo, 33639248
  %.pre201.i.a = load i64, ptr %i.o, align 8, !tbaa !20 ; 3 uses
  br i1 %.not124.i, label %._crit_edge.i, label %bb.ar

._crit_edge.i:                                    ; preds = %bb.aq
  %.pre202.i = load i64, ptr %i.by, align 8, !tbaa !27
  br label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.fp = icmp slt i64 %.pre201.i.a, 4294967296
  %or.cond6.not.i = or i1 %.0134189.i, %i.fp
  br i1 %or.cond6.not.i, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar
  %i.fq = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.fr = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.fs = sub nsw i64 %.pre201.i.a, %i.fr
  %i.ft = call i32 @mz_stream_seek(ptr noundef %i.fq, i64 noundef %i.fs, i32 noundef 0) #23 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %i.fv = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.fw = call i32 @mz_stream_read_uint32(ptr noundef %i.fv, ptr noundef nonnull %i.fl) #23 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.fy = load i32, ptr %i.fl, align 8, !tbaa !85
  %i.fz = icmp eq i32 %i.fy, 33639248
  %.pre200.i = load i64, ptr %i.o, align 8, !tbaa !20 ; 3 uses
  %.pre203.i = load i64, ptr %i.by, align 8, !tbaa !27 ; 2 uses
  br i1 %i.fz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ga = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.gb = sub nsw i64 %.pre200.i, %i.ga           ; 3 uses
  store i64 %i.gb, ptr %i.by, align 8, !tbaa !27
  %i.gc = sub nsw i64 %i.gb, %.pre203.i
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i
  %i.ge = phi i64 [ %.pre203.i, %bb.au ], [ %i.gb, %bb.av ], [ %.pre202.i, %._crit_edge.i ] ; 3 uses
  %i.gf = phi i64 [ %.pre200.i, %bb.au ], [ %.pre200.i, %bb.av ], [ %.pre201.i.a, %._crit_edge.i ] ; 3 uses
  %i.gg = icmp slt i64 %i.gf, %i.ge
  br i1 %i.gg, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.gi = add i64 %i.gh, %i.ge
  %i.gj = icmp ult i64 %i.gf, %i.gi
  br i1 %i.gj, label %bb.ay, label %mz_zip_read_cd.exit

bb.ay:                                            ; preds = %bb.ax
  %i.gk = sub nsw i64 %i.gf, %i.ge
  store i64 %i.gk, ptr %i.bs, align 8, !tbaa !26
  br label %mz_zip_read_cd.exit

mz_zip_read_cd.exit:                              ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  br label %bb.ch

.thread:                                          ; preds = %bb.q, %bb.aw, %.thread186.i, %bb.ak, %bb.at, %bb.ao, %bb.ap, %bb.al, %bb.m, %bb.aj, %mz_zip_search_eocd.exit.thread.i, %mz_zip_search_eocd.exit.i, %bb.ai, %.critedge.i, %bb.o, %bb.n, %.thread173.i, %bb.an, %bb.am, %bb.as, %.thread141.i, %bb.k, %bb.ar
  %.24.i.ph = phi i32 [ -103, %bb.aw ], [ -103, %bb.ar ], [ %i.bc, %bb.k ], [ %.2.ph.i, %.thread141.i ], [ %i.ft, %bb.as ], [ -103, %bb.am ], [ -103, %bb.an ], [ %spec.select129.i, %.thread173.i ], [ %i.bi, %bb.n ], [ %i.bo, %bb.o ], [ %i.bu, %.critedge.i ], [ -103, %bb.ai ], [ %i.ah, %mz_zip_search_eocd.exit.i ], [ %i.af, %mz_zip_search_eocd.exit.thread.i ], [ %i.eq, %bb.aj ], [ -103, %bb.m ], [ -103, %bb.al ], [ %i.fm, %bb.ap ], [ %i.ev, %bb.ao ], [ %i.fw, %bb.at ], [ -103, %bb.ak ], [ %i.fi, %.thread186.i ], [ %i.ca, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !25
  %.not67 = icmp eq i8 %i.gm, 0
  br i1 %.not67, label %.thread85, label %bb.az

bb.az:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 0, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 0, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i32 134695760, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 67324752, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i32 33639248, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 0, ptr %i.j, align 4, !tbaa !22
  %i.gn = load ptr, ptr %i.v, align 8, !tbaa !18  ; 7 uses
  %i.go = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.gp = call i32 @mz_stream_set_prop_int64(ptr noundef %i.go, i32 noundef 8, i64 noundef 0) #23 ; 0 uses
  %i.gq = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.gr = call i64 @mz_stream_tell(ptr noundef %i.gq) #23
  %i.gs = icmp slt i64 %i.gr, 0
  br i1 %i.gs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gt = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.gu = call i32 @mz_stream_set_prop_int64(ptr noundef %i.gt, i32 noundef 8, i64 noundef -1) #23 ; 0 uses
  %i.gv = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.gw = call i32 @mz_stream_seek(ptr noundef %i.gv, i64 noundef 0, i32 noundef 0) #23 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.060.i = phi i32 [ 0, %bb.ba ], [ 1, %bb.az ]
  %i.gx = call ptr @mz_stream_mem_create() #23    ; 5 uses
  store ptr %i.gx, ptr %i.a, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.gx, null
  br i1 %.not.i, label %mz_zip_recover_cd.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gy = call i32 @mz_stream_is_open(ptr noundef %i.gn) #23
  %.not70.i = icmp eq i32 %i.gy, 0
  br i1 %.not70.i, label %.thread.i, label %bb.bd

.thread.i:                                        ; preds = %bb.bc
  %i.gz = call i32 @mz_stream_mem_open(ptr noundef nonnull %i.gx, ptr noundef null, i32 noundef 8) #23 ; 0 uses
end_hunk_0
