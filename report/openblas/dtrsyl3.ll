Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsyl3?download=true
inline.NumInlined: 80
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DTRSYL\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@c_n1 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DTRSYL3\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@c_b31 = internal global double -1.000000e+00, align 8
@c_b32 = internal global double 1.000000e+00, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"G\00", align 1

; Function Attrs: nounwind uwtable
define void @dtrsyl3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef initializes((0, 4)) %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef %14, ptr nofree noundef captures(none) %15, ptr noundef initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 28 uses
  %i.ap = alloca i32, align 4                     ; 62 uses
  %i.aq = alloca i32, align 4                     ; 83 uses
  %i.ar = alloca i32, align 4                     ; 72 uses
  %i.as = alloca i32, align 4                     ; 30 uses
  %i.at = alloca i32, align 4                     ; 8 uses
  %i.au = alloca double, align 8                  ; 32 uses
  %i.av = alloca double, align 8                  ; 38 uses
  %i.aw = alloca double, align 8                  ; 10 uses
  %i.ax = alloca double, align 8                  ; 10 uses
  %i.ay = alloca double, align 8                  ; 34 uses
  %i.az = alloca double, align 8                  ; 46 uses
  %i.ba = alloca i32, align 4                     ; 10 uses
  %i.bb = alloca double, align 8                  ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #9
  %i.bc = load i32, ptr %6, align 4, !tbaa !91    ; 13 uses
  %narrow1991 = xor i32 %i.bc, -1
  %i.bd = sext i32 %narrow1991 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bd ; 16 uses
  %i.bf = load i32, ptr %8, align 4, !tbaa !91    ; 13 uses
  %narrow1992 = xor i32 %i.bf, -1
  %i.bg = sext i32 %narrow1992 to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bg ; 16 uses
  %i.bi = load i32, ptr %10, align 4, !tbaa !91   ; 15 uses
  %narrow1993 = xor i32 %i.bi, -1
  %i.bj = sext i32 %narrow1993 to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bj ; 30 uses
  %i.bl = getelementptr inbounds i8, ptr %12, i64 -4 ; 30 uses
  %i.bm = load i32, ptr %15, align 4, !tbaa !91   ; 13 uses
  %narrow = xor i32 %i.bm, -1
  %i.bn = sext i32 %narrow to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %14, i64 %i.bn ; 42 uses
  %i.bp = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #9 ; 2 uses
  %i.bq = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #9 ; 2 uses
  %i.br = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 0) #9
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.br, i32 8) ; 9 uses
  %i.bt = load i32, ptr %3, align 4, !tbaa !91
  %i.bu = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.bv = add i32 %i.bu, %i.bt
  %17 = sdiv i32 %i.bv, %i.bs                     ; 3 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 1) ; 12 uses
  store i32 1, ptr %i.ao, align 4, !tbaa !91
  %19 = load i32, ptr %4, align 4, !tbaa !91
  %20 = add i32 %i.bu, %19
  %21 = sdiv i32 %20, %i.bs                       ; 5 uses
  store i32 %21, ptr %i.ap, align 4, !tbaa !91
  %i.bw = tail call i32 @llvm.smax.i32(i32 %21, i32 1) ; 12 uses
  store i32 0, ptr %16, align 4, !tbaa !91
  %i.bx = load i32, ptr %13, align 4, !tbaa !91
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.bz = add nuw nsw i32 %18, 2
  %i.ca = add nuw nsw i32 %i.bz, %i.bw
  store i32 %i.ca, ptr %12, align 4, !tbaa !91
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cb = load i32, ptr %15, align 4, !tbaa !91
  %i.cc = icmp eq i32 %i.cb, -1
  %i.cd = add nuw nsw i32 %18, 2
  %i.ce = add nuw nsw i32 %i.cd, %i.bw
  store i32 %i.ce, ptr %12, align 4, !tbaa !91
  br i1 %i.cc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  store i32 2, ptr %15, align 4, !tbaa !91
  %i.cf = tail call i32 @llvm.umax.i32(i32 %18, i32 %i.bw)
  %i.cg = uitofp nneg i32 %i.cf to double
  store double %i.cg, ptr %14, align 8, !tbaa !93
  %i.ch = shl nuw nsw i32 %i.bw, 1
  %i.ci = add nuw nsw i32 %i.ch, %18
  %i.cj = uitofp nneg i32 %i.ci to double
  %i.ck = sext i32 %i.bm to i64
  %i.cl = getelementptr [8 x i8], ptr %i.bo, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store double %i.cj, ptr %i.cm, align 8, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cn = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  %i.co = icmp ne i32 %i.bp, 0                    ; 4 uses
  br i1 %i.co, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cq = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %.not1898 = icmp eq i32 %i.cq, 0
  br i1 %.not1898, label %.thread2585.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.not1899 = icmp eq i32 %i.bq, 0                ; 2 uses
  br i1 %.not1899, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cr = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #9
  %.not1900 = icmp eq i32 %i.cr, 0
  br i1 %.not1900, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cs = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #9
  %.not1901 = icmp eq i32 %i.cs, 0
  br i1 %.not1901, label %.thread2585.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ct = load i32, ptr %2, align 4, !tbaa !91
  switch i32 %i.ct, label %.thread2585.sink.split [
    i32 1, label %bb.k
    i32 -1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.cu = load i32, ptr %3, align 4, !tbaa !91    ; 4 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread2585.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = load i32, ptr %4, align 4, !tbaa !91    ; 4 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.thread2585.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = load i32, ptr %6, align 4, !tbaa !91
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 1) ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %spec.select
  br i1 %i.cz, label %.thread2585.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = load i32, ptr %8, align 4, !tbaa !91
  %spec.select1994 = tail call i32 @llvm.umax.i32(i32 %i.cw, i32 1)
  %i.db = icmp slt i32 %i.da, %spec.select1994
  br i1 %i.db, label %.thread2585.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load i32, ptr %10, align 4, !tbaa !91
  %i.dd = icmp slt i32 %i.dc, %spec.select
  br i1 %i.dd, label %.thread2585.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pr = load i32, ptr %16, align 4, !tbaa !91    ; 2 uses
  %.not1904 = icmp eq i32 %.pr, 0
  br i1 %.not1904, label %bb.q, label %.thread2585

.thread2585.sink.split:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ -2, %bb.i ], [ -4, %bb.k ], [ -7, %bb.m ], [ -9, %bb.n ], [ -5, %bb.l ], [ -3, %bb.j ], [ -11, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %16, align 4, !tbaa !91
  br label %.thread2585

.thread2585:                                      ; preds = %.thread2585.sink.split, %bb.p
  %i.de = phi i32 [ %.pr, %bb.p ], [ %.sink, %.thread2585.sink.split ]
  %i.df = sub nsw i32 0, %i.de
  store i32 %i.df, ptr %i.ao, align 4, !tbaa !91
  %i.dg = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ao, i32 noundef 7) #9 ; 0 uses
  br label %bb.fz

bb.q:                                             ; preds = %bb.p
  br i1 %i.cn, label %bb.fz, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %11, align 8, !tbaa !93
  %i.dh = icmp eq i32 %i.cu, 0
  %i.di = icmp eq i32 %i.cw, 0
  %or.cond3651 = or i1 %i.dh, %i.di
  br i1 %or.cond3651, label %bb.fz, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cw)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = tail call noalias ptr @malloc(i64 noundef %i.dl) #10 ; 17 uses
  %i.dn = tail call i32 @llvm.umin.i32(i32 %18, i32 %i.bw)
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = load i32, ptr %15, align 4, !tbaa !91
  %i.dq = tail call i32 @llvm.umax.i32(i32 %18, i32 %i.bw)
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = load i32, ptr %13, align 4, !tbaa !91
  %i.dt = load i32, ptr %12, align 4, !tbaa !91
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.v, label %iter.check

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  tail call void @dtrsyl_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %16) #9
  br label %bb.fz

iter.check:                                       ; preds = %bb.u
  %i.dv = tail call double @dlamch_(ptr noundef nonnull @.str.6) #9 ; 2 uses
  %i.dw = add nuw nsw i32 %18, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.dw to i64   ; 2 uses
  %i.dx = zext nneg i32 %18 to i64                ; 5 uses
  %min.iters.check = icmp slt i32 %17, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3673 = icmp slt i32 %17, 32
  br i1 %min.iters.check3673, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dy = and i64 %i.dx, 24
  %n.vec = and i64 %i.dx, 2147483616              ; 4 uses
  %i.dz = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ea = getelementptr [4 x i8], ptr %12, i64 %index ; 4 uses
  %i.eb = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.ec = add <8 x i32> %vec.ind, splat (i32 7)
  %i.ed = add <8 x i32> %vec.ind, splat (i32 15)
  %i.ee = add <8 x i32> %vec.ind, splat (i32 23)
  %i.ef = mul <8 x i32> %i.eb, %broadcast.splat
  %i.eg = mul <8 x i32> %i.ec, %broadcast.splat
  %i.eh = mul <8 x i32> %i.ed, %broadcast.splat
  %i.ei = mul <8 x i32> %i.ee, %broadcast.splat
  %i.ej = add <8 x i32> %i.ef, splat (i32 1)
  %i.ek = add <8 x i32> %i.eg, splat (i32 1)
  %i.el = add <8 x i32> %i.eh, splat (i32 1)
  %i.em = add <8 x i32> %i.ei, splat (i32 1)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store <8 x i32> %i.ej, ptr %i.ea, align 4, !tbaa !91
  store <8 x i32> %i.ek, ptr %i.en, align 4, !tbaa !91
  store <8 x i32> %i.el, ptr %i.eo, align 4, !tbaa !91
  store <8 x i32> %i.em, ptr %i.ep, align 4, !tbaa !91
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dx
  br i1 %cmp.n, label %.loopexit3748, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.dz, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec3674 = and i64 %i.dx, 2147483640          ; 3 uses
  %i.er = or disjoint i64 %n.vec3674, 1
  %broadcast.splatinsert3675 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat3676 = shufflevector <8 x i32> %broadcast.splatinsert3675, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.es = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert3677 = insertelement <8 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat3678 = shufflevector <8 x i32> %broadcast.splatinsert3677, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat3678, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3679 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3681, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind3680 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3682, %vec.epilog.vector.body ] ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %12, i64 %index3679
  %i.eu = add <8 x i32> %vec.ind3680, splat (i32 -1)
  %i.ev = mul <8 x i32> %i.eu, %broadcast.splat3676
  %i.ew = add <8 x i32> %i.ev, splat (i32 1)
  store <8 x i32> %i.ew, ptr %i.et, align 4, !tbaa !91
  %index.next3681 = add nuw i64 %index3679, 8     ; 2 uses
  %vec.ind.next3682 = add <8 x i32> %vec.ind3680, splat (i32 8)
  %i.ex = icmp eq i64 %index.next3681, %n.vec3674
  br i1 %i.ex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3683 = icmp eq i64 %n.vec3674, %i.dx
  br i1 %cmp.n3683, label %.loopexit3748, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.ez = trunc i64 %indvars.iv to i32
  %i.fa = add i32 %i.ez, -1
  %i.fb = mul i32 %i.fa, %i.bs
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.ey, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit3748, label %vec.epilog.scalar.ph, !llvm.loop !10

.loopexit3748:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fd = load i32, ptr %3, align 4, !tbaa !91
  %i.fe = add nsw i32 %i.fd, 1
  %i.ff = zext nneg i32 %18 to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  store i32 %i.fe, ptr %i.fh, align 4, !tbaa !91
  %i.fi = sext i32 %i.bc to i64                   ; 3 uses
  %.pre = load i32, ptr %12, align 4, !tbaa !91
  br label %bb.w

.loopexit2620:                                    ; preds = %.lr.ph.prol.loopexit, %bb.am, %bb.w
  %i.fj = phi i32 [ %i.fm, %bb.w ], [ %.lcssa3769.unr, %.lr.ph.prol.loopexit ], [ %i.hy, %bb.am ]
  %.11874.lcssa = phi i32 [ %.018732625, %bb.w ], [ %.21875.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.21875.1, %bb.am ]
  %exitcond3027.not = icmp eq i64 %indvars.iv.next3024, %wide.trip.count
  br i1 %exitcond3027.not, label %bb.an, label %bb.w, !llvm.loop !11

bb.w:                                             ; preds = %.loopexit3748, %.loopexit2620
  %i.fk = phi i32 [ %.pre, %.loopexit3748 ], [ %i.fj, %.loopexit2620 ] ; 4 uses
  %indvars.iv3023 = phi i64 [ 1, %.loopexit3748 ], [ %indvars.iv.next3024, %.loopexit2620 ] ; 2 uses
  %.018732625 = phi i32 [ 0, %.loopexit3748 ], [ %.11874.lcssa, %.loopexit2620 ] ; 3 uses
  %indvars.iv.next3024 = add nuw nsw i64 %indvars.iv3023, 1 ; 2 uses
  %i.fl = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3023 ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !91 ; 11 uses
  %.not1988.not2622 = icmp slt i32 %i.fk, %i.fm
  br i1 %.not1988.not2622, label %.lr.ph.preheader, label %.loopexit2620

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.fn = sext i32 %i.fk to i64                   ; 7 uses
  %wide.trip.count3021 = sext i32 %i.fm to i64    ; 3 uses
  %i.fo = sub nsw i64 %wide.trip.count3021, %i.fn
  %xtraiter = and i64 %i.fo, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.not1989.prol = icmp eq i32 %.018732625, 0
  br i1 %.not1989.prol, label %bb.x, label %.lr.ph.prol.loopexit.unr-lcssa

bb.x:                                             ; preds = %.lr.ph.prol
  %i.fp = load i32, ptr %3, align 4, !tbaa !91
  %.not1990.prol = icmp slt i32 %i.fk, %i.fp
  br i1 %.not1990.prol, label %bb.y, label %.lr.ph.prol.loopexit.unr-lcssa

bb.y:                                             ; preds = %bb.x
  %i.fq = add nsw i64 %i.fn, 1                    ; 2 uses
  %i.fr = add nsw i32 %i.fk, 1
  %i.fs = mul nsw i32 %i.fr, %i.bc
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr [8 x i8], ptr %i.be, i64 %i.fn
  %i.fv = getelementptr [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !93
  %i.fx = fcmp une double %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.z, label %.lr.ph.prol.loopexit.unr-lcssa

bb.z:                                             ; preds = %bb.y
  %i.fy = mul nsw i64 %i.fn, %i.fi
  %i.fz = getelementptr [8 x i8], ptr %i.be, i64 %i.fq
  %i.ga = getelementptr [8 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !93
  %i.gc = fcmp une double %i.gb, 0.000000e+00
  br i1 %i.gc, label %bb.aa, label %.lr.ph.prol.loopexit.unr-lcssa

bb.aa:                                            ; preds = %bb.z
  %i.gd = trunc nsw i64 %i.fq to i32
  %i.ge = icmp eq i32 %i.fm, %i.gd
  br i1 %i.ge, label %bb.ab, label %.lr.ph.prol.loopexit.unr-lcssa

bb.ab:                                            ; preds = %bb.aa
  %i.gf = add nsw i32 %i.fm, 1                    ; 2 uses
  store i32 %i.gf, ptr %i.fl, align 4, !tbaa !91
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph.prol
  %i.gg = phi i32 [ %i.fm, %bb.y ], [ %i.fm, %bb.x ], [ %i.gf, %bb.ab ], [ %i.fm, %.lr.ph.prol ], [ %i.fm, %bb.z ], [ %i.fm, %bb.aa ] ; 2 uses
  %.21875.prol = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %.lr.ph.prol ], [ 0, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv.next3019.prol = add nsw i64 %i.fn, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.lcssa3769.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.gg, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.21875.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.21875.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.unr3770 = phi i32 [ %i.fm, %.lr.ph.preheader ], [ %i.gg, %.lr.ph.prol.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv3018.unr = phi i64 [ %i.fn, %.lr.ph.preheader ], [ %indvars.iv.next3019.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.118742623.unr = phi i32 [ %.018732625, %.lr.ph.preheader ], [ %.21875.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.gh = add nsw i64 %wide.trip.count3021, -1
  %i.gi = icmp eq i64 %i.gh, %i.fn
  br i1 %i.gi, label %.loopexit2620, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.am
  %i.gj = phi i32 [ %i.hx, %bb.am ], [ %.unr3770, %.lr.ph.prol.loopexit ] ; 8 uses
  %i.gk = phi i32 [ %i.hy, %bb.am ], [ %.unr3770, %.lr.ph.prol.loopexit ] ; 4 uses
  %indvars.iv3018 = phi i64 [ %indvars.iv.next3019.1, %bb.am ], [ %indvars.iv3018.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.118742623 = phi i32 [ %.21875.1, %bb.am ], [ %.118742623.unr, %.lr.ph.prol.loopexit ]
  %indvars3020 = trunc i64 %indvars.iv3018 to i32
  %.not1989 = icmp eq i32 %.118742623, 0
  br i1 %.not1989, label %bb.ac, label %.lr.ph.1

bb.ac:                                            ; preds = %.lr.ph
  %i.gl = load i32, ptr %3, align 4, !tbaa !91
  %i.gm = sext i32 %i.gl to i64
  %.not1990 = icmp slt i64 %indvars.iv3018, %i.gm
  br i1 %.not1990, label %bb.ad, label %.lr.ph.1

bb.ad:                                            ; preds = %bb.ac
  %i.gn = add nsw i64 %indvars.iv3018, 1          ; 2 uses
  %i.go = add nsw i32 %indvars3020, 1
  %i.gp = mul nsw i32 %i.go, %i.bc
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv3018
  %i.gs = getelementptr [8 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !93
  %i.gu = fcmp une double %i.gt, 0.000000e+00
  br i1 %i.gu, label %bb.ae, label %.lr.ph.1

bb.ae:                                            ; preds = %bb.ad
  %i.gv = mul nsw i64 %indvars.iv3018, %i.fi
  %i.gw = getelementptr [8 x i8], ptr %i.be, i64 %i.gn
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !93
  %i.gz = fcmp une double %i.gy, 0.000000e+00
  br i1 %i.gz, label %bb.af, label %.lr.ph.1

bb.af:                                            ; preds = %bb.ae
  %i.ha = trunc nsw i64 %i.gn to i32
  %i.hb = icmp eq i32 %i.gj, %i.ha
  br i1 %i.hb, label %bb.ag, label %.lr.ph.1

bb.ag:                                            ; preds = %bb.af
  %i.hc = add nsw i32 %i.gj, 1                    ; 3 uses
  store i32 %i.hc, ptr %i.fl, align 4, !tbaa !91
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.af, %.lr.ph, %bb.ad, %bb.ae, %bb.ac, %bb.ag
  %i.hd = phi i32 [ %i.gj, %bb.ad ], [ %i.gj, %bb.ac ], [ %i.hc, %bb.ag ], [ %i.gj, %.lr.ph ], [ %i.gj, %bb.ae ], [ %i.gj, %bb.af ] ; 8 uses
  %i.he = phi i32 [ %i.gk, %bb.ad ], [ %i.gk, %bb.ac ], [ %i.hc, %bb.ag ], [ %i.gk, %.lr.ph ], [ %i.gk, %bb.ae ], [ %i.gj, %bb.af ] ; 4 uses
  %.not1989.1 = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ag ], [ true, %.lr.ph ], [ true, %bb.ae ], [ false, %bb.af ]
  %indvars.iv.next3019 = add nsw i64 %indvars.iv3018, 1 ; 4 uses
  %indvars3020.1 = trunc i64 %indvars.iv.next3019 to i32
  br i1 %.not1989.1, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %.lr.ph.1
  %i.hf = load i32, ptr %3, align 4, !tbaa !91
  %i.hg = sext i32 %i.hf to i64
  %.not1990.1 = icmp slt i64 %indvars.iv.next3019, %i.hg
  br i1 %.not1990.1, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i64 %indvars.iv3018, 2          ; 2 uses
  %i.hi = add nsw i32 %indvars3020.1, 1
  %i.hj = mul nsw i32 %i.hi, %i.bc
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.next3019
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !93
  %i.ho = fcmp une double %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.hp = mul nsw i64 %indvars.iv.next3019, %i.fi
  %i.hq = getelementptr [8 x i8], ptr %i.be, i64 %i.hh
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !93
  %i.ht = fcmp une double %i.hs, 0.000000e+00
  br i1 %i.ht, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hu = trunc nsw i64 %i.hh to i32
  %i.hv = icmp eq i32 %i.hd, %i.hu
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hw = add nsw i32 %i.hd, 1                    ; 3 uses
  store i32 %i.hw, ptr %i.fl, align 4, !tbaa !91
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.lr.ph.1
  %i.hx = phi i32 [ %i.hd, %bb.ai ], [ %i.hd, %bb.ah ], [ %i.hw, %bb.al ], [ %i.hd, %.lr.ph.1 ], [ %i.hd, %bb.aj ], [ %i.hd, %bb.ak ]
  %i.hy = phi i32 [ %i.he, %bb.ai ], [ %i.he, %bb.ah ], [ %i.hw, %bb.al ], [ %i.he, %.lr.ph.1 ], [ %i.he, %bb.aj ], [ %i.hd, %bb.ak ] ; 2 uses
  %.21875.1 = phi i32 [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.al ], [ 0, %.lr.ph.1 ], [ 0, %bb.aj ], [ 1, %bb.ak ] ; 2 uses
  %indvars.iv.next3019.1 = add nsw i64 %indvars.iv3018, 2 ; 2 uses
  %exitcond3022.not.1 = icmp eq i64 %indvars.iv.next3019.1, %wide.trip.count3021
  br i1 %exitcond3022.not.1, label %.loopexit2620, label %.lr.ph, !llvm.loop !12

bb.an:                                            ; preds = %.loopexit2620
  %i.hz = fdiv double 1.000000e+00, %i.dv         ; 37 uses
  %i.ia = load i32, ptr %3, align 4, !tbaa !91    ; 2 uses
  %i.ib = add nsw i32 %i.ia, 1                    ; 2 uses
  store i32 %i.ib, ptr %i.fh, align 4, !tbaa !91
  %i.ic = load i32, ptr %i.fg, align 4, !tbaa !91
  %.not1910.not = icmp sgt i32 %i.ic, %i.ia
  br i1 %.not1910.not, label %bb.ao, label %iter.check3704

bb.ao:                                            ; preds = %bb.an
  store i32 %i.ib, ptr %i.fg, align 4, !tbaa !91
  %i.id = add nsw i32 %18, -1
  br label %iter.check3704

iter.check3704:                                   ; preds = %bb.ao, %bb.an
  %.pre-phi = phi i32 [ %18, %bb.ao ], [ %i.dw, %bb.an ] ; 18 uses
  %.01789 = phi i32 [ %i.id, %bb.ao ], [ %18, %bb.an ] ; 32 uses
  store i32 %i.bw, ptr %i.ao, align 4, !tbaa !91
  %i.ie = zext i32 %.pre-phi to i64               ; 15 uses
  %i.if = add nuw nsw i32 %i.bw, 1
  %wide.trip.count3031 = zext nneg i32 %i.if to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ie ; 3 uses
  %i.ig = zext nneg i32 %i.bw to i64              ; 5 uses
  %min.iters.check3685 = icmp slt i32 %21, 8
  br i1 %min.iters.check3685, label %vec.epilog.scalar.ph3705.preheader, label %vector.main.loop.iter.check3686

vector.main.loop.iter.check3686:                  ; preds = %iter.check3704
  %min.iters.check3687 = icmp slt i32 %21, 32
  br i1 %min.iters.check3687, label %vec.epilog.ph3708, label %vector.ph3688

vector.ph3688:                                    ; preds = %vector.main.loop.iter.check3686
  %i.ih = and i64 %i.ig, 24
  %n.vec3689 = and i64 %i.ig, 2147483616          ; 4 uses
  %i.ii = or disjoint i64 %n.vec3689, 1           ; 2 uses
  %broadcast.splatinsert3690 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat3691 = shufflevector <8 x i32> %broadcast.splatinsert3690, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body3692

vector.body3692:                                  ; preds = %vector.body3692, %vector.ph3688
  %index3693 = phi i64 [ 0, %vector.ph3688 ], [ %index.next3698, %vector.body3692 ] ; 2 uses
  %vec.ind3694 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph3688 ], [ %vec.ind.next3699, %vector.body3692 ] ; 5 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index3693 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = add <8 x i32> %vec.ind3694, splat (i32 -1)
  %i.im = add <8 x i32> %vec.ind3694, splat (i32 7)
  %i.in = add <8 x i32> %vec.ind3694, splat (i32 15)
  %i.io = add <8 x i32> %vec.ind3694, splat (i32 23)
  %i.ip = mul <8 x i32> %i.il, %broadcast.splat3691
  %i.iq = mul <8 x i32> %i.im, %broadcast.splat3691
  %i.ir = mul <8 x i32> %i.in, %broadcast.splat3691
  %i.is = mul <8 x i32> %i.io, %broadcast.splat3691
  %i.it = add <8 x i32> %i.ip, splat (i32 1)
  %i.iu = add <8 x i32> %i.iq, splat (i32 1)
  %i.iv = add <8 x i32> %i.ir, splat (i32 1)
  %i.iw = add <8 x i32> %i.is, splat (i32 1)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 36
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 68
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 100
  store <8 x i32> %i.it, ptr %i.ik, align 4, !tbaa !91
  store <8 x i32> %i.iu, ptr %i.ix, align 4, !tbaa !91
  store <8 x i32> %i.iv, ptr %i.iy, align 4, !tbaa !91
  store <8 x i32> %i.iw, ptr %i.iz, align 4, !tbaa !91
  %index.next3698 = add nuw i64 %index3693, 32    ; 2 uses
  %vec.ind.next3699 = add <8 x i32> %vec.ind3694, splat (i32 32)
  %i.ja = icmp eq i64 %index.next3698, %n.vec3689
  br i1 %i.ja, label %middle.block3700, label %vector.body3692, !llvm.loop !13

middle.block3700:                                 ; preds = %vector.body3692
  %cmp.n3701 = icmp eq i64 %n.vec3689, %i.ig
  br i1 %cmp.n3701, label %.loopexit3747, label %vec.epilog.iter.check3706

vec.epilog.iter.check3706:                        ; preds = %middle.block3700
  %min.epilog.iters.check3707 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check3707, label %vec.epilog.scalar.ph3705.preheader, label %vec.epilog.ph3708, !prof !97

vec.epilog.ph3708:                                ; preds = %vector.main.loop.iter.check3686, %vec.epilog.iter.check3706
  %vec.epilog.resume.val3702 = phi i64 [ %n.vec3689, %vec.epilog.iter.check3706 ], [ 0, %vector.main.loop.iter.check3686 ]
  %bc.resume.val3703 = phi i64 [ %i.ii, %vec.epilog.iter.check3706 ], [ 1, %vector.main.loop.iter.check3686 ]
  %n.vec3709 = and i64 %i.ig, 2147483640          ; 3 uses
  %i.jb = or disjoint i64 %n.vec3709, 1
  %broadcast.splatinsert3710 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat3711 = shufflevector <8 x i32> %broadcast.splatinsert3710, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jc = trunc nsw i64 %bc.resume.val3703 to i32
  %broadcast.splatinsert3712 = insertelement <8 x i32> poison, i32 %i.jc, i64 0
  %broadcast.splat3713 = shufflevector <8 x i32> %broadcast.splatinsert3712, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction3714 = add <8 x i32> %broadcast.splat3713, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body3715

vec.epilog.vector.body3715:                       ; preds = %vec.epilog.vector.body3715, %vec.epilog.ph3708
  %index3716 = phi i64 [ %vec.epilog.resume.val3702, %vec.epilog.ph3708 ], [ %index.next3718, %vec.epilog.vector.body3715 ] ; 2 uses
  %vec.ind3717 = phi <8 x i32> [ %induction3714, %vec.epilog.ph3708 ], [ %vec.ind.next3719, %vec.epilog.vector.body3715 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index3716
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = add <8 x i32> %vec.ind3717, splat (i32 -1)
  %i.jg = mul <8 x i32> %i.jf, %broadcast.splat3711
  %i.jh = add <8 x i32> %i.jg, splat (i32 1)
  store <8 x i32> %i.jh, ptr %i.je, align 4, !tbaa !91
  %index.next3718 = add nuw i64 %index3716, 8     ; 2 uses
  %vec.ind.next3719 = add <8 x i32> %vec.ind3717, splat (i32 8)
  %i.ji = icmp eq i64 %index.next3718, %n.vec3709
  br i1 %i.ji, label %vec.epilog.middle.block3720, label %vec.epilog.vector.body3715, !llvm.loop !14

vec.epilog.middle.block3720:                      ; preds = %vec.epilog.vector.body3715
  %cmp.n3721 = icmp eq i64 %n.vec3709, %i.ig
  br i1 %cmp.n3721, label %.loopexit3747, label %vec.epilog.scalar.ph3705.preheader

vec.epilog.scalar.ph3705.preheader:               ; preds = %iter.check3704, %vec.epilog.iter.check3706, %vec.epilog.middle.block3720
  %indvars.iv3028.ph = phi i64 [ 1, %iter.check3704 ], [ %i.ii, %vec.epilog.iter.check3706 ], [ %i.jb, %vec.epilog.middle.block3720 ]
  br label %vec.epilog.scalar.ph3705

vec.epilog.scalar.ph3705:                         ; preds = %vec.epilog.scalar.ph3705.preheader, %vec.epilog.scalar.ph3705
  %indvars.iv3028 = phi i64 [ %indvars.iv.next3029, %vec.epilog.scalar.ph3705 ], [ %indvars.iv3028.ph, %vec.epilog.scalar.ph3705.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv3028
  %i.jj = trunc i64 %indvars.iv3028 to i32
  %i.jk = add i32 %i.jj, -1
  %i.jl = mul i32 %i.jk, %i.bs
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %gep, align 4, !tbaa !91
  %indvars.iv.next3029 = add nuw nsw i64 %indvars.iv3028, 1 ; 2 uses
  %exitcond3032.not = icmp eq i64 %indvars.iv.next3029, %wide.trip.count3031
  br i1 %exitcond3032.not, label %.loopexit3747, label %vec.epilog.scalar.ph3705, !llvm.loop !15

.loopexit3747:                                    ; preds = %vec.epilog.scalar.ph3705, %vec.epilog.middle.block3720, %middle.block3700
  %i.jn = load i32, ptr %4, align 4, !tbaa !91
  %i.jo = add nsw i32 %i.jn, 1
  %i.jp = add nuw nsw i32 %.pre-phi, %i.bw
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr [4 x i8], ptr %i.bl, i64 %i.jq ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 4      ; 2 uses
  store i32 %i.jo, ptr %i.js, align 4, !tbaa !91
  %i.jt = sext i32 %i.bf to i64                   ; 3 uses
  %invariant.gep3511 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ie
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit3747, %._crit_edge
  %indvars.iv3038 = phi i64 [ 1, %.loopexit3747 ], [ %indvars.iv.next3039, %._crit_edge ] ; 2 uses
  %.318762634 = phi i32 [ 0, %.loopexit3747 ], [ %.41877.lcssa, %._crit_edge ] ; 3 uses
  %gep3512 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3511, i64 %indvars.iv3038 ; 2 uses
  %i.ju = load i32, ptr %gep3512, align 4, !tbaa !91 ; 4 uses
  %i.jv = getelementptr i8, ptr %gep3512, i64 4   ; 4 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !91 ; 11 uses
  %.not1985.not2629 = icmp slt i32 %i.ju, %i.jw
  br i1 %.not1985.not2629, label %.lr.ph2632.preheader, label %._crit_edge

.lr.ph2632.preheader:                             ; preds = %bb.ap
  %i.jx = sext i32 %i.ju to i64                   ; 7 uses
  %wide.trip.count3036 = sext i32 %i.jw to i64    ; 3 uses
  %i.jy = sub nsw i64 %wide.trip.count3036, %i.jx
  %xtraiter3771 = and i64 %i.jy, 1
  %lcmp.mod3772.not = icmp eq i64 %xtraiter3771, 0
  br i1 %lcmp.mod3772.not, label %.lr.ph2632.prol.loopexit, label %.lr.ph2632.prol

.lr.ph2632.prol:                                  ; preds = %.lr.ph2632.preheader
  %.not1986.prol = icmp eq i32 %.318762634, 0
  br i1 %.not1986.prol, label %bb.aq, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.aq:                                            ; preds = %.lr.ph2632.prol
  %i.jz = load i32, ptr %4, align 4, !tbaa !91
  %.not1987.prol = icmp slt i32 %i.ju, %i.jz
  br i1 %.not1987.prol, label %bb.ar, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.ar:                                            ; preds = %bb.aq
  %i.ka = add nsw i64 %i.jx, 1                    ; 2 uses
  %i.kb = add nsw i32 %i.ju, 1
  %i.kc = mul nsw i32 %i.kb, %i.bf
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr [8 x i8], ptr %i.bh, i64 %i.jx
  %i.kf = getelementptr [8 x i8], ptr %i.ke, i64 %i.kd
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !93
  %i.kh = fcmp une double %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.as, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %bb.ar
  %i.ki = mul nsw i64 %i.jx, %i.jt
  %i.kj = getelementptr [8 x i8], ptr %i.bh, i64 %i.ka
  %i.kk = getelementptr [8 x i8], ptr %i.kj, i64 %i.ki
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !93
  %i.km = fcmp une double %i.kl, 0.000000e+00
  br i1 %i.km, label %bb.at, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.at:                                            ; preds = %bb.as
  %i.kn = trunc nsw i64 %i.ka to i32
  %i.ko = icmp eq i32 %i.jw, %i.kn
  br i1 %i.ko, label %bb.au, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.au:                                            ; preds = %bb.at
  %i.kp = add nsw i32 %i.jw, 1                    ; 2 uses
  store i32 %i.kp, ptr %i.jv, align 4, !tbaa !91
  br label %.lr.ph2632.prol.loopexit.unr-lcssa

.lr.ph2632.prol.loopexit.unr-lcssa:               ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %.lr.ph2632.prol
  %i.kq = phi i32 [ %i.jw, %bb.ar ], [ %i.jw, %bb.aq ], [ %i.kp, %bb.au ], [ %i.jw, %.lr.ph2632.prol ], [ %i.jw, %bb.as ], [ %i.jw, %bb.at ]
  %.51878.prol = phi i32 [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.au ], [ 0, %.lr.ph2632.prol ], [ 0, %bb.as ], [ 1, %bb.at ] ; 2 uses
  %indvars.iv.next3034.prol = add nsw i64 %i.jx, 1
  br label %.lr.ph2632.prol.loopexit

.lr.ph2632.prol.loopexit:                         ; preds = %.lr.ph2632.prol.loopexit.unr-lcssa, %.lr.ph2632.preheader
  %.51878.lcssa.unr = phi i32 [ poison, %.lr.ph2632.preheader ], [ %.51878.prol, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %.unr3773 = phi i32 [ %i.jw, %.lr.ph2632.preheader ], [ %i.kq, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %indvars.iv3033.unr = phi i64 [ %i.jx, %.lr.ph2632.preheader ], [ %indvars.iv.next3034.prol, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %.418772630.unr = phi i32 [ %.318762634, %.lr.ph2632.preheader ], [ %.51878.prol, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %i.kr = add nsw i64 %wide.trip.count3036, -1
  %i.ks = icmp eq i64 %i.kr, %i.jx
  br i1 %i.ks, label %._crit_edge, label %.lr.ph2632

.lr.ph2632:                                       ; preds = %.lr.ph2632.prol.loopexit, %bb.bf
  %i.kt = phi i32 [ %i.mf, %bb.bf ], [ %.unr3773, %.lr.ph2632.prol.loopexit ] ; 7 uses
  %indvars.iv3033 = phi i64 [ %indvars.iv.next3034.1, %bb.bf ], [ %indvars.iv3033.unr, %.lr.ph2632.prol.loopexit ] ; 8 uses
  %.418772630 = phi i32 [ %.51878.1, %bb.bf ], [ %.418772630.unr, %.lr.ph2632.prol.loopexit ]
  %indvars3035 = trunc i64 %indvars.iv3033 to i32
  %.not1986 = icmp eq i32 %.418772630, 0
  br i1 %.not1986, label %bb.av, label %.lr.ph2632.1

bb.av:                                            ; preds = %.lr.ph2632
  %i.ku = load i32, ptr %4, align 4, !tbaa !91
  %i.kv = sext i32 %i.ku to i64
  %.not1987 = icmp slt i64 %indvars.iv3033, %i.kv
  br i1 %.not1987, label %bb.aw, label %.lr.ph2632.1

bb.aw:                                            ; preds = %bb.av
  %i.kw = add nsw i64 %indvars.iv3033, 1          ; 2 uses
  %i.kx = add nsw i32 %indvars3035, 1
  %i.ky = mul nsw i32 %i.kx, %i.bf
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv3033
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %i.kz
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !93
  %i.ld = fcmp une double %i.lc, 0.000000e+00
  br i1 %i.ld, label %bb.ax, label %.lr.ph2632.1

bb.ax:                                            ; preds = %bb.aw
  %i.le = mul nsw i64 %indvars.iv3033, %i.jt
  %i.lf = getelementptr [8 x i8], ptr %i.bh, i64 %i.kw
  %i.lg = getelementptr [8 x i8], ptr %i.lf, i64 %i.le
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !93
  %i.li = fcmp une double %i.lh, 0.000000e+00
  br i1 %i.li, label %bb.ay, label %.lr.ph2632.1

bb.ay:                                            ; preds = %bb.ax
  %i.lj = trunc nsw i64 %i.kw to i32
  %i.lk = icmp eq i32 %i.kt, %i.lj
  br i1 %i.lk, label %bb.az, label %.lr.ph2632.1

bb.az:                                            ; preds = %bb.ay
  %i.ll = add nsw i32 %i.kt, 1                    ; 2 uses
  store i32 %i.ll, ptr %i.jv, align 4, !tbaa !91
  br label %.lr.ph2632.1

.lr.ph2632.1:                                     ; preds = %bb.ay, %.lr.ph2632, %bb.aw, %bb.ax, %bb.av, %bb.az
  %i.lm = phi i32 [ %i.kt, %bb.aw ], [ %i.kt, %bb.av ], [ %i.ll, %bb.az ], [ %i.kt, %.lr.ph2632 ], [ %i.kt, %bb.ax ], [ %i.kt, %bb.ay ] ; 7 uses
  %.not1986.1 = phi i1 [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.az ], [ true, %.lr.ph2632 ], [ true, %bb.ax ], [ false, %bb.ay ]
  %indvars.iv.next3034 = add nsw i64 %indvars.iv3033, 1 ; 4 uses
  %indvars3035.1 = trunc i64 %indvars.iv.next3034 to i32
  br i1 %.not1986.1, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %.lr.ph2632.1
  %i.ln = load i32, ptr %4, align 4, !tbaa !91
  %i.lo = sext i32 %i.ln to i64
  %.not1987.1 = icmp slt i64 %indvars.iv.next3034, %i.lo
  br i1 %.not1987.1, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.lp = add nsw i64 %indvars.iv3033, 2          ; 2 uses
  %i.lq = add nsw i32 %indvars3035.1, 1
  %i.lr = mul nsw i32 %i.lq, %i.bf
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.next3034
  %i.lu = getelementptr [8 x i8], ptr %i.lt, i64 %i.ls
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !93
  %i.lw = fcmp une double %i.lv, 0.000000e+00
  br i1 %i.lw, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.lx = mul nsw i64 %indvars.iv.next3034, %i.jt
  %i.ly = getelementptr [8 x i8], ptr %i.bh, i64 %i.lp
  %i.lz = getelementptr [8 x i8], ptr %i.ly, i64 %i.lx
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !93
  %i.mb = fcmp une double %i.ma, 0.000000e+00
  br i1 %i.mb, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.mc = trunc nsw i64 %i.lp to i32
  %i.md = icmp eq i32 %i.lm, %i.mc
  br i1 %i.md, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.me = add nsw i32 %i.lm, 1                    ; 2 uses
  store i32 %i.me, ptr %i.jv, align 4, !tbaa !91
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %.lr.ph2632.1
  %i.mf = phi i32 [ %i.lm, %bb.bb ], [ %i.lm, %bb.ba ], [ %i.me, %bb.be ], [ %i.lm, %.lr.ph2632.1 ], [ %i.lm, %bb.bc ], [ %i.lm, %bb.bd ]
  %.51878.1 = phi i32 [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.be ], [ 0, %.lr.ph2632.1 ], [ 0, %bb.bc ], [ 1, %bb.bd ] ; 2 uses
  %indvars.iv.next3034.1 = add nsw i64 %indvars.iv3033, 2 ; 2 uses
  %exitcond3037.not.1 = icmp eq i64 %indvars.iv.next3034.1, %wide.trip.count3036
  br i1 %exitcond3037.not.1, label %._crit_edge, label %.lr.ph2632, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph2632.prol.loopexit, %bb.bf, %bb.ap
  %.41877.lcssa = phi i32 [ %.318762634, %bb.ap ], [ %.51878.lcssa.unr, %.lr.ph2632.prol.loopexit ], [ %.51878.1, %bb.bf ]
  %indvars.iv.next3039 = add nuw nsw i64 %indvars.iv3038, 1 ; 2 uses
  %exitcond3042.not = icmp eq i64 %indvars.iv.next3039, %wide.trip.count3031
  br i1 %exitcond3042.not, label %bb.bg, label %bb.ap, !llvm.loop !17

bb.bg:                                            ; preds = %._crit_edge
  %i.mg = add nsw i32 %i.jw, -1
  store i32 %i.mg, ptr %i.ap, align 4, !tbaa !91
  %i.mh = load i32, ptr %4, align 4, !tbaa !91    ; 2 uses
  %i.mi = add nsw i32 %i.mh, 1                    ; 2 uses
  store i32 %i.mi, ptr %i.js, align 4, !tbaa !91
  %i.mj = load i32, ptr %i.jr, align 4, !tbaa !91
  %.not1913.not = icmp sgt i32 %i.mj, %i.mh
  br i1 %.not1913.not, label %bb.bh, label %.lr.ph2645

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.mi, ptr %i.jr, align 4, !tbaa !91
  %i.mk = add nsw i32 %i.bw, -1                   ; 2 uses
  %.not19142642 = icmp slt i32 %21, 2
  br i1 %.not19142642, label %._crit_edge2646.split, label %.lr.ph2645

.lr.ph2645:                                       ; preds = %bb.bg, %bb.bh
  %.017883464 = phi i32 [ %i.mk, %bb.bh ], [ %i.bw, %bb.bg ] ; 5 uses
  store i32 %.01789, ptr %i.ap, align 4, !tbaa !91
  %.not19842637 = icmp slt i32 %.01789, 1
  br i1 %.not19842637, label %._crit_edge2655.thread, label %.lr.ph2640.preheader

._crit_edge2655.thread:                           ; preds = %.lr.ph2645
  %i.ml = add nuw nsw i32 %.017883464, %.01789
  store i32 %.017883464, ptr %i.ao, align 4, !tbaa !91
  br label %.lr.ph2665

.lr.ph2640.preheader:                             ; preds = %.lr.ph2645
  %i.mm = sext i32 %i.bm to i64
  %i.mn = add nuw nsw i32 %.017883464, 1
  %wide.trip.count3051 = zext nneg i32 %i.mn to i64
  %wide.trip.count3046 = zext nneg i32 %.pre-phi to i64
  %i.mo = add nsw i64 %i.ie, -1                   ; 5 uses
  %min.iters.check3723 = icmp ult i32 %.pre-phi, 5
  %min.iters.check3725 = icmp ult i32 %.pre-phi, 17
  %i.mp = and i64 %i.mo, 12
  %n.vec3727 = and i64 %i.mo, -16                 ; 4 uses
  %i.mq = or disjoint i64 %n.vec3727, 1
  %cmp.n3732 = icmp eq i64 %i.mo, %n.vec3727
  %min.epilog.iters.check3738 = icmp eq i64 %i.mp, 0
  %n.vec3740 = and i64 %i.mo, -4                  ; 3 uses
  %i.mr = or disjoint i64 %n.vec3740, 1
  %cmp.n3745 = icmp eq i64 %i.mo, %n.vec3740
  br label %iter.check3735

iter.check3735:                                   ; preds = %.lr.ph2640.preheader, %._crit_edge2641
  %indvars.iv3048 = phi i64 [ 1, %.lr.ph2640.preheader ], [ %indvars.iv.next3049, %._crit_edge2641 ] ; 2 uses
  %i.ms = mul nsw i64 %indvars.iv3048, %i.mm
  %invariant.gep3513 = getelementptr [8 x i8], ptr %i.bo, i64 %i.ms ; 3 uses
  br i1 %min.iters.check3723, label %vec.epilog.scalar.ph3736.preheader, label %vector.main.loop.iter.check3724

vector.main.loop.iter.check3724:                  ; preds = %iter.check3735
  br i1 %min.iters.check3725, label %vec.epilog.ph3739, label %vector.body3728

vector.body3728:                                  ; preds = %vector.main.loop.iter.check3724, %vector.body3728
  %index3729 = phi i64 [ %index.next3730, %vector.body3728 ], [ 0, %vector.main.loop.iter.check3724 ] ; 2 uses
  %i.mt = getelementptr [8 x i8], ptr %invariant.gep3513, i64 %index3729 ; 4 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %i.mv = getelementptr i8, ptr %i.mt, i64 40
  %i.mw = getelementptr i8, ptr %i.mt, i64 72
  %i.mx = getelementptr i8, ptr %i.mt, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.mu, align 8, !tbaa !93
  store <4 x double> splat (double 1.000000e+00), ptr %i.mv, align 8, !tbaa !93
  store <4 x double> splat (double 1.000000e+00), ptr %i.mw, align 8, !tbaa !93
  store <4 x double> splat (double 1.000000e+00), ptr %i.mx, align 8, !tbaa !93
  %index.next3730 = add nuw i64 %index3729, 16    ; 2 uses
  %i.my = icmp eq i64 %index.next3730, %n.vec3727
  br i1 %i.my, label %middle.block3731, label %vector.body3728, !llvm.loop !18

middle.block3731:                                 ; preds = %vector.body3728
  br i1 %cmp.n3732, label %._crit_edge2641, label %vec.epilog.iter.check3737

vec.epilog.iter.check3737:                        ; preds = %middle.block3731
  br i1 %min.epilog.iters.check3738, label %vec.epilog.scalar.ph3736.preheader, label %vec.epilog.ph3739, !prof !98

vec.epilog.ph3739:                                ; preds = %vector.main.loop.iter.check3724, %vec.epilog.iter.check3737
  %vec.epilog.resume.val3733 = phi i64 [ %n.vec3727, %vec.epilog.iter.check3737 ], [ 0, %vector.main.loop.iter.check3724 ]
  br label %vec.epilog.vector.body3741

vec.epilog.vector.body3741:                       ; preds = %vec.epilog.vector.body3741, %vec.epilog.ph3739
  %index3742 = phi i64 [ %vec.epilog.resume.val3733, %vec.epilog.ph3739 ], [ %index.next3743, %vec.epilog.vector.body3741 ] ; 2 uses
  %i.mz = getelementptr [8 x i8], ptr %invariant.gep3513, i64 %index3742
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.na, align 8, !tbaa !93
  %index.next3743 = add nuw i64 %index3742, 4     ; 2 uses
  %i.nb = icmp eq i64 %index.next3743, %n.vec3740
  br i1 %i.nb, label %vec.epilog.middle.block3744, label %vec.epilog.vector.body3741, !llvm.loop !19

vec.epilog.middle.block3744:                      ; preds = %vec.epilog.vector.body3741
  br i1 %cmp.n3745, label %._crit_edge2641, label %vec.epilog.scalar.ph3736.preheader

vec.epilog.scalar.ph3736.preheader:               ; preds = %iter.check3735, %vec.epilog.iter.check3737, %vec.epilog.middle.block3744
  %indvars.iv3043.ph = phi i64 [ 1, %iter.check3735 ], [ %i.mq, %vec.epilog.iter.check3737 ], [ %i.mr, %vec.epilog.middle.block3744 ]
  br label %vec.epilog.scalar.ph3736

vec.epilog.scalar.ph3736:                         ; preds = %vec.epilog.scalar.ph3736.preheader, %vec.epilog.scalar.ph3736
  %indvars.iv3043 = phi i64 [ %indvars.iv.next3044, %vec.epilog.scalar.ph3736 ], [ %indvars.iv3043.ph, %vec.epilog.scalar.ph3736.preheader ] ; 2 uses
  %gep3514 = getelementptr [8 x i8], ptr %invariant.gep3513, i64 %indvars.iv3043
  store double 1.000000e+00, ptr %gep3514, align 8, !tbaa !93
  %indvars.iv.next3044 = add nuw nsw i64 %indvars.iv3043, 1 ; 2 uses
  %exitcond3047.not = icmp eq i64 %indvars.iv.next3044, %wide.trip.count3046
  br i1 %exitcond3047.not, label %._crit_edge2641, label %vec.epilog.scalar.ph3736, !llvm.loop !20

._crit_edge2641:                                  ; preds = %vec.epilog.scalar.ph3736, %vec.epilog.middle.block3744, %middle.block3731
  %indvars.iv.next3049 = add nuw nsw i64 %indvars.iv3048, 1 ; 2 uses
  %exitcond3052.not = icmp eq i64 %indvars.iv.next3049, %wide.trip.count3051
  br i1 %exitcond3052.not, label %._crit_edge2646.split, label %iter.check3735, !llvm.loop !21

._crit_edge2646.split:                            ; preds = %._crit_edge2641, %bb.bh
  %.not191426423467 = phi i1 [ true, %bb.bh ], [ false, %._crit_edge2641 ]
  %.017883465 = phi i32 [ %i.mk, %bb.bh ], [ %.017883464, %._crit_edge2641 ] ; 5 uses
  store i32 %.01789, ptr %i.ao, align 4, !tbaa !91
  %.not19152651 = icmp slt i32 %.01789, 1         ; 3 uses
  br i1 %.not19152651, label %._crit_edge2655, label %.lr.ph2654.preheader

.lr.ph2654.preheader:                             ; preds = %._crit_edge2646.split
  %i.nc = zext nneg i32 %.017883465 to i64        ; 2 uses
  %i.nd = sext i32 %i.bm to i64                   ; 2 uses
  %i.ne = zext nneg i32 %.01789 to i64
  br label %.lr.ph2654

.loopexit2619:                                    ; preds = %.lr.ph2650.split, %.lr.ph2650.split.us, %.lr.ph2654
  %i.nf = load i32, ptr %i.ao, align 4, !tbaa !91
  %i.ng = sext i32 %i.nf to i64
  %.not1915.not = icmp slt i64 %indvars.iv3053, %i.ng
  br i1 %.not1915.not, label %.lr.ph2654, label %._crit_edge2655, !llvm.loop !22

.lr.ph2654:                                       ; preds = %.lr.ph2654.preheader, %.loopexit2619
  %indvars.iv3053 = phi i64 [ 1, %.lr.ph2654.preheader ], [ %indvars.iv.next3054, %.loopexit2619 ] ; 9 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3053
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !91 ; 3 uses
  %indvars.iv.next3054 = add nuw nsw i64 %indvars.iv3053, 1
  %i.nj = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3053
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !91
  store i32 %.01789, ptr %i.ap, align 4, !tbaa !91
  %.not19832647 = icmp samesign ugt i64 %indvars.iv3053, %i.ne
  br i1 %.not19832647, label %.loopexit2619, label %.lr.ph2650

.lr.ph2650:                                       ; preds = %.lr.ph2654
  %i.nl = sub nsw i32 %i.nk, %i.ni                ; 2 uses
  br i1 %i.co, label %.lr.ph2650.split.us.preheader, label %.lr.ph2650.split.preheader

.lr.ph2650.split.preheader:                       ; preds = %.lr.ph2650
  %i.nm = add nuw nsw i64 %indvars.iv3053, %i.nc
  %i.nn = mul nsw i64 %i.nm, %i.nd
  %invariant.gep3515 = getelementptr [8 x i8], ptr %i.bo, i64 %i.nn
  br label %.lr.ph2650.split

.lr.ph2650.split.us.preheader:                    ; preds = %.lr.ph2650
  %invariant.gep3517 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3053
  br label %.lr.ph2650.split.us

.lr.ph2650.split.us:                              ; preds = %.lr.ph2650.split.us.preheader, %.lr.ph2650.split.us
  %indvars.iv3058 = phi i64 [ %indvars.iv3053, %.lr.ph2650.split.us.preheader ], [ %indvars.iv.next3059, %.lr.ph2650.split.us ] ; 5 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3058
  %i.np = load i32, ptr %i.no, align 4, !tbaa !91 ; 2 uses
  %indvars.iv.next3059 = add nuw nsw i64 %indvars.iv3058, 1
  %i.nq = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3058
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !91
  store i32 %i.nl, ptr %i.aq, align 4, !tbaa !91
  %i.ns = sub nsw i32 %i.nr, %i.np
  store i32 %i.ns, ptr %i.ar, align 4, !tbaa !91
  %i.nt = mul nsw i32 %i.np, %i.bc
  %i.nu = add nsw i32 %i.nt, %i.ni
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.nv
  %i.nx = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.nw, ptr noundef nonnull %6, ptr noundef %i.dm) #9
  %i.ny = add nuw nsw i64 %indvars.iv3058, %i.nc
  %i.nz = mul nsw i64 %i.ny, %i.nd
  %gep3518 = getelementptr [8 x i8], ptr %invariant.gep3517, i64 %i.nz
  store double %i.nx, ptr %gep3518, align 8, !tbaa !93
  %i.oa = load i32, ptr %i.ap, align 4, !tbaa !91
  %i.ob = sext i32 %i.oa to i64
  %.not1983.us.not = icmp slt i64 %indvars.iv3058, %i.ob
  br i1 %.not1983.us.not, label %.lr.ph2650.split.us, label %.loopexit2619, !llvm.loop !23

.lr.ph2650.split:                                 ; preds = %.lr.ph2650.split.preheader, %.lr.ph2650.split
  %indvars.iv3055 = phi i64 [ %indvars.iv3053, %.lr.ph2650.split.preheader ], [ %indvars.iv.next3056, %.lr.ph2650.split ] ; 5 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3055
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !91 ; 2 uses
  %indvars.iv.next3056 = add nuw nsw i64 %indvars.iv3055, 1
  %i.oe = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3055
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !91
  store i32 %i.nl, ptr %i.aq, align 4, !tbaa !91
  %i.og = sub nsw i32 %i.of, %i.od
  store i32 %i.og, ptr %i.ar, align 4, !tbaa !91
  %i.oh = mul nsw i32 %i.od, %i.bc
  %i.oi = add nsw i32 %i.oh, %i.ni
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.oj
  %i.ol = call double @dlange_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.ok, ptr noundef nonnull %6, ptr noundef %i.dm) #9
  %gep3516 = getelementptr [8 x i8], ptr %invariant.gep3515, i64 %indvars.iv3055
  store double %i.ol, ptr %gep3516, align 8, !tbaa !93
  %i.om = load i32, ptr %i.ap, align 4, !tbaa !91
  %i.on = sext i32 %i.om to i64
  %.not1983.not = icmp slt i64 %indvars.iv3055, %i.on
  br i1 %.not1983.not, label %.lr.ph2650.split, label %.loopexit2619, !llvm.loop !23

._crit_edge2655:                                  ; preds = %.loopexit2619, %._crit_edge2646.split
  %i.oo = add nuw nsw i32 %.017883465, %.01789    ; 2 uses
  store i32 %.017883465, ptr %i.ao, align 4, !tbaa !91
  br i1 %.not191426423467, label %._crit_edge2666, label %.lr.ph2665

.lr.ph2665:                                       ; preds = %._crit_edge2655.thread, %._crit_edge2655
  %i.op = phi i32 [ %i.ml, %._crit_edge2655.thread ], [ %i.oo, %._crit_edge2655 ] ; 2 uses
  %.01788346534723479 = phi i32 [ %.017883464, %._crit_edge2655.thread ], [ %.017883465, %._crit_edge2655 ] ; 3 uses
  %.not1915265134733477 = phi i1 [ true, %._crit_edge2655.thread ], [ %.not19152651, %._crit_edge2655 ]
  %i.oq = zext nneg i32 %i.op to i64              ; 2 uses
  %i.or = sext i32 %i.bm to i64                   ; 2 uses
  %i.os = zext nneg i32 %.01788346534723479 to i64
  %invariant.gep3527 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ie
  %invariant.gep3519 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ie
  %invariant.gep3523 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ie
  br label %bb.bi
end_hunk_0
