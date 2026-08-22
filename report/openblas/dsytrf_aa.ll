Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytrf_aa?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [10 x i8] c"DSYTRF_AA\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b18 = internal global double -1.000000e+00, align 8
@c_b20 = internal global double 1.000000e+00, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1

; Function Attrs: nounwind uwtable
define void @dsytrf_aa_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = alloca i32, align 4                      ; 21 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca double, align 8                   ; 8 uses
  %i.f = alloca i32, align 4                      ; 20 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.i = load i32, ptr %3, align 4, !tbaa !8      ; 16 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j ; 20 uses
  %i.l = getelementptr inbounds i8, ptr %4, i64 -4 ; 10 uses
  %i.m = getelementptr inbounds i8, ptr %5, i64 -8 ; 10 uses
  %i.n = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 9, i32 noundef 1) #4 ; 2 uses
  store i32 0, ptr %7, align 4, !tbaa !8
  %i.o = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  %i.p = load i32, ptr %6, align 4, !tbaa !8
  %i.q = icmp eq i32 %i.p, -1                     ; 2 uses
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not346 = icmp eq i32 %i.r, 0
  br i1 %.not346, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i32, ptr %1, align 4, !tbaa !8      ; 5 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %3, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.s, i32 1)
  %i.v = icmp slt i32 %i.u, %spec.select
  br i1 %i.v, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = shl nuw i32 %i.s, 1
  %i.x = load i32, ptr %6, align 4, !tbaa !8
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.z = icmp sge i32 %i.x, %i.y
  %or.cond = select i1 %i.z, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %.pr = load i32, ptr %7, align 4, !tbaa !8      ; 2 uses
  %i.aa = icmp eq i32 %.pr, 0
  br i1 %i.aa, label %bb.g, label %.thread

.thread.sink.split:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.d ], [ -7, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %7, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f
  %.ph364 = phi i32 [ %.pr, %bb.f ], [ %.sink, %.thread.sink.split ]
  %i.ab = sub nsw i32 0, %.ph364
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !8
  %i.ac = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 9) #4 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.n, 1                     ; 2 uses
  %i.ae = mul nsw i32 %i.s, %i.ad
  %i.af = sitofp i32 %i.ae to double
  store double %i.af, ptr %5, align 8, !tbaa !9
  %i.ag = icmp eq i32 %i.s, 0
  %or.cond479 = or i1 %i.q, %i.ag
  br i1 %or.cond479, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 4, !tbaa !8
  %i.ah = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %6, align 4, !tbaa !8     ; 2 uses
  %i.ak = mul nsw i32 %i.ah, %i.ad
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = sub nsw i32 %i.aj, %i.ah
  %i.an = sdiv i32 %i.am, %i.ah
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.an, %bb.j ], [ %i.n, %bb.i ] ; 10 uses
  br i1 %.not, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @dcopy_(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull @c__1) #4
  %i.ao = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not354380 = icmp sgt i32 %i.ao, 0
  br i1 %.not354380, label %.lr.ph384, label %.loopexit

.lr.ph384:                                        ; preds = %bb.l
  %i.ap = add i32 %i.i, 1
  %i.aq = sext i32 %i.i to i64                    ; 2 uses
  %i.ar = icmp slt i32 %.0, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph384, %bb.u
  %i.as = phi i32 [ %i.ao, %.lr.ph384 ], [ %i.gi, %bb.u ] ; 3 uses
  %.0334381 = phi i32 [ 0, %.lr.ph384 ], [ %i.dc, %bb.u ] ; 13 uses
  %i.at = add nsw i32 %.0334381, 1                ; 6 uses
  %i.au = sub nsw i32 %i.as, %i.at
  %i.av = add nsw i32 %i.au, 1
  %i.aw = call i32 @llvm.smin.i32(i32 %i.av, i32 %.0)
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !8
  %i.ax = call i32 @llvm.smax.i32(i32 %.0334381, i32 1) ; 2 uses
  %i.ay = sub nsw i32 %i.ax, %.0334381            ; 4 uses
  %i.az = sub nsw i32 2, %i.ay
  store i32 %i.az, ptr %i.a, align 4, !tbaa !8
  %i.ba = sub nsw i32 %i.as, %.0334381
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !8
  %i.bb = mul nsw i32 %i.at, %i.i
  %i.bc = add nsw i32 %i.bb, %i.ax
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bd
  %i.bf = sext i32 %i.at to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bf
  %i.bh = mul nsw i32 %i.as, %.0
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr %i.m, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  call void @dlasyf_aa_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef %i.be, ptr noundef nonnull %3, ptr noundef nonnull %i.bg, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef %i.bk) #4
  %i.bl = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !8
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !8   ; 5 uses
  %i.bn = add i32 %i.at, %i.bm                    ; 2 uses
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !8
  %i.bo = call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bn) ; 4 uses
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !8
  %i.bp = add nsw i32 %.0334381, 2                ; 2 uses
  %.not357368 = icmp sgt i32 %i.bp, %i.bo
  br i1 %.not357368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bq = sub nsw i32 %i.at, %i.ay
  %.fr407 = freeze i32 %i.bq                      ; 2 uses
  %i.br = icmp sgt i32 %.fr407, 2
  %i.bs = add nsw i32 %.fr407, -2
  %i.bt = sext i32 %i.bp to i64                   ; 8 uses
  br i1 %i.br, label %.lr.ph.split.us, label %iter.check

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %i.bu = phi i32 [ %i.cg, %bb.o ], [ %i.bo, %.lr.ph ]
  %indvars.iv415 = phi i64 [ %indvars.iv.next416, %bb.o ], [ %i.bt, %.lr.ph ] ; 5 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv415 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = add nsw i32 %i.bw, %.0334381            ; 3 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  %i.by = trunc nsw i64 %indvars.iv415 to i32
  %.not361.us = icmp eq i32 %i.bx, %i.by
  br i1 %.not361.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !8
  %i.bz = mul nsw i64 %indvars.iv415, %i.aq
  %i.ca = getelementptr [8 x i8], ptr %i.k, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = mul nsw i32 %i.bx, %i.i
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.k, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  call void @dswap_(ptr noundef nonnull %i.b, ptr noundef %i.cb, ptr noundef nonnull @c__1, ptr noundef %i.cf, ptr noundef nonnull @c__1) #4
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us
  %i.cg = phi i32 [ %.pre, %bb.n ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next416 = add nsw i64 %indvars.iv415, 1
  %i.ch = sext i32 %i.cg to i64
  %.not357.us.not = icmp slt i64 %indvars.iv415, %i.ch
  br i1 %.not357.us.not, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !11

iter.check:                                       ; preds = %.lr.ph
  %i.ci = sext i32 %i.bo to i64                   ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.bt)
  %i.cj = add i64 %smax, 1
  %i.ck = sub i64 %i.cj, %i.bt                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check483 = icmp ult i64 %i.ck, 32
  br i1 %min.iters.check483, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cl = and i64 %i.ck, 24
  %n.vec = and i64 %i.ck, -32                     ; 4 uses
  %i.cm = add i64 %n.vec, %i.bt
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0334381, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep531 = getelementptr [4 x i8], ptr %i.l, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep532 = getelementptr [4 x i8], ptr %invariant.gep531, i64 %index ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep532, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %gep532, i64 64 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %gep532, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %gep532, align 4, !tbaa !8
  %wide.load484 = load <8 x i32>, ptr %i.cn, align 4, !tbaa !8
  %wide.load485 = load <8 x i32>, ptr %i.co, align 4, !tbaa !8
  %wide.load486 = load <8 x i32>, ptr %i.cp, align 4, !tbaa !8
  %i.cq = add nsw <8 x i32> %wide.load, %broadcast.splat
  %i.cr = add nsw <8 x i32> %wide.load484, %broadcast.splat
  %i.cs = add nsw <8 x i32> %wide.load485, %broadcast.splat
  %i.ct = add nsw <8 x i32> %wide.load486, %broadcast.splat
  store <8 x i32> %i.cq, ptr %gep532, align 4, !tbaa !8
  store <8 x i32> %i.cr, ptr %i.cn, align 4, !tbaa !8
  store <8 x i32> %i.cs, ptr %i.co, align 4, !tbaa !8
  store <8 x i32> %i.ct, ptr %i.cp, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec487 = and i64 %i.ck, -8                   ; 3 uses
  %i.cv = add i64 %n.vec487, %i.bt
  %broadcast.splatinsert488 = insertelement <8 x i32> poison, i32 %.0334381, i64 0
  %broadcast.splat489 = shufflevector <8 x i32> %broadcast.splatinsert488, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep533 = getelementptr [4 x i8], ptr %i.l, i64 %i.bt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index490 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next492, %vec.epilog.vector.body ] ; 2 uses
  %gep534 = getelementptr [4 x i8], ptr %invariant.gep533, i64 %index490 ; 2 uses
  %wide.load491 = load <8 x i32>, ptr %gep534, align 4, !tbaa !8
  %i.cw = add nsw <8 x i32> %wide.load491, %broadcast.splat489
  store <8 x i32> %i.cw, ptr %gep534, align 4, !tbaa !8
  %index.next492 = add nuw i64 %index490, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next492, %n.vec487
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n493 = icmp eq i64 %i.ck, %n.vec487
  br i1 %cmp.n493, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bt, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = add nsw i32 %i.cz, %.0334381
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not357.not = icmp slt i64 %indvars.iv, %i.ci
  br i1 %.not357.not, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre430 = load i32, ptr %i.f, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit, %bb.m
  %i.db = phi i32 [ %i.bm, %bb.m ], [ %.pre430, %._crit_edge.loopexit ], [ %i.bm, %middle.block ], [ %i.bm, %vec.epilog.middle.block ], [ %i.bm, %vec.epilog.scalar.ph ] ; 4 uses
  %i.dc = add nsw i32 %i.db, %.0334381            ; 10 uses
  %i.dd = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %i.de = icmp slt i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.p, label %bb.u

bb.p:                                             ; preds = %._crit_edge
  %i.df = icmp sgt i32 %.0334381, 0               ; 2 uses
  %i.dg = icmp sgt i32 %i.db, 1
  %or.cond3 = or i1 %i.df, %i.dg
  %i.dh = add nsw i32 %i.dc, 1                    ; 4 uses
  br i1 %or.cond3, label %bb.q, label %._crit_edge446

bb.q:                                             ; preds = %bb.p
  %i.di = mul nsw i32 %i.dh, %i.i                 ; 2 uses
  %i.dj = add nsw i32 %i.di, %i.dc
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dk ; 3 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !9
  store double %i.dm, ptr %i.e, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.dl, align 8, !tbaa !9
  %i.dn = sub nsw i32 %i.dd, %i.dc
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !8
  %i.do = add nsw i32 %i.dc, -1
  %i.dp = add nsw i32 %i.do, %i.di
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dq
  %i.ds = add nsw i32 %i.db, 1                    ; 2 uses
  %i.dt = mul nsw i32 %i.dd, %i.db
  %i.du = add nsw i32 %i.dt, %i.ds
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dv
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull %3, ptr noundef nonnull %i.dw, ptr noundef nonnull @c__1) #4
  %i.dx = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.dy = sub nsw i32 %i.dx, %i.dc
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !8
  %i.dz = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ea = mul nsw i32 %i.dz, %i.dx
  %i.eb = add nsw i32 %i.ea, %i.ds
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ec
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ed, ptr noundef nonnull @c__1) #4
  br i1 %i.df, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ef = add nsw i32 %i.ee, -1
  store i32 %i.ef, ptr %i.f, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0332.neg408 = phi i32 [ 0, %bb.r ], [ -1, %bb.q ]
  %i.eg = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  store i32 %i.eg, ptr %i.a, align 4, !tbaa !8
  store i32 %.0, ptr %i.b, align 4, !tbaa !8
  %i.eh = icmp sge i32 %i.dh, %i.eg
  %i.ei = icmp slt i32 %i.dc, %i.eg
  %.in358375 = select i1 %i.ar, i1 %i.eh, i1 %i.ei
  br i1 %.in358375, label %.lr.ph378, label %._crit_edge379

.lr.ph378:                                        ; preds = %bb.s
  %i.ej = add nsw i32 %.0332.neg408, %i.at        ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.ek
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph378, %._crit_edge374
  %.1331376 = phi i32 [ %i.dh, %.lr.ph378 ], [ %i.fx, %._crit_edge374 ] ; 6 uses
  %i.el = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.em = sub i32 %i.el, %.1331376
  %i.en = add i32 %i.em, 1                        ; 3 uses
  store i32 %i.en, ptr %i.d, align 4, !tbaa !8
  %i.eo = call i32 @llvm.smin.i32(i32 %.0, i32 %i.en) ; 3 uses
  store i32 %i.eo, ptr %i.h, align 4, !tbaa !8
  %storemerge360370 = add nsw i32 %i.eo, -1
  store i32 %storemerge360370, ptr %i.g, align 4, !tbaa !8
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %.lr.ph373.preheader, label %._crit_edge374

.lr.ph373.preheader:                              ; preds = %bb.t
  %i.eq = sext i32 %.1331376 to i64
  br label %.lr.ph373

.lr.ph373:                                        ; preds = %.lr.ph373.preheader, %.lr.ph373
  %indvars.iv418 = phi i64 [ %i.eq, %.lr.ph373.preheader ], [ %indvars.iv.next419, %.lr.ph373 ] ; 4 uses
  %i.er = load i32, ptr %i.f, align 4, !tbaa !8
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.c, align 4, !tbaa !8
  %i.et = load i32, ptr %1, align 4, !tbaa !8
  %i.eu = mul nsw i32 %i.et, %i.ay
  %i.ev = trunc nsw i64 %indvars.iv418 to i32
  %i.ew = sub i32 %i.ev, %.0334381
  %i.ex = add nsw i32 %i.ew, %i.eu
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ey
  %i.fa = mul nsw i64 %indvars.iv418, %i.aq       ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fa
  %i.fb = getelementptr [8 x i8], ptr %i.k, i64 %i.fa
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %indvars.iv418
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b18, ptr noundef nonnull %i.ez, ptr noundef nonnull %1, ptr noundef %gep, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b20, ptr noundef %i.fc, ptr noundef nonnull %3) #4
  %indvars.iv.next419 = add nsw i64 %indvars.iv418, 1 ; 2 uses
  %i.fd = load i32, ptr %i.g, align 4, !tbaa !8   ; 2 uses
  %storemerge360 = add nsw i32 %i.fd, -1
  store i32 %storemerge360, ptr %i.g, align 4, !tbaa !8
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %.lr.ph373, label %._crit_edge374.loopexit, !llvm.loop !19

._crit_edge374.loopexit:                          ; preds = %.lr.ph373
  %i.ff = trunc nsw i64 %indvars.iv.next419 to i32 ; 2 uses
  %.pre431 = load i32, ptr %1, align 4, !tbaa !8  ; 2 uses
  %.pre443 = sub i32 %.pre431, %i.ff
  %.pre444 = add i32 %.pre443, 1
  br label %._crit_edge374

._crit_edge374:                                   ; preds = %._crit_edge374.loopexit, %bb.t
  %.pre-phi445 = phi i32 [ %.pre444, %._crit_edge374.loopexit ], [ %i.en, %bb.t ]
  %i.fg = phi i32 [ %.pre431, %._crit_edge374.loopexit ], [ %i.el, %bb.t ]
  %.0329.lcssa = phi i32 [ %i.ff, %._crit_edge374.loopexit ], [ %.1331376, %bb.t ] ; 2 uses
  store i32 %.pre-phi445, ptr %i.c, align 4, !tbaa !8
  %i.fh = load i32, ptr %i.f, align 4, !tbaa !8
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.d, align 4, !tbaa !8
  %i.fj = mul nsw i32 %.1331376, %i.i
  %i.fk = add nsw i32 %i.ej, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fl
  %i.fn = mul nsw i32 %i.fg, %i.ay
  %i.fo = sub i32 %.0329.lcssa, %.0334381
  %i.fp = add nsw i32 %i.fo, %i.fn
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fq
  %i.fs = mul nsw i32 %.0329.lcssa, %i.i
  %i.ft = add nsw i32 %i.fs, %.1331376
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fu
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b18, ptr noundef %i.fm, ptr noundef nonnull %3, ptr noundef nonnull %i.fr, ptr noundef nonnull %1, ptr noundef nonnull @c_b20, ptr noundef %i.fv, ptr noundef nonnull %3) #4
  %i.fw = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.fx = add nsw i32 %i.fw, %.1331376            ; 3 uses
  %i.fy = icmp slt i32 %i.fw, 0
  %i.fz = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ga = icmp sge i32 %i.fx, %i.fz
  %i.gb = icmp sle i32 %i.fx, %i.fz
  %.in358 = select i1 %i.fy, i1 %i.ga, i1 %i.gb
  br i1 %.in358, label %bb.t, label %._crit_edge379.loopexit, !llvm.loop !20

._crit_edge379.loopexit:                          ; preds = %._crit_edge374
  %.pre432.pre = load i32, ptr %1, align 4, !tbaa !8
  br label %._crit_edge379

._crit_edge379:                                   ; preds = %._crit_edge379.loopexit, %bb.s
  %.pre432 = phi i32 [ %.pre432.pre, %._crit_edge379.loopexit ], [ %i.eg, %bb.s ]
  %i.gc = load double, ptr %i.e, align 8, !tbaa !9
  store double %i.gc, ptr %i.dl, align 8, !tbaa !9
  br label %._crit_edge446

._crit_edge446:                                   ; preds = %bb.p, %._crit_edge379
  %i.gd = phi i32 [ %.pre432, %._crit_edge379 ], [ %i.dd, %bb.p ]
  %i.ge = sub nsw i32 %i.gd, %i.dc
  store i32 %i.ge, ptr %i.b, align 4, !tbaa !8
  %i.gf = mul i32 %i.dh, %i.ap
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gg
  call void @dcopy_(ptr noundef nonnull %i.b, ptr noundef %i.gh, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull @c__1) #4
  %.pre433 = load i32, ptr %1, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge446, %._crit_edge
  %i.gi = phi i32 [ %.pre433, %._crit_edge446 ], [ %i.dd, %._crit_edge ] ; 2 uses
  %.not354 = icmp slt i32 %i.dc, %i.gi
  br i1 %.not354, label %bb.m, label %.loopexit

bb.v:                                             ; preds = %bb.k
  tail call void @dcopy_(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @c__1, ptr noundef nonnull %5, ptr noundef nonnull @c__1) #4
  %i.gj = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not348402 = icmp sgt i32 %i.gj, 0
  br i1 %.not348402, label %.lr.ph406, label %.loopexit

.lr.ph406:                                        ; preds = %bb.v
  %i.gk = add i32 %i.i, 1                         ; 2 uses
  %i.gl = sext i32 %i.i to i64
  %invariant.gep475 = getelementptr [8 x i8], ptr %i.k, i64 %i.gl
  %i.gm = icmp slt i32 %.0, 0
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph406, %bb.ae
  %i.gn = phi i32 [ %i.gj, %.lr.ph406 ], [ %i.ma, %bb.ae ] ; 3 uses
  %.1335403 = phi i32 [ 0, %.lr.ph406 ], [ %i.it, %bb.ae ] ; 13 uses
  %i.go = add nsw i32 %.1335403, 1                ; 6 uses
  %i.gp = sub nsw i32 %i.gn, %i.go
  %i.gq = add nsw i32 %i.gp, 1
  %i.gr = call i32 @llvm.smin.i32(i32 %i.gq, i32 %.0)
  store i32 %i.gr, ptr %i.f, align 4, !tbaa !8
  %i.gs = call i32 @llvm.smax.i32(i32 %.1335403, i32 1) ; 2 uses
  %i.gt = sub nsw i32 %i.gs, %.1335403            ; 4 uses
  %i.gu = sub nsw i32 2, %i.gt
  store i32 %i.gu, ptr %i.b, align 4, !tbaa !8
  %i.gv = sub nsw i32 %i.gn, %.1335403
  store i32 %i.gv, ptr %i.a, align 4, !tbaa !8
  %i.gw = mul nsw i32 %i.gs, %i.i
  %i.gx = add nsw i32 %i.gw, %i.go
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gy
  %i.ha = sext i32 %i.go to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ha
  %i.hc = mul nsw i32 %i.gn, %.0
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [8 x i8], ptr %i.m, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  call void @dlasyf_aa_(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, ptr noundef %i.gz, ptr noundef nonnull %3, ptr noundef nonnull %i.hb, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef %i.hf) #4
  %i.hg = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  store i32 %i.hg, ptr %i.a, align 4, !tbaa !8
  %i.hh = load i32, ptr %i.f, align 4, !tbaa !8   ; 5 uses
  %i.hi = add i32 %i.go, %i.hh                    ; 2 uses
  store i32 %i.hi, ptr %i.c, align 4, !tbaa !8
  %i.hj = call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.hi) ; 4 uses
  store i32 %i.hj, ptr %i.b, align 4, !tbaa !8
  %i.hk = add nsw i32 %.1335403, 2                ; 2 uses
  %.not351385 = icmp sgt i32 %i.hk, %i.hj
  br i1 %.not351385, label %._crit_edge389, label %.lr.ph388

.lr.ph388:                                        ; preds = %bb.w
  %i.hl = sub nsw i32 %i.go, %i.gt
  %.fr = freeze i32 %i.hl                         ; 2 uses
  %i.hm = icmp sgt i32 %.fr, 2
  %i.hn = add nsw i32 %.fr, -2
  %i.ho = sext i32 %i.hk to i64                   ; 8 uses
  br i1 %i.hm, label %.lr.ph388.split.us, label %iter.check513

.lr.ph388.split.us:                               ; preds = %.lr.ph388, %bb.y
  %i.hp = phi i32 [ %i.hx, %bb.y ], [ %i.hj, %.lr.ph388 ]
  %indvars.iv424 = phi i64 [ %indvars.iv.next425, %bb.y ], [ %i.ho, %.lr.ph388 ] ; 5 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv424 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !8
  %i.hs = add nsw i32 %i.hr, %.1335403            ; 3 uses
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !8
  %i.ht = trunc nsw i64 %indvars.iv424 to i32
  %.not353.us = icmp eq i32 %i.hs, %i.ht
  br i1 %.not353.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph388.split.us
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !8
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %indvars.iv424
  %i.hu = add nsw i32 %i.hs, %i.i
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hv
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %gep476, ptr noundef nonnull %3, ptr noundef %i.hw, ptr noundef nonnull %3) #4
  %.pre434 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph388.split.us
  %i.hx = phi i32 [ %.pre434, %bb.x ], [ %i.hp, %.lr.ph388.split.us ] ; 2 uses
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1
  %i.hy = sext i32 %i.hx to i64
  %.not351.us.not = icmp slt i64 %indvars.iv424, %i.hy
  br i1 %.not351.us.not, label %.lr.ph388.split.us, label %._crit_edge389.loopexit, !llvm.loop !21

iter.check513:                                    ; preds = %.lr.ph388
  %i.hz = sext i32 %i.hj to i64                   ; 2 uses
  %smax495 = call i64 @llvm.smax.i64(i64 %i.hz, i64 %i.ho)
  %i.ia = add i64 %smax495, 1
  %i.ib = sub i64 %i.ia, %i.ho                    ; 7 uses
  %min.iters.check496 = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check496, label %vec.epilog.scalar.ph514.preheader, label %vector.main.loop.iter.check497

vector.main.loop.iter.check497:                   ; preds = %iter.check513
  %min.iters.check498 = icmp ult i64 %i.ib, 32
  br i1 %min.iters.check498, label %vec.epilog.ph517, label %vector.ph499

vector.ph499:                                     ; preds = %vector.main.loop.iter.check497
  %i.ic = and i64 %i.ib, 24
  %n.vec500 = and i64 %i.ib, -32                  ; 4 uses
  %i.id = add i64 %n.vec500, %i.ho
  %broadcast.splatinsert501 = insertelement <8 x i32> poison, i32 %.1335403, i64 0
  %broadcast.splat502 = shufflevector <8 x i32> %broadcast.splatinsert501, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep535 = getelementptr [4 x i8], ptr %i.l, i64 %i.ho
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph499
  %index504 = phi i64 [ 0, %vector.ph499 ], [ %index.next509, %vector.body503 ] ; 2 uses
  %gep536 = getelementptr [4 x i8], ptr %invariant.gep535, i64 %index504 ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %gep536, i64 32 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %gep536, i64 64 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %gep536, i64 96 ; 2 uses
  %wide.load505.a = load <8 x i32>, ptr %gep536, align 4, !tbaa !8
  %wide.load506.a = load <8 x i32>, ptr %i.ie, align 4, !tbaa !8
  %wide.load507.a = load <8 x i32>, ptr %i.if, align 4, !tbaa !8
  %wide.load508 = load <8 x i32>, ptr %i.ig, align 4, !tbaa !8
  %i.ih = add nsw <8 x i32> %wide.load505.a, %broadcast.splat502
  %i.ii = add nsw <8 x i32> %wide.load506.a, %broadcast.splat502
  %i.ij = add nsw <8 x i32> %wide.load507.a, %broadcast.splat502
  %i.ik = add nsw <8 x i32> %wide.load508, %broadcast.splat502
  store <8 x i32> %i.ih, ptr %gep536, align 4, !tbaa !8
  store <8 x i32> %i.ii, ptr %i.ie, align 4, !tbaa !8
  store <8 x i32> %i.ij, ptr %i.if, align 4, !tbaa !8
  store <8 x i32> %i.ik, ptr %i.ig, align 4, !tbaa !8
  %index.next509 = add nuw i64 %index504, 32      ; 2 uses
  %i.il = icmp eq i64 %index.next509, %n.vec500
  br i1 %i.il, label %middle.block510, label %vector.body503, !llvm.loop !22

middle.block510:                                  ; preds = %vector.body503
  %cmp.n511 = icmp eq i64 %i.ib, %n.vec500
  br i1 %cmp.n511, label %._crit_edge389, label %vec.epilog.iter.check515

vec.epilog.iter.check515:                         ; preds = %middle.block510
  %min.epilog.iters.check516 = icmp eq i64 %i.ic, 0
  br i1 %min.epilog.iters.check516, label %vec.epilog.scalar.ph514.preheader, label %vec.epilog.ph517, !prof !16

vec.epilog.ph517:                                 ; preds = %vector.main.loop.iter.check497, %vec.epilog.iter.check515
  %vec.epilog.resume.val512 = phi i64 [ %n.vec500, %vec.epilog.iter.check515 ], [ 0, %vector.main.loop.iter.check497 ]
  %n.vec518 = and i64 %i.ib, -8                   ; 3 uses
  %i.im = add i64 %n.vec518, %i.ho
  %broadcast.splatinsert519 = insertelement <8 x i32> poison, i32 %.1335403, i64 0
  %broadcast.splat520 = shufflevector <8 x i32> %broadcast.splatinsert519, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep537 = getelementptr [4 x i8], ptr %i.l, i64 %i.ho
  br label %vec.epilog.vector.body521

vec.epilog.vector.body521:                        ; preds = %vec.epilog.vector.body521, %vec.epilog.ph517
  %index522 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph517 ], [ %index.next524, %vec.epilog.vector.body521 ] ; 2 uses
  %gep538 = getelementptr [4 x i8], ptr %invariant.gep537, i64 %index522 ; 2 uses
  %wide.load523 = load <8 x i32>, ptr %gep538, align 4, !tbaa !8
  %i.in = add nsw <8 x i32> %wide.load523, %broadcast.splat520
  store <8 x i32> %i.in, ptr %gep538, align 4, !tbaa !8
  %index.next524 = add nuw i64 %index522, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next524, %n.vec518
  br i1 %i.io, label %vec.epilog.middle.block525, label %vec.epilog.vector.body521, !llvm.loop !23

vec.epilog.middle.block525:                       ; preds = %vec.epilog.vector.body521
  %cmp.n526 = icmp eq i64 %i.ib, %n.vec518
  br i1 %cmp.n526, label %._crit_edge389, label %vec.epilog.scalar.ph514.preheader

vec.epilog.scalar.ph514.preheader:                ; preds = %iter.check513, %vec.epilog.iter.check515, %vec.epilog.middle.block525
  %indvars.iv421.ph = phi i64 [ %i.ho, %iter.check513 ], [ %i.id, %vec.epilog.iter.check515 ], [ %i.im, %vec.epilog.middle.block525 ]
  br label %vec.epilog.scalar.ph514

vec.epilog.scalar.ph514:                          ; preds = %vec.epilog.scalar.ph514.preheader, %vec.epilog.scalar.ph514
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %vec.epilog.scalar.ph514 ], [ %indvars.iv421.ph, %vec.epilog.scalar.ph514.preheader ] ; 3 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv421 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8
  %i.ir = add nsw i32 %i.iq, %.1335403
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !8
  %indvars.iv.next422 = add nsw i64 %indvars.iv421, 1
  %.not351.not = icmp slt i64 %indvars.iv421, %i.hz
  br i1 %.not351.not, label %vec.epilog.scalar.ph514, label %._crit_edge389, !llvm.loop !24

._crit_edge389.loopexit:                          ; preds = %bb.y
  %.pre435 = load i32, ptr %i.f, align 4, !tbaa !8
  br label %._crit_edge389

._crit_edge389:                                   ; preds = %vec.epilog.scalar.ph514, %middle.block510, %vec.epilog.middle.block525, %._crit_edge389.loopexit, %bb.w
  %i.is = phi i32 [ %i.hh, %bb.w ], [ %.pre435, %._crit_edge389.loopexit ], [ %i.hh, %middle.block510 ], [ %i.hh, %vec.epilog.middle.block525 ], [ %i.hh, %vec.epilog.scalar.ph514 ] ; 4 uses
  %i.it = add nsw i32 %i.is, %.1335403            ; 10 uses
  %i.iu = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %._crit_edge389
  %i.iw = icmp sgt i32 %.1335403, 0               ; 2 uses
  %i.ix = icmp sgt i32 %i.is, 1
  %or.cond5 = or i1 %i.iw, %i.ix
  %i.iy = add nsw i32 %i.it, 1                    ; 5 uses
  br i1 %or.cond5, label %bb.aa, label %._crit_edge447

bb.aa:                                            ; preds = %bb.z
  %i.iz = mul nsw i32 %i.it, %i.i
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.jb ; 3 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !9
  store double %i.jd, ptr %i.e, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.jc, align 8, !tbaa !9
  %i.je = sub nsw i32 %i.iu, %i.it
  store i32 %i.je, ptr %i.b, align 4, !tbaa !8
  %i.jf = add nsw i32 %i.it, -1
  %i.jg = mul nsw i32 %i.jf, %i.i
  %i.jh = add nsw i32 %i.jg, %i.iy
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ji
  %i.jk = add nsw i32 %i.is, 1                    ; 2 uses
  %i.jl = mul nsw i32 %i.iu, %i.is
  %i.jm = add nsw i32 %i.jl, %i.jk
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.jn
  call void @dcopy_(ptr noundef nonnull %i.b, ptr noundef %i.jj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.jo, ptr noundef nonnull @c__1) #4
  %i.jp = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.jq = sub nsw i32 %i.jp, %i.it
  store i32 %i.jq, ptr %i.b, align 4, !tbaa !8
  %i.jr = load i32, ptr %i.f, align 4, !tbaa !8
  %i.js = mul nsw i32 %i.jr, %i.jp
  %i.jt = add nsw i32 %i.js, %i.jk
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ju
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.jv, ptr noundef nonnull @c__1) #4
  br i1 %i.iw, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jw = load i32, ptr %i.f, align 4, !tbaa !8
  %i.jx = add nsw i32 %i.jw, -1
  store i32 %i.jx, ptr %i.f, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.1333.neg = phi i32 [ 0, %bb.ab ], [ -1, %bb.aa ]
  %i.jy = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  store i32 %i.jy, ptr %i.b, align 4, !tbaa !8
  store i32 %.0, ptr %i.a, align 4, !tbaa !8
  %i.jz = icmp sge i32 %i.iy, %i.jy
  %i.ka = icmp slt i32 %i.it, %i.jy
  %.in397 = select i1 %i.gm, i1 %i.jz, i1 %i.ka
  br i1 %.in397, label %.lr.ph400, label %._crit_edge401

.lr.ph400:                                        ; preds = %bb.ac
  %i.kb = add i32 %.1333.neg, %i.go
  %i.kc = mul nsw i32 %i.kb, %i.i                 ; 2 uses
  %i.kd = sext i32 %i.kc to i64
  %invariant.gep477 = getelementptr [8 x i8], ptr %i.k, i64 %i.kd
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph400, %._crit_edge395
  %.3398 = phi i32 [ %i.iy, %.lr.ph400 ], [ %i.lp, %._crit_edge395 ] ; 6 uses
  %i.ke = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.kf = sub i32 %i.ke, %.3398
  %i.kg = add i32 %i.kf, 1                        ; 3 uses
  store i32 %i.kg, ptr %i.d, align 4, !tbaa !8
  %i.kh = call i32 @llvm.smin.i32(i32 %.0, i32 %i.kg) ; 3 uses
  store i32 %i.kh, ptr %i.h, align 4, !tbaa !8
  %storemerge391 = add nsw i32 %i.kh, -1
  store i32 %storemerge391, ptr %i.g, align 4, !tbaa !8
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %.lr.ph394.preheader, label %._crit_edge395

.lr.ph394.preheader:                              ; preds = %bb.ad
  %i.kj = sext i32 %.3398 to i64
  br label %.lr.ph394

.lr.ph394:                                        ; preds = %.lr.ph394.preheader, %.lr.ph394
  %indvars.iv427 = phi i64 [ %i.kj, %.lr.ph394.preheader ], [ %indvars.iv.next428, %.lr.ph394 ] ; 3 uses
  %i.kk = load i32, ptr %i.f, align 4, !tbaa !8
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.c, align 4, !tbaa !8
  %i.km = load i32, ptr %1, align 4, !tbaa !8
  %i.kn = mul nsw i32 %i.km, %i.gt
  %i.ko = trunc nsw i64 %indvars.iv427 to i32     ; 2 uses
  %i.kp = sub i32 %i.ko, %.1335403
  %i.kq = add nsw i32 %i.kp, %i.kn
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.kr
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %indvars.iv427
  %i.kt = mul i32 %i.gk, %i.ko
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ku
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b18, ptr noundef nonnull %i.ks, ptr noundef nonnull %1, ptr noundef %gep478, ptr noundef nonnull %3, ptr noundef nonnull @c_b20, ptr noundef %i.kv, ptr noundef nonnull @c__1) #4
  %indvars.iv.next428 = add nsw i64 %indvars.iv427, 1 ; 2 uses
  %i.kw = load i32, ptr %i.g, align 4, !tbaa !8   ; 2 uses
  %storemerge = add nsw i32 %i.kw, -1
  store i32 %storemerge, ptr %i.g, align 4, !tbaa !8
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %.lr.ph394, label %._crit_edge395.loopexit, !llvm.loop !25

._crit_edge395.loopexit:                          ; preds = %.lr.ph394
  %i.ky = trunc nsw i64 %indvars.iv.next428 to i32 ; 2 uses
  %.pre436 = load i32, ptr %1, align 4, !tbaa !8  ; 2 uses
  %.pre441 = sub i32 %.pre436, %i.ky
  %.pre442 = add i32 %.pre441, 1
  br label %._crit_edge395

._crit_edge395:                                   ; preds = %._crit_edge395.loopexit, %bb.ad
  %.pre-phi = phi i32 [ %.pre442, %._crit_edge395.loopexit ], [ %i.kg, %bb.ad ]
  %i.kz = phi i32 [ %.pre436, %._crit_edge395.loopexit ], [ %i.ke, %bb.ad ]
  %.1.lcssa = phi i32 [ %i.ky, %._crit_edge395.loopexit ], [ %.3398, %bb.ad ] ; 2 uses
  store i32 %.pre-phi, ptr %i.c, align 4, !tbaa !8
  %i.la = load i32, ptr %i.f, align 4, !tbaa !8
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.d, align 4, !tbaa !8
  %i.lc = mul nsw i32 %i.kz, %i.gt
  %i.ld = sub i32 %.1.lcssa, %.1335403
  %i.le = add nsw i32 %i.ld, %i.lc
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lf
  %i.lh = add nsw i32 %.3398, %i.kc
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.li
  %i.lk = mul nsw i32 %.3398, %i.i
  %i.ll = add nsw i32 %.1.lcssa, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lm
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b18, ptr noundef nonnull %i.lg, ptr noundef nonnull %1, ptr noundef %i.lj, ptr noundef nonnull %3, ptr noundef nonnull @c_b20, ptr noundef %i.ln, ptr noundef nonnull %3) #4
  %i.lo = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.lp = add nsw i32 %i.lo, %.3398               ; 3 uses
  %i.lq = icmp slt i32 %i.lo, 0
  %i.lr = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ls = icmp sge i32 %i.lp, %i.lr
  %i.lt = icmp sle i32 %i.lp, %i.lr
  %.in = select i1 %i.lq, i1 %i.ls, i1 %i.lt
  br i1 %.in, label %bb.ad, label %._crit_edge401.loopexit, !llvm.loop !26

._crit_edge401.loopexit:                          ; preds = %._crit_edge395
  %.pre437.pre = load i32, ptr %1, align 4, !tbaa !8
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge401.loopexit, %bb.ac
  %.pre437 = phi i32 [ %.pre437.pre, %._crit_edge401.loopexit ], [ %i.jy, %bb.ac ]
  %i.lu = load double, ptr %i.e, align 8, !tbaa !9
  store double %i.lu, ptr %i.jc, align 8, !tbaa !9
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %bb.z, %._crit_edge401
  %i.lv = phi i32 [ %.pre437, %._crit_edge401 ], [ %i.iu, %bb.z ]
  %i.lw = sub nsw i32 %i.lv, %i.it
  store i32 %i.lw, ptr %i.a, align 4, !tbaa !8
  %i.lx = mul i32 %i.iy, %i.gk
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ly
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.lz, ptr noundef nonnull @c__1, ptr noundef nonnull %5, ptr noundef nonnull @c__1) #4
  %.pre438 = load i32, ptr %1, align 4, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge447, %._crit_edge389
  %i.ma = phi i32 [ %.pre438, %._crit_edge447 ], [ %i.iu, %._crit_edge389 ] ; 2 uses
  %.not348 = icmp slt i32 %i.it, %i.ma
  br i1 %.not348, label %bb.w, label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.ae, %bb.l, %bb.v, %bb.h, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlasyf_aa_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 8, i32 24}
!17 = distinct !{!17, !12, !14, !15}
!18 = distinct !{!18, !12, !15, !14}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12, !14, !15}
!23 = distinct !{!23, !12, !14, !15}
!24 = distinct !{!24, !12, !15, !14}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
end_hunk_0
