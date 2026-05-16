begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lzf_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = alloca [65536 x ptr], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.e = icmp ne i64 %1, 0
  %i.f = icmp ne i64 %3, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %.thread286

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -2 ; 2 uses
  %i.i = icmp sgt i64 %1, 2
  br i1 %i.i, label %.lr.ph, label %.thread.thread297

.lr.ph:                                           ; preds = %bb.b
  %i.j = load i8, ptr %0, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = ptrtoint ptr %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.0202306 = phi i32 [ 0, %.lr.ph ], [ %.3205, %.thread ] ; 6 uses
  %.0207305 = phi i32 [ %i.p, %.lr.ph ], [ %.3210, %.thread ] ; 2 uses
  %.0211304 = phi ptr [ %0, %.lr.ph ], [ %.3214, %.thread ] ; 26 uses
  %.0217303 = phi ptr [ %i.g, %.lr.ph ], [ %.4221, %.thread ] ; 9 uses
  %i.r = shl i32 %.0207305, 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0211304, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 3 uses
  %.neg = mul i32 %i.v, 65531
  %i.w = add i32 %.neg, %.0207305
  %i.x = and i32 %i.w, 65535
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 21 uses
  store ptr %.0211304, ptr %i.z, align 8, !tbaa !14
  %i.ab = ptrtoint ptr %.0211304 to i64           ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = xor i64 %i.ac, -1
  %i.ae = add i64 %i.ad, %i.ab                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, 8192
  %i.ag = icmp ugt ptr %i.aa, %0
  %or.cond266 = and i1 %i.ag, %i.af
  br i1 %or.cond266, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = load i8, ptr %i.s, align 1, !tbaa !13
  %i.ak = icmp eq i8 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.al = load i16, ptr %i.aa, align 2, !tbaa !17
  %i.am = load i16, ptr %.0211304, align 2, !tbaa !17
  %i.an = icmp eq i16 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.ao = sub i64 %i.q, %i.ab
  %i.ap = add nsw i64 %i.ao, -2                   ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 264)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0217303, i64 4
  %.not239 = icmp ult ptr %i.ar, %i.d
  br i1 %.not239, label %._crit_edge320, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %.not240 = icmp eq i32 %.0202306, 0
  %.neg241 = sext i1 %.not240 to i64
  %i.as = getelementptr inbounds i8, ptr %.0217303, i64 %.neg241
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not242 = icmp ult ptr %i.at, %i.d
  br i1 %.not242, label %._crit_edge320, label %.thread286

._crit_edge320:                                   ; preds = %bb.f, %bb.g
  %i.au = trunc i32 %.0202306 to i8
  %i.av = add i8 %i.au, -1
  %i.aw = xor i32 %.0202306, -1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.0217303, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !13
  %.not243 = icmp eq i32 %.0202306, 0
  %.neg244 = sext i1 %.not243 to i64
  %i.az = getelementptr inbounds i8, ptr %.0217303, i64 %.neg244 ; 5 uses
  %i.ba = icmp ugt i64 %i.ap, 16
  br i1 %i.ba, label %bb.h, label %bb.x, !prof !19

bb.h:                                             ; preds = %._crit_edge320
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.0211304, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %.not245 = icmp eq i8 %i.bc, %i.be
  br i1 %.not245, label %bb.i, label %.critedge.thread273

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.0211304, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %.not246 = icmp eq i8 %i.bg, %i.bi
  br i1 %.not246, label %bb.j, label %.critedge.thread273

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.0211304, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %.not247 = icmp eq i8 %i.bk, %i.bm
  br i1 %.not247, label %bb.k, label %.critedge.thread273

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.0211304, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %.not248 = icmp eq i8 %i.bo, %i.bq
  br i1 %.not248, label %bb.l, label %.critedge.thread273

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.0211304, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %.not249 = icmp eq i8 %i.bs, %i.bu
  br i1 %.not249, label %bb.m, label %.critedge.thread273

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.0211304, i64 8
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %.not250 = icmp eq i8 %i.bw, %i.by
  br i1 %.not250, label %bb.n, label %.critedge.thread273

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.0211304, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %.not251 = icmp eq i8 %i.ca, %i.cc
  br i1 %.not251, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.0211304, i64 10
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %.not252 = icmp eq i8 %i.ce, %i.cg
  br i1 %.not252, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.0211304, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %.not253 = icmp eq i8 %i.ci, %i.ck
  br i1 %.not253, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.0211304, i64 12
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %.not254 = icmp eq i8 %i.cm, %i.co
  br i1 %.not254, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.0211304, i64 13
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %.not255 = icmp eq i8 %i.cq, %i.cs
  br i1 %.not255, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.0211304, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %.not256 = icmp eq i8 %i.cu, %i.cw
  br i1 %.not256, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.0211304, i64 15
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %.not257 = icmp eq i8 %i.cy, %i.da
  br i1 %.not257, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.0211304, i64 16
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %.not258 = icmp eq i8 %i.dc, %i.de
  br i1 %.not258, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.0211304, i64 17
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %.not259 = icmp eq i8 %i.dg, %i.di
  br i1 %.not259, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.0211304, i64 18
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %.not260 = icmp eq i8 %i.dk, %i.dm
  br i1 %.not260, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w, %._crit_edge320
  %.0 = phi i32 [ 18, %bb.w ], [ 2, %._crit_edge320 ] ; 3 uses
  %i.dn = trunc nuw nsw i64 %i.aq to i32          ; 2 uses
  %i.do = or disjoint i32 %.0, 1                  ; 3 uses
  %i.dp = icmp samesign ult i32 %i.do, %i.dn
  br i1 %i.dp, label %.lr.ph334, label %.critedge

bb.y:                                             ; preds = %.lr.ph334
  %i.dq = add nuw nsw i32 %i.ds, 1                ; 3 uses
  %i.dr = icmp samesign ult i32 %i.dq, %i.dn
  br i1 %i.dr, label %.lr.ph334, label %.critedge, !llvm.loop !20

.lr.ph334:                                        ; preds = %bb.x, %bb.y
  %i.ds = phi i32 [ %i.dq, %bb.y ], [ %i.do, %bb.x ] ; 5 uses
  %.1332 = phi i32 [ %i.ds, %bb.y ], [ %.0, %bb.x ]
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.0211304, i64 %i.dt
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.dy = icmp eq i8 %i.dv, %i.dx
  br i1 %i.dy, label %bb.y, label %..critedge_crit_edge336, !llvm.loop !20

.critedge.thread:                                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.2.ph = phi i32 [ 18, %bb.w ], [ 17, %bb.v ], [ 16, %bb.u ], [ 15, %bb.t ], [ 14, %bb.s ], [ 13, %bb.r ], [ 12, %bb.q ], [ 11, %bb.p ], [ 10, %bb.o ], [ 9, %bb.n ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0211304, i64 1
  br label %bb.aa

.critedge.thread273:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.2.ph272 = phi i32 [ 8, %bb.m ], [ 7, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 3, %bb.h ] ; 2 uses
  %i.ea = add nsw i32 %.2.ph272, -2
  %i.eb = getelementptr inbounds nuw i8, ptr %.0211304, i64 1
  br label %bb.z

..critedge_crit_edge336:                          ; preds = %.lr.ph334
  br label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.y, %..critedge_crit_edge336, %bb.x
  %.1.lcssa = phi i32 [ %.0, %bb.x ], [ %.1332, %..critedge_crit_edge336 ], [ %i.ds, %bb.y ] ; 2 uses
  %.lcssa = phi i32 [ %i.do, %bb.x ], [ %i.ds, %..critedge_crit_edge336 ], [ %i.dq, %bb.y ] ; 2 uses
  %i.ec = add nsw i32 %.1.lcssa, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %.0211304, i64 1 ; 2 uses
  %i.ee = icmp samesign ult i32 %.1.lcssa, 8
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.thread273, %.critedge
  %i.ef = phi ptr [ %i.eb, %.critedge.thread273 ], [ %i.ed, %.critedge ]
  %i.eg = phi i32 [ %i.ea, %.critedge.thread273 ], [ %i.ec, %.critedge ]
  %.2275 = phi i32 [ %.2.ph272, %.critedge.thread273 ], [ %.lcssa, %.critedge ]
  %i.eh = lshr i64 %i.ae, 8
  %i.ei = shl nuw nsw i32 %i.eg, 5
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = or disjoint i64 %i.eh, %i.ej
  %i.el = trunc nuw i64 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.el, ptr %i.az, align 1, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread, %.critedge
  %i.en = phi ptr [ %i.dz, %.critedge.thread ], [ %i.ed, %.critedge ]
  %.2269 = phi i32 [ %.2.ph, %.critedge.thread ], [ %.lcssa, %.critedge ] ; 2 uses
  %i.eo = lshr i64 %i.ae, 8
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, -32
  %i.er = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.eq, ptr %i.az, align 1, !tbaa !13
  %i.es = trunc i32 %.2269 to i8
  %i.et = add i8 %i.es, -9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.et, ptr %i.er, align 1, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ev = phi ptr [ %i.ef, %bb.z ], [ %i.en, %bb.aa ]
  %.2270 = phi i32 [ %.2275, %bb.z ], [ %.2269, %bb.aa ]
  %.1218 = phi ptr [ %i.em, %bb.z ], [ %i.eu, %bb.aa ] ; 2 uses
  %i.ew = trunc i64 %i.ae to i8
  store i8 %i.ew, ptr %.1218, align 1, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.1218, i64 2 ; 2 uses
  %i.ey = add i32 %.2270, -1
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ez ; 7 uses
  %.not261 = icmp ult ptr %i.fa, %i.h
  br i1 %.not261, label %bb.ac, label %.thread.thread297.loopexit, !prof !19

bb.ac:                                            ; preds = %bb.ab
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -2 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 -1 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fd, 16
  %i.fi = shl nuw nsw i32 %i.fg, 8
  %i.fj = or disjoint i32 %i.fi, %i.fh            ; 2 uses
  %i.fk = load i8, ptr %i.fa, align 1, !tbaa !13
  %i.fl = zext i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fj, %i.fl            ; 3 uses
  %i.fn = lshr exact i32 %i.fj, 8
  %.neg262 = mul i32 %i.fm, 65531
  %i.fo = add i32 %.neg262, %i.fn
  %i.fp = and i32 %i.fo, 65535
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fq
  store ptr %i.fb, ptr %i.fr, align 8, !tbaa !14
  %i.fs = shl nuw i32 %i.fm, 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fs, %i.fv            ; 2 uses
  %.neg263 = mul i32 %i.fw, 65531
  %i.fx = add i32 %.neg263, %i.fm
  %i.fy = and i32 %i.fx, 65535
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fz
  store ptr %i.fe, ptr %i.ga, align 8, !tbaa !14
  br label %.thread

bb.ad:                                            ; preds = %bb.e, %bb.d, %bb.c
  %.not238 = icmp ult ptr %.0217303, %i.d
  br i1 %.not238, label %bb.ae, label %.thread286, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.gb = add nsw i32 %.0202306, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0211304, i64 1 ; 2 uses
  %i.gd = load i8, ptr %.0211304, align 1, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.0217303, i64 1
  store i8 %i.gd, ptr %.0217303, align 1, !tbaa !13
  %i.gf = icmp eq i32 %i.gb, 32
  br i1 %i.gf, label %bb.af, label %.thread, !prof !22

bb.af:                                            ; preds = %bb.ae
  %i.gg = trunc nuw nsw i32 %.0202306 to i8
  %i.gh = getelementptr inbounds i8, ptr %.0217303, i64 -32
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %.0217303, i64 2
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.af, %bb.ae
  %.4221 = phi ptr [ %i.ex, %bb.ac ], [ %i.ge, %bb.ae ], [ %i.gi, %bb.af ] ; 2 uses
  %.3214 = phi ptr [ %i.fa, %bb.ac ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.af ] ; 3 uses
  %.3210 = phi i32 [ %i.fw, %bb.ac ], [ %i.v, %bb.ae ], [ %i.v, %bb.af ]
  %.3205 = phi i32 [ 0, %bb.ac ], [ %i.gb, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %i.gj = icmp ult ptr %.3214, %i.h
  br i1 %i.gj, label %bb.c, label %.thread.thread297.loopexit

.thread.thread297.loopexit:                       ; preds = %bb.ab, %.thread
  %.5222.ph = phi ptr [ %.4221, %.thread ], [ %i.ex, %bb.ab ]
  %.4215.ph = phi ptr [ %.3214, %.thread ], [ %i.fa, %bb.ab ] ; 2 uses
  %.4206.ph = phi i32 [ %.3205, %.thread ], [ 0, %bb.ab ]
  %.pre = ptrtoint ptr %.4215.ph to i64
  br label %.thread.thread297

.thread.thread297:                                ; preds = %.thread.thread297.loopexit, %bb.b
  %.4215319.pre-phi = phi i64 [ %.pre, %.thread.thread297.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %.5222 = phi ptr [ %.5222.ph, %.thread.thread297.loopexit ], [ %i.g, %bb.b ] ; 7 uses
  %.4215 = phi ptr [ %.4215.ph, %.thread.thread297.loopexit ], [ %0, %bb.b ] ; 5 uses
  %.4206 = phi i32 [ %.4206.ph, %.thread.thread297.loopexit ], [ 0, %bb.b ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.5222, i64 3
  %i.gl = icmp ugt ptr %i.gk, %i.d
  br i1 %i.gl, label %.thread286, label %.preheader

.preheader:                                       ; preds = %.thread.thread297
  %i.gm = icmp ult ptr %.4215, %i.c
  br i1 %i.gm, label %.lr.ph316.preheader, label %._crit_edge

.lr.ph316.preheader:                              ; preds = %.preheader
  %i.gn = add i64 %1, %i.a                        ; 2 uses
  %i.go = sub i64 %i.gn, %.4215319.pre-phi        ; 2 uses
  %scevgep = getelementptr i8, ptr %.4215, i64 %i.go
  %.neg343 = add i64 %.4215319.pre-phi, 1
  %xtraiter = and i64 %i.go, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader
  %i.gp = add nsw i32 %.4206, 1                   ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.4215, i64 1 ; 2 uses
  %i.gr = load i8, ptr %.4215, align 1, !tbaa !13
  %i.gs = getelementptr inbounds nuw i8, ptr %.5222, i64 1 ; 2 uses
  store i8 %i.gr, ptr %.5222, align 1, !tbaa !13
  %i.gt = icmp eq i32 %i.gp, 32
  br i1 %i.gt, label %bb.ag, label %.lr.ph316.prol.loopexit, !prof !22

bb.ag:                                            ; preds = %.lr.ph316.prol
  %i.gu = trunc nuw nsw i32 %.4206 to i8
  %i.gv = getelementptr inbounds i8, ptr %.5222, i64 -32
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.5222, i64 2 ; 2 uses
  br label %.lr.ph316.prol.loopexit

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %bb.ag, %.lr.ph316.preheader
  %.7.lcssa.unr = phi ptr [ poison, %.lr.ph316.preheader ], [ %i.gw, %bb.ag ], [ %i.gs, %.lr.ph316.prol ]
  %.6.lcssa.unr = phi i32 [ poison, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %.5315.unr = phi i32 [ %.4206, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %.5216314.unr = phi ptr [ %.4215, %.lr.ph316.preheader ], [ %i.gq, %bb.ag ], [ %i.gq, %.lr.ph316.prol ]
  %.6223313.unr = phi ptr [ %.5222, %.lr.ph316.preheader ], [ %i.gw, %bb.ag ], [ %i.gs, %.lr.ph316.prol ]
end_hunk_0
