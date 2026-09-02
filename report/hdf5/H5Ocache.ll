Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Ocache?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5O__cache_serialize:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.ba = trunc i64 %i.az to i8
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.bd = lshr i64 %i.bc, 8
  %i.be = trunc i64 %i.bd to i8
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.bh = lshr i64 %i.bg, 16
  %i.bi = trunc i64 %i.bh to i8
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.bk = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.bl = lshr i64 %i.bk, 24
  %i.bm = trunc i64 %i.bl to i8
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bq = trunc i64 %i.bp to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bt = lshr i64 %i.bs, 8
  %i.bu = trunc i64 %i.bt to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bx = lshr i64 %i.bw, 16
  %i.by = trunc i64 %i.bx to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.ca = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.cb = lshr i64 %i.ca, 24
  %i.cc = trunc i64 %i.cb to i8
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cg = trunc i64 %i.cf to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 19
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cj = lshr i64 %i.ci, 8
  %i.ck = trunc i64 %i.cj to i8
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cn = lshr i64 %i.cm, 16
  %i.co = trunc i64 %i.cn to i8
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 21
  %i.cq = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cr = lshr i64 %i.cq, 24
  %i.cs = trunc i64 %i.cr to i8
  store i8 %i.cs, ptr %i.cp, align 1, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %.pre = load i8, ptr %i.p, align 1, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cu = phi i8 [ %.pre, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %.0178 = phi ptr [ %i.ct, %bb.d ], [ %i.ag, %bb.c ] ; 6 uses
  %i.cv = and i8 %i.cu, 16
  %.not181 = icmp eq i8 %i.cv, 0
  br i1 %.not181, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !52
  %i.cy = trunc i32 %i.cx to i8
  store i8 %i.cy, ptr %.0178, align 1, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %.0178, i64 1
  %i.da = load i32, ptr %i.cw, align 8, !tbaa !52
  %i.db = lshr i32 %i.da, 8
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %i.cz, align 1, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %.0178, i64 2
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 332 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.dd, align 1, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %.0178, i64 3
  %i.di = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dj = lshr i32 %i.di, 8
  %i.dk = trunc i32 %i.dj to i8
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %.0178, i64 4
  %.pre185 = load i8, ptr %i.p, align 1, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dm = phi i8 [ %.pre185, %bb.f ], [ %i.cu, %bb.e ]
  %.1179 = phi ptr [ %i.dl, %bb.f ], [ %.0178, %bb.e ] ; 11 uses
  %i.dn = and i8 %i.dm, 3
  switch i8 %i.dn, label %default.unreachable186 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.g
  %i.do = trunc i64 %i.ac to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %.1179, i64 1
  store i8 %i.do, ptr %.1179, align 1, !tbaa !50
  %i.dq = lshr i64 %i.ac, 8
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.1179, i64 2
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !50
  %i.dt = lshr i64 %i.ac, 16
  %i.du = trunc i64 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %.1179, i64 3
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !50
  %i.dw = lshr i64 %i.ac, 24
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.1179, i64 4
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !50
  %i.dz = lshr i64 %i.ac, 32
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.1179, i64 5
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !50
  %i.ec = lshr i64 %i.ac, 40
  %i.ed = trunc i64 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %.1179, i64 6
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !50
  %i.ef = lshr i64 %i.ac, 48
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.1179, i64 7
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !50
  %i.ei = lshr i64 %i.ac, 56
  %i.ej = trunc nuw i64 %i.ei to i8
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !50
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ek = trunc i64 %i.ac to i8
  store i8 %i.ek, ptr %.1179, align 1, !tbaa !50
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.el = trunc i64 %i.ac to i16
  store i16 %i.el, ptr %.1179, align 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.em = trunc i64 %i.ac to i32
  store i32 %i.em, ptr %.1179, align 1
  br label %.loopexit

default.unreachable186:                           ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !50
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 0, ptr %i.en, align 1, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.er = trunc i64 %i.eq to i8
  store i8 %i.er, ptr %i.eo, align 1, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.et = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.eu = lshr i64 %i.et, 8
  %i.ev = trunc i64 %i.eu to i8
  store i8 %i.ev, ptr %i.es, align 1, !tbaa !50
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 284 ; 4 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !54
  %i.ez = trunc i32 %i.ey to i8
  store i8 %i.ez, ptr %i.ew, align 1, !tbaa !50
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.fb = load i32, ptr %i.ex, align 4, !tbaa !54
  %i.fc = lshr i32 %i.fb, 8
  %i.fd = trunc i32 %i.fc to i8
  store i8 %i.fd, ptr %i.fa, align 1, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ff = load i32, ptr %i.ex, align 4, !tbaa !54
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = trunc i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fe, align 1, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.fj = load i32, ptr %i.ex, align 4, !tbaa !54
  %i.fk = lshr i32 %i.fj, 24
  %i.fl = trunc nuw i32 %i.fk to i8
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !50
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fn = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !48
  %i.fq = load i8, ptr %i.k, align 8, !tbaa !35
  %i.fr = icmp eq i8 %i.fq, 1
  br i1 %i.fr, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !36
  %4 = zext i8 %i.ft to i32                       ; 3 uses
  %5 = lshr i32 %4, 1
  %6 = and i32 %5, 16
  %7 = lshr i32 %4, 2
  %8 = and i32 %7, 4
  %9 = and i32 %4, 3
  %10 = shl nuw nsw i32 1, %9
  %11 = or disjoint i32 %6, %8
  %12 = or disjoint i32 %11, 10
  %13 = add nuw nsw i32 %12, %10
  %14 = zext nneg i32 %13 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %15 = phi i64 [ %14, %bb.l ], [ 16, %bb.k ]
  %16 = sub i64 %i.fp, %15
  %17 = trunc i64 %16 to i8
  store i8 %17, ptr %i.fm, align 1, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !48
  %i.fy = load i8, ptr %i.k, align 8, !tbaa !35
  %i.fz = icmp eq i8 %i.fy, 1
  br i1 %i.fz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !36
  %i.gc = zext i8 %i.gb to i32                    ; 3 uses
  %i.gd = lshr i32 %i.gc, 1
  %i.ge = and i32 %i.gd, 16
  %i.gf = lshr i32 %i.gc, 2
  %i.gg = and i32 %i.gf, 4
  %i.gh = and i32 %i.gc, 3
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = or disjoint i32 %i.ge, %i.gg
  %i.gk = or disjoint i32 %i.gj, 10
  %i.gl = add nuw nsw i32 %i.gk, %i.gi
  %i.gm = zext nneg i32 %i.gl to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gn = phi i64 [ %i.gm, %bb.n ], [ 16, %bb.m ]
  %i.go = sub i64 %i.fx, %i.gn
  %i.gp = lshr i64 %i.go, 8
  %i.gq = trunc i64 %i.gp to i8
  store i8 %i.gq, ptr %i.fu, align 1, !tbaa !50
  %i.gr = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !48
  %i.gv = load i8, ptr %i.k, align 8, !tbaa !35
  %i.gw = icmp eq i8 %i.gv, 1
  br i1 %i.gw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !36
  %i.gz = zext i8 %i.gy to i32                    ; 3 uses
  %i.ha = lshr i32 %i.gz, 1
  %i.hb = and i32 %i.ha, 16
  %i.hc = lshr i32 %i.gz, 2
  %i.hd = and i32 %i.hc, 4
  %i.he = and i32 %i.gz, 3
  %i.hf = shl nuw nsw i32 1, %i.he
  %i.hg = or disjoint i32 %i.hb, %i.hd
  %i.hh = or disjoint i32 %i.hg, 10
  %i.hi = add nuw nsw i32 %i.hh, %i.hf
  %i.hj = zext nneg i32 %i.hi to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.hk = phi i64 [ %i.hj, %bb.p ], [ 16, %bb.o ]
  %i.hl = sub i64 %i.gu, %i.hk
  %i.hm = lshr i64 %i.hl, 16
  %i.hn = trunc i64 %i.hm to i8
  store i8 %i.hn, ptr %i.gr, align 1, !tbaa !50
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.hp = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !48
  %i.hs = load i8, ptr %i.k, align 8, !tbaa !35
  %i.ht = icmp eq i8 %i.hs, 1
  br i1 %i.ht, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !36
  %i.hw = zext i8 %i.hv to i32                    ; 3 uses
  %i.hx = lshr i32 %i.hw, 1
  %i.hy = and i32 %i.hx, 16
  %i.hz = lshr i32 %i.hw, 2
  %i.ia = and i32 %i.hz, 4
  %i.ib = and i32 %i.hw, 3
  %i.ic = shl nuw nsw i32 1, %i.ib
  %i.id = or disjoint i32 %i.hy, %i.ia
  %i.ie = or disjoint i32 %i.id, 10
  %i.if = add nuw nsw i32 %i.ie, %i.ic
  %i.ig = zext nneg i32 %i.if to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ih = phi i64 [ %i.ig, %bb.r ], [ 16, %bb.q ]
  %i.ii = sub i64 %i.hr, %i.ih
  %i.ij = lshr i64 %i.ii, 24
  %i.ik = trunc i64 %i.ij to i8
  store i8 %i.ik, ptr %i.ho, align 1, !tbaa !50
  %i.il = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.im = load i8, ptr %i.k, align 8, !tbaa !35
  %i.in = icmp eq i8 %i.im, 1
  br i1 %i.in, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !36
  %i.iq = zext i8 %i.ip to i32                    ; 3 uses
  %i.ir = lshr i32 %i.iq, 1
  %i.is = and i32 %i.ir, 16
  %i.it = lshr i32 %i.iq, 2
  %i.iu = and i32 %i.it, 4
  %i.iv = and i32 %i.iq, 3
  %i.iw = shl nuw nsw i32 1, %i.iv
  %i.ix = add nsw i32 %i.is, -2
  %i.iy = add nsw i32 %i.ix, %i.iu
  %i.iz = add nsw i32 %i.iy, %i.iw
  %i.ja = sext i32 %i.iz to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.jb = phi i64 [ %i.ja, %bb.t ], [ 4, %bb.s ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.il, i8 0, i64 %i.jb, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.h, %bb.i, %bb.j, %bb.u
  %i.jc = tail call fastcc i32 @H5O__chunk_serialize(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0)
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.je = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.jf = load i64, ptr @H5E_CANTSERIALIZE_g, align 8, !tbaa !14
  %i.jg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_serialize, i32 noundef 474, i64 noundef %i.je, i64 noundef %i.jf, ptr noundef nonnull @.str.39) #7 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.jh = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.jj, i64 %2, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.w, %bb.v
  %.0177 = phi i32 [ -1, %bb.v ], [ 0, %bb.w ], [ 0, %bb.a ]
  ret i32 %.0177
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5O__cache_notify(i32 noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %.loopexit
    i32 4, label %.loopexit
    i32 5, label %.preheader
    i32 6, label %.loopexit
    i32 7, label %.loopexit
    i32 8, label %.loopexit
    i32 9, label %.loopexit
    i32 3, label %bb.h
  ]

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 6 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 10 uses
  %min.iters.check = icmp ult i64 %i.h, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.k = add i64 %i.h, -1                         ; 3 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 4294967295
  %i.n = icmp ugt i64 %i.k, 4294967295
  %i.o = or i1 %i.m, %i.n
  %scevgep = getelementptr i8, ptr %i.j, i64 8    ; 2 uses
  %mul22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 48) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul22, 0
  %mul.overflow = extractvalue { i64, i1 } %mul22, 1
  %i.p = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.q = icmp ult ptr %i.p, %scevgep
  %i.r = or i1 %i.q, %mul.overflow
  %i.s = or i1 %i.o, %i.r
  br i1 %i.s, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.h, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue36, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue36 ] ; 9 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %index ; 2 uses
end_hunk_0
