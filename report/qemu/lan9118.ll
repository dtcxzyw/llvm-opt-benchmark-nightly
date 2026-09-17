Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/lan9118?download=true
inline.NumInlined: 39
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_tx_packet:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9332
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = and i32 %i.ah, 255
  %i.aj = icmp ugt i32 %i.ae, %i.ai
  br i1 %i.aj, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9324 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = or i32 %i.al, 128
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = icmp eq i32 %i.ae, 512
  br i1 %i.an, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = or i32 %i.al, 384
  store i32 %i.ao, ptr %i.ak, align 4
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  ret void
}

declare i64 @qemu_receive_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @qemu_send_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lan9118_phy_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

declare zeroext i16 @lan9118_phy_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -1, 2048) i64 @lan9118_receive(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #5 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9388 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 7 uses
  %i.d = and i32 %i.c, 4
  %i.e = icmp eq i32 %i.d, 0
  %i.f = add i64 %2, -2048
  %or.cond = icmp ult i64 %i.f, -2034
  %or.cond97 = or i1 %or.cond, %i.e
  br i1 %or.cond97, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 14612 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14608 ; 2 uses
  %i.j = load i32, ptr %i.i, align 16
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.c, 262144
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %lan9118_filter.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %1, align 1                 ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ad = lshr i32 %i.c, 11
  %.lobit.i = and i32 %i.ad, 1
  %i.ae = xor i32 %.lobit.i, 1
  br label %lan9118_filter.exit

bb.k:                                             ; preds = %bb.d
  %i.af = and i8 %i.m, 1
  %.not25.i = icmp eq i8 %i.af, 0
  br i1 %.not25.i, label %.critedge.i, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ag = and i32 %i.c, 524288
  %.not26.i = icmp eq i32 %i.ag, 0
  br i1 %.not26.i, label %bb.l, label %lan9118_filter.exit.thread

bb.l:                                             ; preds = %.thread.i
  %i.ah = and i32 %i.c, 8192
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.p

.critedge.i:                                      ; preds = %bb.k
  %i.aj = and i32 %i.c, 32768
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.critedge.i, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  %i.am = load i32, ptr %1, align 1
  %i.an = load i32, ptr %i.al, align 1
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %1, i64 4
  %i.aq = getelementptr i8, ptr %i.al, i64 4
  %i.ar = load i16, ptr %i.ap, align 1
  %i.as = load i16, ptr %i.aq, align 1
  %i.at = zext i16 %i.ar to i32
  %i.au = zext i16 %i.as to i32
  %i.av = xor i32 %i.at, %i.au
  %i.aw = or i32 %i.ao, %i.av
  %i.ax = icmp ne i32 %i.aw, 0                    ; 2 uses
  %i.ay = zext i1 %i.ax to i32
  %i.az = and i32 %i.c, 131072
  %.not28.i = icmp eq i32 %i.az, 0
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = zext i1 %i.ax to i32
  br label %lan9118_filter.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %i.ay, 0
  %i.bc = zext i1 %i.bb to i32
  br label %lan9118_filter.exit

bb.p:                                             ; preds = %.critedge.i, %bb.l
  %i.bd = tail call i32 @net_crc32(ptr noundef nonnull %1, i32 noundef 6) #5 ; 2 uses
  %i.be = lshr i32 %i.bd, 26                      ; 2 uses
  %.not27.i = icmp sgt i32 %i.bd, -1
  br i1 %.not27.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 9392
  %i.bg = load i32, ptr %i.bf, align 16
  %i.bh = and i32 %i.be, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bi, 1
  br label %lan9118_filter.exit

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 9396
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = lshr i32 %i.bl, %i.be
  %i.bn = and i32 %i.bm, 1
  br label %lan9118_filter.exit

lan9118_filter.exit:                              ; preds = %bb.j, %bb.n, %bb.o, %bb.q, %bb.r
  %.0.i = phi i32 [ %i.bn, %bb.r ], [ %i.ae, %bb.j ], [ %i.bj, %bb.q ], [ %i.ba, %bb.n ], [ %i.bc, %bb.o ]
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.s, label %lan9118_filter.exit.thread

bb.s:                                             ; preds = %lan9118_filter.exit
  %i.bo = load i32, ptr %i.b, align 4
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.af, label %lan9118_filter.exit.thread

lan9118_filter.exit.thread:                       ; preds = %.thread.i, %bb.c, %bb.s, %lan9118_filter.exit
  %.not108 = phi i1 [ false, %lan9118_filter.exit ], [ true, %bb.s ], [ false, %bb.c ], [ false, %.thread.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 9336
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = lshr i32 %i.br, 8
  %i.bt = and i32 %i.bs, 3                        ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %2, 3
  %i.bw = add nuw nsw i64 %i.bv, %i.bu
  %i.bx = lshr i64 %i.bw, 2
  %i.by = trunc nuw nsw i64 %i.bx to i32          ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 18204 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 18208 ; 10 uses
  %i.cd = load i32, ptr %i.cc, align 16
  %i.ce = sub i32 %i.cb, %i.cd
  %.not91 = icmp sgt i32 %i.ce, %i.by
  br i1 %.not91, label %.lr.ph, label %bb.af

.lr.ph:                                           ; preds = %lan9118_filter.exit.thread
  %i.cf = trunc nuw nsw i64 %2 to i32             ; 2 uses
  %i.cg = tail call i64 @crc32(i64 noundef -1, ptr noundef %1, i32 noundef %i.cf) #5
  %3 = trunc i64 %i.cg to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)      ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 18212
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 18216
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.cj = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge.backedge ]
  %.078111 = phi i32 [ 0, %.lr.ph ], [ %.078111.be, %.backedge.backedge ]
  %.080110 = phi i32 [ %i.bt, %.lr.ph ], [ %.080110.be, %.backedge.backedge ]
  %.082109 = phi i32 [ 0, %.lr.ph ], [ %.082109.be, %.backedge.backedge ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %.078111, i32 24) ; 3 uses
  %i.co = add nuw nsw i32 %.080110, 1             ; 3 uses
  %i.cp = icmp eq i32 %i.co, 4
  br i1 %i.cp, label %.thread, label %bb.t

bb.t:                                             ; preds = %.backedge
  %i.cq = add i32 %.082109, 1                     ; 2 uses
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp ugt i64 %2, %i.cr
  br i1 %i.cs, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %bb.t, %.thread
  %.be = phi i64 [ %i.cr, %bb.t ], [ %i.dd, %.thread ]
  %.078111.be = phi i32 [ %i.cn, %bb.t ], [ 0, %.thread ]
  %.080110.be = phi i32 [ %i.co, %bb.t ], [ 0, %.thread ]
  %.082109.be = phi i32 [ %i.cq, %bb.t ], [ %i.dc, %.thread ]
  br label %.backedge, !llvm.loop !11

.thread:                                          ; preds = %.backedge
  %i.ct = load i32, ptr %i.ch, align 4
  %i.cu = load i32, ptr %i.cc, align 16
  %i.cv = add i32 %i.cu, %i.ct                    ; 2 uses
  %i.cw = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not.i98 = icmp slt i32 %i.cv, %i.cw
  %i.cx = select i1 %.not.i98, i32 0, i32 %i.cw
  %spec.select.i = sub i32 %i.cv, %i.cx
  %i.cy = sext i32 %spec.select.i to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cy
  store i32 %i.cn, ptr %i.cz, align 4
  %i.da = load i32, ptr %i.cc, align 16
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cc, align 16
  %i.dc = add i32 %.082109, 1                     ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp ugt i64 %2, %i.dd
  br i1 %i.de, label %.backedge.backedge, label %bb.u

._crit_edge:                                      ; preds = %bb.t
  %i.df = shl nuw nsw i32 %i.co, 3                ; 2 uses
  %i.dg = sub nuw nsw i32 32, %i.df               ; 2 uses
  %i.dh = lshr i32 %i.cn, %i.dg
  %i.di = shl i32 %4, %i.df
  %i.dj = or disjoint i32 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 18212 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = load i32, ptr %i.cc, align 16
  %i.dn = add i32 %i.dm, %i.dl                    ; 2 uses
  %i.do = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not.i99 = icmp slt i32 %i.dn, %i.do
  %i.dp = select i1 %.not.i99, i32 0, i32 %i.do
  %spec.select.i100 = sub i32 %i.dn, %i.dp
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 18216
  %i.dr = sext i32 %spec.select.i100 to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 %i.dj, ptr %i.ds, align 4
  %i.dt = load i32, ptr %i.cc, align 16
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.du, ptr %i.cc, align 16
  %i.dv = lshr i32 %4, %i.dg
  %i.dw = load i32, ptr %i.dk, align 4
  %i.dx = add i32 %i.dw, %i.du
  br label %bb.v

bb.u:                                             ; preds = %.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 18212
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = load i32, ptr %i.cc, align 16
  %i.eb = add i32 %i.ea, %i.dz
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.sink138 = phi i32 [ %i.eb, %bb.u ], [ %i.dx, %._crit_edge ] ; 2 uses
  %.sink = phi i32 [ %4, %bb.u ], [ %i.dv, %._crit_edge ]
  %i.ec = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not.i103 = icmp slt i32 %.sink138, %i.ec
  %i.ed = select i1 %.not.i103, i32 0, i32 %i.ec
  %spec.select.i104 = sub i32 %.sink138, %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 18216
  %i.ef = sext i32 %spec.select.i104 to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  store i32 %.sink, ptr %i.eg, align 4
  %storemerge.in = load i32, ptr %i.cc, align 16
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.cc, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 14616
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = load i32, ptr %i.g, align 4
  %i.ek = add i32 %i.ej, %i.ei                    ; 2 uses
  %i.el = load i32, ptr %i.i, align 16            ; 2 uses
  %.not93 = icmp slt i32 %i.ek, %i.el
  %i.em = select i1 %.not93, i32 0, i32 %i.el
  %spec.select = sub i32 %i.ek, %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 31664
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 31660 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq
  store i32 %i.bz, ptr %i.er, align 4
  %i.es = load i32, ptr %i.eo, align 4
  %i.et = add i32 %i.es, 1023
  %i.eu = and i32 %i.et, 1023
  store i32 %i.eu, ptr %i.eo, align 4
  %i.ev = load i32, ptr %i.g, align 4
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.g, align 4
  %i.ex = shl nuw nsw i32 %i.cf, 16
  %i.ey = add nuw nsw i32 %i.ex, 262144           ; 2 uses
  %i.ez = load i8, ptr %1, align 1                ; 2 uses
  %i.fa = icmp eq i8 %i.ez, -1
  br i1 %i.fa, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp eq i8 %i.ff, -1
  br i1 %i.fg, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = icmp eq i8 %i.fi, -1
  br i1 %i.fj, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = icmp eq i8 %i.fl, -1
  br i1 %i.fm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp eq i8 %i.fo, -1
  br i1 %i.fp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fq = or disjoint i32 %i.ey, 8192
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fr = and i8 %i.ez, 1
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 10
  %spec.select95 = or disjoint i32 %i.ft, %i.ey
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i32 [ %i.fq, %bb.ab ], [ %spec.select95, %bb.ac ] ; 2 uses
  %i.fu = or i32 %.0, 1073741824
  %spec.select96 = select i1 %.not108, i32 %i.fu, i32 %.0
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 14620
  %i.fw = sext i32 %spec.select to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw
  store i32 %spec.select96, ptr %i.fx, align 4
  %i.fy = load i32, ptr %i.g, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 9332
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = and i32 %i.ga, 255
  %i.gc = icmp ugt i32 %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 9324 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  br i1 %i.gc, label %bb.ae, label %._crit_edge114

bb.ae:                                            ; preds = %bb.ad
  %i.gf = or i32 %i.ge, 8                         ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 4
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.ad, %bb.ae
  %i.gg = phi i32 [ %i.gf, %bb.ae ], [ %i.ge, %bb.ad ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  %i.gi = load i32, ptr %i.gh, align 16
  %i.gj = and i32 %i.gi, %i.gg
  %i.gk = icmp ne i32 %i.gj, 0                    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 9320 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8            ; 3 uses
  %i.gn = and i32 %i.gm, -4097
  %masksel.i = select i1 %i.gk, i32 4096, i32 0
  %.sink.i = or disjoint i32 %masksel.i, %i.gn
  store i32 %.sink.i, ptr %i.gl, align 8
  %i.go = and i32 %i.gm, 256
  %i.gp = icmp ne i32 %i.go, 0
  %narrow.i = and i1 %i.gk, %i.gp
  %i.gq = and i32 %i.gm, 17
  %.not.i105 = icmp ne i32 %i.gq, 17
  %.110.i = xor i1 %.not.i105, %narrow.i
  %.1.i = zext i1 %.110.i to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void @qemu_set_irq(ptr noundef %i.gs, i32 noundef %.1.i) #5
  br label %bb.af

bb.af:                                            ; preds = %lan9118_filter.exit.thread, %bb.s, %bb.b, %bb.a, %._crit_edge114
  %.083 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %lan9118_filter.exit.thread ], [ %2, %bb.s ], [ %2, %._crit_edge114 ]
  ret i64 %.083
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @lan9118_set_link(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #5
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 189, ptr noundef nonnull @__func__.LAN9118) #5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9416
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 0
  tail call void @lan9118_phy_update_link(ptr noundef nonnull %i.c, i1 noundef zeroext %i.f) #5
  ret void
}

declare ptr @qemu_get_nic_opaque(ptr noundef) local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

declare i32 @net_crc32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lan9118_phy_update_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
end_hunk_0
