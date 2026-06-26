inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5folly6detail20avx512_crc32c_v8s3x4EPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.g = load i8, ptr %0, align 1, !tbaa !11
  %i.h = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %2, i8 %i.g) ; 2 uses
  %i.i = add i64 %1, -1                           ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = and i64 %i.k, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.p = load i8, ptr %i.f, align 1, !tbaa !11
  %i.q = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.h, i8 %i.p) ; 2 uses
  %i.r = add i64 %1, -2                           ; 2 uses
  %i.s = icmp ne i64 %i.r, 0
  %i.t = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.u = and i64 %i.t, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.y = load i8, ptr %i.o, align 1, !tbaa !11
  %i.z = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.q, i8 %i.y) ; 2 uses
  %i.aa = add i64 %1, -3                          ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !11
  %i.ai = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.z, i8 %i.ah) ; 2 uses
  %i.aj = add i64 %1, -4                          ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.am = and i64 %i.al, 7
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ar = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ai, i8 %i.aq) ; 2 uses
  %i.as = add i64 %1, -5                          ; 2 uses
  %i.at = icmp ne i64 %i.as, 0
  %i.au = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.av = and i64 %i.au, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.5, label %._crit_edge

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.az = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ba = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ar, i8 %i.az) ; 2 uses
  %i.bb = add i64 %1, -6                          ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.be = and i64 %i.bd, 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.bi = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.bj = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ba, i8 %i.bi) ; 2 uses
  %i.bk = add i64 %1, -7                          ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bn = and i64 %i.bm, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.7, label %._crit_edge

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bs = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.bj, i8 %i.br)
  %i.bt = add i64 %1, -8
  %i.bu = ptrtoint ptr %i.bq to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.0235.lcssa = phi i32 [ %2, %bb.a ], [ %i.h, %.lr.ph ], [ %i.q, %.lr.ph.1 ], [ %i.z, %.lr.ph.2 ], [ %i.ai, %.lr.ph.3 ], [ %i.ar, %.lr.ph.4 ], [ %i.ba, %.lr.ph.5 ], [ %i.bj, %.lr.ph.6 ], [ %i.bs, %.lr.ph.7 ] ; 2 uses
  %.0227.lcssa = phi i64 [ %1, %bb.a ], [ %i.i, %.lr.ph ], [ %i.r, %.lr.ph.1 ], [ %i.aa, %.lr.ph.2 ], [ %i.aj, %.lr.ph.3 ], [ %i.as, %.lr.ph.4 ], [ %i.bb, %.lr.ph.5 ], [ %i.bk, %.lr.ph.6 ], [ %i.bt, %.lr.ph.7 ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %.lr.ph ], [ %i.o, %.lr.ph.1 ], [ %i.x, %.lr.ph.2 ], [ %i.ag, %.lr.ph.3 ], [ %i.ap, %.lr.ph.4 ], [ %i.ay, %.lr.ph.5 ], [ %i.bh, %.lr.ph.6 ], [ %i.bq, %.lr.ph.7 ] ; 3 uses
  %.lcssa301 = phi i64 [ %i.b, %bb.a ], [ %i.k, %.lr.ph ], [ %i.t, %.lr.ph.1 ], [ %i.ac, %.lr.ph.2 ], [ %i.al, %.lr.ph.3 ], [ %i.au, %.lr.ph.4 ], [ %i.bd, %.lr.ph.5 ], [ %i.bm, %.lr.ph.6 ], [ %i.bu, %.lr.ph.7 ]
  %i.bv = and i64 %.lcssa301, 8
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = icmp ugt i64 %.0227.lcssa, 7
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.by = zext i32 %.0235.lcssa to i64
  %i.bz = load i64, ptr %.0.lcssa, align 8, !tbaa !12
  %i.ca = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.by, i64 %i.bz)
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.cd = add i64 %.0227.lcssa, -8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1236 = phi i32 [ %i.cb, %bb.b ], [ %.0235.lcssa, %._crit_edge ] ; 3 uses
  %.1228 = phi i64 [ %i.cd, %bb.b ], [ %.0227.lcssa, %._crit_edge ] ; 4 uses
  %.1 = phi ptr [ %i.cc, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ce = icmp ugt i64 %.1228, 223
  br i1 %i.ce, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cf = udiv i64 %.1228, 224                    ; 6 uses
  %i.cg = shl nuw nsw i64 %i.cf, 5                ; 2 uses
  %i.ch = mul nuw nsw i64 %i.cf, 96
  %i.ci = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ch ; 10 uses
  %i.cj = load <2 x i64>, ptr %i.ci, align 1, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cn = load <2 x i64>, ptr %i.cm, align 1, !tbaa !11 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cp = load <2 x i64>, ptr %i.co, align 1, !tbaa !11 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cr = load <2 x i64>, ptr %i.cq, align 1, !tbaa !11 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ct = load <2 x i64>, ptr %i.cs, align 1, !tbaa !11 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.cv = load <2 x i64>, ptr %i.cu, align 1, !tbaa !11 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.cx = load <2 x i64>, ptr %i.cw, align 1, !tbaa !11 ; 2 uses
  %.2229308 = add i64 %.1228, -224                ; 3 uses
  %.0243309 = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 2 uses
  %i.cy = icmp ugt i64 %.2229308, 223
  %i.cz = shl nuw nsw i64 %i.cf, 6                ; 2 uses
  br i1 %i.cy, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.d, %.lr.ph326
  %.0243324 = phi ptr [ %.0243, %.lr.ph326 ], [ %.0243309, %bb.d ] ; 3 uses
  %.2229323 = phi i64 [ %.2229, %.lr.ph326 ], [ %.2229308, %bb.d ]
  %.2322 = phi ptr [ %i.fw, %.lr.ph326 ], [ %.1, %bb.d ] ; 7 uses
  %.0225321 = phi <2 x i64> [ %i.em, %.lr.ph326 ], [ %i.cx, %bb.d ] ; 2 uses
  %.0226320 = phi <2 x i64> [ %i.ej, %.lr.ph326 ], [ %i.cv, %bb.d ] ; 2 uses
  %.0233319 = phi <2 x i64> [ %i.eg, %.lr.ph326 ], [ %i.ct, %bb.d ] ; 2 uses
  %.0234318 = phi <2 x i64> [ %i.ed, %.lr.ph326 ], [ %i.cr, %bb.d ] ; 2 uses
  %.2237317 = phi i32 [ %4, %.lr.ph326 ], [ %.1236, %bb.d ]
  %.0241316 = phi <2 x i64> [ %i.ea, %.lr.ph326 ], [ %i.cp, %bb.d ] ; 2 uses
  %.0242315 = phi <2 x i64> [ %i.dx, %.lr.ph326 ], [ %i.cn, %bb.d ] ; 2 uses
  %.pn314 = phi ptr [ %.0243324, %.lr.ph326 ], [ %i.ci, %bb.d ] ; 7 uses
  %.0244313 = phi <2 x i64> [ %i.du, %.lr.ph326 ], [ %i.cl, %bb.d ] ; 2 uses
  %.0245312 = phi <2 x i64> [ %i.dr, %.lr.ph326 ], [ %i.cj, %bb.d ] ; 2 uses
  %.0246311 = phi i64 [ %i.fs, %.lr.ph326 ], [ 0, %bb.d ]
  %.0247310 = phi i64 [ %i.fv, %.lr.ph326 ], [ 0, %bb.d ]
  %i.da = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0245312, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.db = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0245312, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.dc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0244313, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.dd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0244313, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.de = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0242315, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.df = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0242315, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.dg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0241316, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.dh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0241316, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.di = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234318, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.dj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234318, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.dk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0233319, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.dl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0233319, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.dm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0226320, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.dn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0226320, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.do = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0225321, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.dp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0225321, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.dq = load <2 x i64>, ptr %.0243324, align 1, !tbaa !11
  %i.dr = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.db, <2 x i64> %i.da, <2 x i64> %i.dq, i32 150) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn314, i64 144
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !11
  %i.du = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.dd, <2 x i64> %i.dc, <2 x i64> %i.dt, i32 150) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pn314, i64 160
  %i.dw = load <2 x i64>, ptr %i.dv, align 1, !tbaa !11
  %i.dx = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.df, <2 x i64> %i.de, <2 x i64> %i.dw, i32 150) ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn314, i64 176
  %i.dz = load <2 x i64>, ptr %i.dy, align 1, !tbaa !11
  %i.ea = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.dh, <2 x i64> %i.dg, <2 x i64> %i.dz, i32 150) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn314, i64 192
  %i.ec = load <2 x i64>, ptr %i.eb, align 1, !tbaa !11
  %i.ed = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.dj, <2 x i64> %i.di, <2 x i64> %i.ec, i32 150) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn314, i64 208
  %i.ef = load <2 x i64>, ptr %i.ee, align 1, !tbaa !11
  %i.eg = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.dl, <2 x i64> %i.dk, <2 x i64> %i.ef, i32 150) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn314, i64 224
  %i.ei = load <2 x i64>, ptr %i.eh, align 1, !tbaa !11
  %i.ej = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.dn, <2 x i64> %i.dm, <2 x i64> %i.ei, i32 150) ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn314, i64 240
  %i.el = load <2 x i64>, ptr %i.ek, align 1, !tbaa !11
  %i.em = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.dp, <2 x i64> %i.do, <2 x i64> %i.el, i32 150) ; 2 uses
  %3 = zext i32 %.2237317 to i64
  %i.en = load i64, ptr %.2322, align 8, !tbaa !12
  %i.eo = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %3, i64 %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %.2322, i64 %i.cg ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !12
  %i.er = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0246311, i64 %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %.2322, i64 %i.cz ; 4 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !12
  %i.eu = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0247310, i64 %i.et)
  %i.ev = getelementptr inbounds nuw i8, ptr %.2322, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !12
  %i.ex = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.eo, i64 %i.ew)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !12
  %i.fa = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.er, i64 %i.ez)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !12
  %i.fd = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.eu, i64 %i.fc)
  %i.fe = getelementptr inbounds nuw i8, ptr %.2322, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !12
  %i.fg = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ex, i64 %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !12
  %i.fj = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fa, i64 %i.fi)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !12
  %i.fm = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fd, i64 %i.fl)
  %i.fn = getelementptr inbounds nuw i8, ptr %.2322, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !12
  %i.fp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fg, i64 %i.fo)
  %4 = trunc nuw i64 %i.fp to i32                 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !12
  %i.fs = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fj, i64 %i.fr) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !12
  %i.fv = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fm, i64 %i.fu) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.2322, i64 32 ; 2 uses
  %.2229 = add i64 %.2229323, -224                ; 3 uses
  %.0243 = getelementptr inbounds nuw i8, ptr %.0243324, i64 128 ; 2 uses
  %i.fx = icmp ugt i64 %.2229, 223
  br i1 %i.fx, label %.lr.ph326, label %._crit_edge327, !llvm.loop !14

._crit_edge327:                                   ; preds = %.lr.ph326, %bb.d
  %.0247.lcssa = phi i64 [ 0, %bb.d ], [ %i.fv, %.lr.ph326 ]
  %.0246.lcssa = phi i64 [ 0, %bb.d ], [ %i.fs, %.lr.ph326 ]
  %.0245.lcssa = phi <2 x i64> [ %i.cj, %bb.d ], [ %i.dr, %.lr.ph326 ] ; 2 uses
  %.0244.lcssa = phi <2 x i64> [ %i.cl, %bb.d ], [ %i.du, %.lr.ph326 ]
  %.0242.lcssa = phi <2 x i64> [ %i.cn, %bb.d ], [ %i.dx, %.lr.ph326 ] ; 2 uses
  %.0241.lcssa = phi <2 x i64> [ %i.cp, %bb.d ], [ %i.ea, %.lr.ph326 ]
  %.2237.lcssa = phi i32 [ %.1236, %bb.d ], [ %4, %.lr.ph326 ]
  %.0234.lcssa = phi <2 x i64> [ %i.cr, %bb.d ], [ %i.ed, %.lr.ph326 ] ; 2 uses
  %.0233.lcssa = phi <2 x i64> [ %i.ct, %bb.d ], [ %i.eg, %.lr.ph326 ]
  %.0226.lcssa = phi <2 x i64> [ %i.cv, %bb.d ], [ %i.ej, %.lr.ph326 ] ; 2 uses
  %.0225.lcssa = phi <2 x i64> [ %i.cx, %bb.d ], [ %i.em, %.lr.ph326 ]
  %.2.lcssa = phi ptr [ %.1, %bb.d ], [ %i.fw, %.lr.ph326 ] ; 6 uses
  %.2229.lcssa = phi i64 [ %.2229308, %bb.d ], [ %.2229, %.lr.ph326 ]
  %.0243.lcssa = phi ptr [ %.0243309, %bb.d ], [ %.0243, %.lr.ph326 ]
  %i.fy = load i64, ptr %.2.lcssa, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cg ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cz ; 4 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 24
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !12
  %i.gv = mul i64 %i.cf, 1536
  %i.gw = add i64 %i.gv, -33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge327, %.lr.ph.i
  %.025.i = phi i64 [ %i.hb, %.lr.ph.i ], [ %i.gw, %._crit_edge327 ] ; 3 uses
  %.01824.i = phi i64 [ %i.gz, %.lr.ph.i ], [ -2, %._crit_edge327 ]
  %i.gx = shl i64 %.01824.i, 1
  %i.gy = and i64 %.025.i, 1
  %i.gz = or disjoint i64 %i.gx, %i.gy            ; 2 uses
  %i.ha = lshr i64 %.025.i, 1
  %i.hb = add nsw i64 %i.ha, -16                  ; 4 uses
  %i.hc = icmp ugt i64 %.025.i, 415
  br i1 %i.hc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !16

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.hd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0245.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.he = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0245.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.hf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0242.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.hg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0242.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.hh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.hi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.hj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0226.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.hk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0226.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.hl = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.he, <2 x i64> %i.hd, <2 x i64> %.0244.lcssa, i32 150) ; 2 uses
  %i.hm = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hg, <2 x i64> %i.hf, <2 x i64> %.0241.lcssa, i32 150)
  %i.hn = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hi, <2 x i64> %i.hh, <2 x i64> %.0233.lcssa, i32 150) ; 2 uses
  %i.ho = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hk, <2 x i64> %i.hj, <2 x i64> %.0225.lcssa, i32 150)
  %i.hp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> <i64 1034342603, i64 poison>, i8 0)
  %i.hq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hl, <2 x i64> <i64 poison, i64 3125789326>, i8 17)
  %i.hr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hn, <2 x i64> <i64 1034342603, i64 poison>, i8 0)
  %i.hs = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hn, <2 x i64> <i64 poison, i64 3125789326>, i8 17)
  %i.ht = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hq, <2 x i64> %i.hp, <2 x i64> %i.hm, i32 150) ; 2 uses
  %i.hu = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hs, <2 x i64> %i.hr, <2 x i64> %i.ho, i32 150)
  %i.hv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ht, <2 x i64> <i64 1947135746, i64 poison>, i8 0)
  %i.hw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ht, <2 x i64> <i64 poison, i64 2655706616>, i8 17)
  %i.hx = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hw, <2 x i64> %i.hv, <2 x i64> %i.hu, i32 150) ; 2 uses
  %5 = zext i32 %.2237.lcssa to i64
  %i.hy = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %5, i64 %i.fy)
  %i.hz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0246.lcssa, i64 %i.ga)
  %i.ia = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0247.lcssa, i64 %i.gc)
  %i.ib = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.hy, i64 %i.ge)
  %i.ic = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.hz, i64 %i.gg)
  %i.id = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ia, i64 %i.gi)
  %i.ie = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ib, i64 %i.gk)
  %i.if = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ic, i64 %i.gm)
  %i.ig = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.id, i64 %i.go)
  %i.ih = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ie, i64 %i.gq)
  %i.ii = trunc nuw i64 %i.ih to i32
  %i.ij = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.if, i64 %i.gs)
  %i.ik = trunc nuw i64 %i.ij to i32
  %i.il = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ig, i64 %i.gu)
  %i.im = trunc nuw i64 %i.il to i32
  %i.in = shl i64 %i.cf, 10
  %i.io = xor i64 %i.gz, -1                       ; 2 uses
  %i.ip = trunc nuw nsw i64 %i.hb to i32
  %i.iq = and i32 %i.ip, 31
  %i.ir = lshr exact i32 -2147483648, %i.iq       ; 3 uses
  %i.is = lshr i64 %i.hb, 5                       ; 4 uses
  %.not27.i = icmp eq i64 %i.is, 0
  br i1 %.not27.i, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %._crit_edge.loopexit.i
  %xtraiter = and i64 %i.is, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph31.i.prol.loopexit, label %.lr.ph31.i.prol

.lr.ph31.i.prol:                                  ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i.prol
  %.129.i.prol = phi i64 [ %i.iu, %.lr.ph31.i.prol ], [ %i.is, %.lr.ph31.i.preheader ]
  %.02028.i.prol = phi i32 [ %i.it, %.lr.ph31.i.prol ], [ %i.ir, %.lr.ph31.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph31.i.prol ], [ 0, %.lr.ph31.i.preheader ]
  %i.it = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i.prol, i32 0) ; 3 uses
  %i.iu = add nsw i64 %.129.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph31.i.prol.loopexit, label %.lr.ph31.i.prol, !llvm.loop !17

.lr.ph31.i.prol.loopexit:                         ; preds = %.lr.ph31.i.prol, %.lr.ph31.i.preheader
  %.lcssa476.unr = phi i32 [ poison, %.lr.ph31.i.preheader ], [ %i.it, %.lr.ph31.i.prol ]
  %.129.i.unr = phi i64 [ %i.is, %.lr.ph31.i.preheader ], [ %i.iu, %.lr.ph31.i.prol ]
  %.02028.i.unr = phi i32 [ %i.ir, %.lr.ph31.i.preheader ], [ %i.it, %.lr.ph31.i.prol ]
  %i.iv = icmp ult i64 %i.hb, 256
  br i1 %i.iv, label %.preheader.i, label %.lr.ph31.i

.preheader.i:                                     ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %._crit_edge.loopexit.i
  %.020.lcssa.i = phi i32 [ %i.ir, %._crit_edge.loopexit.i ], [ %.lcssa476.unr, %.lr.ph31.i.prol.loopexit ], [ %i.je, %.lr.ph31.i ] ; 2 uses
  %i.iw = lshr i64 %i.io, 1                       ; 2 uses
  %.not2333.i = icmp eq i64 %i.iw, 0
  br i1 %.not2333.i, label %_ZN5folly6detailL6xnmodpEm.exit, label %.lr.ph36.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i
  %.129.i = phi i64 [ %i.jf, %.lr.ph31.i ], [ %.129.i.unr, %.lr.ph31.i.prol.loopexit ]
  %.02028.i = phi i32 [ %i.je, %.lr.ph31.i ], [ %.02028.i.unr, %.lr.ph31.i.prol.loopexit ]
  %i.ix = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i, i32 0)
  %i.iy = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ix, i32 0)
  %i.iz = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.iy, i32 0)
  %i.ja = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.iz, i32 0)
  %i.jb = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ja, i32 0)
  %i.jc = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jb, i32 0)
  %i.jd = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jc, i32 0)
  %i.je = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jd, i32 0) ; 2 uses
  %i.jf = add nsw i64 %.129.i, -8                 ; 2 uses
  %.not.i.7 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.7, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !19

.lr.ph36.i:                                       ; preds = %.preheader.i, %.lr.ph36.i
  %i.jg = phi i64 [ %i.jp, %.lr.ph36.i ], [ %i.iw, %.preheader.i ] ; 2 uses
  %.11935.i = phi i64 [ %i.jg, %.lr.ph36.i ], [ %i.io, %.preheader.i ]
  %.12134.i = phi i32 [ %i.jo, %.lr.ph36.i ], [ %.020.lcssa.i, %.preheader.i ]
  %i.jh = and i64 %.11935.i, 1
  %i.ji = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i, i64 0
  %i.jj = bitcast <4 x i32> %i.ji to <2 x i64>    ; 2 uses
  %i.jk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jj, <2 x i64> %i.jj, i8 0)
  %i.jl = extractelement <2 x i64> %i.jk, i64 0
  %i.jm = shl i64 %i.jl, %i.jh
  %i.jn = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.jm)
  %i.jo = trunc nuw i64 %i.jn to i32              ; 2 uses
  %i.jp = lshr i64 %i.jg, 1                       ; 2 uses
  %.not23.i = icmp eq i64 %i.jp, 0
  br i1 %.not23.i, label %_ZN5folly6detailL6xnmodpEm.exit, label %.lr.ph36.i, !llvm.loop !20

_ZN5folly6detailL6xnmodpEm.exit:                  ; preds = %.lr.ph36.i, %.preheader.i
  %.121.lcssa.i = phi i32 [ %.020.lcssa.i, %.preheader.i ], [ %i.jo, %.lr.ph36.i ]
  %i.jq = mul i64 %i.cf, 1280
  %i.jr = add i64 %i.jq, -33
  br label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit, %.lr.ph.i264
  %.025.i265 = phi i64 [ %i.jw, %.lr.ph.i264 ], [ %i.jr, %_ZN5folly6detailL6xnmodpEm.exit ] ; 3 uses
  %.01824.i266 = phi i64 [ %i.ju, %.lr.ph.i264 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit ]
  %i.js = shl i64 %.01824.i266, 1
  %i.jt = and i64 %.025.i265, 1
  %i.ju = or disjoint i64 %i.js, %i.jt            ; 2 uses
  %i.jv = lshr i64 %.025.i265, 1
  %i.jw = add nsw i64 %i.jv, -16                  ; 4 uses
  %i.jx = icmp ugt i64 %.025.i265, 415
  br i1 %i.jx, label %.lr.ph.i264, label %._crit_edge.loopexit.i267, !llvm.loop !16

._crit_edge.loopexit.i267:                        ; preds = %.lr.ph.i264
  %i.jy = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ii, i64 0
  %i.jz = bitcast <4 x i32> %i.jy to <2 x i64>
  %i.ka = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i, i64 0
  %i.kb = bitcast <4 x i32> %i.ka to <2 x i64>
  %i.kc = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jz, <2 x i64> %i.kb, i8 0)
  %i.kd = xor i64 %i.ju, -1                       ; 2 uses
  %i.ke = trunc nuw nsw i64 %i.jw to i32
  %i.kf = and i32 %i.ke, 31
  %i.kg = lshr exact i32 -2147483648, %i.kf       ; 3 uses
  %i.kh = lshr i64 %i.jw, 5                       ; 4 uses
  %.not27.i251 = icmp eq i64 %i.kh, 0
  br i1 %.not27.i251, label %.preheader.i256, label %.lr.ph31.i252.preheader

.lr.ph31.i252.preheader:                          ; preds = %._crit_edge.loopexit.i267
  %xtraiter497 = and i64 %i.kh, 7                 ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %.lr.ph31.i252.prol.loopexit, label %.lr.ph31.i252.prol

.lr.ph31.i252.prol:                               ; preds = %.lr.ph31.i252.preheader, %.lr.ph31.i252.prol
  %.129.i253.prol = phi i64 [ %i.kj, %.lr.ph31.i252.prol ], [ %i.kh, %.lr.ph31.i252.preheader ]
  %.02028.i254.prol = phi i32 [ %i.ki, %.lr.ph31.i252.prol ], [ %i.kg, %.lr.ph31.i252.preheader ]
  %prol.iter499 = phi i64 [ %prol.iter499.next, %.lr.ph31.i252.prol ], [ 0, %.lr.ph31.i252.preheader ]
  %i.ki = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i254.prol, i32 0) ; 3 uses
  %i.kj = add nsw i64 %.129.i253.prol, -1         ; 2 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %.lr.ph31.i252.prol.loopexit, label %.lr.ph31.i252.prol, !llvm.loop !21

.lr.ph31.i252.prol.loopexit:                      ; preds = %.lr.ph31.i252.prol, %.lr.ph31.i252.preheader
  %.lcssa472.unr = phi i32 [ poison, %.lr.ph31.i252.preheader ], [ %i.ki, %.lr.ph31.i252.prol ]
  %.129.i253.unr = phi i64 [ %i.kh, %.lr.ph31.i252.preheader ], [ %i.kj, %.lr.ph31.i252.prol ]
  %.02028.i254.unr = phi i32 [ %i.kg, %.lr.ph31.i252.preheader ], [ %i.ki, %.lr.ph31.i252.prol ]
  %i.kk = icmp ult i64 %i.jw, 256
  br i1 %i.kk, label %.preheader.i256, label %.lr.ph31.i252

.preheader.i256:                                  ; preds = %.lr.ph31.i252.prol.loopexit, %.lr.ph31.i252, %._crit_edge.loopexit.i267
  %.020.lcssa.i257 = phi i32 [ %i.kg, %._crit_edge.loopexit.i267 ], [ %.lcssa472.unr, %.lr.ph31.i252.prol.loopexit ], [ %i.kt, %.lr.ph31.i252 ] ; 2 uses
  %i.kl = lshr i64 %i.kd, 1                       ; 2 uses
  %.not2333.i258 = icmp eq i64 %i.kl, 0
  br i1 %.not2333.i258, label %_ZN5folly6detailL6xnmodpEm.exit268, label %.lr.ph36.i259

.lr.ph31.i252:                                    ; preds = %.lr.ph31.i252.prol.loopexit, %.lr.ph31.i252
  %.129.i253 = phi i64 [ %i.ku, %.lr.ph31.i252 ], [ %.129.i253.unr, %.lr.ph31.i252.prol.loopexit ]
  %.02028.i254 = phi i32 [ %i.kt, %.lr.ph31.i252 ], [ %.02028.i254.unr, %.lr.ph31.i252.prol.loopexit ]
  %i.km = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i254, i32 0)
  %i.kn = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.km, i32 0)
  %i.ko = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kn, i32 0)
  %i.kp = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ko, i32 0)
  %i.kq = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kp, i32 0)
  %i.kr = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kq, i32 0)
  %i.ks = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kr, i32 0)
  %i.kt = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ks, i32 0) ; 2 uses
  %i.ku = add nsw i64 %.129.i253, -8              ; 2 uses
  %.not.i255.7 = icmp eq i64 %i.ku, 0
  br i1 %.not.i255.7, label %.preheader.i256, label %.lr.ph31.i252, !llvm.loop !19

.lr.ph36.i259:                                    ; preds = %.preheader.i256, %.lr.ph36.i259
  %i.kv = phi i64 [ %i.le, %.lr.ph36.i259 ], [ %i.kl, %.preheader.i256 ] ; 2 uses
  %.11935.i260 = phi i64 [ %i.kv, %.lr.ph36.i259 ], [ %i.kd, %.preheader.i256 ]
  %.12134.i261 = phi i32 [ %i.ld, %.lr.ph36.i259 ], [ %.020.lcssa.i257, %.preheader.i256 ]
  %i.kw = and i64 %.11935.i260, 1
  %i.kx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i261, i64 0
  %i.ky = bitcast <4 x i32> %i.kx to <2 x i64>    ; 2 uses
  %i.kz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ky, <2 x i64> %i.ky, i8 0)
  %i.la = extractelement <2 x i64> %i.kz, i64 0
  %i.lb = shl i64 %i.la, %i.kw
  %i.lc = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.lb)
  %i.ld = trunc nuw i64 %i.lc to i32              ; 2 uses
  %i.le = lshr i64 %i.kv, 1                       ; 2 uses
  %.not23.i262 = icmp eq i64 %i.le, 0
  br i1 %.not23.i262, label %_ZN5folly6detailL6xnmodpEm.exit268, label %.lr.ph36.i259, !llvm.loop !20

_ZN5folly6detailL6xnmodpEm.exit268:               ; preds = %.lr.ph36.i259, %.preheader.i256
  %.121.lcssa.i263 = phi i32 [ %.020.lcssa.i257, %.preheader.i256 ], [ %i.ld, %.lr.ph36.i259 ]
  %i.lf = add i64 %i.in, -33
  br label %.lr.ph.i285

.lr.ph.i285:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit268, %.lr.ph.i285
  %.025.i286 = phi i64 [ %i.lk, %.lr.ph.i285 ], [ %i.lf, %_ZN5folly6detailL6xnmodpEm.exit268 ] ; 3 uses
  %.01824.i287 = phi i64 [ %i.li, %.lr.ph.i285 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit268 ]
  %i.lg = shl i64 %.01824.i287, 1
  %i.lh = and i64 %.025.i286, 1
  %i.li = or disjoint i64 %i.lg, %i.lh            ; 2 uses
  %i.lj = lshr i64 %.025.i286, 1
  %i.lk = add nsw i64 %i.lj, -16                  ; 4 uses
  %i.ll = icmp ugt i64 %.025.i286, 415
  br i1 %i.ll, label %.lr.ph.i285, label %._crit_edge.loopexit.i288, !llvm.loop !16

._crit_edge.loopexit.i288:                        ; preds = %.lr.ph.i285
  %i.lm = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ik, i64 0
  %i.ln = bitcast <4 x i32> %i.lm to <2 x i64>
  %i.lo = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i263, i64 0
  %i.lp = bitcast <4 x i32> %i.lo to <2 x i64>
  %i.lq = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ln, <2 x i64> %i.lp, i8 0)
  %i.lr = xor i64 %i.li, -1                       ; 2 uses
  %i.ls = trunc nuw nsw i64 %i.lk to i32
  %i.lt = and i32 %i.ls, 31
  %i.lu = lshr exact i32 -2147483648, %i.lt       ; 3 uses
  %i.lv = lshr i64 %i.lk, 5                       ; 4 uses
  %.not27.i272 = icmp eq i64 %i.lv, 0
  br i1 %.not27.i272, label %.preheader.i277, label %.lr.ph31.i273.preheader

.lr.ph31.i273.preheader:                          ; preds = %._crit_edge.loopexit.i288
  %xtraiter500 = and i64 %i.lv, 7                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %.lr.ph31.i273.prol.loopexit, label %.lr.ph31.i273.prol

.lr.ph31.i273.prol:                               ; preds = %.lr.ph31.i273.preheader, %.lr.ph31.i273.prol
  %.129.i274.prol = phi i64 [ %i.lx, %.lr.ph31.i273.prol ], [ %i.lv, %.lr.ph31.i273.preheader ]
  %.02028.i275.prol = phi i32 [ %i.lw, %.lr.ph31.i273.prol ], [ %i.lu, %.lr.ph31.i273.preheader ]
  %prol.iter502 = phi i64 [ %prol.iter502.next, %.lr.ph31.i273.prol ], [ 0, %.lr.ph31.i273.preheader ]
  %i.lw = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i275.prol, i32 0) ; 3 uses
  %i.lx = add nsw i64 %.129.i274.prol, -1         ; 2 uses
  %prol.iter502.next = add i64 %prol.iter502, 1   ; 2 uses
  %prol.iter502.cmp.not = icmp eq i64 %prol.iter502.next, %xtraiter500
  br i1 %prol.iter502.cmp.not, label %.lr.ph31.i273.prol.loopexit, label %.lr.ph31.i273.prol, !llvm.loop !22

.lr.ph31.i273.prol.loopexit:                      ; preds = %.lr.ph31.i273.prol, %.lr.ph31.i273.preheader
  %.lcssa468.unr = phi i32 [ poison, %.lr.ph31.i273.preheader ], [ %i.lw, %.lr.ph31.i273.prol ]
  %.129.i274.unr = phi i64 [ %i.lv, %.lr.ph31.i273.preheader ], [ %i.lx, %.lr.ph31.i273.prol ]
  %.02028.i275.unr = phi i32 [ %i.lu, %.lr.ph31.i273.preheader ], [ %i.lw, %.lr.ph31.i273.prol ]
  %i.ly = icmp ult i64 %i.lk, 256
  br i1 %i.ly, label %.preheader.i277, label %.lr.ph31.i273

.preheader.i277:                                  ; preds = %.lr.ph31.i273.prol.loopexit, %.lr.ph31.i273, %._crit_edge.loopexit.i288
  %.020.lcssa.i278 = phi i32 [ %i.lu, %._crit_edge.loopexit.i288 ], [ %.lcssa468.unr, %.lr.ph31.i273.prol.loopexit ], [ %i.mh, %.lr.ph31.i273 ] ; 2 uses
  %i.lz = lshr i64 %i.lr, 1                       ; 2 uses
  %.not2333.i279 = icmp eq i64 %i.lz, 0
  br i1 %.not2333.i279, label %_ZN5folly6detailL6xnmodpEm.exit289, label %.lr.ph36.i280

.lr.ph31.i273:                                    ; preds = %.lr.ph31.i273.prol.loopexit, %.lr.ph31.i273
  %.129.i274 = phi i64 [ %i.mi, %.lr.ph31.i273 ], [ %.129.i274.unr, %.lr.ph31.i273.prol.loopexit ]
  %.02028.i275 = phi i32 [ %i.mh, %.lr.ph31.i273 ], [ %.02028.i275.unr, %.lr.ph31.i273.prol.loopexit ]
  %i.ma = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i275, i32 0)
  %i.mb = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ma, i32 0)
  %i.mc = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mb, i32 0)
  %i.md = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mc, i32 0)
  %i.me = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.md, i32 0)
  %i.mf = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.me, i32 0)
  %i.mg = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mf, i32 0)
  %i.mh = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mg, i32 0) ; 2 uses
  %i.mi = add nsw i64 %.129.i274, -8              ; 2 uses
  %.not.i276.7 = icmp eq i64 %i.mi, 0
  br i1 %.not.i276.7, label %.preheader.i277, label %.lr.ph31.i273, !llvm.loop !19

.lr.ph36.i280:                                    ; preds = %.preheader.i277, %.lr.ph36.i280
  %i.mj = phi i64 [ %i.ms, %.lr.ph36.i280 ], [ %i.lz, %.preheader.i277 ] ; 2 uses
  %.11935.i281 = phi i64 [ %i.mj, %.lr.ph36.i280 ], [ %i.lr, %.preheader.i277 ]
  %.12134.i282 = phi i32 [ %i.mr, %.lr.ph36.i280 ], [ %.020.lcssa.i278, %.preheader.i277 ]
  %i.mk = and i64 %.11935.i281, 1
  %i.ml = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i282, i64 0
  %i.mm = bitcast <4 x i32> %i.ml to <2 x i64>    ; 2 uses
  %i.mn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mm, <2 x i64> %i.mm, i8 0)
  %i.mo = extractelement <2 x i64> %i.mn, i64 0
  %i.mp = shl i64 %i.mo, %i.mk
  %i.mq = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.mp)
  %i.mr = trunc nuw i64 %i.mq to i32              ; 2 uses
  %i.ms = lshr i64 %i.mj, 1                       ; 2 uses
  %.not23.i283 = icmp eq i64 %i.ms, 0
  br i1 %.not23.i283, label %_ZN5folly6detailL6xnmodpEm.exit289, label %.lr.ph36.i280, !llvm.loop !20

_ZN5folly6detailL6xnmodpEm.exit289:               ; preds = %.lr.ph36.i280, %.preheader.i277
  %.121.lcssa.i284 = phi i32 [ %.020.lcssa.i278, %.preheader.i277 ], [ %i.mr, %.lr.ph36.i280 ]
  %i.mt = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.im, i64 0
  %i.mu = bitcast <4 x i32> %i.mt to <2 x i64>
  %i.mv = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i284, i64 0
  %i.mw = bitcast <4 x i32> %i.mv to <2 x i64>
  %i.mx = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mu, <2 x i64> %i.mw, i8 0)
  %i.my = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.kc, <2 x i64> %i.lq, <2 x i64> %i.mx, i32 150)
  %i.mz = extractelement <2 x i64> %i.hx, i64 0
  %i.na = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.mz)
  %shift = shufflevector <2 x i64> %i.hx, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i64> %i.my, %shift
  %i.nb = extractelement <2 x i64> %foldExtExtBinop, i64 0
  %i.nc = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.na, i64 %i.nb)
  %i.nd = trunc nuw i64 %i.nc to i32
  br label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detailL6xnmodpEm.exit289, %bb.c
  %.3238 = phi i32 [ %i.nd, %_ZN5folly6detailL6xnmodpEm.exit289 ], [ %.1236, %bb.c ] ; 3 uses
  %.3230 = phi i64 [ %.2229.lcssa, %_ZN5folly6detailL6xnmodpEm.exit289 ], [ %.1228, %bb.c ] ; 5 uses
  %.3 = phi ptr [ %.0243.lcssa, %_ZN5folly6detailL6xnmodpEm.exit289 ], [ %.1, %bb.c ] ; 3 uses
  %i.ne = icmp samesign ugt i64 %.3230, 7
  br i1 %i.ne, label %.lr.ph346.preheader, label %.preheader

.lr.ph346.preheader:                              ; preds = %bb.e
  %i.nf = add i64 %.3230, -8                      ; 2 uses
  %i.ng = lshr i64 %i.nf, 3
  %i.nh = add nuw nsw i64 %i.ng, 1
  %xtraiter503 = and i64 %i.nh, 7                 ; 2 uses
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol

.lr.ph346.prol:                                   ; preds = %.lr.ph346.preheader, %.lr.ph346.prol
  %.4344.prol = phi ptr [ %i.nk, %.lr.ph346.prol ], [ %.3, %.lr.ph346.preheader ] ; 2 uses
  %.4231343.prol = phi i64 [ %i.nl, %.lr.ph346.prol ], [ %.3230, %.lr.ph346.preheader ]
  %.4239342.prol = phi i32 [ %7, %.lr.ph346.prol ], [ %.3238, %.lr.ph346.preheader ]
  %prol.iter505.a = phi i64 [ %prol.iter505.next, %.lr.ph346.prol ], [ 0, %.lr.ph346.preheader ]
  %6 = zext i32 %.4239342.prol to i64
  %i.ni = load i64, ptr %.4344.prol, align 8, !tbaa !12
  %i.nj = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %6, i64 %i.ni)
  %7 = trunc nuw i64 %i.nj to i32                 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.4344.prol, i64 8 ; 3 uses
  %i.nl = add nsw i64 %.4231343.prol, -8          ; 3 uses
  %prol.iter505.next = add i64 %prol.iter505.a, 1 ; 2 uses
  %prol.iter505.cmp.not = icmp eq i64 %prol.iter505.next, %xtraiter503
  br i1 %prol.iter505.cmp.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol, !llvm.loop !23

.lr.ph346.prol.loopexit:                          ; preds = %.lr.ph346.prol, %.lr.ph346.preheader
  %.4344.unr = phi ptr [ %.3, %.lr.ph346.preheader ], [ %i.nk, %.lr.ph346.prol ]
  %.4231343.unr = phi i64 [ %.3230, %.lr.ph346.preheader ], [ %i.nl, %.lr.ph346.prol ]
  %.4239342.unr = phi i32 [ %.3238, %.lr.ph346.preheader ], [ %7, %.lr.ph346.prol ]
  %.lcssa466.unr = phi i32 [ poison, %.lr.ph346.preheader ], [ %7, %.lr.ph346.prol ]
  %.lcssa465.unr = phi ptr [ poison, %.lr.ph346.preheader ], [ %i.nk, %.lr.ph346.prol ]
  %.lcssa464.unr = phi i64 [ poison, %.lr.ph346.preheader ], [ %i.nl, %.lr.ph346.prol ]
  %i.nm = icmp ult i64 %i.nf, 56
  br i1 %i.nm, label %.preheader, label %.lr.ph346

.preheader:                                       ; preds = %.lr.ph346.prol.loopexit, %.lr.ph346, %bb.e
  %.4239.lcssa = phi i32 [ %.3238, %bb.e ], [ %.lcssa466.unr, %.lr.ph346.prol.loopexit ], [ %9, %.lr.ph346 ] ; 3 uses
  %.4231.lcssa = phi i64 [ %.3230, %bb.e ], [ %.lcssa464.unr, %.lr.ph346.prol.loopexit ], [ %i.oq, %.lr.ph346 ] ; 5 uses
  %.4.lcssa = phi ptr [ %.3, %bb.e ], [ %.lcssa465.unr, %.lr.ph346.prol.loopexit ], [ %i.op, %.lr.ph346 ] ; 2 uses
  %.not350 = icmp eq i64 %.4231.lcssa, 0
  br i1 %.not350, label %._crit_edge355, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %.preheader
  %xtraiter506 = and i64 %.4231.lcssa, 7          ; 2 uses
  %lcmp.mod507.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %.lr.ph354.prol.loopexit, label %.lr.ph354.prol

.lr.ph354.prol:                                   ; preds = %.lr.ph354.preheader, %.lr.ph354.prol
  %.5353.prol = phi ptr [ %i.nn, %.lr.ph354.prol ], [ %.4.lcssa, %.lr.ph354.preheader ] ; 2 uses
  %.5232352.prol = phi i64 [ %i.nq, %.lr.ph354.prol ], [ %.4231.lcssa, %.lr.ph354.preheader ]
  %.5240351.prol = phi i32 [ %i.np, %.lr.ph354.prol ], [ %.4239.lcssa, %.lr.ph354.preheader ]
  %prol.iter508 = phi i64 [ %prol.iter508.next, %.lr.ph354.prol ], [ 0, %.lr.ph354.preheader ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.5353.prol, i64 1 ; 2 uses
  %i.no = load i8, ptr %.5353.prol, align 1, !tbaa !11
  %i.np = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5240351.prol, i8 %i.no) ; 3 uses
  %i.nq = add nsw i64 %.5232352.prol, -1          ; 2 uses
  %prol.iter508.next = add i64 %prol.iter508, 1   ; 2 uses
  %prol.iter508.cmp.not = icmp eq i64 %prol.iter508.next, %xtraiter506
  br i1 %prol.iter508.cmp.not, label %.lr.ph354.prol.loopexit, label %.lr.ph354.prol, !llvm.loop !24

.lr.ph354.prol.loopexit:                          ; preds = %.lr.ph354.prol, %.lr.ph354.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph354.preheader ], [ %i.np, %.lr.ph354.prol ]
  %.5353.unr = phi ptr [ %.4.lcssa, %.lr.ph354.preheader ], [ %i.nn, %.lr.ph354.prol ]
  %.5232352.unr = phi i64 [ %.4231.lcssa, %.lr.ph354.preheader ], [ %i.nq, %.lr.ph354.prol ]
  %.5240351.unr = phi i32 [ %.4239.lcssa, %.lr.ph354.preheader ], [ %i.np, %.lr.ph354.prol ]
  %i.nr = icmp ult i64 %.4231.lcssa, 8
  br i1 %i.nr, label %._crit_edge355, label %.lr.ph354

.lr.ph346:                                        ; preds = %.lr.ph346.prol.loopexit, %.lr.ph346
  %.4344 = phi ptr [ %i.op, %.lr.ph346 ], [ %.4344.unr, %.lr.ph346.prol.loopexit ] ; 9 uses
  %.4231343 = phi i64 [ %i.oq, %.lr.ph346 ], [ %.4231343.unr, %.lr.ph346.prol.loopexit ]
  %.4239342 = phi i32 [ %9, %.lr.ph346 ], [ %.4239342.unr, %.lr.ph346.prol.loopexit ]
  %8 = zext i32 %.4239342 to i64
  %i.ns = load i64, ptr %.4344, align 8, !tbaa !12
  %i.nt = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %8, i64 %i.ns)
  %i.nu = getelementptr inbounds nuw i8, ptr %.4344, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !12
  %i.nw = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.nt, i64 %i.nv)
  %i.nx = getelementptr inbounds nuw i8, ptr %.4344, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !12
  %i.nz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.nw, i64 %i.ny)
  %i.oa = getelementptr inbounds nuw i8, ptr %.4344, i64 24
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !12
  %i.oc = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.nz, i64 %i.ob)
  %i.od = getelementptr inbounds nuw i8, ptr %.4344, i64 32
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !12
  %i.of = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.oc, i64 %i.oe)
  %i.og = getelementptr inbounds nuw i8, ptr %.4344, i64 40
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !12
  %i.oi = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.of, i64 %i.oh)
  %i.oj = getelementptr inbounds nuw i8, ptr %.4344, i64 48
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !12
  %i.ol = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.oi, i64 %i.ok)
  %i.om = getelementptr inbounds nuw i8, ptr %.4344, i64 56
  %i.on = load i64, ptr %i.om, align 8, !tbaa !12
  %i.oo = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ol, i64 %i.on)
  %9 = trunc nuw i64 %i.oo to i32                 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.4344, i64 64 ; 2 uses
  %i.oq = add nsw i64 %.4231343, -64              ; 3 uses
  %i.or = icmp ugt i64 %i.oq, 7
  br i1 %i.or, label %.lr.ph346, label %.preheader, !llvm.loop !25

.lr.ph354:                                        ; preds = %.lr.ph354.prol.loopexit, %.lr.ph354
  %.5353 = phi ptr [ %i.pn, %.lr.ph354 ], [ %.5353.unr, %.lr.ph354.prol.loopexit ] ; 9 uses
  %.5232352 = phi i64 [ %i.pq, %.lr.ph354 ], [ %.5232352.unr, %.lr.ph354.prol.loopexit ]
  %.5240351 = phi i32 [ %i.pp, %.lr.ph354 ], [ %.5240351.unr, %.lr.ph354.prol.loopexit ]
  %i.os = getelementptr inbounds nuw i8, ptr %.5353, i64 1
  %i.ot = load i8, ptr %.5353, align 1, !tbaa !11
  %i.ou = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5240351, i8 %i.ot)
  %i.ov = getelementptr inbounds nuw i8, ptr %.5353, i64 2
  %i.ow = load i8, ptr %i.os, align 1, !tbaa !11
  %i.ox = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ou, i8 %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr %.5353, i64 3
  %i.oz = load i8, ptr %i.ov, align 1, !tbaa !11
  %i.pa = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ox, i8 %i.oz)
  %i.pb = getelementptr inbounds nuw i8, ptr %.5353, i64 4
  %i.pc = load i8, ptr %i.oy, align 1, !tbaa !11
  %i.pd = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pa, i8 %i.pc)
  %i.pe = getelementptr inbounds nuw i8, ptr %.5353, i64 5
  %i.pf = load i8, ptr %i.pb, align 1, !tbaa !11
  %i.pg = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pd, i8 %i.pf)
  %i.ph = getelementptr inbounds nuw i8, ptr %.5353, i64 6
  %i.pi = load i8, ptr %i.pe, align 1, !tbaa !11
  %i.pj = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pg, i8 %i.pi)
  %i.pk = getelementptr inbounds nuw i8, ptr %.5353, i64 7
  %i.pl = load i8, ptr %i.ph, align 1, !tbaa !11
  %i.pm = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pj, i8 %i.pl)
  %i.pn = getelementptr inbounds nuw i8, ptr %.5353, i64 8
  %i.po = load i8, ptr %i.pk, align 1, !tbaa !11
  %i.pp = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pm, i8 %i.po) ; 2 uses
  %i.pq = add nsw i64 %.5232352, -8               ; 2 uses
  %.not.7 = icmp eq i64 %i.pq, 0
  br i1 %.not.7, label %._crit_edge355, label %.lr.ph354, !llvm.loop !26

._crit_edge355:                                   ; preds = %.lr.ph354.prol.loopexit, %.lr.ph354, %.preheader
  %.5240.lcssa = phi i32 [ %.4239.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph354.prol.loopexit ], [ %i.pp, %.lr.ph354 ]
  ret i32 %.5240.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64>, <2 x i64>, <2 x i64>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vl,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
end_hunk_0
