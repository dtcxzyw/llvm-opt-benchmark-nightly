Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_thunder?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ThunderSetupDecode.module = internal constant [19 x i8] c"ThunderSetupDecode\00", align 16
@.str = private unnamed_addr constant [80 x i8] c"Wrong bitspersample value (%d), Thunder decoder only supports 4bits per sample.\00", align 1
@ThunderDecodeRow.module = internal constant [17 x i8] c"ThunderDecodeRow\00", align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"Fractional scanlines cannot be read\00", align 1
@ThunderDecode.module = internal constant [14 x i8] c"ThunderDecode\00", align 1
@twobitdeltas = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@threebitdeltas = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 -3, i32 -2, i32 -1], align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"%s data at scanline %lu (%lu != %lu)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Not enough\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Too much\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @TIFFInitThunderScan(ptr nofree noundef writeonly captures(none) initializes((936, 944), (984, 992), (1000, 1008)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr @ThunderSetupDecode, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr @ThunderDecodeRow, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr @ThunderDecodeRow, ptr %i.c, align 8, !tbaa !30
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ThunderSetupDecode(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i16, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %.not = icmp eq i16 %i.b, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @ThunderSetupDecode.module, ptr noundef nonnull @.str, i32 noundef %i.c) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ThunderDecodeRow(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32
  %i.c = srem i64 %2, %i.b
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  %.pre37 = load i64, ptr %i.g, align 8, !tbaa !34
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @ThunderDecodeRow.module, ptr noundef nonnull @.str.1) #4
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %ThunderDecode.exit
  %i.h = phi i64 [ %.pre37, %.lr.ph ], [ %.0119.lcssa.i, %ThunderDecode.exit ] ; 3 uses
  %i.i = phi ptr [ %.pre, %.lr.ph ], [ %.0120.lcssa.i, %ThunderDecode.exit ] ; 2 uses
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.ek, %ThunderDecode.exit ] ; 4 uses
  %.01324 = phi i64 [ %2, %.lr.ph ], [ %i.ej, %ThunderDecode.exit ]
  %i.j = load i32, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 8 uses
  %i.l = icmp sgt i64 %i.h, 0
  %i.m = icmp ne i32 %i.j, 0                      ; 2 uses
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %.lr.ph160.i, label %._crit_edge161.i

.lr.ph160.i:                                      ; preds = %bb.c, %bb.aj
  %.0105158.i = phi ptr [ %.7.i, %bb.aj ], [ %.025, %bb.c ] ; 20 uses
  %.0107157.i = phi i64 [ %.5112.i, %bb.aj ], [ 0, %bb.c ] ; 12 uses
  %.0113156.i = phi i32 [ %.5118.i, %bb.aj ], [ 0, %bb.c ] ; 8 uses
  %.0119155.i = phi i64 [ %i.r, %bb.aj ], [ %i.h, %bb.c ] ; 2 uses
  %.0120154.i = phi ptr [ %i.o, %bb.aj ], [ %i.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0120154.i, i64 1 ; 2 uses
  %i.p = load i8, ptr %.0120154.i, align 1, !tbaa !36 ; 3 uses
  %i.q = zext i8 %i.p to i32                      ; 9 uses
  %i.r = add nsw i64 %.0119155.i, -1              ; 2 uses
  %i.s = lshr i32 %i.q, 6
  switch i32 %i.s, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.j
    i32 2, label %bb.x
    i32 3, label %bb.ag
  ]

bb.d:                                             ; preds = %.lr.ph160.i
  %i.t = icmp eq i8 %i.p, 0
  br i1 %i.t, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %.0107157.i, 1
  %.not145.i = icmp eq i64 %i.u, 0
  br i1 %.not145.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %.0105158.i, align 1, !tbaa !36
  %i.w = trunc i32 %.0113156.i to i8
  %i.x = or i8 %i.v, %i.w                         ; 2 uses
  store i8 %i.x, ptr %.0105158.i, align 1, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %.0105158.i, i64 1
  %i.z = zext i8 %i.x to i32
  %i.aa = add nsw i64 %.0107157.i, 1
  %i.ab = add nsw i32 %i.q, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = shl i32 %.0113156.i, 4
  %i.ad = or i32 %i.ac, %.0113156.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1114.i = phi i32 [ %i.z, %bb.f ], [ %i.ad, %bb.g ] ; 3 uses
  %.1108.i = phi i64 [ %i.aa, %bb.f ], [ %.0107157.i, %bb.g ]
  %.1106.i = phi ptr [ %i.y, %bb.f ], [ %.0105158.i, %bb.g ] ; 4 uses
  %.0104.i = phi i32 [ %i.ab, %bb.f ], [ %i.q, %bb.g ] ; 4 uses
  %i.ae = zext nneg i32 %.0104.i to i64
  %i.af = add nsw i64 %.1108.i, %i.ae             ; 3 uses
  %i.ag = icmp sgt i64 %i.af, %i.k
  br i1 %i.ag, label %bb.aj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not196.i = icmp eq i32 %.0104.i, 0
  br i1 %.not196.i, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.ah = trunc i32 %.1114.i to i8
  %i.ai = add nsw i32 %.0104.i, -1                ; 2 uses
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1106.i, i8 %i.ah, i64 %i.al, i1 false), !tbaa !36
  %scevgep.i = getelementptr i8, ptr %.1106.i, i64 1
  %scevgep175.i = getelementptr i8, ptr %scevgep.i, i64 %i.ak ; 2 uses
  %i.am = add nsw i32 %.0104.i, -2
  %i.an = and i32 %i.ai, -2
  %i.ao = sub nsw i32 %i.am, %i.an
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.i, label %._crit_edge.thread.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds i8, ptr %scevgep175.i, i64 -1 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = and i8 %i.ar, -16
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !36
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.i, %._crit_edge.i, %.preheader.i
  %.3.i = phi ptr [ %i.aq, %bb.i ], [ %scevgep175.i, %._crit_edge.i ], [ %.1106.i, %.preheader.i ]
  %i.at = and i32 %.1114.i, 15
  br label %bb.aj

bb.j:                                             ; preds = %.lr.ph160.i
  %i.au = lshr i32 %i.q, 4
  %i.av = and i32 %i.au, 3                        ; 2 uses
  %.not136.i = icmp eq i32 %i.av, 2
  br i1 %.not136.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @twobitdeltas, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !37
  %i.az = add nsw i32 %i.ay, %.0113156.i
  %i.ba = and i32 %i.az, 15                       ; 3 uses
  %i.bb = add nsw i64 %.0107157.i, 1
  %i.bc = and i64 %.0107157.i, 1
  %.not137.i = icmp eq i64 %i.bc, 0
  br i1 %.not137.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.0105158.i, i64 1
  %i.be = load i8, ptr %.0105158.i, align 1, !tbaa !36
  %i.bf = trunc nuw nsw i32 %i.ba to i8
  %i.bg = or i8 %i.be, %i.bf
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %.tr138.i = trunc nuw nsw i32 %i.ba to i8
  %i.bh = shl nuw i8 %.tr138.i, 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi i8 [ %i.bh, %bb.m ], [ %i.bg, %bb.l ]
  %.4.ph.i = phi ptr [ %.0105158.i, %bb.m ], [ %i.bd, %bb.l ]
  store i8 %.sink.i, ptr %.0105158.i, align 1, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %bb.j
  %.2115.i = phi i32 [ %.0113156.i, %bb.j ], [ %i.ba, %.sink.split.i ] ; 2 uses
  %.2109.i = phi i64 [ %.0107157.i, %bb.j ], [ %i.bb, %.sink.split.i ] ; 5 uses
  %.4.i = phi ptr [ %.0105158.i, %bb.j ], [ %.4.ph.i, %.sink.split.i ] ; 6 uses
  %i.bi = lshr i32 %i.q, 2
  %i.bj = and i32 %i.bi, 3                        ; 2 uses
  %.not139.i = icmp eq i32 %i.bj, 2
  br i1 %.not139.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @twobitdeltas, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !37
  %i.bn = add nsw i32 %i.bm, %.2115.i
  %i.bo = and i32 %i.bn, 15                       ; 4 uses
  %i.bp = icmp slt i64 %.2109.i, %i.k
  br i1 %i.bp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bq = add nsw i64 %.2109.i, 1
  %i.br = and i64 %.2109.i, 1
  %.not140.i = icmp eq i64 %i.br, 0
  br i1 %.not140.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bt = load i8, ptr %.4.i, align 1, !tbaa !36
  %i.bu = trunc nuw nsw i32 %i.bo to i8
  %i.bv = or i8 %i.bt, %i.bu
  br label %.sink.split192.i

bb.r:                                             ; preds = %bb.p
  %.tr141.i = trunc nuw nsw i32 %i.bo to i8
  %i.bw = shl nuw i8 %.tr141.i, 4
  br label %.sink.split192.i

.sink.split192.i:                                 ; preds = %bb.r, %bb.q
  %.sink193.i = phi i8 [ %i.bw, %bb.r ], [ %i.bv, %bb.q ]
  %.5.ph.i = phi ptr [ %.4.i, %bb.r ], [ %i.bs, %bb.q ]
  store i8 %.sink193.i, ptr %.4.i, align 1, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %.sink.split192.i, %bb.o, %bb.n
  %.3116.i = phi i32 [ %i.bo, %bb.o ], [ %.2115.i, %bb.n ], [ %i.bo, %.sink.split192.i ] ; 2 uses
  %.3110.i = phi i64 [ %.2109.i, %bb.o ], [ %.2109.i, %bb.n ], [ %i.bq, %.sink.split192.i ] ; 5 uses
  %.5.i = phi ptr [ %.4.i, %bb.o ], [ %.4.i, %bb.n ], [ %.5.ph.i, %.sink.split192.i ] ; 7 uses
  %i.bx = and i32 %i.q, 3                         ; 2 uses
  %.not142.i = icmp eq i32 %i.bx, 2
  br i1 %.not142.i, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @twobitdeltas, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !37
  %i.cb = add nsw i32 %i.ca, %.3116.i
  %i.cc = and i32 %i.cb, 15                       ; 5 uses
  %i.cd = icmp slt i64 %.3110.i, %i.k
  br i1 %i.cd, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.ce = add nsw i64 %.3110.i, 1                 ; 2 uses
  %i.cf = and i64 %.3110.i, 1
  %.not143.i = icmp eq i64 %i.cf, 0
  br i1 %.not143.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  %i.ch = load i8, ptr %.5.i, align 1, !tbaa !36
  %i.ci = trunc nuw nsw i32 %i.cc to i8
  %i.cj = or i8 %i.ch, %i.ci
  store i8 %i.cj, ptr %.5.i, align 1, !tbaa !36
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  %.tr144.i = trunc nuw nsw i32 %i.cc to i8
  %i.ck = shl nuw i8 %.tr144.i, 4
  store i8 %i.ck, ptr %.5.i, align 1, !tbaa !36
  br label %bb.aj

bb.x:                                             ; preds = %.lr.ph160.i
  %i.cl = lshr i32 %i.q, 3
  %i.cm = and i32 %i.cl, 7                        ; 2 uses
  %.not131.i = icmp eq i32 %i.cm, 4
  br i1 %.not131.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @threebitdeltas, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !37
  %i.cq = add nsw i32 %i.cp, %.0113156.i
  %i.cr = and i32 %i.cq, 15                       ; 3 uses
  %i.cs = add nsw i64 %.0107157.i, 1
  %i.ct = and i64 %.0107157.i, 1
  %.not132.i = icmp eq i64 %i.ct, 0
  br i1 %.not132.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %.0105158.i, i64 1
  %i.cv = load i8, ptr %.0105158.i, align 1, !tbaa !36
  %i.cw = trunc nuw nsw i32 %i.cr to i8
  %i.cx = or i8 %i.cv, %i.cw
  br label %.sink.split194.i

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc nuw nsw i32 %i.cr to i8
  %i.cy = shl nuw i8 %.tr.i, 4
  br label %.sink.split194.i

.sink.split194.i:                                 ; preds = %bb.aa, %bb.z
  %.sink195.i = phi i8 [ %i.cy, %bb.aa ], [ %i.cx, %bb.z ]
  %.6.ph.i = phi ptr [ %.0105158.i, %bb.aa ], [ %i.cu, %bb.z ]
  store i8 %.sink195.i, ptr %.0105158.i, align 1, !tbaa !36
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split194.i, %bb.x
  %.4117.i = phi i32 [ %.0113156.i, %bb.x ], [ %i.cr, %.sink.split194.i ] ; 2 uses
  %.4111.i = phi i64 [ %.0107157.i, %bb.x ], [ %i.cs, %.sink.split194.i ] ; 5 uses
  %.6.i = phi ptr [ %.0105158.i, %bb.x ], [ %.6.ph.i, %.sink.split194.i ] ; 7 uses
  %i.cz = and i32 %i.q, 7                         ; 2 uses
  %.not133.i = icmp eq i32 %i.cz, 4
  br i1 %.not133.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @threebitdeltas, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dd = add nsw i32 %i.dc, %.4117.i
  %i.de = and i32 %i.dd, 15                       ; 5 uses
  %i.df = icmp slt i64 %.4111.i, %i.k
  br i1 %i.df, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.dg = add nsw i64 %.4111.i, 1                 ; 2 uses
  %i.dh = and i64 %.4111.i, 1
  %.not134.i = icmp eq i64 %i.dh, 0
  br i1 %.not134.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  %i.dj = load i8, ptr %.6.i, align 1, !tbaa !36
  %i.dk = trunc nuw nsw i32 %i.de to i8
  %i.dl = or i8 %i.dj, %i.dk
  store i8 %i.dl, ptr %.6.i, align 1, !tbaa !36
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %.tr135.i = trunc nuw nsw i32 %i.de to i8
  %i.dm = shl nuw i8 %.tr135.i, 4
  store i8 %i.dm, ptr %.6.i, align 1, !tbaa !36
  br label %bb.aj

bb.ag:                                            ; preds = %.lr.ph160.i
  %i.dn = and i32 %i.q, 15                        ; 3 uses
  %i.do = add nsw i64 %.0107157.i, 1              ; 2 uses
  %i.dp = and i64 %.0107157.i, 1
  %.not130.i = icmp eq i64 %i.dp, 0
  br i1 %.not130.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %.0105158.i, i64 1
  %i.dr = load i8, ptr %.0105158.i, align 1, !tbaa !36
  %i.ds = trunc nuw nsw i32 %i.dn to i8
  %i.dt = or i8 %i.dr, %i.ds
  store i8 %i.dt, ptr %.0105158.i, align 1, !tbaa !36
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.du = shl i8 %i.p, 4
  store i8 %i.du, ptr %.0105158.i, align 1, !tbaa !36
  br label %bb.aj

default.unreachable:                              ; preds = %.lr.ph160.i
  unreachable

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.t, %bb.s, %._crit_edge.thread.i, %bb.h, %bb.d
  %.5118.i = phi i32 [ %.0113156.i, %bb.d ], [ %.1114.i, %bb.h ], [ %i.at, %._crit_edge.thread.i ], [ %i.cc, %bb.v ], [ %i.cc, %bb.w ], [ %i.cc, %bb.t ], [ %.3116.i, %bb.s ], [ %i.de, %bb.ae ], [ %i.de, %bb.af ], [ %i.de, %bb.ac ], [ %.4117.i, %bb.ab ], [ %i.dn, %bb.ah ], [ %i.dn, %bb.ai ]
  %.5112.i = phi i64 [ %.0107157.i, %bb.d ], [ %i.af, %bb.h ], [ %i.af, %._crit_edge.thread.i ], [ %i.ce, %bb.v ], [ %i.ce, %bb.w ], [ %.3110.i, %bb.t ], [ %.3110.i, %bb.s ], [ %i.dg, %bb.ae ], [ %i.dg, %bb.af ], [ %.4111.i, %bb.ac ], [ %.4111.i, %bb.ab ], [ %i.do, %bb.ah ], [ %i.do, %bb.ai ] ; 3 uses
  %.7.i = phi ptr [ %.0105158.i, %bb.d ], [ %.1106.i, %bb.h ], [ %.3.i, %._crit_edge.thread.i ], [ %i.cg, %bb.v ], [ %.5.i, %bb.w ], [ %.5.i, %bb.t ], [ %.5.i, %bb.s ], [ %i.di, %bb.ae ], [ %.6.i, %bb.af ], [ %.6.i, %bb.ac ], [ %.6.i, %bb.ab ], [ %i.dq, %bb.ah ], [ %.0105158.i, %bb.ai ] ; 2 uses
  %i.dv = icmp samesign ugt i64 %.0119155.i, 1
  %i.dw = icmp slt i64 %.5112.i, %i.k             ; 2 uses
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph160.i, label %._crit_edge161.i

._crit_edge161.i:                                 ; preds = %bb.aj, %bb.c
  %.0120.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.o, %bb.aj ] ; 2 uses
  %.0119.lcssa.i = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.aj ] ; 2 uses
  %.0107.lcssa.i = phi i64 [ 0, %bb.c ], [ %.5112.i, %bb.aj ] ; 2 uses
  %.0105.lcssa.i = phi ptr [ %.025, %bb.c ], [ %.7.i, %bb.aj ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.m, %bb.c ], [ %i.dw, %bb.aj ]
  store ptr %.0120.lcssa.i, ptr %i.f, align 8, !tbaa !33
  store i64 %.0119.lcssa.i, ptr %i.g, align 8, !tbaa !34
  %.not.i = icmp eq i64 %.0107.lcssa.i, %i.k
  br i1 %.not.i, label %ThunderDecode.exit, label %ThunderDecode.exit.thread

ThunderDecode.exit.thread:                        ; preds = %._crit_edge161.i
  %i.dy = add nuw nsw i64 %i.k, 1
  %i.dz = lshr i64 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.025, i64 %i.dz
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %.0105.lcssa.i to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0105.lcssa.i, i8 0, i64 %i.ed, i1 false)
  %i.ee = select i1 %.lcssa.i, ptr @.str.3, ptr @.str.4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38
  %i.eh = zext i32 %i.eg to i64
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @ThunderDecode.module, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ee, i64 noundef %i.eh, i64 noundef %.0107.lcssa.i, i64 noundef range(i64 0, 4294967296) %i.k) #4
  br label %.loopexit

ThunderDecode.exit:                               ; preds = %._crit_edge161.i
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ej = sub nsw i64 %.01324, %i.ei              ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.025, i64 %i.ei
  %i.el = icmp sgt i64 %i.ej, 0
  br i1 %i.el, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %ThunderDecode.exit, %.preheader, %ThunderDecode.exit.thread, %bb.b
  %.012 = phi i32 [ 0, %bb.b ], [ 0, %ThunderDecode.exit.thread ], [ 1, %.preheader ], [ 1, %ThunderDecode.exit ]
  ret i32 %.012
}

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !9, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"p1 short", !9, i64 0}
!17 = !{!"p1 long", !9, i64 0}
!18 = !{!"", !13, i64 0, !13, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!19 = !{!"p1 float", !9, i64 0}
!20 = !{!"", !5, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !6, i64 60, !13, i64 64, !13, i64 66, !14, i64 72, !14, i64 80, !15, i64 88, !15, i64 92, !13, i64 96, !13, i64 98, !15, i64 100, !15, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !13, i64 140, !16, i64 144, !6, i64 152, !6, i64 156, !17, i64 160, !17, i64 168, !6, i64 176, !18, i64 184, !18, i64 216, !13, i64 248, !17, i64 256, !5, i64 264, !13, i64 268, !5, i64 272, !19, i64 296, !6, i64 304, !10, i64 312, !13, i64 320, !6, i64 324, !9, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !6, i64 360, !9, i64 368}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"p2 _ZTS10_TIFFField", !21, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !9, i64 0}
!24 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!25 = !{!"p1 _ZTS11client_info", !9, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !9, i64 0}
!27 = !{!"tiff", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !6, i64 64, !20, i64 72, !20, i64 448, !5, i64 824, !13, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !6, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !13, i64 888, !11, i64 896, !6, i64 904, !6, i64 908, !11, i64 912, !6, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !6, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !9, i64 1056, !9, i64 1064, !10, i64 1072, !11, i64 1080, !11, i64 1088, !10, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !10, i64 1128, !11, i64 1136, !10, i64 1144, !11, i64 1152, !9, i64 1160, !9, i64 1168, !9, i64 1176, !9, i64 1184, !9, i64 1192, !9, i64 1200, !9, i64 1208, !9, i64 1216, !9, i64 1224, !22, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !9, i64 1304, !9, i64 1312, !9, i64 1320, !9, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !6, i64 1360}
!28 = !{!27, !9, i64 936}
!29 = !{!27, !9, i64 984}
!30 = !{!27, !9, i64 1000}
!31 = !{!27, !13, i64 116}
!32 = !{!27, !11, i64 1080}
!33 = !{!27, !10, i64 1128}
!34 = !{!27, !11, i64 1136}
!35 = !{!27, !6, i64 88}
!36 = !{!5, !5, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!27, !6, i64 844}
end_hunk_0
