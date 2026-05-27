begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @gsm_decode(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
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
  store i16 %i.o, ptr %i.a, align 16, !tbaa !9
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
  store <4 x i16> %i.af, ptr %i.q, align 2, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = shl i8 %i.v, 2
  %i.ai = and i8 %i.ah, 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !8   ; 3 uses
  %i.al = lshr i8 %i.ak, 6
  %i.am = or disjoint i8 %i.al, %i.ai
  %i.an = zext nneg i8 %i.am to i16
  store i16 %i.an, ptr %i.aj, align 2, !tbaa !9
  %i.ao = lshr i8 %i.ak, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ar = insertelement <2 x i8> poison, i8 %i.ao, i64 0
  %i.as = insertelement <2 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = and <2 x i8> %i.as, splat (i8 7)
  %i.au = zext nneg <2 x i8> %i.at to <2 x i16>
  store <2 x i16> %i.au, ptr %i.ap, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 4 uses
  %i.ba = lshr i8 %i.az, 7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bc = lshr i8 %i.az, 1
  %i.bd = lshr i8 %i.az, 4
  %i.be = insertelement <2 x i8> poison, i8 %i.bd, i64 0
  %i.bf = insertelement <2 x i8> %i.be, i8 %i.bc, i64 1
  %i.bg = and <2 x i8> %i.bf, splat (i8 7)
  %i.bh = zext nneg <2 x i8> %i.bg to <2 x i16>
  store <2 x i16> %i.bh, ptr %i.bb, align 16, !tbaa !9
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
  store <2 x i16> %i.bx, ptr %i.d, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.bz = load <2 x i8>, ptr %i.av, align 1, !tbaa !8 ; 3 uses
  %i.ca = load i8, ptr %i.aw, align 1, !tbaa !8   ; 3 uses
  %3 = shl i8 %i.ca, 2
  %4 = and i8 %3, 4
  %5 = load <2 x i8>, ptr %i.ax, align 1, !tbaa !8 ; 3 uses
  %6 = extractelement <2 x i8> %5, i64 1
  %i.cb = shl i8 %6, 1
  %i.cc = and i8 %i.cb, 6
  %7 = extractelement <2 x i8> %5, i64 0
  %i.cd = lshr i8 %7, 6
  %8 = or disjoint i8 %i.ba, %i.cc
  %9 = or disjoint i8 %i.cd, %4
  %i.ce = lshr i8 %i.ca, 1
  %i.cf = lshr i8 %i.ca, 4
  %i.cg = insertelement <8 x i8> poison, i8 %i.cf, i64 0
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.ce, i64 1
  %i.ci = insertelement <8 x i8> %i.ch, i8 %9, i64 2
  %10 = shufflevector <2 x i8> %5, <2 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = lshr <8 x i8> %10, <i8 3, i8 0, i8 5, i8 2, i8 undef, i8 undef, i8 undef, i8 undef>
  %12 = shufflevector <8 x i8> %i.ci, <8 x i8> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.cj = insertelement <8 x i8> %12, i8 %8, i64 7
  %i.ck = and <8 x i8> %i.cj, <i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1, i8 7, i8 -1>
  %i.cl = zext <8 x i8> %i.ck to <8 x i16>
  store <8 x i16> %i.cl, ptr %i.f, align 16, !tbaa !9
  %i.cm = load <2 x i8>, ptr %i.bo, align 1, !tbaa !8 ; 3 uses
  %i.cn = shufflevector <2 x i8> %i.bz, <2 x i8> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.co = shl <2 x i8> %i.cn, splat (i8 1)
  %i.cp = and <2 x i8> %i.co, splat (i8 62)
  %i.cq = shufflevector <2 x i8> %i.bz, <2 x i8> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cr = lshr <2 x i8> %i.cq, splat (i8 7)
  %i.cs = or disjoint <2 x i8> %i.cr, %i.cp
  %i.ct = zext nneg <2 x i8> %i.cs to <2 x i16>
  store <2 x i16> %i.ct, ptr %i.e, align 4, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8   ; 3 uses
  %i.cx = load i8, ptr %i.bi, align 1, !tbaa !8   ; 3 uses
  %i.cy = lshr i8 %i.cx, 6
  %i.cz = or disjoint i8 %i.cy, %i.bk
  %i.da = zext nneg i8 %i.cz to i16
  store i16 %i.da, ptr %i.bl, align 4, !tbaa !9
  %13 = lshr i8 %i.cw, 5
  %14 = load <2 x i8>, ptr %i.by, align 1, !tbaa !8 ; 2 uses
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.dc = load i8, ptr %i.by, align 1, !tbaa !8
  %i.dd = shl i8 %i.dc, 2
  %i.de = and i8 %i.dd, 4
  %i.df = lshr i8 %i.db, 6
  %i.dg = or disjoint i8 %i.df, %i.de
  %15 = shufflevector <2 x i8> %14, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %16 = insertelement <4 x i8> poison, i8 %i.dg, i64 2
  %i.dh = lshr i8 %i.cx, 3
  %i.di = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.cx, i64 1
  %17 = shufflevector <4 x i8> %15, <4 x i8> %16, <8 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = lshr <8 x i8> %17, <i8 4, i8 1, i8 0, i8 3, i8 undef, i8 undef, i8 undef, i8 undef>
  %19 = shufflevector <8 x i8> %i.dj, <8 x i8> %18, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %20 = shufflevector <2 x i8> %14, <2 x i8> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x i8> %19, <8 x i8> %20, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.dk = insertelement <8 x i8> %21, i8 %13, i64 7
  %i.dl = and <8 x i8> %i.dk, <i8 7, i8 7, i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1>
  %i.dm = zext <8 x i8> %i.dl to <8 x i16>
  store <8 x i16> %i.dm, ptr %i.bm, align 2, !tbaa !9
  %i.dn = lshr i8 %i.cw, 2
  %i.do = and i8 %i.dn, 7
  %i.dp = zext nneg i8 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ds = shl i8 %i.cw, 1
  %i.dt = and i8 %i.ds, 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !8   ; 4 uses
  %i.dw = lshr i8 %i.dv, 7
  %i.dx = or disjoint i8 %i.dw, %i.dt
  %i.dy = zext nneg i8 %i.dx to i16
  store i16 %i.dy, ptr %i.du, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  %i.ea = lshr i8 %i.dv, 1
  %i.eb = lshr i8 %i.dv, 4
  %i.ec = insertelement <2 x i8> poison, i8 %i.eb, i64 0
  %i.ed = insertelement <2 x i8> %i.ec, i8 %i.ea, i64 1
  %i.ee = and <2 x i8> %i.ed, splat (i8 7)
  %i.ef = zext nneg <2 x i8> %i.ee to <2 x i16>
  store <2 x i16> %i.ef, ptr %i.dz, align 2, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.eh = shl i8 %i.dv, 2
  %i.ei = and i8 %i.eh, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.em = load i8, ptr %i.el, align 1, !tbaa !8   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eo = shl i8 %i.em, 1
  %i.ep = and i8 %i.eo, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.er = load i8, ptr %i.en, align 1, !tbaa !8   ; 3 uses
  %i.es = lshr i8 %i.er, 7
  %i.et = or disjoint i8 %i.es, %i.ep
  %i.eu = zext nneg i8 %i.et to i16
  store i16 %i.eu, ptr %i.eq, align 4, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 2 uses
  %i.ew = shl i8 %i.er, 1
  %i.ex = and i8 %i.ew, 62
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8   ; 3 uses
  %i.fc = load i8, ptr %i.eg, align 1, !tbaa !8   ; 3 uses
  %i.fd = lshr i8 %i.fc, 6
  %i.fe = or disjoint i8 %i.fd, %i.ei
  %i.ff = zext nneg i8 %i.fe to i16
  store i16 %i.ff, ptr %i.ej, align 2, !tbaa !9
  %22 = lshr i8 %i.fb, 5
  %23 = load <2 x i8>, ptr %i.ev, align 1, !tbaa !8 ; 2 uses
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fh = load i8, ptr %i.ev, align 1, !tbaa !8   ; 2 uses
  %i.fi = lshr i8 %i.fh, 7
  %i.fj = or disjoint i8 %i.fi, %i.ex
  %i.fk = zext nneg i8 %i.fj to i16
  store i16 %i.fk, ptr %i.ey, align 4, !tbaa !9
  %i.fl = shl i8 %i.fh, 2
  %i.fm = and i8 %i.fl, 4
  %i.fn = lshr i8 %i.fg, 6
  %i.fo = or disjoint i8 %i.fn, %i.fm
  %24 = shufflevector <2 x i8> %23, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %25 = insertelement <4 x i8> poison, i8 %i.fo, i64 2
  %i.fp = lshr i8 %i.fc, 3
  %i.fq = insertelement <8 x i8> poison, i8 %i.fp, i64 0
  %i.fr = insertelement <8 x i8> %i.fq, i8 %i.fc, i64 1
  %26 = shufflevector <4 x i8> %24, <4 x i8> %25, <8 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = lshr <8 x i8> %26, <i8 4, i8 1, i8 0, i8 3, i8 undef, i8 undef, i8 undef, i8 undef>
  %28 = shufflevector <8 x i8> %i.fr, <8 x i8> %27, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %29 = shufflevector <2 x i8> %23, <2 x i8> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <8 x i8> %28, <8 x i8> %29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.fs = insertelement <8 x i8> %30, i8 %22, i64 7
  %i.ft = and <8 x i8> %i.fs, <i8 7, i8 7, i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1>
  %i.fu = zext <8 x i8> %i.ft to <8 x i16>
  store <8 x i16> %i.fu, ptr %i.ek, align 16, !tbaa !9
  %i.fv = lshr i8 %i.fb, 2
  %i.fw = and i8 %i.fv, 7
  %i.fx = zext nneg i8 %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i16 %i.fx, ptr %i.fy, align 16, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ga = shl i8 %i.fb, 1
  %i.gb = and i8 %i.ga, 6
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 66
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !8   ; 4 uses
  %i.ge = lshr i8 %i.gd, 7
  %i.gf = or disjoint i8 %i.ge, %i.gb
  %i.gg = zext nneg i8 %i.gf to i16
  store i16 %i.gg, ptr %i.gc, align 2, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.gi = lshr i8 %i.gd, 1
  %i.gj = lshr i8 %i.gd, 4
  %i.gk = insertelement <2 x i8> poison, i8 %i.gj, i64 0
  %i.gl = insertelement <2 x i8> %i.gk, i8 %i.gi, i64 1
  %i.gm = and <2 x i8> %i.gl, splat (i8 7)
  %i.gn = zext nneg <2 x i8> %i.gm to <2 x i16>
  store <2 x i16> %i.gn, ptr %i.gh, align 4, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.gp = shl i8 %i.gd, 2
  %i.gq = and i8 %i.gp, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 74
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !8   ; 2 uses
  %i.gv = shufflevector <2 x i8> %i.bp, <2 x i8> %i.bq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gw = insertelement <4 x i8> %i.gv, i8 %i.em, i64 2
  %i.gx = insertelement <4 x i8> %i.gw, i8 %i.gu, i64 3
  %i.gy = lshr <4 x i8> %i.gx, splat (i8 1)
  %i.gz = zext nneg <4 x i8> %i.gy to <4 x i16>
  store <4 x i16> %i.gz, ptr %i.b, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.hb = shl i8 %i.gu, 1
  %i.hc = and i8 %i.hb, 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !8   ; 3 uses
  %i.hf = lshr i8 %i.he, 7
  %i.hg = or disjoint i8 %i.hf, %i.hc
  %i.hh = zext nneg i8 %i.hg to i16
  store i16 %i.hh, ptr %i.hd, align 2, !tbaa !9
  %i.hi = shufflevector <2 x i8> %i.bz, <2 x i8> %i.cm, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hj = insertelement <4 x i8> %i.hi, i8 %i.er, i64 2
  %i.hk = insertelement <4 x i8> %i.hj, i8 %i.he, i64 3
  %i.hl = lshr <4 x i8> %i.hk, splat (i8 5)
  %i.hm = and <4 x i8> %i.hl, splat (i8 3)
  %i.hn = zext nneg <4 x i8> %i.hm to <4 x i16>
  store <4 x i16> %i.hn, ptr %i.c, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.hp = shl i8 %i.he, 1
  %i.hq = and i8 %i.hp, 62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !8   ; 3 uses
  %i.hv = load i8, ptr %i.go, align 1, !tbaa !8   ; 3 uses
  %i.hw = lshr i8 %i.hv, 6
  %i.hx = or disjoint i8 %i.hw, %i.gq
  %i.hy = zext nneg i8 %i.hx to i16
  store i16 %i.hy, ptr %i.gr, align 8, !tbaa !9
  %31 = lshr i8 %i.hu, 5
  %32 = load <2 x i8>, ptr %i.ho, align 1, !tbaa !8 ; 2 uses
  %i.hz = load i8, ptr %i.hs, align 1, !tbaa !8
  %i.ia = load i8, ptr %i.ho, align 1, !tbaa !8   ; 2 uses
  %i.ib = lshr i8 %i.ia, 7
  %i.ic = or disjoint i8 %i.ib, %i.hq
  %i.id = zext nneg i8 %i.ic to i16
  store i16 %i.id, ptr %i.hr, align 2, !tbaa !9
  %i.ie = shl i8 %i.ia, 2
  %i.if = and i8 %i.ie, 4
  %i.ig = lshr i8 %i.hz, 6
  %i.ih = or disjoint i8 %i.ig, %i.if
  %33 = shufflevector <2 x i8> %32, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %34 = insertelement <4 x i8> poison, i8 %i.ih, i64 2
  %i.ii = lshr i8 %i.hv, 3
  %i.ij = insertelement <8 x i8> poison, i8 %i.ii, i64 0
  %i.ik = insertelement <8 x i8> %i.ij, i8 %i.hv, i64 1
  %35 = shufflevector <4 x i8> %33, <4 x i8> %34, <8 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %36 = lshr <8 x i8> %35, <i8 4, i8 1, i8 0, i8 3, i8 undef, i8 undef, i8 undef, i8 undef>
  %37 = shufflevector <8 x i8> %i.ik, <8 x i8> %36, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %38 = shufflevector <2 x i8> %32, <2 x i8> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <8 x i8> %37, <8 x i8> %38, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.il = insertelement <8 x i8> %39, i8 %31, i64 7
  %i.im = and <8 x i8> %i.il, <i8 7, i8 7, i8 7, i8 7, i8 -1, i8 7, i8 7, i8 -1>
  %i.in = zext <8 x i8> %i.im to <8 x i16>
  store <8 x i16> %i.in, ptr %i.gs, align 2, !tbaa !9
  %i.io = lshr i8 %i.hu, 2
  %i.ip = and i8 %i.io, 7
  %i.iq = zext nneg i8 %i.ip to i16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.it = shl i8 %i.hu, 1
  %i.iu = and i8 %i.it, 6
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.iw = load i8, ptr %i.is, align 1, !tbaa !8   ; 4 uses
  %i.ix = lshr i8 %i.iw, 7
  %i.iy = or disjoint i8 %i.ix, %i.iu
  %i.iz = zext nneg i8 %i.iy to i16
  store i16 %i.iz, ptr %i.iv, align 4, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 94
  %i.jb = lshr i8 %i.iw, 1
  %i.jc = lshr i8 %i.iw, 4
  %i.jd = insertelement <2 x i8> poison, i8 %i.jc, i64 0
  %i.je = insertelement <2 x i8> %i.jd, i8 %i.jb, i64 1
  %i.jf = and <2 x i8> %i.je, splat (i8 7)
  %i.jg = zext nneg <2 x i8> %i.jf to <2 x i16>
  store <2 x i16> %i.jg, ptr %i.ja, align 2, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ji = shl i8 %i.iw, 2
  %i.jj = and i8 %i.ji, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !8   ; 3 uses
  %i.jm = lshr i8 %i.jl, 6
  %i.jn = or disjoint i8 %i.jm, %i.jj
  %i.jo = zext nneg i8 %i.jn to i16
  store i16 %i.jo, ptr %i.jk, align 2, !tbaa !9
  %i.jp = lshr i8 %i.jl, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.jr = insertelement <2 x i8> poison, i8 %i.jp, i64 0
  %i.js = insertelement <2 x i8> %i.jr, i8 %i.jl, i64 1
  %i.jt = and <2 x i8> %i.js, splat (i8 7)
  %i.ju = zext nneg <2 x i8> %i.jt to <2 x i16>
  store <2 x i16> %i.ju, ptr %i.jq, align 4, !tbaa !9
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !6, i64 0}
end_hunk_0
