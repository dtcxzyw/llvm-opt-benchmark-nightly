Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbtrd?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSBTRD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b9 = internal global double 0.000000e+00, align 8
@c_b10 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dsbtrd_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef captures(none) initializes((0, 4)) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 27 uses
  %i.f = alloca i32, align 4                      ; 30 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 15 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca double, align 8                   ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 28 uses
  %i.n = alloca i32, align 4                      ; 28 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  %i.q = load i32, ptr %5, align 4, !tbaa !8      ; 31 uses
  %narrow = xor i32 %i.q, -1
  %i.r = sext i32 %narrow to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %4, i64 %i.r ; 62 uses
  %i.t = getelementptr inbounds i8, ptr %6, i64 -8 ; 36 uses
  %i.u = getelementptr inbounds i8, ptr %7, i64 -8 ; 16 uses
  %i.v = load i32, ptr %9, align 4, !tbaa !8      ; 9 uses
  %narrow661 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow661 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %8, i64 %i.w ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %10, i64 -8 ; 22 uses
  %i.z = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.z, 0                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %i.ab = icmp ne i32 %i.aa, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = phi i1 [ true, %bb.a ], [ %i.ab, %bb.b ] ; 4 uses
  %i.ad = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %i.ae = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 5 uses
  store i32 %i.af, ptr %i.n, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.p, align 4, !tbaa !8
  %i.ah = load i32, ptr %5, align 4, !tbaa !8
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.j, align 4, !tbaa !8
  store i32 0, ptr %11, align 4, !tbaa !8
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %.not657 = icmp eq i32 %i.aj, 0
  br i1 %.not657, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not658 = icmp eq i32 %i.ad, 0                 ; 2 uses
  br i1 %.not658, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %.not659 = icmp eq i32 %i.ak, 0
  br i1 %.not659, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %.not922 = icmp sgt i32 %i.ap, %i.ae
  br i1 %.not922, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %9, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.al, i32 1)
  %i.ar = icmp slt i32 %i.aq, %spec.select
  %or.cond = select i1 %i.ar, i1 %i.ac, i1 false
  br i1 %or.cond, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.pr = load i32, ptr %11, align 4, !tbaa !8     ; 2 uses
  %.not660 = icmp eq i32 %.pr, 0
  br i1 %.not660, label %bb.l, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %bb.f ], [ -4, %bb.h ], [ -6, %bb.i ], [ -3, %bb.g ], [ -10, %bb.j ] ; 2 uses
  store i32 %.sink, ptr %11, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.as = phi i32 [ %.pr, %bb.k ], [ %.sink, %.thread.sink.split ]
  %i.at = sub nsw i32 0, %i.as
  store i32 %i.at, ptr %i.d, align 4, !tbaa !8
  %i.au = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.av = icmp eq i32 %i.al, 0
  br i1 %i.av, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b9, ptr noundef nonnull @c_b10, ptr noundef %8, ptr noundef nonnull %9) #5
  %.pre = load i32, ptr %5, align 4, !tbaa !8
  %.pre890 = load i32, ptr %2, align 4, !tbaa !8
  %.pre891 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %.pre891, %bb.n ], [ %i.an, %bb.m ] ; 5 uses
  %i.ax = phi i32 [ %.pre890, %bb.n ], [ %i.al, %bb.m ] ; 9 uses
  %i.ay = phi i32 [ %.pre, %bb.n ], [ %i.ap, %bb.m ]
  %i.az = mul nsw i32 %i.ay, %i.af
  store i32 %i.az, ptr %i.h, align 4, !tbaa !8
  %i.ba = add i32 %i.ax, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.aw) ; 10 uses
  %i.bb = icmp sgt i32 %i.aw, 1                   ; 2 uses
  br i1 %.not658, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.bb, label %bb.q, label %.loopexit733

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.m, align 4, !tbaa !8
  %.not683765 = icmp slt i32 %i.ax, 3
  br i1 %.not683765, label %.loopexit733.thread, label %.lr.ph761.us.preheader

.lr.ph761.us.preheader:                           ; preds = %bb.q
  %i.bc = add nsw i32 %i.ax, -2
  %i.bd = add i32 %., 1
  %i.be = add nsw i32 %., 2
  %i.bf = sext i32 %i.q to i64                    ; 3 uses
  %12 = sext i32 %i.bd to i64
  %i.bg = sext i32 %i.bc to i64
  br label %.lr.ph761.us

.lr.ph761.us:                                     ; preds = %.lr.ph761.us.preheader, %._crit_edge762.us
  %indvars.iv849 = phi i64 [ 1, %.lr.ph761.us.preheader ], [ %indvars.iv.next850, %._crit_edge762.us ] ; 5 uses
  %.0638.neg770.us = phi i32 [ -1, %.lr.ph761.us.preheader ], [ %i.li, %._crit_edge762.us ] ; 2 uses
  %.0608769.us = phi i32 [ 1, %.lr.ph761.us.preheader ], [ %.2610.us, %._crit_edge762.us ]
  %.0612768.us = phi i32 [ %i.be, %.lr.ph761.us.preheader ], [ %.2614.us, %._crit_edge762.us ]
  %.0620767.us = phi i32 [ 1, %.lr.ph761.us.preheader ], [ %.2622.us, %._crit_edge762.us ]
  %i.bh = add nsw i32 %.0638.neg770.us, 1
  %i.bi = trunc nuw nsw i64 %indvars.iv849 to i32
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph761.us, %._crit_edge.us
  %indvars.iv846 = phi i64 [ %12, %.lr.ph761.us ], [ %indvars.iv.next847, %._crit_edge.us ] ; 9 uses
  %.1609759.us = phi i32 [ %.0608769.us, %.lr.ph761.us ], [ %.2610.us, %._crit_edge.us ] ; 2 uses
  %.1613758.us = phi i32 [ %.0612768.us, %.lr.ph761.us ], [ %.2614.us, %._crit_edge.us ] ; 2 uses
  %.1621757.us = phi i32 [ %.0620767.us, %.lr.ph761.us ], [ %.2622.us, %._crit_edge.us ] ; 4 uses
  %i.bj = add nsw i32 %.1613758.us, %.            ; 6 uses
  %i.bk = add nsw i32 %.1609759.us, %.            ; 11 uses
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !8
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %.loopexit731.us

bb.s:                                             ; preds = %bb.r
  %i.bn = add nsw i32 %i.bj, -1
  %i.bo = mul nsw i32 %i.bn, %i.q
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.s, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = sext i32 %i.bj to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bs ; 2 uses
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.br, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.n) #5
  %i.bv = load i32, ptr %i.m, align 4, !tbaa !8   ; 2 uses
  %i.bw = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.bx = shl i32 %i.bw, 1
  %i.by = add nsw i32 %i.bx, -1
  %.not687.us = icmp slt i32 %i.bv, %i.by
  br i1 %.not687.us, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = add nsw i32 %i.bw, -1
  store i32 %i.bz, ptr %i.e, align 4, !tbaa !8
  %.not689734.us = icmp slt i32 %i.bw, 2
  br i1 %.not689734.us, label %.loopexit731.us, label %.lr.ph.us

bb.u:                                             ; preds = %.lr.ph.us, %bb.u
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %gep941 = getelementptr [8 x i8], ptr %invariant.gep940, i64 %indvars.iv
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %gep, ptr noundef nonnull %i.h, ptr noundef %gep941, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.n) #5
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !8
  %i.cb = sext i32 %i.ca to i64
  %.not689.us.not = icmp slt i64 %indvars.iv, %i.cb
  br i1 %.not689.us.not, label %bb.u, label %.loopexit731.us, !llvm.loop !9

bb.v:                                             ; preds = %bb.s
  %i.cc = add nsw i32 %i.bv, -1
  %i.cd = load i32, ptr %i.n, align 4, !tbaa !8   ; 3 uses
  %i.ce = mul nsw i32 %i.cd, %i.cc                ; 3 uses
  %i.cf = add nsw i32 %i.ce, %i.bj
  store i32 %i.cf, ptr %i.e, align 4, !tbaa !8
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !8
  %i.cg = icmp slt i32 %i.cd, 0
  %i.ch = icmp slt i32 %i.ce, 1
  %i.ci = icmp sgt i32 %i.ce, -1
  %.in688736.us = select i1 %i.cg, i1 %i.ch, i1 %i.ci
  br i1 %.in688736.us, label %.lr.ph738.us, label %.loopexit731.us

.lr.ph738.us:                                     ; preds = %bb.v, %.lr.ph738.us
  %.0645737.us = phi i32 [ %i.cw, %.lr.ph738.us ], [ %i.bj, %bb.v ] ; 4 uses
  %i.cj = add nsw i32 %.0645737.us, -1
  %i.ck = mul nsw i32 %i.cj, %i.q
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.s, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %i.co = mul nsw i32 %.0645737.us, %i.q
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr %i.s, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = sext i32 %.0645737.us to i64            ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cs
  call void @drot_(ptr noundef nonnull %i.p, ptr noundef %i.cn, ptr noundef nonnull @c__1, ptr noundef %i.cr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu) #5
  %i.cv = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.cw = add nsw i32 %i.cv, %.0645737.us         ; 3 uses
  %i.cx = icmp slt i32 %i.cv, 0
  %i.cy = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cz = icmp sge i32 %i.cw, %i.cy
  %i.da = icmp sle i32 %i.cw, %i.cy
  %.in688.us = select i1 %i.cx, i1 %i.cz, i1 %i.da
  br i1 %.in688.us, label %.lr.ph738.us, label %.loopexit731.us, !llvm.loop !11

.loopexit731.us:                                  ; preds = %bb.u, %.lr.ph738.us, %bb.t, %bb.v, %bb.r
  %i.db = icmp eq i64 %indvars.iv846, 2           ; 2 uses
  br i1 %i.db, label %thread-pre-split708.us, label %bb.w

bb.w:                                             ; preds = %.loopexit731.us
  %i.dc = load i32, ptr %2, align 4, !tbaa !8
  %i.dd = add i32 %i.bh, %i.dc
  %13 = sext i32 %i.dd to i64
  %.not691.us = icmp sgt i64 %indvars.iv846, %13
  br i1 %.not691.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = load i32, ptr %3, align 4, !tbaa !8
  %14 = trunc nsw i64 %indvars.iv846 to i32       ; 2 uses
  %i.df = sub nsw i32 %i.de, %14                  ; 2 uses
  %i.dg = add nuw nsw i64 %indvars.iv846, %indvars.iv849 ; 2 uses
  %15 = add nsw i64 %i.dg, -2
  %16 = mul nsw i64 %15, %i.bf                    ; 2 uses
  %17 = trunc nsw i64 %16 to i32                  ; 2 uses
  %i.dh = add i32 %17, 3
  %i.di = add i32 %i.dh, %i.df
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dj
  %18 = add nsw i64 %i.dg, -1                     ; 3 uses
  %19 = mul nsw i64 %18, %i.bf                    ; 2 uses
  %20 = trunc nsw i64 %19 to i32
  %i.dl = add i32 %20, 2
  %i.dm = add i32 %i.dl, %i.df
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dn
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %18 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %18 ; 2 uses
  call void @dlartg_(ptr noundef %i.dk, ptr noundef %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.k) #5
  %i.dr = load double, ptr %i.k, align 8, !tbaa !12
  %i.ds = load i32, ptr %3, align 4, !tbaa !8
  %i.dt = sub nsw i32 %i.ds, %14                  ; 2 uses
  %i.du = add nsw i32 %i.dt, 3
  %21 = sext i32 %i.du to i64                     ; 2 uses
  %22 = getelementptr [8 x i8], ptr %i.s, i64 %16
  %i.dv = getelementptr [8 x i8], ptr %22, i64 %21
  store double %i.dr, ptr %i.dv, align 8, !tbaa !12
  %23 = trunc i64 %indvars.iv846 to i32
  %i.dw = add i32 %23, -3
  store i32 %i.dw, ptr %i.f, align 4, !tbaa !8
  %i.dx = add i32 %17, 4
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dz
  %24 = getelementptr [8 x i8], ptr %i.s, i64 %19
  %i.eb = getelementptr [8 x i8], ptr %24, i64 %21
  call void @drot_(ptr noundef nonnull %i.f, ptr noundef %i.ea, ptr noundef nonnull @c__1, ptr noundef %i.eb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ec = load i32, ptr %i.m, align 4, !tbaa !8
  %i.ed = add nsw i32 %i.ec, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.m, align 4, !tbaa !8
  %i.ee = add nsw i32 %.1613758.us, -1
  br label %bb.z

thread-pre-split708.us:                           ; preds = %.loopexit731.us
  %.pr709.us = load i32, ptr %i.m, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split708.us, %bb.y
  %i.ef = phi i32 [ %.pr709.us, %thread-pre-split708.us ], [ %i.ed, %bb.y ]
  %.2614.us = phi i32 [ %i.bj, %thread-pre-split708.us ], [ %i.ee, %bb.y ] ; 18 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.aa, label %.loopexit730.us

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i32, ptr %i.n, align 4, !tbaa !8   ; 2 uses
  %i.ei = add nsw i32 %.2614.us, -1
  %i.ej = mul nsw i32 %i.ei, %i.q
  %i.ek = add nsw i32 %i.eh, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.el
  %i.en = mul nsw i32 %.2614.us, %i.q             ; 2 uses
  %i.eo = add nsw i32 %i.eh, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ep
  %i.er = load i32, ptr %3, align 4, !tbaa !8
  %i.es = add nsw i32 %i.er, %i.en
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.et
  %i.ev = sext i32 %.2614.us to i64               ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ev
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ev
  call void @dlar2v_(ptr noundef nonnull %i.m, ptr noundef %i.em, ptr noundef %i.eq, ptr noundef %i.eu, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.n) #5
  %.pre892 = load i32, ptr %i.m, align 4, !tbaa !8 ; 4 uses
  %i.ey = icmp sgt i32 %.pre892, 0
  br i1 %i.ey, label %bb.ab, label %.loopexit730.us

bb.ab:                                            ; preds = %bb.aa
  %i.ez = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.fa = shl i32 %i.ez, 1
  %.not692.us = icmp sgt i32 %i.fa, %.pre892
  br i1 %.not692.us, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.f, align 4, !tbaa !8
  %.not696739.us = icmp slt i32 %i.ez, 2
  br i1 %.not696739.us, label %.loopexit730.us, label %.lr.ph741.us

bb.ad:                                            ; preds = %.lr.ph741.us, %bb.af
  %i.fc = phi i32 [ %i.fb, %.lr.ph741.us ], [ %i.ft, %bb.af ]
  %i.fd = phi i32 [ %.pre892, %.lr.ph741.us ], [ %i.fu, %bb.af ] ; 2 uses
  %.1627740.us = phi i32 [ 1, %.lr.ph741.us ], [ %i.fv, %bb.af ] ; 5 uses
  %i.fe = add nsw i32 %.1627740.us, %i.bk
  %i.ff = load i32, ptr %2, align 4, !tbaa !8
  %i.fg = icmp sgt i32 %i.fe, %i.ff
  %i.fh = sext i1 %i.fg to i32
  %storemerge704.us = add nsw i32 %i.fd, %i.fh    ; 2 uses
  store i32 %storemerge704.us, ptr %i.o, align 4, !tbaa !8
  %i.fi = icmp sgt i32 %storemerge704.us, 0
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fj = load i32, ptr %3, align 4, !tbaa !8
  %i.fk = sub nsw i32 %i.fj, %.1627740.us
  %i.fl = add nsw i32 %.1627740.us, %.2614.us
  %i.fm = mul nsw i32 %i.fl, %i.q
  %i.fn = add i32 %i.fk, %i.fm                    ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fo
  %i.fq = add i32 %i.fn, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fr
  call void @dlartv_(ptr noundef nonnull %i.o, ptr noundef %i.fp, ptr noundef nonnull %i.h, ptr noundef %i.fs, ptr noundef nonnull %i.h, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lb, ptr noundef nonnull %i.n) #5
  %.pre893 = load i32, ptr %i.m, align 4
  %.pre895 = load i32, ptr %i.f, align 4, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ft = phi i32 [ %.pre895, %bb.ae ], [ %i.fc, %bb.ad ] ; 2 uses
  %i.fu = phi i32 [ %.pre893, %bb.ae ], [ %i.fd, %bb.ad ]
  %i.fv = add nuw nsw i32 %.1627740.us, 1
  %.not696.us.not = icmp slt i32 %.1627740.us, %i.ft
  br i1 %.not696.us.not, label %bb.ad, label %.loopexit730.us, !llvm.loop !14

bb.ag:                                            ; preds = %bb.ab
  %i.fw = load i32, ptr %i.n, align 4, !tbaa !8   ; 3 uses
  %i.fx = add nsw i32 %.pre892, -2
  %i.fy = mul nsw i32 %i.fw, %i.fx                ; 3 uses
  %i.fz = add nsw i32 %i.fy, %.2614.us            ; 2 uses
  %.not693.us = icmp slt i32 %i.fy, 0
  br i1 %.not693.us, label %.loopexit729.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.fz, ptr %i.f, align 4, !tbaa !8
  store i32 %i.fw, ptr %i.e, align 4, !tbaa !8
  %i.ga = icmp sgt i32 %i.fw, -1
  %i.gb = icmp eq i32 %i.fy, 0
  %.in694742.us = or i1 %i.ga, %i.gb
  br i1 %.in694742.us, label %.lr.ph744.us, label %.loopexit729.us

.lr.ph744.us:                                     ; preds = %bb.ah, %.lr.ph744.us
  %.0743.us = phi i32 [ %i.gq, %.lr.ph744.us ], [ %.2614.us, %bb.ah ] ; 3 uses
  %i.gc = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.gd = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gd, ptr %i.g, align 4, !tbaa !8
  %i.ge = add nsw i32 %.0743.us, 1
  %i.gf = mul nsw i32 %i.ge, %i.q                 ; 2 uses
  %i.gg = add nsw i32 %i.gd, %i.gf
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gh
  %i.gj = add nsw i32 %i.gc, %i.gf
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gk
  %i.gm = sext i32 %.0743.us to i64               ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gm
  %i.go = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.gm
  call void @drot_(ptr noundef nonnull %i.g, ptr noundef %i.gi, ptr noundef nonnull %i.j, ptr noundef %i.gl, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.go) #5
  %i.gp = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %i.gq = add nsw i32 %i.gp, %.0743.us            ; 3 uses
  %i.gr = icmp slt i32 %i.gp, 0
  %i.gs = load i32, ptr %i.f, align 4             ; 2 uses
  %i.gt = icmp sge i32 %i.gq, %i.gs
  %i.gu = icmp sle i32 %i.gq, %i.gs
  %.in694.us = select i1 %i.gr, i1 %i.gt, i1 %i.gu
  br i1 %.in694.us, label %.lr.ph744.us, label %.loopexit729.us, !llvm.loop !15

.loopexit729.us:                                  ; preds = %.lr.ph744.us, %bb.ah, %bb.ag
  %i.gv = load i32, ptr %i.p, align 4, !tbaa !8
  %i.gw = load i32, ptr %2, align 4, !tbaa !8
  %i.gx = sub nsw i32 %i.gw, %i.bk                ; 2 uses
  store i32 %i.gx, ptr %i.f, align 4, !tbaa !8
  %i.gy = call i32 @llvm.smin.i32(i32 %i.gv, i32 %i.gx) ; 2 uses
  store i32 %i.gy, ptr %i.i, align 4, !tbaa !8
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %bb.ai, label %.loopexit730.us

bb.ai:                                            ; preds = %.loopexit729.us
  %i.ha = load i32, ptr %i.n, align 4, !tbaa !8
  %i.hb = add nsw i32 %i.ha, %i.fz                ; 2 uses
  %i.hc = load i32, ptr %3, align 4, !tbaa !8
  %i.hd = add nsw i32 %i.hb, 1
  %i.he = mul nsw i32 %i.hd, %i.q
  %i.hf = add i32 %i.he, %i.hc                    ; 2 uses
  %i.hg = add i32 %i.hf, -1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hh
  %i.hj = sext i32 %i.hf to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hj
  %i.hl = sext i32 %i.hb to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hl
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.hl
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.hi, ptr noundef nonnull %i.j, ptr noundef %i.hk, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn) #5
  br label %.loopexit730.us

.loopexit730.us:                                  ; preds = %bb.af, %bb.z, %bb.ac, %bb.ai, %.loopexit729.us, %bb.aa
  br i1 %i.ac, label %bb.aj, label %.loopexit727.us

bb.aj:                                            ; preds = %.loopexit730.us
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ho = call i32 @llvm.smax.i32(i32 %.1621757.us, i32 %i.bk) ; 4 uses
  %i.hp = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  store i32 %i.bk, ptr %i.e, align 4, !tbaa !8
  %i.hq = load i32, ptr %i.n, align 4, !tbaa !8   ; 2 uses
  store i32 %i.hq, ptr %i.f, align 4, !tbaa !8
  %i.hr = icmp slt i32 %i.hq, 0
  %i.hs = icmp sge i32 %.2614.us, %i.bk
  %i.ht = icmp sle i32 %.2614.us, %i.bk
  %.in700745.us = select i1 %i.hr, i1 %i.hs, i1 %i.ht
  br i1 %.in700745.us, label %.lr.ph749.us.preheader, label %.loopexit727.us

.lr.ph749.us.preheader:                           ; preds = %bb.ak
  %i.hu = trunc i64 %indvars.iv846 to i32
  %25 = add i32 %i.hu, -3
  %i.hv = mul nsw i32 %i.hp, %i.bi
  %i.hw = add nsw i32 %i.hv, 1
  %i.hx = select i1 %i.db, i32 %i.hp, i32 0
  %spec.select705.us = add nsw i32 %i.hw, %i.hx
  %i.hy = call i32 @llvm.smin.i32(i32 %spec.select705.us, i32 %i.ho)
  %26 = icmp slt i64 %indvars.iv846, 4
  %27 = select i1 %26, i32 0, i32 %25
  br label %.lr.ph749.us

.lr.ph749.us:                                     ; preds = %.lr.ph749.us.preheader, %.lr.ph749.us
  %.1748.us = phi i32 [ %i.ii, %.lr.ph749.us ], [ %i.hy, %.lr.ph749.us.preheader ] ; 2 uses
  %.0618747.us = phi i32 [ %i.ib, %.lr.ph749.us ], [ %27, %.lr.ph749.us.preheader ] ; 2 uses
  %.0632746.us = phi i32 [ %i.iw, %.lr.ph749.us ], [ %.2614.us, %.lr.ph749.us.preheader ] ; 5 uses
  %i.hz = load i32, ptr %i.p, align 4, !tbaa !8
  %i.ia = sdiv i32 %.0618747.us, %i.hz
  %i.ib = add nsw i32 %.0618747.us, 1
  %.neg702.us = add i32 %.0632746.us, %.0638.neg770.us
  %i.ic = add i32 %.neg702.us, %i.ia
  %i.id = call i32 @llvm.smax.i32(i32 %i.ic, i32 1) ; 3 uses
  %i.ie = add nsw i32 %.1748.us, 1
  %i.if = sub i32 %i.ie, %i.id
  store i32 %i.if, ptr %i.l, align 4, !tbaa !8
  %i.ig = load i32, ptr %3, align 4, !tbaa !8
  %i.ih = add nsw i32 %i.ig, %.1748.us            ; 2 uses
  store i32 %i.ih, ptr %i.g, align 4, !tbaa !8
  %i.ii = call i32 @llvm.smin.i32(i32 %i.ih, i32 %i.ho)
  %i.ij = add nsw i32 %.0632746.us, -1
  %i.ik = mul nsw i32 %i.ij, %i.v
  %i.il = add nsw i32 %i.id, %i.ik
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.im
  %i.io = mul nsw i32 %.0632746.us, %i.v
  %i.ip = add nsw i32 %i.id, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.iq
  %i.is = sext i32 %.0632746.us to i64            ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.is
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.is
  call void @drot_(ptr noundef nonnull %i.l, ptr noundef %i.in, ptr noundef nonnull @c__1, ptr noundef %i.ir, ptr noundef nonnull @c__1, ptr noundef nonnull %i.it, ptr noundef nonnull %i.iu) #5
  %i.iv = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.iw = add nsw i32 %i.iv, %.0632746.us         ; 3 uses
  %i.ix = icmp slt i32 %i.iv, 0
  %i.iy = load i32, ptr %i.e, align 4             ; 2 uses
  %i.iz = icmp sge i32 %i.iw, %i.iy
  %i.ja = icmp sle i32 %i.iw, %i.iy
  %.in700.us = select i1 %i.ix, i1 %i.iz, i1 %i.ja
  br i1 %.in700.us, label %.lr.ph749.us, label %.loopexit727.us, !llvm.loop !16

bb.al:                                            ; preds = %bb.aj
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !8
  %i.jb = load i32, ptr %i.n, align 4, !tbaa !8   ; 2 uses
  store i32 %i.jb, ptr %i.e, align 4, !tbaa !8
  %i.jc = icmp slt i32 %i.jb, 0
  %i.jd = icmp sge i32 %.2614.us, %i.bk
  %i.je = icmp sle i32 %.2614.us, %i.bk
  %.in697750.us = select i1 %i.jc, i1 %i.jd, i1 %i.je
  br i1 %.in697750.us, label %.lr.ph752.us, label %.loopexit727.us

.lr.ph752.us:                                     ; preds = %bb.al, %.lr.ph752.us
  %.1633751.us = phi i32 [ %i.js, %.lr.ph752.us ], [ %.2614.us, %bb.al ] ; 4 uses
  %i.jf = add nsw i32 %.1633751.us, -1
  %i.jg = mul nsw i32 %i.jf, %i.v
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr [8 x i8], ptr %i.x, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  %i.jk = mul nsw i32 %.1633751.us, %i.v
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr [8 x i8], ptr %i.x, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = sext i32 %.1633751.us to i64            ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.jo
  call void @drot_(ptr noundef nonnull %2, ptr noundef %i.jj, ptr noundef nonnull @c__1, ptr noundef %i.jn, ptr noundef nonnull @c__1, ptr noundef nonnull %i.jp, ptr noundef nonnull %i.jq) #5
  %i.jr = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %i.js = add nsw i32 %i.jr, %.1633751.us         ; 3 uses
  %i.jt = icmp slt i32 %i.jr, 0
  %i.ju = load i32, ptr %i.f, align 4             ; 2 uses
  %i.jv = icmp sge i32 %i.js, %i.ju
  %i.jw = icmp sle i32 %i.js, %i.ju
  %.in697.us = select i1 %i.jt, i1 %i.jv, i1 %i.jw
  br i1 %.in697.us, label %.lr.ph752.us, label %.loopexit727.us, !llvm.loop !17

.loopexit727.us:                                  ; preds = %.lr.ph749.us, %.lr.ph752.us, %bb.ak, %bb.al, %.loopexit730.us
  %.2622.us = phi i32 [ %.1621757.us, %bb.al ], [ %.1621757.us, %.loopexit730.us ], [ %.1621757.us, %.lr.ph752.us ], [ %i.ho, %bb.ak ], [ %i.ho, %.lr.ph749.us ] ; 2 uses
  %i.jx = add nsw i32 %i.bk, %.
  %i.jy = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.jz = icmp sgt i32 %i.jx, %i.jy
  br i1 %i.jz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.loopexit727.us
  %i.ka = load i32, ptr %i.m, align 4, !tbaa !8
  %i.kb = add nsw i32 %i.ka, -1
  store i32 %i.kb, ptr %i.m, align 4, !tbaa !8
  %i.kc = add nsw i32 %.1609759.us, -1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit727.us
  %.2610.us = phi i32 [ %i.kc, %bb.am ], [ %i.bk, %.loopexit727.us ] ; 6 uses
  store i32 %.2610.us, ptr %i.e, align 4, !tbaa !8
  %i.kd = load i32, ptr %i.n, align 4, !tbaa !8   ; 4 uses
  store i32 %i.kd, ptr %i.f, align 4, !tbaa !8
  %i.ke = icmp slt i32 %i.kd, 0                   ; 2 uses
  %i.kf = icmp sge i32 %.2614.us, %.2610.us
  %i.kg = icmp sle i32 %.2614.us, %.2610.us
  %.in701753.us = select i1 %i.ke, i1 %i.kf, i1 %i.kg
  br i1 %.in701753.us, label %.lr.ph755.us, label %._crit_edge.us

bb.ao:                                            ; preds = %.lr.ph755.us, %bb.ao
  %indvars.iv843 = phi i64 [ %i.ld, %.lr.ph755.us ], [ %indvars.iv.next844, %bb.ao ] ; 4 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv843
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !12
  %i.kj = add nsw i64 %indvars.iv843, %i.lf       ; 2 uses
  %i.kk = mul nsw i64 %i.kj, %i.bf
  %i.kl = getelementptr [8 x i8], ptr %i.s, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 8      ; 3 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !12
  %i.ko = fmul double %i.ki, %i.kn
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.kj
  store double %i.ko, ptr %i.kp, align 8, !tbaa !12
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv843
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !12
  %i.ks = load double, ptr %i.km, align 8, !tbaa !12
  %i.kt = fmul double %i.kr, %i.ks
  store double %i.kt, ptr %i.km, align 8, !tbaa !12
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, %i.le ; 3 uses
  %i.ku = icmp sge i64 %indvars.iv.next844, %i.lg
  %i.kv = icmp sle i64 %indvars.iv.next844, %i.lg
  %.in701.us = select i1 %i.ke, i1 %i.ku, i1 %i.kv
  br i1 %.in701.us, label %bb.ao, label %._crit_edge.us, !llvm.loop !18

._crit_edge.us:                                   ; preds = %bb.ao, %bb.an
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -1
  %i.kw = icmp sgt i64 %indvars.iv846, 2
  br i1 %i.kw, label %bb.r, label %._crit_edge762.us, !llvm.loop !19

.lr.ph.us:                                        ; preds = %bb.t
  %i.kx = mul nsw i32 %i.bj, %i.q
  %i.ky = sext i32 %i.kx to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.bp
  %invariant.gep940 = getelementptr [8 x i8], ptr %i.s, i64 %i.ky
  br label %bb.u

.lr.ph741.us:                                     ; preds = %bb.ac
  %i.kz = sext i32 %.2614.us to i64               ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kz
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.kz
  br label %bb.ad

.lr.ph755.us:                                     ; preds = %bb.an
  %i.lc = load i32, ptr %3, align 4, !tbaa !8
  %i.ld = sext i32 %.2614.us to i64
  %i.le = sext i32 %i.kd to i64
  %i.lf = sext i32 %i.lc to i64
  %i.lg = sext i32 %.2610.us to i64               ; 2 uses
  br label %bb.ao

._crit_edge762.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next850 = add nuw nsw i64 %indvars.iv849, 1
  %.not683.us.not = icmp slt i64 %indvars.iv849, %i.bg
  %i.lh = trunc i64 %indvars.iv849 to i32
  %i.li = xor i32 %i.lh, -1
  br i1 %.not683.us.not, label %.lr.ph761.us, label %.loopexit733.loopexit, !llvm.loop !20

.loopexit733.loopexit:                            ; preds = %._crit_edge762.us
  %.pre896 = load i32, ptr %3, align 4, !tbaa !8
  br label %.loopexit733

.loopexit733:                                     ; preds = %.loopexit733.loopexit, %bb.p
  %i.lj = phi i32 [ %i.af, %bb.p ], [ %i.kd, %.loopexit733.loopexit ] ; 3 uses
  %i.lk = phi i32 [ %i.ax, %bb.p ], [ %i.jy, %.loopexit733.loopexit ] ; 5 uses
  %i.ll = phi i32 [ %i.aw, %bb.p ], [ %.pre896, %.loopexit733.loopexit ] ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.loopexit733.thread, label %bb.ap

.loopexit733.thread:                              ; preds = %bb.q, %.loopexit733
  %i.ln = phi i32 [ %i.ll, %.loopexit733 ], [ %i.aw, %bb.q ]
  %i.lo = phi i32 [ %i.lk, %.loopexit733 ], [ %i.ax, %bb.q ] ; 9 uses
  %i.lp = phi i32 [ %i.lj, %.loopexit733 ], [ %i.af, %bb.q ] ; 5 uses
  %.not685.not775 = icmp sgt i32 %i.lo, 1
  br i1 %.not685.not775, label %iter.check, label %.loopexit725

iter.check:                                       ; preds = %.loopexit733.thread
  %i.lq = sext i32 %i.q to i64                    ; 9 uses
  %i.lr = zext nneg i32 %i.ln to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.lo to i64   ; 4 uses
  %invariant.gep942 = getelementptr [8 x i8], ptr %i.s, i64 %i.lr ; 11 uses
  %i.ls = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp ugt i32 %i.lo, 4
  %ident.check.not = icmp eq i32 %i.q, 1
  %or.cond1071 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond1071, label %vector.memcheck, label %.lr.ph777.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.lt = shl nuw nsw i64 %i.lr, 3
  %i.lu = add i64 %i.lt, %i.b
  %i.lv = sub i64 %i.lu, %i.c
  %diff.check = icmp ugt i64 %i.lv, -128
  br i1 %diff.check, label %.lr.ph777.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check965 = icmp ult i32 %i.lo, 17
  br i1 %min.iters.check965, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lw = and i64 %i.ls, 12
  %n.vec = and i64 %i.ls, -16                     ; 4 uses
  %i.lx = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ly = getelementptr [8 x i8], ptr %invariant.gep942, i64 %index ; 4 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 16
  %i.ma = getelementptr i8, ptr %i.ly, i64 48
  %i.mb = getelementptr i8, ptr %i.ly, i64 80
  %i.mc = getelementptr i8, ptr %i.ly, i64 112
  %wide.load = load <4 x double>, ptr %i.lz, align 8, !tbaa !12
  %wide.load966 = load <4 x double>, ptr %i.ma, align 8, !tbaa !12
  %wide.load967 = load <4 x double>, ptr %i.mb, align 8, !tbaa !12
  %wide.load968 = load <4 x double>, ptr %i.mc, align 8, !tbaa !12
  %i.md = getelementptr [8 x i8], ptr %7, i64 %index ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 96
  store <4 x double> %wide.load, ptr %i.md, align 8, !tbaa !12
  store <4 x double> %wide.load966, ptr %i.me, align 8, !tbaa !12
  store <4 x double> %wide.load967, ptr %i.mf, align 8, !tbaa !12
  store <4 x double> %wide.load968, ptr %i.mg, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mh = icmp eq i64 %index.next, %n.vec
  br i1 %i.mh, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ls, %n.vec
  br i1 %cmp.n, label %iter.check994, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph777.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec969 = and i64 %i.ls, -4                   ; 3 uses
  %i.mi = or disjoint i64 %n.vec969, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index970 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next972, %vec.epilog.vector.body ] ; 3 uses
  %i.mj = getelementptr [8 x i8], ptr %invariant.gep942, i64 %index970
  %i.mk = getelementptr i8, ptr %i.mj, i64 16
  %wide.load971 = load <4 x double>, ptr %i.mk, align 8, !tbaa !12
  %i.ml = getelementptr [8 x i8], ptr %7, i64 %index970
  store <4 x double> %wide.load971, ptr %i.ml, align 8, !tbaa !12
  %index.next972 = add nuw i64 %index970, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next972, %n.vec969
  br i1 %i.mm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n973 = icmp eq i64 %i.ls, %n.vec969
  br i1 %cmp.n973, label %iter.check994, label %.lr.ph777.preheader

.lr.ph777.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv856.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.lx, %vec.epilog.iter.check ], [ %i.mi, %vec.epilog.middle.block ] ; 4 uses
  %i.mn = sub nsw i64 %wide.trip.count, %indvars.iv856.ph
  %xtraiter = and i64 %i.mn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph777.prol.loopexit, label %.lr.ph777.prol

.lr.ph777.prol:                                   ; preds = %.lr.ph777.preheader, %.lr.ph777.prol
  %indvars.iv856.prol = phi i64 [ %indvars.iv.next857.prol, %.lr.ph777.prol ], [ %indvars.iv856.ph, %.lr.ph777.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph777.prol ], [ 0, %.lr.ph777.preheader ]
  %indvars.iv.next857.prol = add nuw nsw i64 %indvars.iv856.prol, 1 ; 3 uses
  %i.mo = mul nsw i64 %indvars.iv.next857.prol, %i.lq
  %gep943.prol = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.mo
  %i.mp = load double, ptr %gep943.prol, align 8, !tbaa !12
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv856.prol
  store double %i.mp, ptr %i.mq, align 8, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph777.prol.loopexit, label %.lr.ph777.prol, !llvm.loop !26

.lr.ph777.prol.loopexit:                          ; preds = %.lr.ph777.prol, %.lr.ph777.preheader
  %indvars.iv856.unr = phi i64 [ %indvars.iv856.ph, %.lr.ph777.preheader ], [ %indvars.iv.next857.prol, %.lr.ph777.prol ]
  %i.mr = sub nsw i64 %indvars.iv856.ph, %wide.trip.count
  %i.ms = icmp ugt i64 %i.mr, -8
  br i1 %i.ms, label %iter.check994, label %.lr.ph777

.lr.ph777:                                        ; preds = %.lr.ph777.prol.loopexit, %.lr.ph777
  %indvars.iv856 = phi i64 [ %indvars.iv.next857.7, %.lr.ph777 ], [ %indvars.iv856.unr, %.lr.ph777.prol.loopexit ] ; 10 uses
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1
  %i.mt = mul nsw i64 %indvars.iv.next857, %i.lq
  %gep943 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.mt
  %i.mu = load double, ptr %gep943, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv856
  store double %i.mu, ptr %i.mv, align 8, !tbaa !12
  %indvars.iv.next857.1 = add nuw nsw i64 %indvars.iv856, 2 ; 2 uses
  %i.mw = mul nsw i64 %indvars.iv.next857.1, %i.lq
  %gep943.1 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.mw
  %i.mx = load double, ptr %gep943.1, align 8, !tbaa !12
  %i.my = getelementptr [8 x i8], ptr %7, i64 %indvars.iv856
  store double %i.mx, ptr %i.my, align 8, !tbaa !12
  %indvars.iv.next857.2 = add nuw nsw i64 %indvars.iv856, 3 ; 2 uses
  %i.mz = mul nsw i64 %indvars.iv.next857.2, %i.lq
  %gep943.2 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.mz
  %i.na = load double, ptr %gep943.2, align 8, !tbaa !12
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next857.1
  store double %i.na, ptr %i.nb, align 8, !tbaa !12
  %indvars.iv.next857.3 = add nuw nsw i64 %indvars.iv856, 4 ; 2 uses
  %i.nc = mul nsw i64 %indvars.iv.next857.3, %i.lq
  %gep943.3 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nc
  %i.nd = load double, ptr %gep943.3, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next857.2
  store double %i.nd, ptr %i.ne, align 8, !tbaa !12
  %indvars.iv.next857.4 = add nuw nsw i64 %indvars.iv856, 5 ; 2 uses
  %i.nf = mul nsw i64 %indvars.iv.next857.4, %i.lq
  %gep943.4 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nf
  %i.ng = load double, ptr %gep943.4, align 8, !tbaa !12
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next857.3
  store double %i.ng, ptr %i.nh, align 8, !tbaa !12
  %indvars.iv.next857.5 = add nuw nsw i64 %indvars.iv856, 6 ; 2 uses
  %i.ni = mul nsw i64 %indvars.iv.next857.5, %i.lq
  %gep943.5 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.ni
  %i.nj = load double, ptr %gep943.5, align 8, !tbaa !12
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next857.4
  store double %i.nj, ptr %i.nk, align 8, !tbaa !12
  %indvars.iv.next857.6 = add nuw nsw i64 %indvars.iv856, 7 ; 2 uses
  %i.nl = mul nsw i64 %indvars.iv.next857.6, %i.lq
  %gep943.6 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nl
  %i.nm = load double, ptr %gep943.6, align 8, !tbaa !12
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next857.5
  store double %i.nm, ptr %i.nn, align 8, !tbaa !12
  %indvars.iv.next857.7 = add nuw nsw i64 %indvars.iv856, 8 ; 3 uses
  %i.no = mul nsw i64 %indvars.iv.next857.7, %i.lq
  %gep943.7 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.no
  %i.np = load double, ptr %gep943.7, align 8, !tbaa !12
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next857.6
  store double %i.np, ptr %i.nq, align 8, !tbaa !12
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next857.7, %wide.trip.count
  br i1 %exitcond.not.7, label %iter.check994, label %.lr.ph777, !llvm.loop !28

bb.ap:                                            ; preds = %.loopexit733
  %.not684.not773 = icmp sgt i32 %i.lk, 1
  br i1 %.not684.not773, label %.lr.ph.preheader, label %.loopexit725

.lr.ph.preheader:                                 ; preds = %bb.ap
  %i.nr = add nsw i32 %i.lk, -1
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = shl nuw nsw i64 %i.ns, 3
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.nt, i1 false), !tbaa !12
  br label %iter.check994

.loopexit725:                                     ; preds = %bb.ap, %.loopexit733.thread
  %i.nu = phi i32 [ %i.lk, %bb.ap ], [ %i.lo, %.loopexit733.thread ]
  %i.nv = phi i32 [ %i.lj, %bb.ap ], [ %i.lp, %.loopexit733.thread ]
  %.not686778 = icmp slt i32 %i.nu, 1
  br i1 %.not686778, label %.loopexit, label %iter.check994

iter.check994:                                    ; preds = %.lr.ph777.prol.loopexit, %.lr.ph777, %middle.block, %vec.epilog.middle.block, %.lr.ph.preheader, %.loopexit725
  %i.nw = phi i32 [ %i.nv, %.loopexit725 ], [ %i.lj, %.lr.ph.preheader ], [ %i.lp, %middle.block ], [ %i.lp, %vec.epilog.middle.block ], [ %i.lp, %.lr.ph777 ], [ %i.lp, %.lr.ph777.prol.loopexit ]
  %i.nx = phi i32 [ 1, %.loopexit725 ], [ %i.lk, %.lr.ph.preheader ], [ %i.lo, %middle.block ], [ %i.lo, %vec.epilog.middle.block ], [ %i.lo, %.lr.ph777 ], [ %i.lo, %.lr.ph777.prol.loopexit ] ; 5 uses
  %i.ny = sext i32 %i.q to i64                    ; 9 uses
end_hunk_0
