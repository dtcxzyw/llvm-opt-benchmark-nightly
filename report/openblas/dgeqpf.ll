begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DGEQPF\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1

; Function Attrs: nounwind uwtable
define void @dgeqpf_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = load i32, ptr %3, align 4, !tbaa !8      ; 10 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f ; 13 uses
  %i.h = getelementptr inbounds i8, ptr %4, i64 -4 ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %5, i64 -8 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %6, i64 -8 ; 10 uses
  store i32 0, ptr %7, align 4, !tbaa !8
  %i.k = load i32, ptr %0, align 4, !tbaa !8      ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %3, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %i.p = icmp slt i32 %i.o, %spec.select
  br i1 %i.p, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.c ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.c ]
  store i32 %.sink, ptr %7, align 4, !tbaa !8
  store i32 %.neg, ptr %i.a, align 4, !tbaa !8
  %i.q = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit270

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.m) ; 2 uses
  %i.s = tail call double @dlamch_(ptr noundef nonnull @.str.1) #5
  %i.t = tail call double @sqrt(double noundef %i.s) #5
  %i.u = load i32, ptr %1, align 4, !tbaa !8      ; 3 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !8
  %.not259271 = icmp slt i32 %i.u, 1
  br i1 %.not259271, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = sext i32 %i.e to i64
  %i.w = add nuw i32 %i.u, 1
  %wide.trip.count = zext i32 %i.w to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 7 uses
  %.0274 = phi i32 [ 1, %.lr.ph.preheader ], [ %.1, %bb.j ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %.not266 = icmp eq i32 %i.y, 0
  br i1 %.not266, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = zext i32 %.0274 to i64
  %.not267 = icmp eq i64 %indvars.iv, %i.z
  br i1 %.not267, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = mul nsw i64 %indvars.iv, %i.v
  %i.ab = getelementptr [8 x i8], ptr %i.g, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = mul nsw i32 %.0274, %i.e
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.g, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  tail call void @dswap_(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef nonnull @c__1, ptr noundef %i.ag, ptr noundef nonnull @c__1) #5
  %i.ah = sext i32 %.0274 to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  store i32 %i.aj, ptr %i.x, align 4, !tbaa !8
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.al, ptr %i.x, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = add nsw i32 %.0274, 1
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.an, ptr %i.x, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.am, %bb.h ], [ %.0274, %bb.i ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.j
  %i.ao = add nsw i32 %.1, -1                     ; 4 uses
  %i.ap = icmp sgt i32 %.1, 1
  br i1 %i.ap, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %._crit_edge
  %i.aq = load i32, ptr %0, align 4, !tbaa !8
  %.268 = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.aq)
  store i32 %.268, ptr %i.d, align 4, !tbaa !8
  call void @dgeqr2_(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7) #5
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !8   ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.l, label %._crit_edge.thread

bb.l:                                             ; preds = %bb.k
  %i.au = sub nsw i32 %i.as, %i.ar
  store i32 %i.au, ptr %i.a, align 4, !tbaa !8
  %i.av = add nsw i32 %i.ar, 1
  %i.aw = mul nsw i32 %i.av, %i.e
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.g, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  call void @dorm2r_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.az, ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %7) #5
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %bb.k, %bb.l, %._crit_edge
  %i.ba = phi i32 [ %i.ao, %._crit_edge ], [ %i.ao, %bb.k ], [ %i.ao, %bb.l ], [ 0, %bb.d ]
  %.0.lcssa316 = phi i32 [ %.1, %._crit_edge ], [ %.1, %bb.k ], [ %.1, %bb.l ], [ 1, %bb.d ] ; 5 uses
  %.not261 = icmp sgt i32 %.0.lcssa316, %i.r
  br i1 %.not261, label %.loopexit270, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread
  %i.bb = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !8
  %.not262275 = icmp sgt i32 %.0.lcssa316, %i.bb
  br i1 %.not262275, label %.lr.ph289, label %.lr.ph278.preheader

.lr.ph278.preheader:                              ; preds = %bb.m
  %i.bc = sext i32 %.0.lcssa316 to i64            ; 2 uses
  %i.bd = sext i32 %i.e to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.bc
  br label %.lr.ph278

.lr.ph278:                                        ; preds = %.lr.ph278.preheader, %.lr.ph278
  %indvars.iv293 = phi i64 [ %i.bc, %.lr.ph278.preheader ], [ %indvars.iv.next294, %.lr.ph278 ] ; 5 uses
  %i.be = load i32, ptr %0, align 4, !tbaa !8
  %i.bf = sub nsw i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !8
  %i.bg = mul nsw i64 %indvars.iv293, %i.bd
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = call double @dnrm2_(ptr noundef nonnull %i.b, ptr noundef %gep, ptr noundef nonnull @c__1) #5 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv293
  store double %i.bh, ptr %i.bi, align 8, !tbaa !11
  %i.bj = load i32, ptr %1, align 4, !tbaa !8
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv293
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  store double %i.bh, ptr %i.bm, align 8, !tbaa !11
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !8
  %i.bo = sext i32 %i.bn to i64
  %.not262.not = icmp slt i64 %indvars.iv293, %i.bo
  br i1 %.not262.not, label %.lr.ph278, label %.lr.ph289, !llvm.loop !13

.lr.ph289:                                        ; preds = %.lr.ph278, %bb.m
  store i32 %i.r, ptr %i.a, align 4, !tbaa !8
  %i.bp = add i32 %i.e, 1                         ; 2 uses
  %i.bq = sext i32 %i.e to i64                    ; 3 uses
  %i.br = sext i32 %.0.lcssa316 to i64
  br label %bb.n

.loopexit:                                        ; preds = %bb.z, %.thread317, %bb.t
  %indvars.iv.next302320 = phi i64 [ %indvars.iv.next302319, %.thread317 ], [ %indvars.iv.next302, %bb.t ], [ %indvars.iv.next302, %bb.z ]
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !8
  %i.bt = sext i32 %i.bs to i64
  %.not263.not = icmp slt i64 %indvars.iv301, %i.bt
  br i1 %.not263.not, label %bb.n, label %.loopexit270, !llvm.loop !14

bb.n:                                             ; preds = %.lr.ph289, %.loopexit
  %indvars.iv301 = phi i64 [ %i.br, %.lr.ph289 ], [ %indvars.iv.next302320, %.loopexit ] ; 19 uses
  %indvars.iv296.in = phi i32 [ %.0.lcssa316, %.lr.ph289 ], [ %indvars.iv296, %.loopexit ]
  %indvars.iv296 = add i32 %indvars.iv296.in, 1   ; 2 uses
  %indvars303 = trunc i64 %indvars.iv301 to i32   ; 9 uses
  %i.bu = sext i32 %indvars.iv296 to i64
  %i.bv = load i32, ptr %1, align 4, !tbaa !8
  %reass.sub = sub i32 %i.bv, %indvars303
  %i.bw = add i32 %reass.sub, 1
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !8
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv301 ; 2 uses
  %i.by = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bx, ptr noundef nonnull @c__1) #5
  %i.bz = trunc i64 %indvars.iv301 to i32
  %i.ca = add i32 %i.bz, -1
  %i.cb = add nsw i32 %i.ca, %i.by                ; 4 uses
  %.not264 = icmp eq i32 %i.cb, %indvars303
  br i1 %.not264, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = mul nsw i32 %i.cb, %i.e
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.g, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = mul nsw i64 %indvars.iv301, %i.bq
  %i.ch = getelementptr [8 x i8], ptr %i.g, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  call void @dswap_(ptr noundef nonnull %0, ptr noundef %i.cf, ptr noundef nonnull @c__1, ptr noundef %i.ci, ptr noundef nonnull @c__1) #5
  %i.cj = sext i32 %i.cb to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv301 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !8
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !8
  %i.co = load double, ptr %i.bx, align 8, !tbaa !11
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cj
  store double %i.co, ptr %i.cp, align 8, !tbaa !11
  %i.cq = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv301
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !11
  %i.cv = add nsw i32 %i.cq, %i.cb
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cy = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = icmp slt i64 %indvars.iv301, %i.cz
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %reass.sub290 = sub i32 %i.cy, %indvars303
  %i.db = add i32 %reass.sub290, 1
  store i32 %i.db, ptr %i.b, align 4, !tbaa !8
  %i.dc = mul nsw i64 %indvars.iv301, %i.bq
  %i.dd = mul nsw i32 %i.e, %indvars303
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv301
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv301
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %i.dc
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv301
  call void @dlarfg_(ptr noundef nonnull %i.b, ptr noundef %i.dg, ptr noundef %i.dj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dk) #5
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dl = mul i32 %i.cy, %i.bp
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cz
  call void @dlarfg_(ptr noundef nonnull @c__1, ptr noundef %i.dn, ptr noundef %i.dn, ptr noundef nonnull @c__1, ptr noundef nonnull %i.do) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dp = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv301, %i.dq
  br i1 %i.dr, label %bb.t, label %.thread317

.thread317:                                       ; preds = %bb.s
  store i32 %i.dp, ptr %i.b, align 4, !tbaa !8
  %indvars.iv.next302319 = add nsw i64 %indvars.iv301, 1
  br label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ds = mul i32 %i.bp, %indvars303
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dt ; 4 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.du, align 8, !tbaa !11
  %i.dw = load i32, ptr %0, align 4, !tbaa !8
  %reass.sub291 = sub i32 %i.dw, %indvars303
  %i.dx = add i32 %reass.sub291, 1
  store i32 %i.dx, ptr %i.b, align 4, !tbaa !8
  %i.dy = sub nsw i32 %i.dp, %indvars303
  store i32 %i.dy, ptr %i.c, align 4, !tbaa !8
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv301
  %i.ea = add nsw i32 %indvars303, 1
  %i.eb = mul nsw i32 %i.ea, %i.e
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv301
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = shl i32 %i.dp, 1
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr [8 x i8], ptr %i.j, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  call void @dlarf_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.du, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dz, ptr noundef %i.ee, ptr noundef nonnull %3, ptr noundef %i.ei) #5
  store double %i.dv, ptr %i.du, align 8, !tbaa !11
  %.pre = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %.pre305 = sext i32 %.pre to i64
  %i.ej = icmp slt i64 %indvars.iv301, %.pre305
  store i32 %.pre, ptr %i.b, align 4, !tbaa !8
  %indvars.iv.next302 = add nsw i64 %indvars.iv301, 1 ; 3 uses
  br i1 %i.ej, label %.lr.ph283.preheader, label %.loopexit

.lr.ph283.preheader:                              ; preds = %bb.t
  %invariant.gep321 = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv301
  %invariant.gep323 = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next302
  br label %.lr.ph283

.lr.ph283:                                        ; preds = %.lr.ph283.preheader, %bb.z
  %i.ek = phi i32 [ %.pre, %.lr.ph283.preheader ], [ %i.fs, %bb.z ] ; 3 uses
  %indvars.iv298 = phi i64 [ %i.bu, %.lr.ph283.preheader ], [ %indvars.iv.next299, %bb.z ] ; 6 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv298 ; 4 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !11 ; 4 uses
  %i.en = fcmp une double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.lr.ph283
  %i.eo = mul nsw i64 %indvars.iv298, %i.bq       ; 2 uses
  %gep322 = getelementptr [8 x i8], ptr %invariant.gep321, i64 %i.eo
  %i.ep = load double, ptr %gep322, align 8, !tbaa !11 ; 3 uses
  %i.eq = fcmp oge double %i.ep, 0.000000e+00
  %i.er = fneg double %i.ep
  %i.es = select i1 %i.eq, double %i.ep, double %i.er
  %i.et = fdiv double %i.es, %i.em                ; 2 uses
  %i.eu = fadd double %i.et, 1.000000e+00
  %i.ev = fsub double 1.000000e+00, %i.et
  %i.ew = fmul double %i.eu, %i.ev                ; 2 uses
  %i.ex = fcmp ole double %i.ew, 0.000000e+00
  %i.ey = select i1 %i.ex, double 0.000000e+00, double %i.ew ; 2 uses
  %i.ez = load i32, ptr %1, align 4, !tbaa !8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv298
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %i.fa ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !11
  %i.fe = fdiv double %i.em, %i.fd                ; 2 uses
  %i.ff = fmul double %i.fe, %i.fe
  %i.fg = fmul double %i.ff, %i.ey
  %i.fh = fcmp ugt double %i.fg, %i.t
  br i1 %i.fh, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fi = load i32, ptr %0, align 4, !tbaa !8
  %i.fj = sub nsw i32 %i.fi, %indvars303          ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.fj, ptr %i.c, align 4, !tbaa !8
  %gep324 = getelementptr [8 x i8], ptr %invariant.gep323, i64 %i.eo
  %i.fl = call double @dnrm2_(ptr noundef nonnull %i.c, ptr noundef %gep324, ptr noundef nonnull @c__1) #5 ; 2 uses
  store double %i.fl, ptr %i.el, align 8, !tbaa !11
  %i.fm = load i32, ptr %1, align 4, !tbaa !8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv298
  %i.fp = getelementptr [8 x i8], ptr %i.fo, i64 %i.fn
  store double %i.fl, ptr %i.fp, align 8, !tbaa !11
  %.pre304 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !11
  store double 0.000000e+00, ptr %i.fc, align 8, !tbaa !11
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.fq = call double @sqrt(double noundef %i.ey) #5
  %i.fr = fmul double %i.em, %i.fq
  store double %i.fr, ptr %i.el, align 8, !tbaa !11
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph283, %bb.w, %bb.x, %bb.y
  %i.fs = phi i32 [ %i.ek, %.lr.ph283 ], [ %.pre304, %bb.w ], [ %i.ek, %bb.x ], [ %i.ek, %bb.y ] ; 2 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, 1
  %i.ft = sext i32 %i.fs to i64
  %.not265.not = icmp slt i64 %indvars.iv298, %i.ft
  br i1 %.not265.not, label %.lr.ph283, label %.loopexit, !llvm.loop !15

.loopexit270:                                     ; preds = %.loopexit, %._crit_edge.thread, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
end_hunk_0
