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
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 27 uses
  %i.c = alloca i32, align 4                      ; 30 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 28 uses
  %i.k = alloca i32, align 4                      ; 28 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
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
  %i.n = load i32, ptr %5, align 4, !tbaa !42     ; 31 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %4, i64 %i.o ; 62 uses
  %i.q = getelementptr inbounds i8, ptr %6, i64 -8 ; 36 uses
  %i.r = getelementptr inbounds i8, ptr %7, i64 -8 ; 16 uses
  %i.s = load i32, ptr %9, align 4, !tbaa !42     ; 9 uses
  %narrow661 = xor i32 %i.s, -1
  %i.t = sext i32 %narrow661 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %8, i64 %i.t ; 8 uses
  %i.v = getelementptr inbounds i8, ptr %10, i64 -8 ; 22 uses
  %i.w = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.w, 0                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %i.y = icmp ne i32 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = phi i1 [ true, %bb.a ], [ %i.y, %bb.b ]  ; 4 uses
  %i.aa = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %i.ab = load i32, ptr %3, align 4, !tbaa !42    ; 3 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 5 uses
  store i32 %i.ac, ptr %i.k, align 4, !tbaa !42
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.m, align 4, !tbaa !42
  %i.ae = load i32, ptr %5, align 4, !tbaa !42
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.g, align 4, !tbaa !42
  store i32 0, ptr %11, align 4, !tbaa !42
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %.not657 = icmp eq i32 %i.ag, 0
  br i1 %.not657, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not658 = icmp eq i32 %i.aa, 0                 ; 2 uses
  br i1 %.not658, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %.not659 = icmp eq i32 %i.ah, 0
  br i1 %.not659, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = load i32, ptr %2, align 4, !tbaa !42    ; 4 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %5, align 4, !tbaa !42    ; 2 uses
  %.not922 = icmp sgt i32 %i.am, %i.ab
  br i1 %.not922, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %9, align 4, !tbaa !42
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 1)
  %i.ao = icmp slt i32 %i.an, %spec.select
  %or.cond = select i1 %i.ao, i1 %i.z, i1 false
  br i1 %or.cond, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.pr = load i32, ptr %11, align 4, !tbaa !42    ; 2 uses
  %.not660 = icmp eq i32 %.pr, 0
  br i1 %.not660, label %bb.l, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %bb.f ], [ -4, %bb.h ], [ -6, %bb.i ], [ -3, %bb.g ], [ -10, %bb.j ] ; 2 uses
  store i32 %.sink, ptr %11, align 4, !tbaa !42
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.ap = phi i32 [ %.pr, %bb.k ], [ %.sink, %.thread.sink.split ]
  %i.aq = sub nsw i32 0, %i.ap
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !42
  %i.ar = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.as = icmp eq i32 %i.ai, 0
  br i1 %i.as, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b9, ptr noundef nonnull @c_b10, ptr noundef %8, ptr noundef nonnull %9) #5
  %.pre = load i32, ptr %5, align 4, !tbaa !42
  %.pre890 = load i32, ptr %2, align 4, !tbaa !42
  %.pre891 = load i32, ptr %3, align 4, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = phi i32 [ %.pre891, %bb.n ], [ %i.ak, %bb.m ] ; 5 uses
  %i.au = phi i32 [ %.pre890, %bb.n ], [ %i.ai, %bb.m ] ; 9 uses
  %i.av = phi i32 [ %.pre, %bb.n ], [ %i.am, %bb.m ]
  %i.aw = mul nsw i32 %i.av, %i.ac
  store i32 %i.aw, ptr %i.e, align 4, !tbaa !42
  %i.ax = add i32 %i.au, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.at) ; 10 uses
  %i.ay = icmp sgt i32 %i.at, 1                   ; 2 uses
  br i1 %.not658, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ay, label %bb.q, label %.loopexit733

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.j, align 4, !tbaa !42
  %.not683765 = icmp slt i32 %i.au, 3
  br i1 %.not683765, label %.loopexit733.thread, label %.lr.ph761.us.preheader

.lr.ph761.us.preheader:                           ; preds = %bb.q
  %i.az = add nsw i32 %i.au, -2
  %i.ba = add i32 %., 1
  %i.bb = add nsw i32 %., 2
  %i.bc = sext i32 %i.n to i64                    ; 3 uses
  %i.bd = sext i32 %i.ba to i64
  %i.be = sext i32 %i.az to i64
  br label %.lr.ph761.us

.lr.ph761.us:                                     ; preds = %.lr.ph761.us.preheader, %._crit_edge762.us
  %indvars.iv849 = phi i64 [ 1, %.lr.ph761.us.preheader ], [ %indvars.iv.next850, %._crit_edge762.us ] ; 5 uses
  %.0638.neg770.us = phi i32 [ -1, %.lr.ph761.us.preheader ], [ %i.lv, %._crit_edge762.us ] ; 2 uses
  %.0608769.us = phi i32 [ 1, %.lr.ph761.us.preheader ], [ %.2610.us, %._crit_edge762.us ]
  %.0612768.us = phi i32 [ %i.bb, %.lr.ph761.us.preheader ], [ %.2614.us, %._crit_edge762.us ]
  %.0620767.us = phi i32 [ 1, %.lr.ph761.us.preheader ], [ %.2622.us, %._crit_edge762.us ]
  %i.bf = add nsw i32 %.0638.neg770.us, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv849 to i32
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph761.us, %._crit_edge.us
  %indvars.iv846 = phi i64 [ %i.bd, %.lr.ph761.us ], [ %indvars.iv.next847, %._crit_edge.us ] ; 9 uses
  %.1609759.us = phi i32 [ %.0608769.us, %.lr.ph761.us ], [ %.2610.us, %._crit_edge.us ] ; 2 uses
  %.1613758.us = phi i32 [ %.0612768.us, %.lr.ph761.us ], [ %.2614.us, %._crit_edge.us ] ; 2 uses
  %.1621757.us = phi i32 [ %.0620767.us, %.lr.ph761.us ], [ %.2622.us, %._crit_edge.us ] ; 4 uses
  %i.bh = add nsw i32 %.1613758.us, %.            ; 6 uses
  %i.bi = add nsw i32 %.1609759.us, %.            ; 11 uses
  %i.bj = load i32, ptr %i.j, align 4, !tbaa !42
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %.loopexit731.us

bb.s:                                             ; preds = %bb.r
  %i.bl = add nsw i32 %i.bh, -1
  %i.bm = mul nsw i32 %i.bl, %i.n
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = sext i32 %i.bh to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bq ; 2 uses
  call void @dlargv_(ptr noundef nonnull %i.j, ptr noundef %i.bp, ptr noundef nonnull %i.e, ptr noundef nonnull %i.br, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.k) #5
  %i.bt = load i32, ptr %i.j, align 4, !tbaa !42  ; 2 uses
  %i.bu = load i32, ptr %3, align 4, !tbaa !42    ; 3 uses
  %i.bv = shl i32 %i.bu, 1
  %i.bw = add nsw i32 %i.bv, -1
  %.not687.us = icmp slt i32 %i.bt, %i.bw
  br i1 %.not687.us, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = add nsw i32 %i.bu, -1
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !42
  %.not689734.us = icmp slt i32 %i.bu, 2
  br i1 %.not689734.us, label %.loopexit731.us, label %.lr.ph.us

bb.u:                                             ; preds = %.lr.ph.us, %bb.u
end_hunk_0
begin_hunk_1_@dsbtrd_:bb.a
  %i.id = icmp sle i32 %.2614.us, %i.bi
  %.in700745.us = select i1 %i.ib, i1 %i.ic, i1 %i.id
  br i1 %.in700745.us, label %.lr.ph749.us.preheader, label %.loopexit727.us

.lr.ph749.us.preheader:                           ; preds = %bb.ak
  %i.ie = trunc i64 %indvars.iv846 to i32
  %i.if = add i32 %i.ie, -3
  %i.ig = mul nsw i32 %i.hz, %i.bg
  %i.ih = add nsw i32 %i.ig, 1
  %i.ii = select i1 %i.cz, i32 %i.hz, i32 0
  %spec.select705.us = add nsw i32 %i.ih, %i.ii
  %i.ij = call i32 @llvm.smin.i32(i32 %spec.select705.us, i32 %i.hy)
  %i.ik = icmp slt i64 %indvars.iv846, 4
  %i.il = select i1 %i.ik, i32 0, i32 %i.if
  br label %.lr.ph749.us

.lr.ph749.us:                                     ; preds = %.lr.ph749.us.preheader, %.lr.ph749.us
  %.1748.us = phi i32 [ %i.iv, %.lr.ph749.us ], [ %i.ij, %.lr.ph749.us.preheader ] ; 2 uses
  %.0618747.us = phi i32 [ %i.io, %.lr.ph749.us ], [ %i.il, %.lr.ph749.us.preheader ] ; 2 uses
  %.0632746.us = phi i32 [ %i.jj, %.lr.ph749.us ], [ %.2614.us, %.lr.ph749.us.preheader ] ; 5 uses
  %i.im = load i32, ptr %i.m, align 4, !tbaa !42
  %i.in = sdiv i32 %.0618747.us, %i.im
  %i.io = add nsw i32 %.0618747.us, 1
  %.neg702.us = add i32 %.0632746.us, %.0638.neg770.us
  %i.ip = add i32 %.neg702.us, %i.in
  %i.iq = call i32 @llvm.smax.i32(i32 %i.ip, i32 1) ; 3 uses
  %i.ir = add nsw i32 %.1748.us, 1
  %i.is = sub i32 %i.ir, %i.iq
  store i32 %i.is, ptr %i.i, align 4, !tbaa !42
  %i.it = load i32, ptr %3, align 4, !tbaa !42
  %i.iu = add nsw i32 %i.it, %.1748.us            ; 2 uses
  store i32 %i.iu, ptr %i.d, align 4, !tbaa !42
  %i.iv = call i32 @llvm.smin.i32(i32 %i.iu, i32 %i.hy)
  %i.iw = add nsw i32 %.0632746.us, -1
  %i.ix = mul nsw i32 %i.iw, %i.s
  %i.iy = add nsw i32 %i.iq, %i.ix
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.iz
  %i.jb = mul nsw i32 %.0632746.us, %i.s
  %i.jc = add nsw i32 %i.iq, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.jd
  %i.jf = sext i32 %.0632746.us to i64            ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.jf
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.jf
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.ja, ptr noundef nonnull @c__1, ptr noundef %i.je, ptr noundef nonnull @c__1, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.jh) #5
  %i.ji = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.jj = add nsw i32 %i.ji, %.0632746.us         ; 3 uses
  %i.jk = icmp slt i32 %i.ji, 0
  %i.jl = load i32, ptr %i.b, align 4             ; 2 uses
  %i.jm = icmp sge i32 %i.jj, %i.jl
  %i.jn = icmp sle i32 %i.jj, %i.jl
  %.in700.us = select i1 %i.jk, i1 %i.jm, i1 %i.jn
  br i1 %.in700.us, label %.lr.ph749.us, label %.loopexit727.us, !llvm.loop !12

bb.al:                                            ; preds = %bb.aj
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !42
  %i.jo = load i32, ptr %i.k, align 4, !tbaa !42  ; 2 uses
  store i32 %i.jo, ptr %i.b, align 4, !tbaa !42
  %i.jp = icmp slt i32 %i.jo, 0
  %i.jq = icmp sge i32 %.2614.us, %i.bi
  %i.jr = icmp sle i32 %.2614.us, %i.bi
  %.in697750.us = select i1 %i.jp, i1 %i.jq, i1 %i.jr
  br i1 %.in697750.us, label %.lr.ph752.us, label %.loopexit727.us

.lr.ph752.us:                                     ; preds = %bb.al, %.lr.ph752.us
  %.1633751.us = phi i32 [ %i.kf, %.lr.ph752.us ], [ %.2614.us, %bb.al ] ; 4 uses
  %i.js = add nsw i32 %.1633751.us, -1
  %i.jt = mul nsw i32 %i.js, %i.s
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr [8 x i8], ptr %i.u, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 8
  %i.jx = mul nsw i32 %.1633751.us, %i.s
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr [8 x i8], ptr %i.u, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %i.kb = sext i32 %.1633751.us to i64            ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.kb
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.kb
  call void @drot_(ptr noundef nonnull %2, ptr noundef %i.jw, ptr noundef nonnull @c__1, ptr noundef %i.ka, ptr noundef nonnull @c__1, ptr noundef nonnull %i.kc, ptr noundef nonnull %i.kd) #5
  %i.ke = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %i.kf = add nsw i32 %i.ke, %.1633751.us         ; 3 uses
  %i.kg = icmp slt i32 %i.ke, 0
  %i.kh = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ki = icmp sge i32 %i.kf, %i.kh
  %i.kj = icmp sle i32 %i.kf, %i.kh
  %.in697.us = select i1 %i.kg, i1 %i.ki, i1 %i.kj
  br i1 %.in697.us, label %.lr.ph752.us, label %.loopexit727.us, !llvm.loop !13

.loopexit727.us:                                  ; preds = %.lr.ph749.us, %.lr.ph752.us, %bb.ak, %bb.al, %.loopexit730.us
  %.2622.us = phi i32 [ %.1621757.us, %bb.al ], [ %.1621757.us, %.loopexit730.us ], [ %.1621757.us, %.lr.ph752.us ], [ %i.hy, %bb.ak ], [ %i.hy, %.lr.ph749.us ] ; 2 uses
  %i.kk = add nsw i32 %i.bi, %.
  %i.kl = load i32, ptr %2, align 4, !tbaa !42    ; 2 uses
  %i.km = icmp sgt i32 %i.kk, %i.kl
  br i1 %i.km, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.loopexit727.us
  %i.kn = load i32, ptr %i.j, align 4, !tbaa !42
  %i.ko = add nsw i32 %i.kn, -1
  store i32 %i.ko, ptr %i.j, align 4, !tbaa !42
  %i.kp = add nsw i32 %.1609759.us, -1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit727.us
  %.2610.us = phi i32 [ %i.kp, %bb.am ], [ %i.bi, %.loopexit727.us ] ; 6 uses
  store i32 %.2610.us, ptr %i.b, align 4, !tbaa !42
  %i.kq = load i32, ptr %i.k, align 4, !tbaa !42  ; 4 uses
  store i32 %i.kq, ptr %i.c, align 4, !tbaa !42
  %i.kr = icmp slt i32 %i.kq, 0                   ; 2 uses
  %i.ks = icmp sge i32 %.2614.us, %.2610.us
  %i.kt = icmp sle i32 %.2614.us, %.2610.us
  %.in701753.us = select i1 %i.kr, i1 %i.ks, i1 %i.kt
  br i1 %.in701753.us, label %.lr.ph755.us, label %._crit_edge.us

bb.ao:                                            ; preds = %.lr.ph755.us, %bb.ao
  %indvars.iv843 = phi i64 [ %i.lq, %.lr.ph755.us ], [ %indvars.iv.next844, %bb.ao ] ; 4 uses
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv843
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !45
  %i.kw = add nsw i64 %indvars.iv843, %i.ls       ; 2 uses
  %i.kx = mul nsw i64 %i.kw, %i.bc
  %i.ky = getelementptr [8 x i8], ptr %i.p, i64 %i.kx
  %i.kz = getelementptr i8, ptr %i.ky, i64 8      ; 3 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !45
  %i.lb = fmul double %i.kv, %i.la
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.kw
  store double %i.lb, ptr %i.lc, align 8, !tbaa !45
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv843
  %i.le = load double, ptr %i.ld, align 8, !tbaa !45
  %i.lf = load double, ptr %i.kz, align 8, !tbaa !45
  %i.lg = fmul double %i.le, %i.lf
  store double %i.lg, ptr %i.kz, align 8, !tbaa !45
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, %i.lr ; 3 uses
  %i.lh = icmp sge i64 %indvars.iv.next844, %i.lt
  %i.li = icmp sle i64 %indvars.iv.next844, %i.lt
  %.in701.us = select i1 %i.kr, i1 %i.lh, i1 %i.li
  br i1 %.in701.us, label %bb.ao, label %._crit_edge.us, !llvm.loop !14

._crit_edge.us:                                   ; preds = %bb.ao, %bb.an
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -1
  %i.lj = icmp sgt i64 %indvars.iv846, 2
  br i1 %i.lj, label %bb.r, label %._crit_edge762.us, !llvm.loop !15

.lr.ph.us:                                        ; preds = %bb.t
  %i.lk = mul nsw i32 %i.bh, %i.n
  %i.ll = sext i32 %i.lk to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %i.bn
  %invariant.gep940 = getelementptr [8 x i8], ptr %i.p, i64 %i.ll
  br label %bb.u

.lr.ph741.us:                                     ; preds = %bb.ac
  %i.lm = sext i32 %.2614.us to i64               ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.lm
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.lm
  br label %bb.ad

.lr.ph755.us:                                     ; preds = %bb.an
  %i.lp = load i32, ptr %3, align 4, !tbaa !42
  %i.lq = sext i32 %.2614.us to i64
  %i.lr = sext i32 %i.kq to i64
  %i.ls = sext i32 %i.lp to i64
  %i.lt = sext i32 %.2610.us to i64               ; 2 uses
  br label %bb.ao

._crit_edge762.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next850 = add nuw nsw i64 %indvars.iv849, 1
  %.not683.us.not = icmp slt i64 %indvars.iv849, %i.be
  %i.lu = trunc i64 %indvars.iv849 to i32
  %i.lv = xor i32 %i.lu, -1
  br i1 %.not683.us.not, label %.lr.ph761.us, label %.loopexit733.loopexit, !llvm.loop !16

.loopexit733.loopexit:                            ; preds = %._crit_edge762.us
  %.pre896 = load i32, ptr %3, align 4, !tbaa !42
  br label %.loopexit733

.loopexit733:                                     ; preds = %.loopexit733.loopexit, %bb.p
  %i.lw = phi i32 [ %i.ac, %bb.p ], [ %i.kq, %.loopexit733.loopexit ] ; 3 uses
  %i.lx = phi i32 [ %i.au, %bb.p ], [ %i.kl, %.loopexit733.loopexit ] ; 5 uses
  %i.ly = phi i32 [ %i.at, %bb.p ], [ %.pre896, %.loopexit733.loopexit ] ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.loopexit733.thread, label %bb.ap

.loopexit733.thread:                              ; preds = %bb.q, %.loopexit733
  %i.ma = phi i32 [ %i.ly, %.loopexit733 ], [ %i.at, %bb.q ]
  %i.mb = phi i32 [ %i.lx, %.loopexit733 ], [ %i.au, %bb.q ] ; 9 uses
  %i.mc = phi i32 [ %i.lw, %.loopexit733 ], [ %i.ac, %bb.q ] ; 5 uses
  %.not685.not775 = icmp sgt i32 %i.mb, 1
  br i1 %.not685.not775, label %iter.check, label %.loopexit725

iter.check:                                       ; preds = %.loopexit733.thread
  %i.md = sext i32 %i.n to i64                    ; 9 uses
  %i.me = zext nneg i32 %i.ma to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.mb to i64   ; 4 uses
  %invariant.gep942 = getelementptr [8 x i8], ptr %i.p, i64 %i.me ; 11 uses
  %i.mf = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp ugt i32 %i.mb, 4
  %ident.check.not = icmp eq i32 %i.n, 1
  %or.cond1071 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond1071, label %vector.memcheck, label %.lr.ph777.preheader

vector.memcheck:                                  ; preds = %iter.check
  %12 = ptrtoaddr ptr %7 to i64
  %13 = ptrtoaddr ptr %4 to i64
  %i.mg = shl nuw nsw i64 %i.me, 3
  %i.mh = add i64 %i.mg, %13
  %i.mi = sub i64 %i.mh, %12
  %diff.check = icmp ugt i64 %i.mi, -128
  br i1 %diff.check, label %.lr.ph777.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check965 = icmp ult i32 %i.mb, 17
  br i1 %min.iters.check965, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mj = and i64 %i.mf, 12
  %n.vec = and i64 %i.mf, -16                     ; 4 uses
  %i.mk = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ml = getelementptr [8 x i8], ptr %invariant.gep942, i64 %index ; 4 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  %i.mn = getelementptr i8, ptr %i.ml, i64 48
  %i.mo = getelementptr i8, ptr %i.ml, i64 80
  %i.mp = getelementptr i8, ptr %i.ml, i64 112
  %wide.load = load <4 x double>, ptr %i.mm, align 8, !tbaa !45
  %wide.load966 = load <4 x double>, ptr %i.mn, align 8, !tbaa !45
  %wide.load967 = load <4 x double>, ptr %i.mo, align 8, !tbaa !45
  %wide.load968 = load <4 x double>, ptr %i.mp, align 8, !tbaa !45
  %i.mq = getelementptr [8 x i8], ptr %7, i64 %index ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 96
  store <4 x double> %wide.load, ptr %i.mq, align 8, !tbaa !45
  store <4 x double> %wide.load966, ptr %i.mr, align 8, !tbaa !45
  store <4 x double> %wide.load967, ptr %i.ms, align 8, !tbaa !45
  store <4 x double> %wide.load968, ptr %i.mt, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mf, %n.vec
  br i1 %cmp.n, label %iter.check994, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph777.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec969 = and i64 %i.mf, -4                   ; 3 uses
  %i.mv = or disjoint i64 %n.vec969, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index970 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next972, %vec.epilog.vector.body ] ; 3 uses
  %i.mw = getelementptr [8 x i8], ptr %invariant.gep942, i64 %index970
  %i.mx = getelementptr i8, ptr %i.mw, i64 16
  %wide.load971 = load <4 x double>, ptr %i.mx, align 8, !tbaa !45
  %i.my = getelementptr [8 x i8], ptr %7, i64 %index970
  store <4 x double> %wide.load971, ptr %i.my, align 8, !tbaa !45
  %index.next972 = add nuw i64 %index970, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next972, %n.vec969
  br i1 %i.mz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n973 = icmp eq i64 %i.mf, %n.vec969
  br i1 %cmp.n973, label %iter.check994, label %.lr.ph777.preheader

.lr.ph777.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv856.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.mk, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ] ; 4 uses
  %i.na = sub nsw i64 %wide.trip.count, %indvars.iv856.ph
  %xtraiter = and i64 %i.na, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph777.prol.loopexit, label %.lr.ph777.prol

.lr.ph777.prol:                                   ; preds = %.lr.ph777.preheader, %.lr.ph777.prol
  %indvars.iv856.prol = phi i64 [ %indvars.iv.next857.prol, %.lr.ph777.prol ], [ %indvars.iv856.ph, %.lr.ph777.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph777.prol ], [ 0, %.lr.ph777.preheader ]
  %indvars.iv.next857.prol = add nuw nsw i64 %indvars.iv856.prol, 1 ; 3 uses
  %i.nb = mul nsw i64 %indvars.iv.next857.prol, %i.md
  %gep943.prol = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nb
  %i.nc = load double, ptr %gep943.prol, align 8, !tbaa !45
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv856.prol
  store double %i.nc, ptr %i.nd, align 8, !tbaa !45
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph777.prol.loopexit, label %.lr.ph777.prol, !llvm.loop !19

.lr.ph777.prol.loopexit:                          ; preds = %.lr.ph777.prol, %.lr.ph777.preheader
  %indvars.iv856.unr = phi i64 [ %indvars.iv856.ph, %.lr.ph777.preheader ], [ %indvars.iv.next857.prol, %.lr.ph777.prol ]
  %i.ne = sub nsw i64 %indvars.iv856.ph, %wide.trip.count
  %i.nf = icmp ugt i64 %i.ne, -8
  br i1 %i.nf, label %iter.check994, label %.lr.ph777

.lr.ph777:                                        ; preds = %.lr.ph777.prol.loopexit, %.lr.ph777
  %indvars.iv856 = phi i64 [ %indvars.iv.next857.7, %.lr.ph777 ], [ %indvars.iv856.unr, %.lr.ph777.prol.loopexit ] ; 10 uses
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1
  %i.ng = mul nsw i64 %indvars.iv.next857, %i.md
  %gep943 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.ng
  %i.nh = load double, ptr %gep943, align 8, !tbaa !45
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv856
  store double %i.nh, ptr %i.ni, align 8, !tbaa !45
  %indvars.iv.next857.1 = add nuw nsw i64 %indvars.iv856, 2 ; 2 uses
  %i.nj = mul nsw i64 %indvars.iv.next857.1, %i.md
  %gep943.1 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nj
  %i.nk = load double, ptr %gep943.1, align 8, !tbaa !45
  %i.nl = getelementptr [8 x i8], ptr %7, i64 %indvars.iv856
  store double %i.nk, ptr %i.nl, align 8, !tbaa !45
  %indvars.iv.next857.2 = add nuw nsw i64 %indvars.iv856, 3 ; 2 uses
  %i.nm = mul nsw i64 %indvars.iv.next857.2, %i.md
  %gep943.2 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nm
  %i.nn = load double, ptr %gep943.2, align 8, !tbaa !45
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next857.1
  store double %i.nn, ptr %i.no, align 8, !tbaa !45
  %indvars.iv.next857.3 = add nuw nsw i64 %indvars.iv856, 4 ; 2 uses
  %i.np = mul nsw i64 %indvars.iv.next857.3, %i.md
  %gep943.3 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.np
  %i.nq = load double, ptr %gep943.3, align 8, !tbaa !45
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next857.2
  store double %i.nq, ptr %i.nr, align 8, !tbaa !45
  %indvars.iv.next857.4 = add nuw nsw i64 %indvars.iv856, 5 ; 2 uses
  %i.ns = mul nsw i64 %indvars.iv.next857.4, %i.md
  %gep943.4 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.ns
  %i.nt = load double, ptr %gep943.4, align 8, !tbaa !45
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next857.3
  store double %i.nt, ptr %i.nu, align 8, !tbaa !45
  %indvars.iv.next857.5 = add nuw nsw i64 %indvars.iv856, 6 ; 2 uses
  %i.nv = mul nsw i64 %indvars.iv.next857.5, %i.md
  %gep943.5 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.nv
  %i.nw = load double, ptr %gep943.5, align 8, !tbaa !45
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next857.4
  store double %i.nw, ptr %i.nx, align 8, !tbaa !45
  %indvars.iv.next857.6 = add nuw nsw i64 %indvars.iv856, 7 ; 2 uses
  %i.ny = mul nsw i64 %indvars.iv.next857.6, %i.md
  %gep943.6 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.ny
  %i.nz = load double, ptr %gep943.6, align 8, !tbaa !45
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next857.5
  store double %i.nz, ptr %i.oa, align 8, !tbaa !45
  %indvars.iv.next857.7 = add nuw nsw i64 %indvars.iv856, 8 ; 3 uses
  %i.ob = mul nsw i64 %indvars.iv.next857.7, %i.md
  %gep943.7 = getelementptr [8 x i8], ptr %invariant.gep942, i64 %i.ob
  %i.oc = load double, ptr %gep943.7, align 8, !tbaa !45
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next857.6
  store double %i.oc, ptr %i.od, align 8, !tbaa !45
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next857.7, %wide.trip.count
  br i1 %exitcond.not.7, label %iter.check994, label %.lr.ph777, !llvm.loop !20

bb.ap:                                            ; preds = %.loopexit733
  %.not684.not773 = icmp sgt i32 %i.lx, 1
  br i1 %.not684.not773, label %.lr.ph.preheader, label %.loopexit725

.lr.ph.preheader:                                 ; preds = %bb.ap
  %i.oe = add nsw i32 %i.lx, -1
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, 3
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.og, i1 false), !tbaa !45
  br label %iter.check994

.loopexit725:                                     ; preds = %bb.ap, %.loopexit733.thread
  %i.oh = phi i32 [ %i.lx, %bb.ap ], [ %i.mb, %.loopexit733.thread ]
  %i.oi = phi i32 [ %i.lw, %bb.ap ], [ %i.mc, %.loopexit733.thread ]
  %.not686778 = icmp slt i32 %i.oh, 1
  br i1 %.not686778, label %.loopexit, label %iter.check994

iter.check994:                                    ; preds = %.lr.ph777.prol.loopexit, %.lr.ph777, %middle.block, %vec.epilog.middle.block, %.lr.ph.preheader, %.loopexit725
  %i.oj = phi i32 [ %i.oi, %.loopexit725 ], [ %i.lw, %.lr.ph.preheader ], [ %i.mc, %middle.block ], [ %i.mc, %vec.epilog.middle.block ], [ %i.mc, %.lr.ph777 ], [ %i.mc, %.lr.ph777.prol.loopexit ]
  %i.ok = phi i32 [ 1, %.loopexit725 ], [ %i.lx, %.lr.ph.preheader ], [ %i.mb, %middle.block ], [ %i.mb, %vec.epilog.middle.block ], [ %i.mb, %.lr.ph777 ], [ %i.mb, %.lr.ph777.prol.loopexit ] ; 5 uses
  %i.ol = sext i32 %i.n to i64                    ; 9 uses
  %i.om = sext i32 %i.oj to i64                   ; 2 uses
  %i.on = add nuw i32 %i.ok, 1
  %wide.trip.count862 = zext i32 %i.on to i64     ; 2 uses
  %invariant.gep944 = getelementptr [8 x i8], ptr %i.p, i64 %i.om ; 11 uses
  %i.oo = zext nneg i32 %i.ok to i64              ; 5 uses
  %min.iters.check979 = icmp ugt i32 %i.ok, 3
  %ident.check976.not = icmp eq i32 %i.n, 1
  %or.cond1072 = select i1 %min.iters.check979, i1 %ident.check976.not, i1 false
  br i1 %or.cond1072, label %vector.memcheck977, label %vec.epilog.scalar.ph995.preheader

vector.memcheck977:                               ; preds = %iter.check994
  %14 = ptrtoaddr ptr %6 to i64
  %15 = ptrtoaddr ptr %4 to i64
  %i.op = shl nsw i64 %i.om, 3
  %i.oq = add i64 %i.op, %15
  %i.or = sub i64 %14, %i.oq
  %i.os = add i64 %i.or, 7
  %diff.check978 = icmp ult i64 %i.os, 127
  br i1 %diff.check978, label %vec.epilog.scalar.ph995.preheader, label %vector.main.loop.iter.check980

vector.main.loop.iter.check980:                   ; preds = %vector.memcheck977
  %min.iters.check981 = icmp ult i32 %i.ok, 16
  br i1 %min.iters.check981, label %vec.epilog.ph998, label %vector.ph982

vector.ph982:                                     ; preds = %vector.main.loop.iter.check980
  %i.ot = and i64 %i.oo, 12
  %n.vec983 = and i64 %i.oo, 2147483632           ; 4 uses
  %i.ou = or disjoint i64 %n.vec983, 1
  br label %vector.body984

vector.body984:                                   ; preds = %vector.ph982, %vector.body984
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next990, %vector.body984 ] ; 3 uses
  %i.ov = getelementptr [8 x i8], ptr %invariant.gep944, i64 %index985 ; 4 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 8
  %i.ox = getelementptr i8, ptr %i.ov, i64 40
  %i.oy = getelementptr i8, ptr %i.ov, i64 72
  %i.oz = getelementptr i8, ptr %i.ov, i64 104
  %wide.load986 = load <4 x double>, ptr %i.ow, align 8, !tbaa !45
  %wide.load987 = load <4 x double>, ptr %i.ox, align 8, !tbaa !45
  %wide.load988 = load <4 x double>, ptr %i.oy, align 8, !tbaa !45
  %wide.load989 = load <4 x double>, ptr %i.oz, align 8, !tbaa !45
  %i.pa = getelementptr [8 x i8], ptr %6, i64 %index985 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  store <4 x double> %wide.load986, ptr %i.pa, align 8, !tbaa !45
  store <4 x double> %wide.load987, ptr %i.pb, align 8, !tbaa !45
  store <4 x double> %wide.load988, ptr %i.pc, align 8, !tbaa !45
  store <4 x double> %wide.load989, ptr %i.pd, align 8, !tbaa !45
  %index.next990 = add nuw i64 %index985, 16      ; 2 uses
  %i.pe = icmp eq i64 %index.next990, %n.vec983
  br i1 %i.pe, label %middle.block991, label %vector.body984, !llvm.loop !21

middle.block991:                                  ; preds = %vector.body984
  %cmp.n992 = icmp eq i64 %n.vec983, %i.oo
  br i1 %cmp.n992, label %.loopexit, label %vec.epilog.iter.check996

vec.epilog.iter.check996:                         ; preds = %middle.block991
  %min.epilog.iters.check997 = icmp eq i64 %i.ot, 0
  br i1 %min.epilog.iters.check997, label %vec.epilog.scalar.ph995.preheader, label %vec.epilog.ph998, !prof !48

vec.epilog.ph998:                                 ; preds = %vector.main.loop.iter.check980, %vec.epilog.iter.check996
  %vec.epilog.resume.val993 = phi i64 [ %n.vec983, %vec.epilog.iter.check996 ], [ 0, %vector.main.loop.iter.check980 ]
  %n.vec999 = and i64 %i.oo, 2147483644           ; 3 uses
  %i.pf = or disjoint i64 %n.vec999, 1
  br label %vec.epilog.vector.body1000

vec.epilog.vector.body1000:                       ; preds = %vec.epilog.vector.body1000, %vec.epilog.ph998
  %index1001 = phi i64 [ %vec.epilog.resume.val993, %vec.epilog.ph998 ], [ %index.next1003, %vec.epilog.vector.body1000 ] ; 3 uses
  %i.pg = getelementptr [8 x i8], ptr %invariant.gep944, i64 %index1001
  %i.ph = getelementptr i8, ptr %i.pg, i64 8
  %wide.load1002 = load <4 x double>, ptr %i.ph, align 8, !tbaa !45
  %i.pi = getelementptr [8 x i8], ptr %6, i64 %index1001
  store <4 x double> %wide.load1002, ptr %i.pi, align 8, !tbaa !45
  %index.next1003 = add nuw i64 %index1001, 4     ; 2 uses
  %i.pj = icmp eq i64 %index.next1003, %n.vec999
  br i1 %i.pj, label %vec.epilog.middle.block1004, label %vec.epilog.vector.body1000, !llvm.loop !22

vec.epilog.middle.block1004:                      ; preds = %vec.epilog.vector.body1000
  %cmp.n1005 = icmp eq i64 %n.vec999, %i.oo
  br i1 %cmp.n1005, label %.loopexit, label %vec.epilog.scalar.ph995.preheader

vec.epilog.scalar.ph995.preheader:                ; preds = %iter.check994, %vector.memcheck977, %vec.epilog.iter.check996, %vec.epilog.middle.block1004
  %indvars.iv859.ph = phi i64 [ 1, %iter.check994 ], [ 1, %vector.memcheck977 ], [ %i.ou, %vec.epilog.iter.check996 ], [ %i.pf, %vec.epilog.middle.block1004 ] ; 4 uses
  %i.pk = sub nsw i64 %wide.trip.count862, %indvars.iv859.ph
  %i.pl = zext nneg i32 %i.ok to i64
  %i.pm = sub nsw i64 %i.pl, %indvars.iv859.ph
  %xtraiter1085 = and i64 %i.pk, 7                ; 2 uses
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %vec.epilog.scalar.ph995.prol.loopexit, label %vec.epilog.scalar.ph995.prol

vec.epilog.scalar.ph995.prol:                     ; preds = %vec.epilog.scalar.ph995.preheader, %vec.epilog.scalar.ph995.prol
  %indvars.iv859.prol = phi i64 [ %indvars.iv.next860.prol, %vec.epilog.scalar.ph995.prol ], [ %indvars.iv859.ph, %vec.epilog.scalar.ph995.preheader ] ; 3 uses
  %prol.iter1087 = phi i64 [ %prol.iter1087.next, %vec.epilog.scalar.ph995.prol ], [ 0, %vec.epilog.scalar.ph995.preheader ]
  %i.pn = mul nsw i64 %indvars.iv859.prol, %i.ol
  %gep945.prol = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.pn
  %i.po = load double, ptr %gep945.prol, align 8, !tbaa !45
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv859.prol
  store double %i.po, ptr %i.pp, align 8, !tbaa !45
  %indvars.iv.next860.prol = add nuw nsw i64 %indvars.iv859.prol, 1 ; 2 uses
  %prol.iter1087.next = add i64 %prol.iter1087, 1 ; 2 uses
  %prol.iter1087.cmp.not = icmp eq i64 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %vec.epilog.scalar.ph995.prol.loopexit, label %vec.epilog.scalar.ph995.prol, !llvm.loop !23

vec.epilog.scalar.ph995.prol.loopexit:            ; preds = %vec.epilog.scalar.ph995.prol, %vec.epilog.scalar.ph995.preheader
  %indvars.iv859.unr = phi i64 [ %indvars.iv859.ph, %vec.epilog.scalar.ph995.preheader ], [ %indvars.iv.next860.prol, %vec.epilog.scalar.ph995.prol ]
  %i.pq = icmp ult i64 %i.pm, 7
  br i1 %i.pq, label %.loopexit, label %vec.epilog.scalar.ph995

vec.epilog.scalar.ph995:                          ; preds = %vec.epilog.scalar.ph995.prol.loopexit, %vec.epilog.scalar.ph995
  %indvars.iv859 = phi i64 [ %indvars.iv.next860.7, %vec.epilog.scalar.ph995 ], [ %indvars.iv859.unr, %vec.epilog.scalar.ph995.prol.loopexit ] ; 11 uses
  %i.pr = mul nsw i64 %indvars.iv859, %i.ol
  %gep945 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.pr
  %i.ps = load double, ptr %gep945, align 8, !tbaa !45
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv859
  store double %i.ps, ptr %i.pt, align 8, !tbaa !45
  %indvars.iv.next860 = add nuw nsw i64 %indvars.iv859, 1
  %i.pu = mul nsw i64 %indvars.iv.next860, %i.ol
  %gep945.1 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.pu
  %i.pv = load double, ptr %gep945.1, align 8, !tbaa !45
  %i.pw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv859
  store double %i.pv, ptr %i.pw, align 8, !tbaa !45
  %indvars.iv.next860.1 = add nuw nsw i64 %indvars.iv859, 2 ; 2 uses
  %i.px = mul nsw i64 %indvars.iv.next860.1, %i.ol
  %gep945.2 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.px
  %i.py = load double, ptr %gep945.2, align 8, !tbaa !45
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next860.1
  store double %i.py, ptr %i.pz, align 8, !tbaa !45
  %indvars.iv.next860.2 = add nuw nsw i64 %indvars.iv859, 3 ; 2 uses
  %i.qa = mul nsw i64 %indvars.iv.next860.2, %i.ol
  %gep945.3 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qa
  %i.qb = load double, ptr %gep945.3, align 8, !tbaa !45
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next860.2
  store double %i.qb, ptr %i.qc, align 8, !tbaa !45
  %indvars.iv.next860.3 = add nuw nsw i64 %indvars.iv859, 4 ; 2 uses
  %i.qd = mul nsw i64 %indvars.iv.next860.3, %i.ol
  %gep945.4 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qd
  %i.qe = load double, ptr %gep945.4, align 8, !tbaa !45
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next860.3
  store double %i.qe, ptr %i.qf, align 8, !tbaa !45
  %indvars.iv.next860.4 = add nuw nsw i64 %indvars.iv859, 5 ; 2 uses
  %i.qg = mul nsw i64 %indvars.iv.next860.4, %i.ol
  %gep945.5 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qg
  %i.qh = load double, ptr %gep945.5, align 8, !tbaa !45
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next860.4
  store double %i.qh, ptr %i.qi, align 8, !tbaa !45
  %indvars.iv.next860.5 = add nuw nsw i64 %indvars.iv859, 6 ; 2 uses
  %i.qj = mul nsw i64 %indvars.iv.next860.5, %i.ol
  %gep945.6 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qj
  %i.qk = load double, ptr %gep945.6, align 8, !tbaa !45
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next860.5
  store double %i.qk, ptr %i.ql, align 8, !tbaa !45
  %indvars.iv.next860.6 = add nuw nsw i64 %indvars.iv859, 7 ; 2 uses
  %i.qm = mul nsw i64 %indvars.iv.next860.6, %i.ol
  %gep945.7 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qm
  %i.qn = load double, ptr %gep945.7, align 8, !tbaa !45
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next860.6
  store double %i.qn, ptr %i.qo, align 8, !tbaa !45
  %indvars.iv.next860.7 = add nuw nsw i64 %indvars.iv859, 8 ; 2 uses
  %exitcond863.not.7 = icmp eq i64 %indvars.iv.next860.7, %wide.trip.count862
  br i1 %exitcond863.not.7, label %.loopexit, label %vec.epilog.scalar.ph995, !llvm.loop !24

bb.aq:                                            ; preds = %bb.o
  br i1 %i.ay, label %bb.ar, label %.loopexit723

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.j, align 4, !tbaa !42
  %.not664814 = icmp slt i32 %i.au, 3
  br i1 %.not664814, label %.loopexit723.thread, label %.lr.ph810.us.preheader

.lr.ph810.us.preheader:                           ; preds = %bb.ar
  %i.qp = add nsw i32 %i.au, -2
  %i.qq = add i32 %., 1
  %i.qr = add nsw i32 %., 2
  %i.qs = sext i32 %i.n to i64                    ; 3 uses
  %i.qt = sext i32 %i.qq to i64
  %i.qu = sext i32 %i.qp to i64
  br label %.lr.ph810.us

.lr.ph810.us:                                     ; preds = %.lr.ph810.us.preheader, %._crit_edge811.us
  %i.qv = phi i32 [ %i.ac, %.lr.ph810.us.preheader ], [ %i.zu, %._crit_edge811.us ]
  %indvars.iv873 = phi i64 [ 1, %.lr.ph810.us.preheader ], [ %indvars.iv.next874, %._crit_edge811.us ] ; 6 uses
  %.4642.neg819.us = phi i32 [ -1, %.lr.ph810.us.preheader ], [ %i.aaz, %._crit_edge811.us ] ; 2 uses
  %.3611818.us = phi i32 [ 1, %.lr.ph810.us.preheader ], [ %.5.us, %._crit_edge811.us ]
  %.3615817.us = phi i32 [ %i.qr, %.lr.ph810.us.preheader ], [ %.5617.us, %._crit_edge811.us ]
  %.3623816.us = phi i32 [ 1, %.lr.ph810.us.preheader ], [ %.5625.us, %._crit_edge811.us ]
  %i.qw = add nsw i32 %.4642.neg819.us, 1
  %i.qx = mul nsw i64 %indvars.iv873, %i.qs       ; 2 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1 ; 2 uses
  %i.qy = mul nsw i64 %indvars.iv.next874, %i.qs  ; 2 uses
  %i.qz = add i64 %i.qy, 4294967294
  %invariant.gep950 = getelementptr [8 x i8], ptr %i.p, i64 %i.qx
  %invariant.gep952 = getelementptr [8 x i8], ptr %i.p, i64 %i.qx
  %i.ra = add nuw i64 %indvars.iv873, 4294967295
  %invariant.gep954 = getelementptr [8 x i8], ptr %i.p, i64 %i.qy
  %i.rb = trunc nuw nsw i64 %indvars.iv873 to i32
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph810.us, %._crit_edge.us822
  %i.rc = phi i32 [ %i.qv, %.lr.ph810.us ], [ %i.zu, %._crit_edge.us822 ] ; 2 uses
  %indvars.iv870 = phi i64 [ %i.qt, %.lr.ph810.us ], [ %indvars.iv.next871, %._crit_edge.us822 ] ; 11 uses
  %.4808.us = phi i32 [ %.3611818.us, %.lr.ph810.us ], [ %.5.us, %._crit_edge.us822 ] ; 2 uses
  %.4616807.us = phi i32 [ %.3615817.us, %.lr.ph810.us ], [ %.5617.us, %._crit_edge.us822 ] ; 2 uses
  %.4624806.us = phi i32 [ %.3623816.us, %.lr.ph810.us ], [ %.5625.us, %._crit_edge.us822 ] ; 4 uses
  %i.rd = add nsw i32 %.4616807.us, %.            ; 6 uses
  %i.re = add nsw i32 %.4808.us, %.               ; 11 uses
  %i.rf = load i32, ptr %i.j, align 4, !tbaa !42
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %bb.at, label %.loopexit722.us

bb.at:                                            ; preds = %bb.as
  %i.rh = sub nsw i32 %i.rd, %i.rc
  %i.ri = mul nsw i32 %i.rh, %i.n
  %i.rj = add nsw i32 %i.ri, %i.rc
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rk
end_hunk_1
begin_hunk_2_@dsbtrd_:bb.a
  %i.xc = call i32 @llvm.smax.i32(i32 %.4624806.us, i32 %i.re) ; 4 uses
  %i.xd = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  store i32 %i.re, ptr %i.c, align 4, !tbaa !42
  %i.xe = load i32, ptr %i.k, align 4, !tbaa !42  ; 2 uses
  store i32 %i.xe, ptr %i.b, align 4, !tbaa !42
  %i.xf = icmp slt i32 %i.xe, 0
  %i.xg = icmp sge i32 %.5617.us, %i.re
  %i.xh = icmp sle i32 %.5617.us, %i.re
  %.in680793.us = select i1 %i.xf, i1 %i.xg, i1 %i.xh
  br i1 %.in680793.us, label %.lr.ph797.us.preheader, label %.loopexit718.us

.lr.ph797.us.preheader:                           ; preds = %bb.bk
  %i.xi = trunc i64 %indvars.iv870 to i32
  %i.xj = add i32 %i.xi, -3
  %i.xk = mul nsw i32 %i.xd, %i.rb
  %i.xl = add nsw i32 %i.xk, 1
  %i.xm = select i1 %i.tg, i32 %i.xd, i32 0
  %spec.select706.us = add nsw i32 %i.xl, %i.xm
  %i.xn = call i32 @llvm.smin.i32(i32 %spec.select706.us, i32 %i.xc)
  %i.xo = icmp slt i64 %indvars.iv870, 4
  %i.xp = select i1 %i.xo, i32 0, i32 %i.xj
  br label %.lr.ph797.us

.lr.ph797.us:                                     ; preds = %.lr.ph797.us.preheader, %.lr.ph797.us
  %.3796.us = phi i32 [ %i.xz, %.lr.ph797.us ], [ %i.xn, %.lr.ph797.us.preheader ] ; 2 uses
  %.1619795.us = phi i32 [ %i.xs, %.lr.ph797.us ], [ %i.xp, %.lr.ph797.us.preheader ] ; 2 uses
  %.3635794.us = phi i32 [ %i.yn, %.lr.ph797.us ], [ %.5617.us, %.lr.ph797.us.preheader ] ; 5 uses
  %i.xq = load i32, ptr %i.m, align 4, !tbaa !42
  %i.xr = sdiv i32 %.1619795.us, %i.xq
  %i.xs = add nsw i32 %.1619795.us, 1
  %.neg.us = add i32 %.3635794.us, %.4642.neg819.us
  %i.xt = add i32 %.neg.us, %i.xr
  %i.xu = call i32 @llvm.smax.i32(i32 %i.xt, i32 1) ; 3 uses
  %i.xv = add nsw i32 %.3796.us, 1
  %i.xw = sub i32 %i.xv, %i.xu
  store i32 %i.xw, ptr %i.i, align 4, !tbaa !42
  %i.xx = load i32, ptr %3, align 4, !tbaa !42
  %i.xy = add nsw i32 %i.xx, %.3796.us            ; 2 uses
  store i32 %i.xy, ptr %i.d, align 4, !tbaa !42
  %i.xz = call i32 @llvm.smin.i32(i32 %i.xy, i32 %i.xc)
  %i.ya = add nsw i32 %.3635794.us, -1
  %i.yb = mul nsw i32 %i.ya, %i.s
  %i.yc = add nsw i32 %i.xu, %i.yb
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.yd
  %i.yf = mul nsw i32 %.3635794.us, %i.s
  %i.yg = add nsw i32 %i.xu, %i.yf
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.yh
  %i.yj = sext i32 %.3635794.us to i64            ; 2 uses
  %i.yk = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.yj
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.yj
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.ye, ptr noundef nonnull @c__1, ptr noundef %i.yi, ptr noundef nonnull @c__1, ptr noundef nonnull %i.yk, ptr noundef nonnull %i.yl) #5
  %i.ym = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %i.yn = add nsw i32 %i.ym, %.3635794.us         ; 3 uses
  %i.yo = icmp slt i32 %i.ym, 0
  %i.yp = load i32, ptr %i.c, align 4             ; 2 uses
  %i.yq = icmp sge i32 %i.yn, %i.yp
  %i.yr = icmp sle i32 %i.yn, %i.yp
  %.in680.us = select i1 %i.yo, i1 %i.yq, i1 %i.yr
  br i1 %.in680.us, label %.lr.ph797.us, label %.loopexit718.us, !llvm.loop !29

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.re, ptr %i.b, align 4, !tbaa !42
  %i.ys = load i32, ptr %i.k, align 4, !tbaa !42  ; 2 uses
  store i32 %i.ys, ptr %i.c, align 4, !tbaa !42
  %i.yt = icmp slt i32 %i.ys, 0
  %i.yu = icmp sge i32 %.5617.us, %i.re
  %i.yv = icmp sle i32 %.5617.us, %i.re
  %.in677798.us = select i1 %i.yt, i1 %i.yu, i1 %i.yv
  br i1 %.in677798.us, label %.lr.ph800.us, label %.loopexit718.us

.lr.ph800.us:                                     ; preds = %bb.bl, %.lr.ph800.us
  %.4636799.us = phi i32 [ %i.zj, %.lr.ph800.us ], [ %.5617.us, %bb.bl ] ; 4 uses
  %i.yw = add nsw i32 %.4636799.us, -1
  %i.yx = mul nsw i32 %i.yw, %i.s
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr [8 x i8], ptr %i.u, i64 %i.yy
  %i.za = getelementptr i8, ptr %i.yz, i64 8
  %i.zb = mul nsw i32 %.4636799.us, %i.s
  %i.zc = sext i32 %i.zb to i64
  %i.zd = getelementptr [8 x i8], ptr %i.u, i64 %i.zc
  %i.ze = getelementptr i8, ptr %i.zd, i64 8
  %i.zf = sext i32 %.4636799.us to i64            ; 2 uses
  %i.zg = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.zf
  %i.zh = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.zf
  call void @drot_(ptr noundef nonnull %2, ptr noundef %i.za, ptr noundef nonnull @c__1, ptr noundef %i.ze, ptr noundef nonnull @c__1, ptr noundef nonnull %i.zg, ptr noundef nonnull %i.zh) #5
  %i.zi = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.zj = add nsw i32 %i.zi, %.4636799.us         ; 3 uses
  %i.zk = icmp slt i32 %i.zi, 0
  %i.zl = load i32, ptr %i.b, align 4             ; 2 uses
  %i.zm = icmp sge i32 %i.zj, %i.zl
  %i.zn = icmp sle i32 %i.zj, %i.zl
  %.in677.us = select i1 %i.zk, i1 %i.zm, i1 %i.zn
  br i1 %.in677.us, label %.lr.ph800.us, label %.loopexit718.us, !llvm.loop !30

.loopexit718.us:                                  ; preds = %.lr.ph797.us, %.lr.ph800.us, %bb.bl, %bb.bk, %.loopexit720.us
  %.5625.us = phi i32 [ %i.xc, %bb.bk ], [ %.4624806.us, %.loopexit720.us ], [ %.4624806.us, %bb.bl ], [ %.4624806.us, %.lr.ph800.us ], [ %i.xc, %.lr.ph797.us ] ; 2 uses
  %i.zo = add nsw i32 %i.re, %.
  %i.zp = load i32, ptr %2, align 4, !tbaa !42    ; 2 uses
  %i.zq = icmp sgt i32 %i.zo, %i.zp
  br i1 %i.zq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit718.us
  %i.zr = load i32, ptr %i.j, align 4, !tbaa !42
  %i.zs = add nsw i32 %i.zr, -1
  store i32 %i.zs, ptr %i.j, align 4, !tbaa !42
  %i.zt = add nsw i32 %.4808.us, -1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.loopexit718.us
  %.5.us = phi i32 [ %i.zt, %bb.bm ], [ %i.re, %.loopexit718.us ] ; 6 uses
  store i32 %.5.us, ptr %i.c, align 4, !tbaa !42
  %i.zu = load i32, ptr %i.k, align 4, !tbaa !42  ; 5 uses
  store i32 %i.zu, ptr %i.b, align 4, !tbaa !42
  %i.zv = icmp slt i32 %i.zu, 0                   ; 2 uses
  %i.zw = icmp sge i32 %.5617.us, %.5.us
  %i.zx = icmp sle i32 %.5617.us, %.5.us
  %.in681801.us = select i1 %i.zv, i1 %i.zw, i1 %i.zx
  br i1 %.in681801.us, label %.lr.ph803.us, label %._crit_edge.us822

bb.bo:                                            ; preds = %.lr.ph803.us, %bb.bo
  %indvars.iv867 = phi i64 [ %i.aau, %.lr.ph803.us ], [ %indvars.iv.next868, %bb.bo ] ; 5 uses
  %i.zy = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv867
  %i.zz = load double, ptr %i.zy, align 8, !tbaa !45
  %i.aaa = mul nsw i64 %indvars.iv867, %i.qs
  %gep947 = getelementptr [8 x i8], ptr %invariant.gep946, i64 %i.aaa ; 3 uses
  %i.aab = load double, ptr %gep947, align 8, !tbaa !45
  %i.aac = fmul double %i.zz, %i.aab
  %gep949 = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv867
  store double %i.aac, ptr %gep949, align 8, !tbaa !45
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv867
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !45
  %i.aaf = load double, ptr %gep947, align 8, !tbaa !45
  %i.aag = fmul double %i.aae, %i.aaf
  store double %i.aag, ptr %gep947, align 8, !tbaa !45
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, %i.aav ; 3 uses
  %i.aah = icmp sge i64 %indvars.iv.next868, %i.aax
  %i.aai = icmp sle i64 %indvars.iv.next868, %i.aax
  %.in681.us = select i1 %i.zv, i1 %i.aah, i1 %i.aai
  br i1 %.in681.us, label %bb.bo, label %._crit_edge.us822, !llvm.loop !31

._crit_edge.us822:                                ; preds = %bb.bo, %bb.bn
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -1
  %i.aaj = icmp sgt i64 %indvars.iv870, 2
  br i1 %i.aaj, label %bb.as, label %._crit_edge811.us, !llvm.loop !32

.lr.ph789.us:                                     ; preds = %bb.bc
  %i.aak = add nsw i32 %.5617.us, -1
  %i.aal = mul nsw i32 %i.aak, %i.n
  %i.aam = add i32 %i.aal, 2
  %i.aan = mul nsw i32 %.5617.us, %i.n
  %i.aao = add i32 %i.aan, 1
  %i.aap = sext i32 %.5617.us to i64              ; 2 uses
  %i.aaq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aap
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.aap
  %i.aas = sext i32 %i.re to i64
  br label %bb.bd

.lr.ph803.us:                                     ; preds = %bb.bn
  %i.aat = load i32, ptr %3, align 4, !tbaa !42
  %i.aau = sext i32 %.5617.us to i64
  %i.aav = sext i32 %i.zu to i64                  ; 2 uses
  %i.aaw = sext i32 %i.aat to i64
  %i.aax = sext i32 %.5.us to i64                 ; 2 uses
  %invariant.gep946 = getelementptr [8 x i8], ptr %i.p, i64 %i.aav
  %invariant.gep948 = getelementptr [8 x i8], ptr %i.v, i64 %i.aaw
  br label %bb.bo

._crit_edge811.us:                                ; preds = %._crit_edge.us822
  %.not664.us.not = icmp slt i64 %indvars.iv873, %i.qu
  %i.aay = trunc i64 %indvars.iv873 to i32
  %i.aaz = xor i32 %i.aay, -1
  br i1 %.not664.us.not, label %.lr.ph810.us, label %.loopexit723.loopexit, !llvm.loop !33

.loopexit723.loopexit:                            ; preds = %._crit_edge811.us
  %.pre901 = load i32, ptr %3, align 4, !tbaa !42
  br label %.loopexit723

.loopexit723:                                     ; preds = %.loopexit723.loopexit, %bb.aq
  %i.aba = phi i32 [ %i.au, %bb.aq ], [ %i.zp, %.loopexit723.loopexit ] ; 5 uses
  %i.abb = phi i32 [ %i.at, %bb.aq ], [ %.pre901, %.loopexit723.loopexit ]
  %i.abc = icmp sgt i32 %i.abb, 0
  br i1 %i.abc, label %.loopexit723.thread, label %bb.bp

.loopexit723.thread:                              ; preds = %bb.ar, %.loopexit723
  %i.abd = phi i32 [ %i.aba, %.loopexit723 ], [ %i.au, %bb.ar ] ; 9 uses
  %.not666.not827 = icmp sgt i32 %i.abd, 1
  br i1 %.not666.not827, label %iter.check1026, label %.loopexit715

iter.check1026:                                   ; preds = %.loopexit723.thread
  %i.abe = sext i32 %i.n to i64                   ; 9 uses
  %wide.trip.count883 = zext nneg i32 %i.abd to i64 ; 4 uses
  %i.abf = add nsw i64 %wide.trip.count883, -1    ; 5 uses
  %min.iters.check1011 = icmp ugt i32 %i.abd, 4
  %ident.check1008.not = icmp eq i32 %i.n, 1
  %or.cond1073 = select i1 %min.iters.check1011, i1 %ident.check1008.not, i1 false
  br i1 %or.cond1073, label %vector.memcheck1009, label %.lr.ph829.preheader

vector.memcheck1009:                              ; preds = %iter.check1026
  %16 = ptrtoaddr ptr %7 to i64
  %17 = ptrtoaddr ptr %4 to i64
  %i.abg = sub i64 %16, %17
  %i.abh = add i64 %i.abg, -9
  %diff.check1010 = icmp ult i64 %i.abh, 127
  br i1 %diff.check1010, label %.lr.ph829.preheader, label %vector.main.loop.iter.check1012

vector.main.loop.iter.check1012:                  ; preds = %vector.memcheck1009
  %min.iters.check1013 = icmp ult i32 %i.abd, 17
  br i1 %min.iters.check1013, label %vec.epilog.ph1030, label %vector.ph1014

vector.ph1014:                                    ; preds = %vector.main.loop.iter.check1012
  %i.abi = and i64 %i.abf, 12
  %n.vec1015 = and i64 %i.abf, -16                ; 4 uses
  %i.abj = or disjoint i64 %n.vec1015, 1
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.ph1014, %vector.body1016
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1022, %vector.body1016 ] ; 3 uses
  %i.abk = getelementptr [8 x i8], ptr %i.p, i64 %index1017 ; 4 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 24
  %i.abm = getelementptr i8, ptr %i.abk, i64 56
  %i.abn = getelementptr i8, ptr %i.abk, i64 88
  %i.abo = getelementptr i8, ptr %i.abk, i64 120
  %wide.load1018 = load <4 x double>, ptr %i.abl, align 8, !tbaa !45
  %wide.load1019 = load <4 x double>, ptr %i.abm, align 8, !tbaa !45
  %wide.load1020 = load <4 x double>, ptr %i.abn, align 8, !tbaa !45
  %wide.load1021 = load <4 x double>, ptr %i.abo, align 8, !tbaa !45
  %i.abp = getelementptr [8 x i8], ptr %7, i64 %index1017 ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 64
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 96
  store <4 x double> %wide.load1018, ptr %i.abp, align 8, !tbaa !45
  store <4 x double> %wide.load1019, ptr %i.abq, align 8, !tbaa !45
  store <4 x double> %wide.load1020, ptr %i.abr, align 8, !tbaa !45
  store <4 x double> %wide.load1021, ptr %i.abs, align 8, !tbaa !45
  %index.next1022 = add nuw i64 %index1017, 16    ; 2 uses
  %i.abt = icmp eq i64 %index.next1022, %n.vec1015
  br i1 %i.abt, label %middle.block1023, label %vector.body1016, !llvm.loop !34

middle.block1023:                                 ; preds = %vector.body1016
  %cmp.n1024 = icmp eq i64 %i.abf, %n.vec1015
  br i1 %cmp.n1024, label %iter.check1058, label %vec.epilog.iter.check1028

vec.epilog.iter.check1028:                        ; preds = %middle.block1023
  %min.epilog.iters.check1029 = icmp eq i64 %i.abi, 0
  br i1 %min.epilog.iters.check1029, label %.lr.ph829.preheader, label %vec.epilog.ph1030, !prof !48

vec.epilog.ph1030:                                ; preds = %vector.main.loop.iter.check1012, %vec.epilog.iter.check1028
  %vec.epilog.resume.val1025 = phi i64 [ %n.vec1015, %vec.epilog.iter.check1028 ], [ 0, %vector.main.loop.iter.check1012 ]
  %n.vec1031 = and i64 %i.abf, -4                 ; 3 uses
  %i.abu = or disjoint i64 %n.vec1031, 1
  br label %vec.epilog.vector.body1032

vec.epilog.vector.body1032:                       ; preds = %vec.epilog.vector.body1032, %vec.epilog.ph1030
  %index1033 = phi i64 [ %vec.epilog.resume.val1025, %vec.epilog.ph1030 ], [ %index.next1035, %vec.epilog.vector.body1032 ] ; 3 uses
  %i.abv = getelementptr [8 x i8], ptr %i.p, i64 %index1033
  %i.abw = getelementptr i8, ptr %i.abv, i64 24
  %wide.load1034 = load <4 x double>, ptr %i.abw, align 8, !tbaa !45
  %i.abx = getelementptr [8 x i8], ptr %7, i64 %index1033
  store <4 x double> %wide.load1034, ptr %i.abx, align 8, !tbaa !45
  %index.next1035 = add nuw i64 %index1033, 4     ; 2 uses
  %i.aby = icmp eq i64 %index.next1035, %n.vec1031
  br i1 %i.aby, label %vec.epilog.middle.block1036, label %vec.epilog.vector.body1032, !llvm.loop !35

vec.epilog.middle.block1036:                      ; preds = %vec.epilog.vector.body1032
  %cmp.n1037 = icmp eq i64 %i.abf, %n.vec1031
  br i1 %cmp.n1037, label %iter.check1058, label %.lr.ph829.preheader

.lr.ph829.preheader:                              ; preds = %iter.check1026, %vector.memcheck1009, %vec.epilog.iter.check1028, %vec.epilog.middle.block1036
  %indvars.iv880.ph = phi i64 [ 1, %iter.check1026 ], [ 1, %vector.memcheck1009 ], [ %i.abj, %vec.epilog.iter.check1028 ], [ %i.abu, %vec.epilog.middle.block1036 ] ; 4 uses
  %i.abz = sub nsw i64 %wide.trip.count883, %indvars.iv880.ph
  %xtraiter1088 = and i64 %i.abz, 7               ; 2 uses
  %lcmp.mod1089.not = icmp eq i64 %xtraiter1088, 0
  br i1 %lcmp.mod1089.not, label %.lr.ph829.prol.loopexit, label %.lr.ph829.prol

.lr.ph829.prol:                                   ; preds = %.lr.ph829.preheader, %.lr.ph829.prol
  %indvars.iv880.prol = phi i64 [ %indvars.iv.next881.prol, %.lr.ph829.prol ], [ %indvars.iv880.ph, %.lr.ph829.preheader ] ; 3 uses
  %prol.iter1090 = phi i64 [ %prol.iter1090.next, %.lr.ph829.prol ], [ 0, %.lr.ph829.preheader ]
  %i.aca = mul nsw i64 %indvars.iv880.prol, %i.abe
  %i.acb = getelementptr [8 x i8], ptr %i.p, i64 %i.aca
  %i.acc = getelementptr i8, ptr %i.acb, i64 16
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !45
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv880.prol
  store double %i.acd, ptr %i.ace, align 8, !tbaa !45
  %indvars.iv.next881.prol = add nuw nsw i64 %indvars.iv880.prol, 1 ; 2 uses
  %prol.iter1090.next = add i64 %prol.iter1090, 1 ; 2 uses
  %prol.iter1090.cmp.not = icmp eq i64 %prol.iter1090.next, %xtraiter1088
  br i1 %prol.iter1090.cmp.not, label %.lr.ph829.prol.loopexit, label %.lr.ph829.prol, !llvm.loop !36

.lr.ph829.prol.loopexit:                          ; preds = %.lr.ph829.prol, %.lr.ph829.preheader
  %indvars.iv880.unr = phi i64 [ %indvars.iv880.ph, %.lr.ph829.preheader ], [ %indvars.iv.next881.prol, %.lr.ph829.prol ]
  %i.acf = sub nsw i64 %indvars.iv880.ph, %wide.trip.count883
  %i.acg = icmp ugt i64 %i.acf, -8
  br i1 %i.acg, label %iter.check1058, label %.lr.ph829

.lr.ph829:                                        ; preds = %.lr.ph829.prol.loopexit, %.lr.ph829
  %indvars.iv880 = phi i64 [ %indvars.iv.next881.7, %.lr.ph829 ], [ %indvars.iv880.unr, %.lr.ph829.prol.loopexit ] ; 11 uses
  %i.ach = mul nsw i64 %indvars.iv880, %i.abe
  %i.aci = getelementptr [8 x i8], ptr %i.p, i64 %i.ach
  %i.acj = getelementptr i8, ptr %i.aci, i64 16
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !45
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv880
  store double %i.ack, ptr %i.acl, align 8, !tbaa !45
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 1
  %i.acm = mul nsw i64 %indvars.iv.next881, %i.abe
  %i.acn = getelementptr [8 x i8], ptr %i.p, i64 %i.acm
  %i.aco = getelementptr i8, ptr %i.acn, i64 16
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !45
  %i.acq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv880
  store double %i.acp, ptr %i.acq, align 8, !tbaa !45
  %indvars.iv.next881.1 = add nuw nsw i64 %indvars.iv880, 2 ; 2 uses
  %i.acr = mul nsw i64 %indvars.iv.next881.1, %i.abe
  %i.acs = getelementptr [8 x i8], ptr %i.p, i64 %i.acr
  %i.act = getelementptr i8, ptr %i.acs, i64 16
  %i.acu = load double, ptr %i.act, align 8, !tbaa !45
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next881.1
  store double %i.acu, ptr %i.acv, align 8, !tbaa !45
  %indvars.iv.next881.2 = add nuw nsw i64 %indvars.iv880, 3 ; 2 uses
  %i.acw = mul nsw i64 %indvars.iv.next881.2, %i.abe
  %i.acx = getelementptr [8 x i8], ptr %i.p, i64 %i.acw
  %i.acy = getelementptr i8, ptr %i.acx, i64 16
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !45
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next881.2
  store double %i.acz, ptr %i.ada, align 8, !tbaa !45
  %indvars.iv.next881.3 = add nuw nsw i64 %indvars.iv880, 4 ; 2 uses
  %i.adb = mul nsw i64 %indvars.iv.next881.3, %i.abe
  %i.adc = getelementptr [8 x i8], ptr %i.p, i64 %i.adb
  %i.add = getelementptr i8, ptr %i.adc, i64 16
  %i.ade = load double, ptr %i.add, align 8, !tbaa !45
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next881.3
  store double %i.ade, ptr %i.adf, align 8, !tbaa !45
  %indvars.iv.next881.4 = add nuw nsw i64 %indvars.iv880, 5 ; 2 uses
  %i.adg = mul nsw i64 %indvars.iv.next881.4, %i.abe
  %i.adh = getelementptr [8 x i8], ptr %i.p, i64 %i.adg
  %i.adi = getelementptr i8, ptr %i.adh, i64 16
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !45
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next881.4
  store double %i.adj, ptr %i.adk, align 8, !tbaa !45
  %indvars.iv.next881.5 = add nuw nsw i64 %indvars.iv880, 6 ; 2 uses
  %i.adl = mul nsw i64 %indvars.iv.next881.5, %i.abe
  %i.adm = getelementptr [8 x i8], ptr %i.p, i64 %i.adl
  %i.adn = getelementptr i8, ptr %i.adm, i64 16
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !45
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next881.5
  store double %i.ado, ptr %i.adp, align 8, !tbaa !45
  %indvars.iv.next881.6 = add nuw nsw i64 %indvars.iv880, 7 ; 2 uses
  %i.adq = mul nsw i64 %indvars.iv.next881.6, %i.abe
  %i.adr = getelementptr [8 x i8], ptr %i.p, i64 %i.adq
  %i.ads = getelementptr i8, ptr %i.adr, i64 16
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !45
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next881.6
  store double %i.adt, ptr %i.adu, align 8, !tbaa !45
  %indvars.iv.next881.7 = add nuw nsw i64 %indvars.iv880, 8 ; 2 uses
  %exitcond884.not.7 = icmp eq i64 %indvars.iv.next881.7, %wide.trip.count883
  br i1 %exitcond884.not.7, label %iter.check1058, label %.lr.ph829, !llvm.loop !37

bb.bp:                                            ; preds = %.loopexit723
  %.not665.not824 = icmp sgt i32 %i.aba, 1
  br i1 %.not665.not824, label %.lr.ph826.preheader, label %.loopexit715

.lr.ph826.preheader:                              ; preds = %bb.bp
  %i.adv = add nsw i32 %i.aba, -1
  %i.adw = zext nneg i32 %i.adv to i64
  %i.adx = shl nuw nsw i64 %i.adw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.adx, i1 false), !tbaa !45
  br label %iter.check1058

.loopexit715:                                     ; preds = %bb.bp, %.loopexit723.thread
  %i.ady = phi i32 [ %i.aba, %bb.bp ], [ %i.abd, %.loopexit723.thread ]
  %.not667830 = icmp slt i32 %i.ady, 1
  br i1 %.not667830, label %.loopexit, label %iter.check1058

iter.check1058:                                   ; preds = %.lr.ph829.prol.loopexit, %.lr.ph829, %middle.block1023, %vec.epilog.middle.block1036, %.lr.ph826.preheader, %.loopexit715
  %i.adz = phi i32 [ 1, %.loopexit715 ], [ %i.aba, %.lr.ph826.preheader ], [ %i.abd, %middle.block1023 ], [ %i.abd, %vec.epilog.middle.block1036 ], [ %i.abd, %.lr.ph829 ], [ %i.abd, %.lr.ph829.prol.loopexit ] ; 5 uses
  %i.aea = sext i32 %i.n to i64                   ; 9 uses
  %i.aeb = add nuw i32 %i.adz, 1
  %wide.trip.count888 = zext i32 %i.aeb to i64    ; 2 uses
  %i.aec = zext nneg i32 %i.adz to i64            ; 5 uses
  %min.iters.check1043 = icmp ult i32 %i.adz, 4
  %ident.check1040.not = icmp ne i32 %i.n, 1
  %or.cond1074.not1076 = select i1 %min.iters.check1043, i1 true, i1 %ident.check1040.not
  %18 = ptrtoaddr ptr %6 to i64
  %19 = ptrtoaddr ptr %4 to i64
  %i.aed = sub i64 %19, %18
  %diff.check1042 = icmp ugt i64 %i.aed, -128
  %or.cond1075 = or i1 %or.cond1074.not1076, %diff.check1042
  br i1 %or.cond1075, label %.lr.ph832.preheader, label %vector.main.loop.iter.check1044

vector.main.loop.iter.check1044:                  ; preds = %iter.check1058
  %min.iters.check1045 = icmp ult i32 %i.adz, 16
  br i1 %min.iters.check1045, label %vec.epilog.ph1062, label %vector.ph1046

vector.ph1046:                                    ; preds = %vector.main.loop.iter.check1044
  %i.aee = and i64 %i.aec, 12
  %n.vec1047 = and i64 %i.aec, 2147483632         ; 4 uses
  %i.aef = or disjoint i64 %n.vec1047, 1
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.ph1046, %vector.body1048
  %index1049 = phi i64 [ 0, %vector.ph1046 ], [ %index.next1054, %vector.body1048 ] ; 3 uses
  %i.aeg = getelementptr [8 x i8], ptr %i.p, i64 %index1049 ; 4 uses
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 16
  %i.aei = getelementptr i8, ptr %i.aeg, i64 48
  %i.aej = getelementptr i8, ptr %i.aeg, i64 80
  %i.aek = getelementptr i8, ptr %i.aeg, i64 112
  %wide.load1050 = load <4 x double>, ptr %i.aeh, align 8, !tbaa !45
  %wide.load1051 = load <4 x double>, ptr %i.aei, align 8, !tbaa !45
  %wide.load1052 = load <4 x double>, ptr %i.aej, align 8, !tbaa !45
  %wide.load1053 = load <4 x double>, ptr %i.aek, align 8, !tbaa !45
  %i.ael = getelementptr [8 x i8], ptr %6, i64 %index1049 ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 32
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ael, i64 96
  store <4 x double> %wide.load1050, ptr %i.ael, align 8, !tbaa !45
  store <4 x double> %wide.load1051, ptr %i.aem, align 8, !tbaa !45
  store <4 x double> %wide.load1052, ptr %i.aen, align 8, !tbaa !45
  store <4 x double> %wide.load1053, ptr %i.aeo, align 8, !tbaa !45
  %index.next1054 = add nuw i64 %index1049, 16    ; 2 uses
  %i.aep = icmp eq i64 %index.next1054, %n.vec1047
  br i1 %i.aep, label %middle.block1055, label %vector.body1048, !llvm.loop !38

middle.block1055:                                 ; preds = %vector.body1048
  %cmp.n1056 = icmp eq i64 %n.vec1047, %i.aec
  br i1 %cmp.n1056, label %.loopexit, label %vec.epilog.iter.check1060

vec.epilog.iter.check1060:                        ; preds = %middle.block1055
  %min.epilog.iters.check1061 = icmp eq i64 %i.aee, 0
  br i1 %min.epilog.iters.check1061, label %.lr.ph832.preheader, label %vec.epilog.ph1062, !prof !48

vec.epilog.ph1062:                                ; preds = %vector.main.loop.iter.check1044, %vec.epilog.iter.check1060
  %vec.epilog.resume.val1057 = phi i64 [ %n.vec1047, %vec.epilog.iter.check1060 ], [ 0, %vector.main.loop.iter.check1044 ]
  %n.vec1063 = and i64 %i.aec, 2147483644         ; 3 uses
  %i.aeq = or disjoint i64 %n.vec1063, 1
  br label %vec.epilog.vector.body1064

vec.epilog.vector.body1064:                       ; preds = %vec.epilog.vector.body1064, %vec.epilog.ph1062
  %index1065 = phi i64 [ %vec.epilog.resume.val1057, %vec.epilog.ph1062 ], [ %index.next1067, %vec.epilog.vector.body1064 ] ; 3 uses
  %i.aer = getelementptr [8 x i8], ptr %i.p, i64 %index1065
  %i.aes = getelementptr i8, ptr %i.aer, i64 16
  %wide.load1066 = load <4 x double>, ptr %i.aes, align 8, !tbaa !45
  %i.aet = getelementptr [8 x i8], ptr %6, i64 %index1065
  store <4 x double> %wide.load1066, ptr %i.aet, align 8, !tbaa !45
  %index.next1067 = add nuw i64 %index1065, 4     ; 2 uses
  %i.aeu = icmp eq i64 %index.next1067, %n.vec1063
  br i1 %i.aeu, label %vec.epilog.middle.block1068, label %vec.epilog.vector.body1064, !llvm.loop !39

vec.epilog.middle.block1068:                      ; preds = %vec.epilog.vector.body1064
  %cmp.n1069 = icmp eq i64 %n.vec1063, %i.aec
  br i1 %cmp.n1069, label %.loopexit, label %.lr.ph832.preheader

.lr.ph832.preheader:                              ; preds = %iter.check1058, %vec.epilog.iter.check1060, %vec.epilog.middle.block1068
  %indvars.iv885.ph = phi i64 [ 1, %iter.check1058 ], [ %i.aef, %vec.epilog.iter.check1060 ], [ %i.aeq, %vec.epilog.middle.block1068 ] ; 4 uses
  %i.aev = sub nsw i64 %wide.trip.count888, %indvars.iv885.ph
  %i.aew = zext nneg i32 %i.adz to i64
  %i.aex = sub nsw i64 %i.aew, %indvars.iv885.ph
  %xtraiter1091 = and i64 %i.aev, 7               ; 2 uses
  %lcmp.mod1092.not = icmp eq i64 %xtraiter1091, 0
  br i1 %lcmp.mod1092.not, label %.lr.ph832.prol.loopexit, label %.lr.ph832.prol

.lr.ph832.prol:                                   ; preds = %.lr.ph832.preheader, %.lr.ph832.prol
  %indvars.iv885.prol = phi i64 [ %indvars.iv.next886.prol, %.lr.ph832.prol ], [ %indvars.iv885.ph, %.lr.ph832.preheader ] ; 3 uses
  %prol.iter1093 = phi i64 [ %prol.iter1093.next, %.lr.ph832.prol ], [ 0, %.lr.ph832.preheader ]
  %i.aey = mul nsw i64 %indvars.iv885.prol, %i.aea
  %i.aez = getelementptr [8 x i8], ptr %i.p, i64 %i.aey
  %i.afa = getelementptr i8, ptr %i.aez, i64 8
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !45
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv885.prol
  store double %i.afb, ptr %i.afc, align 8, !tbaa !45
  %indvars.iv.next886.prol = add nuw nsw i64 %indvars.iv885.prol, 1 ; 2 uses
  %prol.iter1093.next = add i64 %prol.iter1093, 1 ; 2 uses
  %prol.iter1093.cmp.not = icmp eq i64 %prol.iter1093.next, %xtraiter1091
  br i1 %prol.iter1093.cmp.not, label %.lr.ph832.prol.loopexit, label %.lr.ph832.prol, !llvm.loop !40

.lr.ph832.prol.loopexit:                          ; preds = %.lr.ph832.prol, %.lr.ph832.preheader
  %indvars.iv885.unr = phi i64 [ %indvars.iv885.ph, %.lr.ph832.preheader ], [ %indvars.iv.next886.prol, %.lr.ph832.prol ]
  %i.afd = icmp ult i64 %i.aex, 7
  br i1 %i.afd, label %.loopexit, label %.lr.ph832

.lr.ph832:                                        ; preds = %.lr.ph832.prol.loopexit, %.lr.ph832
  %indvars.iv885 = phi i64 [ %indvars.iv.next886.7, %.lr.ph832 ], [ %indvars.iv885.unr, %.lr.ph832.prol.loopexit ] ; 11 uses
  %i.afe = mul nsw i64 %indvars.iv885, %i.aea
  %i.aff = getelementptr [8 x i8], ptr %i.p, i64 %i.afe
  %i.afg = getelementptr i8, ptr %i.aff, i64 8
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !45
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv885
  store double %i.afh, ptr %i.afi, align 8, !tbaa !45
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1
  %i.afj = mul nsw i64 %indvars.iv.next886, %i.aea
  %i.afk = getelementptr [8 x i8], ptr %i.p, i64 %i.afj
  %i.afl = getelementptr i8, ptr %i.afk, i64 8
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !45
  %i.afn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv885
  store double %i.afm, ptr %i.afn, align 8, !tbaa !45
  %indvars.iv.next886.1 = add nuw nsw i64 %indvars.iv885, 2 ; 2 uses
  %i.afo = mul nsw i64 %indvars.iv.next886.1, %i.aea
  %i.afp = getelementptr [8 x i8], ptr %i.p, i64 %i.afo
  %i.afq = getelementptr i8, ptr %i.afp, i64 8
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !45
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next886.1
  store double %i.afr, ptr %i.afs, align 8, !tbaa !45
  %indvars.iv.next886.2 = add nuw nsw i64 %indvars.iv885, 3 ; 2 uses
  %i.aft = mul nsw i64 %indvars.iv.next886.2, %i.aea
  %i.afu = getelementptr [8 x i8], ptr %i.p, i64 %i.aft
  %i.afv = getelementptr i8, ptr %i.afu, i64 8
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !45
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next886.2
  store double %i.afw, ptr %i.afx, align 8, !tbaa !45
  %indvars.iv.next886.3 = add nuw nsw i64 %indvars.iv885, 4 ; 2 uses
  %i.afy = mul nsw i64 %indvars.iv.next886.3, %i.aea
  %i.afz = getelementptr [8 x i8], ptr %i.p, i64 %i.afy
  %i.aga = getelementptr i8, ptr %i.afz, i64 8
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !45
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next886.3
  store double %i.agb, ptr %i.agc, align 8, !tbaa !45
  %indvars.iv.next886.4 = add nuw nsw i64 %indvars.iv885, 5 ; 2 uses
  %i.agd = mul nsw i64 %indvars.iv.next886.4, %i.aea
  %i.age = getelementptr [8 x i8], ptr %i.p, i64 %i.agd
  %i.agf = getelementptr i8, ptr %i.age, i64 8
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !45
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next886.4
  store double %i.agg, ptr %i.agh, align 8, !tbaa !45
  %indvars.iv.next886.5 = add nuw nsw i64 %indvars.iv885, 6 ; 2 uses
  %i.agi = mul nsw i64 %indvars.iv.next886.5, %i.aea
  %i.agj = getelementptr [8 x i8], ptr %i.p, i64 %i.agi
  %i.agk = getelementptr i8, ptr %i.agj, i64 8
  %i.agl = load double, ptr %i.agk, align 8, !tbaa !45
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next886.5
  store double %i.agl, ptr %i.agm, align 8, !tbaa !45
  %indvars.iv.next886.6 = add nuw nsw i64 %indvars.iv885, 7 ; 2 uses
  %i.agn = mul nsw i64 %indvars.iv.next886.6, %i.aea
  %i.ago = getelementptr [8 x i8], ptr %i.p, i64 %i.agn
  %i.agp = getelementptr i8, ptr %i.ago, i64 8
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !45
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next886.6
  store double %i.agq, ptr %i.agr, align 8, !tbaa !45
  %indvars.iv.next886.7 = add nuw nsw i64 %indvars.iv885, 8 ; 2 uses
  %exitcond889.not.7 = icmp eq i64 %indvars.iv.next886.7, %wide.trip.count888
  br i1 %exitcond889.not.7, label %.loopexit, label %.lr.ph832, !llvm.loop !41

.loopexit:                                        ; preds = %vec.epilog.scalar.ph995.prol.loopexit, %vec.epilog.scalar.ph995, %.lr.ph832.prol.loopexit, %.lr.ph832, %middle.block991, %vec.epilog.middle.block1004, %middle.block1055, %vec.epilog.middle.block1068, %.loopexit725, %.loopexit715, %bb.l, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlar2v_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

end_hunk_2
