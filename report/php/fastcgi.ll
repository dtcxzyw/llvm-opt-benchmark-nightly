Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/fastcgi?download=true
inline.NumInlined: 56
inline.NumDeleted: 17
begin_hunk_0_@fcgi_write:bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  %i.p = add nsw i32 %i.m, 7
  %i.q = and i32 %i.p, -8                         ; 2 uses
  %i.r = sub nsw i32 %i.q, %i.m                   ; 2 uses
  %i.s = trunc i64 %i.l to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !61
  %i.u = lshr i64 %i.l, 8
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.v, ptr %i.w, align 1, !tbaa !60
  %i.x = trunc i32 %i.r to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %i.x, ptr %i.y, align 1, !tbaa !62
  %i.z = trunc i32 %i.o to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !69
  %i.ab = lshr i32 %i.o, 8
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 0, ptr %i.ae, align 1, !tbaa !74
  store i8 1, ptr %i.c, align 1, !tbaa !75
  %.not.i.i = icmp eq i32 %i.q, %i.m
  br i1 %.not.i.i, label %close_packet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %sext.i = shl i64 %i.l, 32
  %i.af = ashr exact i64 %sext.i, 32
  %i.ag = getelementptr inbounds i8, ptr %i.i, i64 %i.af
  %i.ah = sext i32 %i.r to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.ah, i1 false)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !45
  br label %close_packet.exit

close_packet.exit:                                ; preds = %bb.d, %bb.e
  %.pre-phi.i = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ]
  %i.ai = phi ptr [ %.pre.i, %bb.e ], [ %i.h, %bb.d ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !45
  store ptr null, ptr %i.b, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %close_packet.exit, %bb.c, %bb.b
  %i.ak = phi ptr [ null, %close_packet.exit ], [ %i.c, %bb.c ], [ null, %bb.b ] ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45 ; 11 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %.neg = sub i64 %i.ap, %i.ao
  %i.aq = trunc i64 %.neg to i32                  ; 2 uses
  %i.ar = add i32 %i.aq, 8192
  %.not100 = icmp eq ptr %i.ak, null              ; 4 uses
  %i.as = add i32 %i.aq, 8184
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  %.093 = select i1 %.not100, i32 %spec.store.select, i32 %i.ar ; 6 uses
  %i.at = icmp slt i32 %3, %.093
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %.not100, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.am, ptr %i.b, align 8, !tbaa !66
  %i.au = trunc i32 %1 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %i.aw, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %i.ay = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %2, i64 range(i64 -2147483646, 4294967296) %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store ptr %i.az, ptr %i.al, align 8, !tbaa !45
  br label %.critedge

bb.j:                                             ; preds = %bb.f
  %i.ba = sub nsw i32 %3, %.093                   ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 8184
  br i1 %i.bb, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp sgt i32 %.093, 0
  br i1 %i.bc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %.not100, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.am, ptr %i.b, align 8, !tbaa !66
  %i.bd = trunc i32 %1 to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !67
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = phi ptr [ %i.bf, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %i.bh = zext nneg i32 %.093 to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %2, i64 range(i64 -2147483646, 4294967296) %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store ptr %i.bi, ptr %i.al, align 8, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.bj = tail call i32 @fcgi_flush(ptr noundef nonnull %0, i32 noundef 0)
  %.not108 = icmp eq i32 %i.bj, 0
  br i1 %.not108, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp sgt i32 %3, %.093
  br i1 %i.bk, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !45 ; 3 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !66
  %i.bm = trunc i32 %1 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  store ptr %i.bo, ptr %i.al, align 8, !tbaa !45
  %i.bp = sext i32 %.093 to i64
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = zext nneg i32 %i.ba to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bq, i64 range(i64 -2147483646, 4294967296) %i.br, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br
  store ptr %i.bs, ptr %i.al, align 8, !tbaa !45
  br label %.critedge

bb.r:                                             ; preds = %bb.j
  br i1 %.not100, label %close_packet.exit116, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.ao, %i.bu                    ; 4 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44 ; 2 uses
  %i.bz = add nsw i32 %i.bw, 7
  %i.ca = and i32 %i.bz, -8                       ; 2 uses
  %i.cb = sub nsw i32 %i.ca, %i.bw                ; 2 uses
  %i.cc = trunc i64 %i.bv to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 5
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !61
  %i.ce = lshr i64 %i.bv, 8
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !60
  %i.ch = trunc i32 %i.cb to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !62
  %i.cj = trunc i32 %i.by to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !69
  %i.cl = lshr i32 %i.by, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !68
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 7
  store i8 0, ptr %i.co, align 1, !tbaa !74
  store i8 1, ptr %i.ak, align 1, !tbaa !75
  %.not.i.i111 = icmp eq i32 %i.ca, %i.bw
  br i1 %.not.i.i111, label %fcgi_make_header.exit.i114, label %bb.t

bb.t:                                             ; preds = %bb.s
  %sext.i112 = shl i64 %i.bv, 32
  %i.cp = ashr exact i64 %sext.i112, 32
  %i.cq = getelementptr inbounds i8, ptr %i.bt, i64 %i.cp
  %i.cr = sext i32 %i.cb to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.cr, i1 false)
  %.pre.i113 = load ptr, ptr %i.al, align 8, !tbaa !45
  br label %fcgi_make_header.exit.i114

fcgi_make_header.exit.i114:                       ; preds = %bb.t, %bb.s
  %.pre-phi.i115 = phi i64 [ %i.cr, %bb.t ], [ 0, %bb.s ]
  %i.cs = phi ptr [ %.pre.i113, %bb.t ], [ %i.am, %bb.s ]
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %.pre-phi.i115 ; 2 uses
  store ptr %i.ct, ptr %i.al, align 8, !tbaa !45
  br label %close_packet.exit116

close_packet.exit116:                             ; preds = %bb.r, %fcgi_make_header.exit.i114
  %i.cu = phi ptr [ %i.am, %bb.r ], [ %i.ct, %fcgi_make_header.exit.i114 ]
  %i.cv = icmp samesign ugt i32 %3, 65535
  %i.cw = trunc i32 %1 to i8                      ; 3 uses
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %close_packet.exit116
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = zext nneg i32 %3 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %safe_write.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %safe_write.exit.thread ] ; 2 uses
  %i.cz = load ptr, ptr %i.al, align 8, !tbaa !45 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.db, ptr %i.al, align 8, !tbaa !45
  %i.dc = load i32, ptr %i.cx, align 4, !tbaa !44 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = trunc i32 %i.dc to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  store i8 %i.de, ptr %i.df, align 1, !tbaa !69
  %i.dg = lshr i32 %i.dc, 8
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !68
  store <4 x i8> <i8 -1, i8 -8, i8 0, i8 0>, ptr %i.dd, align 1, !tbaa !31
  store i8 %i.cw, ptr %i.da, align 1, !tbaa !67
  store i8 1, ptr %i.cz, align 1, !tbaa !75
  store ptr null, ptr %i.b, align 8, !tbaa !66
  %i.dj = tail call i32 @fcgi_flush(ptr noundef nonnull %0, i32 noundef 0)
  %.not105 = icmp eq i32 %i.dj, 0
  br i1 %.not105, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dl = tail call ptr @__errno_location() #35   ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %.0.i = phi i64 [ 0, %bb.v ], [ %.1.i, %bb.z ]  ; 5 uses
  store i32 0, ptr %i.dl, align 4, !tbaa !18
  %i.dm = load i32, ptr %i.cy, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.0.i
  %i.do = sub i64 65528, %.0.i
  %i.dp = tail call i64 @write(i32 noundef %i.dm, ptr noundef readonly %i.dn, i64 noundef %i.do) #32 ; 3 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ds = and i64 %i.dp, 2147483647
  %i.dt = add i64 %i.ds, %.0.i
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.du = load i32, ptr %i.dl, align 4, !tbaa !18
  switch i32 %i.du, label %safe_write.exit [
    i32 0, label %bb.z
    i32 4, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.x
  %.1.i = phi i64 [ %i.dt, %bb.x ], [ %.0.i, %bb.y ], [ %.0.i, %bb.y ] ; 2 uses
  %.not18.i = icmp eq i64 %.1.i, 65528
  br i1 %.not18.i, label %safe_write.exit.thread, label %bb.w, !llvm.loop !3

safe_write.exit:                                  ; preds = %bb.y
  %sext.i117.mask = and i64 %i.dp, 4294967295
  %.not106 = icmp eq i64 %sext.i117.mask, 65528
  br i1 %.not106, label %safe_write.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %safe_write.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.dv, align 8, !tbaa !28
  br label %.critedge

safe_write.exit.thread:                           ; preds = %bb.z, %safe_write.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 65528 ; 3 uses
  %5 = sub nsw i64 %4, %indvars.iv.next           ; 2 uses
  %i.dw = icmp sgt i64 %5, 65535
  br i1 %i.dw, label %bb.u, label %._crit_edge.loopexit, !llvm.loop !121

._crit_edge.loopexit:                             ; preds = %safe_write.exit.thread
  %6 = trunc nuw nsw i64 %5 to i32
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %close_packet.exit116, %._crit_edge.loopexit
  %i.dx = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cu, %close_packet.exit116 ] ; 9 uses
  %.0.lcssa = phi i64 [ %indvars.iv.next, %._crit_edge.loopexit ], [ 0, %close_packet.exit116 ]
  %.lcssa132 = phi i32 [ %6, %._crit_edge.loopexit ], [ %3, %close_packet.exit116 ] ; 4 uses
  %i.dy = add nuw nsw i32 %.lcssa132, 7
  %i.dz = and i32 %i.dy, -8                       ; 2 uses
  %.neg102 = sub nsw i32 %.lcssa132, %i.dz
  %.not101 = icmp eq i32 %i.dz, %.lcssa132        ; 2 uses
  %i.ea = add nsw i32 %.neg102, 8                 ; 2 uses
  %i.eb = select i1 %.not101, i32 0, i32 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.al, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !44 ; 2 uses
  %i.eg = sub nsw i32 %.lcssa132, %i.eb           ; 7 uses
  %i.eh = add nsw i32 %i.eg, 7
  %i.ei = and i32 %i.eh, -8                       ; 2 uses
  %i.ej = sub nsw i32 %i.ei, %i.eg                ; 2 uses
  %i.ek = trunc i32 %i.eg to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 5
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !61
  %i.em = lshr i32 %i.eg, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !60
  %i.ep = trunc i32 %i.ej to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !62
  %i.er = trunc i32 %i.ef to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  store i8 %i.er, ptr %i.es, align 1, !tbaa !69
  %i.et = lshr i32 %i.ef, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dx, i64 7
  store i8 0, ptr %i.ew, align 1, !tbaa !74
  store i8 %i.cw, ptr %i.ec, align 1, !tbaa !67
  store i8 1, ptr %i.dx, align 1, !tbaa !75
  %.not.i118 = icmp eq i32 %i.ei, %i.eg
  br i1 %.not.i118, label %fcgi_make_header.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ex = sext i32 %i.eg to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ed, i64 %i.ex
  %i.ez = sext i32 %i.ej to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ey, i8 0, i64 %i.ez, i1 false)
  br label %fcgi_make_header.exit

fcgi_make_header.exit:                            ; preds = %._crit_edge, %bb.ab
  store ptr null, ptr %i.b, align 8, !tbaa !66
  %i.fa = tail call i32 @fcgi_flush(ptr noundef nonnull %0, i32 noundef 0)
  %.not103 = icmp eq i32 %i.fa, 0
  br i1 %.not103, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %fcgi_make_header.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.fc = sext i32 %i.eg to i64                   ; 3 uses
  %i.fd = tail call ptr @__errno_location() #35   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.0.i119 = phi i64 [ 0, %bb.ac ], [ %.1.i120, %bb.ag ] ; 5 uses
  store i32 0, ptr %i.fd, align 4, !tbaa !18
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !43
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.0.i119
  %i.fh = sub i64 %i.fc, %.0.i119
  %i.fi = tail call i64 @write(i32 noundef %i.ff, ptr noundef readonly %i.fg, i64 noundef %i.fh) #32 ; 3 uses
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fl = and i64 %i.fi, 2147483647
  %i.fm = add i64 %i.fl, %.0.i119
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fn = load i32, ptr %i.fd, align 4, !tbaa !18
  switch i32 %i.fn, label %safe_write.exit124 [
    i32 0, label %bb.ag
    i32 4, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.ae
  %.1.i120 = phi i64 [ %i.fm, %bb.ae ], [ %.0.i119, %bb.af ], [ %.0.i119, %bb.af ] ; 2 uses
  %.not18.i121 = icmp eq i64 %.1.i120, %i.fc
  br i1 %.not18.i121, label %safe_write.exit124.thread, label %bb.ad, !llvm.loop !3

safe_write.exit124:                               ; preds = %bb.af
  %sext.i123 = shl i64 %i.fi, 32
  %i.fo = ashr exact i64 %sext.i123, 32
  %.not104 = icmp eq i64 %i.fo, %i.fc
  br i1 %.not104, label %safe_write.exit124.thread, label %bb.ah

bb.ah:                                            ; preds = %safe_write.exit124
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.fp, align 8, !tbaa !28
  br label %.critedge

safe_write.exit124.thread:                        ; preds = %bb.ag, %safe_write.exit124
  br i1 %.not101, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %safe_write.exit124.thread
  %i.fq = load ptr, ptr %i.al, align 8, !tbaa !45 ; 3 uses
  store ptr %i.fq, ptr %i.b, align 8, !tbaa !66
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  store i8 %i.cw, ptr %i.fr, align 1, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  store ptr %i.fs, ptr %i.al, align 8, !tbaa !45
  %i.ft = zext nneg i32 %3 to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ft
  %i.fv = sext i32 %i.ea to i64                   ; 3 uses
  %i.fw = sub nsw i64 0, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 1 %i.fx, i64 range(i64 -2147483646, 4294967296) %i.fv, i1 false)
  %i.fy = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  store ptr %i.fy, ptr %i.al, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.aa, %bb.ah, %fcgi_make_header.exit, %bb.i, %bb.p, %bb.q, %safe_write.exit124.thread, %bb.ai, %bb.o, %bb.a
  %.1 = phi i32 [ %3, %bb.i ], [ -1, %bb.o ], [ 0, %bb.a ], [ %3, %bb.ai ], [ %3, %safe_write.exit124.thread ], [ %3, %bb.q ], [ %3, %bb.p ], [ -1, %fcgi_make_header.exit ], [ -1, %bb.ah ], [ -1, %bb.aa ], [ -1, %bb.u ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @fcgi_end(ptr noundef %0) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fcgi_flush(ptr noundef nonnull %0, i32 noundef 1)
  store i32 1, ptr %i.a, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @fcgi_finish_request(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %fcgi_end.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @fcgi_flush(ptr noundef nonnull %0, i32 noundef 1)
  store i32 1, ptr %i.d, align 8, !tbaa !65
  br label %fcgi_end.exit

fcgi_end.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.b ], [ %i.f, %bb.c ]
  tail call void @fcgi_close(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %fcgi_end.exit, %bb.a
  %.0 = phi i32 [ %.0.i, %fcgi_end.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @fcgi_has_env(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #23 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @fcgi_getenv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %fcgi_hash_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.b = icmp slt i32 %2, 3
  br i1 %i.b, label %bb.d, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !31
  %i.e = sext i8 %i.d to i32
  %i.f = zext nneg i32 %2 to i64
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 2 uses
end_hunk_0
