loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lzf_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoint ptr %0 to i64                     ; 2 uses
  %i.a = alloca [65536 x ptr], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.d = icmp ne i64 %1, 0
  %i.e = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %.thread286

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.h = icmp sgt i64 %1, 2
  br i1 %i.h, label %.lr.ph, label %.thread.thread297

.lr.ph:                                           ; preds = %bb.b
  %i.i = load i8, ptr %0, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n
  %i.p = ptrtoint ptr %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.0202306 = phi i32 [ 0, %.lr.ph ], [ %.3205, %.thread ] ; 6 uses
  %.0207305 = phi i32 [ %i.o, %.lr.ph ], [ %.3210, %.thread ] ; 2 uses
  %.0211304 = phi ptr [ %0, %.lr.ph ], [ %.3214, %.thread ] ; 26 uses
  %.0217303 = phi ptr [ %i.f, %.lr.ph ], [ %.4221, %.thread ] ; 9 uses
  %i.q = shl i32 %.0207305, 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0211304, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 3 uses
  %.neg = mul i32 %i.u, 65531
  %i.v = add i32 %.neg, %.0207305
  %i.w = and i32 %i.v, 65535
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14   ; 21 uses
  store ptr %.0211304, ptr %i.y, align 8, !tbaa !14
  %i.aa = ptrtoint ptr %.0211304 to i64           ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = xor i64 %i.ab, -1
  %i.ad = add i64 %i.ac, %i.aa                    ; 4 uses
  %i.ae = icmp ult i64 %i.ad, 8192
  %i.af = icmp ugt ptr %i.z, %0
  %or.cond266 = and i1 %i.af, %i.ae
  br i1 %or.cond266, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = load i8, ptr %i.r, align 1, !tbaa !13
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.ak = load i16, ptr %i.z, align 2, !tbaa !17
  %i.al = load i16, ptr %.0211304, align 2, !tbaa !17
  %i.am = icmp eq i16 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.an = sub i64 %i.p, %i.aa
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 264)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0217303, i64 4
  %.not239 = icmp ult ptr %i.aq, %i.c
  br i1 %.not239, label %._crit_edge320, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %.not240 = icmp eq i32 %.0202306, 0
  %.neg241 = sext i1 %.not240 to i64
  %i.ar = getelementptr inbounds i8, ptr %.0217303, i64 %.neg241
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.not242 = icmp ult ptr %i.as, %i.c
  br i1 %.not242, label %._crit_edge320, label %.thread286

._crit_edge320:                                   ; preds = %bb.f, %bb.g
  %i.at = trunc i32 %.0202306 to i8
  %i.au = add i8 %i.at, -1
  %i.av = xor i32 %.0202306, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.0217303, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !13
  %.not243 = icmp eq i32 %.0202306, 0
  %.neg244 = sext i1 %.not243 to i64
  %i.ay = getelementptr inbounds i8, ptr %.0217303, i64 %.neg244 ; 5 uses
  %i.az = icmp ugt i64 %i.ao, 16
  br i1 %i.az, label %bb.h, label %bb.x, !prof !19

bb.h:                                             ; preds = %._crit_edge320
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.0211304, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %.not245 = icmp eq i8 %i.bb, %i.bd
  br i1 %.not245, label %bb.i, label %.critedge.thread273

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.0211304, i64 4
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !13
  %.not246 = icmp eq i8 %i.bf, %i.bh
  br i1 %.not246, label %bb.j, label %.critedge.thread273

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.0211304, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %.not247 = icmp eq i8 %i.bj, %i.bl
  br i1 %.not247, label %bb.k, label %.critedge.thread273

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.0211304, i64 6
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !13
  %.not248 = icmp eq i8 %i.bn, %i.bp
  br i1 %.not248, label %bb.l, label %.critedge.thread273

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.0211304, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %.not249 = icmp eq i8 %i.br, %i.bt
  br i1 %.not249, label %bb.m, label %.critedge.thread273

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.0211304, i64 8
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !13
  %.not250 = icmp eq i8 %i.bv, %i.bx
  br i1 %.not250, label %bb.n, label %.critedge.thread273

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.0211304, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %.not251 = icmp eq i8 %i.bz, %i.cb
  br i1 %.not251, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.0211304, i64 10
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !13
  %.not252 = icmp eq i8 %i.cd, %i.cf
  br i1 %.not252, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.0211304, i64 11
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %.not253 = icmp eq i8 %i.ch, %i.cj
  br i1 %.not253, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.0211304, i64 12
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !13
  %.not254 = icmp eq i8 %i.cl, %i.cn
  br i1 %.not254, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.0211304, i64 13
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %.not255 = icmp eq i8 %i.cp, %i.cr
  br i1 %.not255, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.0211304, i64 14
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !13
  %.not256 = icmp eq i8 %i.ct, %i.cv
  br i1 %.not256, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.0211304, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %.not257 = icmp eq i8 %i.cx, %i.cz
  br i1 %.not257, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.db = load i8, ptr %i.da, align 2, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.0211304, i64 16
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !13
  %.not258 = icmp eq i8 %i.db, %i.dd
  br i1 %.not258, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.0211304, i64 17
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %.not259 = icmp eq i8 %i.df, %i.dh
  br i1 %.not259, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.0211304, i64 18
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !13
  %.not260 = icmp eq i8 %i.dj, %i.dl
  br i1 %.not260, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w, %._crit_edge320
  %.0 = phi i32 [ 18, %bb.w ], [ 2, %._crit_edge320 ] ; 3 uses
  %i.dm = trunc nuw nsw i64 %i.ap to i32          ; 2 uses
  %i.dn = or disjoint i32 %.0, 1                  ; 3 uses
  %i.do = icmp samesign ult i32 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph334, label %.critedge

bb.y:                                             ; preds = %.lr.ph334
  %i.dp = add nuw nsw i32 %i.dr, 1                ; 3 uses
  %i.dq = icmp samesign ult i32 %i.dp, %i.dm
  br i1 %i.dq, label %.lr.ph334, label %.critedge, !llvm.loop !20

.lr.ph334:                                        ; preds = %bb.x, %bb.y
  %i.dr = phi i32 [ %i.dp, %bb.y ], [ %i.dn, %bb.x ] ; 5 uses
  %.1332 = phi i32 [ %i.dr, %bb.y ], [ %.0, %bb.x ]
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.0211304, i64 %i.ds
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %bb.y, label %..critedge_crit_edge336, !llvm.loop !20

.critedge.thread:                                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.2.ph = phi i32 [ 18, %bb.w ], [ 17, %bb.v ], [ 16, %bb.u ], [ 15, %bb.t ], [ 14, %bb.s ], [ 13, %bb.r ], [ 12, %bb.q ], [ 11, %bb.p ], [ 10, %bb.o ], [ 9, %bb.n ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0211304, i64 1
  br label %bb.aa

.critedge.thread273:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.2.ph272 = phi i32 [ 8, %bb.m ], [ 7, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 3, %bb.h ] ; 2 uses
  %i.dz = add nsw i32 %.2.ph272, -2
  %i.ea = getelementptr inbounds nuw i8, ptr %.0211304, i64 1
  br label %bb.z

..critedge_crit_edge336:                          ; preds = %.lr.ph334
  br label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.y, %..critedge_crit_edge336, %bb.x
  %.1.lcssa = phi i32 [ %.0, %bb.x ], [ %.1332, %..critedge_crit_edge336 ], [ %i.dr, %bb.y ] ; 2 uses
  %.lcssa = phi i32 [ %i.dn, %bb.x ], [ %i.dr, %..critedge_crit_edge336 ], [ %i.dp, %bb.y ] ; 2 uses
  %i.eb = add nsw i32 %.1.lcssa, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0211304, i64 1 ; 2 uses
  %i.ed = icmp samesign ult i32 %.1.lcssa, 8
  br i1 %i.ed, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.thread273, %.critedge
  %i.ee = phi ptr [ %i.ea, %.critedge.thread273 ], [ %i.ec, %.critedge ]
  %i.ef = phi i32 [ %i.dz, %.critedge.thread273 ], [ %i.eb, %.critedge ]
  %.2275 = phi i32 [ %.2.ph272, %.critedge.thread273 ], [ %.lcssa, %.critedge ]
  %i.eg = lshr i64 %i.ad, 8
  %i.eh = shl nuw nsw i32 %i.ef, 5
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = or disjoint i64 %i.eg, %i.ei
  %i.ek = trunc nuw i64 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ek, ptr %i.ay, align 1, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread, %.critedge
  %i.em = phi ptr [ %i.dy, %.critedge.thread ], [ %i.ec, %.critedge ]
  %.2269 = phi i32 [ %.2.ph, %.critedge.thread ], [ %.lcssa, %.critedge ] ; 2 uses
  %i.en = lshr i64 %i.ad, 8
  %i.eo = trunc nuw nsw i64 %i.en to i8
  %i.ep = or disjoint i8 %i.eo, -32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ep, ptr %i.ay, align 1, !tbaa !13
  %i.er = trunc i32 %.2269 to i8
  %i.es = add i8 %i.er, -9
  %i.et = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eu = phi ptr [ %i.ee, %bb.z ], [ %i.em, %bb.aa ]
  %.2270 = phi i32 [ %.2275, %bb.z ], [ %.2269, %bb.aa ]
  %.1218 = phi ptr [ %i.el, %bb.z ], [ %i.et, %bb.aa ] ; 2 uses
  %i.ev = trunc i64 %i.ad to i8
  store i8 %i.ev, ptr %.1218, align 1, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.1218, i64 2 ; 2 uses
  %i.ex = add i32 %.2270, -1
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ey ; 7 uses
  %.not261 = icmp ult ptr %i.ez, %i.g
  br i1 %.not261, label %bb.ac, label %.thread.thread297.loopexit, !prof !19

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -2 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !13
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 -1 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !13
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.fc, 16
  %i.fh = shl nuw nsw i32 %i.ff, 8
  %i.fi = or disjoint i32 %i.fh, %i.fg            ; 2 uses
  %i.fj = load i8, ptr %i.ez, align 1, !tbaa !13
  %i.fk = zext i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.fi, %i.fk            ; 3 uses
  %i.fm = lshr exact i32 %i.fi, 8
  %.neg262 = mul i32 %i.fl, 65531
  %i.fn = add i32 %.neg262, %i.fm
  %i.fo = and i32 %i.fn, 65535
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fp
  store ptr %i.fa, ptr %i.fq, align 8, !tbaa !14
  %i.fr = shl nuw i32 %i.fl, 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !13
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fr, %i.fu            ; 2 uses
  %.neg263 = mul i32 %i.fv, 65531
  %i.fw = add i32 %.neg263, %i.fl
  %i.fx = and i32 %i.fw, 65535
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fy
  store ptr %i.fd, ptr %i.fz, align 8, !tbaa !14
  br label %.thread

bb.ad:                                            ; preds = %bb.e, %bb.d, %bb.c
  %.not238 = icmp ult ptr %.0217303, %i.c
  br i1 %.not238, label %bb.ae, label %.thread286, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.ga = add nsw i32 %.0202306, 1                ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0211304, i64 1 ; 2 uses
  %i.gc = load i8, ptr %.0211304, align 1, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.0217303, i64 1
  store i8 %i.gc, ptr %.0217303, align 1, !tbaa !13
  %i.ge = icmp eq i32 %i.ga, 32
  br i1 %i.ge, label %bb.af, label %.thread, !prof !22

bb.af:                                            ; preds = %bb.ae
  %i.gf = trunc nuw nsw i32 %.0202306 to i8
  %i.gg = getelementptr inbounds i8, ptr %.0217303, i64 -32
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.0217303, i64 2
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.af, %bb.ae
  %.4221 = phi ptr [ %i.ew, %bb.ac ], [ %i.gd, %bb.ae ], [ %i.gh, %bb.af ] ; 2 uses
  %.3214 = phi ptr [ %i.ez, %bb.ac ], [ %i.gb, %bb.ae ], [ %i.gb, %bb.af ] ; 3 uses
  %.3210 = phi i32 [ %i.fv, %bb.ac ], [ %i.u, %bb.ae ], [ %i.u, %bb.af ]
  %.3205 = phi i32 [ 0, %bb.ac ], [ %i.ga, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %i.gi = icmp ult ptr %.3214, %i.g
  br i1 %i.gi, label %bb.c, label %.thread.thread297.loopexit

.thread.thread297.loopexit:                       ; preds = %bb.ab, %.thread
  %.5222.ph = phi ptr [ %.4221, %.thread ], [ %i.ew, %bb.ab ]
  %.4215.ph = phi ptr [ %.3214, %.thread ], [ %i.ez, %bb.ab ] ; 2 uses
  %.4206.ph = phi i32 [ %.3205, %.thread ], [ 0, %bb.ab ]
  %.pre = ptrtoint ptr %.4215.ph to i64
  br label %.thread.thread297

.thread.thread297:                                ; preds = %.thread.thread297.loopexit, %bb.b
  %.4215319.pre-phi = phi i64 [ %.pre, %.thread.thread297.loopexit ], [ %4, %bb.b ] ; 2 uses
  %.5222 = phi ptr [ %.5222.ph, %.thread.thread297.loopexit ], [ %i.f, %bb.b ] ; 7 uses
  %.4215 = phi ptr [ %.4215.ph, %.thread.thread297.loopexit ], [ %0, %bb.b ] ; 5 uses
  %.4206 = phi i32 [ %.4206.ph, %.thread.thread297.loopexit ], [ 0, %bb.b ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.5222, i64 3
  %i.gk = icmp ugt ptr %i.gj, %i.c
  br i1 %i.gk, label %.thread286, label %.preheader

.preheader:                                       ; preds = %.thread.thread297
  %i.gl = icmp ult ptr %.4215, %i.b
  br i1 %i.gl, label %.lr.ph316.preheader, label %._crit_edge

.lr.ph316.preheader:                              ; preds = %.preheader
  %i.gm = add i64 %1, %4                          ; 2 uses
  %i.gn = sub i64 %i.gm, %.4215319.pre-phi        ; 2 uses
  %scevgep = getelementptr i8, ptr %.4215, i64 %i.gn
  %.neg343 = add i64 %.4215319.pre-phi, 1
  %xtraiter = and i64 %i.gn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader
  %i.go = add nsw i32 %.4206, 1                   ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.4215, i64 1 ; 2 uses
  %i.gq = load i8, ptr %.4215, align 1, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.5222, i64 1 ; 2 uses
  store i8 %i.gq, ptr %.5222, align 1, !tbaa !13
  %i.gs = icmp eq i32 %i.go, 32
  br i1 %i.gs, label %bb.ag, label %.lr.ph316.prol.loopexit, !prof !22

bb.ag:                                            ; preds = %.lr.ph316.prol
  %i.gt = trunc nuw nsw i32 %.4206 to i8
  %i.gu = getelementptr inbounds i8, ptr %.5222, i64 -32
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %.5222, i64 2 ; 2 uses
  br label %.lr.ph316.prol.loopexit

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %bb.ag, %.lr.ph316.preheader
  %.7.lcssa.unr = phi ptr [ poison, %.lr.ph316.preheader ], [ %i.gv, %bb.ag ], [ %i.gr, %.lr.ph316.prol ]
  %.6.lcssa.unr = phi i32 [ poison, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.go, %.lr.ph316.prol ]
  %.5315.unr = phi i32 [ %.4206, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.go, %.lr.ph316.prol ]
  %.5216314.unr = phi ptr [ %.4215, %.lr.ph316.preheader ], [ %i.gp, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %.6223313.unr = phi ptr [ %.5222, %.lr.ph316.preheader ], [ %i.gv, %bb.ag ], [ %i.gr, %.lr.ph316.prol ]
  %i.gw = icmp eq i64 %i.gm, %.neg343
  br i1 %i.gw, label %._crit_edge, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %bb.aj
  %.5315 = phi i32 [ %.6.1, %bb.aj ], [ %.5315.unr, %.lr.ph316.prol.loopexit ] ; 2 uses
  %.5216314 = phi ptr [ %i.hg, %bb.aj ], [ %.5216314.unr, %.lr.ph316.prol.loopexit ] ; 3 uses
  %.6223313 = phi ptr [ %.7.1, %bb.aj ], [ %.6223313.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %i.gx = add nsw i32 %.5315, 1                   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.5216314, i64 1
  %i.gz = load i8, ptr %.5216314, align 1, !tbaa !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.6223313, i64 1
  store i8 %i.gz, ptr %.6223313, align 1, !tbaa !13
  %i.hb = icmp eq i32 %i.gx, 32
  br i1 %i.hb, label %bb.ah, label %.lr.ph316.1, !prof !22

bb.ah:                                            ; preds = %.lr.ph316
  %i.hc = trunc nuw nsw i32 %.5315 to i8
  %i.hd = getelementptr inbounds i8, ptr %.6223313, i64 -32
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %.6223313, i64 2
  br label %.lr.ph316.1

.lr.ph316.1:                                      ; preds = %bb.ah, %.lr.ph316
  %.7 = phi ptr [ %i.he, %bb.ah ], [ %i.ha, %.lr.ph316 ] ; 4 uses
  %.6 = phi i32 [ 0, %bb.ah ], [ %i.gx, %.lr.ph316 ] ; 2 uses
  %i.hf = add nsw i32 %.6, 1                      ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.5216314, i64 2 ; 2 uses
  %i.hh = load i8, ptr %i.gy, align 1, !tbaa !13
  %i.hi = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.hh, ptr %.7, align 1, !tbaa !13
  %i.hj = icmp eq i32 %i.hf, 32
  br i1 %i.hj, label %bb.ai, label %bb.aj, !prof !22

bb.ai:                                            ; preds = %.lr.ph316.1
  %i.hk = trunc nuw nsw i32 %.6 to i8
  %i.hl = getelementptr inbounds i8, ptr %.7, i64 -32
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph316.1
  %.7.1 = phi ptr [ %i.hm, %bb.ai ], [ %i.hi, %.lr.ph316.1 ] ; 2 uses
  %.6.1 = phi i32 [ 0, %bb.ai ], [ %i.hf, %.lr.ph316.1 ] ; 2 uses
  %exitcond.not.1 = icmp eq ptr %i.hg, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph316, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph316.prol.loopexit, %bb.aj, %.preheader
  %.6223.lcssa = phi ptr [ %.5222, %.preheader ], [ %.7.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.7.1, %bb.aj ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4206, %.preheader ], [ %.6.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.6.1, %bb.aj ] ; 3 uses
  %i.hn = trunc i32 %.5.lcssa to i8
  %i.ho = add i8 %i.hn, -1
  %i.hp = xor i32 %.5.lcssa, -1
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %.6223.lcssa, i64 %i.hq
  store i8 %i.ho, ptr %i.hr, align 1, !tbaa !13
  %.not264 = icmp eq i32 %.5.lcssa, 0
  %.neg265 = sext i1 %.not264 to i64
  %i.hs = getelementptr inbounds i8, ptr %.6223.lcssa, i64 %.neg265
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %2 to i64
  %i.hv = sub i64 %i.ht, %i.hu
  br label %.thread286

.thread286:                                       ; preds = %bb.g, %bb.ad, %.thread.thread297, %bb.a, %._crit_edge
  %.4 = phi i64 [ 0, %.thread.thread297 ], [ 0, %bb.a ], [ %i.hv, %._crit_edge ], [ 0, %bb.ad ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !11, i64 0}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = distinct !{!23, !21}
end_hunk_0
