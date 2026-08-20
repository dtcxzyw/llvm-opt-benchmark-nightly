inline.NumInlined: 62
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dcadct_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @imdct_half_32, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @imdct_half_64, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @imdct_half_32(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1) #1 {
.preheader74.preheader:
  %i.a = alloca [32 x i32], align 16              ; 36 uses
  %i.b = alloca [32 x i32], align 16              ; 61 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load <32 x i32>, ptr %1, align 4, !tbaa !11
  %i.k = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.j, i1 true)
  %i.l = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.k)
  %i.m = icmp samesign ugt i32 %i.l, 4194304
  %i.n = select i1 %i.m, i32 2, i32 0             ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.al = load i32, ptr %i.e, align 4, !tbaa !11
  %i.am = add nsw i32 %i.al, %i.n
  %i.an = ashr i32 %i.am, %i.n                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  store i32 %i.an, ptr %i.ao, align 16, !tbaa !11
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !11
  %i.aq = add nsw i32 %i.ap, %i.n
  %i.ar = ashr i32 %i.aq, %i.n                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !11
  %i.at = load i32, ptr %i.g, align 4, !tbaa !11
  %i.au = add nsw i32 %i.at, %i.n
  %i.av = ashr i32 %i.au, %i.n                    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !11
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !11
  %i.ay = add nsw i32 %i.ax, %i.n
  %i.az = ashr i32 %i.ay, %i.n                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.bf = load <4 x i32>, ptr %i.i, align 4, !tbaa !11
  %i.bg = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> zeroinitializer ; 21 uses
  %i.bi = add nsw <4 x i32> %i.bf, %i.bh
  %i.bj = ashr <4 x i32> %i.bi, %i.bh             ; 5 uses
  store <4 x i32> %i.bj, ptr %i.bb, align 16, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.bn = load <8 x i32>, ptr %1, align 4, !tbaa !11 ; 2 uses
  %i.bo = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bp = add nsw <4 x i32> %i.bo, %i.bh
  %i.bq = ashr <4 x i32> %i.bp, %i.bh             ; 7 uses
  %i.br = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bs = add nsw <4 x i32> %i.br, %i.bh
  %i.bt = ashr <4 x i32> %i.bs, %i.bh             ; 7 uses
  %i.bu = extractelement <4 x i32> %i.bt, i64 0
  store i32 %i.bu, ptr %i.o, align 4, !tbaa !11
  %i.bv = extractelement <4 x i32> %i.bq, i64 1
  store i32 %i.bv, ptr %i.p, align 8, !tbaa !11
  %i.bw = extractelement <4 x i32> %i.bt, i64 1
  store i32 %i.bw, ptr %i.q, align 4, !tbaa !11
  %i.bx = extractelement <4 x i32> %i.bq, i64 2
  store i32 %i.bx, ptr %i.r, align 16, !tbaa !11
  %i.by = extractelement <4 x i32> %i.bt, i64 2
  store i32 %i.by, ptr %i.s, align 4, !tbaa !11
  %i.bz = extractelement <4 x i32> %i.bq, i64 3
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !11
  %i.ca = extractelement <4 x i32> %i.bt, i64 3
  store i32 %i.ca, ptr %i.u, align 4, !tbaa !11
  %i.cb = add nsw <4 x i32> %i.bt, %i.bq
  store <4 x i32> %i.cb, ptr %i.b, align 16, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.cg = load <8 x i32>, ptr %i.c, align 4, !tbaa !11 ; 2 uses
  %i.ch = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ci = add nsw <4 x i32> %i.ch, %i.bh
  %i.cj = ashr <4 x i32> %i.ci, %i.bh             ; 7 uses
  %i.ck = extractelement <4 x i32> %i.cj, i64 0
  store i32 %i.ck, ptr %i.v, align 16, !tbaa !11
  %i.cl = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cm = add nsw <4 x i32> %i.cl, %i.bh
  %i.cn = ashr <4 x i32> %i.cm, %i.bh             ; 7 uses
  %i.co = extractelement <4 x i32> %i.cn, i64 0
  store i32 %i.co, ptr %i.w, align 4, !tbaa !11
  %i.cp = extractelement <4 x i32> %i.cj, i64 1
  store i32 %i.cp, ptr %i.x, align 8, !tbaa !11
  %i.cq = extractelement <4 x i32> %i.cn, i64 1
  store i32 %i.cq, ptr %i.y, align 4, !tbaa !11
  %i.cr = extractelement <4 x i32> %i.cj, i64 2
  store i32 %i.cr, ptr %i.z, align 16, !tbaa !11
  %i.cs = extractelement <4 x i32> %i.cn, i64 2
  store i32 %i.cs, ptr %i.aa, align 4, !tbaa !11
  %i.ct = extractelement <4 x i32> %i.cj, i64 3
  store i32 %i.ct, ptr %i.ab, align 8, !tbaa !11
  %i.cu = extractelement <4 x i32> %i.cn, i64 3
  store i32 %i.cu, ptr %i.ac, align 4, !tbaa !11
  %i.cv = add nsw <4 x i32> %i.cn, %i.cj
  store <4 x i32> %i.cv, ptr %i.cc, align 16, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.da = load <8 x i32>, ptr %i.d, align 4, !tbaa !11 ; 2 uses
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dc = add nsw <4 x i32> %i.db, %i.bh
  %i.dd = ashr <4 x i32> %i.dc, %i.bh             ; 6 uses
  %i.de = extractelement <4 x i32> %i.dd, i64 0
  store i32 %i.de, ptr %i.ad, align 16, !tbaa !11
  %i.df = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dg = add nsw <4 x i32> %i.df, %i.bh
  %i.dh = ashr <4 x i32> %i.dg, %i.bh             ; 6 uses
  %i.di = extractelement <4 x i32> %i.dh, i64 0
  store i32 %i.di, ptr %i.ae, align 4, !tbaa !11
  %i.dj = extractelement <4 x i32> %i.dd, i64 1
  store i32 %i.dj, ptr %i.af, align 8, !tbaa !11
  %i.dk = extractelement <4 x i32> %i.dh, i64 1   ; 2 uses
  store i32 %i.dk, ptr %i.ag, align 4, !tbaa !11
  %i.dl = extractelement <4 x i32> %i.dd, i64 2   ; 2 uses
  store i32 %i.dl, ptr %i.ah, align 16, !tbaa !11
  %i.dm = extractelement <4 x i32> %i.dh, i64 2   ; 2 uses
  store i32 %i.dm, ptr %i.ai, align 4, !tbaa !11
  %i.dn = extractelement <4 x i32> %i.dd, i64 3   ; 2 uses
  store i32 %i.dn, ptr %i.aj, align 8, !tbaa !11
  %i.do = extractelement <4 x i32> %i.dh, i64 3   ; 2 uses
  store i32 %i.do, ptr %i.ak, align 4, !tbaa !11
  %i.dp = add nsw <4 x i32> %i.dh, %i.dd
  store <4 x i32> %i.dp, ptr %i.cw, align 16, !tbaa !11
  %i.dq = add nsw i32 %i.ar, %i.an
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  store i32 %i.dq, ptr %i.dr, align 16, !tbaa !11
  %i.ds = add nsw i32 %i.az, %i.av
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 9 uses
  %i.dx = extractelement <4 x i32> %i.bq, i64 0
  store i32 %i.dx, ptr %i.a, align 16, !tbaa !11
  %i.dy = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bq, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.dz = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bt, <4 x i32> <i32 0, i32 2, i32 poison, i32 4>
  %i.ea = insertelement <4 x i32> %i.dz, i32 0, i64 2
  %i.eb = add nsw <4 x i32> %i.dy, %i.ea
  store <4 x i32> %i.eb, ptr %i.du, align 8, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ed = shufflevector <4 x i32> %i.bt, <4 x i32> %i.cn, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ee = shufflevector <4 x i32> %i.bq, <4 x i32> %i.cj, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ef = add nsw <4 x i32> %i.ed, %i.ee
  store <4 x i32> %i.ef, ptr %i.ec, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ei = shufflevector <4 x i32> %i.cn, <4 x i32> %i.dh, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ej = shufflevector <4 x i32> %i.cj, <4 x i32> %i.dd, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ek = add nsw <4 x i32> %i.ei, %i.ej
  store <4 x i32> %i.ek, ptr %i.eg, align 8, !tbaa !11
  %i.el = add nsw i32 %i.dk, %i.dl
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 %i.el, ptr %i.em, align 8, !tbaa !11
  %i.en = add nsw i32 %i.dm, %i.dn
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !11
  %i.ep = add nsw i32 %i.do, %i.an
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.ep, ptr %i.eq, align 16, !tbaa !11
  %i.er = add nsw i32 %i.ar, %i.av
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 %i.er, ptr %i.es, align 4, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.eu = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %i.ev = insertelement <2 x i32> %i.eu, i32 %i.az, i64 0
  %i.ew = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ex = add nsw <2 x i32> %i.ev, %i.ew
  store <2 x i32> %i.ex, ptr %i.et, align 8, !tbaa !11
  %i.ey = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.ez = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ey, <4 x i32> splat (i32 -8388608))
  %i.fa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ez, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fa, ptr %i.b, align 16, !tbaa !11
  %i.fb = load <4 x i32>, ptr %i.cc, align 16, !tbaa !11
  %i.fc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fb, <4 x i32> splat (i32 -8388608))
  %i.fd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fc, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fd, ptr %i.cc, align 16, !tbaa !11
  %i.fe = load <4 x i32>, ptr %i.cw, align 16, !tbaa !11
  %i.ff = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fe, <4 x i32> splat (i32 -8388608))
  %i.fg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ff, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fg, ptr %i.cw, align 16, !tbaa !11
  %i.fh = load <4 x i32>, ptr %i.dr, align 16, !tbaa !11
  %i.fi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fh, <4 x i32> splat (i32 -8388608))
  %i.fj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fi, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fj, ptr %i.dr, align 16, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.fn = load <4 x i32>, ptr %i.dw, align 16, !tbaa !11
  %i.fo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fn, <4 x i32> splat (i32 -8388608))
  %i.fp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fo, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fp, ptr %i.dw, align 16, !tbaa !11
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.fu = load <4 x i32>, ptr %i.fq, align 16, !tbaa !11
  %i.fv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fu, <4 x i32> splat (i32 -8388608))
  %i.fw = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fv, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fw, ptr %i.fq, align 16, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 9 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.gb = load <4 x i32>, ptr %i.fx, align 16, !tbaa !11
  %i.gc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 -8388608))
  %i.gd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gc, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.gd, ptr %i.fx, align 16, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 6 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !11
  %i.gh = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 -8388608)
  %.0.i.i.i.29 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.gh, i32 8388607)
  store i32 %.0.i.i.i.29, ptr %i.gf, align 4, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 6 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !11
  %i.gl = tail call i32 @llvm.smax.i32(i32 %i.gk, i32 -8388608)
  %.0.i.i.i.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.gl, i32 8388607)
  store i32 %.0.i.i.i.31, ptr %i.gj, align 4, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !11 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !11 ; 2 uses
  %i.gs = add nsw i32 %i.gr, %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !11 ; 2 uses
  %i.gv = add nsw i32 %i.gu, %i.gr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !11
  %i.gy = add nsw i32 %i.gx, %i.gu
  %i.gz = load <8 x i32>, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.gz, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hb = shufflevector <8 x i32> %i.gz, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hc = add nsw <4 x i32> %i.ha, %i.hb
  %i.hd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hc, <4 x i32> splat (i32 -8388608))
  %i.he = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hd, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.he, ptr %i.a, align 16, !tbaa !11
  %i.hf = load <8 x i32>, ptr %i.cw, align 16, !tbaa !11 ; 2 uses
  %i.hg = shufflevector <8 x i32> %i.hf, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hh = shufflevector <8 x i32> %i.hf, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hi = add nsw <4 x i32> %i.hg, %i.hh
  %i.hj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hi, <4 x i32> splat (i32 -8388608))
  %i.hk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.hk, ptr %i.r, align 16, !tbaa !11
  %i.hl = load <3 x i32>, ptr %i.cc, align 16, !tbaa !11
  %i.hm = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.hn = load <6 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.ho = shufflevector <6 x i32> %i.hn, <6 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 5>
  %i.hp = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.hm, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.hq = shufflevector <3 x i32> %i.hl, <3 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hr = shufflevector <4 x i32> %i.hp, <4 x i32> %i.hq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hs = add nsw <4 x i32> %i.ho, %i.hr
  %i.ht = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hs, <4 x i32> splat (i32 -8388608))
  %i.hu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ht, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.hu, ptr %i.v, align 16, !tbaa !11
  %i.hv = load <8 x i32>, ptr %i.gm, align 4, !tbaa !11 ; 2 uses
  %i.hw = shufflevector <8 x i32> %i.hv, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hx = shufflevector <8 x i32> %i.hv, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hy = add nsw <4 x i32> %i.hw, %i.hx
  %i.hz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hy, <4 x i32> splat (i32 -8388608))
  %i.ia = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hz, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ia, ptr %i.z, align 16, !tbaa !11
  %i.ib = load <7 x i32>, ptr %i.dw, align 16, !tbaa !11
  %i.ic = shufflevector <7 x i32> %i.ib, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.id = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ic, <4 x i32> splat (i32 -8388608))
  %i.ie = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.id, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ie, ptr %i.ad, align 16, !tbaa !11
  %i.if = load <7 x i32>, ptr %i.eh, align 16, !tbaa !11
  %i.ig = shufflevector <7 x i32> %i.if, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ih = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ig, <4 x i32> splat (i32 -8388608))
  %i.ii = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ih, <4 x i32> splat (i32 8388607)) ; 3 uses
  %i.ij = extractelement <4 x i32> %i.ii, i64 2
  store i32 %i.ij, ptr %i.ge, align 16, !tbaa !11
  %i.ik = extractelement <4 x i32> %i.ii, i64 3
  store i32 %i.ik, ptr %i.gi, align 8, !tbaa !11
  store <4 x i32> %i.ii, ptr %i.ah, align 16, !tbaa !11
  %i.il = load <7 x i32>, ptr %i.fk, align 4, !tbaa !11 ; 2 uses
  %i.im = shufflevector <7 x i32> %i.il, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.in = load i32, ptr %i.gn, align 4, !tbaa !11
  %i.io = shufflevector <7 x i32> %i.il, <7 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 7, i32 0, i32 2, i32 4>
  %i.ip = add nsw <4 x i32> %i.im, %i.io
  %i.iq = add nsw i32 %i.gp, %i.in
  %i.ir = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ip, <4 x i32> splat (i32 -8388608))
  %i.is = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ir, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.is, ptr %i.ao, align 16, !tbaa !11
  %i.it = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 -8388608)
  %.0.i.i.i58.28 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.it, i32 8388607)
  store i32 %.0.i.i.i58.28, ptr %i.bb, align 16, !tbaa !11
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 -8388608)
  %.0.i.i.i58.29 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.iu, i32 8388607)
  store i32 %.0.i.i.i58.29, ptr %i.bc, align 4, !tbaa !11
  %i.iv = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 -8388608)
  %.0.i.i.i58.30 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.iv, i32 8388607)
  store i32 %.0.i.i.i58.30, ptr %i.bd, align 8, !tbaa !11
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 -8388608)
  %.0.i.i.i58.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.iw, i32 8388607)
  store i32 %.0.i.i.i58.31, ptr %i.be, align 4, !tbaa !11
  call fastcc void @dct_a(ptr noundef %i.a, ptr noundef %i.b)
  call fastcc void @dct_b(ptr noundef %i.v, ptr noundef %i.cw)
  call fastcc void @dct_b(ptr noundef %i.ad, ptr noundef %i.dw)
  call fastcc void @dct_b(ptr noundef %i.ao, ptr noundef %i.fx)
  %i.ix = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.iy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ix, <4 x i32> splat (i32 -8388608))
  %i.iz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.iy, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.iz, ptr %i.b, align 16, !tbaa !11
  %i.ja = load <4 x i32>, ptr %i.cc, align 16, !tbaa !11
  %i.jb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ja, <4 x i32> splat (i32 -8388608))
  %i.jc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jb, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.jc, ptr %i.cc, align 16, !tbaa !11
  %i.jd = load i32, ptr %i.cw, align 16, !tbaa !11
  %i.je = tail call i32 @llvm.smax.i32(i32 %i.jd, i32 -8388608)
  %.0.i.i.i63.8 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.je, i32 8388607) ; 2 uses
  %i.jf = load i32, ptr %i.cx, align 4, !tbaa !11
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 -8388608)
  %.0.i.i.i63.9 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.jg, i32 8388607) ; 2 uses
  %i.jh = load <4 x i32>, ptr %i.cy, align 8, !tbaa !11
  %i.ji = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jh, <4 x i32> splat (i32 -8388608))
  %i.jj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ji, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.jj, ptr %i.cy, align 8, !tbaa !11
  %i.jk = load <4 x i32>, ptr %i.du, align 8, !tbaa !11
  %i.jl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jk, <4 x i32> splat (i32 -8388608))
  %i.jm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jl, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.jm, ptr %i.du, align 8, !tbaa !11
  %i.jn = load <4 x i32>, ptr %i.fl, align 8, !tbaa !11
  %i.jo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jn, <4 x i32> splat (i32 -8388608))
  %i.jp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jo, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.jp, ptr %i.fl, align 8, !tbaa !11
  %i.jq = load i32, ptr %i.fs, align 8, !tbaa !11
  %i.jr = tail call i32 @llvm.smax.i32(i32 %i.jq, i32 -8388608)
  %.0.i.i.i63.22 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.jr, i32 8388607)
  store i32 %.0.i.i.i63.22, ptr %i.fs, align 8, !tbaa !11
  %i.js = load i32, ptr %i.ft, align 4, !tbaa !11
  %i.jt = tail call i32 @llvm.smax.i32(i32 %i.js, i32 -8388608)
  %.0.i.i.i63.23 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.jt, i32 8388607)
  store i32 %.0.i.i.i63.23, ptr %i.ft, align 4, !tbaa !11
  %i.ju = load i32, ptr %i.fx, align 16, !tbaa !11
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 -8388608)
  %.0.i.i.i63.24 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.jv, i32 8388607)
  store i32 %.0.i.i.i63.24, ptr %i.fx, align 16, !tbaa !11
  %i.jw = load <4 x i32>, ptr %i.fy, align 4, !tbaa !11
  %i.jx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jw, <4 x i32> splat (i32 -8388608))
  %i.jy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jx, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.jy, ptr %i.fy, align 4, !tbaa !11
  %i.jz = load <2 x i32>, ptr %i.gf, align 4, !tbaa !11
  %i.ka = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jz, <2 x i32> splat (i32 -8388608))
  %i.kb = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ka, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.kb, ptr %i.gf, align 4, !tbaa !11
  %i.kc = load i32, ptr %i.gj, align 4, !tbaa !11
  %i.kd = tail call i32 @llvm.smax.i32(i32 %i.kc, i32 -8388608)
  %.0.i.i.i63.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.kd, i32 8388607)
  store i32 %.0.i.i.i63.31, ptr %i.gj, align 4, !tbaa !11
  %i.ke = load i32, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.kf = add nsw i32 %.0.i.i.i63.8, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = mul nsw i64 %i.kg, 4199362
  %i.ki = add nsw i64 %i.kh, 4194304
  %i.kj = lshr i64 %i.ki, 23
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = load i32, ptr %i.bk, align 4, !tbaa !11 ; 2 uses
  %i.km = add nsw i32 %.0.i.i.i63.9, %i.kl
  %i.kn = sext i32 %i.km to i64
  %i.ko = mul nsw i64 %i.kn, 4240198
  %i.kp = add nsw i64 %i.ko, 4194304
  %i.kq = lshr i64 %i.kp, 23
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = load i32, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.kt = load i32, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.ku = add nsw i32 %i.kt, %i.ks
  %i.kv = sext i32 %i.ku to i64
  %i.kw = mul nsw i64 %i.kv, 4323885
  %i.kx = add nsw i64 %i.kw, 4194304
  %i.ky = lshr i64 %i.kx, 23
  %i.kz = trunc i64 %i.ky to i32
  %i.la = load i32, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.lb = load i32, ptr %i.cz, align 4, !tbaa !11 ; 2 uses
  %i.lc = add nsw i32 %i.lb, %i.la
  %i.ld = sext i32 %i.lc to i64
  %i.le = mul nsw i64 %i.ld, 4454708
  %i.lf = add nsw i64 %i.le, 4194304
  %i.lg = lshr i64 %i.lf, 23
  %i.lh = trunc i64 %i.lg to i32
  %i.li = load i32, ptr %i.cc, align 16, !tbaa !11 ; 2 uses
  %i.lj = load i32, ptr %i.dr, align 16, !tbaa !11 ; 2 uses
  %i.lk = add nsw i32 %i.lj, %i.li
  %i.ll = sext i32 %i.lk to i64
  %i.lm = mul nsw i64 %i.ll, 4639772
  %i.ln = add nsw i64 %i.lm, 4194304
  %i.lo = lshr i64 %i.ln, 23
  %i.lp = trunc i64 %i.lo to i32
  %i.lq = load i32, ptr %i.cd, align 4, !tbaa !11 ; 2 uses
  %i.lr = load i32, ptr %i.dt, align 4, !tbaa !11 ; 2 uses
  %i.ls = add nsw i32 %i.lr, %i.lq
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i64 %i.lt, 4890013
  %i.lv = add nsw i64 %i.lu, 4194304
  %i.lw = lshr i64 %i.lv, 23
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = load i32, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.lz = load i32, ptr %i.du, align 8, !tbaa !11 ; 2 uses
  %i.ma = add nsw i32 %i.lz, %i.ly
  %i.mb = sext i32 %i.ma to i64
end_hunk_0
begin_hunk_1_@imdct_half_32:.preheader74.preheader
  %i.uj = add nsw i64 %i.ui, 4194304
  %i.uk = lshr i64 %i.uj, 23
  %i.ul = trunc i64 %i.uk to i32
  store i32 %i.ul, ptr %i.cw, align 16, !tbaa !11
  %i.um = add nsw i32 %.0.i.i.i68.25, %.0.i.i.i68.9
  %i.un = sext i32 %i.um to i64
  %i.uo = mul nsw i64 %i.un, 1173922
  %i.up = add nsw i64 %i.uo, 4194304
  %i.uq = lshr i64 %i.up, 23
  %i.ur = trunc i64 %i.uq to i32
  store i32 %i.ur, ptr %i.cx, align 4, !tbaa !11
  %i.us = add nsw i32 %.0.i.i.i68.26, %.0.i.i.i68.10
  %i.ut = sext i32 %i.us to i64
  %i.uu = mul nsw i64 %i.ut, 1205139
  %i.uv = add nsw i64 %i.uu, 4194304
  %i.uw = lshr i64 %i.uv, 23
  %i.ux = trunc i64 %i.uw to i32
  store i32 %i.ux, ptr %i.cy, align 8, !tbaa !11
  %i.uy = add nsw i32 %.0.i.i.i68.27, %.0.i.i.i68.11
  %i.uz = sext i32 %i.uy to i64
  %i.va = mul nsw i64 %i.uz, 1241133
  %i.vb = add nsw i64 %i.va, 4194304
  %i.vc = lshr i64 %i.vb, 23
  %i.vd = trunc i64 %i.vc to i32
  store i32 %i.vd, ptr %i.cz, align 4, !tbaa !11
  %i.ve = add nsw i32 %.0.i.i.i68.28, %.0.i.i.i68.12
  %i.vf = sext i32 %i.ve to i64
  %i.vg = mul nsw i64 %i.vf, 1282529
  %i.vh = add nsw i64 %i.vg, 4194304
  %i.vi = lshr i64 %i.vh, 23
  %i.vj = trunc i64 %i.vi to i32
  store i32 %i.vj, ptr %i.dr, align 16, !tbaa !11
  %i.vk = add nsw i32 %.0.i.i.i68.29, %.0.i.i.i68.13
  %i.vl = sext i32 %i.vk to i64
  %i.vm = mul nsw i64 %i.vl, 1330095
  %i.vn = add nsw i64 %i.vm, 4194304
  %i.vo = lshr i64 %i.vn, 23
  %i.vp = trunc i64 %i.vo to i32
  store i32 %i.vp, ptr %i.dt, align 4, !tbaa !11
  %i.vq = add nsw i32 %.0.i.i.i68.30, %.0.i.i.i68.14
  %i.vr = sext i32 %i.vq to i64
  %i.vs = mul nsw i64 %i.vr, 1384791
  %i.vt = add nsw i64 %i.vs, 4194304
  %i.vu = lshr i64 %i.vt, 23
  %i.vv = trunc i64 %i.vu to i32
  store i32 %i.vv, ptr %i.du, align 8, !tbaa !11
  %i.vw = add nsw i32 %.0.i.i.i68.31, %.0.i.i.i68.15
  %i.vx = sext i32 %i.vw to i64
  %i.vy = mul nsw i64 %i.vx, 1447815
  %i.vz = add nsw i64 %i.vy, 4194304
  %i.wa = lshr i64 %i.vz, 23
  %i.wb = trunc i64 %i.wa to i32
  store i32 %i.wb, ptr %i.dv, align 4, !tbaa !11
  %i.wc = sub nsw i32 %.0.i.i.i68.15, %.0.i.i.i68.31
  %i.wd = sext i32 %i.wc to i64
  %i.we = mul i64 %i.wd, 36028797017443280
  %i.wf = add i64 %i.we, 4194304
  %i.wg = lshr i64 %i.wf, 23
  %i.wh = trunc i64 %i.wg to i32
  store i32 %i.wh, ptr %i.dw, align 16, !tbaa !11
  %i.wi = sub nsw i32 %.0.i.i.i68.14, %.0.i.i.i68.30
  %i.wj = sext i32 %i.wi to i64
  %i.wk = mul i64 %i.wj, 36028797017358610
  %i.wl = add i64 %i.wk, 4194304
  %i.wm = lshr i64 %i.wl, 23
  %i.wn = trunc i64 %i.wm to i32
  store i32 %i.wn, ptr %i.fk, align 4, !tbaa !11
  %i.wo = sub nsw i32 %.0.i.i.i68.13, %.0.i.i.i68.29
  %i.wp = sext i32 %i.wo to i64
  %i.wq = mul i64 %i.wp, 36028797017259608
  %i.wr = add i64 %i.wq, 4194304
  %i.ws = lshr i64 %i.wr, 23
  %i.wt = trunc i64 %i.ws to i32
  store i32 %i.wt, ptr %i.fl, align 8, !tbaa !11
  %i.wu = sub nsw i32 %.0.i.i.i68.12, %.0.i.i.i68.28
  %i.wv = sext i32 %i.wu to i64
  %i.ww = mul i64 %i.wv, 36028797017142917
  %i.wx = add i64 %i.ww, 4194304
  %i.wy = lshr i64 %i.wx, 23
  %i.wz = trunc i64 %i.wy to i32
  store i32 %i.wz, ptr %i.fm, align 4, !tbaa !11
  %i.xa = sub nsw i32 %.0.i.i.i68.11, %.0.i.i.i68.27
  %i.xb = sext i32 %i.xa to i64
  %i.xc = mul i64 %i.xb, 36028797017004004
  %i.xd = add i64 %i.xc, 4194304
  %i.xe = lshr i64 %i.xd, 23
  %i.xf = trunc i64 %i.xe to i32
  store i32 %i.xf, ptr %i.fq, align 16, !tbaa !11
  %i.xg = sub nsw i32 %.0.i.i.i68.10, %.0.i.i.i68.26
  %i.xh = sext i32 %i.xg to i64
  %i.xi = mul i64 %i.xh, 36028797016836600
  %i.xj = add i64 %i.xi, 4194304
  %i.xk = lshr i64 %i.xj, 23
  %i.xl = trunc i64 %i.xk to i32
  store i32 %i.xl, ptr %i.fr, align 4, !tbaa !11
  %i.xm = sub nsw i32 %.0.i.i.i68.9, %.0.i.i.i68.25
  %i.xn = sext i32 %i.xm to i64
  %i.xo = mul i64 %i.xn, 36028797016631785
  %i.xp = add i64 %i.xo, 4194304
  %i.xq = lshr i64 %i.xp, 23
  %i.xr = trunc i64 %i.xq to i32
  store i32 %i.xr, ptr %i.fs, align 8, !tbaa !11
  %i.xs = sub nsw i32 %.0.i.i.i68.8, %.0.i.i.i68.24
  %i.xt = sext i32 %i.xs to i64
  %i.xu = mul i64 %i.xt, 36028797016376433
  %i.xv = add i64 %i.xu, 4194304
  %i.xw = lshr i64 %i.xv, 23
  %i.xx = trunc i64 %i.xw to i32
  store i32 %i.xx, ptr %i.ft, align 4, !tbaa !11
  %i.xy = sub nsw i32 %.0.i.i.i68.7, %.0.i.i.i68.23
  %i.xz = sext i32 %i.xy to i64
  %i.ya = mul i64 %i.xz, 36028797016050407
  %i.yb = add i64 %i.ya, 4194304
  %i.yc = lshr i64 %i.yb, 23
  %i.yd = trunc i64 %i.yc to i32
  store i32 %i.yd, ptr %i.fx, align 16, !tbaa !11
  %i.ye = sub nsw i32 %.0.i.i.i68.6, %.0.i.i.i68.22
  %i.yf = sext i32 %i.ye to i64
  %i.yg = mul i64 %i.yf, 36028797015621166
  %i.yh = add i64 %i.yg, 4194304
  %i.yi = lshr i64 %i.yh, 23
  %i.yj = trunc i64 %i.yi to i32
  store i32 %i.yj, ptr %i.fy, align 4, !tbaa !11
  %i.yk = sub nsw i32 %.0.i.i.i68.5, %.0.i.i.i68.21
  %i.yl = sext i32 %i.yk to i64
  %i.ym = mul i64 %i.yl, 36028797015032488
  %i.yn = add i64 %i.ym, 4194304
  %i.yo = lshr i64 %i.yn, 23
  %i.yp = trunc i64 %i.yo to i32
  store i32 %i.yp, ptr %i.fz, align 8, !tbaa !11
  %i.yq = sub nsw i32 %.0.i.i.i68.4, %.0.i.i.i68.20
  %i.yr = sext i32 %i.yq to i64
  %i.ys = mul i64 %i.yr, 36028797014178162
  %i.yt = add i64 %i.ys, 4194304
  %i.yu = lshr i64 %i.yt, 23
  %i.yv = trunc i64 %i.yu to i32
  store i32 %i.yv, ptr %i.ga, align 4, !tbaa !11
  %i.yw = sub nsw i32 %.0.i.i.i68.3, %.0.i.i.i68.19
  %i.yx = sext i32 %i.yw to i64
  %i.yy = mul i64 %i.yx, 36028797012830578
  %i.yz = add i64 %i.yy, 4194304
  %i.za = lshr i64 %i.yz, 23
  %i.zb = trunc i64 %i.za to i32
  store i32 %i.zb, ptr %i.ge, align 16, !tbaa !11
  %i.zc = sub nsw i32 %.0.i.i.i68.2, %.0.i.i.i68.18
  %i.zd = sext i32 %i.zc to i64
  %i.ze = mul i64 %i.zd, 36028797010397918
  %i.zf = add i64 %i.ze, 4194304
  %i.zg = lshr i64 %i.zf, 23
  %i.zh = trunc i64 %i.zg to i32
  store i32 %i.zh, ptr %i.gf, align 4, !tbaa !11
  %i.zi = sub nsw i32 %.0.i.i.i68.1, %.0.i.i.i68.17
  %i.zj = sext i32 %i.zi to i64
  %i.zk = mul i64 %i.zj, 36028797004710148
  %i.zl = add i64 %i.zk, 4194304
  %i.zm = lshr i64 %i.zl, 23
  %i.zn = trunc i64 %i.zm to i32
  store i32 %i.zn, ptr %i.gi, align 8, !tbaa !11
  %i.zo = sub nsw i32 %.0.i.i.i68, %.0.i.i.i68.16
  %i.zp = sext i32 %i.zo to i64
  %i.zq = mul i64 %i.zp, 36028796976236848
  %i.zr = add i64 %i.zq, 4194304
  %i.zs = lshr i64 %i.zr, 23
  %i.zt = trunc i64 %i.zs to i32
  store i32 %i.zt, ptr %i.gj, align 4, !tbaa !11
  %i.zu = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.zv = shl nsw <4 x i32> %i.zu, %i.bh
  %i.zw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.zv, <4 x i32> splat (i32 -8388608))
  %i.zx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zw, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.zx, ptr %i.b, align 16, !tbaa !11
  %i.zy = load <4 x i32>, ptr %i.cc, align 16, !tbaa !11
  %i.zz = shl nsw <4 x i32> %i.zy, %i.bh
  %i.aaa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.zz, <4 x i32> splat (i32 -8388608))
  %i.aab = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aaa, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aab, ptr %i.cc, align 16, !tbaa !11
  %i.aac = load <4 x i32>, ptr %i.cw, align 16, !tbaa !11
  %i.aad = shl nsw <4 x i32> %i.aac, %i.bh
  %i.aae = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aad, <4 x i32> splat (i32 -8388608))
  %i.aaf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aae, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aaf, ptr %i.cw, align 16, !tbaa !11
  %i.aag = load <4 x i32>, ptr %i.dr, align 16, !tbaa !11
  %i.aah = shl nsw <4 x i32> %i.aag, %i.bh
  %i.aai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aah, <4 x i32> splat (i32 -8388608))
  %i.aaj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aai, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aaj, ptr %i.dr, align 16, !tbaa !11
  %i.aak = load <4 x i32>, ptr %i.dw, align 16, !tbaa !11
  %i.aal = shl nsw <4 x i32> %i.aak, %i.bh
  %i.aam = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aal, <4 x i32> splat (i32 -8388608))
  %i.aan = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aam, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aan, ptr %i.dw, align 16, !tbaa !11
  %i.aao = load <4 x i32>, ptr %i.fq, align 16, !tbaa !11
  %i.aap = shl nsw <4 x i32> %i.aao, %i.bh
  %i.aaq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aap, <4 x i32> splat (i32 -8388608))
  %i.aar = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aaq, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aar, ptr %i.fq, align 16, !tbaa !11
  %i.aas = load i32, ptr %i.fx, align 16, !tbaa !11
  %i.aat = shl nsw i32 %i.aas, %i.n
  %i.aau = tail call i32 @llvm.smax.i32(i32 %i.aat, i32 -8388608)
  %.0.i.i.24 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.aau, i32 8388607)
  store i32 %.0.i.i.24, ptr %i.fx, align 16, !tbaa !11
  %i.aav = load i32, ptr %i.fy, align 4, !tbaa !11
  %i.aaw = shl nsw i32 %i.aav, %i.n
  %i.aax = tail call i32 @llvm.smax.i32(i32 %i.aaw, i32 -8388608)
  %.0.i.i.27 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.aax, i32 8388607) ; 2 uses
  %i.aay = load <4 x i32>, ptr %i.ge, align 16, !tbaa !11
  %i.aaz = shl nsw <4 x i32> %i.aay, %i.bh
  %i.aba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aaz, <4 x i32> splat (i32 -8388608))
  %i.abb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aba, <4 x i32> splat (i32 8388607)) ; 3 uses
  %i.abc = shufflevector <4 x i32> %i.abb, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.abd = load <4 x i32>, ptr %i.b, align 16, !tbaa !11 ; 3 uses
  %i.abe = sub nsw <4 x i32> %i.abd, %i.abc
  %i.abf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abe, <4 x i32> splat (i32 -8388608))
  %i.abg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abf, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.abg, ptr %0, align 4, !tbaa !11
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %7 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !11 ; 3 uses
  %8 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !11 ; 3 uses
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %10 = load <4 x i32>, ptr %i.cd, align 4
  %11 = load i32, ptr %i.ce, align 8, !tbaa !11
  %12 = load <2 x i32>, ptr %i.fz, align 8, !tbaa !11
  %13 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> zeroinitializer
  %15 = shl nsw <2 x i32> %12, %14
  %16 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %15, <2 x i32> splat (i32 -8388608))
  %17 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %16, <2 x i32> splat (i32 8388607)) ; 2 uses
  %18 = shufflevector <2 x i32> %17, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %19 = load <2 x i32>, ptr %i.cc, align 16, !tbaa !11
  %20 = load i32, ptr %i.cc, align 16, !tbaa !11
  %21 = shufflevector <2 x i32> %17, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %22 = shufflevector <4 x i32> %i.abb, <4 x i32> %21, <2 x i32> <i32 0, i32 5>
  %23 = shufflevector <4 x i32> %i.abd, <4 x i32> poison, <2 x i32> <i32 3, i32 poison>
  %24 = insertelement <2 x i32> %23, i32 %20, i64 1
  %25 = add nsw <2 x i32> %22, %24
  %26 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %25, <2 x i32> splat (i32 -8388608))
  %27 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %26, <2 x i32> splat (i32 8388607))
  store <2 x i32> %27, ptr %2, align 4, !tbaa !11
  %28 = sub nsw <2 x i32> %19, %18
  %29 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %28, <2 x i32> splat (i32 -8388608))
  %30 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %29, <2 x i32> splat (i32 8388607))
  store <2 x i32> %30, ptr %3, align 4, !tbaa !11
  %31 = sub nsw i32 %11, %.0.i.i.27
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 -8388608)
  %.0.i.i72.6 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %32, i32 8388607)
  store i32 %.0.i.i72.6, ptr %5, align 4, !tbaa !11
  %33 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %34 = shufflevector <4 x i32> %21, <4 x i32> %33, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %35 = insertelement <4 x i32> %34, i32 %.0.i.i.27, i64 1
  %i.abi = shufflevector <4 x i32> %7, <4 x i32> %10, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.abj = add nsw <4 x i32> %35, %i.abi
  %i.abk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abj, <4 x i32> splat (i32 -8388608))
  %i.abl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abk, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.abl, ptr %4, align 4, !tbaa !11
  %i.abm = sub nsw <4 x i32> %7, %9
  %i.abn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abm, <4 x i32> splat (i32 -8388608))
  %i.abo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abn, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.abo, ptr %6, align 4, !tbaa !11
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.abr = load <4 x i32>, ptr %i.cz, align 4, !tbaa !11 ; 3 uses
  %i.abs = load <4 x i32>, ptr %i.fk, align 4, !tbaa !11 ; 3 uses
  %i.abt = shufflevector <4 x i32> %i.abs, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.abu = shufflevector <4 x i32> %8, <4 x i32> %i.abs, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  %i.abv = shufflevector <4 x i32> %7, <4 x i32> %i.abr, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.abw = add nsw <4 x i32> %i.abu, %i.abv
  %i.abx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abw, <4 x i32> splat (i32 -8388608))
  %i.aby = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abx, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aby, ptr %i.abh, align 4, !tbaa !11
  %i.abz = sub nsw <4 x i32> %i.abr, %i.abt
  %i.aca = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abz, <4 x i32> splat (i32 -8388608))
  %i.acb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aca, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.acb, ptr %i.abp, align 4, !tbaa !11
  %i.acc = shufflevector <4 x i32> %i.abs, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.acd = shufflevector <4 x i32> %i.abr, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ace = add nsw <2 x i32> %i.acc, %i.acd
  %i.acf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ace, <2 x i32> splat (i32 -8388608))
  %i.acg = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.acf, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.acg, ptr %i.abq, align 4, !tbaa !11
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aci = load <4 x i32>, ptr %i.dv, align 4     ; 2 uses
  %i.acj = load i32, ptr %i.dw, align 16, !tbaa !11
  %i.ack = load i32, ptr %i.dv, align 4, !tbaa !11
  %36 = shufflevector <4 x i32> %i.abb, <4 x i32> %i.aci, <4 x i32> <i32 3, i32 2, i32 1, i32 4> ; 2 uses
  %37 = shufflevector <4 x i32> %i.abd, <4 x i32> %i.aci, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.acl = sub nsw <4 x i32> %36, %37
  %i.acm = add nsw <4 x i32> %36, %37
  %38 = shufflevector <4 x i32> %i.acl, <4 x i32> %i.acm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.acn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %38, <4 x i32> splat (i32 -8388608))
  %i.aco = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.acn, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aco, ptr %i.ach, align 4, !tbaa !11
  %i.acp = add nsw i32 %i.acj, %i.ack
  %i.acq = tail call i32 @llvm.smax.i32(i32 %i.acp, i32 -8388608)
  %.0.i.i73.15 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.acq, i32 8388607)
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.0.i.i73.15, ptr %i.acr, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @imdct_half_64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
vector.ph:
  %i.a = alloca [64 x i32], align 16              ; 222 uses
  %i.b = alloca [64 x i32], align 16              ; 220 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %wide.load152 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.e = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152, i1 true)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.f, align 4, !tbaa !11
  %wide.load152.1 = load <4 x i32>, ptr %i.g, align 4, !tbaa !11
  %i.h = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.1, i1 true)
  %i.i = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.1, i1 true)
  %i.j = add nuw <4 x i32> %i.h, %i.d
  %i.k = add nuw <4 x i32> %i.i, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %wide.load152.2 = load <4 x i32>, ptr %i.m, align 4, !tbaa !11
  %i.n = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.2, i1 true)
  %i.o = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.2, i1 true)
  %i.p = add <4 x i32> %i.n, %i.j
  %i.q = add <4 x i32> %i.o, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.r, align 4, !tbaa !11
  %wide.load152.3 = load <4 x i32>, ptr %i.s, align 4, !tbaa !11
  %i.t = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.3, i1 true)
  %i.u = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.3, i1 true)
  %i.v = add <4 x i32> %i.t, %i.p
  %i.w = add <4 x i32> %i.u, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <4 x i32>, ptr %i.x, align 4, !tbaa !11
  %wide.load152.4 = load <4 x i32>, ptr %i.y, align 4, !tbaa !11
  %i.z = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.4, i1 true)
  %i.aa = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.4, i1 true)
  %i.ab = add <4 x i32> %i.z, %i.v
  %i.ac = add <4 x i32> %i.aa, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !11
  %wide.load152.5 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !11
  %i.af = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.5, i1 true)
  %i.ag = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.5, i1 true)
  %i.ah = add <4 x i32> %i.af, %i.ab
  %i.ai = add <4 x i32> %i.ag, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !11
  %wide.load152.6 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !11
  %i.al = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.6, i1 true)
  %i.am = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.6, i1 true)
  %i.an = add <4 x i32> %i.al, %i.ah
  %i.ao = add <4 x i32> %i.am, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !11
  %wide.load152.7 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.7, i1 true)
  %i.as = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.7, i1 true)
  %i.at = add <4 x i32> %i.ar, %i.an
  %i.au = add <4 x i32> %i.as, %i.ao
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.aw = icmp samesign ugt i32 %i.av, 4194304
  %i.ax = select i1 %i.aw, i32 2, i32 0           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load156 = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %wide.load157 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !11
  %i.az = add nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.ba = add nsw <4 x i32> %wide.load157, %broadcast.splat
  %i.bb = ashr <4 x i32> %i.az, %broadcast.splat
  %i.bc = ashr <4 x i32> %i.ba, %broadcast.splat
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.bb, ptr %i.a, align 16, !tbaa !11
  store <4 x i32> %i.bc, ptr %i.bd, align 16, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load156.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !11
  %wide.load157.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !11
  %i.bg = add nsw <4 x i32> %wide.load156.1, %broadcast.splat
  %i.bh = add nsw <4 x i32> %wide.load157.1, %broadcast.splat
  %i.bi = ashr <4 x i32> %i.bg, %broadcast.splat
  %i.bj = ashr <4 x i32> %i.bh, %broadcast.splat
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.bi, ptr %i.bk, align 16, !tbaa !11
  store <4 x i32> %i.bj, ptr %i.bl, align 16, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load156.2 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !11
  %wide.load157.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !11
  %i.bo = add nsw <4 x i32> %wide.load156.2, %broadcast.splat
  %i.bp = add nsw <4 x i32> %wide.load157.2, %broadcast.splat
  %i.bq = ashr <4 x i32> %i.bo, %broadcast.splat
  %i.br = ashr <4 x i32> %i.bp, %broadcast.splat
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> %i.bq, ptr %i.bs, align 16, !tbaa !11
  store <4 x i32> %i.br, ptr %i.bt, align 16, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load156.3 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !11
  %wide.load157.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !11
  %i.bw = add nsw <4 x i32> %wide.load156.3, %broadcast.splat
  %i.bx = add nsw <4 x i32> %wide.load157.3, %broadcast.splat
  %i.by = ashr <4 x i32> %i.bw, %broadcast.splat
  %i.bz = ashr <4 x i32> %i.bx, %broadcast.splat
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> %i.by, ptr %i.ca, align 16, !tbaa !11
  store <4 x i32> %i.bz, ptr %i.cb, align 16, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load156.4 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !11
  %wide.load157.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !11
  %i.ce = add nsw <4 x i32> %wide.load156.4, %broadcast.splat
  %i.cf = add nsw <4 x i32> %wide.load157.4, %broadcast.splat
  %i.cg = ashr <4 x i32> %i.ce, %broadcast.splat
  %i.ch = ashr <4 x i32> %i.cf, %broadcast.splat
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> %i.cg, ptr %i.ci, align 16, !tbaa !11
  store <4 x i32> %i.ch, ptr %i.cj, align 16, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load156.5 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !11
  %wide.load157.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !11
  %i.cm = add nsw <4 x i32> %wide.load156.5, %broadcast.splat
  %i.cn = add nsw <4 x i32> %wide.load157.5, %broadcast.splat
  %i.co = ashr <4 x i32> %i.cm, %broadcast.splat
  %i.cp = ashr <4 x i32> %i.cn, %broadcast.splat
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> %i.co, ptr %i.cq, align 16, !tbaa !11
  store <4 x i32> %i.cp, ptr %i.cr, align 16, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load156.6 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !11
  %wide.load157.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !11
  %i.cu = add nsw <4 x i32> %wide.load156.6, %broadcast.splat
  %i.cv = add nsw <4 x i32> %wide.load157.6, %broadcast.splat
  %i.cw = ashr <4 x i32> %i.cu, %broadcast.splat
  %i.cx = ashr <4 x i32> %i.cv, %broadcast.splat
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> %i.cw, ptr %i.cy, align 16, !tbaa !11
  store <4 x i32> %i.cx, ptr %i.cz, align 16, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load156.7 = load <4 x i32>, ptr %i.da, align 4, !tbaa !11
  %wide.load157.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !11
  %i.dc = add nsw <4 x i32> %wide.load156.7, %broadcast.splat
  %i.dd = add nsw <4 x i32> %wide.load157.7, %broadcast.splat
  %i.de = ashr <4 x i32> %i.dc, %broadcast.splat
  %i.df = ashr <4 x i32> %i.dd, %broadcast.splat
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> %i.de, ptr %i.dg, align 16, !tbaa !11
  store <4 x i32> %i.df, ptr %i.dh, align 16, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.dp = load <8 x i32>, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %i.dq = shufflevector <8 x i32> %i.dp, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dr = shufflevector <8 x i32> %i.dp, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ds = add nsw <4 x i32> %i.dq, %i.dr
  store <4 x i32> %i.ds, ptr %i.b, align 16, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
end_hunk_1
