inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @IDEA_set_encrypt_key(ptr noundef readonly captures(none) %0, ptr noundef captures(none) initializes((0, 216)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8                  ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.a, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  store i32 %i.h, ptr %1, align 4, !tbaa !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.e, align 1, !tbaa !9
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.i, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = or disjoint i32 %i.l, %i.p               ; 2 uses
  store i32 %i.q, ptr %i.m, align 4, !tbaa !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.s = load i8, ptr %i.n, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.r, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.071 = getelementptr i8, ptr %1, i64 32
  %i.am = shl nuw nsw i32 %i.p, 9
  %.masked = and i32 %i.am, 65024
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ap = zext i8 %i.x to i32                     ; 2 uses
  %i.aq = or disjoint i32 %i.u, %i.ap             ; 2 uses
  store i32 %i.aq, ptr %i.v, align 4, !tbaa !5
  %i.ar = load i8, ptr %i.w, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8                ; 2 uses
  store i32 %i.at, ptr %i.z, align 4, !tbaa !5
  %i.au = load i8, ptr %i.y, align 1, !tbaa !9
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = lshr i32 %i.aq, 7                       ; 2 uses
  %i.ax = or disjoint i32 %i.at, %i.av            ; 2 uses
  store i32 %i.ax, ptr %i.z, align 4, !tbaa !5
  %i.ay = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 8                ; 2 uses
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !5
  %i.bb = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc            ; 2 uses
  store i32 %i.bd, ptr %i.ac, align 4, !tbaa !5
  %i.be = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8                ; 2 uses
  store i32 %i.bg, ptr %i.af, align 4, !tbaa !5
  %i.bh = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = or disjoint i32 %i.bg, %i.bi            ; 2 uses
  store i32 %i.bj, ptr %i.af, align 4, !tbaa !5
  %i.bk = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8                ; 2 uses
  store i32 %i.bm, ptr %i.ai, align 4, !tbaa !5
  %i.bn = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = or disjoint i32 %i.bm, %i.bo            ; 3 uses
  store i32 %i.bp, ptr %i.ai, align 4, !tbaa !5
  %i.bq = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8                ; 2 uses
  store i32 %i.bs, ptr %i.al, align 4, !tbaa !5
  %i.bt = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  store i32 %i.bv, ptr %i.al, align 4, !tbaa !5
  %i.bw = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.ap, i64 1
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.av, i64 2
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bc, i64 3
  %i.ca = shl nuw nsw <4 x i32> %i.bz, splat (i32 9)
  %i.cb = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.ax, i64 1
  %i.cd = insertelement <4 x i32> %i.cc, i32 %i.bd, i64 2
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.bj, i64 3
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 7)     ; 2 uses
  %i.cg = and <4 x i32> %i.ca, splat (i32 65024)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ci = shl nuw nsw i32 %i.bo, 9
  %i.cj = lshr i32 %i.bv, 7                       ; 2 uses
  %.masked76 = and i32 %i.ci, 65024
  %i.ck = load i32, ptr %1, align 4, !tbaa !5     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cm = shl nuw nsw i32 %i.bu, 9
  %i.cn = lshr i32 %i.ck, 7
  %i.co = or i32 %i.cn, %i.cm
  %i.cp = and i32 %i.co, 65535                    ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !5
  %i.cr = shl i32 %i.ck, 9
  %i.cs = lshr i32 %i.q, 7                        ; 2 uses
  %.masked77 = and i32 %i.cr, 65024
  %i.ct = or disjoint i32 %.masked77, %i.cs       ; 2 uses
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !5
  %.071.1 = getelementptr i8, ptr %1, i64 64
  %i.cu = getelementptr i8, ptr %1, i64 72
  %i.cv = getelementptr i8, ptr %1, i64 76
  %i.cw = getelementptr i8, ptr %1, i64 80
  %i.cx = shl nuw nsw i32 %i.cj, 9
  %i.cy = lshr i32 %i.cp, 7                       ; 2 uses
  %.masked82 = and i32 %i.cx, 65024
  %i.cz = or disjoint i32 %i.cy, %.masked82       ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 84
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !5
  %i.db = shl nuw nsw i32 %i.cp, 9
  %i.dc = lshr i32 %i.ct, 7                       ; 2 uses
  %.masked83 = and i32 %i.db, 65024
  %i.dd = or i32 %i.dc, %.masked83                ; 2 uses
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !5
  %i.de = getelementptr i8, ptr %1, i64 88
  %i.df = getelementptr i8, ptr %1, i64 92
  %.071.2 = getelementptr i8, ptr %1, i64 96
  %i.dg = getelementptr i8, ptr %1, i64 104
  %i.dh = lshr i32 %i.cz, 7                       ; 2 uses
  %i.di = getelementptr i8, ptr %1, i64 108
  %i.dj = shl nuw nsw i32 %i.cy, 9
  %i.dk = lshr i32 %i.dd, 7                       ; 2 uses
  %.masked89 = and i32 %i.dj, 65024
  %i.dl = or i32 %i.dk, %.masked89                ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 112
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !5
  %i.dn = shl nuw nsw i32 %i.dc, 9
  %.masked90 = and i32 %i.dn, 65024
  %i.do = getelementptr i8, ptr %1, i64 116
  %i.dp = getelementptr i8, ptr %1, i64 124
  %.071.3 = getelementptr i8, ptr %1, i64 128
  %i.dq = getelementptr i8, ptr %1, i64 132
  %i.dr = shl nuw nsw i32 %i.dh, 9
  %i.ds = lshr i32 %i.dl, 7                       ; 2 uses
  %.masked95 = and i32 %i.dr, 65024
  %i.dt = or i32 %i.ds, %.masked95                ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 136
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !5
  %i.dv = shl nuw nsw i32 %i.dk, 9
  %.masked96 = and i32 %i.dv, 65024
  %i.dw = getelementptr i8, ptr %1, i64 140
  %i.dx = getelementptr i8, ptr %1, i64 144
  %2 = getelementptr i8, ptr %1, i64 152
  %.071.4 = getelementptr i8, ptr %1, i64 160
  %i.dy = shl nuw nsw i32 %i.ds, 9
  %.masked102 = and i32 %i.dy, 65024
  %i.dz = getelementptr i8, ptr %1, i64 164
  %i.ea = getelementptr i8, ptr %1, i64 168
  %i.eb = getelementptr i8, ptr %1, i64 176
  %i.ec = getelementptr i8, ptr %1, i64 184
  %i.ed = getelementptr i8, ptr %1, i64 188
  %i.ee = lshr i32 %i.dt, 7
  %.071.5 = getelementptr i8, ptr %1, i64 192
  %i.ef = getelementptr i8, ptr %1, i64 208
  %i.eg = or disjoint i32 %i.aw, %.masked         ; 2 uses
  store i32 %i.eg, ptr %.071, align 4, !tbaa !5
  %i.eh = or disjoint <4 x i32> %i.cf, %i.cg      ; 4 uses
  %i.ei = or disjoint i32 %i.cj, %.masked76       ; 2 uses
  %i.ej = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.ej, ptr %i.an, align 4, !tbaa !5
  %i.ek = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <2 x i32> <i32 3, i32 0>
  store <2 x i32> %i.ek, ptr %i.ao, align 4, !tbaa !5
  store i32 %i.ei, ptr %i.ch, align 4, !tbaa !5
  %i.el = shl nuw nsw i32 %i.bp, 2
  %i.em = lshr i32 %i.ei, 7                       ; 2 uses
  %i.en = insertelement <4 x i32> %i.cf, i32 %i.aw, i64 0 ; 2 uses
  %i.eo = shl nuw nsw <4 x i32> %i.en, splat (i32 9)
  %i.ep = insertelement <4 x i32> %i.en, i32 %i.cs, i64 3
  %i.eq = shl nuw nsw <4 x i32> %i.ep, splat (i32 9)
  %.masked81 = and i32 %i.el, 65024
  %i.er = lshr <4 x i32> %i.eh, splat (i32 7)
  %i.es = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.et = insertelement <4 x i32> %i.eh, i32 %i.eg, i64 0
  %i.eu = lshr <4 x i32> %i.et, splat (i32 7)     ; 2 uses
  %i.ev = and <4 x i32> %i.eo, splat (i32 65024)
  %i.ew = and <4 x i32> %i.eq, splat (i32 65024)
  %i.ex = shufflevector <4 x i32> %i.ew, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ey = or i32 %i.em, %.masked81                ; 2 uses
  %i.ez = or <4 x i32> %i.ev, %i.es               ; 4 uses
  %i.fa = or <4 x i32> %i.ex, %i.eu               ; 2 uses
  %i.fb = extractelement <4 x i32> %i.fa, i64 0   ; 2 uses
  %i.fc = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.fc, ptr %.071.1, align 4, !tbaa !5
  %i.fd = extractelement <4 x i32> %i.ez, i64 3
  store i32 %i.fd, ptr %i.cu, align 4, !tbaa !5
  store i32 %i.ey, ptr %i.cv, align 4, !tbaa !5
  store i32 %i.fb, ptr %i.de, align 4, !tbaa !5
  %i.fe = extractelement <4 x i32> %i.ez, i64 0
  store i32 %i.fe, ptr %i.df, align 4, !tbaa !5
  %i.ff = shl nuw nsw <4 x i32> %i.es, splat (i32 9)
  %i.fg = shl nuw nsw <4 x i32> %i.eu, splat (i32 9)
  %i.fh = lshr i32 %i.ey, 7                       ; 2 uses
  %i.fi = lshr <4 x i32> %i.ez, splat (i32 7)     ; 3 uses
  %i.fj = lshr i32 %i.fb, 7
  %i.fk = and <4 x i32> %i.ff, splat (i32 65024)
  %i.fl = and <4 x i32> %i.fg, splat (i32 65024)
  %i.fm = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %i.fn = shufflevector <4 x i32> %i.fi, <4 x i32> %i.fm, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.fo = or <4 x i32> %i.fk, %i.fn               ; 5 uses
  %i.fp = extractelement <4 x i32> %i.fo, i64 3
  %i.fq = or <4 x i32> %i.fl, %i.fi               ; 2 uses
  %i.fr = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.fr, ptr %.071.2, align 4, !tbaa !5
  %i.fs = shl nuw nsw i32 %i.em, 9
  %.masked88 = and i32 %i.fs, 65024
  %i.ft = or disjoint i32 %i.dh, %.masked88       ; 2 uses
  store i32 %i.ft, ptr %i.dg, align 4, !tbaa !5
  %i.fu = or i32 %i.fj, %.masked90                ; 2 uses
  store i32 %i.fu, ptr %i.dm, align 4, !tbaa !5
  %i.fv = shufflevector <4 x i32> %i.fq, <4 x i32> %i.fo, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.fv, ptr %i.do, align 4, !tbaa !5
  %i.fw = extractelement <4 x i32> %i.fo, i64 1
  store i32 %i.fw, ptr %i.dp, align 4, !tbaa !5
  %i.fx = shl nuw nsw i32 %i.fh, 9
  %i.fy = lshr i32 %i.ft, 7                       ; 2 uses
  %.masked94 = and i32 %i.fx, 65024
  %i.fz = or i32 %i.fy, %.masked94                ; 2 uses
  store i32 %i.fz, ptr %.071.3, align 4, !tbaa !5
  %i.ga = lshr i32 %i.fu, 7                       ; 2 uses
  %i.gb = or i32 %i.ga, %.masked96                ; 2 uses
  store i32 %i.gb, ptr %i.du, align 4, !tbaa !5
  %i.gc = shl nuw nsw <4 x i32> %i.fa, splat (i32 2)
  %i.gd = lshr <4 x i32> %i.fq, splat (i32 7)     ; 2 uses
  %i.ge = shl nuw nsw <4 x i32> %i.fi, splat (i32 9)
  %i.gf = and <4 x i32> %i.gc, splat (i32 65024)
  %i.gg = lshr <4 x i32> %i.fo, splat (i32 7)
  %i.gh = and <4 x i32> %i.ge, splat (i32 65024)
  %i.gi = or <4 x i32> %i.gd, %i.gf               ; 2 uses
  %i.gj = extractelement <4 x i32> %i.gi, i64 0   ; 2 uses
  store i32 %i.gj, ptr %i.dw, align 4, !tbaa !5
  %i.gk = or <4 x i32> %i.gh, %i.gg               ; 4 uses
  %i.gl = extractelement <4 x i32> %i.gk, i64 3
  %3 = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %3, ptr %i.dx, align 4, !tbaa !5
  %4 = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %4, ptr %2, align 4, !tbaa !5
  %i.gm = lshr i32 %i.gb, 7
  %i.gn = or i32 %i.gm, %.masked102
  store i32 %i.gn, ptr %.071.4, align 4, !tbaa !5
  %i.go = shl nuw nsw i32 %i.ga, 9
  %.masked103 = and i32 %i.go, 65024
  %i.gp = lshr i32 %i.gj, 7
  %i.gq = or i32 %i.gp, %.masked103
  store i32 %i.gq, ptr %i.dz, align 4, !tbaa !5
  %i.gr = shl nuw nsw <4 x i32> %i.gd, splat (i32 9)
  %i.gs = lshr <4 x i32> %i.gk, splat (i32 7)
  %i.gt = and <4 x i32> %i.gr, splat (i32 65024)
  %i.gu = or <4 x i32> %i.gs, %i.gt               ; 3 uses
  %i.gv = shufflevector <4 x i32> %i.gu, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.gv, ptr %i.ea, align 4, !tbaa !5
  %i.gw = shufflevector <4 x i32> %i.gu, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.gw, ptr %i.eb, align 4, !tbaa !5
  %i.gx = shl nuw nsw i32 %i.fp, 2
  %i.gy = lshr i32 %i.fz, 7                       ; 2 uses
  %.masked108 = and i32 %i.gx, 65024
  %i.gz = or i32 %i.gy, %.masked108               ; 2 uses
  store i32 %i.gz, ptr %i.ec, align 4, !tbaa !5
  %i.ha = shl nuw nsw i32 %i.fy, 9
  %.masked109 = and i32 %i.ha, 65024
  %i.hb = or i32 %.masked109, %i.ee               ; 2 uses
  store i32 %i.hb, ptr %i.ed, align 4, !tbaa !5
  %i.hc = shl nuw nsw <4 x i32> %i.gi, splat (i32 2)
  %i.hd = lshr <4 x i32> %i.gu, splat (i32 7)
  %i.he = and <4 x i32> %i.hc, splat (i32 65024)
  %i.hf = or <4 x i32> %i.hd, %i.he
  store <4 x i32> %i.hf, ptr %.071.5, align 4, !tbaa !5
  %i.hg = shl nuw nsw i32 %i.gl, 2
  %i.hh = lshr i32 %i.gz, 7
  %.masked114 = and i32 %i.hg, 65024
  %i.hi = or i32 %i.hh, %.masked114
  %i.hj = getelementptr i8, ptr %1, i64 212
  store i32 %i.hi, ptr %i.ef, align 4, !tbaa !5
  %i.hk = shl nuw nsw i32 %i.gy, 9
  %i.hl = lshr i32 %i.hb, 7
  %.masked115 = and i32 %i.hk, 65024
  %i.hm = or i32 %i.hl, %.masked115
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @IDEA_set_decrypt_key(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.029 = phi ptr [ %i.a, %bb.a ], [ %i.at, %bb.e ] ; 7 uses
  %.028 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.e ] ; 7 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.e ]    ; 2 uses
  %i.b = load i32, ptr %.029, align 4, !tbaa !5   ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %inverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = urem i32 65537, %i.b                     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %inverse.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.zext.i = zext nneg i32 %i.d to i64
  %i.f = zext i32 %i.b to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.g = icmp slt i64 %i.n, 0
  %i.h = add nsw i64 %i.n, 65537
  %spec.select.i = select i1 %i.g, i64 %i.h, i64 %i.n
  %i.i = trunc i64 %spec.select.i to i32
  br label %inverse.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.j = phi i64 [ %i.o, %.lr.ph.i ], [ %.zext.i, %.lr.ph.i.preheader ] ; 3 uses
  %.034.i = phi i64 [ %.02331.i, %.lr.ph.i ], [ 65537, %.lr.ph.i.preheader ]
  %.01933.i = phi i64 [ %i.n, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.02132.i = phi i64 [ %.01933.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.02331.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.k = sub nsw i64 %.034.i, %i.j
  %i.l = sdiv i64 %i.k, %.02331.i
  %i.m = mul nsw i64 %i.l, %.01933.i
  %.fr38.i = freeze i64 %i.m
  %i.n = sub i64 %.02132.i, %.fr38.i              ; 4 uses
  %i.o = urem i64 %.02331.i, %i.j                 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread.i, label %.lr.ph.i, !llvm.loop !10

inverse.exit:                                     ; preds = %bb.c, %.thread.i, %bb.b
  %.2.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.i, %.thread.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 4
  store i32 %.2.i, ptr %.028, align 4, !tbaa !5
  %i.r = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !5
  %i.t = sub i32 0, %i.s
  %i.u = and i32 %i.t, 65535
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 8
  store i32 %i.u, ptr %i.q, align 4, !tbaa !5
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !5
  %i.y = sub i32 0, %i.x
  %i.z = and i32 %i.y, 65535
  %i.aa = getelementptr inbounds nuw i8, ptr %.028, i64 12
  store i32 %i.z, ptr %i.v, align 4, !tbaa !5
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !5  ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %inverse.exit41, label %bb.d

bb.d:                                             ; preds = %inverse.exit
  %i.ae = urem i32 65537, %i.ac                   ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %inverse.exit41, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.d
  %.zext.i30 = zext nneg i32 %i.ae to i64
  %i.ag = zext i32 %i.ac to i64
  br label %.lr.ph.i31

.thread.i37:                                      ; preds = %.lr.ph.i31
  %i.ah = icmp slt i64 %i.ao, 0
  %i.ai = add nsw i64 %i.ao, 65537
  %spec.select.i38 = select i1 %i.ah, i64 %i.ai, i64 %i.ao
  %i.aj = trunc i64 %spec.select.i38 to i32
  br label %inverse.exit41

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %i.ak = phi i64 [ %i.ap, %.lr.ph.i31 ], [ %.zext.i30, %.lr.ph.i31.preheader ] ; 3 uses
  %.034.i32 = phi i64 [ %.02331.i35, %.lr.ph.i31 ], [ 65537, %.lr.ph.i31.preheader ]
  %.01933.i33 = phi i64 [ %i.ao, %.lr.ph.i31 ], [ 1, %.lr.ph.i31.preheader ] ; 2 uses
  %.02132.i34 = phi i64 [ %.01933.i33, %.lr.ph.i31 ], [ 0, %.lr.ph.i31.preheader ]
  %.02331.i35 = phi i64 [ %i.ak, %.lr.ph.i31 ], [ %i.ag, %.lr.ph.i31.preheader ] ; 3 uses
  %i.al = sub nsw i64 %.034.i32, %i.ak
  %i.am = sdiv i64 %i.al, %.02331.i35
  %i.an = mul nsw i64 %i.am, %.01933.i33
  %.fr38.i36 = freeze i64 %i.an
  %i.ao = sub i64 %.02132.i34, %.fr38.i36         ; 4 uses
  %i.ap = urem i64 %.02331.i35, %i.ak             ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread.i37, label %.lr.ph.i31, !llvm.loop !10

inverse.exit41:                                   ; preds = %bb.d, %.thread.i37, %inverse.exit
  %.2.i40 = phi i32 [ 0, %inverse.exit ], [ 1, %bb.d ], [ %i.aj, %.thread.i37 ]
  store i32 %.2.i40, ptr %i.aa, align 4, !tbaa !5
  %i.ar = icmp eq i32 %.0, 8
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %inverse.exit41
  %i.as = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.at = getelementptr inbounds i8, ptr %.029, i64 -24
  %i.au = getelementptr inbounds i8, ptr %.029, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.028, i64 20
  store i32 %i.av, ptr %i.as, align 4, !tbaa !5
  %i.ax = getelementptr inbounds i8, ptr %.029, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !5
  %i.az = getelementptr inbounds nuw i8, ptr %.028, i64 24
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !5
  %i.ba = add nuw nsw i32 %.0, 1
  br label %bb.b, !llvm.loop !12

bb.f:                                             ; preds = %inverse.exit41
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !5
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !5
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !5
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
