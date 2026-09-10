Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctint-8?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jpeg_idct_10x10:bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %.1213239, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !36
  %i.eu = zext i32 %i.et to i64                   ; 3 uses
  %i.ev = mul nuw nsw i64 %i.eu, 9373
  %.neg = mul nsw i64 %i.eu, -3580
  %i.ew = add nsw i64 %i.er, %i.ev                ; 2 uses
  %i.ex = add nsw i64 %.neg, %i.er                ; 2 uses
  %.neg216 = mul nsw i64 %i.eu, -11586
  %i.ey = add nsw i64 %.neg216, %i.er             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1213239, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !36
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1213239, i64 24
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !36
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, %i.fb
  %i.fg = mul nuw nsw i64 %i.ff, 6810             ; 2 uses
  %i.fh = mul nuw nsw i64 %i.fb, 4209
  %i.fi = add nuw nsw i64 %i.fg, %i.fh            ; 2 uses
  %.neg217 = mul nsw i64 %i.fe, -17828
  %i.fj = add nsw i64 %i.fg, %.neg217             ; 2 uses
  %i.fk = add nsw i64 %i.fi, %i.ew                ; 2 uses
  %i.fl = sub nsw i64 %i.ew, %i.fi                ; 2 uses
  %i.fm = add nsw i64 %i.fj, %i.ex                ; 2 uses
  %i.fn = sub nsw i64 %i.ex, %i.fj                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1213239, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !36
  %i.fq = sext i32 %i.fp to i64                   ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1213239, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !36
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1213239, i64 20
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !36
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = shl nsw i64 %i.fw, 13                   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1213239, i64 28
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !36
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = add nsw i64 %i.ga, %i.ft                ; 2 uses
  %i.gc = sub nsw i64 %i.ft, %i.ga                ; 3 uses
  %i.gd = mul nsw i64 %i.gc, 2531
  %i.ge = mul nsw i64 %i.gb, 7791                 ; 2 uses
  %i.gf = add nsw i64 %i.gd, %i.fx                ; 2 uses
  %i.gg = mul nsw i64 %i.fq, 11443
  %i.gh = add nsw i64 %i.ge, %i.gg
  %i.gi = add nsw i64 %i.gh, %i.gf                ; 2 uses
  %i.gj = mul nsw i64 %i.fq, 1812
  %i.gk = sub nsw i64 %i.gj, %i.ge
  %i.gl = add nsw i64 %i.gk, %i.gf                ; 2 uses
  %i.gm = mul nsw i64 %i.gb, 4815                 ; 2 uses
  %.neg218 = mul nsw i64 %i.gc, -6627
  %i.gn = add nsw i64 %.neg218, %i.fx             ; 2 uses
  %i.go = add nsw i64 %i.gc, %i.fw
  %i.gp = sub nsw i64 %i.fq, %i.go
  %i.gq = shl nsw i64 %i.gp, 13                   ; 2 uses
  %i.gr = mul nsw i64 %i.fq, 10323
  %i.gs = add nsw i64 %i.gm, %i.gn
  %i.gt = sub nsw i64 %i.gr, %i.gs                ; 2 uses
  %i.gu = mul nsw i64 %i.fq, 5260
  %i.gv = sub nsw i64 %i.gu, %i.gm
  %i.gw = add nsw i64 %i.gv, %i.gn                ; 2 uses
  %i.gx = add nsw i64 %i.gi, %i.fk
  %i.gy = lshr i64 %i.gx, 18
  %i.gz = and i64 %i.gy, 1023
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !39
  store i8 %i.hb, ptr %i.en, align 1, !tbaa !39
  %i.hc = sub nsw i64 %i.fk, %i.gi
  %i.hd = lshr i64 %i.hc, 18
  %i.he = and i64 %i.hd, 1023
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !39
  %i.hh = getelementptr inbounds nuw i8, ptr %i.en, i64 9
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !39
  %i.hi = add nsw i64 %i.gt, %i.fm
  %i.hj = lshr i64 %i.hi, 18
  %i.hk = and i64 %i.hj, 1023
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !39
  %i.hn = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !39
  %i.ho = sub nsw i64 %i.fm, %i.gt
  %i.hp = lshr i64 %i.ho, 18
  %i.hq = and i64 %i.hp, 1023
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !39
  %i.ht = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !39
  %i.hu = add nsw i64 %i.gq, %i.ey
  %i.hv = lshr i64 %i.hu, 18
  %i.hw = and i64 %i.hv, 1023
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !39
  %i.hz = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !39
  %i.ia = sub nsw i64 %i.ey, %i.gq
  %i.ib = lshr i64 %i.ia, 18
  %i.ic = and i64 %i.ib, 1023
  %i.id = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !39
  %i.ig = add nsw i64 %i.gw, %i.fn
  %i.ih = lshr i64 %i.ig, 18
  %i.ii = and i64 %i.ih, 1023
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !39
  %i.il = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !39
  %i.im = sub nsw i64 %i.fn, %i.gw
  %i.in = lshr i64 %i.im, 18
  %i.io = and i64 %i.in, 1023
  %i.ip = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !39
  %i.ir = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !39
  %i.is = add nsw i64 %i.gl, %i.fl
  %i.it = lshr i64 %i.is, 18
  %i.iu = and i64 %i.it, 1023
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !39
  %i.ix = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !39
  %i.iy = sub nsw i64 %i.fl, %i.gl
  %i.iz = lshr i64 %i.iy, 18
  %i.ja = and i64 %i.iz, 1023
  %i.jb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !39
  %i.jd = getelementptr inbounds nuw i8, ptr %i.en, i64 5
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %.1213239, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond242.not, label %bb.d, label %bb.c, !llvm.loop !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg_idct_11x11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 11 uses
  %i.g = zext i32 %4 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0269 = phi i32 [ 0, %bb.a ], [ %i.fc, %bb.b ]
  %.0245268 = phi ptr [ %i.a, %bb.a ], [ %i.ff, %bb.b ] ; 12 uses
  %.0247267 = phi ptr [ %i.e, %bb.a ], [ %i.fe, %bb.b ] ; 9 uses
  %.0248266 = phi ptr [ %2, %bb.a ], [ %i.fd, %bb.b ] ; 9 uses
  %i.h = load i16, ptr %.0248266, align 2, !tbaa !35
  %i.i = sext i16 %i.h to i64
  %i.j = load i16, ptr %.0247267, align 2, !tbaa !35
  %i.k = sext i16 %i.j to i64
  %i.l = shl nsw i64 %i.i, 13
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = or disjoint i64 %i.m, 1024               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0248266, i64 32
  %i.p = load i16, ptr %i.o, align 2, !tbaa !35
  %i.q = sext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.0247267, i64 32
  %i.s = load i16, ptr %i.r, align 2, !tbaa !35
  %i.t = sext i16 %i.s to i64
  %i.u = mul nsw i64 %i.t, %i.q                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0248266, i64 64
  %i.w = load i16, ptr %i.v, align 2, !tbaa !35
  %i.x = sext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0247267, i64 64
  %i.z = load i16, ptr %i.y, align 2, !tbaa !35
  %i.aa = sext i16 %i.z to i64
  %i.ab = mul nsw i64 %i.aa, %i.x                 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0248266, i64 96
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = sext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0247267, i64 96
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !35
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.ae                ; 4 uses
  %i.aj = sub nsw i64 %i.ab, %i.ai
  %i.ak = mul nsw i64 %i.aj, 20862                ; 2 uses
  %i.al = sub nsw i64 %i.ab, %i.u
  %i.am = mul nsw i64 %i.al, 3529
  %i.an = add nsw i64 %i.ai, %i.u                 ; 2 uses
  %i.ao = mul nsw i64 %i.an, -9467
  %i.ap = sub nsw i64 %i.an, %i.ab                ; 2 uses
  %i.aq = mul nsw i64 %i.ap, 11116
  %i.ar = add nsw i64 %i.aq, %i.n                 ; 3 uses
  %.neg257 = mul nsw i64 %i.ab, -14924
  %i.as = add nsw i64 %i.ar, %i.am                ; 2 uses
  %i.at = add i64 %i.as, %.neg257
  %i.au = add i64 %i.at, %i.ak                    ; 2 uses
  %i.av = mul nsw i64 %i.ai, 17333
  %i.aw = add nsw i64 %i.ar, %i.ak
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %.neg258 = mul nsw i64 %i.u, -12399
  %i.ay = add i64 %i.as, %.neg258                 ; 2 uses
  %i.az = add nsw i64 %i.ar, %i.ao                ; 2 uses
  %.neg259 = mul nsw i64 %i.ai, -6461
  %i.ba = add i64 %i.az, %.neg259                 ; 2 uses
  %i.bb = mul nsw i64 %i.ab, 15929
  %.neg260 = mul nsw i64 %i.u, -11395
  %i.bc = add nsw i64 %i.bb, %.neg260
  %i.bd = add nsw i64 %i.bc, %i.az                ; 2 uses
  %.neg261 = mul i64 %i.ap, 8796093010623
  %i.be = add i64 %.neg261, %i.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.0248266, i64 16
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !35
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0247267, i64 16
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !35
  %i.bk = sext i16 %i.bj to i64
  %i.bl = mul nsw i64 %i.bk, %i.bh                ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0248266, i64 48
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !35
  %i.bo = sext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0247267, i64 48
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !35
  %i.br = sext i16 %i.bq to i64
  %i.bs = mul nsw i64 %i.br, %i.bo                ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0248266, i64 80
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !35
  %i.bv = sext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.0247267, i64 80
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !35
  %i.by = sext i16 %i.bx to i64
  %i.bz = mul nsw i64 %i.by, %i.bv                ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0248266, i64 112
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !35
  %i.cc = sext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.0247267, i64 112
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !35
  %i.cf = sext i16 %i.ce to i64
  %i.cg = mul nsw i64 %i.cf, %i.cc                ; 5 uses
  %i.ch = add nsw i64 %i.bs, %i.bl                ; 2 uses
  %i.ci = add nsw i64 %i.bz, %i.ch
  %i.cj = add nsw i64 %i.ci, %i.cg
  %i.ck = mul nsw i64 %i.cj, 3264                 ; 3 uses
  %i.cl = mul nsw i64 %i.ch, 7274                 ; 2 uses
  %i.cm = add nsw i64 %i.bz, %i.bl
  %i.cn = mul nsw i64 %i.cm, 5492                 ; 2 uses
  %i.co = add nsw i64 %i.cg, %i.bl
  %i.cp = mul nsw i64 %i.co, 3000
  %i.cq = add nsw i64 %i.ck, %i.cp                ; 2 uses
  %.neg262 = mul nsw i64 %i.bl, -7562
  %i.cr = add nsw i64 %i.cl, %.neg262
  %i.cs = add nsw i64 %i.cr, %i.cn
  %i.ct = add nsw i64 %i.cs, %i.cq                ; 2 uses
  %i.cu = add nsw i64 %i.bz, %i.bs
  %.neg263 = mul nsw i64 %i.cu, -9527
  %i.cv = add nsw i64 %i.ck, %.neg263             ; 2 uses
  %i.cw = mul nsw i64 %i.bs, 16984
  %.neg264 = mul nsw i64 %i.bz, -9766
  %i.cx = add nsw i64 %i.cn, %.neg264
  %i.cy = add nsw i64 %i.cx, %i.cv                ; 2 uses
  %i.cz = add nsw i64 %i.cg, %i.bs
  %i.da = mul nsw i64 %i.cz, -14731               ; 2 uses
  %i.db = add nsw i64 %i.cl, %i.cw
  %i.dc = add nsw i64 %i.db, %i.da
  %i.dd = add nsw i64 %i.dc, %i.cv                ; 2 uses
  %i.de = mul nsw i64 %i.cg, 17223
  %i.df = add nsw i64 %i.da, %i.de
  %i.dg = add nsw i64 %i.df, %i.cq                ; 2 uses
  %i.dh = mul nsw i64 %i.bs, -12019
  %i.di = mul nsw i64 %i.bz, 8203
  %i.dj = add nsw i64 %i.di, %i.dh
  %.neg265 = mul nsw i64 %i.cg, -13802
  %i.dk = add nsw i64 %i.dj, %.neg265
  %i.dl = add nsw i64 %i.dk, %i.ck                ; 2 uses
  %i.dm = add nsw i64 %i.ct, %i.ax
  %i.dn = lshr i64 %i.dm, 11
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %.0245268, align 4, !tbaa !36
  %i.dp = sub nsw i64 %i.ax, %i.ct
  %i.dq = lshr i64 %i.dp, 11
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.0245268, i64 320
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !36
  %i.dt = add nsw i64 %i.dd, %i.au
  %i.du = lshr i64 %i.dt, 11
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %.0245268, i64 32
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !36
  %i.dx = sub nsw i64 %i.au, %i.dd
  %i.dy = lshr i64 %i.dx, 11
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.0245268, i64 288
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !36
  %i.eb = add nsw i64 %i.cy, %i.ba
  %i.ec = lshr i64 %i.eb, 11
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %.0245268, i64 64
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !36
  %i.ef = sub nsw i64 %i.ba, %i.cy
  %i.eg = lshr i64 %i.ef, 11
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0245268, i64 256
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !36
  %i.ej = add nsw i64 %i.dg, %i.ay
  %i.ek = lshr i64 %i.ej, 11
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.0245268, i64 96
  store i32 %i.el, ptr %i.em, align 4, !tbaa !36
  %i.en = sub nsw i64 %i.ay, %i.dg
  %i.eo = lshr i64 %i.en, 11
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.0245268, i64 224
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !36
  %i.er = add nsw i64 %i.dl, %i.bd
  %i.es = lshr i64 %i.er, 11
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0245268, i64 128
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !36
  %i.ev = sub nsw i64 %i.bd, %i.dl
  %i.ew = lshr i64 %i.ev, 11
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0245268, i64 192
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !36
  %i.ez = lshr i64 %i.be, 11
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %.0245268, i64 160
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !36
  %i.fc = add nuw nsw i32 %.0269, 1               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0248266, i64 2
  %i.fe = getelementptr inbounds nuw i8, ptr %.0247267, i64 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.0245268, i64 4
  %exitcond.not = icmp eq i32 %i.fc, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !50

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.1246270 = phi ptr [ %i.a, %.preheader ], [ %i.kv, %bb.c ] ; 9 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !38
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.g ; 11 uses
  %i.fj = load i32, ptr %.1246270, align 4, !tbaa !36
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 13
  %i.fm = add nsw i64 %i.fl, 131072               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1246270, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !36
  %i.fp = zext i32 %i.fo to i64                   ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.1246270, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !36
  %i.fs = zext i32 %i.fr to i64                   ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.1246270, i64 24
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !36
  %i.fv = zext i32 %i.fu to i64                   ; 4 uses
  %i.fw = sub nsw i64 %i.fs, %i.fv
  %i.fx = mul nsw i64 %i.fw, 20862                ; 2 uses
  %i.fy = sub nsw i64 %i.fs, %i.fp
  %i.fz = mul nsw i64 %i.fy, 3529
  %i.ga = add nuw nsw i64 %i.fv, %i.fp            ; 2 uses
  %i.gb = mul nsw i64 %i.ga, -9467
  %i.gc = sub nsw i64 %i.ga, %i.fs                ; 2 uses
  %i.gd = mul nsw i64 %i.gc, 11116
  %i.ge = add nsw i64 %i.gd, %i.fm                ; 3 uses
  %.neg = mul nsw i64 %i.fs, -14924
  %i.gf = add nsw i64 %i.ge, %i.fz                ; 2 uses
  %i.gg = add nsw i64 %i.gf, %.neg
  %i.gh = add nsw i64 %i.gg, %i.fx                ; 2 uses
  %i.gi = mul nuw nsw i64 %i.fv, 17333
  %i.gj = add nsw i64 %i.ge, %i.fx
  %i.gk = add nsw i64 %i.gj, %i.gi                ; 2 uses
  %.neg249 = mul nsw i64 %i.fp, -12399
  %i.gl = add nsw i64 %i.gf, %.neg249             ; 2 uses
  %i.gm = add nsw i64 %i.ge, %i.gb                ; 2 uses
  %.neg250 = mul nsw i64 %i.fv, -6461
  %i.gn = add nsw i64 %i.gm, %.neg250             ; 2 uses
  %i.go = mul nuw nsw i64 %i.fs, 15929
  %.neg251 = mul nsw i64 %i.fp, -11395
  %i.gp = add nsw i64 %i.go, %.neg251
  %i.gq = add nsw i64 %i.gp, %i.gm                ; 2 uses
  %.neg252 = mul nsw i64 %i.gc, 268423871
  %i.gr = add nsw i64 %.neg252, %i.fm
  %i.gs = getelementptr inbounds nuw i8, ptr %.1246270, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !36
  %i.gu = zext i32 %i.gt to i64                   ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1246270, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !36
  %i.gx = zext i32 %i.gw to i64                   ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1246270, i64 20
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !36
  %i.ha = zext i32 %i.gz to i64                   ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1246270, i64 28
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !36
  %i.hd = zext i32 %i.hc to i64                   ; 5 uses
  %i.he = add nuw nsw i64 %i.gx, %i.gu            ; 2 uses
  %i.hf = add nuw nsw i64 %i.he, %i.ha
  %i.hg = add nuw nsw i64 %i.hf, %i.hd
  %i.hh = mul nuw nsw i64 %i.hg, 3264             ; 3 uses
  %i.hi = mul nuw nsw i64 %i.he, 7274             ; 2 uses
  %i.hj = add nuw nsw i64 %i.ha, %i.gu
  %i.hk = mul nuw nsw i64 %i.hj, 5492             ; 2 uses
  %i.hl = add nuw nsw i64 %i.hd, %i.gu
  %i.hm = mul nuw nsw i64 %i.hl, 3000
  %i.hn = add nuw nsw i64 %i.hh, %i.hm            ; 2 uses
  %.neg253 = mul nsw i64 %i.gu, -7562
  %i.ho = add nsw i64 %i.hi, %.neg253
  %i.hp = add nsw i64 %i.ho, %i.hk
end_hunk_0
