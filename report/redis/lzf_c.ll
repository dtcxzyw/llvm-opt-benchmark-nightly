Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lzf_c?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lzf_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
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
  %4 = load i16, ptr %0, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.j = zext i16 %5 to i32
  %i.k = ptrtoint ptr %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.0199306 = phi i32 [ 0, %.lr.ph ], [ %.3, %.thread ] ; 6 uses
  %.0202305 = phi i32 [ %i.j, %.lr.ph ], [ %.3205, %.thread ] ; 2 uses
  %.0206304 = phi ptr [ %i.g, %.lr.ph ], [ %.4210, %.thread ] ; 9 uses
  %.0213303 = phi ptr [ %0, %.lr.ph ], [ %.3216, %.thread ] ; 26 uses
  %i.l = shl i32 %.0202305, 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0213303, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o               ; 3 uses
  %.neg = mul i32 %i.p, 65531
  %i.q = add i32 %.neg, %.0202305
  %i.r = and i32 %i.q, 65535
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 21 uses
  store ptr %.0213303, ptr %i.t, align 8, !tbaa !18
  %i.v = ptrtoint ptr %.0213303 to i64            ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = xor i64 %i.w, -1
  %i.y = add i64 %i.x, %i.v                       ; 4 uses
  %i.z = icmp ult i64 %i.y, 8192
  %i.aa = icmp ugt ptr %i.u, %0
  %or.cond266 = and i1 %i.aa, %i.z
  br i1 %or.cond266, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ad = load i8, ptr %i.m, align 1, !tbaa !15
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.af = load i16, ptr %i.u, align 2, !tbaa !20
  %i.ag = load i16, ptr %.0213303, align 2, !tbaa !20
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 %i.k, %i.v
  %i.aj = add nsw i64 %i.ai, -2                   ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 264)
  %i.al = getelementptr inbounds nuw i8, ptr %.0206304, i64 4
  %.not239 = icmp ult ptr %i.al, %i.d
  br i1 %.not239, label %._crit_edge320, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %.not240 = icmp eq i32 %.0199306, 0
  %.neg241 = sext i1 %.not240 to i64
  %i.am = getelementptr inbounds i8, ptr %.0206304, i64 %.neg241
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.not242 = icmp ult ptr %i.an, %i.d
  br i1 %.not242, label %._crit_edge320, label %.thread286

._crit_edge320:                                   ; preds = %bb.f, %bb.g
  %i.ao = trunc i32 %.0199306 to i8
  %i.ap = add i8 %i.ao, -1
  %i.aq = xor i32 %.0199306, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.0206304, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !15
  %.not243 = icmp eq i32 %.0199306, 0
  %.neg244 = sext i1 %.not243 to i64
  %i.at = getelementptr inbounds i8, ptr %.0206304, i64 %.neg244 ; 5 uses
  %i.au = icmp ugt i64 %i.aj, 16
  br i1 %i.au, label %bb.h, label %bb.x, !prof !21

bb.h:                                             ; preds = %._crit_edge320
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.0213303, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %.not245 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not245, label %bb.i, label %.critedge.thread273

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %.0213303, i64 4
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !15
  %.not246 = icmp eq i8 %i.ba, %i.bc
  br i1 %.not246, label %bb.j, label %.critedge.thread273

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.0213303, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15
  %.not247 = icmp eq i8 %i.be, %i.bg
  br i1 %.not247, label %bb.k, label %.critedge.thread273

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %.0213303, i64 6
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !15
  %.not248 = icmp eq i8 %i.bi, %i.bk
  br i1 %.not248, label %bb.l, label %.critedge.thread273

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %.0213303, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15
  %.not249 = icmp eq i8 %i.bm, %i.bo
  br i1 %.not249, label %bb.m, label %.critedge.thread273

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %.0213303, i64 8
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !15
  %.not250 = icmp eq i8 %i.bq, %i.bs
  br i1 %.not250, label %bb.n, label %.critedge.thread273

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.0213303, i64 9
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15
  %.not251 = icmp eq i8 %i.bu, %i.bw
  br i1 %.not251, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %.0213303, i64 10
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !15
  %.not252 = icmp eq i8 %i.by, %i.ca
  br i1 %.not252, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %.0213303, i64 11
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %.not253 = icmp eq i8 %i.cc, %i.ce
  br i1 %.not253, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %.0213303, i64 12
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !15
  %.not254 = icmp eq i8 %i.cg, %i.ci
  br i1 %.not254, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %.0213303, i64 13
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %.not255 = icmp eq i8 %i.ck, %i.cm
  br i1 %.not255, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.0213303, i64 14
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !15
  %.not256 = icmp eq i8 %i.co, %i.cq
  br i1 %.not256, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %.0213303, i64 15
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
  %.not257 = icmp eq i8 %i.cs, %i.cu
  br i1 %.not257, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %.0213303, i64 16
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !15
  %.not258 = icmp eq i8 %i.cw, %i.cy
  br i1 %.not258, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %.0213303, i64 17
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !15
  %.not259 = icmp eq i8 %i.da, %i.dc
  br i1 %.not259, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %.0213303, i64 18
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !15
  %.not260 = icmp eq i8 %i.de, %i.dg
  br i1 %.not260, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w, %._crit_edge320
  %.0 = phi i32 [ 18, %bb.w ], [ 2, %._crit_edge320 ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %i.di = or disjoint i32 %.0, 1                  ; 3 uses
  %i.dj = icmp samesign ult i32 %i.di, %i.dh
  br i1 %i.dj, label %.lr.ph334, label %.critedge

bb.y:                                             ; preds = %.lr.ph334
  %i.dk = add nuw nsw i32 %i.dm, 1                ; 3 uses
  %i.dl = icmp samesign ult i32 %i.dk, %i.dh
  br i1 %i.dl, label %.lr.ph334, label %.critedge, !llvm.loop !13

.lr.ph334:                                        ; preds = %bb.x, %bb.y
  %i.dm = phi i32 [ %i.dk, %bb.y ], [ %i.di, %bb.x ] ; 5 uses
  %.1332 = phi i32 [ %i.dm, %bb.y ], [ %.0, %bb.x ]
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %.0213303, i64 %i.dn
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.y, label %..critedge_crit_edge336, !llvm.loop !13

.critedge.thread:                                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.2.ph = phi i32 [ 18, %bb.w ], [ 17, %bb.v ], [ 16, %bb.u ], [ 15, %bb.t ], [ 14, %bb.s ], [ 13, %bb.r ], [ 12, %bb.q ], [ 11, %bb.p ], [ 10, %bb.o ], [ 9, %bb.n ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0213303, i64 1
  br label %bb.aa

.critedge.thread273:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.2.ph272 = phi i32 [ 8, %bb.m ], [ 7, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 3, %bb.h ] ; 2 uses
  %i.du = add nsw i32 %.2.ph272, -2
  %i.dv = getelementptr inbounds nuw i8, ptr %.0213303, i64 1
  br label %bb.z

..critedge_crit_edge336:                          ; preds = %.lr.ph334
  br label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %bb.y, %..critedge_crit_edge336, %bb.x
  %.1.lcssa = phi i32 [ %.0, %bb.x ], [ %.1332, %..critedge_crit_edge336 ], [ %i.dm, %bb.y ] ; 2 uses
  %.lcssa = phi i32 [ %i.di, %bb.x ], [ %i.dm, %..critedge_crit_edge336 ], [ %i.dk, %bb.y ] ; 2 uses
  %i.dw = add nsw i32 %.1.lcssa, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %.0213303, i64 1 ; 2 uses
  %i.dy = icmp samesign ult i32 %.1.lcssa, 8
  br i1 %i.dy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.thread273, %.critedge
  %i.dz = phi ptr [ %i.dv, %.critedge.thread273 ], [ %i.dx, %.critedge ]
  %i.ea = phi i32 [ %i.du, %.critedge.thread273 ], [ %i.dw, %.critedge ]
  %.2275 = phi i32 [ %.2.ph272, %.critedge.thread273 ], [ %.lcssa, %.critedge ]
  %i.eb = lshr i64 %i.y, 8
  %i.ec = shl nuw nsw i32 %i.ea, 5
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = or disjoint i64 %i.eb, %i.ed
  %i.ef = trunc nuw i64 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.ef, ptr %i.at, align 1, !tbaa !15
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread, %.critedge
  %i.eh = phi ptr [ %i.dt, %.critedge.thread ], [ %i.dx, %.critedge ]
  %.2269 = phi i32 [ %.2.ph, %.critedge.thread ], [ %.lcssa, %.critedge ] ; 2 uses
  %i.ei = lshr i64 %i.y, 8
  %i.ej = trunc nuw nsw i64 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, -32
  %i.el = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.ek, ptr %i.at, align 1, !tbaa !15
  %i.em = trunc i32 %.2269 to i8
  %i.en = add i8 %i.em, -9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %i.en, ptr %i.el, align 1, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ep = phi ptr [ %i.dz, %bb.z ], [ %i.eh, %bb.aa ]
  %.2270 = phi i32 [ %.2275, %bb.z ], [ %.2269, %bb.aa ]
  %.1207 = phi ptr [ %i.eg, %bb.z ], [ %i.eo, %bb.aa ] ; 2 uses
  %i.eq = trunc i64 %i.y to i8
  store i8 %i.eq, ptr %.1207, align 1, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %.1207, i64 2 ; 2 uses
  %i.es = add i32 %.2270, -1
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.et ; 7 uses
  %.not261 = icmp ult ptr %i.eu, %i.h
  br i1 %.not261, label %bb.ac, label %.thread.thread297.loopexit, !prof !21

bb.ac:                                            ; preds = %bb.ab
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -2 ; 2 uses
  %6 = load i16, ptr %i.ev, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.ew = zext i16 %7 to i32                      ; 2 uses
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %8 = getelementptr inbounds i8, ptr %i.eu, i64 -1
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ez = zext i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ex, %i.ez            ; 3 uses
  %.neg262 = mul i32 %i.fa, 65531
  %i.fb = add i32 %.neg262, %i.ew
  %i.fc = and i32 %i.fb, 65535
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fd
  store ptr %i.ev, ptr %i.fe, align 8, !tbaa !18
  %i.ff = shl nuw i32 %i.fa, 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = zext i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.ff, %i.fi            ; 2 uses
  %.neg263 = mul i32 %i.fj, 65531
  %i.fk = add i32 %.neg263, %i.fa
  %i.fl = and i32 %i.fk, 65535
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fm
  store ptr %8, ptr %i.fn, align 8, !tbaa !18
  br label %.thread

bb.ad:                                            ; preds = %bb.e, %bb.d, %bb.c
  %.not238 = icmp ult ptr %.0206304, %i.d
  br i1 %.not238, label %bb.ae, label %.thread286, !prof !21

bb.ae:                                            ; preds = %bb.ad
  %i.fo = add nsw i32 %.0199306, 1                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0213303, i64 1 ; 2 uses
  %i.fq = load i8, ptr %.0213303, align 1, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %.0206304, i64 1
  store i8 %i.fq, ptr %.0206304, align 1, !tbaa !15
  %i.fs = icmp eq i32 %i.fo, 32
  br i1 %i.fs, label %bb.af, label %.thread, !prof !23

bb.af:                                            ; preds = %bb.ae
  %i.ft = trunc nuw nsw i32 %.0199306 to i8
  %i.fu = getelementptr inbounds i8, ptr %.0206304, i64 -32
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %.0206304, i64 2
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.af, %bb.ae
  %.3216 = phi ptr [ %i.eu, %bb.ac ], [ %i.fp, %bb.ae ], [ %i.fp, %bb.af ] ; 3 uses
  %.4210 = phi ptr [ %i.er, %bb.ac ], [ %i.fr, %bb.ae ], [ %i.fv, %bb.af ] ; 2 uses
  %.3205 = phi i32 [ %i.fj, %bb.ac ], [ %i.p, %bb.ae ], [ %i.p, %bb.af ]
  %.3 = phi i32 [ 0, %bb.ac ], [ %i.fo, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %i.fw = icmp ult ptr %.3216, %i.h
  br i1 %i.fw, label %bb.c, label %.thread.thread297.loopexit

.thread.thread297.loopexit:                       ; preds = %bb.ab, %.thread
  %.4217.ph = phi ptr [ %.3216, %.thread ], [ %i.eu, %bb.ab ] ; 2 uses
  %.5211.ph = phi ptr [ %.4210, %.thread ], [ %i.er, %bb.ab ]
  %.4.ph = phi i32 [ %.3, %.thread ], [ 0, %bb.ab ]
  %.pre = ptrtoaddr ptr %.4217.ph to i64
  br label %.thread.thread297

.thread.thread297:                                ; preds = %.thread.thread297.loopexit, %bb.b
  %.4217319.pre-phi = phi i64 [ %.pre, %.thread.thread297.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %.4217 = phi ptr [ %.4217.ph, %.thread.thread297.loopexit ], [ %0, %bb.b ] ; 5 uses
  %.5211 = phi ptr [ %.5211.ph, %.thread.thread297.loopexit ], [ %i.g, %bb.b ] ; 7 uses
  %.4 = phi i32 [ %.4.ph, %.thread.thread297.loopexit ], [ 0, %bb.b ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.5211, i64 3
  %i.fy = icmp ugt ptr %i.fx, %i.d
  br i1 %i.fy, label %.thread286, label %.preheader

.preheader:                                       ; preds = %.thread.thread297
  %i.fz = icmp ult ptr %.4217, %i.c
  br i1 %i.fz, label %.lr.ph316.preheader, label %._crit_edge

.lr.ph316.preheader:                              ; preds = %.preheader
  %i.ga = add i64 %1, %i.a                        ; 2 uses
  %i.gb = sub i64 %i.ga, %.4217319.pre-phi        ; 2 uses
  %scevgep = getelementptr i8, ptr %.4217, i64 %i.gb
  %.neg343 = add i64 %.4217319.pre-phi, 1
  %xtraiter = and i64 %i.gb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader
  %i.gc = add nsw i32 %.4, 1                      ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.4217, i64 1 ; 2 uses
  %i.ge = load i8, ptr %.4217, align 1, !tbaa !15
  %i.gf = getelementptr inbounds nuw i8, ptr %.5211, i64 1 ; 2 uses
  store i8 %i.ge, ptr %.5211, align 1, !tbaa !15
  %i.gg = icmp eq i32 %i.gc, 32
  br i1 %i.gg, label %bb.ag, label %.lr.ph316.prol.loopexit, !prof !23

bb.ag:                                            ; preds = %.lr.ph316.prol
  %i.gh = trunc nuw nsw i32 %.4 to i8
  %i.gi = getelementptr inbounds i8, ptr %.5211, i64 -32
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %.5211, i64 2 ; 2 uses
  br label %.lr.ph316.prol.loopexit

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %bb.ag, %.lr.ph316.preheader
  %.7.lcssa.unr = phi ptr [ poison, %.lr.ph316.preheader ], [ %i.gj, %bb.ag ], [ %i.gf, %.lr.ph316.prol ]
  %.6.lcssa.unr = phi i32 [ poison, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gc, %.lr.ph316.prol ]
  %.5315.unr = phi i32 [ %.4, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gc, %.lr.ph316.prol ]
  %.6212314.unr = phi ptr [ %.5211, %.lr.ph316.preheader ], [ %i.gj, %bb.ag ], [ %i.gf, %.lr.ph316.prol ]
  %.5218313.unr = phi ptr [ %.4217, %.lr.ph316.preheader ], [ %i.gd, %bb.ag ], [ %i.gd, %.lr.ph316.prol ]
  %i.gk = icmp eq i64 %i.ga, %.neg343
  br i1 %i.gk, label %._crit_edge, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %bb.aj
  %.5315 = phi i32 [ %.6.1, %bb.aj ], [ %.5315.unr, %.lr.ph316.prol.loopexit ] ; 2 uses
  %.6212314 = phi ptr [ %.7.1, %bb.aj ], [ %.6212314.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %.5218313 = phi ptr [ %i.gu, %bb.aj ], [ %.5218313.unr, %.lr.ph316.prol.loopexit ] ; 3 uses
  %i.gl = add nsw i32 %.5315, 1                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.5218313, i64 1
  %i.gn = load i8, ptr %.5218313, align 1, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %.6212314, i64 1
  store i8 %i.gn, ptr %.6212314, align 1, !tbaa !15
  %i.gp = icmp eq i32 %i.gl, 32
  br i1 %i.gp, label %bb.ah, label %.lr.ph316.1, !prof !23

bb.ah:                                            ; preds = %.lr.ph316
  %i.gq = trunc nuw nsw i32 %.5315 to i8
  %i.gr = getelementptr inbounds i8, ptr %.6212314, i64 -32
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %.6212314, i64 2
  br label %.lr.ph316.1

.lr.ph316.1:                                      ; preds = %bb.ah, %.lr.ph316
  %.7 = phi ptr [ %i.gs, %bb.ah ], [ %i.go, %.lr.ph316 ] ; 4 uses
  %.6 = phi i32 [ 0, %bb.ah ], [ %i.gl, %.lr.ph316 ] ; 2 uses
  %i.gt = add nsw i32 %.6, 1                      ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.5218313, i64 2 ; 2 uses
  %i.gv = load i8, ptr %i.gm, align 1, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.gv, ptr %.7, align 1, !tbaa !15
  %i.gx = icmp eq i32 %i.gt, 32
  br i1 %i.gx, label %bb.ai, label %bb.aj, !prof !23

bb.ai:                                            ; preds = %.lr.ph316.1
  %i.gy = trunc nuw nsw i32 %.6 to i8
  %i.gz = getelementptr inbounds i8, ptr %.7, i64 -32
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph316.1
  %.7.1 = phi ptr [ %i.ha, %bb.ai ], [ %i.gw, %.lr.ph316.1 ] ; 2 uses
  %.6.1 = phi i32 [ 0, %bb.ai ], [ %i.gt, %.lr.ph316.1 ] ; 2 uses
  %exitcond.not.1 = icmp eq ptr %i.gu, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph316, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph316.prol.loopexit, %bb.aj, %.preheader
  %.6212.lcssa = phi ptr [ %.5211, %.preheader ], [ %.7.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.7.1, %bb.aj ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4, %.preheader ], [ %.6.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.6.1, %bb.aj ] ; 3 uses
  %i.hb = trunc i32 %.5.lcssa to i8
  %i.hc = add i8 %i.hb, -1
  %i.hd = xor i32 %.5.lcssa, -1
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %.6212.lcssa, i64 %i.he
  store i8 %i.hc, ptr %i.hf, align 1, !tbaa !15
  %.not264 = icmp eq i32 %.5.lcssa, 0
  %.neg265 = sext i1 %.not264 to i64
  %i.hg = getelementptr inbounds i8, ptr %.6212.lcssa, i64 %.neg265
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %2 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  br label %.thread286

.thread286:                                       ; preds = %bb.g, %bb.ad, %.thread.thread297, %bb.a, %._crit_edge
  %.4223 = phi i64 [ 0, %.thread.thread297 ], [ 0, %bb.a ], [ %i.hj, %._crit_edge ], [ 0, %bb.ad ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret i64 %.4223
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !22}
!14 = distinct !{!14, !22}
!15 = !{!10, !10, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"short", !10, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
