Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwtran?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @png_do_write_transformations(ptr noalias noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 10 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8    ; 3 uses
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not38 = icmp eq ptr %i.h, null
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  tail call void %i.h(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.k) #5
  %.pre = load i32, ptr %i.d, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.l = phi i32 [ %i.e, %bb.c ], [ %.pre, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  %i.m = and i32 %i.l, 32768
  %.not39 = icmp eq i32 %i.m, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27
  %i.s = lshr i32 %i.r, 7
  %.lobit = and i32 %i.s, 1
  %i.t = xor i32 %.lobit, 1
  tail call void @png_do_strip_channel(ptr noundef %1, ptr noundef nonnull %i.p, i32 noundef %i.t) #5
  %.pre128.a = load i32, ptr %i.d, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi i32 [ %.pre128.a, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.v = and i32 %i.u, 65536
  %.not41 = icmp eq i32 %i.v, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @png_do_packswap(ptr noundef %1, ptr noundef nonnull %i.y) #5
  %.pre129.a = load i32, ptr %i.d, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi i32 [ %.pre129.a, %bb.h ], [ %i.u, %bb.g ] ; 4 uses
  %i.aa = and i32 %i.z, 4
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %png_do_pack.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !28  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = icmp eq i8 %i.ah, 8
  br i1 %i.ai, label %bb.k, label %png_do_pack.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !31
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.l, label %png_do_pack.exit

bb.l:                                             ; preds = %bb.k
  switch i8 %i.af, label %._crit_edge119.thread.i [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 4, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %1, align 8, !tbaa !32    ; 9 uses
  %.not125.i = icmp eq i32 %i.am, 0
  br i1 %.not125.i, label %._crit_edge119.thread.i, label %.lr.ph118.outer.i

.lr.ph118.outer.i:                                ; preds = %bb.m, %.thread.i
  %.0116.ph.i = phi ptr [ %i.bp, %.thread.i ], [ %i.ad, %bb.m ] ; 9 uses
  %.069115.ph.i = phi ptr [ %i.bt, %.thread.i ], [ %i.ad, %bb.m ] ; 9 uses
  %.090112.ph.i = phi i32 [ %i.bu, %.thread.i ], [ 0, %bb.m ] ; 8 uses
  %i.an = load i8, ptr %.0116.ph.i, align 1, !tbaa !33
  %.not93.i = icmp eq i8 %i.an, 0
  %i.ao = select i1 %.not93.i, i32 0, i32 128     ; 2 uses
  %i.ap = or disjoint i32 %.090112.ph.i, 1
  %exitcond127.not.i = icmp eq i32 %i.ap, %i.am
  br i1 %exitcond127.not.i, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.1

.lr.ph118.i.1:                                    ; preds = %.lr.ph118.outer.i
  %i.aq = getelementptr i8, ptr %.0116.ph.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !33
  %.not93.i.1 = icmp eq i8 %i.ar, 0
  %i.as = select i1 %.not93.i.1, i32 0, i32 64
  %spec.select.i.1 = or disjoint i32 %i.as, %i.ao ; 2 uses
  %i.at = or disjoint i32 %.090112.ph.i, 2
  %exitcond127.not.i.1 = icmp eq i32 %i.at, %i.am
  br i1 %exitcond127.not.i.1, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.2

.lr.ph118.i.2:                                    ; preds = %.lr.ph118.i.1
  %i.au = getelementptr i8, ptr %.0116.ph.i, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !33
  %.not93.i.2 = icmp eq i8 %i.av, 0
  %i.aw = select i1 %.not93.i.2, i32 0, i32 32
  %spec.select.i.2 = or disjoint i32 %i.aw, %spec.select.i.1 ; 2 uses
  %i.ax = or disjoint i32 %.090112.ph.i, 3
  %exitcond127.not.i.2 = icmp eq i32 %i.ax, %i.am
  br i1 %exitcond127.not.i.2, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.3

.lr.ph118.i.3:                                    ; preds = %.lr.ph118.i.2
  %i.ay = getelementptr i8, ptr %.0116.ph.i, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !33
  %.not93.i.3 = icmp eq i8 %i.az, 0
  %i.ba = select i1 %.not93.i.3, i32 0, i32 16
  %spec.select.i.3 = or disjoint i32 %i.ba, %spec.select.i.2 ; 2 uses
  %i.bb = or disjoint i32 %.090112.ph.i, 4
  %exitcond127.not.i.3 = icmp eq i32 %i.bb, %i.am
  br i1 %exitcond127.not.i.3, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.4

.lr.ph118.i.4:                                    ; preds = %.lr.ph118.i.3
  %i.bc = getelementptr i8, ptr %.0116.ph.i, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !33
  %.not93.i.4 = icmp eq i8 %i.bd, 0
  %i.be = select i1 %.not93.i.4, i32 0, i32 8
  %spec.select.i.4 = or disjoint i32 %i.be, %spec.select.i.3 ; 2 uses
  %i.bf = or disjoint i32 %.090112.ph.i, 5
  %exitcond127.not.i.4 = icmp eq i32 %i.bf, %i.am
  br i1 %exitcond127.not.i.4, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.5

.lr.ph118.i.5:                                    ; preds = %.lr.ph118.i.4
  %i.bg = getelementptr i8, ptr %.0116.ph.i, i64 5
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !33
  %.not93.i.5 = icmp eq i8 %i.bh, 0
  %i.bi = select i1 %.not93.i.5, i32 0, i32 4
  %spec.select.i.5 = or disjoint i32 %i.bi, %spec.select.i.4 ; 2 uses
  %i.bj = or disjoint i32 %.090112.ph.i, 6
  %exitcond127.not.i.5 = icmp eq i32 %i.bj, %i.am
  br i1 %exitcond127.not.i.5, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.6

.lr.ph118.i.6:                                    ; preds = %.lr.ph118.i.5
  %i.bk = getelementptr i8, ptr %.0116.ph.i, i64 6
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !33
  %.not93.i.6 = icmp eq i8 %i.bl, 0
  %i.bm = select i1 %.not93.i.6, i32 0, i32 2
  %spec.select.i.6 = or i32 %i.bm, %spec.select.i.5 ; 2 uses
  %i.bn = or disjoint i32 %.090112.ph.i, 7
  %exitcond127.not.i.6 = icmp eq i32 %i.bn, %i.am
  br i1 %exitcond127.not.i.6, label %._crit_edge119.thread.i.sink.split, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph118.i.6
  %i.bo = getelementptr i8, ptr %.0116.ph.i, i64 7
  %i.bp = getelementptr i8, ptr %.0116.ph.i, i64 8
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !33
  %.not93.i.7 = icmp ne i8 %i.bq, 0
  %i.br = zext i1 %.not93.i.7 to i32
  %spec.select.i.7 = or i32 %spec.select.i.6, %i.br
  %i.bs = trunc nuw i32 %spec.select.i.7 to i8
  store i8 %i.bs, ptr %.069115.ph.i, align 1, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %.069115.ph.i, i64 1
  %i.bu = add nuw i32 %.090112.ph.i, 8            ; 2 uses
  %exitcond127.not141.i = icmp eq i32 %i.bu, %i.am
  br i1 %exitcond127.not141.i, label %._crit_edge119.thread.i, label %.lr.ph118.outer.i, !llvm.loop !34

bb.n:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %1, align 8, !tbaa !32    ; 5 uses
  %.not124.i = icmp eq i32 %i.bv, 0
  br i1 %.not124.i, label %._crit_edge119.thread.i, label %.lr.ph107.outer.i

.lr.ph107.outer.i:                                ; preds = %bb.n, %.thread152.i
  %.082105.ph.i = phi i32 [ %i.cv, %.thread152.i ], [ 0, %bb.n ] ; 4 uses
  %.087102.ph.i = phi ptr [ %i.ct, %.thread152.i ], [ %i.ad, %bb.n ] ; 5 uses
  %.089101.ph.i = phi ptr [ %i.cu, %.thread152.i ], [ %i.ad, %bb.n ] ; 5 uses
  %i.bw = load i8, ptr %.089101.ph.i, align 1, !tbaa !33
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 6                ; 2 uses
  %i.bz = or disjoint i32 %.082105.ph.i, 1
  %exitcond126.not.i = icmp eq i32 %i.bz, %i.bv
  br i1 %exitcond126.not.i, label %._crit_edge119.thread.i.sink.split, label %.lr.ph107.i.1

.lr.ph107.i.1:                                    ; preds = %.lr.ph107.outer.i
  %i.ca = getelementptr i8, ptr %.089101.ph.i, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !33
  %i.cc = shl i8 %i.cb, 4
  %i.cd = and i8 %i.cc, 48
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.by, %i.ce            ; 2 uses
  %i.cg = or disjoint i32 %.082105.ph.i, 2
  %exitcond126.not.i.1 = icmp eq i32 %i.cg, %i.bv
  br i1 %exitcond126.not.i.1, label %._crit_edge119.thread.i.sink.split, label %.lr.ph107.i.2

.lr.ph107.i.2:                                    ; preds = %.lr.ph107.i.1
  %i.ch = getelementptr i8, ptr %.089101.ph.i, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !33
  %i.cj = shl i8 %i.ci, 2
  %i.ck = and i8 %i.cj, 12
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cf, %i.cl            ; 2 uses
  %i.cn = or disjoint i32 %.082105.ph.i, 3
  %exitcond126.not.i.2 = icmp eq i32 %i.cn, %i.bv
  br i1 %exitcond126.not.i.2, label %._crit_edge119.thread.i.sink.split, label %.thread152.i

.thread152.i:                                     ; preds = %.lr.ph107.i.2
  %i.co = getelementptr i8, ptr %.089101.ph.i, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !33
  %i.cq = and i8 %i.cp, 3
  %i.cr = trunc i32 %i.cm to i8
  %i.cs = or disjoint i8 %i.cq, %i.cr
  store i8 %i.cs, ptr %.087102.ph.i, align 1, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %.087102.ph.i, i64 1
  %i.cu = getelementptr i8, ptr %.089101.ph.i, i64 4
  %i.cv = add nuw i32 %.082105.ph.i, 4            ; 2 uses
  %exitcond126.not156.i = icmp eq i32 %i.cv, %i.bv
  br i1 %exitcond126.not156.i, label %._crit_edge119.thread.i, label %.lr.ph107.outer.i, !llvm.loop !36

bb.o:                                             ; preds = %bb.l
  %i.cw = load i32, ptr %1, align 8, !tbaa !32    ; 3 uses
  %.not123.i = icmp eq i32 %i.cw, 0
  br i1 %.not123.i, label %._crit_edge119.thread.i, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.o, %.thread167.i
  %.07098.ph.i = phi i32 [ %i.di, %.thread167.i ], [ 0, %bb.o ] ; 2 uses
  %.07595.ph.i = phi ptr [ %i.dg, %.thread167.i ], [ %i.ad, %bb.o ] ; 3 uses
  %.07794.ph.i = phi ptr [ %i.dh, %.thread167.i ], [ %i.ad, %bb.o ] ; 3 uses
  %i.cx = load i8, ptr %.07794.ph.i, align 1, !tbaa !33
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 4                ; 2 uses
  %i.da = or disjoint i32 %.07098.ph.i, 1
  %exitcond.not.i = icmp eq i32 %i.da, %i.cw
  br i1 %exitcond.not.i, label %._crit_edge119.thread.i.sink.split, label %.thread167.i

.thread167.i:                                     ; preds = %.lr.ph.outer.i
  %i.db = getelementptr i8, ptr %.07794.ph.i, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !33
  %i.dd = and i8 %i.dc, 15
  %i.de = trunc i32 %i.cz to i8
  %i.df = or disjoint i8 %i.dd, %i.de
  store i8 %i.df, ptr %.07595.ph.i, align 1, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %.07595.ph.i, i64 1
  %i.dh = getelementptr i8, ptr %.07794.ph.i, i64 2
  %i.di = add nuw i32 %.07098.ph.i, 2             ; 2 uses
  %exitcond.not171.i = icmp eq i32 %i.di, %i.cw
  br i1 %exitcond.not171.i, label %._crit_edge119.thread.i, label %.lr.ph.outer.i, !llvm.loop !37

._crit_edge119.thread.i.sink.split:               ; preds = %.lr.ph.outer.i, %.lr.ph107.i.2, %.lr.ph107.i.1, %.lr.ph107.outer.i, %.lr.ph118.outer.i, %.lr.ph118.i.1, %.lr.ph118.i.2, %.lr.ph118.i.3, %.lr.ph118.i.4, %.lr.ph118.i.5, %.lr.ph118.i.6
  %.lcssa.sink = phi i32 [ %i.by, %.lr.ph107.outer.i ], [ %i.ao, %.lr.ph118.outer.i ], [ %spec.select.i.6, %.lr.ph118.i.6 ], [ %spec.select.i.5, %.lr.ph118.i.5 ], [ %spec.select.i.4, %.lr.ph118.i.4 ], [ %spec.select.i.3, %.lr.ph118.i.3 ], [ %spec.select.i.2, %.lr.ph118.i.2 ], [ %spec.select.i.1, %.lr.ph118.i.1 ], [ %i.cm, %.lr.ph107.i.2 ], [ %i.cf, %.lr.ph107.i.1 ], [ %i.cz, %.lr.ph.outer.i ]
  %.07595.ph.i.lcssa.sink = phi ptr [ %.087102.ph.i, %.lr.ph107.i.2 ], [ %.069115.ph.i, %.lr.ph118.outer.i ], [ %.069115.ph.i, %.lr.ph118.i.6 ], [ %.069115.ph.i, %.lr.ph118.i.5 ], [ %.069115.ph.i, %.lr.ph118.i.4 ], [ %.069115.ph.i, %.lr.ph118.i.3 ], [ %.069115.ph.i, %.lr.ph118.i.2 ], [ %.069115.ph.i, %.lr.ph118.i.1 ], [ %.087102.ph.i, %.lr.ph107.outer.i ], [ %.087102.ph.i, %.lr.ph107.i.1 ], [ %.07595.ph.i, %.lr.ph.outer.i ]
  %i.dj = trunc i32 %.lcssa.sink to i8
  store i8 %i.dj, ptr %.07595.ph.i.lcssa.sink, align 1, !tbaa !33
  br label %._crit_edge119.thread.i

._crit_edge119.thread.i:                          ; preds = %.thread167.i, %.thread152.i, %.thread.i, %._crit_edge119.thread.i.sink.split, %bb.o, %bb.n, %bb.m, %bb.l
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !29
  %i.dk = load i8, ptr %i.aj, align 2, !tbaa !31
  %i.dl = mul i8 %i.dk, %i.af                     ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !38
  %i.dn = icmp ugt i8 %i.dl, 7
  %i.do = load i32, ptr %1, align 8, !tbaa !32
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge119.thread.i
  %i.dq = lshr i8 %i.dl, 3
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = mul nuw nsw i64 %i.dp, %i.dr
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge119.thread.i
  %i.dt = zext nneg i8 %i.dl to i64
  %i.du = mul nuw nsw i64 %i.dp, %i.dt
  %i.dv = add nuw nsw i64 %i.du, 7
  %i.dw = lshr i64 %i.dv, 3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dx = phi i64 [ %i.ds, %bb.p ], [ %i.dw, %bb.q ]
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !39
  %.pre130.a = load i32, ptr %i.d, align 4, !tbaa !8
  br label %png_do_pack.exit

png_do_pack.exit:                                 ; preds = %bb.r, %bb.k, %bb.j, %bb.i
  %i.dz = phi i32 [ %.pre130.a, %bb.r ], [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %i.ea = and i32 %i.dz, 16
  %.not43 = icmp eq i32 %i.ea, 0
  br i1 %.not43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %png_do_pack.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  tail call void @png_do_swap(ptr noundef %1, ptr noundef nonnull %i.ed) #5
  %.pre131.a = load i32, ptr %i.d, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %png_do_pack.exit
  %i.ee = phi i32 [ %.pre131.a, %bb.s ], [ %i.dz, %png_do_pack.exit ] ; 3 uses
  %i.ef = and i32 %i.ee, 8
  %.not44 = icmp eq i32 %i.ef, 0
  br i1 %.not44, label %png_do_shift.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !40  ; 3 uses
  %.not.i = icmp eq i8 %i.el, 3
  br i1 %.not.i, label %png_do_shift.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.em = and i8 %i.el, 2
  %.not125.i49 = icmp eq i8 %i.em, 0
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !29  ; 6 uses
  %i.ep = zext i8 %i.eo to i32                    ; 4 uses
  br i1 %.not125.i49, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = load i8, ptr %i.ej, align 1, !tbaa !41
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.es = load i8, ptr %i.er, align 2, !tbaa !42
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = sub nsw i32 %i.ep, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !43
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !43
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 791
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !44
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = sub nsw i32 %i.ep, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ez, ptr %i.fc, align 8, !tbaa !43
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.in.i = phi i8 [ %i.fe, %bb.x ], [ %i.eq, %bb.w ]
  %.0.i = phi i32 [ 1, %bb.x ], [ 3, %bb.w ]      ; 3 uses
  %i.ff = zext i8 %.in.i to i32                   ; 5 uses
  %i.fg = sub nsw i32 %i.ep, %i.ff                ; 4 uses
  store i32 %i.fg, ptr %i.a, align 16, !tbaa !43
  store i32 %i.ff, ptr %i.b, align 16, !tbaa !43
  %i.fh = and i8 %i.el, 4
  %.not126.i = icmp eq i8 %i.fh, 0
  br i1 %.not126.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 793
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !46
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = sub nsw i32 %i.ep, %i.fk
  %i.fm = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fm
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !43
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fm
  store i32 %i.fk, ptr %i.fo, align 4, !tbaa !43
  %i.fp = add nuw nsw i32 %.0.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.i.a = phi i32 [ %i.fp, %bb.z ], [ %.0.i, %bb.y ] ; 3 uses
  %i.fq = icmp ult i8 %i.eo, 8
  br i1 %i.fq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !39 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !45  ; 2 uses
  %i.fv = icmp eq i8 %i.fu, 1
  %i.fw = icmp eq i8 %i.eo, 2
  %or.cond.i = and i1 %i.fw, %i.fv
  %i.fx = icmp eq i8 %i.eo, 4
  %i.fy = icmp eq i8 %i.fu, 3
  %or.cond129.i = and i1 %i.fx, %i.fy
  %spec.select.i53 = select i1 %or.cond129.i, i32 17, i32 255
  %.0116.i54 = select i1 %or.cond.i, i32 85, i32 %spec.select.i53 ; 3 uses
  %.not160.i = icmp eq i64 %i.fs, 0
  br i1 %.not160.i, label %.loopexit.i, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.ab
  %.not182.i = icmp eq i8 %i.eo, 0
  br i1 %.not182.i, label %.lr.ph157.split.preheader.i, label %.lr.ph151.us.i.preheader

.lr.ph151.us.i.preheader:                         ; preds = %.lr.ph157.i
  %xtraiter = and i64 %i.fs, 1
  %i.fz = icmp eq i64 %i.fs, 1
  br i1 %i.fz, label %.lr.ph151.us.i.epil.preheader, label %.lr.ph151.us.i.preheader.new

.lr.ph151.us.i.preheader.new:                     ; preds = %.lr.ph151.us.i.preheader
  %unroll_iter = and i64 %i.fs, -2
  br label %.lr.ph151.us.i

.lr.ph157.split.preheader.i:                      ; preds = %.lr.ph157.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ei, i8 0, i64 %i.fs, i1 false), !tbaa !33
  br label %.loopexit.i

.lr.ph151.us.i:                                   ; preds = %._crit_edge152.us.i.1, %.lr.ph151.us.i.preheader.new
  %.0110155.us.i = phi ptr [ %i.ei, %.lr.ph151.us.i.preheader.new ], [ %i.gt, %._crit_edge152.us.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph151.us.i.preheader.new ], [ %niter.next.1, %._crit_edge152.us.i.1 ]
  %i.ga = load i8, ptr %.0110155.us.i, align 1, !tbaa !33
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph151.us.i
  %.0118149.us.i = phi i32 [ %i.fg, %.lr.ph151.us.i ], [ %i.gh, %bb.ac ] ; 4 uses
  %.0119148.us.i = phi i32 [ 0, %.lr.ph151.us.i ], [ %.1120.us.i, %bb.ac ]
  %i.gc = icmp sgt i32 %.0118149.us.i, 0          ; 2 uses
  %i.gd = shl i32 %i.gb, %.0118149.us.i
  %i.ge = sub nsw i32 0, %.0118149.us.i
  %i.gf = lshr i32 %i.gb, %i.ge
  %i.gg = and i32 %i.gf, %.0116.i54
  %.pn128.us.i = select i1 %i.gc, i32 %i.gd, i32 %i.gg
  %.1120.us.i = or i32 %.pn128.us.i, %.0119148.us.i ; 2 uses
  %i.gh = sub nsw i32 %.0118149.us.i, %i.ff
  br i1 %i.gc, label %bb.ac, label %._crit_edge152.us.i, !llvm.loop !47

._crit_edge152.us.i:                              ; preds = %bb.ac
  %i.gi = trunc i32 %.1120.us.i to i8
  store i8 %i.gi, ptr %.0110155.us.i, align 1, !tbaa !33
  %i.gj = getelementptr inbounds nuw i8, ptr %.0110155.us.i, i64 1 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !33
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %._crit_edge152.us.i
  %.0118149.us.i.1 = phi i32 [ %i.fg, %._crit_edge152.us.i ], [ %i.gr, %bb.ad ] ; 4 uses
  %.0119148.us.i.1 = phi i32 [ 0, %._crit_edge152.us.i ], [ %.1120.us.i.1, %bb.ad ]
  %i.gm = icmp sgt i32 %.0118149.us.i.1, 0        ; 2 uses
  %i.gn = shl i32 %i.gl, %.0118149.us.i.1
  %i.go = sub nsw i32 0, %.0118149.us.i.1
  %i.gp = lshr i32 %i.gl, %i.go
  %i.gq = and i32 %i.gp, %.0116.i54
  %.pn128.us.i.1 = select i1 %i.gm, i32 %i.gn, i32 %i.gq
  %.1120.us.i.1 = or i32 %.pn128.us.i.1, %.0119148.us.i.1 ; 2 uses
  %i.gr = sub nsw i32 %.0118149.us.i.1, %i.ff
  br i1 %i.gm, label %bb.ad, label %._crit_edge152.us.i.1, !llvm.loop !47

._crit_edge152.us.i.1:                            ; preds = %bb.ad
  %i.gs = trunc i32 %.1120.us.i.1 to i8
  store i8 %i.gs, ptr %i.gj, align 1, !tbaa !33
  %i.gt = getelementptr inbounds nuw i8, ptr %.0110155.us.i, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph151.us.i, !llvm.loop !48

bb.ae:                                            ; preds = %bb.aa
  %i.gu = icmp eq i8 %i.eo, 8
  %i.gv = load i32, ptr %1, align 8, !tbaa !32
  %i.gw = mul i32 %i.gv, %.1.i.a                  ; 3 uses
  %.not159.i = icmp eq i32 %i.gw, 0               ; 2 uses
  br i1 %i.gu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not159.i, label %.loopexit.i, label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %bb.af, %._crit_edge142.i
  %.0121145.i = phi i32 [ %i.hn, %._crit_edge142.i ], [ 0, %bb.af ] ; 2 uses
  %.0122144.i = phi ptr [ %i.ho, %._crit_edge142.i ], [ %i.ei, %bb.af ] ; 3 uses
  %i.gx = urem i32 %.0121145.i, %.1.i.a
  %i.gy = load i8, ptr %.0122144.i, align 1, !tbaa !33
  %i.gz = zext i8 %i.gy to i32                    ; 2 uses
  %i.ha = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !43 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ha
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !43 ; 2 uses
  %i.hf = sub nsw i32 0, %i.he
  %i.hg = icmp sgt i32 %i.hc, %i.hf
  br i1 %i.hg, label %.lr.ph141.i, label %._crit_edge142.i

.lr.ph141.i:                                      ; preds = %.lr.ph147.i, %.lr.ph141.i
  %.0114139.i = phi i32 [ %.1115.i, %.lr.ph141.i ], [ 0, %.lr.ph147.i ]
  %.0117138.i = phi i32 [ %i.hl, %.lr.ph141.i ], [ %i.hc, %.lr.ph147.i ] ; 4 uses
  %i.hh = icmp sgt i32 %.0117138.i, 0             ; 2 uses
  %i.hi = shl i32 %i.gz, %.0117138.i
  %i.hj = sub nsw i32 0, %.0117138.i
  %i.hk = lshr i32 %i.gz, %i.hj
  %.pn127.i = select i1 %i.hh, i32 %i.hi, i32 %i.hk
  %.1115.i = or i32 %.pn127.i, %.0114139.i        ; 2 uses
  %i.hl = sub nsw i32 %.0117138.i, %i.he
  br i1 %i.hh, label %.lr.ph141.i, label %._crit_edge142.loopexit.i, !llvm.loop !49

._crit_edge142.loopexit.i:                        ; preds = %.lr.ph141.i
  %i.hm = trunc i32 %.1115.i to i8
  br label %._crit_edge142.i

._crit_edge142.i:                                 ; preds = %._crit_edge142.loopexit.i, %.lr.ph147.i
  %.0114.lcssa.i = phi i8 [ 0, %.lr.ph147.i ], [ %i.hm, %._crit_edge142.loopexit.i ]
  store i8 %.0114.lcssa.i, ptr %.0122144.i, align 1, !tbaa !33
  %i.hn = add nuw i32 %.0121145.i, 1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0122144.i, i64 1
  %exitcond164.not.i = icmp eq i32 %i.hn, %i.gw
  br i1 %exitcond164.not.i, label %.loopexit.i, label %.lr.ph147.i, !llvm.loop !50

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not159.i, label %.loopexit.i, label %.lr.ph137.i

.lr.ph137.i:                                      ; preds = %bb.ag, %._crit_edge.i50
  %.0112135.i = phi i32 [ %i.in, %._crit_edge.i50 ], [ 0, %bb.ag ] ; 2 uses
  %.0113134.i = phi ptr [ %i.im, %._crit_edge.i50 ], [ %i.ei, %bb.ag ] ; 4 uses
  %i.hp = urem i32 %.0112135.i, %.1.i.a
  %i.hq = load i8, ptr %.0113134.i, align 1, !tbaa !33
  %i.hr = zext i8 %i.hq to i32
  %i.hs = shl nuw nsw i32 %i.hr, 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.0113134.i, i64 1 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !33
  %i.hv = zext i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.hs, %i.hv            ; 2 uses
  %i.hx = zext nneg i32 %i.hp to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !43 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hx
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !43 ; 2 uses
  %i.ic = sub nsw i32 0, %i.ib
  %i.id = icmp sgt i32 %i.hz, %i.ic
  br i1 %i.id, label %.lr.ph.i52, label %._crit_edge.i50

.lr.ph.i52:                                       ; preds = %.lr.ph137.i, %.lr.ph.i52
  %.0107133.i = phi i32 [ %.1108.i, %.lr.ph.i52 ], [ 0, %.lr.ph137.i ]
  %.0109132.i = phi i32 [ %i.ii, %.lr.ph.i52 ], [ %i.hz, %.lr.ph137.i ] ; 4 uses
  %i.ie = icmp sgt i32 %.0109132.i, 0             ; 2 uses
  %i.if = shl i32 %i.hw, %.0109132.i
  %i.ig = sub nsw i32 0, %.0109132.i
  %i.ih = lshr i32 %i.hw, %i.ig
  %.pn.i = select i1 %i.ie, i32 %i.if, i32 %i.ih
  %.1108.i = or i32 %.pn.i, %.0107133.i           ; 2 uses
  %i.ii = sub nsw i32 %.0109132.i, %i.ib
  br i1 %i.ie, label %.lr.ph.i52, label %._crit_edge.i50, !llvm.loop !51

._crit_edge.i50:                                  ; preds = %.lr.ph.i52, %.lr.ph137.i
  %.0107.lcssa.i = phi i32 [ 0, %.lr.ph137.i ], [ %.1108.i, %.lr.ph.i52 ] ; 2 uses
  %i.ij = lshr i32 %.0107.lcssa.i, 8
  %i.ik = trunc i32 %i.ij to i8
  store i8 %i.ik, ptr %.0113134.i, align 1, !tbaa !33
  %i.il = trunc i32 %.0107.lcssa.i to i8
  %i.im = getelementptr inbounds nuw i8, ptr %.0113134.i, i64 2
  store i8 %i.il, ptr %i.ht, align 1, !tbaa !33
  %i.in = add nuw i32 %.0112135.i, 1              ; 2 uses
  %exitcond.not.i51 = icmp eq i32 %i.in, %i.gw
  br i1 %exitcond.not.i51, label %.loopexit.i, label %.lr.ph137.i, !llvm.loop !52

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %._crit_edge152.us.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph151.us.i.epil.preheader

.lr.ph151.us.i.epil.preheader:                    ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph151.us.i.preheader
  %.0110155.us.i.epil.init = phi ptr [ %i.ei, %.lr.ph151.us.i.preheader ], [ %i.gt, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod212 = trunc i64 %i.fs to i1
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.io = load i8, ptr %.0110155.us.i.epil.init, align 1, !tbaa !33
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph151.us.i.epil.preheader
  %.0118149.us.i.epil = phi i32 [ %i.fg, %.lr.ph151.us.i.epil.preheader ], [ %i.iv, %bb.ah ] ; 4 uses
  %.0119148.us.i.epil = phi i32 [ 0, %.lr.ph151.us.i.epil.preheader ], [ %.1120.us.i.epil, %bb.ah ]
  %i.iq = icmp sgt i32 %.0118149.us.i.epil, 0     ; 2 uses
  %i.ir = shl i32 %i.ip, %.0118149.us.i.epil
  %i.is = sub nsw i32 0, %.0118149.us.i.epil
  %i.it = lshr i32 %i.ip, %i.is
  %i.iu = and i32 %i.it, %.0116.i54
  %.pn128.us.i.epil = select i1 %i.iq, i32 %i.ir, i32 %i.iu
  %.1120.us.i.epil = or i32 %.pn128.us.i.epil, %.0119148.us.i.epil ; 2 uses
  %i.iv = sub nsw i32 %.0118149.us.i.epil, %i.ff
  br i1 %i.iq, label %bb.ah, label %._crit_edge152.us.i.epil, !llvm.loop !47

._crit_edge152.us.i.epil:                         ; preds = %bb.ah
  %i.iw = trunc i32 %.1120.us.i.epil to i8
  store i8 %i.iw, ptr %.0110155.us.i.epil.init, align 1, !tbaa !33
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge.i50, %._crit_edge142.i, %._crit_edge152.us.i.epil, %.loopexit.i.loopexit.unr-lcssa, %bb.ag, %bb.af, %.lr.ph157.split.preheader.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.pre132.a = load i32, ptr %i.d, align 4, !tbaa !8
  br label %png_do_shift.exit

png_do_shift.exit:                                ; preds = %.loopexit.i, %bb.u, %bb.t
  %i.ix = phi i32 [ %.pre132.a, %.loopexit.i ], [ %i.ee, %bb.u ], [ %i.ee, %bb.t ]
  %i.iy = and i32 %i.ix, 131072
  %.not45 = icmp eq i32 %i.iy, 0
  br i1 %.not45, label %png_do_write_swap_alpha.exit, label %bb.ai

bb.ai:                                            ; preds = %png_do_shift.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 1 ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !40
  switch i8 %i.jd, label %png_do_write_swap_alpha.exit [
    i8 6, label %bb.aj
    i8 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !29
  %i.jg = icmp eq i8 %i.jf, 8
  %i.jh = load i32, ptr %1, align 8, !tbaa !32    ; 8 uses
  %.not95.i = icmp eq i32 %i.jh, 0                ; 2 uses
  br i1 %i.jg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not95.i, label %png_do_write_swap_alpha.exit, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %bb.ak
  %xtraiter230 = and i32 %i.jh, 3                 ; 3 uses
  %i.ji = icmp ult i32 %i.jh, 4
  br i1 %i.ji, label %.lr.ph92.i.epil.preheader, label %.lr.ph92.i.preheader.new

.lr.ph92.i.preheader.new:                         ; preds = %.lr.ph92.i.preheader
  %unroll_iter234 = and i32 %i.jh, -4
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i, %.lr.ph92.i.preheader.new
  %.091.i = phi ptr [ %i.jb, %.lr.ph92.i.preheader.new ], [ %i.js, %.lr.ph92.i ] ; 6 uses
  %niter235 = phi i32 [ 0, %.lr.ph92.i.preheader.new ], [ %niter235.next.3, %.lr.ph92.i ]
  %i.jj = getelementptr i8, ptr %.091.i, i64 4    ; 2 uses
  %i.jk = load <4 x i8>, ptr %.091.i, align 1, !tbaa !33
  %i.jl = shufflevector <4 x i8> %i.jk, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.jl, ptr %.091.i, align 1, !tbaa !33
  %i.jm = getelementptr i8, ptr %.091.i, i64 8    ; 2 uses
  %i.jn = load <4 x i8>, ptr %i.jj, align 1, !tbaa !33
  %i.jo = shufflevector <4 x i8> %i.jn, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.jo, ptr %i.jj, align 1, !tbaa !33
  %i.jp = getelementptr i8, ptr %.091.i, i64 12   ; 2 uses
  %i.jq = load <4 x i8>, ptr %i.jm, align 1, !tbaa !33
  %i.jr = shufflevector <4 x i8> %i.jq, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.jr, ptr %i.jm, align 1, !tbaa !33
  %i.js = getelementptr i8, ptr %.091.i, i64 16   ; 2 uses
  %i.jt = load <4 x i8>, ptr %i.jp, align 1, !tbaa !33
  %i.ju = shufflevector <4 x i8> %i.jt, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.ju, ptr %i.jp, align 1, !tbaa !33
  %niter235.next.3 = add nuw i32 %niter235, 4     ; 2 uses
  %niter235.ncmp.3 = icmp eq i32 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3, label %png_do_write_swap_alpha.exit.loopexit.unr-lcssa, label %.lr.ph92.i, !llvm.loop !53

bb.al:                                            ; preds = %bb.aj
  br i1 %.not95.i, label %png_do_write_swap_alpha.exit, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %bb.al
  %xtraiter224 = and i32 %i.jh, 1
  %i.jv = icmp eq i32 %i.jh, 1
  br i1 %i.jv, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i.preheader.new

.lr.ph88.i.preheader.new:                         ; preds = %.lr.ph88.i.preheader
  %unroll_iter228 = and i32 %i.jh, -2
  br label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i, %.lr.ph88.i.preheader.new
  %.06887.i = phi ptr [ %i.jb, %.lr.ph88.i.preheader.new ], [ %i.jz, %.lr.ph88.i ] ; 4 uses
  %niter229 = phi i32 [ 0, %.lr.ph88.i.preheader.new ], [ %niter229.next.1, %.lr.ph88.i ]
  %i.jw = getelementptr i8, ptr %.06887.i, i64 8  ; 2 uses
  %i.jx = load <8 x i8>, ptr %.06887.i, align 1, !tbaa !33
  %i.jy = shufflevector <8 x i8> %i.jx, <8 x i8> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  store <8 x i8> %i.jy, ptr %.06887.i, align 1, !tbaa !33
  %i.jz = getelementptr i8, ptr %.06887.i, i64 16 ; 2 uses
  %i.ka = load <8 x i8>, ptr %i.jw, align 1, !tbaa !33
  %i.kb = shufflevector <8 x i8> %i.ka, <8 x i8> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  store <8 x i8> %i.kb, ptr %i.jw, align 1, !tbaa !33
  %niter229.next.1 = add nuw i32 %niter229, 2     ; 2 uses
  %niter229.ncmp.1 = icmp eq i32 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %png_do_write_swap_alpha.exit.loopexit198.unr-lcssa.a, label %.lr.ph88.i, !llvm.loop !54

bb.am:                                            ; preds = %bb.ai
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !29
  %i.ke = icmp eq i8 %i.kd, 8
  %i.kf = load i32, ptr %1, align 8, !tbaa !32    ; 7 uses
  %.not93.i55 = icmp eq i32 %i.kf, 0              ; 2 uses
  br i1 %i.ke, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br i1 %.not93.i55, label %png_do_write_swap_alpha.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %bb.an
  %xtraiter218 = and i32 %i.kf, 3                 ; 3 uses
  %i.kg = icmp ult i32 %i.kf, 4
  br i1 %i.kg, label %.lr.ph84.i.epil.preheader, label %.lr.ph84.i.preheader.new

.lr.ph84.i.preheader.new:                         ; preds = %.lr.ph84.i.preheader
  %unroll_iter222 = and i32 %i.kf, -4
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.i.preheader.new
  %.07182.i = phi ptr [ %i.jb, %.lr.ph84.i.preheader.new ], [ %i.kv, %.lr.ph84.i ] ; 10 uses
  %niter223 = phi i32 [ 0, %.lr.ph84.i.preheader.new ], [ %niter223.next.3, %.lr.ph84.i ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.07182.i, i64 1 ; 2 uses
  %i.ki = load i8, ptr %.07182.i, align 1, !tbaa !33
  %i.kj = getelementptr i8, ptr %.07182.i, i64 2  ; 2 uses
  %i.kk = load i8, ptr %i.kh, align 1, !tbaa !33
  store i8 %i.kk, ptr %.07182.i, align 1, !tbaa !33
  store i8 %i.ki, ptr %i.kh, align 1, !tbaa !33
  %i.kl = getelementptr i8, ptr %.07182.i, i64 3  ; 2 uses
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !33
  %i.kn = getelementptr i8, ptr %.07182.i, i64 4  ; 2 uses
  %i.ko = load i8, ptr %i.kl, align 1, !tbaa !33
  store i8 %i.ko, ptr %i.kj, align 1, !tbaa !33
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !33
  %i.kp = getelementptr i8, ptr %.07182.i, i64 5  ; 2 uses
  %i.kq = load i8, ptr %i.kn, align 1, !tbaa !33
  %i.kr = getelementptr i8, ptr %.07182.i, i64 6  ; 2 uses
  %i.ks = load i8, ptr %i.kp, align 1, !tbaa !33
  store i8 %i.ks, ptr %i.kn, align 1, !tbaa !33
  store i8 %i.kq, ptr %i.kp, align 1, !tbaa !33
  %i.kt = getelementptr i8, ptr %.07182.i, i64 7  ; 2 uses
  %i.ku = load i8, ptr %i.kr, align 1, !tbaa !33
  %i.kv = getelementptr i8, ptr %.07182.i, i64 8  ; 2 uses
  %i.kw = load i8, ptr %i.kt, align 1, !tbaa !33
  store i8 %i.kw, ptr %i.kr, align 1, !tbaa !33
  store i8 %i.ku, ptr %i.kt, align 1, !tbaa !33
  %niter223.next.3 = add nuw i32 %niter223, 4     ; 2 uses
  %niter223.ncmp.3 = icmp eq i32 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %png_do_write_swap_alpha.exit.loopexit199.unr-lcssa.a, label %.lr.ph84.i, !llvm.loop !55

bb.ao:                                            ; preds = %bb.am
  br i1 %.not93.i55, label %png_do_write_swap_alpha.exit, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %bb.ao
  %xtraiter213 = and i32 %i.kf, 3                 ; 3 uses
  %i.kx = icmp ult i32 %i.kf, 4
  br i1 %i.kx, label %.lr.ph.i56.epil.preheader, label %.lr.ph.i56.preheader.new

.lr.ph.i56.preheader.new:                         ; preds = %.lr.ph.i56.preheader
  %unroll_iter216 = and i32 %i.kf, -4
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.i56.preheader.new
  %.06679.i = phi ptr [ %i.jb, %.lr.ph.i56.preheader.new ], [ %i.lh, %.lr.ph.i56 ] ; 6 uses
  %niter217 = phi i32 [ 0, %.lr.ph.i56.preheader.new ], [ %niter217.next.3, %.lr.ph.i56 ]
  %i.ky = getelementptr i8, ptr %.06679.i, i64 4  ; 2 uses
  %i.kz = load <4 x i8>, ptr %.06679.i, align 1, !tbaa !33
  %i.la = shufflevector <4 x i8> %i.kz, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.la, ptr %.06679.i, align 1, !tbaa !33
  %i.lb = getelementptr i8, ptr %.06679.i, i64 8  ; 2 uses
  %i.lc = load <4 x i8>, ptr %i.ky, align 1, !tbaa !33
  %i.ld = shufflevector <4 x i8> %i.lc, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.ld, ptr %i.ky, align 1, !tbaa !33
  %i.le = getelementptr i8, ptr %.06679.i, i64 12 ; 2 uses
  %i.lf = load <4 x i8>, ptr %i.lb, align 1, !tbaa !33
  %i.lg = shufflevector <4 x i8> %i.lf, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.lg, ptr %i.lb, align 1, !tbaa !33
  %i.lh = getelementptr i8, ptr %.06679.i, i64 16 ; 2 uses
  %i.li = load <4 x i8>, ptr %i.le, align 1, !tbaa !33
  %i.lj = shufflevector <4 x i8> %i.li, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.lj, ptr %i.le, align 1, !tbaa !33
  %niter217.next.3 = add nuw i32 %niter217, 4     ; 2 uses
  %niter217.ncmp.3 = icmp eq i32 %niter217.next.3, %unroll_iter216
  br i1 %niter217.ncmp.3, label %png_do_write_swap_alpha.exit.loopexit200.unr-lcssa, label %.lr.ph.i56, !llvm.loop !56

png_do_write_swap_alpha.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph92.i
  %lcmp.mod232.not = icmp eq i32 %xtraiter230, 0
  br i1 %lcmp.mod232.not, label %png_do_write_swap_alpha.exit, label %.lr.ph92.i.epil.preheader

.lr.ph92.i.epil.preheader:                        ; preds = %png_do_write_swap_alpha.exit.loopexit.unr-lcssa, %.lr.ph92.i.preheader
  %.091.i.epil.init = phi ptr [ %i.jb, %.lr.ph92.i.preheader ], [ %i.js, %png_do_write_swap_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i32 %xtraiter230, 0
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph92.i.epil

.lr.ph92.i.epil:                                  ; preds = %.lr.ph92.i.epil, %.lr.ph92.i.epil.preheader
  %.091.i.epil = phi ptr [ %i.lk, %.lr.ph92.i.epil ], [ %.091.i.epil.init, %.lr.ph92.i.epil.preheader ] ; 3 uses
  %epil.iter231 = phi i32 [ %epil.iter231.next, %.lr.ph92.i.epil ], [ 0, %.lr.ph92.i.epil.preheader ]
  %i.lk = getelementptr i8, ptr %.091.i.epil, i64 4
end_hunk_0
