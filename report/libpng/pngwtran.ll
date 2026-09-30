Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwtran?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
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
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 3 uses
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not38 = icmp eq ptr %i.h, null
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  tail call void %i.h(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.k) #6
  %.pre = load i32, ptr %i.d, align 4, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.l = phi i32 [ %i.e, %bb.c ], [ %.pre, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  %i.m = and i32 %i.l, 32768
  %.not39 = icmp eq i32 %i.m, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.r = load i32, ptr %i.q, align 8, !tbaa !49
  %i.s = lshr i32 %i.r, 7
  %.lobit = and i32 %i.s, 1
  %i.t = xor i32 %.lobit, 1
  tail call void @png_do_strip_channel(ptr noundef %1, ptr noundef nonnull %i.p, i32 noundef %i.t) #6
  %.pre127 = load i32, ptr %i.d, align 4, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi i32 [ %.pre127, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.v = and i32 %i.u, 65536
  %.not41 = icmp eq i32 %i.v, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @png_do_packswap(ptr noundef %1, ptr noundef nonnull %i.y) #6
  %.pre128 = load i32, ptr %i.d, align 4, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi i32 [ %.pre128, %bb.h ], [ %i.u, %bb.g ] ; 4 uses
  %i.aa = and i32 %i.z, 4
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %png_do_pack.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !50  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.ai = icmp eq i8 %i.ah, 8
  br i1 %i.ai, label %bb.k, label %png_do_pack.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !53
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.l, label %png_do_pack.exit

bb.l:                                             ; preds = %bb.k
  switch i8 %i.af, label %._crit_edge119.thread.i [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 4, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %1, align 8, !tbaa !54    ; 9 uses
  %.not125.i = icmp eq i32 %i.am, 0
  br i1 %.not125.i, label %._crit_edge119.thread.i, label %.lr.ph118.outer.i

.lr.ph118.outer.i:                                ; preds = %bb.m, %.thread.i
  %.083116.ph.i = phi i32 [ %i.bu, %.thread.i ], [ 0, %bb.m ] ; 8 uses
  %.088113.ph.i = phi ptr [ %i.bt, %.thread.i ], [ %i.ad, %bb.m ] ; 9 uses
  %.090112.ph.i = phi ptr [ %i.bp, %.thread.i ], [ %i.ad, %bb.m ] ; 9 uses
  %i.an = load i8, ptr %.090112.ph.i, align 1, !tbaa !55
  %.not93.i = icmp eq i8 %i.an, 0
  %i.ao = select i1 %.not93.i, i32 0, i32 128     ; 2 uses
  %i.ap = or disjoint i32 %.083116.ph.i, 1
  %exitcond127.not.i = icmp eq i32 %i.ap, %i.am
  br i1 %exitcond127.not.i, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.1

.lr.ph118.i.1:                                    ; preds = %.lr.ph118.outer.i
  %i.aq = getelementptr i8, ptr %.090112.ph.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !55
  %.not93.i.1 = icmp eq i8 %i.ar, 0
  %i.as = select i1 %.not93.i.1, i32 0, i32 64
  %spec.select.i.1 = or disjoint i32 %i.as, %i.ao ; 2 uses
  %i.at = or disjoint i32 %.083116.ph.i, 2
  %exitcond127.not.i.1 = icmp eq i32 %i.at, %i.am
  br i1 %exitcond127.not.i.1, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.2

.lr.ph118.i.2:                                    ; preds = %.lr.ph118.i.1
  %i.au = getelementptr i8, ptr %.090112.ph.i, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %.not93.i.2 = icmp eq i8 %i.av, 0
  %i.aw = select i1 %.not93.i.2, i32 0, i32 32
  %spec.select.i.2 = or disjoint i32 %i.aw, %spec.select.i.1 ; 2 uses
  %i.ax = or disjoint i32 %.083116.ph.i, 3
  %exitcond127.not.i.2 = icmp eq i32 %i.ax, %i.am
  br i1 %exitcond127.not.i.2, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.3

.lr.ph118.i.3:                                    ; preds = %.lr.ph118.i.2
  %i.ay = getelementptr i8, ptr %.090112.ph.i, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !55
  %.not93.i.3 = icmp eq i8 %i.az, 0
  %i.ba = select i1 %.not93.i.3, i32 0, i32 16
  %spec.select.i.3 = or disjoint i32 %i.ba, %spec.select.i.2 ; 2 uses
  %i.bb = or disjoint i32 %.083116.ph.i, 4
  %exitcond127.not.i.3 = icmp eq i32 %i.bb, %i.am
  br i1 %exitcond127.not.i.3, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.4

.lr.ph118.i.4:                                    ; preds = %.lr.ph118.i.3
  %i.bc = getelementptr i8, ptr %.090112.ph.i, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !55
  %.not93.i.4 = icmp eq i8 %i.bd, 0
  %i.be = select i1 %.not93.i.4, i32 0, i32 8
  %spec.select.i.4 = or disjoint i32 %i.be, %spec.select.i.3 ; 2 uses
  %i.bf = or disjoint i32 %.083116.ph.i, 5
  %exitcond127.not.i.4 = icmp eq i32 %i.bf, %i.am
  br i1 %exitcond127.not.i.4, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.5

.lr.ph118.i.5:                                    ; preds = %.lr.ph118.i.4
  %i.bg = getelementptr i8, ptr %.090112.ph.i, i64 5
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !55
  %.not93.i.5 = icmp eq i8 %i.bh, 0
  %i.bi = select i1 %.not93.i.5, i32 0, i32 4
  %spec.select.i.5 = or disjoint i32 %i.bi, %spec.select.i.4 ; 2 uses
  %i.bj = or disjoint i32 %.083116.ph.i, 6
  %exitcond127.not.i.5 = icmp eq i32 %i.bj, %i.am
  br i1 %exitcond127.not.i.5, label %._crit_edge119.thread.i.sink.split, label %.lr.ph118.i.6

.lr.ph118.i.6:                                    ; preds = %.lr.ph118.i.5
  %i.bk = getelementptr i8, ptr %.090112.ph.i, i64 6
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !55
  %.not93.i.6 = icmp eq i8 %i.bl, 0
  %i.bm = select i1 %.not93.i.6, i32 0, i32 2
  %spec.select.i.6 = or i32 %i.bm, %spec.select.i.5 ; 2 uses
  %i.bn = or disjoint i32 %.083116.ph.i, 7
  %exitcond127.not.i.6 = icmp eq i32 %i.bn, %i.am
  br i1 %exitcond127.not.i.6, label %._crit_edge119.thread.i.sink.split, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph118.i.6
  %i.bo = getelementptr i8, ptr %.090112.ph.i, i64 7
  %i.bp = getelementptr i8, ptr %.090112.ph.i, i64 8
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !55
  %.not93.i.7 = icmp ne i8 %i.bq, 0
  %i.br = zext i1 %.not93.i.7 to i32
  %spec.select.i.7 = or i32 %spec.select.i.6, %i.br
  %i.bs = trunc nuw i32 %spec.select.i.7 to i8
  store i8 %i.bs, ptr %.088113.ph.i, align 1, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %.088113.ph.i, i64 1
  %i.bu = add nuw i32 %.083116.ph.i, 8            ; 2 uses
  %exitcond127.not141.i = icmp eq i32 %i.bu, %i.am
  br i1 %exitcond127.not141.i, label %._crit_edge119.thread.i, label %.lr.ph118.outer.i, !llvm.loop !8

bb.n:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %1, align 8, !tbaa !54    ; 5 uses
  %.not124.i = icmp eq i32 %i.bv, 0
  br i1 %.not124.i, label %._crit_edge119.thread.i, label %.lr.ph107.outer.i

.lr.ph107.outer.i:                                ; preds = %bb.n, %.thread152.i
  %.075105.ph.i = phi i32 [ %i.cv, %.thread152.i ], [ 0, %bb.n ] ; 4 uses
  %.080102.ph.i = phi ptr [ %i.ct, %.thread152.i ], [ %i.ad, %bb.n ] ; 5 uses
  %.082101.ph.i = phi ptr [ %i.cu, %.thread152.i ], [ %i.ad, %bb.n ] ; 5 uses
  %i.bw = load i8, ptr %.082101.ph.i, align 1, !tbaa !55
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 6                ; 2 uses
  %i.bz = or disjoint i32 %.075105.ph.i, 1
  %exitcond126.not.i = icmp eq i32 %i.bz, %i.bv
  br i1 %exitcond126.not.i, label %._crit_edge119.thread.i.sink.split, label %.lr.ph107.i.1

.lr.ph107.i.1:                                    ; preds = %.lr.ph107.outer.i
  %i.ca = getelementptr i8, ptr %.082101.ph.i, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !55
  %i.cc = shl i8 %i.cb, 4
  %i.cd = and i8 %i.cc, 48
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.by, %i.ce            ; 2 uses
  %i.cg = or disjoint i32 %.075105.ph.i, 2
  %exitcond126.not.i.1 = icmp eq i32 %i.cg, %i.bv
  br i1 %exitcond126.not.i.1, label %._crit_edge119.thread.i.sink.split, label %.lr.ph107.i.2

.lr.ph107.i.2:                                    ; preds = %.lr.ph107.i.1
  %i.ch = getelementptr i8, ptr %.082101.ph.i, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !55
  %i.cj = shl i8 %i.ci, 2
  %i.ck = and i8 %i.cj, 12
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cf, %i.cl            ; 2 uses
  %i.cn = or disjoint i32 %.075105.ph.i, 3
  %exitcond126.not.i.2 = icmp eq i32 %i.cn, %i.bv
  br i1 %exitcond126.not.i.2, label %._crit_edge119.thread.i.sink.split, label %.thread152.i

.thread152.i:                                     ; preds = %.lr.ph107.i.2
  %i.co = getelementptr i8, ptr %.082101.ph.i, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !55
  %i.cq = and i8 %i.cp, 3
  %i.cr = trunc i32 %i.cm to i8
  %i.cs = or disjoint i8 %i.cq, %i.cr
  store i8 %i.cs, ptr %.080102.ph.i, align 1, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %.080102.ph.i, i64 1
  %i.cu = getelementptr i8, ptr %.082101.ph.i, i64 4
  %i.cv = add nuw i32 %.075105.ph.i, 4            ; 2 uses
  %exitcond126.not156.i = icmp eq i32 %i.cv, %i.bv
  br i1 %exitcond126.not156.i, label %._crit_edge119.thread.i, label %.lr.ph107.outer.i, !llvm.loop !9

bb.o:                                             ; preds = %bb.l
  %i.cw = load i32, ptr %1, align 8, !tbaa !54    ; 3 uses
  %.not123.i = icmp eq i32 %i.cw, 0
  br i1 %.not123.i, label %._crit_edge119.thread.i, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.o, %.thread167.i
  %.098.ph.i = phi i32 [ %i.di, %.thread167.i ], [ 0, %bb.o ] ; 2 uses
  %.07295.ph.i = phi ptr [ %i.dg, %.thread167.i ], [ %i.ad, %bb.o ] ; 3 uses
  %.07494.ph.i = phi ptr [ %i.dh, %.thread167.i ], [ %i.ad, %bb.o ] ; 3 uses
  %i.cx = load i8, ptr %.07494.ph.i, align 1, !tbaa !55
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 4                ; 2 uses
  %i.da = or disjoint i32 %.098.ph.i, 1
  %exitcond.not.i = icmp eq i32 %i.da, %i.cw
  br i1 %exitcond.not.i, label %._crit_edge119.thread.i.sink.split, label %.thread167.i

.thread167.i:                                     ; preds = %.lr.ph.outer.i
  %i.db = getelementptr i8, ptr %.07494.ph.i, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !55
  %i.dd = and i8 %i.dc, 15
  %i.de = trunc i32 %i.cz to i8
  %i.df = or disjoint i8 %i.dd, %i.de
  store i8 %i.df, ptr %.07295.ph.i, align 1, !tbaa !55
  %i.dg = getelementptr inbounds nuw i8, ptr %.07295.ph.i, i64 1
  %i.dh = getelementptr i8, ptr %.07494.ph.i, i64 2
  %i.di = add nuw i32 %.098.ph.i, 2               ; 2 uses
  %exitcond.not171.i = icmp eq i32 %i.di, %i.cw
  br i1 %exitcond.not171.i, label %._crit_edge119.thread.i, label %.lr.ph.outer.i, !llvm.loop !10

._crit_edge119.thread.i.sink.split:               ; preds = %.lr.ph.outer.i, %.lr.ph107.i.2, %.lr.ph107.i.1, %.lr.ph107.outer.i, %.lr.ph118.outer.i, %.lr.ph118.i.1, %.lr.ph118.i.2, %.lr.ph118.i.3, %.lr.ph118.i.4, %.lr.ph118.i.5, %.lr.ph118.i.6
  %.lcssa.sink = phi i32 [ %i.by, %.lr.ph107.outer.i ], [ %i.ao, %.lr.ph118.outer.i ], [ %spec.select.i.6, %.lr.ph118.i.6 ], [ %spec.select.i.5, %.lr.ph118.i.5 ], [ %spec.select.i.4, %.lr.ph118.i.4 ], [ %spec.select.i.3, %.lr.ph118.i.3 ], [ %spec.select.i.2, %.lr.ph118.i.2 ], [ %spec.select.i.1, %.lr.ph118.i.1 ], [ %i.cm, %.lr.ph107.i.2 ], [ %i.cf, %.lr.ph107.i.1 ], [ %i.cz, %.lr.ph.outer.i ]
  %.07295.ph.i.lcssa.sink = phi ptr [ %.080102.ph.i, %.lr.ph107.i.2 ], [ %.088113.ph.i, %.lr.ph118.outer.i ], [ %.088113.ph.i, %.lr.ph118.i.6 ], [ %.088113.ph.i, %.lr.ph118.i.5 ], [ %.088113.ph.i, %.lr.ph118.i.4 ], [ %.088113.ph.i, %.lr.ph118.i.3 ], [ %.088113.ph.i, %.lr.ph118.i.2 ], [ %.088113.ph.i, %.lr.ph118.i.1 ], [ %.080102.ph.i, %.lr.ph107.outer.i ], [ %.080102.ph.i, %.lr.ph107.i.1 ], [ %.07295.ph.i, %.lr.ph.outer.i ]
  %i.dj = trunc i32 %.lcssa.sink to i8
  store i8 %i.dj, ptr %.07295.ph.i.lcssa.sink, align 1, !tbaa !55
  br label %._crit_edge119.thread.i

._crit_edge119.thread.i:                          ; preds = %.thread167.i, %.thread152.i, %.thread.i, %._crit_edge119.thread.i.sink.split, %bb.o, %bb.n, %bb.m, %bb.l
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !52
  %i.dk = load i8, ptr %i.aj, align 2, !tbaa !53
  %i.dl = mul i8 %i.dk, %i.af                     ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !57
  %i.dn = icmp ugt i8 %i.dl, 7
  %i.do = load i32, ptr %1, align 8, !tbaa !54
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
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !58
  %.pre129 = load i32, ptr %i.d, align 4, !tbaa !46
  br label %png_do_pack.exit

png_do_pack.exit:                                 ; preds = %bb.r, %bb.k, %bb.j, %bb.i
  %i.dz = phi i32 [ %.pre129, %bb.r ], [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %i.ea = and i32 %i.dz, 16
  %.not43 = icmp eq i32 %i.ea, 0
  br i1 %.not43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %png_do_pack.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  tail call void @png_do_swap(ptr noundef %1, ptr noundef nonnull %i.ed) #6
  %.pre130 = load i32, ptr %i.d, align 4, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %png_do_pack.exit
  %i.ee = phi i32 [ %.pre130, %bb.s ], [ %i.dz, %png_do_pack.exit ] ; 3 uses
  %i.ef = and i32 %i.ee, 8
  %.not44 = icmp eq i32 %i.ef, 0
  br i1 %.not44, label %png_do_shift.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !59  ; 3 uses
  %.not.i = icmp eq i8 %i.el, 3
  br i1 %.not.i, label %png_do_shift.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.em = and i8 %i.el, 2
  %.not125.i49 = icmp eq i8 %i.em, 0
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !52  ; 6 uses
  %i.ep = zext i8 %i.eo to i32                    ; 4 uses
  br i1 %.not125.i49, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = load i8, ptr %i.ej, align 1, !tbaa !60
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.es = load i8, ptr %i.er, align 2, !tbaa !61
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = sub nsw i32 %i.ep, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 791
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !63
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = sub nsw i32 %i.ep, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !62
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ez, ptr %i.fc, align 8, !tbaa !62
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.in.i = phi i8 [ %i.fe, %bb.x ], [ %i.eq, %bb.w ]
  %.0121.i = phi i32 [ 1, %bb.x ], [ 3, %bb.w ]   ; 3 uses
  %i.ff = zext i8 %.in.i to i32                   ; 5 uses
  %i.fg = sub nsw i32 %i.ep, %i.ff                ; 4 uses
  store i32 %i.fg, ptr %i.a, align 16, !tbaa !62
  store i32 %i.ff, ptr %i.b, align 16, !tbaa !62
  %i.fh = and i8 %i.el, 4
  %.not126.i = icmp eq i8 %i.fh, 0
  br i1 %.not126.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 793
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !65
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = sub nsw i32 %i.ep, %i.fk
  %i.fm = zext nneg i32 %.0121.i to i64           ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fm
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !62
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fm
  store i32 %i.fk, ptr %i.fo, align 4, !tbaa !62
  %i.fp = add nuw nsw i32 %.0121.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1122.i = phi i32 [ %i.fp, %bb.z ], [ %.0121.i, %bb.y ] ; 3 uses
  %i.fq = icmp ult i8 %i.eo, 8
  br i1 %i.fq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !58 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !64  ; 2 uses
  %i.fv = icmp eq i8 %i.fu, 1
  %i.fw = icmp eq i8 %i.eo, 2
  %or.cond.i = and i1 %i.fw, %i.fv
  %i.fx = icmp eq i8 %i.eo, 4
  %i.fy = icmp eq i8 %i.fu, 3
  %or.cond129.i = and i1 %i.fx, %i.fy
  %spec.select.i53 = select i1 %or.cond129.i, i32 17, i32 255
  %.0118.i = select i1 %or.cond.i, i32 85, i32 %spec.select.i53 ; 3 uses
  %.not160.i = icmp eq i64 %i.fs, 0
  br i1 %.not160.i, label %.loopexit.i, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.ab
  %.not181.i = icmp eq i8 %i.eo, 0
  br i1 %.not181.i, label %.lr.ph157.split.preheader.i, label %.lr.ph151.us.i.preheader

.lr.ph151.us.i.preheader:                         ; preds = %.lr.ph157.i
  %xtraiter = and i64 %i.fs, 1
  %i.fz = icmp eq i64 %i.fs, 1
  br i1 %i.fz, label %.lr.ph151.us.i.epil.preheader, label %.lr.ph151.us.i.preheader.new

.lr.ph151.us.i.preheader.new:                     ; preds = %.lr.ph151.us.i.preheader
  %unroll_iter = and i64 %i.fs, -2
  br label %.lr.ph151.us.i

.lr.ph157.split.preheader.i:                      ; preds = %.lr.ph157.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ei, i8 0, i64 %i.fs, i1 false), !tbaa !55
  br label %.loopexit.i

.lr.ph151.us.i:                                   ; preds = %._crit_edge152.us.i.1, %.lr.ph151.us.i.preheader.new
  %.0120154.us.i = phi ptr [ %i.ei, %.lr.ph151.us.i.preheader.new ], [ %i.gt, %._crit_edge152.us.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph151.us.i.preheader.new ], [ %niter.next.1, %._crit_edge152.us.i.1 ]
  %i.ga = load i8, ptr %.0120154.us.i, align 1, !tbaa !55
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph151.us.i
  %.0115149.us.i = phi i32 [ 0, %.lr.ph151.us.i ], [ %.1116.us.i, %bb.ac ]
  %.0117148.us.i = phi i32 [ %i.fg, %.lr.ph151.us.i ], [ %i.gh, %bb.ac ] ; 4 uses
  %i.gc = icmp sgt i32 %.0117148.us.i, 0          ; 2 uses
  %i.gd = shl i32 %i.gb, %.0117148.us.i
  %i.ge = sub nsw i32 0, %.0117148.us.i
  %i.gf = lshr i32 %i.gb, %i.ge
  %i.gg = and i32 %i.gf, %.0118.i
  %.pn128.us.i = select i1 %i.gc, i32 %i.gd, i32 %i.gg
  %.1116.us.i = or i32 %.pn128.us.i, %.0115149.us.i ; 2 uses
  %i.gh = sub nsw i32 %.0117148.us.i, %i.ff
  br i1 %i.gc, label %bb.ac, label %._crit_edge152.us.i, !llvm.loop !11

._crit_edge152.us.i:                              ; preds = %bb.ac
  %i.gi = trunc i32 %.1116.us.i to i8
  store i8 %i.gi, ptr %.0120154.us.i, align 1, !tbaa !55
  %i.gj = getelementptr inbounds nuw i8, ptr %.0120154.us.i, i64 1 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !55
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %._crit_edge152.us.i
  %.0115149.us.i.1 = phi i32 [ 0, %._crit_edge152.us.i ], [ %.1116.us.i.1, %bb.ad ]
  %.0117148.us.i.1 = phi i32 [ %i.fg, %._crit_edge152.us.i ], [ %i.gr, %bb.ad ] ; 4 uses
  %i.gm = icmp sgt i32 %.0117148.us.i.1, 0        ; 2 uses
  %i.gn = shl i32 %i.gl, %.0117148.us.i.1
  %i.go = sub nsw i32 0, %.0117148.us.i.1
  %i.gp = lshr i32 %i.gl, %i.go
  %i.gq = and i32 %i.gp, %.0118.i
  %.pn128.us.i.1 = select i1 %i.gm, i32 %i.gn, i32 %i.gq
  %.1116.us.i.1 = or i32 %.pn128.us.i.1, %.0115149.us.i.1 ; 2 uses
  %i.gr = sub nsw i32 %.0117148.us.i.1, %i.ff
  br i1 %i.gm, label %bb.ad, label %._crit_edge152.us.i.1, !llvm.loop !11

._crit_edge152.us.i.1:                            ; preds = %bb.ad
  %i.gs = trunc i32 %.1116.us.i.1 to i8
  store i8 %i.gs, ptr %i.gj, align 1, !tbaa !55
  %i.gt = getelementptr inbounds nuw i8, ptr %.0120154.us.i, i64 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph151.us.i, !llvm.loop !12

bb.ae:                                            ; preds = %bb.aa
  %i.gu = icmp eq i8 %i.eo, 8
  %i.gv = load i32, ptr %1, align 8, !tbaa !54
  %i.gw = mul i32 %i.gv, %.1122.i                 ; 3 uses
  %.not159.i = icmp eq i32 %i.gw, 0               ; 2 uses
  br i1 %i.gu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not159.i, label %.loopexit.i, label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %bb.af, %._crit_edge142.i
  %.0113145.i = phi i32 [ %i.hn, %._crit_edge142.i ], [ 0, %bb.af ] ; 2 uses
  %.0114144.i = phi ptr [ %i.ho, %._crit_edge142.i ], [ %i.ei, %bb.af ] ; 3 uses
  %i.gx = urem i32 %.0113145.i, %.1122.i
  %i.gy = load i8, ptr %.0114144.i, align 1, !tbaa !55
  %i.gz = zext i8 %i.gy to i32                    ; 2 uses
  %i.ha = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !62 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ha
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !62 ; 2 uses
  %i.hf = sub nsw i32 0, %i.he
  %i.hg = icmp sgt i32 %i.hc, %i.hf
  br i1 %i.hg, label %.lr.ph141.i, label %._crit_edge142.i

.lr.ph141.i:                                      ; preds = %.lr.ph147.i, %.lr.ph141.i
  %.0110139.i = phi i32 [ %.1111.i, %.lr.ph141.i ], [ 0, %.lr.ph147.i ]
  %.0112138.i = phi i32 [ %i.hl, %.lr.ph141.i ], [ %i.hc, %.lr.ph147.i ] ; 4 uses
  %i.hh = icmp sgt i32 %.0112138.i, 0             ; 2 uses
  %i.hi = shl i32 %i.gz, %.0112138.i
  %i.hj = sub nsw i32 0, %.0112138.i
  %i.hk = lshr i32 %i.gz, %i.hj
  %.pn127.i = select i1 %i.hh, i32 %i.hi, i32 %i.hk
  %.1111.i = or i32 %.pn127.i, %.0110139.i        ; 2 uses
  %i.hl = sub nsw i32 %.0112138.i, %i.he
  br i1 %i.hh, label %.lr.ph141.i, label %._crit_edge142.loopexit.i, !llvm.loop !13

._crit_edge142.loopexit.i:                        ; preds = %.lr.ph141.i
  %i.hm = trunc i32 %.1111.i to i8
  br label %._crit_edge142.i

._crit_edge142.i:                                 ; preds = %._crit_edge142.loopexit.i, %.lr.ph147.i
  %.0110.lcssa.i = phi i8 [ 0, %.lr.ph147.i ], [ %i.hm, %._crit_edge142.loopexit.i ]
  store i8 %.0110.lcssa.i, ptr %.0114144.i, align 1, !tbaa !55
  %i.hn = add nuw i32 %.0113145.i, 1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0114144.i, i64 1
  %exitcond164.not.i = icmp eq i32 %i.hn, %i.gw
  br i1 %exitcond164.not.i, label %.loopexit.i, label %.lr.ph147.i, !llvm.loop !14

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not159.i, label %.loopexit.i, label %.lr.ph137.i

.lr.ph137.i:                                      ; preds = %bb.ag, %._crit_edge.i50
  %.0108135.i = phi i32 [ %i.ih, %._crit_edge.i50 ], [ 0, %bb.ag ] ; 2 uses
  %.0109134.i = phi ptr [ %i.ig, %._crit_edge.i50 ], [ %i.ei, %bb.ag ] ; 4 uses
  %i.hp = urem i32 %.0108135.i, %.1122.i
  %2 = load i16, ptr %.0109134.i, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.hq = zext i16 %3 to i32                      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0109134.i, i64 1
  %i.hr = zext nneg i32 %i.hp to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !62 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hr
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !62 ; 2 uses
  %i.hw = sub nsw i32 0, %i.hv
  %i.hx = icmp sgt i32 %i.ht, %i.hw
  br i1 %i.hx, label %.lr.ph.i52, label %._crit_edge.i50

.lr.ph.i52:                                       ; preds = %.lr.ph137.i, %.lr.ph.i52
  %.0133.i = phi i32 [ %.1.i, %.lr.ph.i52 ], [ 0, %.lr.ph137.i ]
  %.0107132.i = phi i32 [ %i.ic, %.lr.ph.i52 ], [ %i.ht, %.lr.ph137.i ] ; 4 uses
  %i.hy = icmp sgt i32 %.0107132.i, 0             ; 2 uses
  %i.hz = shl i32 %i.hq, %.0107132.i
  %i.ia = sub nsw i32 0, %.0107132.i
  %i.ib = lshr i32 %i.hq, %i.ia
  %.pn.i = select i1 %i.hy, i32 %i.hz, i32 %i.ib
  %.1.i = or i32 %.pn.i, %.0133.i                 ; 2 uses
  %i.ic = sub nsw i32 %.0107132.i, %i.hv
  br i1 %i.hy, label %.lr.ph.i52, label %._crit_edge.i50, !llvm.loop !15

._crit_edge.i50:                                  ; preds = %.lr.ph.i52, %.lr.ph137.i
  %.0.lcssa.i = phi i32 [ 0, %.lr.ph137.i ], [ %.1.i, %.lr.ph.i52 ] ; 2 uses
  %i.id = lshr i32 %.0.lcssa.i, 8
  %i.ie = trunc i32 %i.id to i8
  store i8 %i.ie, ptr %.0109134.i, align 1, !tbaa !55
  %i.if = trunc i32 %.0.lcssa.i to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.0109134.i, i64 2
  store i8 %i.if, ptr %4, align 1, !tbaa !55
  %i.ih = add nuw i32 %.0108135.i, 1              ; 2 uses
  %exitcond.not.i51 = icmp eq i32 %i.ih, %i.gw
  br i1 %exitcond.not.i51, label %.loopexit.i, label %.lr.ph137.i, !llvm.loop !16

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %._crit_edge152.us.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph151.us.i.epil.preheader

.lr.ph151.us.i.epil.preheader:                    ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph151.us.i.preheader
  %.0120154.us.i.epil.init = phi ptr [ %i.ei, %.lr.ph151.us.i.preheader ], [ %i.gt, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod211 = trunc i64 %i.fs to i1
  tail call void @llvm.assume(i1 %lcmp.mod211)
  %i.ii = load i8, ptr %.0120154.us.i.epil.init, align 1, !tbaa !55
  %i.ij = zext i8 %i.ii to i32                    ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph151.us.i.epil.preheader
  %.0115149.us.i.epil = phi i32 [ 0, %.lr.ph151.us.i.epil.preheader ], [ %.1116.us.i.epil, %bb.ah ]
  %.0117148.us.i.epil = phi i32 [ %i.fg, %.lr.ph151.us.i.epil.preheader ], [ %i.ip, %bb.ah ] ; 4 uses
  %i.ik = icmp sgt i32 %.0117148.us.i.epil, 0     ; 2 uses
  %i.il = shl i32 %i.ij, %.0117148.us.i.epil
  %i.im = sub nsw i32 0, %.0117148.us.i.epil
  %i.in = lshr i32 %i.ij, %i.im
  %i.io = and i32 %i.in, %.0118.i
  %.pn128.us.i.epil = select i1 %i.ik, i32 %i.il, i32 %i.io
  %.1116.us.i.epil = or i32 %.pn128.us.i.epil, %.0115149.us.i.epil ; 2 uses
  %i.ip = sub nsw i32 %.0117148.us.i.epil, %i.ff
  br i1 %i.ik, label %bb.ah, label %._crit_edge152.us.i.epil, !llvm.loop !11

._crit_edge152.us.i.epil:                         ; preds = %bb.ah
  %i.iq = trunc i32 %.1116.us.i.epil to i8
  store i8 %i.iq, ptr %.0120154.us.i.epil.init, align 1, !tbaa !55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge.i50, %._crit_edge142.i, %._crit_edge152.us.i.epil, %.loopexit.i.loopexit.unr-lcssa, %bb.ag, %bb.af, %.lr.ph157.split.preheader.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.pre131 = load i32, ptr %i.d, align 4, !tbaa !46
  br label %png_do_shift.exit

png_do_shift.exit:                                ; preds = %.loopexit.i, %bb.u, %bb.t
  %i.ir = phi i32 [ %.pre131, %.loopexit.i ], [ %i.ee, %bb.u ], [ %i.ee, %bb.t ]
  %i.is = and i32 %i.ir, 131072
  %.not45 = icmp eq i32 %i.is, 0
  br i1 %.not45, label %png_do_write_swap_alpha.exit, label %bb.ai

bb.ai:                                            ; preds = %png_do_shift.exit
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !48
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1 ; 8 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !59
  switch i8 %i.ix, label %png_do_write_swap_alpha.exit [
    i8 6, label %bb.aj
    i8 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !52
  %i.ja = icmp eq i8 %i.iz, 8
  %i.jb = load i32, ptr %1, align 8, !tbaa !54    ; 8 uses
  %.not95.i = icmp eq i32 %i.jb, 0                ; 2 uses
  br i1 %i.ja, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not95.i, label %png_do_write_swap_alpha.exit, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %bb.ak
  %xtraiter229 = and i32 %i.jb, 3                 ; 3 uses
  %i.jc = icmp ult i32 %i.jb, 4
  br i1 %i.jc, label %.lr.ph92.i.epil.preheader, label %.lr.ph92.i.preheader.new

.lr.ph92.i.preheader.new:                         ; preds = %.lr.ph92.i.preheader
  %unroll_iter233 = and i32 %i.jb, -4
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i, %.lr.ph92.i.preheader.new
  %.091.i = phi ptr [ %i.iv, %.lr.ph92.i.preheader.new ], [ %i.jm, %.lr.ph92.i ] ; 6 uses
  %niter234 = phi i32 [ 0, %.lr.ph92.i.preheader.new ], [ %niter234.next.3, %.lr.ph92.i ]
  %i.jd = getelementptr i8, ptr %.091.i, i64 4    ; 2 uses
  %i.je = load <4 x i8>, ptr %.091.i, align 1, !tbaa !55
  %i.jf = shufflevector <4 x i8> %i.je, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.jf, ptr %.091.i, align 1, !tbaa !55
  %i.jg = getelementptr i8, ptr %.091.i, i64 8    ; 2 uses
  %i.jh = load <4 x i8>, ptr %i.jd, align 1, !tbaa !55
  %i.ji = shufflevector <4 x i8> %i.jh, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.ji, ptr %i.jd, align 1, !tbaa !55
  %i.jj = getelementptr i8, ptr %.091.i, i64 12   ; 2 uses
  %i.jk = load <4 x i8>, ptr %i.jg, align 1, !tbaa !55
  %i.jl = shufflevector <4 x i8> %i.jk, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.jl, ptr %i.jg, align 1, !tbaa !55
  %i.jm = getelementptr i8, ptr %.091.i, i64 16   ; 2 uses
  %i.jn = load <4 x i8>, ptr %i.jj, align 1, !tbaa !55
  %i.jo = shufflevector <4 x i8> %i.jn, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.jo, ptr %i.jj, align 1, !tbaa !55
  %niter234.next.3 = add nuw i32 %niter234, 4     ; 2 uses
  %niter234.ncmp.3 = icmp eq i32 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %png_do_write_swap_alpha.exit.loopexit.unr-lcssa, label %.lr.ph92.i, !llvm.loop !17

bb.al:                                            ; preds = %bb.aj
  br i1 %.not95.i, label %png_do_write_swap_alpha.exit, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %bb.al
  %xtraiter223 = and i32 %i.jb, 1
  %i.jp = icmp eq i32 %i.jb, 1
  br i1 %i.jp, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i.preheader.new

.lr.ph88.i.preheader.new:                         ; preds = %.lr.ph88.i.preheader
  %unroll_iter227 = and i32 %i.jb, -2
  br label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i, %.lr.ph88.i.preheader.new
  %.07187.i = phi ptr [ %i.iv, %.lr.ph88.i.preheader.new ], [ %i.jt, %.lr.ph88.i ] ; 4 uses
  %niter228 = phi i32 [ 0, %.lr.ph88.i.preheader.new ], [ %niter228.next.1, %.lr.ph88.i ]
  %i.jq = getelementptr i8, ptr %.07187.i, i64 8  ; 2 uses
  %i.jr = load <8 x i8>, ptr %.07187.i, align 1, !tbaa !55
  %i.js = shufflevector <8 x i8> %i.jr, <8 x i8> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  store <8 x i8> %i.js, ptr %.07187.i, align 1, !tbaa !55
  %i.jt = getelementptr i8, ptr %.07187.i, i64 16 ; 2 uses
  %i.ju = load <8 x i8>, ptr %i.jq, align 1, !tbaa !55
  %i.jv = shufflevector <8 x i8> %i.ju, <8 x i8> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  store <8 x i8> %i.jv, ptr %i.jq, align 1, !tbaa !55
  %niter228.next.1 = add nuw i32 %niter228, 2     ; 2 uses
  %niter228.ncmp.1 = icmp eq i32 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %png_do_write_swap_alpha.exit.loopexit197.unr-lcssa, label %.lr.ph88.i, !llvm.loop !18

bb.am:                                            ; preds = %bb.ai
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !52
  %i.jy = icmp eq i8 %i.jx, 8
  %i.jz = load i32, ptr %1, align 8, !tbaa !54    ; 7 uses
  %.not93.i54 = icmp eq i32 %i.jz, 0              ; 2 uses
  br i1 %i.jy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br i1 %.not93.i54, label %png_do_write_swap_alpha.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %bb.an
  %xtraiter217 = and i32 %i.jz, 3                 ; 3 uses
  %i.ka = icmp ult i32 %i.jz, 4
  br i1 %i.ka, label %.lr.ph84.i.epil.preheader, label %.lr.ph84.i.preheader.new

.lr.ph84.i.preheader.new:                         ; preds = %.lr.ph84.i.preheader
  %unroll_iter221 = and i32 %i.jz, -4
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.i.preheader.new
  %.06982.i = phi ptr [ %i.iv, %.lr.ph84.i.preheader.new ], [ %i.kp, %.lr.ph84.i ] ; 10 uses
  %niter222 = phi i32 [ 0, %.lr.ph84.i.preheader.new ], [ %niter222.next.3, %.lr.ph84.i ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.06982.i, i64 1 ; 2 uses
  %i.kc = load i8, ptr %.06982.i, align 1, !tbaa !55
  %i.kd = getelementptr i8, ptr %.06982.i, i64 2  ; 2 uses
  %i.ke = load i8, ptr %i.kb, align 1, !tbaa !55
  store i8 %i.ke, ptr %.06982.i, align 1, !tbaa !55
  store i8 %i.kc, ptr %i.kb, align 1, !tbaa !55
  %i.kf = getelementptr i8, ptr %.06982.i, i64 3  ; 2 uses
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !55
  %i.kh = getelementptr i8, ptr %.06982.i, i64 4  ; 2 uses
  %i.ki = load i8, ptr %i.kf, align 1, !tbaa !55
  store i8 %i.ki, ptr %i.kd, align 1, !tbaa !55
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !55
  %i.kj = getelementptr i8, ptr %.06982.i, i64 5  ; 2 uses
  %i.kk = load i8, ptr %i.kh, align 1, !tbaa !55
  %i.kl = getelementptr i8, ptr %.06982.i, i64 6  ; 2 uses
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !55
  store i8 %i.km, ptr %i.kh, align 1, !tbaa !55
  store i8 %i.kk, ptr %i.kj, align 1, !tbaa !55
  %i.kn = getelementptr i8, ptr %.06982.i, i64 7  ; 2 uses
  %i.ko = load i8, ptr %i.kl, align 1, !tbaa !55
  %i.kp = getelementptr i8, ptr %.06982.i, i64 8  ; 2 uses
  %i.kq = load i8, ptr %i.kn, align 1, !tbaa !55
  store i8 %i.kq, ptr %i.kl, align 1, !tbaa !55
  store i8 %i.ko, ptr %i.kn, align 1, !tbaa !55
  %niter222.next.3 = add nuw i32 %niter222, 4     ; 2 uses
  %niter222.ncmp.3 = icmp eq i32 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %png_do_write_swap_alpha.exit.loopexit198.unr-lcssa, label %.lr.ph84.i, !llvm.loop !19

bb.ao:                                            ; preds = %bb.am
  br i1 %.not93.i54, label %png_do_write_swap_alpha.exit, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.ao
  %xtraiter212 = and i32 %i.jz, 3                 ; 3 uses
  %i.kr = icmp ult i32 %i.jz, 4
  br i1 %i.kr, label %.lr.ph.i55.epil.preheader, label %.lr.ph.i55.preheader.new

.lr.ph.i55.preheader.new:                         ; preds = %.lr.ph.i55.preheader
  %unroll_iter215 = and i32 %i.jz, -4
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.i55.preheader.new
  %.06579.i = phi ptr [ %i.iv, %.lr.ph.i55.preheader.new ], [ %i.lb, %.lr.ph.i55 ] ; 6 uses
  %niter216 = phi i32 [ 0, %.lr.ph.i55.preheader.new ], [ %niter216.next.3, %.lr.ph.i55 ]
  %i.ks = getelementptr i8, ptr %.06579.i, i64 4  ; 2 uses
  %i.kt = load <4 x i8>, ptr %.06579.i, align 1, !tbaa !55
  %i.ku = shufflevector <4 x i8> %i.kt, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.ku, ptr %.06579.i, align 1, !tbaa !55
  %i.kv = getelementptr i8, ptr %.06579.i, i64 8  ; 2 uses
  %i.kw = load <4 x i8>, ptr %i.ks, align 1, !tbaa !55
  %i.kx = shufflevector <4 x i8> %i.kw, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.kx, ptr %i.ks, align 1, !tbaa !55
  %i.ky = getelementptr i8, ptr %.06579.i, i64 12 ; 2 uses
  %i.kz = load <4 x i8>, ptr %i.kv, align 1, !tbaa !55
  %i.la = shufflevector <4 x i8> %i.kz, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.la, ptr %i.kv, align 1, !tbaa !55
  %i.lb = getelementptr i8, ptr %.06579.i, i64 16 ; 2 uses
  %i.lc = load <4 x i8>, ptr %i.ky, align 1, !tbaa !55
  %i.ld = shufflevector <4 x i8> %i.lc, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.ld, ptr %i.ky, align 1, !tbaa !55
  %niter216.next.3 = add nuw i32 %niter216, 4     ; 2 uses
  %niter216.ncmp.3 = icmp eq i32 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %png_do_write_swap_alpha.exit.loopexit199.unr-lcssa, label %.lr.ph.i55, !llvm.loop !20

png_do_write_swap_alpha.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph92.i
  %lcmp.mod231.not = icmp eq i32 %xtraiter229, 0
  br i1 %lcmp.mod231.not, label %png_do_write_swap_alpha.exit, label %.lr.ph92.i.epil.preheader

.lr.ph92.i.epil.preheader:                        ; preds = %png_do_write_swap_alpha.exit.loopexit.unr-lcssa, %.lr.ph92.i.preheader
  %.091.i.epil.init = phi ptr [ %i.iv, %.lr.ph92.i.preheader ], [ %i.jm, %png_do_write_swap_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod232 = icmp ne i32 %xtraiter229, 0
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph92.i.epil

.lr.ph92.i.epil:                                  ; preds = %.lr.ph92.i.epil, %.lr.ph92.i.epil.preheader
  %.091.i.epil = phi ptr [ %i.le, %.lr.ph92.i.epil ], [ %.091.i.epil.init, %.lr.ph92.i.epil.preheader ] ; 3 uses
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph92.i.epil ], [ 0, %.lr.ph92.i.epil.preheader ]
  %i.le = getelementptr i8, ptr %.091.i.epil, i64 4
  %i.lf = load <4 x i8>, ptr %.091.i.epil, align 1, !tbaa !55
  %i.lg = shufflevector <4 x i8> %i.lf, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.lg, ptr %.091.i.epil, align 1, !tbaa !55
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %png_do_write_swap_alpha.exit, label %.lr.ph92.i.epil, !llvm.loop !21

png_do_write_swap_alpha.exit.loopexit197.unr-lcssa: ; preds = %.lr.ph88.i
  %lcmp.mod225.not = icmp eq i32 %xtraiter223, 0
  br i1 %lcmp.mod225.not, label %png_do_write_swap_alpha.exit, label %.lr.ph88.i.epil.preheader
end_hunk_0
begin_hunk_1_@png_do_write_transformations:bb.a
  br i1 %i.mp, label %.lr.ph63.i.epil.preheader, label %.lr.ph63.i.preheader.new

.lr.ph63.i.preheader.new:                         ; preds = %.lr.ph63.i.preheader
  %unroll_iter251 = and i32 %i.ma, -2
  br label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i, %.lr.ph63.i.preheader.new
  %.04861.i = phi ptr [ %i.lu, %.lr.ph63.i.preheader.new ], [ %i.na, %.lr.ph63.i ] ; 5 uses
  %niter252 = phi i32 [ 0, %.lr.ph63.i.preheader.new ], [ %niter252.next.1, %.lr.ph63.i ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.04861.i, i64 6 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.04861.i, i64 7 ; 2 uses
  %i.ms = load i8, ptr %i.mq, align 1, !tbaa !55
  %i.mt = xor i8 %i.ms, -1
  store i8 %i.mt, ptr %i.mq, align 1, !tbaa !55
  %i.mu = load i8, ptr %i.mr, align 1, !tbaa !55
  %i.mv = xor i8 %i.mu, -1
  store i8 %i.mv, ptr %i.mr, align 1, !tbaa !55
  %i.mw = getelementptr inbounds nuw i8, ptr %.04861.i, i64 14 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.04861.i, i64 15 ; 2 uses
  %i.my = load i8, ptr %i.mw, align 1, !tbaa !55
  %i.mz = xor i8 %i.my, -1
  store i8 %i.mz, ptr %i.mw, align 1, !tbaa !55
  %i.na = getelementptr inbounds nuw i8, ptr %.04861.i, i64 16 ; 2 uses
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !55
  %i.nc = xor i8 %i.nb, -1
  store i8 %i.nc, ptr %i.mx, align 1, !tbaa !55
  %niter252.next.1 = add nuw i32 %niter252, 2     ; 2 uses
  %niter252.ncmp.1 = icmp eq i32 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %png_do_write_invert_alpha.exit.loopexit194.unr-lcssa, label %.lr.ph63.i, !llvm.loop !25

bb.at:                                            ; preds = %bb.ap
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !52
  %i.nf = icmp eq i8 %i.ne, 8
  %i.ng = load i32, ptr %1, align 8, !tbaa !54    ; 8 uses
  %.not67.i = icmp eq i32 %i.ng, 0                ; 2 uses
  br i1 %i.nf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br i1 %.not67.i, label %png_do_write_invert_alpha.exit, label %.lr.ph60.i.preheader

.lr.ph60.i.preheader:                             ; preds = %bb.au
  %xtraiter241 = and i32 %i.ng, 3                 ; 3 uses
  %i.nh = icmp ult i32 %i.ng, 4
  br i1 %i.nh, label %.lr.ph60.i.epil.preheader, label %.lr.ph60.i.preheader.new

.lr.ph60.i.preheader.new:                         ; preds = %.lr.ph60.i.preheader
  %unroll_iter245 = and i32 %i.ng, -4
  br label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %.04558.i = phi ptr [ %i.lu, %.lr.ph60.i.preheader.new ], [ %i.ns, %.lr.ph60.i ] ; 5 uses
  %niter246 = phi i32 [ 0, %.lr.ph60.i.preheader.new ], [ %niter246.next.3, %.lr.ph60.i ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.04558.i, i64 1 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !55
  %i.nk = xor i8 %i.nj, -1
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !55
  %i.nl = getelementptr i8, ptr %.04558.i, i64 3  ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !55
  %i.nn = xor i8 %i.nm, -1
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !55
  %i.no = getelementptr i8, ptr %.04558.i, i64 5  ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !55
  %i.nq = xor i8 %i.np, -1
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !55
  %i.nr = getelementptr i8, ptr %.04558.i, i64 7  ; 2 uses
  %i.ns = getelementptr i8, ptr %.04558.i, i64 8  ; 2 uses
  %i.nt = load i8, ptr %i.nr, align 1, !tbaa !55
  %i.nu = xor i8 %i.nt, -1
  store i8 %i.nu, ptr %i.nr, align 1, !tbaa !55
  %niter246.next.3 = add nuw i32 %niter246, 4     ; 2 uses
  %niter246.ncmp.3 = icmp eq i32 %niter246.next.3, %unroll_iter245
  br i1 %niter246.ncmp.3, label %png_do_write_invert_alpha.exit.loopexit195.unr-lcssa, label %.lr.ph60.i, !llvm.loop !26

bb.av:                                            ; preds = %bb.at
  br i1 %.not67.i, label %png_do_write_invert_alpha.exit, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %bb.av
  %xtraiter235 = and i32 %i.ng, 1
  %i.nv = icmp eq i32 %i.ng, 1
  br i1 %i.nv, label %.lr.ph.i58.epil.preheader, label %.lr.ph.i58.preheader.new

.lr.ph.i58.preheader.new:                         ; preds = %.lr.ph.i58.preheader
  %unroll_iter239 = and i32 %i.ng, -2
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader.new
  %.04355.i = phi ptr [ %i.lu, %.lr.ph.i58.preheader.new ], [ %i.og, %.lr.ph.i58 ] ; 5 uses
  %niter240 = phi i32 [ 0, %.lr.ph.i58.preheader.new ], [ %niter240.next.1, %.lr.ph.i58 ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.04355.i, i64 2 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.04355.i, i64 3 ; 2 uses
  %i.ny = load i8, ptr %i.nw, align 1, !tbaa !55
  %i.nz = xor i8 %i.ny, -1
  store i8 %i.nz, ptr %i.nw, align 1, !tbaa !55
  %i.oa = load i8, ptr %i.nx, align 1, !tbaa !55
  %i.ob = xor i8 %i.oa, -1
  store i8 %i.ob, ptr %i.nx, align 1, !tbaa !55
  %i.oc = getelementptr inbounds nuw i8, ptr %.04355.i, i64 6 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.04355.i, i64 7 ; 2 uses
  %i.oe = load i8, ptr %i.oc, align 1, !tbaa !55
  %i.of = xor i8 %i.oe, -1
  store i8 %i.of, ptr %i.oc, align 1, !tbaa !55
  %i.og = getelementptr inbounds nuw i8, ptr %.04355.i, i64 8 ; 2 uses
  %i.oh = load i8, ptr %i.od, align 1, !tbaa !55
  %i.oi = xor i8 %i.oh, -1
  store i8 %i.oi, ptr %i.od, align 1, !tbaa !55
  %niter240.next.1 = add nuw i32 %niter240, 2     ; 2 uses
  %niter240.ncmp.1 = icmp eq i32 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %png_do_write_invert_alpha.exit.loopexit196.unr-lcssa, label %.lr.ph.i58, !llvm.loop !27

png_do_write_invert_alpha.exit.loopexit.unr-lcssa: ; preds = %.lr.ph66.i
  %lcmp.mod255.not = icmp eq i32 %xtraiter253, 0
  br i1 %lcmp.mod255.not, label %png_do_write_invert_alpha.exit, label %.lr.ph66.i.epil.preheader

.lr.ph66.i.epil.preheader:                        ; preds = %png_do_write_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph66.i.preheader
  %.05064.i.epil.init = phi ptr [ %i.lu, %.lr.ph66.i.preheader ], [ %i.mm, %png_do_write_invert_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod256 = icmp ne i32 %xtraiter253, 0
  tail call void @llvm.assume(i1 %lcmp.mod256)
  br label %.lr.ph66.i.epil

.lr.ph66.i.epil:                                  ; preds = %.lr.ph66.i.epil, %.lr.ph66.i.epil.preheader
  %.05064.i.epil = phi ptr [ %i.ok, %.lr.ph66.i.epil ], [ %.05064.i.epil.init, %.lr.ph66.i.epil.preheader ] ; 2 uses
  %epil.iter254 = phi i32 [ %epil.iter254.next, %.lr.ph66.i.epil ], [ 0, %.lr.ph66.i.epil.preheader ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.05064.i.epil, i64 3 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.05064.i.epil, i64 4
  %i.ol = load i8, ptr %i.oj, align 1, !tbaa !55
  %i.om = xor i8 %i.ol, -1
  store i8 %i.om, ptr %i.oj, align 1, !tbaa !55
  %epil.iter254.next = add i32 %epil.iter254, 1   ; 2 uses
  %epil.iter254.cmp.not = icmp eq i32 %epil.iter254.next, %xtraiter253
  br i1 %epil.iter254.cmp.not, label %png_do_write_invert_alpha.exit, label %.lr.ph66.i.epil, !llvm.loop !28

png_do_write_invert_alpha.exit.loopexit194.unr-lcssa: ; preds = %.lr.ph63.i
  %lcmp.mod249.not = icmp eq i32 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %png_do_write_invert_alpha.exit, label %.lr.ph63.i.epil.preheader

.lr.ph63.i.epil.preheader:                        ; preds = %png_do_write_invert_alpha.exit.loopexit194.unr-lcssa, %.lr.ph63.i.preheader
  %.04861.i.epil.init = phi ptr [ %i.lu, %.lr.ph63.i.preheader ], [ %i.na, %png_do_write_invert_alpha.exit.loopexit194.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i32 %i.ma to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.on = getelementptr inbounds nuw i8, ptr %.04861.i.epil.init, i64 6 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.04861.i.epil.init, i64 7 ; 2 uses
  %i.op = load i8, ptr %i.on, align 1, !tbaa !55
  %i.oq = xor i8 %i.op, -1
  store i8 %i.oq, ptr %i.on, align 1, !tbaa !55
  %i.or = load i8, ptr %i.oo, align 1, !tbaa !55
  %i.os = xor i8 %i.or, -1
  store i8 %i.os, ptr %i.oo, align 1, !tbaa !55
  br label %png_do_write_invert_alpha.exit

png_do_write_invert_alpha.exit.loopexit195.unr-lcssa: ; preds = %.lr.ph60.i
  %lcmp.mod243.not = icmp eq i32 %xtraiter241, 0
  br i1 %lcmp.mod243.not, label %png_do_write_invert_alpha.exit, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %png_do_write_invert_alpha.exit.loopexit195.unr-lcssa, %.lr.ph60.i.preheader
  %.04558.i.epil.init = phi ptr [ %i.lu, %.lr.ph60.i.preheader ], [ %i.ns, %png_do_write_invert_alpha.exit.loopexit195.unr-lcssa ]
  %lcmp.mod244 = icmp ne i32 %xtraiter241, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %.lr.ph60.i.epil

.lr.ph60.i.epil:                                  ; preds = %.lr.ph60.i.epil, %.lr.ph60.i.epil.preheader
  %.04558.i.epil = phi ptr [ %i.ou, %.lr.ph60.i.epil ], [ %.04558.i.epil.init, %.lr.ph60.i.epil.preheader ] ; 2 uses
  %epil.iter242 = phi i32 [ %epil.iter242.next, %.lr.ph60.i.epil ], [ 0, %.lr.ph60.i.epil.preheader ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.04558.i.epil, i64 1 ; 2 uses
  %i.ou = getelementptr i8, ptr %.04558.i.epil, i64 2
  %i.ov = load i8, ptr %i.ot, align 1, !tbaa !55
  %i.ow = xor i8 %i.ov, -1
  store i8 %i.ow, ptr %i.ot, align 1, !tbaa !55
  %epil.iter242.next = add i32 %epil.iter242, 1   ; 2 uses
  %epil.iter242.cmp.not = icmp eq i32 %epil.iter242.next, %xtraiter241
  br i1 %epil.iter242.cmp.not, label %png_do_write_invert_alpha.exit, label %.lr.ph60.i.epil, !llvm.loop !29

png_do_write_invert_alpha.exit.loopexit196.unr-lcssa: ; preds = %.lr.ph.i58
  %lcmp.mod237.not = icmp eq i32 %xtraiter235, 0
  br i1 %lcmp.mod237.not, label %png_do_write_invert_alpha.exit, label %.lr.ph.i58.epil.preheader

.lr.ph.i58.epil.preheader:                        ; preds = %png_do_write_invert_alpha.exit.loopexit196.unr-lcssa, %.lr.ph.i58.preheader
  %.04355.i.epil.init = phi ptr [ %i.lu, %.lr.ph.i58.preheader ], [ %i.og, %png_do_write_invert_alpha.exit.loopexit196.unr-lcssa ] ; 2 uses
  %lcmp.mod238 = trunc i32 %i.ng to i1
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.ox = getelementptr inbounds nuw i8, ptr %.04355.i.epil.init, i64 2 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.04355.i.epil.init, i64 3 ; 2 uses
  %i.oz = load i8, ptr %i.ox, align 1, !tbaa !55
  %i.pa = xor i8 %i.oz, -1
  store i8 %i.pa, ptr %i.ox, align 1, !tbaa !55
  %i.pb = load i8, ptr %i.oy, align 1, !tbaa !55
  %i.pc = xor i8 %i.pb, -1
  store i8 %i.pc, ptr %i.oy, align 1, !tbaa !55
  br label %png_do_write_invert_alpha.exit

png_do_write_invert_alpha.exit:                   ; preds = %.lr.ph.i58.epil.preheader, %png_do_write_invert_alpha.exit.loopexit196.unr-lcssa, %png_do_write_invert_alpha.exit.loopexit195.unr-lcssa, %.lr.ph60.i.epil, %.lr.ph63.i.epil.preheader, %png_do_write_invert_alpha.exit.loopexit194.unr-lcssa, %png_do_write_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph66.i.epil, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %png_do_write_swap_alpha.exit
  %i.pd = load i32, ptr %i.d, align 4, !tbaa !46  ; 2 uses
  %i.pe = and i32 %i.pd, 1
  %.not47 = icmp eq i32 %i.pe, 0
  br i1 %.not47, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %png_do_write_invert_alpha.exit
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !48
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  tail call void @png_do_bgr(ptr noundef %1, ptr noundef nonnull %i.ph) #6
  %.pre132 = load i32, ptr %i.d, align 4, !tbaa !46
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %png_do_write_invert_alpha.exit
  %i.pi = phi i32 [ %.pre132, %bb.aw ], [ %i.pd, %png_do_write_invert_alpha.exit ]
  %i.pj = and i32 %i.pi, 32
  %.not48 = icmp eq i32 %i.pj, 0
  br i1 %.not48, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !48
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  tail call void @png_do_invert(ptr noundef %1, ptr noundef nonnull %i.pm) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %bb.ay, %bb.ax
  ret void
}

declare void @png_do_strip_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !56}
!9 = distinct !{!9, !56}
!10 = distinct !{!10, !56}
!11 = distinct !{!11, !56}
!12 = distinct !{!12, !56}
!13 = distinct !{!13, !56}
!14 = distinct !{!14, !56}
!15 = distinct !{!15, !56}
!16 = distinct !{!16, !56}
!17 = distinct !{!17, !56}
!18 = distinct !{!18, !56}
!19 = distinct !{!19, !56}
!20 = distinct !{!20, !56}
!21 = distinct !{!21, !66}
!22 = distinct !{!22, !66}
!23 = distinct !{!23, !66}
!24 = distinct !{!24, !56}
!25 = distinct !{!25, !56}
!26 = distinct !{!26, !56}
!27 = distinct !{!27, !56}
!28 = distinct !{!28, !66}
!29 = distinct !{!29, !66}
!30 = !{!"any pointer", !4, i64 0}
!31 = !{!"p1 _ZTS13__jmp_buf_tag", !30, i64 0}
!32 = !{!"long", !4, i64 0}
!33 = !{!"p1 omnipotent char", !30, i64 0}
!34 = !{!"p1 _ZTS14internal_state", !30, i64 0}
!35 = !{!"z_stream_s", !33, i64 0, !5, i64 8, !32, i64 16, !33, i64 24, !5, i64 32, !32, i64 40, !33, i64 48, !34, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !5, i64 88, !32, i64 96, !32, i64 104}
!36 = !{!"p1 _ZTS22png_compression_buffer", !30, i64 0}
!37 = !{!"p1 _ZTS16png_color_struct", !30, i64 0}
!38 = !{!"short", !4, i64 0}
!39 = !{!"png_color_16_struct", !4, i64 0, !38, i64 2, !38, i64 4, !38, i64 6, !38, i64 8}
!40 = !{!"png_xy", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!41 = !{!"any p2 pointer", !30, i64 0}
!42 = !{!"p2 short", !41, i64 0}
!43 = !{!"png_color_8_struct", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4}
!44 = !{!"png_unknown_chunk_t", !4, i64 0, !33, i64 8, !32, i64 16, !4, i64 24}
!45 = !{!"png_struct_def", !4, i64 0, !30, i64 200, !31, i64 208, !32, i64 216, !30, i64 224, !30, i64 232, !30, i64 240, !30, i64 248, !30, i64 256, !30, i64 264, !30, i64 272, !30, i64 280, !30, i64 288, !4, i64 296, !4, i64 297, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !35, i64 320, !36, i64 432, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !32, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !33, i64 552, !33, i64 560, !33, i64 568, !33, i64 576, !32, i64 584, !5, i64 592, !5, i64 596, !37, i64 600, !38, i64 608, !5, i64 612, !38, i64 616, !4, i64 618, !4, i64 619, !4, i64 620, !4, i64 621, !4, i64 622, !4, i64 623, !4, i64 624, !4, i64 625, !4, i64 626, !4, i64 627, !4, i64 628, !4, i64 629, !4, i64 630, !4, i64 631, !4, i64 632, !38, i64 634, !4, i64 636, !5, i64 640, !39, i64 644, !39, i64 654, !30, i64 664, !5, i64 672, !5, i64 676, !40, i64 680, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !33, i64 736, !42, i64 744, !33, i64 752, !33, i64 760, !42, i64 768, !42, i64 776, !43, i64 784, !43, i64 789, !33, i64 800, !39, i64 808, !30, i64 824, !30, i64 832, !30, i64 840, !30, i64 848, !30, i64 856, !33, i64 864, !33, i64 872, !33, i64 880, !33, i64 888, !5, i64 896, !5, i64 900, !32, i64 904, !32, i64 912, !32, i64 920, !32, i64 928, !5, i64 936, !5, i64 940, !33, i64 944, !33, i64 952, !5, i64 960, !4, i64 964, !5, i64 996, !30, i64 1000, !30, i64 1008, !5, i64 1016, !5, i64 1020, !33, i64 1024, !4, i64 1032, !4, i64 1033, !38, i64 1034, !38, i64 1036, !33, i64 1040, !5, i64 1048, !4, i64 1052, !30, i64 1056, !30, i64 1064, !30, i64 1072, !33, i64 1080, !33, i64 1088, !33, i64 1096, !4, i64 1104, !5, i64 1108, !5, i64 1112, !5, i64 1116, !32, i64 1120, !44, i64 1128, !32, i64 1160, !33, i64 1168, !32, i64 1176, !5, i64 1184, !5, i64 1188, !33, i64 1192, !4, i64 1200}
!46 = !{!45, !5, i64 308}
!47 = !{!45, !30, i64 280}
!48 = !{!45, !33, i64 560}
!49 = !{!45, !5, i64 304}
!50 = !{!45, !4, i64 624}
!51 = !{!"png_row_info_struct", !5, i64 0, !32, i64 8, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!52 = !{!51, !4, i64 17}
!53 = !{!51, !4, i64 18}
!54 = !{!51, !5, i64 0}
!55 = !{!4, !4, i64 0}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!51, !4, i64 19}
!58 = !{!51, !32, i64 8}
!59 = !{!51, !4, i64 16}
!60 = !{!43, !4, i64 0}
!61 = !{!43, !4, i64 1}
!62 = !{!5, !5, i64 0}
!63 = !{!43, !4, i64 2}
!64 = !{!43, !4, i64 3}
!65 = !{!43, !4, i64 4}
!66 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
