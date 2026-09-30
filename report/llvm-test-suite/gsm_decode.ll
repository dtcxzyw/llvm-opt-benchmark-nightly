Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gsm_decode?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @gsm_decode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 7 uses
  %i.b = alloca [4 x i16], align 8                ; 4 uses
  %i.c = alloca [4 x i16], align 8                ; 4 uses
  %i.d = alloca [4 x i16], align 4                ; 6 uses
  %i.e = alloca [4 x i16], align 4                ; 6 uses
  %i.f = alloca [52 x i16], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  %i.g = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %i.h = and i8 %i.g, -16
  %.not = icmp eq i8 %i.h, -48
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.tr = zext i8 %i.g to i16
  %i.j = shl nuw nsw i16 %.tr, 2
  %i.k = and i16 %i.j, 60
  %i.l = load i8, ptr %i.i, align 1, !tbaa !8     ; 2 uses
  %i.m = lshr i8 %i.l, 6
  %i.n = zext nneg i8 %i.m to i16
  %i.o = or disjoint i16 %i.k, %i.n
  store i16 %i.o, ptr %i.a, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = shl i8 %i.r, 2
  %i.u = and i8 %i.t, 28
  %i.v = load i8, ptr %i.s, align 1, !tbaa !8     ; 3 uses
  %i.w = lshr i8 %i.v, 6
  %i.x = lshr i8 %i.v, 2
  %i.y = lshr i8 %i.r, 3
  %i.z = or disjoint i8 %i.w, %i.u
  %i.aa = insertelement <4 x i8> poison, i8 %i.l, i64 0
  %i.ab = insertelement <4 x i8> %i.aa, i8 %i.y, i64 1
  %i.ac = insertelement <4 x i8> %i.ab, i8 %i.z, i64 2
  %i.ad = insertelement <4 x i8> %i.ac, i8 %i.x, i64 3
  %i.ae = and <4 x i8> %i.ad, <i8 63, i8 -1, i8 -1, i8 15>
  %i.af = zext <4 x i8> %i.ae to <4 x i16>
  store <4 x i16> %i.af, ptr %i.q, align 2, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = shl i8 %i.v, 2
  %i.ai = and i8 %i.ah, 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !8   ; 3 uses
  %i.al = lshr i8 %i.ak, 6
  %i.am = or disjoint i8 %i.al, %i.ai
  %i.an = zext nneg i8 %i.am to i16
  store i16 %i.an, ptr %i.aj, align 2, !tbaa !10
  %i.ao = lshr i8 %i.ak, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ar = insertelement <2 x i8> poison, i8 %i.ao, i64 0
  %i.as = insertelement <2 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = and <2 x i8> %i.as, splat (i8 7)
  %i.au = zext nneg <2 x i8> %i.at to <2 x i16>
  store <2 x i16> %i.au, ptr %i.ap, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 4 uses
  %i.ba = lshr i8 %i.az, 7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bc = lshr i8 %i.az, 4
  %i.bd = lshr i8 %i.az, 1
  %i.be = insertelement <2 x i8> poison, i8 %i.bc, i64 0
  %i.bf = insertelement <2 x i8> %i.be, i8 %i.bd, i64 1
  %i.bg = and <2 x i8> %i.bf, splat (i8 7)
  %i.bh = zext nneg <2 x i8> %i.bg to <2 x i16>
  store <2 x i16> %i.bh, ptr %i.bb, align 16, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bj = shl i8 %i.az, 2
  %i.bk = and i8 %i.bj, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bp = load <2 x i8>, ptr %i.aq, align 1, !tbaa !8 ; 3 uses
  %i.bq = load <2 x i8>, ptr %i.bn, align 1, !tbaa !8 ; 3 uses
  %i.br = shufflevector <2 x i8> %i.bp, <2 x i8> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bs = shl <2 x i8> %i.br, splat (i8 1)
  %i.bt = and <2 x i8> %i.bs, splat (i8 2)
  %i.bu = shufflevector <2 x i8> %i.bp, <2 x i8> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bv = lshr <2 x i8> %i.bu, splat (i8 7)
  %i.bw = or disjoint <2 x i8> %i.bv, %i.bt
  %i.bx = zext nneg <2 x i8> %i.bw to <2 x i16>
  store <2 x i16> %i.bx, ptr %i.d, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %3 = load <2 x i8>, ptr %i.av, align 1, !tbaa !8 ; 3 uses
  %4 = load <2 x i8>, ptr %i.ax, align 1, !tbaa !8 ; 3 uses
  %5 = extractelement <2 x i8> %4, i64 1
  %6 = shl i8 %5, 1
  %7 = and i8 %6, 6
  %8 = extractelement <2 x i8> %4, i64 0
  %i.bz = lshr i8 %8, 6
  %9 = or disjoint i8 %i.ba, %7
  %i.ca = load i8, ptr %i.aw, align 1, !tbaa !8   ; 3 uses
  %i.cb = lshr i8 %i.ca, 4
  %i.cc = lshr i8 %i.ca, 1
  %i.cd = shl i8 %i.ca, 2
  %i.ce = and i8 %i.cd, 4
  %i.cf = or disjoint i8 %i.bz, %i.ce
  %i.cg = insertelement <8 x i8> poison, i8 %i.cb, i64 0
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.cc, i64 1
  %i.ci = insertelement <8 x i8> %i.ch, i8 %i.cf, i64 2
  %i.cj = shufflevector <2 x i8> %4, <2 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ck = lshr <8 x i8> %i.cj, <i8 3, i8 0, i8 5, i8 2, i8 undef, i8 undef, i8 undef, i8 undef>
  %i.cl = shufflevector <8 x i8> %i.ci, <8 x i8> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.cm = insertelement <8 x i8> %i.cl, i8 %9, i64 7
  %i.cn = and <8 x i8> %i.cm, <i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1, i8 7, i8 -1>
  %i.co = zext <8 x i8> %i.cn to <8 x i16>
  store <8 x i16> %i.co, ptr %i.f, align 16, !tbaa !10
  %i.cp = load <2 x i8>, ptr %i.bo, align 1, !tbaa !8 ; 3 uses
  %i.cq = shufflevector <2 x i8> %3, <2 x i8> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.cr = shl <2 x i8> %i.cq, splat (i8 1)
  %i.cs = and <2 x i8> %i.cr, splat (i8 62)
  %i.ct = shufflevector <2 x i8> %3, <2 x i8> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.cu = lshr <2 x i8> %i.ct, splat (i8 7)
  %i.cv = or disjoint <2 x i8> %i.cu, %i.cs
  %i.cw = zext nneg <2 x i8> %i.cv to <2 x i16>
  store <2 x i16> %i.cw, ptr %i.e, align 4, !tbaa !10
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %12 = load i8, ptr %11, align 1, !tbaa !8       ; 3 uses
  %13 = load i8, ptr %i.bi, align 1, !tbaa !8     ; 3 uses
  %14 = lshr i8 %13, 6
  %15 = or disjoint i8 %14, %i.bk
  %16 = zext nneg i8 %15 to i16
  store i16 %16, ptr %i.bl, align 4, !tbaa !10
  %17 = lshr i8 %13, 3
  %i.cx = load <2 x i8>, ptr %i.by, align 1, !tbaa !8 ; 2 uses
  %i.cy = load i8, ptr %10, align 1, !tbaa !8
  %i.cz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.da = shl i8 %i.cz, 2
  %i.db = and i8 %i.da, 4
  %i.dc = lshr i8 %i.cy, 6
  %i.dd = or disjoint i8 %i.dc, %i.db
  %i.de = shufflevector <2 x i8> %i.cx, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.df = insertelement <4 x i8> poison, i8 %i.dd, i64 2
  %i.dg = lshr i8 %12, 5
  %i.dh = insertelement <8 x i8> poison, i8 %17, i64 0
  %i.di = insertelement <8 x i8> %i.dh, i8 %13, i64 1
  %i.dj = shufflevector <4 x i8> %i.de, <4 x i8> %i.df, <8 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = lshr <8 x i8> %i.dj, <i8 4, i8 1, i8 0, i8 3, i8 undef, i8 undef, i8 undef, i8 undef>
  %i.dl = shufflevector <8 x i8> %i.di, <8 x i8> %i.dk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x i8> %i.cx, <2 x i8> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = shufflevector <8 x i8> %i.dl, <8 x i8> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 7
  %i.dp = and <8 x i8> %i.do, <i8 7, i8 7, i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1>
  %i.dq = zext <8 x i8> %i.dp to <8 x i16>
  store <8 x i16> %i.dq, ptr %i.bm, align 2, !tbaa !10
  %i.dr = lshr i8 %12, 2
  %i.ds = and i8 %i.dr, 7
  %i.dt = zext nneg i8 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.dw = shl i8 %12, 1
  %i.dx = and i8 %i.dw, 6
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !8   ; 4 uses
  %i.ea = lshr i8 %i.dz, 7
  %i.eb = or disjoint i8 %i.ea, %i.dx
  %i.ec = zext nneg i8 %i.eb to i16
  store i16 %i.ec, ptr %i.dy, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  %i.ee = lshr i8 %i.dz, 4
  %i.ef = lshr i8 %i.dz, 1
  %i.eg = insertelement <2 x i8> poison, i8 %i.ee, i64 0
  %i.eh = insertelement <2 x i8> %i.eg, i8 %i.ef, i64 1
  %i.ei = and <2 x i8> %i.eh, splat (i8 7)
  %i.ej = zext nneg <2 x i8> %i.ei to <2 x i16>
  store <2 x i16> %i.ej, ptr %i.ed, align 2, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.el = shl i8 %i.dz, 2
  %i.em = and i8 %i.el, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.es = shl i8 %i.eq, 1
  %i.et = and i8 %i.es, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !8   ; 3 uses
  %i.ew = lshr i8 %i.ev, 7
  %i.ex = or disjoint i8 %i.ew, %i.et
  %i.ey = zext nneg i8 %i.ex to i16
  store i16 %i.ey, ptr %i.eu, align 4, !tbaa !10
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 2 uses
  %i.fa = shl i8 %i.ev, 1
  %i.fb = and i8 %i.fa, 62
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !8   ; 3 uses
  %i.fg = load i8, ptr %i.ek, align 1, !tbaa !8   ; 3 uses
  %i.fh = lshr i8 %i.fg, 6
  %i.fi = or disjoint i8 %i.fh, %i.em
  %i.fj = zext nneg i8 %i.fi to i16
  store i16 %i.fj, ptr %i.en, align 2, !tbaa !10
  %i.fk = lshr i8 %i.fg, 3
  %i.fl = load <2 x i8>, ptr %i.ez, align 1, !tbaa !8 ; 2 uses
  %i.fm = load i8, ptr %i.fd, align 1, !tbaa !8
  %i.fn = load i8, ptr %i.ez, align 1, !tbaa !8   ; 2 uses
  %i.fo = lshr i8 %i.fn, 7
  %i.fp = or disjoint i8 %i.fo, %i.fb
  %i.fq = zext nneg i8 %i.fp to i16
  store i16 %i.fq, ptr %i.fc, align 4, !tbaa !10
  %i.fr = shl i8 %i.fn, 2
  %i.fs = and i8 %i.fr, 4
  %i.ft = lshr i8 %i.fm, 6
  %i.fu = or disjoint i8 %i.ft, %i.fs
  %i.fv = shufflevector <2 x i8> %i.fl, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.fw = insertelement <4 x i8> poison, i8 %i.fu, i64 2
  %i.fx = lshr i8 %i.ff, 5
  %i.fy = insertelement <8 x i8> poison, i8 %i.fk, i64 0
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fg, i64 1
  %i.ga = shufflevector <4 x i8> %i.fv, <4 x i8> %i.fw, <8 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gb = lshr <8 x i8> %i.ga, <i8 4, i8 1, i8 0, i8 3, i8 undef, i8 undef, i8 undef, i8 undef>
  %i.gc = shufflevector <8 x i8> %i.fz, <8 x i8> %i.gb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.gd = shufflevector <2 x i8> %i.fl, <2 x i8> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <8 x i8> %i.gc, <8 x i8> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 7
  %i.gg = and <8 x i8> %i.gf, <i8 7, i8 7, i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1>
  %i.gh = zext <8 x i8> %i.gg to <8 x i16>
  store <8 x i16> %i.gh, ptr %i.eo, align 16, !tbaa !10
  %i.gi = lshr i8 %i.ff, 2
  %i.gj = and i8 %i.gi, 7
  %i.gk = zext nneg i8 %i.gj to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i16 %i.gk, ptr %i.gl, align 16, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gn = shl i8 %i.ff, 1
  %i.go = and i8 %i.gn, 6
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 66
  %i.gq = load i8, ptr %i.gm, align 1, !tbaa !8   ; 4 uses
  %i.gr = lshr i8 %i.gq, 7
  %i.gs = or disjoint i8 %i.gr, %i.go
  %i.gt = zext nneg i8 %i.gs to i16
  store i16 %i.gt, ptr %i.gp, align 2, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.gv = lshr i8 %i.gq, 4
  %i.gw = lshr i8 %i.gq, 1
  %i.gx = insertelement <2 x i8> poison, i8 %i.gv, i64 0
  %i.gy = insertelement <2 x i8> %i.gx, i8 %i.gw, i64 1
  %i.gz = and <2 x i8> %i.gy, splat (i8 7)
  %i.ha = zext nneg <2 x i8> %i.gz to <2 x i16>
  store <2 x i16> %i.ha, ptr %i.gu, align 4, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.hc = shl i8 %i.gq, 2
  %i.hd = and i8 %i.hc, 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 74
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !8   ; 2 uses
  %i.hi = shufflevector <2 x i8> %i.bp, <2 x i8> %i.bq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hj = insertelement <4 x i8> %i.hi, i8 %i.eq, i64 2
  %i.hk = insertelement <4 x i8> %i.hj, i8 %i.hh, i64 3
  %i.hl = lshr <4 x i8> %i.hk, splat (i8 1)
  %i.hm = zext nneg <4 x i8> %i.hl to <4 x i16>
  store <4 x i16> %i.hm, ptr %i.b, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.ho = shl i8 %i.hh, 1
  %i.hp = and i8 %i.ho, 2
  %i.hq = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !8   ; 3 uses
  %i.hs = lshr i8 %i.hr, 7
  %i.ht = or disjoint i8 %i.hs, %i.hp
  %i.hu = zext nneg i8 %i.ht to i16
  store i16 %i.hu, ptr %i.hq, align 2, !tbaa !10
  %i.hv = shufflevector <2 x i8> %3, <2 x i8> %i.cp, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hw = insertelement <4 x i8> %i.hv, i8 %i.ev, i64 2
  %i.hx = insertelement <4 x i8> %i.hw, i8 %i.hr, i64 3
  %i.hy = lshr <4 x i8> %i.hx, splat (i8 5)
  %i.hz = and <4 x i8> %i.hy, splat (i8 3)
  %i.ia = zext nneg <4 x i8> %i.hz to <4 x i16>
  store <4 x i16> %i.ia, ptr %i.c, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ic = shl i8 %i.hr, 1
  %i.id = and i8 %i.ic, 62
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !8   ; 3 uses
  %i.ii = load i8, ptr %i.hb, align 1, !tbaa !8   ; 3 uses
  %i.ij = lshr i8 %i.ii, 6
  %i.ik = or disjoint i8 %i.ij, %i.hd
  %i.il = zext nneg i8 %i.ik to i16
  store i16 %i.il, ptr %i.he, align 8, !tbaa !10
  %i.im = lshr i8 %i.ii, 3
  %i.in = load <2 x i8>, ptr %i.ib, align 1, !tbaa !8 ; 2 uses
  %i.io = load i8, ptr %i.if, align 1, !tbaa !8
  %i.ip = load i8, ptr %i.ib, align 1, !tbaa !8   ; 2 uses
  %i.iq = lshr i8 %i.ip, 7
  %i.ir = or disjoint i8 %i.iq, %i.id
  %i.is = zext nneg i8 %i.ir to i16
  store i16 %i.is, ptr %i.ie, align 2, !tbaa !10
  %i.it = shl i8 %i.ip, 2
  %i.iu = and i8 %i.it, 4
  %i.iv = lshr i8 %i.io, 6
  %i.iw = or disjoint i8 %i.iv, %i.iu
  %i.ix = shufflevector <2 x i8> %i.in, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.iy = insertelement <4 x i8> poison, i8 %i.iw, i64 2
  %i.iz = lshr i8 %i.ih, 5
  %i.ja = insertelement <8 x i8> poison, i8 %i.im, i64 0
  %i.jb = insertelement <8 x i8> %i.ja, i8 %i.ii, i64 1
  %i.jc = shufflevector <4 x i8> %i.ix, <4 x i8> %i.iy, <8 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jd = lshr <8 x i8> %i.jc, <i8 4, i8 1, i8 0, i8 3, i8 undef, i8 undef, i8 undef, i8 undef>
  %i.je = shufflevector <8 x i8> %i.jb, <8 x i8> %i.jd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.jf = shufflevector <2 x i8> %i.in, <2 x i8> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jg = shufflevector <8 x i8> %i.je, <8 x i8> %i.jf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.jh = insertelement <8 x i8> %i.jg, i8 %i.iz, i64 7
  %i.ji = and <8 x i8> %i.jh, <i8 7, i8 7, i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1>
  %i.jj = zext <8 x i8> %i.ji to <8 x i16>
  store <8 x i16> %i.jj, ptr %i.hf, align 2, !tbaa !10
  %i.jk = lshr i8 %i.ih, 2
  %i.jl = and i8 %i.jk, 7
  %i.jm = zext nneg i8 %i.jl to i16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.jp = shl i8 %i.ih, 1
  %i.jq = and i8 %i.jp, 6
  %i.jr = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.js = load i8, ptr %i.jo, align 1, !tbaa !8   ; 4 uses
  %i.jt = lshr i8 %i.js, 7
  %i.ju = or disjoint i8 %i.jt, %i.jq
  %i.jv = zext nneg i8 %i.ju to i16
  store i16 %i.jv, ptr %i.jr, align 4, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 94
  %i.jx = lshr i8 %i.js, 4
  %i.jy = lshr i8 %i.js, 1
  %i.jz = insertelement <2 x i8> poison, i8 %i.jx, i64 0
  %i.ka = insertelement <2 x i8> %i.jz, i8 %i.jy, i64 1
  %i.kb = and <2 x i8> %i.ka, splat (i8 7)
  %i.kc = zext nneg <2 x i8> %i.kb to <2 x i16>
  store <2 x i16> %i.kc, ptr %i.jw, align 2, !tbaa !10
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ke = shl i8 %i.js, 2
  %i.kf = and i8 %i.ke, 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !8   ; 3 uses
  %i.ki = lshr i8 %i.kh, 6
  %i.kj = or disjoint i8 %i.ki, %i.kf
  %i.kk = zext nneg i8 %i.kj to i16
  store i16 %i.kk, ptr %i.kg, align 2, !tbaa !10
  %i.kl = lshr i8 %i.kh, 3
  %i.km = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.kn = insertelement <2 x i8> poison, i8 %i.kl, i64 0
  %i.ko = insertelement <2 x i8> %i.kn, i8 %i.kh, i64 1
  %i.kp = and <2 x i8> %i.ko, splat (i8 7)
  %i.kq = zext nneg <2 x i8> %i.kp to <2 x i16>
  store <2 x i16> %i.kq, ptr %i.km, align 4, !tbaa !10
  call void @Gsm_Decoder(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %2) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Gsm_Decoder(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
