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
  %i.bc = load i32, ptr %6, align 4, !tbaa !8     ; 13 uses
  %narrow1991 = xor i32 %i.bc, -1
  %i.bd = sext i32 %narrow1991 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bd ; 16 uses
  %i.bf = load i32, ptr %8, align 4, !tbaa !8     ; 13 uses
  %narrow1992 = xor i32 %i.bf, -1
  %i.bg = sext i32 %narrow1992 to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bg ; 16 uses
  %i.bi = load i32, ptr %10, align 4, !tbaa !8    ; 15 uses
  %narrow1993 = xor i32 %i.bi, -1
  %i.bj = sext i32 %narrow1993 to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bj ; 30 uses
  %i.bl = getelementptr inbounds i8, ptr %12, i64 -4 ; 30 uses
  %i.bm = load i32, ptr %15, align 4, !tbaa !8    ; 13 uses
  %narrow = xor i32 %i.bm, -1
  %i.bn = sext i32 %narrow to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %14, i64 %i.bn ; 42 uses
  %i.bp = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #9 ; 2 uses
  %i.bq = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #9 ; 2 uses
  %i.br = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 0) #9
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.br, i32 8) ; 9 uses
  %i.bt = load i32, ptr %3, align 4, !tbaa !8
  %i.bu = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = sdiv i32 %i.bv, %i.bs                   ; 3 uses
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1) ; 12 uses
  store i32 1, ptr %i.ao, align 4, !tbaa !8
  %i.by = load i32, ptr %4, align 4, !tbaa !8
  %i.bz = add i32 %i.bu, %i.by
  %i.ca = sdiv i32 %i.bz, %i.bs                   ; 5 uses
  store i32 %i.ca, ptr %i.ap, align 4, !tbaa !8
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 1) ; 12 uses
  store i32 0, ptr %16, align 4, !tbaa !8
  %i.cc = load i32, ptr %13, align 4, !tbaa !8
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.ce = add nuw nsw i32 %i.bx, 2
  %i.cf = add nuw nsw i32 %i.ce, %i.cb
  store i32 %i.cf, ptr %12, align 4, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cg = load i32, ptr %15, align 4, !tbaa !8
  %i.ch = icmp eq i32 %i.cg, -1
  %i.ci = add nuw nsw i32 %i.bx, 2
  %i.cj = add nuw nsw i32 %i.ci, %i.cb
  store i32 %i.cj, ptr %12, align 4, !tbaa !8
  br i1 %i.ch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  store i32 2, ptr %15, align 4, !tbaa !8
  %i.ck = tail call i32 @llvm.umax.i32(i32 %i.bx, i32 %i.cb)
  %i.cl = uitofp nneg i32 %i.ck to double
  store double %i.cl, ptr %14, align 8, !tbaa !9
  %i.cm = shl nuw nsw i32 %i.cb, 1
  %i.cn = add nuw nsw i32 %i.cm, %i.bx
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = sext i32 %i.bm to i64
  %i.cq = getelementptr [8 x i8], ptr %i.bo, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store double %i.co, ptr %i.cr, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cs = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  %i.ct = icmp ne i32 %i.bp, 0                    ; 4 uses
  br i1 %i.ct, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cu = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cv = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %.not1898 = icmp eq i32 %i.cv, 0
  br i1 %.not1898, label %.thread2585.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.not1899 = icmp eq i32 %i.bq, 0                ; 2 uses
  br i1 %.not1899, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cw = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #9
  %.not1900 = icmp eq i32 %i.cw, 0
  br i1 %.not1900, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #9
  %.not1901 = icmp eq i32 %i.cx, 0
  br i1 %.not1901, label %.thread2585.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.cy = load i32, ptr %2, align 4, !tbaa !8
  switch i32 %i.cy, label %.thread2585.sink.split [
    i32 1, label %bb.k
    i32 -1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.cz = load i32, ptr %3, align 4, !tbaa !8     ; 4 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.thread2585.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %.thread2585.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = load i32, ptr %6, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 1) ; 2 uses
  %i.de = icmp slt i32 %i.dd, %spec.select
  br i1 %i.de, label %.thread2585.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = load i32, ptr %8, align 4, !tbaa !8
  %spec.select1994 = tail call i32 @llvm.umax.i32(i32 %i.db, i32 1)
  %i.dg = icmp slt i32 %i.df, %spec.select1994
  br i1 %i.dg, label %.thread2585.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = load i32, ptr %10, align 4, !tbaa !8
  %i.di = icmp slt i32 %i.dh, %spec.select
  br i1 %i.di, label %.thread2585.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pr = load i32, ptr %16, align 4, !tbaa !8     ; 2 uses
  %.not1904 = icmp eq i32 %.pr, 0
  br i1 %.not1904, label %bb.q, label %.thread2585

.thread2585.sink.split:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ -2, %bb.i ], [ -4, %bb.k ], [ -7, %bb.m ], [ -9, %bb.n ], [ -5, %bb.l ], [ -3, %bb.j ], [ -11, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %16, align 4, !tbaa !8
  br label %.thread2585

.thread2585:                                      ; preds = %.thread2585.sink.split, %bb.p
  %i.dj = phi i32 [ %.pr, %bb.p ], [ %.sink, %.thread2585.sink.split ]
  %i.dk = sub nsw i32 0, %i.dj
  store i32 %i.dk, ptr %i.ao, align 4, !tbaa !8
  %i.dl = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ao, i32 noundef 7) #9 ; 0 uses
  br label %bb.fz

bb.q:                                             ; preds = %bb.p
  br i1 %i.cs, label %bb.fz, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %11, align 8, !tbaa !9
  %i.dm = icmp eq i32 %i.cz, 0
  %i.dn = icmp eq i32 %i.db, 0
  %or.cond3651 = or i1 %i.dm, %i.dn
  br i1 %or.cond3651, label %bb.fz, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 %i.db)
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dq) #10 ; 17 uses
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.cb)
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = load i32, ptr %15, align 4, !tbaa !8
  %i.dv = tail call i32 @llvm.umax.i32(i32 %i.bx, i32 %i.cb)
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = load i32, ptr %13, align 4, !tbaa !8
  %i.dy = load i32, ptr %12, align 4, !tbaa !8
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.v, label %iter.check

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  tail call void @dtrsyl_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %16) #9
  br label %bb.fz

iter.check:                                       ; preds = %bb.u
  %i.ea = tail call double @dlamch_(ptr noundef nonnull @.str.6) #9 ; 2 uses
  %17 = add nuw nsw i32 %i.bx, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %17 to i64     ; 2 uses
  %18 = zext nneg i32 %i.bx to i64                ; 5 uses
  %min.iters.check = icmp slt i32 %i.bw, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3673 = icmp slt i32 %i.bw, 32
  br i1 %min.iters.check3673, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eb = and i64 %18, 24
  %n.vec = and i64 %18, 2147483616                ; 4 uses
  %i.ec = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ed = getelementptr [4 x i8], ptr %12, i64 %index ; 4 uses
  %i.ee = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.ef = add <8 x i32> %vec.ind, splat (i32 7)
  %i.eg = add <8 x i32> %vec.ind, splat (i32 15)
  %i.eh = add <8 x i32> %vec.ind, splat (i32 23)
  %i.ei = mul <8 x i32> %i.ee, %broadcast.splat
  %i.ej = mul <8 x i32> %i.ef, %broadcast.splat
  %i.ek = mul <8 x i32> %i.eg, %broadcast.splat
  %i.el = mul <8 x i32> %i.eh, %broadcast.splat
  %i.em = add <8 x i32> %i.ei, splat (i32 1)
  %i.en = add <8 x i32> %i.ej, splat (i32 1)
  %i.eo = add <8 x i32> %i.ek, splat (i32 1)
  %i.ep = add <8 x i32> %i.el, splat (i32 1)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store <8 x i32> %i.em, ptr %i.ed, align 4, !tbaa !8
  store <8 x i32> %i.en, ptr %i.eq, align 4, !tbaa !8
  store <8 x i32> %i.eo, ptr %i.er, align 4, !tbaa !8
  store <8 x i32> %i.ep, ptr %i.es, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %18
  br i1 %cmp.n, label %.loopexit3748, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ec, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec3674 = and i64 %18, 2147483640            ; 3 uses
  %i.eu = or disjoint i64 %n.vec3674, 1
  %broadcast.splatinsert3675 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat3676 = shufflevector <8 x i32> %broadcast.splatinsert3675, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ev = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert3677 = insertelement <8 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat3678 = shufflevector <8 x i32> %broadcast.splatinsert3677, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat3678, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3679 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3681, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind3680 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3682, %vec.epilog.vector.body ] ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %12, i64 %index3679
  %i.ex = add <8 x i32> %vec.ind3680, splat (i32 -1)
  %i.ey = mul <8 x i32> %i.ex, %broadcast.splat3676
  %i.ez = add <8 x i32> %i.ey, splat (i32 1)
  store <8 x i32> %i.ez, ptr %i.ew, align 4, !tbaa !8
  %index.next3681 = add nuw i64 %index3679, 8     ; 2 uses
  %vec.ind.next3682 = add <8 x i32> %vec.ind3680, splat (i32 8)
  %i.fa = icmp eq i64 %index.next3681, %n.vec3674
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3683 = icmp eq i64 %n.vec3674, %18
  br i1 %cmp.n3683, label %.loopexit3748, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.ec, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.fc = trunc i64 %indvars.iv to i32
  %i.fd = add i32 %i.fc, -1
  %i.fe = mul i32 %i.fd, %i.bs
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit3748, label %vec.epilog.scalar.ph, !llvm.loop !17

.loopexit3748:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fg = load i32, ptr %3, align 4, !tbaa !8
  %i.fh = add nsw i32 %i.fg, 1
  %i.fi = zext nneg i32 %i.bx to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !8
  %i.fl = sext i32 %i.bc to i64                   ; 3 uses
  %.pre = load i32, ptr %12, align 4, !tbaa !8
  br label %bb.w

.loopexit2620:                                    ; preds = %.lr.ph.prol.loopexit, %bb.am, %bb.w
  %i.fm = phi i32 [ %i.fp, %bb.w ], [ %.lcssa3769.unr, %.lr.ph.prol.loopexit ], [ %i.ib, %bb.am ]
  %.11874.lcssa = phi i32 [ %.018732625, %bb.w ], [ %.21875.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.21875.1, %bb.am ]
  %exitcond3027.not = icmp eq i64 %indvars.iv.next3024, %wide.trip.count
  br i1 %exitcond3027.not, label %bb.an, label %bb.w, !llvm.loop !18

bb.w:                                             ; preds = %.loopexit3748, %.loopexit2620
  %i.fn = phi i32 [ %.pre, %.loopexit3748 ], [ %i.fm, %.loopexit2620 ] ; 4 uses
  %indvars.iv3023 = phi i64 [ 1, %.loopexit3748 ], [ %indvars.iv.next3024, %.loopexit2620 ] ; 2 uses
  %.018732625 = phi i32 [ 0, %.loopexit3748 ], [ %.11874.lcssa, %.loopexit2620 ] ; 3 uses
  %indvars.iv.next3024 = add nuw nsw i64 %indvars.iv3023, 1 ; 2 uses
  %i.fo = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3023 ; 4 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8  ; 11 uses
  %.not1988.not2622 = icmp slt i32 %i.fn, %i.fp
  br i1 %.not1988.not2622, label %.lr.ph.preheader, label %.loopexit2620

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.fq = sext i32 %i.fn to i64                   ; 7 uses
  %wide.trip.count3021 = sext i32 %i.fp to i64    ; 3 uses
  %i.fr = sub nsw i64 %wide.trip.count3021, %i.fq
  %xtraiter = and i64 %i.fr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.not1989.prol = icmp eq i32 %.018732625, 0
  br i1 %.not1989.prol, label %bb.x, label %.lr.ph.prol.loopexit.unr-lcssa

bb.x:                                             ; preds = %.lr.ph.prol
  %i.fs = load i32, ptr %3, align 4, !tbaa !8
  %.not1990.prol = icmp slt i32 %i.fn, %i.fs
  br i1 %.not1990.prol, label %bb.y, label %.lr.ph.prol.loopexit.unr-lcssa

bb.y:                                             ; preds = %bb.x
  %i.ft = add nsw i64 %i.fq, 1                    ; 2 uses
  %i.fu = add nsw i32 %i.fn, 1
  %i.fv = mul nsw i32 %i.fu, %i.bc
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr [8 x i8], ptr %i.be, i64 %i.fq
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !9
  %i.ga = fcmp une double %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.z, label %.lr.ph.prol.loopexit.unr-lcssa

bb.z:                                             ; preds = %bb.y
  %i.gb = mul nsw i64 %i.fq, %i.fl
  %i.gc = getelementptr [8 x i8], ptr %i.be, i64 %i.ft
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !9
  %i.gf = fcmp une double %i.ge, 0.000000e+00
  br i1 %i.gf, label %bb.aa, label %.lr.ph.prol.loopexit.unr-lcssa

bb.aa:                                            ; preds = %bb.z
  %i.gg = trunc nsw i64 %i.ft to i32
  %i.gh = icmp eq i32 %i.fp, %i.gg
  br i1 %i.gh, label %bb.ab, label %.lr.ph.prol.loopexit.unr-lcssa

bb.ab:                                            ; preds = %bb.aa
  %i.gi = add nsw i32 %i.fp, 1                    ; 2 uses
  store i32 %i.gi, ptr %i.fo, align 4, !tbaa !8
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph.prol
  %i.gj = phi i32 [ %i.fp, %bb.y ], [ %i.fp, %bb.x ], [ %i.gi, %bb.ab ], [ %i.fp, %.lr.ph.prol ], [ %i.fp, %bb.z ], [ %i.fp, %bb.aa ] ; 2 uses
  %.21875.prol = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %.lr.ph.prol ], [ 0, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv.next3019.prol = add nsw i64 %i.fq, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.lcssa3769.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.gj, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.21875.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.21875.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.unr3770 = phi i32 [ %i.fp, %.lr.ph.preheader ], [ %i.gj, %.lr.ph.prol.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv3018.unr = phi i64 [ %i.fq, %.lr.ph.preheader ], [ %indvars.iv.next3019.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.118742623.unr = phi i32 [ %.018732625, %.lr.ph.preheader ], [ %.21875.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.gk = add nsw i64 %wide.trip.count3021, -1
  %i.gl = icmp eq i64 %i.gk, %i.fq
  br i1 %i.gl, label %.loopexit2620, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.am
  %i.gm = phi i32 [ %i.ia, %bb.am ], [ %.unr3770, %.lr.ph.prol.loopexit ] ; 8 uses
  %i.gn = phi i32 [ %i.ib, %bb.am ], [ %.unr3770, %.lr.ph.prol.loopexit ] ; 4 uses
  %indvars.iv3018 = phi i64 [ %indvars.iv.next3019.1, %bb.am ], [ %indvars.iv3018.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.118742623 = phi i32 [ %.21875.1, %bb.am ], [ %.118742623.unr, %.lr.ph.prol.loopexit ]
  %indvars3020 = trunc i64 %indvars.iv3018 to i32
  %.not1989 = icmp eq i32 %.118742623, 0
  br i1 %.not1989, label %bb.ac, label %.lr.ph.1

bb.ac:                                            ; preds = %.lr.ph
  %i.go = load i32, ptr %3, align 4, !tbaa !8
  %i.gp = sext i32 %i.go to i64
  %.not1990 = icmp slt i64 %indvars.iv3018, %i.gp
  br i1 %.not1990, label %bb.ad, label %.lr.ph.1

bb.ad:                                            ; preds = %bb.ac
  %i.gq = add nsw i64 %indvars.iv3018, 1          ; 2 uses
  %i.gr = add nsw i32 %indvars3020, 1
  %i.gs = mul nsw i32 %i.gr, %i.bc
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv3018
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !9
  %i.gx = fcmp une double %i.gw, 0.000000e+00
  br i1 %i.gx, label %bb.ae, label %.lr.ph.1

bb.ae:                                            ; preds = %bb.ad
  %i.gy = mul nsw i64 %indvars.iv3018, %i.fl
  %i.gz = getelementptr [8 x i8], ptr %i.be, i64 %i.gq
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !9
  %i.hc = fcmp une double %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.af, label %.lr.ph.1

bb.af:                                            ; preds = %bb.ae
  %i.hd = trunc nsw i64 %i.gq to i32
  %i.he = icmp eq i32 %i.gm, %i.hd
  br i1 %i.he, label %bb.ag, label %.lr.ph.1

bb.ag:                                            ; preds = %bb.af
  %i.hf = add nsw i32 %i.gm, 1                    ; 3 uses
  store i32 %i.hf, ptr %i.fo, align 4, !tbaa !8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.af, %.lr.ph, %bb.ad, %bb.ae, %bb.ac, %bb.ag
  %i.hg = phi i32 [ %i.gm, %bb.ad ], [ %i.gm, %bb.ac ], [ %i.hf, %bb.ag ], [ %i.gm, %.lr.ph ], [ %i.gm, %bb.ae ], [ %i.gm, %bb.af ] ; 8 uses
  %i.hh = phi i32 [ %i.gn, %bb.ad ], [ %i.gn, %bb.ac ], [ %i.hf, %bb.ag ], [ %i.gn, %.lr.ph ], [ %i.gn, %bb.ae ], [ %i.gm, %bb.af ] ; 4 uses
  %.not1989.1 = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ag ], [ true, %.lr.ph ], [ true, %bb.ae ], [ false, %bb.af ]
  %indvars.iv.next3019 = add nsw i64 %indvars.iv3018, 1 ; 4 uses
  %indvars3020.1 = trunc i64 %indvars.iv.next3019 to i32
  br i1 %.not1989.1, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %.lr.ph.1
  %i.hi = load i32, ptr %3, align 4, !tbaa !8
  %i.hj = sext i32 %i.hi to i64
  %.not1990.1 = icmp slt i64 %indvars.iv.next3019, %i.hj
  br i1 %.not1990.1, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.hk = add nsw i64 %indvars.iv3018, 2          ; 2 uses
  %i.hl = add nsw i32 %indvars3020.1, 1
  %i.hm = mul nsw i32 %i.hl, %i.bc
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.next3019
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !9
  %i.hr = fcmp une double %i.hq, 0.000000e+00
  br i1 %i.hr, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.hs = mul nsw i64 %indvars.iv.next3019, %i.fl
  %i.ht = getelementptr [8 x i8], ptr %i.be, i64 %i.hk
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !9
  %i.hw = fcmp une double %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hx = trunc nsw i64 %i.hk to i32
  %i.hy = icmp eq i32 %i.hg, %i.hx
  br i1 %i.hy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hz = add nsw i32 %i.hg, 1                    ; 3 uses
  store i32 %i.hz, ptr %i.fo, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.lr.ph.1
  %i.ia = phi i32 [ %i.hg, %bb.ai ], [ %i.hg, %bb.ah ], [ %i.hz, %bb.al ], [ %i.hg, %.lr.ph.1 ], [ %i.hg, %bb.aj ], [ %i.hg, %bb.ak ]
  %i.ib = phi i32 [ %i.hh, %bb.ai ], [ %i.hh, %bb.ah ], [ %i.hz, %bb.al ], [ %i.hh, %.lr.ph.1 ], [ %i.hh, %bb.aj ], [ %i.hg, %bb.ak ] ; 2 uses
  %.21875.1 = phi i32 [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.al ], [ 0, %.lr.ph.1 ], [ 0, %bb.aj ], [ 1, %bb.ak ] ; 2 uses
  %indvars.iv.next3019.1 = add nsw i64 %indvars.iv3018, 2 ; 2 uses
  %exitcond3022.not.1 = icmp eq i64 %indvars.iv.next3019.1, %wide.trip.count3021
  br i1 %exitcond3022.not.1, label %.loopexit2620, label %.lr.ph, !llvm.loop !19

bb.an:                                            ; preds = %.loopexit2620
  %i.ic = fdiv double 1.000000e+00, %i.ea         ; 37 uses
  %i.id = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ie = add nsw i32 %i.id, 1                    ; 2 uses
  store i32 %i.ie, ptr %i.fk, align 4, !tbaa !8
  %i.if = load i32, ptr %i.fj, align 4, !tbaa !8
  %.not1910.not = icmp sgt i32 %i.if, %i.id
  br i1 %.not1910.not, label %bb.ao, label %iter.check3704

bb.ao:                                            ; preds = %bb.an
  store i32 %i.ie, ptr %i.fj, align 4, !tbaa !8
  %i.ig = add nsw i32 %i.bx, -1
  br label %iter.check3704

iter.check3704:                                   ; preds = %bb.ao, %bb.an
  %.pre-phi.a = phi i32 [ %i.bx, %bb.ao ], [ %17, %bb.an ] ; 18 uses
  %.01789 = phi i32 [ %i.ig, %bb.ao ], [ %i.bx, %bb.an ] ; 32 uses
  store i32 %i.cb, ptr %i.ao, align 4, !tbaa !8
  %i.ih = zext i32 %.pre-phi.a to i64             ; 15 uses
  %19 = add nuw nsw i32 %i.cb, 1
  %wide.trip.count3031 = zext nneg i32 %19 to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih ; 3 uses
  %20 = zext nneg i32 %i.cb to i64                ; 5 uses
  %min.iters.check3685 = icmp slt i32 %i.ca, 8
  br i1 %min.iters.check3685, label %vec.epilog.scalar.ph3705.preheader, label %vector.main.loop.iter.check3686

vector.main.loop.iter.check3686:                  ; preds = %iter.check3704
  %min.iters.check3687 = icmp slt i32 %i.ca, 32
  br i1 %min.iters.check3687, label %vec.epilog.ph3708, label %vector.ph3688

vector.ph3688:                                    ; preds = %vector.main.loop.iter.check3686
  %i.ii = and i64 %20, 24
  %n.vec3689 = and i64 %20, 2147483616            ; 4 uses
  %i.ij = or disjoint i64 %n.vec3689, 1           ; 2 uses
  %broadcast.splatinsert3690 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat3691 = shufflevector <8 x i32> %broadcast.splatinsert3690, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body3692

vector.body3692:                                  ; preds = %vector.body3692, %vector.ph3688
  %index3693 = phi i64 [ 0, %vector.ph3688 ], [ %index.next3698, %vector.body3692 ] ; 2 uses
  %vec.ind3694 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph3688 ], [ %vec.ind.next3699, %vector.body3692 ] ; 5 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index3693 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = add <8 x i32> %vec.ind3694, splat (i32 -1)
  %i.in = add <8 x i32> %vec.ind3694, splat (i32 7)
  %i.io = add <8 x i32> %vec.ind3694, splat (i32 15)
  %i.ip = add <8 x i32> %vec.ind3694, splat (i32 23)
  %i.iq = mul <8 x i32> %i.im, %broadcast.splat3691
  %i.ir = mul <8 x i32> %i.in, %broadcast.splat3691
  %i.is = mul <8 x i32> %i.io, %broadcast.splat3691
  %i.it = mul <8 x i32> %i.ip, %broadcast.splat3691
  %i.iu = add <8 x i32> %i.iq, splat (i32 1)
  %i.iv = add <8 x i32> %i.ir, splat (i32 1)
  %i.iw = add <8 x i32> %i.is, splat (i32 1)
  %i.ix = add <8 x i32> %i.it, splat (i32 1)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ik, i64 68
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 100
  store <8 x i32> %i.iu, ptr %i.il, align 4, !tbaa !8
  store <8 x i32> %i.iv, ptr %i.iy, align 4, !tbaa !8
  store <8 x i32> %i.iw, ptr %i.iz, align 4, !tbaa !8
  store <8 x i32> %i.ix, ptr %i.ja, align 4, !tbaa !8
  %index.next3698 = add nuw i64 %index3693, 32    ; 2 uses
  %vec.ind.next3699 = add <8 x i32> %vec.ind3694, splat (i32 32)
  %i.jb = icmp eq i64 %index.next3698, %n.vec3689
  br i1 %i.jb, label %middle.block3700, label %vector.body3692, !llvm.loop !20

middle.block3700:                                 ; preds = %vector.body3692
  %cmp.n3701 = icmp eq i64 %n.vec3689, %20
  br i1 %cmp.n3701, label %.loopexit3747, label %vec.epilog.iter.check3706

vec.epilog.iter.check3706:                        ; preds = %middle.block3700
  %min.epilog.iters.check3707 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check3707, label %vec.epilog.scalar.ph3705.preheader, label %vec.epilog.ph3708, !prof !15

vec.epilog.ph3708:                                ; preds = %vector.main.loop.iter.check3686, %vec.epilog.iter.check3706
  %vec.epilog.resume.val3702 = phi i64 [ %n.vec3689, %vec.epilog.iter.check3706 ], [ 0, %vector.main.loop.iter.check3686 ]
  %bc.resume.val3703 = phi i64 [ %i.ij, %vec.epilog.iter.check3706 ], [ 1, %vector.main.loop.iter.check3686 ]
  %n.vec3709 = and i64 %20, 2147483640            ; 3 uses
  %i.jc = or disjoint i64 %n.vec3709, 1
  %broadcast.splatinsert3710 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat3711 = shufflevector <8 x i32> %broadcast.splatinsert3710, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jd = trunc nsw i64 %bc.resume.val3703 to i32
  %broadcast.splatinsert3712 = insertelement <8 x i32> poison, i32 %i.jd, i64 0
  %broadcast.splat3713 = shufflevector <8 x i32> %broadcast.splatinsert3712, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction3714 = add <8 x i32> %broadcast.splat3713, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body3715

vec.epilog.vector.body3715:                       ; preds = %vec.epilog.vector.body3715, %vec.epilog.ph3708
  %index3716 = phi i64 [ %vec.epilog.resume.val3702, %vec.epilog.ph3708 ], [ %index.next3718, %vec.epilog.vector.body3715 ] ; 2 uses
  %vec.ind3717 = phi <8 x i32> [ %induction3714, %vec.epilog.ph3708 ], [ %vec.ind.next3719, %vec.epilog.vector.body3715 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index3716
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = add <8 x i32> %vec.ind3717, splat (i32 -1)
  %i.jh = mul <8 x i32> %i.jg, %broadcast.splat3711
  %i.ji = add <8 x i32> %i.jh, splat (i32 1)
  store <8 x i32> %i.ji, ptr %i.jf, align 4, !tbaa !8
  %index.next3718 = add nuw i64 %index3716, 8     ; 2 uses
  %vec.ind.next3719 = add <8 x i32> %vec.ind3717, splat (i32 8)
  %i.jj = icmp eq i64 %index.next3718, %n.vec3709
  br i1 %i.jj, label %vec.epilog.middle.block3720, label %vec.epilog.vector.body3715, !llvm.loop !21

vec.epilog.middle.block3720:                      ; preds = %vec.epilog.vector.body3715
  %cmp.n3721 = icmp eq i64 %n.vec3709, %20
  br i1 %cmp.n3721, label %.loopexit3747, label %vec.epilog.scalar.ph3705.preheader

vec.epilog.scalar.ph3705.preheader:               ; preds = %iter.check3704, %vec.epilog.iter.check3706, %vec.epilog.middle.block3720
  %indvars.iv3028.ph = phi i64 [ 1, %iter.check3704 ], [ %i.ij, %vec.epilog.iter.check3706 ], [ %i.jc, %vec.epilog.middle.block3720 ]
  br label %vec.epilog.scalar.ph3705

vec.epilog.scalar.ph3705:                         ; preds = %vec.epilog.scalar.ph3705.preheader, %vec.epilog.scalar.ph3705
  %indvars.iv3028 = phi i64 [ %indvars.iv.next3029, %vec.epilog.scalar.ph3705 ], [ %indvars.iv3028.ph, %vec.epilog.scalar.ph3705.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv3028
  %i.jk = trunc i64 %indvars.iv3028 to i32
  %i.jl = add i32 %i.jk, -1
  %i.jm = mul i32 %i.jl, %i.bs
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next3029 = add nuw nsw i64 %indvars.iv3028, 1 ; 2 uses
  %exitcond3032.not = icmp eq i64 %indvars.iv.next3029, %wide.trip.count3031
  br i1 %exitcond3032.not, label %.loopexit3747, label %vec.epilog.scalar.ph3705, !llvm.loop !22

.loopexit3747:                                    ; preds = %vec.epilog.scalar.ph3705, %vec.epilog.middle.block3720, %middle.block3700
  %i.jo = load i32, ptr %4, align 4, !tbaa !8
  %i.jp = add nsw i32 %i.jo, 1
  %i.jq = add nuw nsw i32 %.pre-phi.a, %i.cb
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr [4 x i8], ptr %i.bl, i64 %i.jr ; 3 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 4      ; 2 uses
  store i32 %i.jp, ptr %i.jt, align 4, !tbaa !8
  %i.ju = sext i32 %i.bf to i64                   ; 3 uses
  %invariant.gep3511.a = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit3747, %._crit_edge
  %indvars.iv3038 = phi i64 [ 1, %.loopexit3747 ], [ %indvars.iv.next3039, %._crit_edge ] ; 2 uses
  %.318762634 = phi i32 [ 0, %.loopexit3747 ], [ %.41877.lcssa, %._crit_edge ] ; 3 uses
  %gep3512.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3511.a, i64 %indvars.iv3038 ; 2 uses
  %i.jv = load i32, ptr %gep3512.a, align 4, !tbaa !8 ; 4 uses
  %i.jw = getelementptr i8, ptr %gep3512.a, i64 4 ; 4 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !8  ; 11 uses
  %.not1985.not2629 = icmp slt i32 %i.jv, %i.jx
  br i1 %.not1985.not2629, label %.lr.ph2632.preheader, label %._crit_edge

.lr.ph2632.preheader:                             ; preds = %bb.ap
  %i.jy = sext i32 %i.jv to i64                   ; 7 uses
  %wide.trip.count3036 = sext i32 %i.jx to i64    ; 3 uses
  %i.jz = sub nsw i64 %wide.trip.count3036, %i.jy
  %xtraiter3771 = and i64 %i.jz, 1
  %lcmp.mod3772.not = icmp eq i64 %xtraiter3771, 0
  br i1 %lcmp.mod3772.not, label %.lr.ph2632.prol.loopexit, label %.lr.ph2632.prol

.lr.ph2632.prol:                                  ; preds = %.lr.ph2632.preheader
  %.not1986.prol = icmp eq i32 %.318762634, 0
  br i1 %.not1986.prol, label %bb.aq, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.aq:                                            ; preds = %.lr.ph2632.prol
  %i.ka = load i32, ptr %4, align 4, !tbaa !8
  %.not1987.prol = icmp slt i32 %i.jv, %i.ka
  br i1 %.not1987.prol, label %bb.ar, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.ar:                                            ; preds = %bb.aq
  %i.kb = add nsw i64 %i.jy, 1                    ; 2 uses
  %i.kc = add nsw i32 %i.jv, 1
  %i.kd = mul nsw i32 %i.kc, %i.bf
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr [8 x i8], ptr %i.bh, i64 %i.jy
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.ke
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !9
  %i.ki = fcmp une double %i.kh, 0.000000e+00
  br i1 %i.ki, label %bb.as, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %bb.ar
  %i.kj = mul nsw i64 %i.jy, %i.ju
  %i.kk = getelementptr [8 x i8], ptr %i.bh, i64 %i.kb
  %i.kl = getelementptr [8 x i8], ptr %i.kk, i64 %i.kj
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9
  %i.kn = fcmp une double %i.km, 0.000000e+00
  br i1 %i.kn, label %bb.at, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.at:                                            ; preds = %bb.as
  %i.ko = trunc nsw i64 %i.kb to i32
  %i.kp = icmp eq i32 %i.jx, %i.ko
  br i1 %i.kp, label %bb.au, label %.lr.ph2632.prol.loopexit.unr-lcssa

bb.au:                                            ; preds = %bb.at
  %i.kq = add nsw i32 %i.jx, 1                    ; 2 uses
  store i32 %i.kq, ptr %i.jw, align 4, !tbaa !8
  br label %.lr.ph2632.prol.loopexit.unr-lcssa

.lr.ph2632.prol.loopexit.unr-lcssa:               ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %.lr.ph2632.prol
  %i.kr = phi i32 [ %i.jx, %bb.ar ], [ %i.jx, %bb.aq ], [ %i.kq, %bb.au ], [ %i.jx, %.lr.ph2632.prol ], [ %i.jx, %bb.as ], [ %i.jx, %bb.at ]
  %.51878.prol = phi i32 [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.au ], [ 0, %.lr.ph2632.prol ], [ 0, %bb.as ], [ 1, %bb.at ] ; 2 uses
  %indvars.iv.next3034.prol = add nsw i64 %i.jy, 1
  br label %.lr.ph2632.prol.loopexit

.lr.ph2632.prol.loopexit:                         ; preds = %.lr.ph2632.prol.loopexit.unr-lcssa, %.lr.ph2632.preheader
  %.51878.lcssa.unr = phi i32 [ poison, %.lr.ph2632.preheader ], [ %.51878.prol, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %.unr3773 = phi i32 [ %i.jx, %.lr.ph2632.preheader ], [ %i.kr, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %indvars.iv3033.unr = phi i64 [ %i.jy, %.lr.ph2632.preheader ], [ %indvars.iv.next3034.prol, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %.418772630.unr = phi i32 [ %.318762634, %.lr.ph2632.preheader ], [ %.51878.prol, %.lr.ph2632.prol.loopexit.unr-lcssa ]
  %i.ks = add nsw i64 %wide.trip.count3036, -1
  %i.kt = icmp eq i64 %i.ks, %i.jy
  br i1 %i.kt, label %._crit_edge, label %.lr.ph2632

.lr.ph2632:                                       ; preds = %.lr.ph2632.prol.loopexit, %bb.bf
  %i.ku = phi i32 [ %i.mg, %bb.bf ], [ %.unr3773, %.lr.ph2632.prol.loopexit ] ; 7 uses
  %indvars.iv3033 = phi i64 [ %indvars.iv.next3034.1, %bb.bf ], [ %indvars.iv3033.unr, %.lr.ph2632.prol.loopexit ] ; 8 uses
  %.418772630 = phi i32 [ %.51878.1, %bb.bf ], [ %.418772630.unr, %.lr.ph2632.prol.loopexit ]
  %indvars3035 = trunc i64 %indvars.iv3033 to i32
  %.not1986 = icmp eq i32 %.418772630, 0
  br i1 %.not1986, label %bb.av, label %.lr.ph2632.1

bb.av:                                            ; preds = %.lr.ph2632
  %i.kv = load i32, ptr %4, align 4, !tbaa !8
  %i.kw = sext i32 %i.kv to i64
  %.not1987 = icmp slt i64 %indvars.iv3033, %i.kw
  br i1 %.not1987, label %bb.aw, label %.lr.ph2632.1

bb.aw:                                            ; preds = %bb.av
  %i.kx = add nsw i64 %indvars.iv3033, 1          ; 2 uses
  %i.ky = add nsw i32 %indvars3035, 1
  %i.kz = mul nsw i32 %i.ky, %i.bf
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv3033
  %i.lc = getelementptr [8 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !9
  %i.le = fcmp une double %i.ld, 0.000000e+00
  br i1 %i.le, label %bb.ax, label %.lr.ph2632.1

bb.ax:                                            ; preds = %bb.aw
  %i.lf = mul nsw i64 %indvars.iv3033, %i.ju
  %i.lg = getelementptr [8 x i8], ptr %i.bh, i64 %i.kx
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lf
  %i.li = load double, ptr %i.lh, align 8, !tbaa !9
  %i.lj = fcmp une double %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.ay, label %.lr.ph2632.1

bb.ay:                                            ; preds = %bb.ax
  %i.lk = trunc nsw i64 %i.kx to i32
  %i.ll = icmp eq i32 %i.ku, %i.lk
  br i1 %i.ll, label %bb.az, label %.lr.ph2632.1

bb.az:                                            ; preds = %bb.ay
  %i.lm = add nsw i32 %i.ku, 1                    ; 2 uses
  store i32 %i.lm, ptr %i.jw, align 4, !tbaa !8
  br label %.lr.ph2632.1

.lr.ph2632.1:                                     ; preds = %bb.ay, %.lr.ph2632, %bb.aw, %bb.ax, %bb.av, %bb.az
  %i.ln = phi i32 [ %i.ku, %bb.aw ], [ %i.ku, %bb.av ], [ %i.lm, %bb.az ], [ %i.ku, %.lr.ph2632 ], [ %i.ku, %bb.ax ], [ %i.ku, %bb.ay ] ; 7 uses
  %.not1986.1 = phi i1 [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.az ], [ true, %.lr.ph2632 ], [ true, %bb.ax ], [ false, %bb.ay ]
  %indvars.iv.next3034 = add nsw i64 %indvars.iv3033, 1 ; 4 uses
  %indvars3035.1 = trunc i64 %indvars.iv.next3034 to i32
  br i1 %.not1986.1, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %.lr.ph2632.1
  %i.lo = load i32, ptr %4, align 4, !tbaa !8
  %i.lp = sext i32 %i.lo to i64
  %.not1987.1 = icmp slt i64 %indvars.iv.next3034, %i.lp
  br i1 %.not1987.1, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.lq = add nsw i64 %indvars.iv3033, 2          ; 2 uses
  %i.lr = add nsw i32 %indvars3035.1, 1
  %i.ls = mul nsw i32 %i.lr, %i.bf
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.next3034
  %i.lv = getelementptr [8 x i8], ptr %i.lu, i64 %i.lt
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !9
  %i.lx = fcmp une double %i.lw, 0.000000e+00
  br i1 %i.lx, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ly = mul nsw i64 %indvars.iv.next3034, %i.ju
  %i.lz = getelementptr [8 x i8], ptr %i.bh, i64 %i.lq
  %i.ma = getelementptr [8 x i8], ptr %i.lz, i64 %i.ly
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !9
  %i.mc = fcmp une double %i.mb, 0.000000e+00
  br i1 %i.mc, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.md = trunc nsw i64 %i.lq to i32
  %i.me = icmp eq i32 %i.ln, %i.md
  br i1 %i.me, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mf = add nsw i32 %i.ln, 1                    ; 2 uses
  store i32 %i.mf, ptr %i.jw, align 4, !tbaa !8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %.lr.ph2632.1
  %i.mg = phi i32 [ %i.ln, %bb.bb ], [ %i.ln, %bb.ba ], [ %i.mf, %bb.be ], [ %i.ln, %.lr.ph2632.1 ], [ %i.ln, %bb.bc ], [ %i.ln, %bb.bd ]
  %.51878.1 = phi i32 [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.be ], [ 0, %.lr.ph2632.1 ], [ 0, %bb.bc ], [ 1, %bb.bd ] ; 2 uses
  %indvars.iv.next3034.1 = add nsw i64 %indvars.iv3033, 2 ; 2 uses
  %exitcond3037.not.1 = icmp eq i64 %indvars.iv.next3034.1, %wide.trip.count3036
  br i1 %exitcond3037.not.1, label %._crit_edge, label %.lr.ph2632, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph2632.prol.loopexit, %bb.bf, %bb.ap
  %.41877.lcssa = phi i32 [ %.318762634, %bb.ap ], [ %.51878.lcssa.unr, %.lr.ph2632.prol.loopexit ], [ %.51878.1, %bb.bf ]
  %indvars.iv.next3039 = add nuw nsw i64 %indvars.iv3038, 1 ; 2 uses
  %exitcond3042.not = icmp eq i64 %indvars.iv.next3039, %wide.trip.count3031
  br i1 %exitcond3042.not, label %bb.bg, label %bb.ap, !llvm.loop !24

bb.bg:                                            ; preds = %._crit_edge
  %i.mh = add nsw i32 %i.jx, -1
  store i32 %i.mh, ptr %i.ap, align 4, !tbaa !8
  %i.mi = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.mj = add nsw i32 %i.mi, 1                    ; 2 uses
  store i32 %i.mj, ptr %i.jt, align 4, !tbaa !8
  %i.mk = load i32, ptr %i.js, align 4, !tbaa !8
  %.not1913.not = icmp sgt i32 %i.mk, %i.mi
  br i1 %.not1913.not, label %bb.bh, label %.lr.ph2645

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.mj, ptr %i.js, align 4, !tbaa !8
  %i.ml = add nsw i32 %i.cb, -1                   ; 2 uses
  %.not19142642 = icmp slt i32 %i.ca, 2
  br i1 %.not19142642, label %._crit_edge2646.split, label %.lr.ph2645

.lr.ph2645:                                       ; preds = %bb.bg, %bb.bh
  %.017883464 = phi i32 [ %i.ml, %bb.bh ], [ %i.cb, %bb.bg ] ; 5 uses
  store i32 %.01789, ptr %i.ap, align 4, !tbaa !8
  %.not19842637 = icmp slt i32 %.01789, 1
  br i1 %.not19842637, label %._crit_edge2655.thread, label %.lr.ph2640.preheader

._crit_edge2655.thread:                           ; preds = %.lr.ph2645
  %i.mm = add nuw nsw i32 %.017883464, %.01789
  store i32 %.017883464, ptr %i.ao, align 4, !tbaa !8
  br label %.lr.ph2665

.lr.ph2640.preheader:                             ; preds = %.lr.ph2645
  %i.mn = sext i32 %i.bm to i64
  %i.mo = add nuw nsw i32 %.017883464, 1
  %wide.trip.count3051 = zext nneg i32 %i.mo to i64
  %wide.trip.count3046 = zext nneg i32 %.pre-phi.a to i64
  %21 = add nsw i64 %i.ih, -1                     ; 5 uses
  %min.iters.check3723 = icmp ult i32 %.pre-phi.a, 5
  %min.iters.check3725 = icmp ult i32 %.pre-phi.a, 17
  %i.mp = and i64 %21, 12
  %n.vec3727 = and i64 %21, -16                   ; 4 uses
  %i.mq = or disjoint i64 %n.vec3727, 1
  %cmp.n3732 = icmp eq i64 %21, %n.vec3727
  %min.epilog.iters.check3738 = icmp eq i64 %i.mp, 0
  %n.vec3740 = and i64 %21, -4                    ; 3 uses
  %i.mr = or disjoint i64 %n.vec3740, 1
  %cmp.n3745 = icmp eq i64 %21, %n.vec3740
  br label %iter.check3735

iter.check3735:                                   ; preds = %.lr.ph2640.preheader, %._crit_edge2641
  %indvars.iv3048 = phi i64 [ 1, %.lr.ph2640.preheader ], [ %indvars.iv.next3049, %._crit_edge2641 ] ; 2 uses
  %i.ms = mul nsw i64 %indvars.iv3048, %i.mn
  %invariant.gep3513.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.ms ; 3 uses
  br i1 %min.iters.check3723, label %vec.epilog.scalar.ph3736.preheader, label %vector.main.loop.iter.check3724

vector.main.loop.iter.check3724:                  ; preds = %iter.check3735
  br i1 %min.iters.check3725, label %vec.epilog.ph3739, label %vector.body3728

vector.body3728:                                  ; preds = %vector.main.loop.iter.check3724, %vector.body3728
  %index3729 = phi i64 [ %index.next3730, %vector.body3728 ], [ 0, %vector.main.loop.iter.check3724 ] ; 2 uses
  %i.mt = getelementptr [8 x i8], ptr %invariant.gep3513.a, i64 %index3729 ; 4 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %i.mv = getelementptr i8, ptr %i.mt, i64 40
  %i.mw = getelementptr i8, ptr %i.mt, i64 72
  %i.mx = getelementptr i8, ptr %i.mt, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.mu, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.mv, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.mw, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.mx, align 8, !tbaa !9
  %index.next3730 = add nuw i64 %index3729, 16    ; 2 uses
  %i.my = icmp eq i64 %index.next3730, %n.vec3727
  br i1 %i.my, label %middle.block3731, label %vector.body3728, !llvm.loop !25

middle.block3731:                                 ; preds = %vector.body3728
  br i1 %cmp.n3732, label %._crit_edge2641, label %vec.epilog.iter.check3737

vec.epilog.iter.check3737:                        ; preds = %middle.block3731
  br i1 %min.epilog.iters.check3738, label %vec.epilog.scalar.ph3736.preheader, label %vec.epilog.ph3739, !prof !26

vec.epilog.ph3739:                                ; preds = %vector.main.loop.iter.check3724, %vec.epilog.iter.check3737
  %vec.epilog.resume.val3733 = phi i64 [ %n.vec3727, %vec.epilog.iter.check3737 ], [ 0, %vector.main.loop.iter.check3724 ]
  br label %vec.epilog.vector.body3741

vec.epilog.vector.body3741:                       ; preds = %vec.epilog.vector.body3741, %vec.epilog.ph3739
  %index3742 = phi i64 [ %vec.epilog.resume.val3733, %vec.epilog.ph3739 ], [ %index.next3743, %vec.epilog.vector.body3741 ] ; 2 uses
  %i.mz = getelementptr [8 x i8], ptr %invariant.gep3513.a, i64 %index3742
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.na, align 8, !tbaa !9
  %index.next3743 = add nuw i64 %index3742, 4     ; 2 uses
  %i.nb = icmp eq i64 %index.next3743, %n.vec3740
  br i1 %i.nb, label %vec.epilog.middle.block3744, label %vec.epilog.vector.body3741, !llvm.loop !27

vec.epilog.middle.block3744:                      ; preds = %vec.epilog.vector.body3741
  br i1 %cmp.n3745, label %._crit_edge2641, label %vec.epilog.scalar.ph3736.preheader

vec.epilog.scalar.ph3736.preheader:               ; preds = %iter.check3735, %vec.epilog.iter.check3737, %vec.epilog.middle.block3744
  %indvars.iv3043.ph = phi i64 [ 1, %iter.check3735 ], [ %i.mq, %vec.epilog.iter.check3737 ], [ %i.mr, %vec.epilog.middle.block3744 ]
  br label %vec.epilog.scalar.ph3736

vec.epilog.scalar.ph3736:                         ; preds = %vec.epilog.scalar.ph3736.preheader, %vec.epilog.scalar.ph3736
  %indvars.iv3043 = phi i64 [ %indvars.iv.next3044, %vec.epilog.scalar.ph3736 ], [ %indvars.iv3043.ph, %vec.epilog.scalar.ph3736.preheader ] ; 2 uses
  %gep3514.a = getelementptr [8 x i8], ptr %invariant.gep3513.a, i64 %indvars.iv3043
  store double 1.000000e+00, ptr %gep3514.a, align 8, !tbaa !9
  %indvars.iv.next3044 = add nuw nsw i64 %indvars.iv3043, 1 ; 2 uses
  %exitcond3047.not = icmp eq i64 %indvars.iv.next3044, %wide.trip.count3046
  br i1 %exitcond3047.not, label %._crit_edge2641, label %vec.epilog.scalar.ph3736, !llvm.loop !28

._crit_edge2641:                                  ; preds = %vec.epilog.scalar.ph3736, %vec.epilog.middle.block3744, %middle.block3731
  %indvars.iv.next3049 = add nuw nsw i64 %indvars.iv3048, 1 ; 2 uses
  %exitcond3052.not = icmp eq i64 %indvars.iv.next3049, %wide.trip.count3051
  br i1 %exitcond3052.not, label %._crit_edge2646.split, label %iter.check3735, !llvm.loop !29

._crit_edge2646.split:                            ; preds = %._crit_edge2641, %bb.bh
  %.not191426423467 = phi i1 [ true, %bb.bh ], [ false, %._crit_edge2641 ]
  %.017883465 = phi i32 [ %i.ml, %bb.bh ], [ %.017883464, %._crit_edge2641 ] ; 5 uses
  store i32 %.01789, ptr %i.ao, align 4, !tbaa !8
  %.not19152651 = icmp slt i32 %.01789, 1         ; 3 uses
  br i1 %.not19152651, label %._crit_edge2655, label %.lr.ph2654.preheader

.lr.ph2654.preheader:                             ; preds = %._crit_edge2646.split
  %i.nc = zext nneg i32 %.017883465 to i64        ; 2 uses
  %i.nd = sext i32 %i.bm to i64                   ; 2 uses
  %i.ne = zext nneg i32 %.01789 to i64
  br label %.lr.ph2654

.loopexit2619:                                    ; preds = %.lr.ph2650.split, %.lr.ph2650.split.us, %.lr.ph2654
  %i.nf = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.ng = sext i32 %i.nf to i64
  %.not1915.not = icmp slt i64 %indvars.iv3053, %i.ng
  br i1 %.not1915.not, label %.lr.ph2654, label %._crit_edge2655, !llvm.loop !30

.lr.ph2654:                                       ; preds = %.lr.ph2654.preheader, %.loopexit2619
  %indvars.iv3053 = phi i64 [ 1, %.lr.ph2654.preheader ], [ %indvars.iv.next3054, %.loopexit2619 ] ; 9 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3053
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !8  ; 3 uses
  %indvars.iv.next3054 = add nuw nsw i64 %indvars.iv3053, 1
  %i.nj = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3053
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !8
  store i32 %.01789, ptr %i.ap, align 4, !tbaa !8
  %.not19832647 = icmp samesign ugt i64 %indvars.iv3053, %i.ne
  br i1 %.not19832647, label %.loopexit2619, label %.lr.ph2650

.lr.ph2650:                                       ; preds = %.lr.ph2654
  %i.nl = sub nsw i32 %i.nk, %i.ni                ; 2 uses
  br i1 %i.ct, label %.lr.ph2650.split.us.preheader, label %.lr.ph2650.split.preheader

.lr.ph2650.split.preheader:                       ; preds = %.lr.ph2650
  %i.nm = add nuw nsw i64 %indvars.iv3053, %i.nc
  %i.nn = mul nsw i64 %i.nm, %i.nd
  %invariant.gep3515.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.nn
  br label %.lr.ph2650.split

.lr.ph2650.split.us.preheader:                    ; preds = %.lr.ph2650
  %invariant.gep3517.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3053
  br label %.lr.ph2650.split.us

.lr.ph2650.split.us:                              ; preds = %.lr.ph2650.split.us.preheader, %.lr.ph2650.split.us
  %indvars.iv3058 = phi i64 [ %indvars.iv3053, %.lr.ph2650.split.us.preheader ], [ %indvars.iv.next3059, %.lr.ph2650.split.us ] ; 5 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3058
  %i.np = load i32, ptr %i.no, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next3059 = add nuw nsw i64 %indvars.iv3058, 1
  %i.nq = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3058
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !8
  store i32 %i.nl, ptr %i.aq, align 4, !tbaa !8
  %i.ns = sub nsw i32 %i.nr, %i.np
  store i32 %i.ns, ptr %i.ar, align 4, !tbaa !8
  %i.nt = mul nsw i32 %i.np, %i.bc
  %i.nu = add nsw i32 %i.nt, %i.ni
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.nv
  %i.nx = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.nw, ptr noundef nonnull %6, ptr noundef %i.dr) #9
  %i.ny = add nuw nsw i64 %indvars.iv3058, %i.nc
  %i.nz = mul nsw i64 %i.ny, %i.nd
  %gep3518.a = getelementptr [8 x i8], ptr %invariant.gep3517.a, i64 %i.nz
  store double %i.nx, ptr %gep3518.a, align 8, !tbaa !9
  %i.oa = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ob = sext i32 %i.oa to i64
  %.not1983.us.not = icmp slt i64 %indvars.iv3058, %i.ob
  br i1 %.not1983.us.not, label %.lr.ph2650.split.us, label %.loopexit2619, !llvm.loop !31

.lr.ph2650.split:                                 ; preds = %.lr.ph2650.split.preheader, %.lr.ph2650.split
  %indvars.iv3055 = phi i64 [ %indvars.iv3053, %.lr.ph2650.split.preheader ], [ %indvars.iv.next3056, %.lr.ph2650.split ] ; 5 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3055
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next3056 = add nuw nsw i64 %indvars.iv3055, 1
  %i.oe = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3055
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !8
  store i32 %i.nl, ptr %i.aq, align 4, !tbaa !8
  %i.og = sub nsw i32 %i.of, %i.od
  store i32 %i.og, ptr %i.ar, align 4, !tbaa !8
  %i.oh = mul nsw i32 %i.od, %i.bc
  %i.oi = add nsw i32 %i.oh, %i.ni
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.oj
  %i.ol = call double @dlange_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.ok, ptr noundef nonnull %6, ptr noundef %i.dr) #9
  %gep3516.a = getelementptr [8 x i8], ptr %invariant.gep3515.a, i64 %indvars.iv3055
  store double %i.ol, ptr %gep3516.a, align 8, !tbaa !9
  %i.om = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.on = sext i32 %i.om to i64
  %.not1983.not = icmp slt i64 %indvars.iv3055, %i.on
  br i1 %.not1983.not, label %.lr.ph2650.split, label %.loopexit2619, !llvm.loop !31

._crit_edge2655:                                  ; preds = %.loopexit2619, %._crit_edge2646.split
  %i.oo = add nuw nsw i32 %.017883465, %.01789    ; 2 uses
  store i32 %.017883465, ptr %i.ao, align 4, !tbaa !8
  br i1 %.not191426423467, label %._crit_edge2666, label %.lr.ph2665

.lr.ph2665:                                       ; preds = %._crit_edge2655.thread, %._crit_edge2655
  %i.op = phi i32 [ %i.mm, %._crit_edge2655.thread ], [ %i.oo, %._crit_edge2655 ] ; 2 uses
  %.01788346534723479 = phi i32 [ %.017883464, %._crit_edge2655.thread ], [ %.017883465, %._crit_edge2655 ] ; 3 uses
  %.not1915265134733477 = phi i1 [ true, %._crit_edge2655.thread ], [ %.not19152651, %._crit_edge2655 ]
  %i.oq = zext nneg i32 %i.op to i64              ; 2 uses
  %i.or = sext i32 %i.bm to i64                   ; 2 uses
  %i.os = zext nneg i32 %.01788346534723479 to i64
  %invariant.gep3527.a = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %invariant.gep3519 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %invariant.gep3523.a = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph2665, %._crit_edge2660
  %indvars.iv3062 = phi i64 [ 1, %.lr.ph2665 ], [ %indvars.iv.next3063, %._crit_edge2660 ] ; 8 uses
  %gep3528.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3527.a, i64 %indvars.iv3062 ; 2 uses
  %i.ot = load i32, ptr %gep3528.a, align 4, !tbaa !8 ; 3 uses
  %i.ou = getelementptr i8, ptr %gep3528.a, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !8
  store i32 %.01788346534723479, ptr %i.ap, align 4, !tbaa !8
  %.not19812656 = icmp samesign ugt i64 %indvars.iv3062, %i.os
  br i1 %.not19812656, label %._crit_edge2660, label %.lr.ph2659

.lr.ph2659:                                       ; preds = %bb.bi
  %i.ow = sub nsw i32 %i.ov, %i.ot                ; 2 uses
  br i1 %.not1899, label %.lr.ph2659.split.us.preheader, label %.lr.ph2659.split.preheader

.lr.ph2659.split.preheader:                       ; preds = %.lr.ph2659
  %invariant.gep3521.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3062
  br label %.lr.ph2659.split

.lr.ph2659.split.us.preheader:                    ; preds = %.lr.ph2659
  %i.ox = add nuw nsw i64 %indvars.iv3062, %i.oq
  %i.oy = mul nsw i64 %i.ox, %i.or
  %invariant.gep3525.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.oy
  br label %.lr.ph2659.split.us

.lr.ph2659.split.us:                              ; preds = %.lr.ph2659.split.us.preheader, %.lr.ph2659.split.us
  %indvars.iv3067 = phi i64 [ %indvars.iv3062, %.lr.ph2659.split.us.preheader ], [ %indvars.iv.next3068, %.lr.ph2659.split.us ] ; 4 uses
  %gep3524.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3523.a, i64 %indvars.iv3067 ; 2 uses
  %i.oz = load i32, ptr %gep3524.a, align 4, !tbaa !8 ; 2 uses
  %i.pa = getelementptr i8, ptr %gep3524.a, i64 4
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !8
  store i32 %i.ow, ptr %i.aq, align 4, !tbaa !8
  %i.pc = sub nsw i32 %i.pb, %i.oz
  store i32 %i.pc, ptr %i.ar, align 4, !tbaa !8
  %i.pd = mul nsw i32 %i.oz, %i.bf
  %i.pe = add nsw i32 %i.pd, %i.ot
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.pf
  %i.ph = call double @dlange_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.pg, ptr noundef nonnull %8, ptr noundef %i.dr) #9
  %gep3526.a = getelementptr [8 x i8], ptr %invariant.gep3525.a, i64 %indvars.iv3067
  store double %i.ph, ptr %gep3526.a, align 8, !tbaa !9
  %indvars.iv.next3068 = add nuw nsw i64 %indvars.iv3067, 1
  %i.pi = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.pj = sext i32 %i.pi to i64
  %.not1981.us.not = icmp slt i64 %indvars.iv3067, %i.pj
  br i1 %.not1981.us.not, label %.lr.ph2659.split.us, label %._crit_edge2660, !llvm.loop !32

.lr.ph2659.split:                                 ; preds = %.lr.ph2659.split.preheader, %.lr.ph2659.split
  %indvars.iv3064 = phi i64 [ %indvars.iv3062, %.lr.ph2659.split.preheader ], [ %indvars.iv.next3065, %.lr.ph2659.split ] ; 4 uses
  %gep3520 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3519, i64 %indvars.iv3064 ; 2 uses
  %i.pk = load i32, ptr %gep3520, align 4, !tbaa !8 ; 2 uses
  %i.pl = getelementptr i8, ptr %gep3520, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !8
  store i32 %i.ow, ptr %i.aq, align 4, !tbaa !8
  %i.pn = sub nsw i32 %i.pm, %i.pk
  store i32 %i.pn, ptr %i.ar, align 4, !tbaa !8
  %i.po = mul nsw i32 %i.pk, %i.bf
  %i.pp = add nsw i32 %i.po, %i.ot
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.pq
  %i.ps = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.pr, ptr noundef nonnull %8, ptr noundef %i.dr) #9
  %i.pt = add nuw nsw i64 %indvars.iv3064, %i.oq
  %i.pu = mul nsw i64 %i.pt, %i.or
  %gep3522.a = getelementptr [8 x i8], ptr %invariant.gep3521.a, i64 %i.pu
  store double %i.ps, ptr %gep3522.a, align 8, !tbaa !9
  %indvars.iv.next3065 = add nuw nsw i64 %indvars.iv3064, 1
  %i.pv = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.pw = sext i32 %i.pv to i64
  %.not1981.not = icmp slt i64 %indvars.iv3064, %i.pw
  br i1 %.not1981.not, label %.lr.ph2659.split, label %._crit_edge2660, !llvm.loop !32

._crit_edge2660:                                  ; preds = %.lr.ph2659.split, %.lr.ph2659.split.us, %bb.bi
  %indvars.iv.next3063 = add nuw nsw i64 %indvars.iv3062, 1
  %i.px = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.py = sext i32 %i.px to i64
  %.not1916.not = icmp slt i64 %indvars.iv3062, %i.py
  br i1 %.not1916.not, label %bb.bi, label %._crit_edge2666, !llvm.loop !33

._crit_edge2666:                                  ; preds = %._crit_edge2660, %._crit_edge2655
  %i.pz = phi i32 [ %i.oo, %._crit_edge2655 ], [ %i.op, %._crit_edge2660 ] ; 6 uses
  %.not19142642346734713482 = phi i1 [ true, %._crit_edge2655 ], [ false, %._crit_edge2660 ] ; 4 uses
  %.01788346534723480 = phi i32 [ %.017883465, %._crit_edge2655 ], [ %.01788346534723479, %._crit_edge2660 ] ; 33 uses
  %.not1915265134733478 = phi i1 [ %.not19152651, %._crit_edge2655 ], [ %.not1915265134733477, %._crit_edge2660 ] ; 4 uses
  %i.qa = load i32, ptr %2, align 4, !tbaa !8
  %i.qb = sitofp i32 %i.qa to double              ; 4 uses
  %i.qc = icmp ne i32 %i.bq, 0                    ; 4 uses
  %or.cond = select i1 %i.ct, i1 %i.qc, i1 false
  br i1 %or.cond, label %.preheader, label %bb.ck

.preheader:                                       ; preds = %._crit_edge2666
  %i.qd = icmp sgt i32 %.01789, 0
  br i1 %i.qd, label %.lr.ph2946, label %.loopexit2594

.lr.ph2946:                                       ; preds = %.preheader
  %i.qe = add i32 %i.bf, 1
  %i.qf = fneg double %i.qb
  %i.qg = sext i32 %i.bm to i64                   ; 7 uses
  %i.qh = add nuw nsw i32 %.01788346534723480, 1  ; 3 uses
  %i.qi = sext i32 %i.bi to i64                   ; 4 uses
  %i.qj = zext nneg i32 %.01789 to i64
  %i.qk = zext nneg i32 %i.pz to i64
  %i.ql = zext nneg i32 %.01788346534723480 to i64 ; 2 uses
  %invariant.gep3637.a = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3247 = zext nneg i32 %i.qh to i64
  %wide.trip.count3242 = zext nneg i32 %.pre-phi.a to i64
  %wide.trip.count3257 = zext nneg i32 %i.qh to i64
  %wide.trip.count3252 = zext nneg i32 %.pre-phi.a to i64
  %invariant.gep3631.a = getelementptr [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3278 = zext nneg i32 %i.qh to i64
  %wide.trip.count3273 = zext nneg i32 %.pre-phi.a to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph2946, %._crit_edge2942
  %indvars.iv3265 = phi i64 [ %i.qj, %.lr.ph2946 ], [ %indvars.iv.next3266, %._crit_edge2942 ] ; 8 uses
  %.02945 = phi double [ 1.000000e+00, %.lr.ph2946 ], [ %.1.lcssa, %._crit_edge2942 ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3265 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !8  ; 6 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !8
  store i32 %.01788346534723480, ptr %i.ao, align 4, !tbaa !8
  br i1 %.not19142642346734713482, label %._crit_edge2942, label %.lr.ph2941

.lr.ph2941:                                       ; preds = %bb.bj
  %i.qq = sub nsw i32 %i.qp, %i.qn                ; 8 uses
  %i.qr = mul nsw i32 %i.qn, %i.bc                ; 2 uses
  %i.qs = add nsw i32 %i.qr, %i.qn
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.qt
  %i.qv = icmp samesign ugt i64 %indvars.iv3265, 1
  %i.qw = add nuw nsw i64 %indvars.iv3265, %i.ql
  %i.qx = mul nsw i64 %i.qw, %i.qg
  %i.qy = sext i32 %i.qn to i64                   ; 3 uses
  %invariant.gep3639.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3265
  %invariant.gep3623 = getelementptr [8 x i8], ptr %i.bo, i64 %i.qx
  %invariant.gep3617.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.qy
  %invariant.gep3633.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3265
  %invariant.gep3627.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.qy
  %invariant.gep3629 = getelementptr [8 x i8], ptr %i.bk, i64 %i.qy
  br label %bb.bk

.loopexit2592:                                    ; preds = %.loopexit2588, %._crit_edge2911
  %.6.lcssa = phi double [ %.4.lcssa, %._crit_edge2911 ], [ %.7, %.loopexit2588 ] ; 2 uses
  %i.qz = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.ra = sext i32 %i.qz to i64
  %.not1968.not = icmp slt i64 %indvars.iv3291, %i.ra
  %indvars.iv.next3287 = add nuw i32 %indvars.iv3286, 1
  br i1 %.not1968.not, label %bb.bk, label %._crit_edge2942, !llvm.loop !34

bb.bk:                                            ; preds = %.lr.ph2941, %.loopexit2592
  %indvars.iv3291 = phi i64 [ 1, %.lr.ph2941 ], [ %indvars.iv.next3292, %.loopexit2592 ] ; 6 uses
  %indvars.iv3286 = phi i32 [ 2, %.lr.ph2941 ], [ %indvars.iv.next3287, %.loopexit2592 ] ; 2 uses
  %.12939 = phi double [ %.02945, %.lr.ph2941 ], [ %.6.lcssa, %.loopexit2592 ] ; 2 uses
  %i.rb = sext i32 %indvars.iv3286 to i64
  %gep3638.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3637.a, i64 %indvars.iv3291 ; 2 uses
  %i.rc = load i32, ptr %gep3638.a, align 4, !tbaa !8 ; 9 uses
  %i.rd = getelementptr i8, ptr %gep3638.a, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !8  ; 6 uses
  store i32 %i.qq, ptr %i.ap, align 4, !tbaa !8
  %i.rf = sub nsw i32 %i.re, %i.rc                ; 5 uses
  store i32 %i.rf, ptr %i.aq, align 4, !tbaa !8
  %i.rg = mul i32 %i.rc, %i.qe
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.rh
  %i.rj = mul nsw i32 %i.rc, %i.bi                ; 2 uses
  %i.rk = add nsw i32 %i.rj, %i.qn
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.rl ; 4 uses
  call void @dtrsyl_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef %i.qu, ptr noundef nonnull %6, ptr noundef %i.ri, ptr noundef nonnull %8, ptr noundef %i.rm, ptr noundef nonnull %10, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #9
  %i.rn = load i32, ptr %16, align 4, !tbaa !8
  %i.ro = load i32, ptr %i.ba, align 4, !tbaa !8
  %.1996 = call i32 @llvm.smax.i32(i32 %i.rn, i32 %i.ro)
  store i32 %.1996, ptr %16, align 4, !tbaa !8
  %i.rp = load double, ptr %i.bb, align 8, !tbaa !9 ; 5 uses
  %i.rq = mul nsw i64 %indvars.iv3291, %i.qg      ; 2 uses
  %gep3640.a = getelementptr [8 x i8], ptr %invariant.gep3639.a, i64 %i.rq ; 9 uses
  %i.rr = load double, ptr %gep3640.a, align 8, !tbaa !9
  %i.rs = fmul double %i.rp, %i.rr                ; 2 uses
  %i.rt = fcmp oeq double %i.rs, 0.000000e+00
  br i1 %i.rt, label %bb.bl, label %.loopexit2593

bb.bl:                                            ; preds = %bb.bk
  %i.ru = fcmp oeq double %i.rp, 0.000000e+00
  br i1 %i.ru, label %.lr.ph2886.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #9
  %i.rv = call double @frexp(double noundef %i.rp, ptr noundef nonnull %i.an) #9 ; 0 uses
  %i.rw = load i32, ptr %i.an, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #9
  %.not.i = icmp eq i32 %i.rw, 0
  br i1 %.not.i, label %dpow_ui.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rx = icmp slt i32 %i.rw, 0
  %spec.select.i = select i1 %i.rx, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i = call i32 @llvm.abs.i32(i32 %i.rw, i1 true)
  %i.ry = zext nneg i32 %spec.select19.i to i64   ; 2 uses
  %i.rz = and i64 %i.ry, 1
  %.not1721.i = icmp eq i64 %i.rz, 0
  %spec.select2022.i = select i1 %.not1721.i, double 1.000000e+00, double %spec.select.i ; 2 uses
  %i.sa = lshr i64 %i.ry, 1                       ; 2 uses
  %.not1823.i = icmp eq i64 %i.sa, 0
  br i1 %.not1823.i, label %dpow_ui.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bn, %.lr.ph.i
  %i.sb = phi i64 [ %i.sf, %.lr.ph.i ], [ %i.sa, %bb.bn ] ; 2 uses
  %spec.select2025.i = phi double [ %spec.select20.i, %.lr.ph.i ], [ %spec.select2022.i, %bb.bn ] ; 2 uses
  %.11424.i = phi double [ %i.sc, %.lr.ph.i ], [ %spec.select.i, %bb.bn ] ; 2 uses
  %i.sc = fmul double %.11424.i, %.11424.i        ; 2 uses
  %i.sd = and i64 %i.sb, 1
  %.not17.i = icmp eq i64 %i.sd, 0
  %i.se = fmul double %spec.select2025.i, %i.sc
  %spec.select20.i = select i1 %.not17.i, double %spec.select2025.i, double %i.se ; 2 uses
  %i.sf = lshr i64 %i.sb, 1                       ; 2 uses
  %.not18.i = icmp eq i64 %i.sf, 0
  br i1 %.not18.i, label %dpow_ui.exit, label %.lr.ph.i

dpow_ui.exit:                                     ; preds = %.lr.ph.i, %bb.bm, %bb.bn
  %.2.i = phi double [ 1.000000e+00, %bb.bm ], [ %spec.select2022.i, %bb.bn ], [ %spec.select20.i, %.lr.ph.i ]
  %i.sg = fmul double %.12939, %.2.i
  br label %.lr.ph2886.split

.lr.ph2886.split:                                 ; preds = %bb.bl, %dpow_ui.exit
  %.2 = phi double [ %i.sg, %dpow_ui.exit ], [ 0.000000e+00, %bb.bl ]
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2880

.lr.ph2880:                                       ; preds = %.lr.ph2886.split, %._crit_edge2881
  %indvars.iv3244 = phi i64 [ 1, %.lr.ph2886.split ], [ %indvars.iv.next3245, %._crit_edge2881 ] ; 2 uses
  %i.sh = mul nsw i64 %indvars.iv3244, %i.qg
  %invariant.gep3613.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.sh
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2880, %dpow_ui.exit2052
  %indvars.iv3239 = phi i64 [ 1, %.lr.ph2880 ], [ %indvars.iv.next3240, %dpow_ui.exit2052 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #9
  %i.si = call double @frexp(double noundef %i.rp, ptr noundef nonnull %i.am) #9 ; 0 uses
  %i.sj = load i32, ptr %i.am, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #9
  %gep3614.a = getelementptr [8 x i8], ptr %invariant.gep3613.a, i64 %indvars.iv3239 ; 2 uses
  %i.sk = load double, ptr %gep3614.a, align 8, !tbaa !9
  %.not.i2039 = icmp eq i32 %i.sj, 0
  br i1 %.not.i2039, label %dpow_ui.exit2052, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sl = icmp slt i32 %i.sj, 0
  %spec.select.i2040 = select i1 %i.sl, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2041 = call i32 @llvm.abs.i32(i32 %i.sj, i1 true)
  %i.sm = zext nneg i32 %spec.select19.i2041 to i64 ; 2 uses
  %i.sn = and i64 %i.sm, 1
  %.not1721.i2042 = icmp eq i64 %i.sn, 0
  %spec.select2022.i2043 = select i1 %.not1721.i2042, double 1.000000e+00, double %spec.select.i2040 ; 2 uses
  %i.so = lshr i64 %i.sm, 1                       ; 2 uses
  %.not1823.i2044 = icmp eq i64 %i.so, 0
  br i1 %.not1823.i2044, label %dpow_ui.exit2052, label %.lr.ph.i2045

.lr.ph.i2045:                                     ; preds = %bb.bp, %.lr.ph.i2045
  %i.sp = phi i64 [ %i.st, %.lr.ph.i2045 ], [ %i.so, %bb.bp ] ; 2 uses
  %spec.select2025.i2046 = phi double [ %spec.select20.i2049, %.lr.ph.i2045 ], [ %spec.select2022.i2043, %bb.bp ] ; 2 uses
  %.11424.i2047 = phi double [ %i.sq, %.lr.ph.i2045 ], [ %spec.select.i2040, %bb.bp ] ; 2 uses
  %i.sq = fmul double %.11424.i2047, %.11424.i2047 ; 2 uses
  %i.sr = and i64 %i.sp, 1
  %.not17.i2048 = icmp eq i64 %i.sr, 0
  %i.ss = fmul double %spec.select2025.i2046, %i.sq
  %spec.select20.i2049 = select i1 %.not17.i2048, double %spec.select2025.i2046, double %i.ss ; 2 uses
  %i.st = lshr i64 %i.sp, 1                       ; 2 uses
  %.not18.i2050 = icmp eq i64 %i.st, 0
  br i1 %.not18.i2050, label %dpow_ui.exit2052, label %.lr.ph.i2045

dpow_ui.exit2052:                                 ; preds = %.lr.ph.i2045, %bb.bo, %bb.bp
  %.2.i2051 = phi double [ 1.000000e+00, %bb.bo ], [ %spec.select2022.i2043, %bb.bp ], [ %spec.select20.i2049, %.lr.ph.i2045 ]
  %i.su = fdiv double %i.sk, %.2.i2051            ; 2 uses
  %i.sv = fcmp ole double %i.ic, %i.su
  %i.sw = select i1 %i.sv, double %i.ic, double %i.su
  store double %i.sw, ptr %gep3614.a, align 8, !tbaa !9
  %indvars.iv.next3240 = add nuw nsw i64 %indvars.iv3239, 1 ; 2 uses
  %exitcond3243.not = icmp eq i64 %indvars.iv.next3240, %wide.trip.count3242
  br i1 %exitcond3243.not, label %._crit_edge2881, label %bb.bo, !llvm.loop !35

._crit_edge2881:                                  ; preds = %dpow_ui.exit2052
  %indvars.iv.next3245 = add nuw nsw i64 %indvars.iv3244, 1 ; 2 uses
  %exitcond3248.not = icmp eq i64 %indvars.iv.next3245, %wide.trip.count3247
  br i1 %exitcond3248.not, label %..loopexit2593_crit_edge, label %.lr.ph2880, !llvm.loop !36

..loopexit2593_crit_edge:                         ; preds = %._crit_edge2881
  store i32 %i.sj, ptr %i.ar, align 4, !tbaa !8
  %.pre3341.a = load double, ptr %gep3640.a, align 8, !tbaa !9
  %.pre3349 = fmul double %i.rp, %.pre3341.a
  br label %.loopexit2593

.loopexit2593:                                    ; preds = %..loopexit2593_crit_edge, %bb.bk
  %.pre-phi3350 = phi double [ %.pre3349, %..loopexit2593_crit_edge ], [ %i.rs, %bb.bk ]
  %.3 = phi double [ %.2, %..loopexit2593_crit_edge ], [ %.12939, %bb.bk ] ; 2 uses
  store double %.pre-phi3350, ptr %gep3640.a, align 8, !tbaa !9
  store i32 %i.qq, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.rf, ptr %i.aq, align 4, !tbaa !8
  %i.sx = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef %i.rm, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  store double %i.sx, ptr %i.az, align 8, !tbaa !9
  br i1 %i.qv, label %.lr.ph2910, label %._crit_edge2911

.lr.ph2910:                                       ; preds = %.loopexit2593
  %i.sy = add nsw i32 %i.re, -1                   ; 2 uses
  %i.sz = sext i32 %i.rc to i64                   ; 2 uses
  %invariant.gep3621 = getelementptr [8 x i8], ptr %i.bo, i64 %i.rq
  %.not19772897.not = icmp slt i32 %i.rc, %i.re
  %.not19782901.not = icmp slt i32 %i.rc, %i.re
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph2910, %.loopexit2590
  %indvars.iv3267.a = phi i64 [ %indvars.iv3265, %.lr.ph2910 ], [ %indvars.iv.next3268.a, %.loopexit2590 ] ; 3 uses
  %.42907 = phi double [ %.3, %.lr.ph2910 ], [ %.5, %.loopexit2590 ] ; 2 uses
  %indvars.iv.next3268.a = add nsw i64 %indvars.iv3267.a, -1 ; 4 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next3268.a
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !8  ; 4 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3267.a
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !8
  %i.te = sub nsw i32 %i.td, %i.tb                ; 3 uses
  store i32 %i.te, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.rf, ptr %i.aq, align 4, !tbaa !8
  %i.tf = add nsw i32 %i.tb, %i.rj
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.tg ; 2 uses
  %i.ti = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef %i.th, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  %gep3622.a = getelementptr [8 x i8], ptr %invariant.gep3621, i64 %indvars.iv.next3268.a ; 3 uses
  %i.tj = load double, ptr %gep3622.a, align 8, !tbaa !9 ; 4 uses
  store double %i.tj, ptr %i.au, align 8, !tbaa !9
  %i.tk = load double, ptr %gep3640.a, align 8, !tbaa !9 ; 3 uses
  %i.tl = fcmp ole double %i.tj, %i.tk
  %i.tm = select i1 %i.tl, double %i.tj, double %i.tk ; 4 uses
  %i.tn = load double, ptr %i.az, align 8, !tbaa !9
  %i.to = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.tp = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tq = insertelement <2 x double> poison, double %i.tj, i64 0
  %i.tr = insertelement <2 x double> %i.tq, double %i.tk, i64 1
  %i.ts = fdiv <2 x double> %i.tp, %i.tr
  %i.tt = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.tu = insertelement <2 x double> %i.tt, double %i.tn, i64 1
  %i.tv = fmul <2 x double> %i.tu, %i.ts          ; 2 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 0
  store double %i.tw, ptr %i.ay, align 8, !tbaa !9
  %i.tx = extractelement <2 x double> %i.tv, i64 1
  store double %i.tx, ptr %i.az, align 8, !tbaa !9
  %gep3624.a = getelementptr [8 x i8], ptr %invariant.gep3623, i64 %indvars.iv.next3268.a
  %i.ty = load double, ptr %gep3624.a, align 8, !tbaa !9
  store double %i.ty, ptr %i.aw, align 8, !tbaa !9
  %i.tz = call double @dlarmm_(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ay) #9 ; 8 uses
  store double %i.tz, ptr %i.bb, align 8, !tbaa !9
  %i.ua = fmul double %i.tm, %i.tz
  %i.ub = fcmp oeq double %i.ua, 0.000000e+00
  br i1 %i.ub, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #9
  %i.uc = call double @frexp(double noundef %i.tz, ptr noundef nonnull %i.al) #9 ; 0 uses
  %i.ud = load i32, ptr %i.al, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #9
  %.not.i2053 = icmp eq i32 %i.ud, 0
  br i1 %.not.i2053, label %.lr.ph2895.split, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ue = icmp slt i32 %i.ud, 0
  %spec.select.i2054 = select i1 %i.ue, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2055 = call i32 @llvm.abs.i32(i32 %i.ud, i1 true)
  %i.uf = zext nneg i32 %spec.select19.i2055 to i64 ; 2 uses
  %i.ug = and i64 %i.uf, 1
  %.not1721.i2056 = icmp eq i64 %i.ug, 0
  %spec.select2022.i2057 = select i1 %.not1721.i2056, double 1.000000e+00, double %spec.select.i2054 ; 2 uses
  %i.uh = lshr i64 %i.uf, 1                       ; 2 uses
  %.not1823.i2058 = icmp eq i64 %i.uh, 0
  br i1 %.not1823.i2058, label %.lr.ph2895.split, label %.lr.ph.i2059

.lr.ph.i2059:                                     ; preds = %bb.bs, %.lr.ph.i2059
  %i.ui = phi i64 [ %i.um, %.lr.ph.i2059 ], [ %i.uh, %bb.bs ] ; 2 uses
  %spec.select2025.i2060 = phi double [ %spec.select20.i2063, %.lr.ph.i2059 ], [ %spec.select2022.i2057, %bb.bs ] ; 2 uses
  %.11424.i2061 = phi double [ %i.uj, %.lr.ph.i2059 ], [ %spec.select.i2054, %bb.bs ] ; 2 uses
  %i.uj = fmul double %.11424.i2061, %.11424.i2061 ; 2 uses
  %i.uk = and i64 %i.ui, 1
  %.not17.i2062 = icmp eq i64 %i.uk, 0
  %i.ul = fmul double %spec.select2025.i2060, %i.uj
  %spec.select20.i2063 = select i1 %.not17.i2062, double %spec.select2025.i2060, double %i.ul ; 2 uses
  %i.um = lshr i64 %i.ui, 1                       ; 2 uses
  %.not18.i2064 = icmp eq i64 %i.um, 0
  br i1 %.not18.i2064, label %.lr.ph2895.split, label %.lr.ph.i2059

.lr.ph2895.split:                                 ; preds = %.lr.ph.i2059, %bb.br, %bb.bs
  %.2.i2065 = phi double [ 1.000000e+00, %bb.br ], [ %spec.select2022.i2057, %bb.bs ], [ %spec.select20.i2063, %.lr.ph.i2059 ]
  %i.un = fmul double %.42907, %.2.i2065
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  store i32 %.01789, ptr %i.aq, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2890

.lr.ph2890:                                       ; preds = %.lr.ph2895.split, %._crit_edge2891
  %indvars.iv3254.a = phi i64 [ 1, %.lr.ph2895.split ], [ %indvars.iv.next3255.a, %._crit_edge2891 ] ; 2 uses
  %i.uo = mul nsw i64 %indvars.iv3254.a, %i.qg
  %invariant.gep3615 = getelementptr [8 x i8], ptr %i.bo, i64 %i.uo
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph2890, %dpow_ui.exit2080
  %indvars.iv3249 = phi i64 [ 1, %.lr.ph2890 ], [ %indvars.iv.next3250, %dpow_ui.exit2080 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #9
  %i.up = call double @frexp(double noundef %i.tz, ptr noundef nonnull %i.ak) #9 ; 0 uses
  %i.uq = load i32, ptr %i.ak, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #9
  %gep3616 = getelementptr [8 x i8], ptr %invariant.gep3615, i64 %indvars.iv3249 ; 2 uses
  %i.ur = load double, ptr %gep3616, align 8, !tbaa !9
  %.not.i2067 = icmp eq i32 %i.uq, 0
  br i1 %.not.i2067, label %dpow_ui.exit2080, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.us = icmp slt i32 %i.uq, 0
  %spec.select.i2068 = select i1 %i.us, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2069 = call i32 @llvm.abs.i32(i32 %i.uq, i1 true)
  %i.ut = zext nneg i32 %spec.select19.i2069 to i64 ; 2 uses
  %i.uu = and i64 %i.ut, 1
  %.not1721.i2070 = icmp eq i64 %i.uu, 0
  %spec.select2022.i2071 = select i1 %.not1721.i2070, double 1.000000e+00, double %spec.select.i2068 ; 2 uses
  %i.uv = lshr i64 %i.ut, 1                       ; 2 uses
  %.not1823.i2072 = icmp eq i64 %i.uv, 0
  br i1 %.not1823.i2072, label %dpow_ui.exit2080, label %.lr.ph.i2073

.lr.ph.i2073:                                     ; preds = %bb.bu, %.lr.ph.i2073
  %i.uw = phi i64 [ %i.va, %.lr.ph.i2073 ], [ %i.uv, %bb.bu ] ; 2 uses
  %spec.select2025.i2074 = phi double [ %spec.select20.i2077, %.lr.ph.i2073 ], [ %spec.select2022.i2071, %bb.bu ] ; 2 uses
  %.11424.i2075 = phi double [ %i.ux, %.lr.ph.i2073 ], [ %spec.select.i2068, %bb.bu ] ; 2 uses
  %i.ux = fmul double %.11424.i2075, %.11424.i2075 ; 2 uses
  %i.uy = and i64 %i.uw, 1
  %.not17.i2076 = icmp eq i64 %i.uy, 0
  %i.uz = fmul double %spec.select2025.i2074, %i.ux
  %spec.select20.i2077 = select i1 %.not17.i2076, double %spec.select2025.i2074, double %i.uz ; 2 uses
  %i.va = lshr i64 %i.uw, 1                       ; 2 uses
  %.not18.i2078 = icmp eq i64 %i.va, 0
  br i1 %.not18.i2078, label %dpow_ui.exit2080, label %.lr.ph.i2073

dpow_ui.exit2080:                                 ; preds = %.lr.ph.i2073, %bb.bt, %bb.bu
  %.2.i2079 = phi double [ 1.000000e+00, %bb.bt ], [ %spec.select2022.i2071, %bb.bu ], [ %spec.select20.i2077, %.lr.ph.i2073 ]
  %i.vb = fdiv double %i.ur, %.2.i2079            ; 2 uses
  %i.vc = fcmp ole double %i.ic, %i.vb
  %i.vd = select i1 %i.vc, double %i.ic, double %i.vb
  store double %i.vd, ptr %gep3616, align 8, !tbaa !9
  %indvars.iv.next3250 = add nuw nsw i64 %indvars.iv3249, 1 ; 2 uses
  %exitcond3253.not = icmp eq i64 %indvars.iv.next3250, %wide.trip.count3252
  br i1 %exitcond3253.not, label %._crit_edge2891, label %bb.bt, !llvm.loop !37

._crit_edge2891:                                  ; preds = %dpow_ui.exit2080
  %indvars.iv.next3255.a = add nuw nsw i64 %indvars.iv3254.a, 1 ; 2 uses
  %exitcond3258.not = icmp eq i64 %indvars.iv.next3255.a, %wide.trip.count3257
  br i1 %exitcond3258.not, label %._crit_edge2896.split, label %.lr.ph2890, !llvm.loop !38

._crit_edge2896.split:                            ; preds = %._crit_edge2891
  store i32 %i.uq, ptr %i.ar, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #9
  %i.ve = call double @frexp(double noundef %i.tz, ptr noundef nonnull %i.aj) #9 ; 0 uses
  %i.vf = load i32, ptr %i.aj, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #9
  %.not.i2081 = icmp eq i32 %i.vf, 0
  br i1 %.not.i2081, label %dpow_ui.exit2094, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge2896.split
  %i.vg = icmp slt i32 %i.vf, 0
  %spec.select.i2082 = select i1 %i.vg, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2083 = call i32 @llvm.abs.i32(i32 %i.vf, i1 true)
  %i.vh = zext nneg i32 %spec.select19.i2083 to i64 ; 2 uses
  %i.vi = and i64 %i.vh, 1
  %.not1721.i2084 = icmp eq i64 %i.vi, 0
  %spec.select2022.i2085 = select i1 %.not1721.i2084, double 1.000000e+00, double %spec.select.i2082 ; 2 uses
  %i.vj = lshr i64 %i.vh, 1                       ; 2 uses
  %.not1823.i2086 = icmp eq i64 %i.vj, 0
  br i1 %.not1823.i2086, label %dpow_ui.exit2094, label %.lr.ph.i2087

.lr.ph.i2087:                                     ; preds = %bb.bv, %.lr.ph.i2087
  %i.vk = phi i64 [ %i.vo, %.lr.ph.i2087 ], [ %i.vj, %bb.bv ] ; 2 uses
  %spec.select2025.i2088 = phi double [ %spec.select20.i2091, %.lr.ph.i2087 ], [ %spec.select2022.i2085, %bb.bv ] ; 2 uses
  %.11424.i2089 = phi double [ %i.vl, %.lr.ph.i2087 ], [ %spec.select.i2082, %bb.bv ] ; 2 uses
  %i.vl = fmul double %.11424.i2089, %.11424.i2089 ; 2 uses
  %i.vm = and i64 %i.vk, 1
  %.not17.i2090 = icmp eq i64 %i.vm, 0
  %i.vn = fmul double %spec.select2025.i2088, %i.vl
  %spec.select20.i2091 = select i1 %.not17.i2090, double %spec.select2025.i2088, double %i.vn ; 2 uses
  %i.vo = lshr i64 %i.vk, 1                       ; 2 uses
  %.not18.i2092 = icmp eq i64 %i.vo, 0
  br i1 %.not18.i2092, label %dpow_ui.exit2094, label %.lr.ph.i2087

dpow_ui.exit2094:                                 ; preds = %.lr.ph.i2087, %._crit_edge2896.split, %bb.bv
  %.2.i2093 = phi double [ 1.000000e+00, %._crit_edge2896.split ], [ %spec.select2022.i2085, %bb.bv ], [ %spec.select20.i2091, %.lr.ph.i2087 ]
  %i.vp = fdiv double %i.tm, %.2.i2093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #9
  %i.vq = call double @frexp(double noundef %i.tz, ptr noundef nonnull %i.ai) #9 ; 0 uses
  %i.vr = load i32, ptr %i.ai, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #9
  %.not.i2095 = icmp eq i32 %i.vr, 0
  br i1 %.not.i2095, label %dpow_ui.exit2108, label %bb.bw

bb.bw:                                            ; preds = %dpow_ui.exit2094
  %i.vs = icmp slt i32 %i.vr, 0
  %spec.select.i2096 = select i1 %i.vs, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2097 = call i32 @llvm.abs.i32(i32 %i.vr, i1 true)
  %i.vt = zext nneg i32 %spec.select19.i2097 to i64 ; 2 uses
  %i.vu = and i64 %i.vt, 1
  %.not1721.i2098 = icmp eq i64 %i.vu, 0
  %spec.select2022.i2099 = select i1 %.not1721.i2098, double 1.000000e+00, double %spec.select.i2096 ; 2 uses
  %i.vv = lshr i64 %i.vt, 1                       ; 2 uses
  %.not1823.i2100 = icmp eq i64 %i.vv, 0
  br i1 %.not1823.i2100, label %dpow_ui.exit2108, label %.lr.ph.i2101

.lr.ph.i2101:                                     ; preds = %bb.bw, %.lr.ph.i2101
  %i.vw = phi i64 [ %i.wa, %.lr.ph.i2101 ], [ %i.vv, %bb.bw ] ; 2 uses
  %spec.select2025.i2102 = phi double [ %spec.select20.i2105, %.lr.ph.i2101 ], [ %spec.select2022.i2099, %bb.bw ] ; 2 uses
  %.11424.i2103 = phi double [ %i.vx, %.lr.ph.i2101 ], [ %spec.select.i2096, %bb.bw ] ; 2 uses
  %i.vx = fmul double %.11424.i2103, %.11424.i2103 ; 2 uses
  %i.vy = and i64 %i.vw, 1
  %.not17.i2104 = icmp eq i64 %i.vy, 0
  %i.vz = fmul double %spec.select2025.i2102, %i.vx
  %spec.select20.i2105 = select i1 %.not17.i2104, double %spec.select2025.i2102, double %i.vz ; 2 uses
  %i.wa = lshr i64 %i.vw, 1                       ; 2 uses
  %.not18.i2106 = icmp eq i64 %i.wa, 0
  br i1 %.not18.i2106, label %dpow_ui.exit2108, label %.lr.ph.i2101

dpow_ui.exit2108:                                 ; preds = %.lr.ph.i2101, %dpow_ui.exit2094, %bb.bw
  %.2.i2107 = phi double [ 1.000000e+00, %dpow_ui.exit2094 ], [ %spec.select2022.i2099, %bb.bw ], [ %spec.select20.i2105, %.lr.ph.i2101 ]
  %i.wb = fdiv double %i.tz, %.2.i2107            ; 2 uses
  store double %i.wb, ptr %i.bb, align 8, !tbaa !9
  br label %bb.bx

bb.bx:                                            ; preds = %dpow_ui.exit2108, %bb.bq
  %i.wc = phi double [ %i.wb, %dpow_ui.exit2108 ], [ %i.tz, %bb.bq ] ; 5 uses
  %.01790 = phi double [ %i.vp, %dpow_ui.exit2108 ], [ %i.tm, %bb.bq ] ; 3 uses
  %.5 = phi double [ %i.un, %dpow_ui.exit2108 ], [ %.42907, %bb.bq ] ; 2 uses
  %i.wd = load double, ptr %i.ay, align 8, !tbaa !9
  %i.we = fmul double %i.wc, %i.wd
  store double %i.we, ptr %i.ay, align 8, !tbaa !9
  %i.wf = load double, ptr %i.az, align 8, !tbaa !9
  %i.wg = fmul double %i.wc, %i.wf
  store double %i.wg, ptr %i.az, align 8, !tbaa !9
  %i.wh = load double, ptr %gep3640.a, align 8, !tbaa !9
  %i.wi = fdiv double %.01790, %i.wh
  %i.wj = fmul double %i.wc, %i.wi                ; 2 uses
  store double %i.wj, ptr %i.av, align 8, !tbaa !9
  %i.wk = fcmp une double %i.wj, 1.000000e+00
  br i1 %i.wk, label %bb.by, label %.loopexit2591

bb.by:                                            ; preds = %bb.bx
  store i32 %i.sy, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19772897.not, label %.lr.ph2900, label %.loopexit2591

.lr.ph2900:                                       ; preds = %bb.by, %.lr.ph2900
  %indvars.iv3259 = phi i64 [ %indvars.iv.next3260, %.lr.ph2900 ], [ %i.sz, %bb.by ] ; 3 uses
  store i32 %i.qq, ptr %i.aq, align 4, !tbaa !8
  %i.wl = mul nsw i64 %indvars.iv3259, %i.qi
  %gep3618.a = getelementptr [8 x i8], ptr %invariant.gep3617.a, i64 %i.wl
  call void @dscal_(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.av, ptr noundef %gep3618.a, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3260 = add nsw i64 %indvars.iv3259, 1
  %i.wm = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.wn = sext i32 %i.wm to i64
  %.not1977.not = icmp slt i64 %indvars.iv3259, %i.wn
  br i1 %.not1977.not, label %.lr.ph2900, label %.loopexit2591.loopexit, !llvm.loop !39

.loopexit2591.loopexit:                           ; preds = %.lr.ph2900
  %.pre3342 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2591

.loopexit2591:                                    ; preds = %.loopexit2591.loopexit, %bb.by, %bb.bx
  %i.wo = phi double [ %.pre3342, %.loopexit2591.loopexit ], [ %i.wc, %bb.by ], [ %i.wc, %bb.bx ] ; 3 uses
  %i.wp = load double, ptr %gep3622.a, align 8, !tbaa !9
  %i.wq = fdiv double %.01790, %i.wp
  %i.wr = fmul double %i.wq, %i.wo                ; 2 uses
  store double %i.wr, ptr %i.av, align 8, !tbaa !9
  %i.ws = fcmp une double %i.wr, 1.000000e+00
  br i1 %i.ws, label %bb.bz, label %.loopexit2590

bb.bz:                                            ; preds = %.loopexit2591
  store i32 %i.sy, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19782901.not, label %.lr.ph2904.preheader, label %.loopexit2590

.lr.ph2904.preheader:                             ; preds = %bb.bz
  %i.wt = sext i32 %i.tb to i64
  %invariant.gep3619 = getelementptr [8 x i8], ptr %i.bk, i64 %i.wt
  br label %.lr.ph2904

.lr.ph2904:                                       ; preds = %.lr.ph2904.preheader, %.lr.ph2904
  %indvars.iv3262.a = phi i64 [ %i.sz, %.lr.ph2904.preheader ], [ %indvars.iv.next3263.a, %.lr.ph2904 ] ; 3 uses
  store i32 %i.te, ptr %i.aq, align 4, !tbaa !8
  %i.wu = mul nsw i64 %indvars.iv3262.a, %i.qi
  %gep3620.a = getelementptr [8 x i8], ptr %invariant.gep3619, i64 %i.wu
  call void @dscal_(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.av, ptr noundef %gep3620.a, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3263.a = add nsw i64 %indvars.iv3262.a, 1
  %i.wv = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ww = sext i32 %i.wv to i64
  %.not1978.not = icmp slt i64 %indvars.iv3262.a, %i.ww
  br i1 %.not1978.not, label %.lr.ph2904, label %.loopexit2590.loopexit, !llvm.loop !40

.loopexit2590.loopexit:                           ; preds = %.lr.ph2904
  %.pre3343.a = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2590

.loopexit2590:                                    ; preds = %.loopexit2590.loopexit, %bb.bz, %.loopexit2591
  %i.wx = phi double [ %.pre3343.a, %.loopexit2590.loopexit ], [ %i.wo, %bb.bz ], [ %i.wo, %.loopexit2591 ]
  %i.wy = fmul double %.01790, %i.wx              ; 2 uses
  store double %i.wy, ptr %gep3640.a, align 8, !tbaa !9
  store double %i.wy, ptr %gep3622.a, align 8, !tbaa !9
  store i32 %i.te, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.rf, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.qq, ptr %i.ar, align 4, !tbaa !8
  %i.wz = add nsw i32 %i.tb, %i.qr
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.xa
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull @c_b31, ptr noundef %i.xb, ptr noundef nonnull %6, ptr noundef %i.rm, ptr noundef nonnull %10, ptr noundef nonnull @c_b32, ptr noundef %i.th, ptr noundef nonnull %10) #9
  %i.xc = icmp sgt i64 %indvars.iv3267.a, 2
  br i1 %i.xc, label %bb.bq, label %._crit_edge2911, !llvm.loop !41

._crit_edge2911:                                  ; preds = %.loopexit2590, %.loopexit2593
  %.4.lcssa = phi double [ %.3, %.loopexit2593 ], [ %.5, %.loopexit2590 ] ; 2 uses
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  %indvars.iv.next3292 = add nuw nsw i64 %indvars.iv3291, 1
  %.not19712931.not = icmp samesign ult i64 %indvars.iv3291, %i.ql
  br i1 %.not19712931.not, label %.lr.ph2935, label %.loopexit2592

.lr.ph2935:                                       ; preds = %._crit_edge2911
  %i.xd = add nsw i32 %i.re, -1
  %i.xe = sext i32 %i.rc to i64
  %invariant.gep3635.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3291
  %.not19732923.not = icmp slt i32 %i.rc, %i.re
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph2935, %.loopexit2588
  %indvars.iv3288 = phi i64 [ %i.rb, %.lr.ph2935 ], [ %indvars.iv.next3289, %.loopexit2588 ] ; 5 uses
  %.62933 = phi double [ %.4.lcssa, %.lr.ph2935 ], [ %.7, %.loopexit2588 ] ; 2 uses
  %gep3632 = getelementptr [4 x i8], ptr %invariant.gep3631.a, i64 %indvars.iv3288 ; 2 uses
  %i.xf = load i32, ptr %gep3632, align 4, !tbaa !8 ; 5 uses
  %i.xg = getelementptr i8, ptr %gep3632, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !8  ; 3 uses
  store i32 %i.qq, ptr %i.aq, align 4, !tbaa !8
  %i.xi = sub nsw i32 %i.xh, %i.xf                ; 2 uses
  store i32 %i.xi, ptr %i.ar, align 4, !tbaa !8
  %i.xj = mul nsw i32 %i.xf, %i.bi
  %i.xk = add nsw i32 %i.xj, %i.qn
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.xl ; 2 uses
  %i.xn = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.xm, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  %i.xo = mul nsw i64 %indvars.iv3288, %i.qg
  %gep3634.a = getelementptr [8 x i8], ptr %invariant.gep3633.a, i64 %i.xo ; 3 uses
  %i.xp = load double, ptr %gep3634.a, align 8, !tbaa !9 ; 4 uses
  store double %i.xp, ptr %i.au, align 8, !tbaa !9
  %i.xq = load double, ptr %gep3640.a, align 8, !tbaa !9 ; 3 uses
  %i.xr = fcmp ole double %i.xp, %i.xq
  %i.xs = select i1 %i.xr, double %i.xp, double %i.xq ; 4 uses
  %i.xt = load double, ptr %i.az, align 8, !tbaa !9
  %i.xu = insertelement <2 x double> poison, double %i.xs, i64 0
  %i.xv = shufflevector <2 x double> %i.xu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xw = insertelement <2 x double> poison, double %i.xp, i64 0
  %i.xx = insertelement <2 x double> %i.xw, double %i.xq, i64 1
  %i.xy = fdiv <2 x double> %i.xv, %i.xx
  %i.xz = insertelement <2 x double> poison, double %i.xn, i64 0
  %i.ya = insertelement <2 x double> %i.xz, double %i.xt, i64 1
  %i.yb = fmul <2 x double> %i.ya, %i.xy          ; 2 uses
  %i.yc = extractelement <2 x double> %i.yb, i64 0
  store double %i.yc, ptr %i.ay, align 8, !tbaa !9
  %i.yd = extractelement <2 x double> %i.yb, i64 1
  store double %i.yd, ptr %i.az, align 8, !tbaa !9
  %i.ye = add nuw nsw i64 %indvars.iv3288, %i.qk
  %i.yf = mul nsw i64 %i.ye, %i.qg
  %gep3636.a = getelementptr [8 x i8], ptr %invariant.gep3635.a, i64 %i.yf
  %i.yg = load double, ptr %gep3636.a, align 8, !tbaa !9
  store double %i.yg, ptr %i.ax, align 8, !tbaa !9
  %i.yh = call double @dlarmm_(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ay) #9 ; 8 uses
  store double %i.yh, ptr %i.bb, align 8, !tbaa !9
  %i.yi = fmul double %i.xs, %i.yh
  %i.yj = fcmp oeq double %i.yi, 0.000000e+00
  br i1 %i.yj, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #9
  %i.yk = call double @frexp(double noundef %i.yh, ptr noundef nonnull %i.ah) #9 ; 0 uses
  %i.yl = load i32, ptr %i.ah, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #9
  %.not.i2109 = icmp eq i32 %i.yl, 0
  br i1 %.not.i2109, label %.lr.ph2921.split, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ym = icmp slt i32 %i.yl, 0
  %spec.select.i2110 = select i1 %i.ym, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2111 = call i32 @llvm.abs.i32(i32 %i.yl, i1 true)
  %i.yn = zext nneg i32 %spec.select19.i2111 to i64 ; 2 uses
  %i.yo = and i64 %i.yn, 1
  %.not1721.i2112 = icmp eq i64 %i.yo, 0
  %spec.select2022.i2113 = select i1 %.not1721.i2112, double 1.000000e+00, double %spec.select.i2110 ; 2 uses
  %i.yp = lshr i64 %i.yn, 1                       ; 2 uses
  %.not1823.i2114 = icmp eq i64 %i.yp, 0
  br i1 %.not1823.i2114, label %.lr.ph2921.split, label %.lr.ph.i2115

.lr.ph.i2115:                                     ; preds = %bb.cc, %.lr.ph.i2115
  %i.yq = phi i64 [ %i.yu, %.lr.ph.i2115 ], [ %i.yp, %bb.cc ] ; 2 uses
  %spec.select2025.i2116 = phi double [ %spec.select20.i2119, %.lr.ph.i2115 ], [ %spec.select2022.i2113, %bb.cc ] ; 2 uses
  %.11424.i2117 = phi double [ %i.yr, %.lr.ph.i2115 ], [ %spec.select.i2110, %bb.cc ] ; 2 uses
  %i.yr = fmul double %.11424.i2117, %.11424.i2117 ; 2 uses
  %i.ys = and i64 %i.yq, 1
  %.not17.i2118 = icmp eq i64 %i.ys, 0
  %i.yt = fmul double %spec.select2025.i2116, %i.yr
  %spec.select20.i2119 = select i1 %.not17.i2118, double %spec.select2025.i2116, double %i.yt ; 2 uses
  %i.yu = lshr i64 %i.yq, 1                       ; 2 uses
  %.not18.i2120 = icmp eq i64 %i.yu, 0
  br i1 %.not18.i2120, label %.lr.ph2921.split, label %.lr.ph.i2115

.lr.ph2921.split:                                 ; preds = %.lr.ph.i2115, %bb.cb, %bb.cc
  %.2.i2121 = phi double [ 1.000000e+00, %bb.cb ], [ %spec.select2022.i2113, %bb.cc ], [ %spec.select20.i2119, %.lr.ph.i2115 ]
  %i.yv = fmul double %.62933, %.2.i2121
  store i32 %.01788346534723480, ptr %i.aq, align 4, !tbaa !8
  store i32 %.01789, ptr %i.ar, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2916

.lr.ph2916:                                       ; preds = %.lr.ph2921.split, %._crit_edge2917
  %indvars.iv3275.a = phi i64 [ 1, %.lr.ph2921.split ], [ %indvars.iv.next3276.a, %._crit_edge2917 ] ; 2 uses
  %i.yw = mul nsw i64 %indvars.iv3275.a, %i.qg
  %invariant.gep3625 = getelementptr [8 x i8], ptr %i.bo, i64 %i.yw
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph2916, %dpow_ui.exit2136
  %indvars.iv3270 = phi i64 [ 1, %.lr.ph2916 ], [ %indvars.iv.next3271, %dpow_ui.exit2136 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #9
  %i.yx = call double @frexp(double noundef %i.yh, ptr noundef nonnull %i.ag) #9 ; 0 uses
  %i.yy = load i32, ptr %i.ag, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #9
  %gep3626 = getelementptr [8 x i8], ptr %invariant.gep3625, i64 %indvars.iv3270 ; 2 uses
  %i.yz = load double, ptr %gep3626, align 8, !tbaa !9
  %.not.i2123 = icmp eq i32 %i.yy, 0
  br i1 %.not.i2123, label %dpow_ui.exit2136, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.za = icmp slt i32 %i.yy, 0
  %spec.select.i2124 = select i1 %i.za, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2125 = call i32 @llvm.abs.i32(i32 %i.yy, i1 true)
  %i.zb = zext nneg i32 %spec.select19.i2125 to i64 ; 2 uses
  %i.zc = and i64 %i.zb, 1
  %.not1721.i2126 = icmp eq i64 %i.zc, 0
  %spec.select2022.i2127 = select i1 %.not1721.i2126, double 1.000000e+00, double %spec.select.i2124 ; 2 uses
  %i.zd = lshr i64 %i.zb, 1                       ; 2 uses
  %.not1823.i2128 = icmp eq i64 %i.zd, 0
  br i1 %.not1823.i2128, label %dpow_ui.exit2136, label %.lr.ph.i2129

.lr.ph.i2129:                                     ; preds = %bb.ce, %.lr.ph.i2129
  %i.ze = phi i64 [ %i.zi, %.lr.ph.i2129 ], [ %i.zd, %bb.ce ] ; 2 uses
  %spec.select2025.i2130 = phi double [ %spec.select20.i2133, %.lr.ph.i2129 ], [ %spec.select2022.i2127, %bb.ce ] ; 2 uses
  %.11424.i2131 = phi double [ %i.zf, %.lr.ph.i2129 ], [ %spec.select.i2124, %bb.ce ] ; 2 uses
  %i.zf = fmul double %.11424.i2131, %.11424.i2131 ; 2 uses
  %i.zg = and i64 %i.ze, 1
  %.not17.i2132 = icmp eq i64 %i.zg, 0
  %i.zh = fmul double %spec.select2025.i2130, %i.zf
  %spec.select20.i2133 = select i1 %.not17.i2132, double %spec.select2025.i2130, double %i.zh ; 2 uses
  %i.zi = lshr i64 %i.ze, 1                       ; 2 uses
  %.not18.i2134 = icmp eq i64 %i.zi, 0
  br i1 %.not18.i2134, label %dpow_ui.exit2136, label %.lr.ph.i2129

dpow_ui.exit2136:                                 ; preds = %.lr.ph.i2129, %bb.cd, %bb.ce
  %.2.i2135 = phi double [ 1.000000e+00, %bb.cd ], [ %spec.select2022.i2127, %bb.ce ], [ %spec.select20.i2133, %.lr.ph.i2129 ]
  %i.zj = fdiv double %i.yz, %.2.i2135            ; 2 uses
  %i.zk = fcmp ole double %i.ic, %i.zj
  %i.zl = select i1 %i.zk, double %i.ic, double %i.zj
  store double %i.zl, ptr %gep3626, align 8, !tbaa !9
  %indvars.iv.next3271 = add nuw nsw i64 %indvars.iv3270, 1 ; 2 uses
  %exitcond3274.not = icmp eq i64 %indvars.iv.next3271, %wide.trip.count3273
  br i1 %exitcond3274.not, label %._crit_edge2917, label %bb.cd, !llvm.loop !42

._crit_edge2917:                                  ; preds = %dpow_ui.exit2136
  %indvars.iv.next3276.a = add nuw nsw i64 %indvars.iv3275.a, 1 ; 2 uses
  %exitcond3279.not = icmp eq i64 %indvars.iv.next3276.a, %wide.trip.count3278
  br i1 %exitcond3279.not, label %._crit_edge2922.split, label %.lr.ph2916, !llvm.loop !43

._crit_edge2922.split:                            ; preds = %._crit_edge2917
  store i32 %i.yy, ptr %i.as, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #9
  %i.zm = call double @frexp(double noundef %i.yh, ptr noundef nonnull %i.af) #9 ; 0 uses
  %i.zn = load i32, ptr %i.af, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #9
  %.not.i2137 = icmp eq i32 %i.zn, 0
  br i1 %.not.i2137, label %dpow_ui.exit2150, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge2922.split
  %i.zo = icmp slt i32 %i.zn, 0
  %spec.select.i2138 = select i1 %i.zo, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2139 = call i32 @llvm.abs.i32(i32 %i.zn, i1 true)
  %i.zp = zext nneg i32 %spec.select19.i2139 to i64 ; 2 uses
  %i.zq = and i64 %i.zp, 1
  %.not1721.i2140 = icmp eq i64 %i.zq, 0
  %spec.select2022.i2141 = select i1 %.not1721.i2140, double 1.000000e+00, double %spec.select.i2138 ; 2 uses
  %i.zr = lshr i64 %i.zp, 1                       ; 2 uses
  %.not1823.i2142 = icmp eq i64 %i.zr, 0
  br i1 %.not1823.i2142, label %dpow_ui.exit2150, label %.lr.ph.i2143

.lr.ph.i2143:                                     ; preds = %bb.cf, %.lr.ph.i2143
  %i.zs = phi i64 [ %i.zw, %.lr.ph.i2143 ], [ %i.zr, %bb.cf ] ; 2 uses
  %spec.select2025.i2144 = phi double [ %spec.select20.i2147, %.lr.ph.i2143 ], [ %spec.select2022.i2141, %bb.cf ] ; 2 uses
  %.11424.i2145 = phi double [ %i.zt, %.lr.ph.i2143 ], [ %spec.select.i2138, %bb.cf ] ; 2 uses
  %i.zt = fmul double %.11424.i2145, %.11424.i2145 ; 2 uses
  %i.zu = and i64 %i.zs, 1
  %.not17.i2146 = icmp eq i64 %i.zu, 0
  %i.zv = fmul double %spec.select2025.i2144, %i.zt
  %spec.select20.i2147 = select i1 %.not17.i2146, double %spec.select2025.i2144, double %i.zv ; 2 uses
  %i.zw = lshr i64 %i.zs, 1                       ; 2 uses
  %.not18.i2148 = icmp eq i64 %i.zw, 0
  br i1 %.not18.i2148, label %dpow_ui.exit2150, label %.lr.ph.i2143

dpow_ui.exit2150:                                 ; preds = %.lr.ph.i2143, %._crit_edge2922.split, %bb.cf
  %.2.i2149 = phi double [ 1.000000e+00, %._crit_edge2922.split ], [ %spec.select2022.i2141, %bb.cf ], [ %spec.select20.i2147, %.lr.ph.i2143 ]
  %i.zx = fdiv double %i.xs, %.2.i2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #9
  %i.zy = call double @frexp(double noundef %i.yh, ptr noundef nonnull %i.ae) #9 ; 0 uses
  %i.zz = load i32, ptr %i.ae, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #9
  %.not.i2151 = icmp eq i32 %i.zz, 0
  br i1 %.not.i2151, label %dpow_ui.exit2164, label %bb.cg

bb.cg:                                            ; preds = %dpow_ui.exit2150
  %i.aaa = icmp slt i32 %i.zz, 0
  %spec.select.i2152 = select i1 %i.aaa, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2153 = call i32 @llvm.abs.i32(i32 %i.zz, i1 true)
  %i.aab = zext nneg i32 %spec.select19.i2153 to i64 ; 2 uses
  %i.aac = and i64 %i.aab, 1
  %.not1721.i2154 = icmp eq i64 %i.aac, 0
  %spec.select2022.i2155 = select i1 %.not1721.i2154, double 1.000000e+00, double %spec.select.i2152 ; 2 uses
  %i.aad = lshr i64 %i.aab, 1                     ; 2 uses
  %.not1823.i2156 = icmp eq i64 %i.aad, 0
  br i1 %.not1823.i2156, label %dpow_ui.exit2164, label %.lr.ph.i2157

.lr.ph.i2157:                                     ; preds = %bb.cg, %.lr.ph.i2157
  %i.aae = phi i64 [ %i.aai, %.lr.ph.i2157 ], [ %i.aad, %bb.cg ] ; 2 uses
  %spec.select2025.i2158 = phi double [ %spec.select20.i2161, %.lr.ph.i2157 ], [ %spec.select2022.i2155, %bb.cg ] ; 2 uses
  %.11424.i2159 = phi double [ %i.aaf, %.lr.ph.i2157 ], [ %spec.select.i2152, %bb.cg ] ; 2 uses
  %i.aaf = fmul double %.11424.i2159, %.11424.i2159 ; 2 uses
  %i.aag = and i64 %i.aae, 1
  %.not17.i2160 = icmp eq i64 %i.aag, 0
  %i.aah = fmul double %spec.select2025.i2158, %i.aaf
  %spec.select20.i2161 = select i1 %.not17.i2160, double %spec.select2025.i2158, double %i.aah ; 2 uses
  %i.aai = lshr i64 %i.aae, 1                     ; 2 uses
  %.not18.i2162 = icmp eq i64 %i.aai, 0
  br i1 %.not18.i2162, label %dpow_ui.exit2164, label %.lr.ph.i2157

dpow_ui.exit2164:                                 ; preds = %.lr.ph.i2157, %dpow_ui.exit2150, %bb.cg
  %.2.i2163 = phi double [ 1.000000e+00, %dpow_ui.exit2150 ], [ %spec.select2022.i2155, %bb.cg ], [ %spec.select20.i2161, %.lr.ph.i2157 ]
  %i.aaj = fdiv double %i.yh, %.2.i2163           ; 2 uses
  store double %i.aaj, ptr %i.bb, align 8, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %dpow_ui.exit2164, %bb.ca
  %i.aak = phi double [ %i.aaj, %dpow_ui.exit2164 ], [ %i.yh, %bb.ca ] ; 5 uses
  %.11791 = phi double [ %i.zx, %dpow_ui.exit2164 ], [ %i.xs, %bb.ca ] ; 3 uses
  %.7 = phi double [ %i.yv, %dpow_ui.exit2164 ], [ %.62933, %bb.ca ] ; 2 uses
  %i.aal = load double, ptr %i.ay, align 8, !tbaa !9
  %i.aam = fmul double %i.aak, %i.aal
  store double %i.aam, ptr %i.ay, align 8, !tbaa !9
  %i.aan = load double, ptr %i.az, align 8, !tbaa !9
  %i.aao = fmul double %i.aak, %i.aan
  store double %i.aao, ptr %i.az, align 8, !tbaa !9
  %i.aap = load double, ptr %gep3640.a, align 8, !tbaa !9
  %i.aaq = fdiv double %.11791, %i.aap
  %i.aar = fmul double %i.aak, %i.aaq             ; 2 uses
  store double %i.aar, ptr %i.av, align 8, !tbaa !9
  %i.aas = fcmp une double %i.aar, 1.000000e+00
  br i1 %i.aas, label %bb.ci, label %.loopexit2589

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.xd, ptr %i.aq, align 4, !tbaa !8
  br i1 %.not19732923.not, label %.lr.ph2926, label %.loopexit2589

.lr.ph2926:                                       ; preds = %bb.ci, %.lr.ph2926
  %indvars.iv3280 = phi i64 [ %indvars.iv.next3281.a, %.lr.ph2926 ], [ %i.xe, %bb.ci ] ; 3 uses
  store i32 %i.qq, ptr %i.ar, align 4, !tbaa !8
  %i.aat = mul nsw i64 %indvars.iv3280, %i.qi
  %gep3628 = getelementptr [8 x i8], ptr %invariant.gep3627.a, i64 %i.aat
  call void @dscal_(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av, ptr noundef %gep3628, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3281.a = add nsw i64 %indvars.iv3280, 1
  %i.aau = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.aav = sext i32 %i.aau to i64
  %.not1973.not = icmp slt i64 %indvars.iv3280, %i.aav
  br i1 %.not1973.not, label %.lr.ph2926, label %.loopexit2589.loopexit, !llvm.loop !44

.loopexit2589.loopexit:                           ; preds = %.lr.ph2926
  %.pre3344 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2589

.loopexit2589:                                    ; preds = %.loopexit2589.loopexit, %bb.ci, %bb.ch
  %i.aaw = phi double [ %.pre3344, %.loopexit2589.loopexit ], [ %i.aak, %bb.ci ], [ %i.aak, %bb.ch ] ; 3 uses
  %i.aax = load double, ptr %gep3634.a, align 8, !tbaa !9
  %i.aay = fdiv double %.11791, %i.aax
  %i.aaz = fmul double %i.aay, %i.aaw             ; 2 uses
  store double %i.aaz, ptr %i.av, align 8, !tbaa !9
  %i.aba = fcmp une double %i.aaz, 1.000000e+00
  br i1 %i.aba, label %bb.cj, label %.loopexit2588

bb.cj:                                            ; preds = %.loopexit2589
  %i.abb = add nsw i32 %i.xh, -1
  store i32 %i.abb, ptr %i.aq, align 4, !tbaa !8
  %.not19742927.not = icmp slt i32 %i.xf, %i.xh
  br i1 %.not19742927.not, label %.lr.ph2930.preheader, label %.loopexit2588

.lr.ph2930.preheader:                             ; preds = %bb.cj
  %i.abc = sext i32 %i.xf to i64
  br label %.lr.ph2930

.lr.ph2930:                                       ; preds = %.lr.ph2930.preheader, %.lr.ph2930
  %indvars.iv3283 = phi i64 [ %i.abc, %.lr.ph2930.preheader ], [ %indvars.iv.next3284, %.lr.ph2930 ] ; 3 uses
  store i32 %i.qq, ptr %i.ar, align 4, !tbaa !8
  %i.abd = mul nsw i64 %indvars.iv3283, %i.qi
  %gep3630 = getelementptr [8 x i8], ptr %invariant.gep3629, i64 %i.abd
  call void @dscal_(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av, ptr noundef %gep3630, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3284 = add nsw i64 %indvars.iv3283, 1
  %i.abe = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.abf = sext i32 %i.abe to i64
  %.not1974.not = icmp slt i64 %indvars.iv3283, %i.abf
  br i1 %.not1974.not, label %.lr.ph2930, label %.loopexit2588.loopexit, !llvm.loop !45

.loopexit2588.loopexit:                           ; preds = %.lr.ph2930
  %.pre3345 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2588

.loopexit2588:                                    ; preds = %.loopexit2588.loopexit, %bb.cj, %.loopexit2589
  %i.abg = phi double [ %.pre3345, %.loopexit2588.loopexit ], [ %i.aaw, %bb.cj ], [ %i.aaw, %.loopexit2589 ]
  %i.abh = fmul double %.11791, %i.abg            ; 2 uses
  store double %i.abh, ptr %gep3640.a, align 8, !tbaa !9
  store double %i.abh, ptr %gep3634.a, align 8, !tbaa !9
  store i32 %i.qq, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.xi, ptr %i.ar, align 4, !tbaa !8
  store i32 %i.rf, ptr %i.as, align 4, !tbaa !8
  store double %i.qf, ptr %i.au, align 8, !tbaa !9
  %i.abi = mul nsw i32 %i.xf, %i.bf
  %i.abj = add nsw i32 %i.abi, %i.rc
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.abk
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.au, ptr noundef %i.rm, ptr noundef nonnull %10, ptr noundef %i.abl, ptr noundef nonnull %8, ptr noundef nonnull @c_b32, ptr noundef %i.xm, ptr noundef nonnull %10) #9
  %indvars.iv.next3289 = add nuw nsw i64 %indvars.iv3288, 1
  %i.abm = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.abn = sext i32 %i.abm to i64
  %.not1971.not = icmp slt i64 %indvars.iv3288, %i.abn
  br i1 %.not1971.not, label %bb.ca, label %.loopexit2592, !llvm.loop !46

._crit_edge2942:                                  ; preds = %.loopexit2592, %bb.bj
  %.1.lcssa = phi double [ %.02945, %bb.bj ], [ %.6.lcssa, %.loopexit2592 ] ; 2 uses
  %indvars.iv.next3266 = add nsw i64 %indvars.iv3265, -1
  %i.abo = icmp sgt i64 %indvars.iv3265, 1
  br i1 %i.abo, label %bb.bj, label %.loopexit2594, !llvm.loop !47

bb.ck:                                            ; preds = %._crit_edge2666
  %i.abp = icmp eq i32 %i.bp, 0                   ; 2 uses
  %or.cond3 = select i1 %i.abp, i1 %i.qc, i1 false
  br i1 %or.cond3, label %bb.cl, label %bb.dn

bb.cl:                                            ; preds = %bb.ck
  store i32 %.01789, ptr %i.ao, align 4, !tbaa !8
  br i1 %.not1915265134733478, label %.loopexit2594, label %.lr.ph2875

.lr.ph2875:                                       ; preds = %bb.cl
  %i.abq = add i32 %i.bc, 1
  %i.abr = add i32 %i.bf, 1
  %i.abs = fneg double %i.qb
  %i.abt = sext i32 %i.bm to i64                  ; 7 uses
  %i.abu = add nuw nsw i32 %.01788346534723480, 1 ; 3 uses
  %i.abv = sext i32 %i.bi to i64                  ; 4 uses
  %i.abw = zext nneg i32 %i.pz to i64
  %i.abx = zext nneg i32 %.01788346534723480 to i64 ; 2 uses
  %i.aby = zext nneg i32 %.01789 to i64
  %invariant.gep3609 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3189 = zext nneg i32 %i.abu to i64
  %wide.trip.count3184 = zext nneg i32 %.pre-phi.a to i64
  %wide.trip.count3199 = zext nneg i32 %i.abu to i64
  %wide.trip.count3194 = zext nneg i32 %.pre-phi.a to i64
  %invariant.gep3603.a = getelementptr [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3220 = zext nneg i32 %i.abu to i64
  %wide.trip.count3215 = zext nneg i32 %.pre-phi.a to i64
  br label %bb.cm

.loopexit2601.loopexit:                           ; preds = %.loopexit2599
  %.pre3339.a = load i32, ptr %i.ao, align 4, !tbaa !8
  br label %.loopexit2601

.loopexit2601:                                    ; preds = %.loopexit2601.loopexit, %bb.cm
  %i.abz = phi i32 [ %i.acb, %bb.cm ], [ %.pre3339.a, %.loopexit2601.loopexit ] ; 2 uses
  %.9.lcssa = phi double [ %.82873, %bb.cm ], [ %.14.lcssa, %.loopexit2601.loopexit ] ; 2 uses
  %i.aca = sext i32 %i.abz to i64
  %.not1944.not = icmp slt i64 %indvars.iv3236, %i.aca
  %indvars.iv.next3208 = add nuw nsw i64 %indvars.iv3207, 1
  br i1 %.not1944.not, label %bb.cm, label %.loopexit2594, !llvm.loop !48

bb.cm:                                            ; preds = %.lr.ph2875, %.loopexit2601
  %i.acb = phi i32 [ %.01789, %.lr.ph2875 ], [ %i.abz, %.loopexit2601 ]
  %indvars.iv3236 = phi i64 [ 1, %.lr.ph2875 ], [ %indvars.iv.next3237, %.loopexit2601 ] ; 8 uses
  %indvars.iv3207 = phi i64 [ 2, %.lr.ph2875 ], [ %indvars.iv.next3208, %.loopexit2601 ] ; 2 uses
  %.82873 = phi double [ 1.000000e+00, %.lr.ph2875 ], [ %.9.lcssa, %.loopexit2601 ] ; 2 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3236
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !8 ; 6 uses
  %indvars.iv.next3237 = add nuw nsw i64 %indvars.iv3236, 1
  %i.ace = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3236
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !8
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19142642346734713482, label %.loopexit2601, label %.lr.ph2869

.lr.ph2869:                                       ; preds = %bb.cm
  %i.acg = sub nsw i32 %i.acf, %i.acd             ; 8 uses
  %i.ach = mul i32 %i.acd, %i.abq
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.aci
  %i.ack = add nuw nsw i64 %indvars.iv3236, %i.abx
  %i.acl = mul nsw i64 %i.ack, %i.abt
  %i.acm = sext i32 %i.acd to i64                 ; 3 uses
  %invariant.gep3611 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3236
  %.not19482834.not = icmp samesign ult i64 %indvars.iv3236, %i.aby
  %invariant.gep3595 = getelementptr [8 x i8], ptr %i.bo, i64 %i.acl
  %invariant.gep3589.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.acm
  %invariant.gep3605 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3236
  %invariant.gep3599.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.acm
  %invariant.gep3601 = getelementptr [8 x i8], ptr %i.bk, i64 %i.acm
  br label %bb.cn

.loopexit2599:                                    ; preds = %.loopexit2595, %._crit_edge2839
  %.14.lcssa = phi double [ %.12.lcssa, %._crit_edge2839 ], [ %.15, %.loopexit2595 ] ; 2 uses
  %i.acn = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.aco = sext i32 %i.acn to i64
  %.not1945.not = icmp slt i64 %indvars.iv3233, %i.aco
  %indvars.iv.next3229 = add nuw i32 %indvars.iv3228, 1
  br i1 %.not1945.not, label %bb.cn, label %.loopexit2601.loopexit, !llvm.loop !49

bb.cn:                                            ; preds = %.lr.ph2869, %.loopexit2599
  %indvars.iv3233 = phi i64 [ 1, %.lr.ph2869 ], [ %indvars.iv.next3234, %.loopexit2599 ] ; 6 uses
  %indvars.iv3228 = phi i32 [ 2, %.lr.ph2869 ], [ %indvars.iv.next3229, %.loopexit2599 ] ; 2 uses
  %.92867 = phi double [ %.82873, %.lr.ph2869 ], [ %.14.lcssa, %.loopexit2599 ] ; 2 uses
  %i.acp = sext i32 %indvars.iv3228 to i64
  %gep3610 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3609, i64 %indvars.iv3233 ; 2 uses
  %i.acq = load i32, ptr %gep3610, align 4, !tbaa !8 ; 9 uses
  %i.acr = getelementptr i8, ptr %gep3610, i64 4
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !8 ; 6 uses
  store i32 %i.acg, ptr %i.aq, align 4, !tbaa !8
  %i.act = sub nsw i32 %i.acs, %i.acq             ; 5 uses
  store i32 %i.act, ptr %i.ar, align 4, !tbaa !8
  %i.acu = mul i32 %i.acq, %i.abr
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.acv
  %i.acx = mul nsw i32 %i.acq, %i.bi              ; 2 uses
  %i.acy = add nsw i32 %i.acx, %i.acd
  %i.acz = sext i32 %i.acy to i64
  %i.ada = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.acz ; 4 uses
  call void @dtrsyl_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.acj, ptr noundef nonnull %6, ptr noundef %i.acw, ptr noundef nonnull %8, ptr noundef %i.ada, ptr noundef nonnull %10, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #9
  %i.adb = load i32, ptr %16, align 4, !tbaa !8
  %i.adc = load i32, ptr %i.ba, align 4, !tbaa !8
  %.1997 = call i32 @llvm.smax.i32(i32 %i.adb, i32 %i.adc)
  store i32 %.1997, ptr %16, align 4, !tbaa !8
  %i.add = load double, ptr %i.bb, align 8, !tbaa !9 ; 5 uses
  %i.ade = mul nsw i64 %indvars.iv3233, %i.abt    ; 2 uses
  %gep3612 = getelementptr [8 x i8], ptr %invariant.gep3611, i64 %i.ade ; 9 uses
  %i.adf = load double, ptr %gep3612, align 8, !tbaa !9
  %i.adg = fmul double %i.add, %i.adf             ; 2 uses
  %i.adh = fcmp oeq double %i.adg, 0.000000e+00
  br i1 %i.adh, label %bb.co, label %.loopexit2600

bb.co:                                            ; preds = %bb.cn
  %i.adi = fcmp oeq double %i.add, 0.000000e+00
  br i1 %i.adi, label %.lr.ph2815.split, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #9
  %i.adj = call double @frexp(double noundef %i.add, ptr noundef nonnull %i.ad) #9 ; 0 uses
  %i.adk = load i32, ptr %i.ad, align 4, !tbaa !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #9
  %.not.i2165 = icmp eq i32 %i.adk, 0
  br i1 %.not.i2165, label %dpow_ui.exit2178, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.adl = icmp slt i32 %i.adk, 0
  %spec.select.i2166 = select i1 %i.adl, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2167 = call i32 @llvm.abs.i32(i32 %i.adk, i1 true)
  %i.adm = zext nneg i32 %spec.select19.i2167 to i64 ; 2 uses
  %i.adn = and i64 %i.adm, 1
  %.not1721.i2168 = icmp eq i64 %i.adn, 0
  %spec.select2022.i2169 = select i1 %.not1721.i2168, double 1.000000e+00, double %spec.select.i2166 ; 2 uses
  %i.ado = lshr i64 %i.adm, 1                     ; 2 uses
  %.not1823.i2170 = icmp eq i64 %i.ado, 0
  br i1 %.not1823.i2170, label %dpow_ui.exit2178, label %.lr.ph.i2171

.lr.ph.i2171:                                     ; preds = %bb.cq, %.lr.ph.i2171
  %i.adp = phi i64 [ %i.adt, %.lr.ph.i2171 ], [ %i.ado, %bb.cq ] ; 2 uses
  %spec.select2025.i2172 = phi double [ %spec.select20.i2175, %.lr.ph.i2171 ], [ %spec.select2022.i2169, %bb.cq ] ; 2 uses
  %.11424.i2173 = phi double [ %i.adq, %.lr.ph.i2171 ], [ %spec.select.i2166, %bb.cq ] ; 2 uses
  %i.adq = fmul double %.11424.i2173, %.11424.i2173 ; 2 uses
  %i.adr = and i64 %i.adp, 1
  %.not17.i2174 = icmp eq i64 %i.adr, 0
  %i.ads = fmul double %spec.select2025.i2172, %i.adq
  %spec.select20.i2175 = select i1 %.not17.i2174, double %spec.select2025.i2172, double %i.ads ; 2 uses
  %i.adt = lshr i64 %i.adp, 1                     ; 2 uses
  %.not18.i2176 = icmp eq i64 %i.adt, 0
  br i1 %.not18.i2176, label %dpow_ui.exit2178, label %.lr.ph.i2171

dpow_ui.exit2178:                                 ; preds = %.lr.ph.i2171, %bb.cp, %bb.cq
  %.2.i2177 = phi double [ 1.000000e+00, %bb.cp ], [ %spec.select2022.i2169, %bb.cq ], [ %spec.select20.i2175, %.lr.ph.i2171 ]
  %i.adu = fmul double %.92867, %.2.i2177
  br label %.lr.ph2815.split

.lr.ph2815.split:                                 ; preds = %bb.co, %dpow_ui.exit2178
  %.10 = phi double [ %i.adu, %dpow_ui.exit2178 ], [ 0.000000e+00, %bb.co ]
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2810

.lr.ph2810:                                       ; preds = %.lr.ph2815.split, %._crit_edge2811
  %indvars.iv3186 = phi i64 [ 1, %.lr.ph2815.split ], [ %indvars.iv.next3187, %._crit_edge2811 ] ; 2 uses
  %i.adv = mul nsw i64 %indvars.iv3186, %i.abt
  %invariant.gep3585.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.adv
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph2810, %dpow_ui.exit2192
  %indvars.iv3181 = phi i64 [ 1, %.lr.ph2810 ], [ %indvars.iv.next3182, %dpow_ui.exit2192 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #9
  %i.adw = call double @frexp(double noundef %i.add, ptr noundef nonnull %i.ac) #9 ; 0 uses
  %i.adx = load i32, ptr %i.ac, align 4, !tbaa !8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #9
  %gep3586.a = getelementptr [8 x i8], ptr %invariant.gep3585.a, i64 %indvars.iv3181 ; 2 uses
  %i.ady = load double, ptr %gep3586.a, align 8, !tbaa !9
  %.not.i2179 = icmp eq i32 %i.adx, 0
  br i1 %.not.i2179, label %dpow_ui.exit2192, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.adz = icmp slt i32 %i.adx, 0
  %spec.select.i2180 = select i1 %i.adz, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2181 = call i32 @llvm.abs.i32(i32 %i.adx, i1 true)
  %i.aea = zext nneg i32 %spec.select19.i2181 to i64 ; 2 uses
  %i.aeb = and i64 %i.aea, 1
  %.not1721.i2182 = icmp eq i64 %i.aeb, 0
  %spec.select2022.i2183 = select i1 %.not1721.i2182, double 1.000000e+00, double %spec.select.i2180 ; 2 uses
  %i.aec = lshr i64 %i.aea, 1                     ; 2 uses
  %.not1823.i2184 = icmp eq i64 %i.aec, 0
  br i1 %.not1823.i2184, label %dpow_ui.exit2192, label %.lr.ph.i2185

.lr.ph.i2185:                                     ; preds = %bb.cs, %.lr.ph.i2185
  %i.aed = phi i64 [ %i.aeh, %.lr.ph.i2185 ], [ %i.aec, %bb.cs ] ; 2 uses
  %spec.select2025.i2186 = phi double [ %spec.select20.i2189, %.lr.ph.i2185 ], [ %spec.select2022.i2183, %bb.cs ] ; 2 uses
  %.11424.i2187 = phi double [ %i.aee, %.lr.ph.i2185 ], [ %spec.select.i2180, %bb.cs ] ; 2 uses
  %i.aee = fmul double %.11424.i2187, %.11424.i2187 ; 2 uses
  %i.aef = and i64 %i.aed, 1
  %.not17.i2188 = icmp eq i64 %i.aef, 0
  %i.aeg = fmul double %spec.select2025.i2186, %i.aee
  %spec.select20.i2189 = select i1 %.not17.i2188, double %spec.select2025.i2186, double %i.aeg ; 2 uses
  %i.aeh = lshr i64 %i.aed, 1                     ; 2 uses
  %.not18.i2190 = icmp eq i64 %i.aeh, 0
  br i1 %.not18.i2190, label %dpow_ui.exit2192, label %.lr.ph.i2185

dpow_ui.exit2192:                                 ; preds = %.lr.ph.i2185, %bb.cr, %bb.cs
  %.2.i2191 = phi double [ 1.000000e+00, %bb.cr ], [ %spec.select2022.i2183, %bb.cs ], [ %spec.select20.i2189, %.lr.ph.i2185 ]
  %i.aei = fdiv double %i.ady, %.2.i2191          ; 2 uses
  %i.aej = fcmp ole double %i.ic, %i.aei
  %i.aek = select i1 %i.aej, double %i.ic, double %i.aei
  store double %i.aek, ptr %gep3586.a, align 8, !tbaa !9
  %indvars.iv.next3182 = add nuw nsw i64 %indvars.iv3181, 1 ; 2 uses
  %exitcond3185.not = icmp eq i64 %indvars.iv.next3182, %wide.trip.count3184
  br i1 %exitcond3185.not, label %._crit_edge2811, label %bb.cr, !llvm.loop !50

._crit_edge2811:                                  ; preds = %dpow_ui.exit2192
  %indvars.iv.next3187 = add nuw nsw i64 %indvars.iv3186, 1 ; 2 uses
  %exitcond3190.not = icmp eq i64 %indvars.iv.next3187, %wide.trip.count3189
  br i1 %exitcond3190.not, label %..loopexit2600_crit_edge, label %.lr.ph2810, !llvm.loop !51

..loopexit2600_crit_edge:                         ; preds = %._crit_edge2811
  store i32 %i.adx, ptr %i.as, align 4, !tbaa !8
  %.pre3334 = load double, ptr %gep3612, align 8, !tbaa !9
  %.pre3351 = fmul double %i.add, %.pre3334
  br label %.loopexit2600

.loopexit2600:                                    ; preds = %..loopexit2600_crit_edge, %bb.cn
  %.pre-phi3352 = phi double [ %.pre3351, %..loopexit2600_crit_edge ], [ %i.adg, %bb.cn ]
  %.11 = phi double [ %.10, %..loopexit2600_crit_edge ], [ %.92867, %bb.cn ] ; 2 uses
  store double %.pre-phi3352, ptr %gep3612, align 8, !tbaa !9
  store i32 %i.acg, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.act, ptr %i.ar, align 4, !tbaa !8
  %i.ael = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.ada, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  store double %i.ael, ptr %i.az, align 8, !tbaa !9
  store i32 %.01789, ptr %i.aq, align 4, !tbaa !8
  br i1 %.not19482834.not, label %.lr.ph2838, label %._crit_edge2839

.lr.ph2838:                                       ; preds = %.loopexit2600
  %i.aem = add nsw i32 %i.acs, -1                 ; 2 uses
  %i.aen = sext i32 %i.acq to i64                 ; 2 uses
  %invariant.gep3593 = getelementptr [8 x i8], ptr %i.bo, i64 %i.ade
  %.not19552826.not = icmp slt i32 %i.acq, %i.acs
  %.not19562830.not = icmp slt i32 %i.acq, %i.acs
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph2838, %.loopexit2597
  %indvars.iv3209.a = phi i64 [ %indvars.iv3207, %.lr.ph2838 ], [ %indvars.iv.next3210.a, %.loopexit2597 ] ; 6 uses
  %.122836 = phi double [ %.11, %.lr.ph2838 ], [ %.13, %.loopexit2597 ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3209.a
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !8 ; 4 uses
  %indvars.iv.next3210.a = add nuw nsw i64 %indvars.iv3209.a, 1
  %i.aeq = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3209.a
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !8
  %i.aes = sub nsw i32 %i.aer, %i.aep             ; 3 uses
  store i32 %i.aes, ptr %i.ar, align 4, !tbaa !8
  store i32 %i.act, ptr %i.as, align 4, !tbaa !8
  %i.aet = add nsw i32 %i.aep, %i.acx
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aeu ; 2 uses
  %i.aew = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef %i.aev, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  %gep3594.a = getelementptr [8 x i8], ptr %invariant.gep3593, i64 %indvars.iv3209.a ; 3 uses
  %i.aex = load double, ptr %gep3594.a, align 8, !tbaa !9 ; 4 uses
  store double %i.aex, ptr %i.au, align 8, !tbaa !9
  %i.aey = load double, ptr %gep3612, align 8, !tbaa !9 ; 3 uses
  %i.aez = fcmp ole double %i.aex, %i.aey
  %i.afa = select i1 %i.aez, double %i.aex, double %i.aey ; 4 uses
  %i.afb = load double, ptr %i.az, align 8, !tbaa !9
  %i.afc = insertelement <2 x double> poison, double %i.afa, i64 0
  %i.afd = shufflevector <2 x double> %i.afc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afe = insertelement <2 x double> poison, double %i.aex, i64 0
  %i.aff = insertelement <2 x double> %i.afe, double %i.aey, i64 1
  %i.afg = fdiv <2 x double> %i.afd, %i.aff
  %i.afh = insertelement <2 x double> poison, double %i.aew, i64 0
  %i.afi = insertelement <2 x double> %i.afh, double %i.afb, i64 1
  %i.afj = fmul <2 x double> %i.afi, %i.afg       ; 2 uses
  %i.afk = extractelement <2 x double> %i.afj, i64 0
  store double %i.afk, ptr %i.ay, align 8, !tbaa !9
  %i.afl = extractelement <2 x double> %i.afj, i64 1
  store double %i.afl, ptr %i.az, align 8, !tbaa !9
  %gep3596.a = getelementptr [8 x i8], ptr %invariant.gep3595, i64 %indvars.iv3209.a
  %i.afm = load double, ptr %gep3596.a, align 8, !tbaa !9
  store double %i.afm, ptr %i.aw, align 8, !tbaa !9
  %i.afn = call double @dlarmm_(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ay) #9 ; 8 uses
  store double %i.afn, ptr %i.bb, align 8, !tbaa !9
  %i.afo = fmul double %i.afa, %i.afn
  %i.afp = fcmp oeq double %i.afo, 0.000000e+00
  br i1 %i.afp, label %bb.cu, label %bb.da

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #9
  %i.afq = call double @frexp(double noundef %i.afn, ptr noundef nonnull %i.ab) #9 ; 0 uses
  %i.afr = load i32, ptr %i.ab, align 4, !tbaa !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #9
  %.not.i2193 = icmp eq i32 %i.afr, 0
  br i1 %.not.i2193, label %.lr.ph2824.split, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.afs = icmp slt i32 %i.afr, 0
  %spec.select.i2194 = select i1 %i.afs, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2195 = call i32 @llvm.abs.i32(i32 %i.afr, i1 true)
  %i.aft = zext nneg i32 %spec.select19.i2195 to i64 ; 2 uses
  %i.afu = and i64 %i.aft, 1
  %.not1721.i2196 = icmp eq i64 %i.afu, 0
  %spec.select2022.i2197 = select i1 %.not1721.i2196, double 1.000000e+00, double %spec.select.i2194 ; 2 uses
  %i.afv = lshr i64 %i.aft, 1                     ; 2 uses
  %.not1823.i2198 = icmp eq i64 %i.afv, 0
  br i1 %.not1823.i2198, label %.lr.ph2824.split, label %.lr.ph.i2199

.lr.ph.i2199:                                     ; preds = %bb.cv, %.lr.ph.i2199
  %i.afw = phi i64 [ %i.aga, %.lr.ph.i2199 ], [ %i.afv, %bb.cv ] ; 2 uses
  %spec.select2025.i2200 = phi double [ %spec.select20.i2203, %.lr.ph.i2199 ], [ %spec.select2022.i2197, %bb.cv ] ; 2 uses
  %.11424.i2201 = phi double [ %i.afx, %.lr.ph.i2199 ], [ %spec.select.i2194, %bb.cv ] ; 2 uses
  %i.afx = fmul double %.11424.i2201, %.11424.i2201 ; 2 uses
  %i.afy = and i64 %i.afw, 1
  %.not17.i2202 = icmp eq i64 %i.afy, 0
  %i.afz = fmul double %spec.select2025.i2200, %i.afx
  %spec.select20.i2203 = select i1 %.not17.i2202, double %spec.select2025.i2200, double %i.afz ; 2 uses
  %i.aga = lshr i64 %i.afw, 1                     ; 2 uses
  %.not18.i2204 = icmp eq i64 %i.aga, 0
  br i1 %.not18.i2204, label %.lr.ph2824.split, label %.lr.ph.i2199

.lr.ph2824.split:                                 ; preds = %.lr.ph.i2199, %bb.cu, %bb.cv
  %.2.i2205 = phi double [ 1.000000e+00, %bb.cu ], [ %spec.select2022.i2197, %bb.cv ], [ %spec.select20.i2203, %.lr.ph.i2199 ]
  %i.agb = fmul double %.122836, %.2.i2205
  store i32 %.01788346534723480, ptr %i.ar, align 4, !tbaa !8
  store i32 %.01789, ptr %i.as, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2819

.lr.ph2819:                                       ; preds = %.lr.ph2824.split, %._crit_edge2820
  %indvars.iv3196.a = phi i64 [ 1, %.lr.ph2824.split ], [ %indvars.iv.next3197.a, %._crit_edge2820 ] ; 2 uses
  %i.agc = mul nsw i64 %indvars.iv3196.a, %i.abt
  %invariant.gep3587 = getelementptr [8 x i8], ptr %i.bo, i64 %i.agc
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph2819, %dpow_ui.exit2220
  %indvars.iv3191 = phi i64 [ 1, %.lr.ph2819 ], [ %indvars.iv.next3192, %dpow_ui.exit2220 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #9
  %i.agd = call double @frexp(double noundef %i.afn, ptr noundef nonnull %i.aa) #9 ; 0 uses
  %i.age = load i32, ptr %i.aa, align 4, !tbaa !8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #9
  %gep3588 = getelementptr [8 x i8], ptr %invariant.gep3587, i64 %indvars.iv3191 ; 2 uses
  %i.agf = load double, ptr %gep3588, align 8, !tbaa !9
  %.not.i2207 = icmp eq i32 %i.age, 0
  br i1 %.not.i2207, label %dpow_ui.exit2220, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.agg = icmp slt i32 %i.age, 0
  %spec.select.i2208 = select i1 %i.agg, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2209 = call i32 @llvm.abs.i32(i32 %i.age, i1 true)
  %i.agh = zext nneg i32 %spec.select19.i2209 to i64 ; 2 uses
  %i.agi = and i64 %i.agh, 1
  %.not1721.i2210 = icmp eq i64 %i.agi, 0
  %spec.select2022.i2211 = select i1 %.not1721.i2210, double 1.000000e+00, double %spec.select.i2208 ; 2 uses
  %i.agj = lshr i64 %i.agh, 1                     ; 2 uses
  %.not1823.i2212 = icmp eq i64 %i.agj, 0
  br i1 %.not1823.i2212, label %dpow_ui.exit2220, label %.lr.ph.i2213

.lr.ph.i2213:                                     ; preds = %bb.cx, %.lr.ph.i2213
  %i.agk = phi i64 [ %i.ago, %.lr.ph.i2213 ], [ %i.agj, %bb.cx ] ; 2 uses
  %spec.select2025.i2214 = phi double [ %spec.select20.i2217, %.lr.ph.i2213 ], [ %spec.select2022.i2211, %bb.cx ] ; 2 uses
  %.11424.i2215 = phi double [ %i.agl, %.lr.ph.i2213 ], [ %spec.select.i2208, %bb.cx ] ; 2 uses
  %i.agl = fmul double %.11424.i2215, %.11424.i2215 ; 2 uses
  %i.agm = and i64 %i.agk, 1
  %.not17.i2216 = icmp eq i64 %i.agm, 0
  %i.agn = fmul double %spec.select2025.i2214, %i.agl
  %spec.select20.i2217 = select i1 %.not17.i2216, double %spec.select2025.i2214, double %i.agn ; 2 uses
  %i.ago = lshr i64 %i.agk, 1                     ; 2 uses
  %.not18.i2218 = icmp eq i64 %i.ago, 0
  br i1 %.not18.i2218, label %dpow_ui.exit2220, label %.lr.ph.i2213

dpow_ui.exit2220:                                 ; preds = %.lr.ph.i2213, %bb.cw, %bb.cx
  %.2.i2219 = phi double [ 1.000000e+00, %bb.cw ], [ %spec.select2022.i2211, %bb.cx ], [ %spec.select20.i2217, %.lr.ph.i2213 ]
  %i.agp = fdiv double %i.agf, %.2.i2219          ; 2 uses
  %i.agq = fcmp ole double %i.ic, %i.agp
  %i.agr = select i1 %i.agq, double %i.ic, double %i.agp
  store double %i.agr, ptr %gep3588, align 8, !tbaa !9
  %indvars.iv.next3192 = add nuw nsw i64 %indvars.iv3191, 1 ; 2 uses
  %exitcond3195.not = icmp eq i64 %indvars.iv.next3192, %wide.trip.count3194
  br i1 %exitcond3195.not, label %._crit_edge2820, label %bb.cw, !llvm.loop !52

._crit_edge2820:                                  ; preds = %dpow_ui.exit2220
  %indvars.iv.next3197.a = add nuw nsw i64 %indvars.iv3196.a, 1 ; 2 uses
  %exitcond3200.not = icmp eq i64 %indvars.iv.next3197.a, %wide.trip.count3199
  br i1 %exitcond3200.not, label %._crit_edge2825.split, label %.lr.ph2819, !llvm.loop !53

._crit_edge2825.split:                            ; preds = %._crit_edge2820
  store i32 %i.age, ptr %i.at, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #9
  %i.ags = call double @frexp(double noundef %i.afn, ptr noundef nonnull %i.z) #9 ; 0 uses
  %i.agt = load i32, ptr %i.z, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #9
  %.not.i2221 = icmp eq i32 %i.agt, 0
  br i1 %.not.i2221, label %dpow_ui.exit2234, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge2825.split
  %i.agu = icmp slt i32 %i.agt, 0
  %spec.select.i2222 = select i1 %i.agu, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2223 = call i32 @llvm.abs.i32(i32 %i.agt, i1 true)
  %i.agv = zext nneg i32 %spec.select19.i2223 to i64 ; 2 uses
  %i.agw = and i64 %i.agv, 1
  %.not1721.i2224 = icmp eq i64 %i.agw, 0
  %spec.select2022.i2225 = select i1 %.not1721.i2224, double 1.000000e+00, double %spec.select.i2222 ; 2 uses
  %i.agx = lshr i64 %i.agv, 1                     ; 2 uses
  %.not1823.i2226 = icmp eq i64 %i.agx, 0
  br i1 %.not1823.i2226, label %dpow_ui.exit2234, label %.lr.ph.i2227

.lr.ph.i2227:                                     ; preds = %bb.cy, %.lr.ph.i2227
  %i.agy = phi i64 [ %i.ahc, %.lr.ph.i2227 ], [ %i.agx, %bb.cy ] ; 2 uses
  %spec.select2025.i2228 = phi double [ %spec.select20.i2231, %.lr.ph.i2227 ], [ %spec.select2022.i2225, %bb.cy ] ; 2 uses
  %.11424.i2229 = phi double [ %i.agz, %.lr.ph.i2227 ], [ %spec.select.i2222, %bb.cy ] ; 2 uses
  %i.agz = fmul double %.11424.i2229, %.11424.i2229 ; 2 uses
  %i.aha = and i64 %i.agy, 1
  %.not17.i2230 = icmp eq i64 %i.aha, 0
  %i.ahb = fmul double %spec.select2025.i2228, %i.agz
  %spec.select20.i2231 = select i1 %.not17.i2230, double %spec.select2025.i2228, double %i.ahb ; 2 uses
  %i.ahc = lshr i64 %i.agy, 1                     ; 2 uses
  %.not18.i2232 = icmp eq i64 %i.ahc, 0
  br i1 %.not18.i2232, label %dpow_ui.exit2234, label %.lr.ph.i2227

dpow_ui.exit2234:                                 ; preds = %.lr.ph.i2227, %._crit_edge2825.split, %bb.cy
  %.2.i2233 = phi double [ 1.000000e+00, %._crit_edge2825.split ], [ %spec.select2022.i2225, %bb.cy ], [ %spec.select20.i2231, %.lr.ph.i2227 ]
  %i.ahd = fdiv double %i.afa, %.2.i2233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #9
  %i.ahe = call double @frexp(double noundef %i.afn, ptr noundef nonnull %i.y) #9 ; 0 uses
  %i.ahf = load i32, ptr %i.y, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #9
  %.not.i2235 = icmp eq i32 %i.ahf, 0
  br i1 %.not.i2235, label %dpow_ui.exit2248, label %bb.cz

bb.cz:                                            ; preds = %dpow_ui.exit2234
  %i.ahg = icmp slt i32 %i.ahf, 0
  %spec.select.i2236 = select i1 %i.ahg, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2237 = call i32 @llvm.abs.i32(i32 %i.ahf, i1 true)
  %i.ahh = zext nneg i32 %spec.select19.i2237 to i64 ; 2 uses
  %i.ahi = and i64 %i.ahh, 1
  %.not1721.i2238 = icmp eq i64 %i.ahi, 0
  %spec.select2022.i2239 = select i1 %.not1721.i2238, double 1.000000e+00, double %spec.select.i2236 ; 2 uses
  %i.ahj = lshr i64 %i.ahh, 1                     ; 2 uses
  %.not1823.i2240 = icmp eq i64 %i.ahj, 0
  br i1 %.not1823.i2240, label %dpow_ui.exit2248, label %.lr.ph.i2241

.lr.ph.i2241:                                     ; preds = %bb.cz, %.lr.ph.i2241
  %i.ahk = phi i64 [ %i.aho, %.lr.ph.i2241 ], [ %i.ahj, %bb.cz ] ; 2 uses
  %spec.select2025.i2242 = phi double [ %spec.select20.i2245, %.lr.ph.i2241 ], [ %spec.select2022.i2239, %bb.cz ] ; 2 uses
  %.11424.i2243 = phi double [ %i.ahl, %.lr.ph.i2241 ], [ %spec.select.i2236, %bb.cz ] ; 2 uses
  %i.ahl = fmul double %.11424.i2243, %.11424.i2243 ; 2 uses
  %i.ahm = and i64 %i.ahk, 1
  %.not17.i2244 = icmp eq i64 %i.ahm, 0
  %i.ahn = fmul double %spec.select2025.i2242, %i.ahl
  %spec.select20.i2245 = select i1 %.not17.i2244, double %spec.select2025.i2242, double %i.ahn ; 2 uses
  %i.aho = lshr i64 %i.ahk, 1                     ; 2 uses
  %.not18.i2246 = icmp eq i64 %i.aho, 0
  br i1 %.not18.i2246, label %dpow_ui.exit2248, label %.lr.ph.i2241

dpow_ui.exit2248:                                 ; preds = %.lr.ph.i2241, %dpow_ui.exit2234, %bb.cz
  %.2.i2247 = phi double [ 1.000000e+00, %dpow_ui.exit2234 ], [ %spec.select2022.i2239, %bb.cz ], [ %spec.select20.i2245, %.lr.ph.i2241 ]
  %i.ahp = fdiv double %i.afn, %.2.i2247          ; 2 uses
  store double %i.ahp, ptr %i.bb, align 8, !tbaa !9
  br label %bb.da

bb.da:                                            ; preds = %dpow_ui.exit2248, %bb.ct
  %i.ahq = phi double [ %i.ahp, %dpow_ui.exit2248 ], [ %i.afn, %bb.ct ] ; 5 uses
  %.21792 = phi double [ %i.ahd, %dpow_ui.exit2248 ], [ %i.afa, %bb.ct ] ; 3 uses
  %.13 = phi double [ %i.agb, %dpow_ui.exit2248 ], [ %.122836, %bb.ct ] ; 2 uses
  %i.ahr = load double, ptr %i.ay, align 8, !tbaa !9
  %i.ahs = fmul double %i.ahq, %i.ahr
  store double %i.ahs, ptr %i.ay, align 8, !tbaa !9
  %i.aht = load double, ptr %i.az, align 8, !tbaa !9
  %i.ahu = fmul double %i.ahq, %i.aht
  store double %i.ahu, ptr %i.az, align 8, !tbaa !9
  %i.ahv = load double, ptr %gep3612, align 8, !tbaa !9
  %i.ahw = fdiv double %.21792, %i.ahv
  %i.ahx = fmul double %i.ahq, %i.ahw             ; 2 uses
  store double %i.ahx, ptr %i.av, align 8, !tbaa !9
  %i.ahy = fcmp une double %i.ahx, 1.000000e+00
  br i1 %i.ahy, label %bb.db, label %.loopexit2598

bb.db:                                            ; preds = %bb.da
  store i32 %i.aem, ptr %i.ar, align 4, !tbaa !8
  br i1 %.not19552826.not, label %.lr.ph2829, label %.loopexit2598

.lr.ph2829:                                       ; preds = %bb.db, %.lr.ph2829
  %indvars.iv3201 = phi i64 [ %indvars.iv.next3202, %.lr.ph2829 ], [ %i.aen, %bb.db ] ; 3 uses
  store i32 %i.acg, ptr %i.as, align 4, !tbaa !8
  %i.ahz = mul nsw i64 %indvars.iv3201, %i.abv
  %gep3590.a = getelementptr [8 x i8], ptr %invariant.gep3589.a, i64 %i.ahz
  call void @dscal_(ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, ptr noundef %gep3590.a, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3202 = add nsw i64 %indvars.iv3201, 1
  %i.aia = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.aib = sext i32 %i.aia to i64
  %.not1955.not = icmp slt i64 %indvars.iv3201, %i.aib
  br i1 %.not1955.not, label %.lr.ph2829, label %.loopexit2598.loopexit, !llvm.loop !54

.loopexit2598.loopexit:                           ; preds = %.lr.ph2829
  %.pre3335 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2598

.loopexit2598:                                    ; preds = %.loopexit2598.loopexit, %bb.db, %bb.da
  %i.aic = phi double [ %.pre3335, %.loopexit2598.loopexit ], [ %i.ahq, %bb.db ], [ %i.ahq, %bb.da ] ; 3 uses
  %i.aid = load double, ptr %gep3594.a, align 8, !tbaa !9
  %i.aie = fdiv double %.21792, %i.aid
  %i.aif = fmul double %i.aie, %i.aic             ; 2 uses
  store double %i.aif, ptr %i.av, align 8, !tbaa !9
  %i.aig = fcmp une double %i.aif, 1.000000e+00
  br i1 %i.aig, label %bb.dc, label %.loopexit2597

bb.dc:                                            ; preds = %.loopexit2598
  store i32 %i.aem, ptr %i.ar, align 4, !tbaa !8
  br i1 %.not19562830.not, label %.lr.ph2833.preheader, label %.loopexit2597

.lr.ph2833.preheader:                             ; preds = %bb.dc
  %i.aih = sext i32 %i.aep to i64
  %invariant.gep3591 = getelementptr [8 x i8], ptr %i.bk, i64 %i.aih
  br label %.lr.ph2833

.lr.ph2833:                                       ; preds = %.lr.ph2833.preheader, %.lr.ph2833
  %indvars.iv3204.a = phi i64 [ %i.aen, %.lr.ph2833.preheader ], [ %indvars.iv.next3205.a, %.lr.ph2833 ] ; 3 uses
  store i32 %i.aes, ptr %i.as, align 4, !tbaa !8
  %i.aii = mul nsw i64 %indvars.iv3204.a, %i.abv
  %gep3592.a = getelementptr [8 x i8], ptr %invariant.gep3591, i64 %i.aii
  call void @dscal_(ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, ptr noundef %gep3592.a, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3205.a = add nsw i64 %indvars.iv3204.a, 1
  %i.aij = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.aik = sext i32 %i.aij to i64
  %.not1956.not = icmp slt i64 %indvars.iv3204.a, %i.aik
  br i1 %.not1956.not, label %.lr.ph2833, label %.loopexit2597.loopexit, !llvm.loop !55

.loopexit2597.loopexit:                           ; preds = %.lr.ph2833
  %.pre3336 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2597

.loopexit2597:                                    ; preds = %.loopexit2597.loopexit, %bb.dc, %.loopexit2598
  %i.ail = phi double [ %.pre3336, %.loopexit2597.loopexit ], [ %i.aic, %bb.dc ], [ %i.aic, %.loopexit2598 ]
  %i.aim = fmul double %.21792, %i.ail            ; 2 uses
  store double %i.aim, ptr %gep3612, align 8, !tbaa !9
  store double %i.aim, ptr %gep3594.a, align 8, !tbaa !9
  store i32 %i.aes, ptr %i.ar, align 4, !tbaa !8
  store i32 %i.act, ptr %i.as, align 4, !tbaa !8
  store i32 %i.acg, ptr %i.at, align 4, !tbaa !8
  %i.ain = mul nsw i32 %i.aep, %i.bc
  %i.aio = add nsw i32 %i.ain, %i.acd
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.aip
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull @c_b31, ptr noundef %i.aiq, ptr noundef nonnull %6, ptr noundef %i.ada, ptr noundef nonnull %10, ptr noundef nonnull @c_b32, ptr noundef %i.aev, ptr noundef nonnull %10) #9
  %i.air = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.ais = sext i32 %i.air to i64
  %.not1948.not = icmp slt i64 %indvars.iv3209.a, %i.ais
  br i1 %.not1948.not, label %bb.ct, label %._crit_edge2839, !llvm.loop !56

._crit_edge2839:                                  ; preds = %.loopexit2597, %.loopexit2600
  %.12.lcssa = phi double [ %.11, %.loopexit2600 ], [ %.13, %.loopexit2597 ] ; 2 uses
  store i32 %.01788346534723480, ptr %i.aq, align 4, !tbaa !8
  %indvars.iv.next3234 = add nuw nsw i64 %indvars.iv3233, 1
  %.not19492859.not = icmp samesign ult i64 %indvars.iv3233, %i.abx
  br i1 %.not19492859.not, label %.lr.ph2863, label %.loopexit2599

.lr.ph2863:                                       ; preds = %._crit_edge2839
  %i.ait = add nsw i32 %i.acs, -1
  %i.aiu = sext i32 %i.acq to i64
  %invariant.gep3607 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3233
  %.not19512851.not = icmp slt i32 %i.acq, %i.acs
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph2863, %.loopexit2595
  %indvars.iv3230 = phi i64 [ %i.acp, %.lr.ph2863 ], [ %indvars.iv.next3231, %.loopexit2595 ] ; 5 uses
  %.142861 = phi double [ %.12.lcssa, %.lr.ph2863 ], [ %.15, %.loopexit2595 ] ; 2 uses
  %gep3604 = getelementptr [4 x i8], ptr %invariant.gep3603.a, i64 %indvars.iv3230 ; 2 uses
  %i.aiv = load i32, ptr %gep3604, align 4, !tbaa !8 ; 5 uses
  %i.aiw = getelementptr i8, ptr %gep3604, i64 4
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !8 ; 3 uses
  store i32 %i.acg, ptr %i.ar, align 4, !tbaa !8
  %i.aiy = sub nsw i32 %i.aix, %i.aiv             ; 2 uses
  store i32 %i.aiy, ptr %i.as, align 4, !tbaa !8
  %i.aiz = mul nsw i32 %i.aiv, %i.bi
  %i.aja = add nsw i32 %i.aiz, %i.acd
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ajb ; 2 uses
  %i.ajd = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef %i.ajc, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  %i.aje = mul nsw i64 %indvars.iv3230, %i.abt
  %gep3606 = getelementptr [8 x i8], ptr %invariant.gep3605, i64 %i.aje ; 3 uses
  %i.ajf = load double, ptr %gep3606, align 8, !tbaa !9 ; 4 uses
  store double %i.ajf, ptr %i.au, align 8, !tbaa !9
  %i.ajg = load double, ptr %gep3612, align 8, !tbaa !9 ; 3 uses
  %i.ajh = fcmp ole double %i.ajf, %i.ajg
  %i.aji = select i1 %i.ajh, double %i.ajf, double %i.ajg ; 4 uses
  %i.ajj = load double, ptr %i.az, align 8, !tbaa !9
  %i.ajk = insertelement <2 x double> poison, double %i.aji, i64 0
  %i.ajl = shufflevector <2 x double> %i.ajk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajm = insertelement <2 x double> poison, double %i.ajf, i64 0
  %i.ajn = insertelement <2 x double> %i.ajm, double %i.ajg, i64 1
  %i.ajo = fdiv <2 x double> %i.ajl, %i.ajn
  %i.ajp = insertelement <2 x double> poison, double %i.ajd, i64 0
  %i.ajq = insertelement <2 x double> %i.ajp, double %i.ajj, i64 1
  %i.ajr = fmul <2 x double> %i.ajq, %i.ajo       ; 2 uses
  %i.ajs = extractelement <2 x double> %i.ajr, i64 0
  store double %i.ajs, ptr %i.ay, align 8, !tbaa !9
  %i.ajt = extractelement <2 x double> %i.ajr, i64 1
  store double %i.ajt, ptr %i.az, align 8, !tbaa !9
  %i.aju = add nuw nsw i64 %indvars.iv3230, %i.abw
  %i.ajv = mul nsw i64 %i.aju, %i.abt
  %gep3608 = getelementptr [8 x i8], ptr %invariant.gep3607, i64 %i.ajv
  %i.ajw = load double, ptr %gep3608, align 8, !tbaa !9
  store double %i.ajw, ptr %i.ax, align 8, !tbaa !9
  %i.ajx = call double @dlarmm_(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ay) #9 ; 8 uses
  store double %i.ajx, ptr %i.bb, align 8, !tbaa !9
  %i.ajy = fmul double %i.aji, %i.ajx
  %i.ajz = fcmp oeq double %i.ajy, 0.000000e+00
  br i1 %i.ajz, label %bb.de, label %bb.dk

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #9
  %i.aka = call double @frexp(double noundef %i.ajx, ptr noundef nonnull %i.x) #9 ; 0 uses
  %i.akb = load i32, ptr %i.x, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #9
  %.not.i2249 = icmp eq i32 %i.akb, 0
  br i1 %.not.i2249, label %.lr.ph2849.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.akc = icmp slt i32 %i.akb, 0
  %spec.select.i2250 = select i1 %i.akc, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2251 = call i32 @llvm.abs.i32(i32 %i.akb, i1 true)
  %i.akd = zext nneg i32 %spec.select19.i2251 to i64 ; 2 uses
  %i.ake = and i64 %i.akd, 1
  %.not1721.i2252 = icmp eq i64 %i.ake, 0
  %spec.select2022.i2253 = select i1 %.not1721.i2252, double 1.000000e+00, double %spec.select.i2250 ; 2 uses
  %i.akf = lshr i64 %i.akd, 1                     ; 2 uses
  %.not1823.i2254 = icmp eq i64 %i.akf, 0
  br i1 %.not1823.i2254, label %.lr.ph2849.split, label %.lr.ph.i2255

.lr.ph.i2255:                                     ; preds = %bb.df, %.lr.ph.i2255
  %i.akg = phi i64 [ %i.akk, %.lr.ph.i2255 ], [ %i.akf, %bb.df ] ; 2 uses
  %spec.select2025.i2256 = phi double [ %spec.select20.i2259, %.lr.ph.i2255 ], [ %spec.select2022.i2253, %bb.df ] ; 2 uses
  %.11424.i2257 = phi double [ %i.akh, %.lr.ph.i2255 ], [ %spec.select.i2250, %bb.df ] ; 2 uses
  %i.akh = fmul double %.11424.i2257, %.11424.i2257 ; 2 uses
  %i.aki = and i64 %i.akg, 1
  %.not17.i2258 = icmp eq i64 %i.aki, 0
  %i.akj = fmul double %spec.select2025.i2256, %i.akh
  %spec.select20.i2259 = select i1 %.not17.i2258, double %spec.select2025.i2256, double %i.akj ; 2 uses
  %i.akk = lshr i64 %i.akg, 1                     ; 2 uses
  %.not18.i2260 = icmp eq i64 %i.akk, 0
  br i1 %.not18.i2260, label %.lr.ph2849.split, label %.lr.ph.i2255

.lr.ph2849.split:                                 ; preds = %.lr.ph.i2255, %bb.de, %bb.df
  %.2.i2261 = phi double [ 1.000000e+00, %bb.de ], [ %spec.select2022.i2253, %bb.df ], [ %spec.select20.i2259, %.lr.ph.i2255 ]
  %i.akl = fmul double %.142861, %.2.i2261
  store i32 %.01788346534723480, ptr %i.ar, align 4, !tbaa !8
  store i32 %.01789, ptr %i.as, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2844

.lr.ph2844:                                       ; preds = %.lr.ph2849.split, %._crit_edge2845
  %indvars.iv3217.a = phi i64 [ 1, %.lr.ph2849.split ], [ %indvars.iv.next3218.a, %._crit_edge2845 ] ; 2 uses
  %i.akm = mul nsw i64 %indvars.iv3217.a, %i.abt
  %invariant.gep3597 = getelementptr [8 x i8], ptr %i.bo, i64 %i.akm
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph2844, %dpow_ui.exit2276
  %indvars.iv3212 = phi i64 [ 1, %.lr.ph2844 ], [ %indvars.iv.next3213, %dpow_ui.exit2276 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #9
  %i.akn = call double @frexp(double noundef %i.ajx, ptr noundef nonnull %i.w) #9 ; 0 uses
  %i.ako = load i32, ptr %i.w, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #9
  %gep3598 = getelementptr [8 x i8], ptr %invariant.gep3597, i64 %indvars.iv3212 ; 2 uses
  %i.akp = load double, ptr %gep3598, align 8, !tbaa !9
  %.not.i2263 = icmp eq i32 %i.ako, 0
  br i1 %.not.i2263, label %dpow_ui.exit2276, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.akq = icmp slt i32 %i.ako, 0
  %spec.select.i2264 = select i1 %i.akq, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2265 = call i32 @llvm.abs.i32(i32 %i.ako, i1 true)
  %i.akr = zext nneg i32 %spec.select19.i2265 to i64 ; 2 uses
  %i.aks = and i64 %i.akr, 1
  %.not1721.i2266 = icmp eq i64 %i.aks, 0
  %spec.select2022.i2267 = select i1 %.not1721.i2266, double 1.000000e+00, double %spec.select.i2264 ; 2 uses
  %i.akt = lshr i64 %i.akr, 1                     ; 2 uses
  %.not1823.i2268 = icmp eq i64 %i.akt, 0
  br i1 %.not1823.i2268, label %dpow_ui.exit2276, label %.lr.ph.i2269

.lr.ph.i2269:                                     ; preds = %bb.dh, %.lr.ph.i2269
  %i.aku = phi i64 [ %i.aky, %.lr.ph.i2269 ], [ %i.akt, %bb.dh ] ; 2 uses
  %spec.select2025.i2270 = phi double [ %spec.select20.i2273, %.lr.ph.i2269 ], [ %spec.select2022.i2267, %bb.dh ] ; 2 uses
  %.11424.i2271 = phi double [ %i.akv, %.lr.ph.i2269 ], [ %spec.select.i2264, %bb.dh ] ; 2 uses
  %i.akv = fmul double %.11424.i2271, %.11424.i2271 ; 2 uses
  %i.akw = and i64 %i.aku, 1
  %.not17.i2272 = icmp eq i64 %i.akw, 0
  %i.akx = fmul double %spec.select2025.i2270, %i.akv
  %spec.select20.i2273 = select i1 %.not17.i2272, double %spec.select2025.i2270, double %i.akx ; 2 uses
  %i.aky = lshr i64 %i.aku, 1                     ; 2 uses
  %.not18.i2274 = icmp eq i64 %i.aky, 0
  br i1 %.not18.i2274, label %dpow_ui.exit2276, label %.lr.ph.i2269

dpow_ui.exit2276:                                 ; preds = %.lr.ph.i2269, %bb.dg, %bb.dh
  %.2.i2275 = phi double [ 1.000000e+00, %bb.dg ], [ %spec.select2022.i2267, %bb.dh ], [ %spec.select20.i2273, %.lr.ph.i2269 ]
  %i.akz = fdiv double %i.akp, %.2.i2275          ; 2 uses
  %i.ala = fcmp ole double %i.ic, %i.akz
  %i.alb = select i1 %i.ala, double %i.ic, double %i.akz
  store double %i.alb, ptr %gep3598, align 8, !tbaa !9
  %indvars.iv.next3213 = add nuw nsw i64 %indvars.iv3212, 1 ; 2 uses
  %exitcond3216.not = icmp eq i64 %indvars.iv.next3213, %wide.trip.count3215
  br i1 %exitcond3216.not, label %._crit_edge2845, label %bb.dg, !llvm.loop !57

._crit_edge2845:                                  ; preds = %dpow_ui.exit2276
  %indvars.iv.next3218.a = add nuw nsw i64 %indvars.iv3217.a, 1 ; 2 uses
  %exitcond3221.not = icmp eq i64 %indvars.iv.next3218.a, %wide.trip.count3220
  br i1 %exitcond3221.not, label %._crit_edge2850.split, label %.lr.ph2844, !llvm.loop !58

._crit_edge2850.split:                            ; preds = %._crit_edge2845
  store i32 %i.ako, ptr %i.at, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #9
  %i.alc = call double @frexp(double noundef %i.ajx, ptr noundef nonnull %i.v) #9 ; 0 uses
  %i.ald = load i32, ptr %i.v, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #9
  %.not.i2277 = icmp eq i32 %i.ald, 0
  br i1 %.not.i2277, label %dpow_ui.exit2290, label %bb.di

bb.di:                                            ; preds = %._crit_edge2850.split
  %i.ale = icmp slt i32 %i.ald, 0
  %spec.select.i2278 = select i1 %i.ale, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2279 = call i32 @llvm.abs.i32(i32 %i.ald, i1 true)
  %i.alf = zext nneg i32 %spec.select19.i2279 to i64 ; 2 uses
  %i.alg = and i64 %i.alf, 1
  %.not1721.i2280 = icmp eq i64 %i.alg, 0
  %spec.select2022.i2281 = select i1 %.not1721.i2280, double 1.000000e+00, double %spec.select.i2278 ; 2 uses
  %i.alh = lshr i64 %i.alf, 1                     ; 2 uses
  %.not1823.i2282 = icmp eq i64 %i.alh, 0
  br i1 %.not1823.i2282, label %dpow_ui.exit2290, label %.lr.ph.i2283

.lr.ph.i2283:                                     ; preds = %bb.di, %.lr.ph.i2283
  %i.ali = phi i64 [ %i.alm, %.lr.ph.i2283 ], [ %i.alh, %bb.di ] ; 2 uses
  %spec.select2025.i2284 = phi double [ %spec.select20.i2287, %.lr.ph.i2283 ], [ %spec.select2022.i2281, %bb.di ] ; 2 uses
  %.11424.i2285 = phi double [ %i.alj, %.lr.ph.i2283 ], [ %spec.select.i2278, %bb.di ] ; 2 uses
  %i.alj = fmul double %.11424.i2285, %.11424.i2285 ; 2 uses
  %i.alk = and i64 %i.ali, 1
  %.not17.i2286 = icmp eq i64 %i.alk, 0
  %i.all = fmul double %spec.select2025.i2284, %i.alj
  %spec.select20.i2287 = select i1 %.not17.i2286, double %spec.select2025.i2284, double %i.all ; 2 uses
  %i.alm = lshr i64 %i.ali, 1                     ; 2 uses
  %.not18.i2288 = icmp eq i64 %i.alm, 0
  br i1 %.not18.i2288, label %dpow_ui.exit2290, label %.lr.ph.i2283

dpow_ui.exit2290:                                 ; preds = %.lr.ph.i2283, %._crit_edge2850.split, %bb.di
  %.2.i2289 = phi double [ 1.000000e+00, %._crit_edge2850.split ], [ %spec.select2022.i2281, %bb.di ], [ %spec.select20.i2287, %.lr.ph.i2283 ]
  %i.aln = fdiv double %i.aji, %.2.i2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #9
  %i.alo = call double @frexp(double noundef %i.ajx, ptr noundef nonnull %i.u) #9 ; 0 uses
  %i.alp = load i32, ptr %i.u, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #9
  %.not.i2291 = icmp eq i32 %i.alp, 0
  br i1 %.not.i2291, label %dpow_ui.exit2304, label %bb.dj

bb.dj:                                            ; preds = %dpow_ui.exit2290
  %i.alq = icmp slt i32 %i.alp, 0
  %spec.select.i2292 = select i1 %i.alq, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2293 = call i32 @llvm.abs.i32(i32 %i.alp, i1 true)
  %i.alr = zext nneg i32 %spec.select19.i2293 to i64 ; 2 uses
  %i.als = and i64 %i.alr, 1
  %.not1721.i2294 = icmp eq i64 %i.als, 0
  %spec.select2022.i2295 = select i1 %.not1721.i2294, double 1.000000e+00, double %spec.select.i2292 ; 2 uses
  %i.alt = lshr i64 %i.alr, 1                     ; 2 uses
  %.not1823.i2296 = icmp eq i64 %i.alt, 0
  br i1 %.not1823.i2296, label %dpow_ui.exit2304, label %.lr.ph.i2297

.lr.ph.i2297:                                     ; preds = %bb.dj, %.lr.ph.i2297
  %i.alu = phi i64 [ %i.aly, %.lr.ph.i2297 ], [ %i.alt, %bb.dj ] ; 2 uses
  %spec.select2025.i2298 = phi double [ %spec.select20.i2301, %.lr.ph.i2297 ], [ %spec.select2022.i2295, %bb.dj ] ; 2 uses
  %.11424.i2299 = phi double [ %i.alv, %.lr.ph.i2297 ], [ %spec.select.i2292, %bb.dj ] ; 2 uses
  %i.alv = fmul double %.11424.i2299, %.11424.i2299 ; 2 uses
  %i.alw = and i64 %i.alu, 1
  %.not17.i2300 = icmp eq i64 %i.alw, 0
  %i.alx = fmul double %spec.select2025.i2298, %i.alv
  %spec.select20.i2301 = select i1 %.not17.i2300, double %spec.select2025.i2298, double %i.alx ; 2 uses
  %i.aly = lshr i64 %i.alu, 1                     ; 2 uses
  %.not18.i2302 = icmp eq i64 %i.aly, 0
  br i1 %.not18.i2302, label %dpow_ui.exit2304, label %.lr.ph.i2297

dpow_ui.exit2304:                                 ; preds = %.lr.ph.i2297, %dpow_ui.exit2290, %bb.dj
  %.2.i2303 = phi double [ 1.000000e+00, %dpow_ui.exit2290 ], [ %spec.select2022.i2295, %bb.dj ], [ %spec.select20.i2301, %.lr.ph.i2297 ]
  %i.alz = fdiv double %i.ajx, %.2.i2303          ; 2 uses
  store double %i.alz, ptr %i.bb, align 8, !tbaa !9
  br label %bb.dk

bb.dk:                                            ; preds = %dpow_ui.exit2304, %bb.dd
  %i.ama = phi double [ %i.alz, %dpow_ui.exit2304 ], [ %i.ajx, %bb.dd ] ; 5 uses
  %.31793 = phi double [ %i.aln, %dpow_ui.exit2304 ], [ %i.aji, %bb.dd ] ; 3 uses
  %.15 = phi double [ %i.akl, %dpow_ui.exit2304 ], [ %.142861, %bb.dd ] ; 2 uses
  %i.amb = load double, ptr %i.ay, align 8, !tbaa !9
  %i.amc = fmul double %i.ama, %i.amb
  store double %i.amc, ptr %i.ay, align 8, !tbaa !9
  %i.amd = load double, ptr %i.az, align 8, !tbaa !9
  %i.ame = fmul double %i.ama, %i.amd
  store double %i.ame, ptr %i.az, align 8, !tbaa !9
  %i.amf = load double, ptr %gep3612, align 8, !tbaa !9
  %i.amg = fdiv double %.31793, %i.amf
  %i.amh = fmul double %i.ama, %i.amg             ; 2 uses
  store double %i.amh, ptr %i.av, align 8, !tbaa !9
  %i.ami = fcmp une double %i.amh, 1.000000e+00
  br i1 %i.ami, label %bb.dl, label %.loopexit2596

bb.dl:                                            ; preds = %bb.dk
  store i32 %i.ait, ptr %i.ar, align 4, !tbaa !8
  br i1 %.not19512851.not, label %.lr.ph2854, label %.loopexit2596

.lr.ph2854:                                       ; preds = %bb.dl, %.lr.ph2854
  %indvars.iv3222 = phi i64 [ %indvars.iv.next3223.a, %.lr.ph2854 ], [ %i.aiu, %bb.dl ] ; 3 uses
  store i32 %i.acg, ptr %i.as, align 4, !tbaa !8
  %i.amj = mul nsw i64 %indvars.iv3222, %i.abv
  %gep3600 = getelementptr [8 x i8], ptr %invariant.gep3599.a, i64 %i.amj
  call void @dscal_(ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, ptr noundef %gep3600, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3223.a = add nsw i64 %indvars.iv3222, 1
  %i.amk = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.aml = sext i32 %i.amk to i64
  %.not1951.not = icmp slt i64 %indvars.iv3222, %i.aml
  br i1 %.not1951.not, label %.lr.ph2854, label %.loopexit2596.loopexit, !llvm.loop !59

.loopexit2596.loopexit:                           ; preds = %.lr.ph2854
  %.pre3337 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2596

.loopexit2596:                                    ; preds = %.loopexit2596.loopexit, %bb.dl, %bb.dk
  %i.amm = phi double [ %.pre3337, %.loopexit2596.loopexit ], [ %i.ama, %bb.dl ], [ %i.ama, %bb.dk ] ; 3 uses
  %i.amn = load double, ptr %gep3606, align 8, !tbaa !9
  %i.amo = fdiv double %.31793, %i.amn
  %i.amp = fmul double %i.amo, %i.amm             ; 2 uses
  store double %i.amp, ptr %i.av, align 8, !tbaa !9
  %i.amq = fcmp une double %i.amp, 1.000000e+00
  br i1 %i.amq, label %bb.dm, label %.loopexit2595

bb.dm:                                            ; preds = %.loopexit2596
  %i.amr = add nsw i32 %i.aix, -1
  store i32 %i.amr, ptr %i.ar, align 4, !tbaa !8
  %.not19522855.not = icmp slt i32 %i.aiv, %i.aix
  br i1 %.not19522855.not, label %.lr.ph2858.preheader, label %.loopexit2595

.lr.ph2858.preheader:                             ; preds = %bb.dm
  %i.ams = sext i32 %i.aiv to i64
  br label %.lr.ph2858

.lr.ph2858:                                       ; preds = %.lr.ph2858.preheader, %.lr.ph2858
  %indvars.iv3225 = phi i64 [ %i.ams, %.lr.ph2858.preheader ], [ %indvars.iv.next3226, %.lr.ph2858 ] ; 3 uses
  store i32 %i.acg, ptr %i.as, align 4, !tbaa !8
  %i.amt = mul nsw i64 %indvars.iv3225, %i.abv
  %gep3602 = getelementptr [8 x i8], ptr %invariant.gep3601, i64 %i.amt
  call void @dscal_(ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, ptr noundef %gep3602, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3226 = add nsw i64 %indvars.iv3225, 1
  %i.amu = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.amv = sext i32 %i.amu to i64
  %.not1952.not = icmp slt i64 %indvars.iv3225, %i.amv
  br i1 %.not1952.not, label %.lr.ph2858, label %.loopexit2595.loopexit, !llvm.loop !60

.loopexit2595.loopexit:                           ; preds = %.lr.ph2858
  %.pre3338.a = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2595

.loopexit2595:                                    ; preds = %.loopexit2595.loopexit, %bb.dm, %.loopexit2596
  %i.amw = phi double [ %.pre3338.a, %.loopexit2595.loopexit ], [ %i.amm, %bb.dm ], [ %i.amm, %.loopexit2596 ]
  %i.amx = fmul double %.31793, %i.amw            ; 2 uses
  store double %i.amx, ptr %gep3612, align 8, !tbaa !9
  store double %i.amx, ptr %gep3606, align 8, !tbaa !9
  store i32 %i.acg, ptr %i.ar, align 4, !tbaa !8
  store i32 %i.aiy, ptr %i.as, align 4, !tbaa !8
  store i32 %i.act, ptr %i.at, align 4, !tbaa !8
  store double %i.abs, ptr %i.au, align 8, !tbaa !9
  %i.amy = mul nsw i32 %i.aiv, %i.bf
  %i.amz = add nsw i32 %i.amy, %i.acq
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ana
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef %i.ada, ptr noundef nonnull %10, ptr noundef %i.anb, ptr noundef nonnull %8, ptr noundef nonnull @c_b32, ptr noundef %i.ajc, ptr noundef nonnull %10) #9
  %indvars.iv.next3231 = add nuw nsw i64 %indvars.iv3230, 1
  %i.anc = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.and = sext i32 %i.anc to i64
  %.not1949.not = icmp slt i64 %indvars.iv3230, %i.and
  br i1 %.not1949.not, label %bb.dd, label %.loopexit2599, !llvm.loop !61

bb.dn:                                            ; preds = %bb.ck
  %or.cond5 = select i1 %i.ct, i1 true, i1 %i.qc
  br i1 %or.cond5, label %bb.ep, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %.01789, ptr %i.ao, align 4, !tbaa !8
  br i1 %.not1915265134733478, label %.loopexit2594, label %.lr.ph2734

.lr.ph2734:                                       ; preds = %bb.do
  %i.ane = icmp sgt i32 %.01788346534723480, 0
  %i.anf = add i32 %i.bc, 1
  %i.ang = fneg double %i.qb
  br i1 %i.ane, label %.lr.ph2728.us.preheader, label %.loopexit2594

.lr.ph2728.us.preheader:                          ; preds = %.lr.ph2734
  %i.anh = sext i32 %i.bm to i64                  ; 7 uses
  %i.ani = add nuw nsw i32 %.01788346534723480, 1 ; 3 uses
  %i.anj = sext i32 %i.bi to i64                  ; 4 uses
  %i.ank = zext nneg i32 %i.pz to i64
  %i.anl = zext nneg i32 %.01788346534723480 to i64
  %i.anm = zext nneg i32 %.01788346534723480 to i64
  %i.ann = zext nneg i32 %.01789 to i64
  %invariant.gep3553.a = getelementptr [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3079 = zext nneg i32 %i.ani to i64
  %wide.trip.count3074 = zext nneg i32 %.pre-phi.a to i64
  %wide.trip.count3089 = zext nneg i32 %i.ani to i64
  %wide.trip.count3084 = zext nneg i32 %.pre-phi.a to i64
  %invariant.gep3547.a = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3110 = zext nneg i32 %i.ani to i64
  %wide.trip.count3105 = zext nneg i32 %.pre-phi.a to i64
  br label %.lr.ph2728.us

.lr.ph2728.us:                                    ; preds = %.lr.ph2728.us.preheader, %..loopexit2617_crit_edge.us
  %indvars.iv3124.a = phi i64 [ 1, %.lr.ph2728.us.preheader ], [ %indvars.iv.next3125.a, %..loopexit2617_crit_edge.us ] ; 8 uses
  %indvars.iv3097 = phi i64 [ 2, %.lr.ph2728.us.preheader ], [ %indvars.iv.next3098, %..loopexit2617_crit_edge.us ] ; 2 uses
  %.162732.us = phi double [ 1.000000e+00, %.lr.ph2728.us.preheader ], [ %.20.lcssa.us, %..loopexit2617_crit_edge.us ]
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3124.a
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !8 ; 6 uses
  %indvars.iv.next3125.a = add nuw nsw i64 %indvars.iv3124.a, 1
  %i.anq = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3124.a
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !8
  %i.ans = sub nsw i32 %i.anr, %i.anp             ; 8 uses
  %i.ant = mul i32 %i.anp, %i.anf
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.anu
  %i.anw = add nuw nsw i64 %indvars.iv3124.a, %i.anm
  %i.anx = mul nsw i64 %i.anw, %i.anh
  %i.any = sext i32 %i.anp to i64                 ; 3 uses
  %invariant.gep3555.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3124.a
  %.not19202694.us.not = icmp samesign ult i64 %indvars.iv3124.a, %i.ann
  %invariant.gep3539 = getelementptr [8 x i8], ptr %i.bo, i64 %i.anx
  %invariant.gep3533.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.any
  %invariant.gep3549.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3124.a
  %invariant.gep3543.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.any
  %invariant.gep3545 = getelementptr [8 x i8], ptr %i.bk, i64 %i.any
  br label %bb.dp

bb.dp:                                            ; preds = %.loopexit2615.us, %.lr.ph2728.us
  %indvars.iv3121 = phi i64 [ %i.anl, %.lr.ph2728.us ], [ %indvars.iv.next3122, %.loopexit2615.us ] ; 5 uses
  %.172726.us = phi double [ %.162732.us, %.lr.ph2728.us ], [ %.23.us, %.loopexit2615.us ] ; 2 uses
  %gep3554.a = getelementptr [4 x i8], ptr %invariant.gep3553.a, i64 %indvars.iv3121 ; 2 uses
  %i.anz = load i32, ptr %gep3554.a, align 4, !tbaa !8 ; 9 uses
  %i.aoa = getelementptr i8, ptr %gep3554.a, i64 4
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !8 ; 6 uses
  store i32 %i.ans, ptr %i.ap, align 4, !tbaa !8
  %i.aoc = sub nsw i32 %i.aob, %i.anz             ; 5 uses
  store i32 %i.aoc, ptr %i.aq, align 4, !tbaa !8
  %i.aod = mul nsw i32 %i.anz, %i.bf              ; 2 uses
  %i.aoe = add nsw i32 %i.aod, %i.anz
  %i.aof = sext i32 %i.aoe to i64
  %i.aog = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.aof
  %i.aoh = mul nsw i32 %i.anz, %i.bi              ; 2 uses
  %i.aoi = add nsw i32 %i.aoh, %i.anp
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aoj ; 4 uses
  call void @dtrsyl_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef %i.anv, ptr noundef nonnull %6, ptr noundef %i.aog, ptr noundef nonnull %8, ptr noundef %i.aok, ptr noundef nonnull %10, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #9
  %i.aol = load i32, ptr %16, align 4, !tbaa !8
  %i.aom = load i32, ptr %i.ba, align 4, !tbaa !8
  %.1998.us = call i32 @llvm.smax.i32(i32 %i.aol, i32 %i.aom)
  store i32 %.1998.us, ptr %16, align 4, !tbaa !8
  %i.aon = load double, ptr %i.bb, align 8, !tbaa !9 ; 5 uses
  %i.aoo = mul nsw i64 %indvars.iv3121, %i.anh    ; 2 uses
  %gep3556.a = getelementptr [8 x i8], ptr %invariant.gep3555.a, i64 %i.aoo ; 8 uses
  %i.aop = load double, ptr %gep3556.a, align 8, !tbaa !9
  %i.aoq = fmul double %i.aon, %i.aop             ; 2 uses
  store double %i.aoq, ptr %gep3556.a, align 8, !tbaa !9
  %i.aor = fmul double %i.aon, %i.aoq
  %i.aos = fcmp oeq double %i.aor, 0.000000e+00
  br i1 %i.aos, label %bb.dq, label %..loopexit2616_crit_edge.split.us

bb.dq:                                            ; preds = %bb.dp
  %i.aot = fcmp oeq double %i.aon, 0.000000e+00
  br i1 %i.aot, label %.lr.ph2675.split.us, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #9
  %i.aou = call double @frexp(double noundef %i.aon, ptr noundef nonnull %i.t) #9 ; 0 uses
  %i.aov = load i32, ptr %i.t, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #9
  %.not.i2305.us = icmp eq i32 %i.aov, 0
  br i1 %.not.i2305.us, label %dpow_ui.exit2318.us, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aow = icmp slt i32 %i.aov, 0
  %spec.select.i2306.us = select i1 %i.aow, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2307.us = call i32 @llvm.abs.i32(i32 %i.aov, i1 true)
  %i.aox = zext nneg i32 %spec.select19.i2307.us to i64 ; 2 uses
  %i.aoy = and i64 %i.aox, 1
  %.not1721.i2308.us = icmp eq i64 %i.aoy, 0
  %spec.select2022.i2309.us = select i1 %.not1721.i2308.us, double 1.000000e+00, double %spec.select.i2306.us ; 2 uses
  %i.aoz = lshr i64 %i.aox, 1                     ; 2 uses
  %.not1823.i2310.us = icmp eq i64 %i.aoz, 0
  br i1 %.not1823.i2310.us, label %dpow_ui.exit2318.us, label %.lr.ph.i2311.us

.lr.ph.i2311.us:                                  ; preds = %bb.ds, %.lr.ph.i2311.us
  %i.apa = phi i64 [ %i.ape, %.lr.ph.i2311.us ], [ %i.aoz, %bb.ds ] ; 2 uses
  %spec.select2025.i2312.us = phi double [ %spec.select20.i2315.us, %.lr.ph.i2311.us ], [ %spec.select2022.i2309.us, %bb.ds ] ; 2 uses
  %.11424.i2313.us = phi double [ %i.apb, %.lr.ph.i2311.us ], [ %spec.select.i2306.us, %bb.ds ] ; 2 uses
  %i.apb = fmul double %.11424.i2313.us, %.11424.i2313.us ; 2 uses
  %i.apc = and i64 %i.apa, 1
  %.not17.i2314.us = icmp eq i64 %i.apc, 0
  %i.apd = fmul double %spec.select2025.i2312.us, %i.apb
  %spec.select20.i2315.us = select i1 %.not17.i2314.us, double %spec.select2025.i2312.us, double %i.apd ; 2 uses
  %i.ape = lshr i64 %i.apa, 1                     ; 2 uses
  %.not18.i2316.us = icmp eq i64 %i.ape, 0
  br i1 %.not18.i2316.us, label %dpow_ui.exit2318.us, label %.lr.ph.i2311.us

dpow_ui.exit2318.us:                              ; preds = %.lr.ph.i2311.us, %bb.ds, %bb.dr
  %.2.i2317.us = phi double [ 1.000000e+00, %bb.dr ], [ %spec.select2022.i2309.us, %bb.ds ], [ %spec.select20.i2315.us, %.lr.ph.i2311.us ]
  %i.apf = fmul double %.172726.us, %.2.i2317.us
  br label %.lr.ph2675.split.us

.lr.ph2670.us:                                    ; preds = %.lr.ph2675.split.us, %._crit_edge2671.us
  %indvars.iv3076 = phi i64 [ 1, %.lr.ph2675.split.us ], [ %indvars.iv.next3077, %._crit_edge2671.us ] ; 2 uses
  %i.apg = mul nsw i64 %indvars.iv3076, %i.anh
  %invariant.gep3529.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.apg
  br label %bb.dt

bb.dt:                                            ; preds = %dpow_ui.exit2332.us, %.lr.ph2670.us
  %indvars.iv3071 = phi i64 [ %indvars.iv.next3072, %dpow_ui.exit2332.us ], [ 1, %.lr.ph2670.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  %i.aph = call double @frexp(double noundef %i.aon, ptr noundef nonnull %i.s) #9 ; 0 uses
  %i.api = load i32, ptr %i.s, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  %gep3530.a = getelementptr [8 x i8], ptr %invariant.gep3529.a, i64 %indvars.iv3071 ; 2 uses
  %i.apj = load double, ptr %gep3530.a, align 8, !tbaa !9
  %.not.i2319.us = icmp eq i32 %i.api, 0
  br i1 %.not.i2319.us, label %dpow_ui.exit2332.us, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.apk = icmp slt i32 %i.api, 0
  %spec.select.i2320.us = select i1 %i.apk, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2321.us = call i32 @llvm.abs.i32(i32 %i.api, i1 true)
  %i.apl = zext nneg i32 %spec.select19.i2321.us to i64 ; 2 uses
  %i.apm = and i64 %i.apl, 1
  %.not1721.i2322.us = icmp eq i64 %i.apm, 0
  %spec.select2022.i2323.us = select i1 %.not1721.i2322.us, double 1.000000e+00, double %spec.select.i2320.us ; 2 uses
  %i.apn = lshr i64 %i.apl, 1                     ; 2 uses
  %.not1823.i2324.us = icmp eq i64 %i.apn, 0
  br i1 %.not1823.i2324.us, label %dpow_ui.exit2332.us, label %.lr.ph.i2325.us

.lr.ph.i2325.us:                                  ; preds = %bb.du, %.lr.ph.i2325.us
  %i.apo = phi i64 [ %i.aps, %.lr.ph.i2325.us ], [ %i.apn, %bb.du ] ; 2 uses
  %spec.select2025.i2326.us = phi double [ %spec.select20.i2329.us, %.lr.ph.i2325.us ], [ %spec.select2022.i2323.us, %bb.du ] ; 2 uses
  %.11424.i2327.us = phi double [ %i.app, %.lr.ph.i2325.us ], [ %spec.select.i2320.us, %bb.du ] ; 2 uses
  %i.app = fmul double %.11424.i2327.us, %.11424.i2327.us ; 2 uses
  %i.apq = and i64 %i.apo, 1
  %.not17.i2328.us = icmp eq i64 %i.apq, 0
  %i.apr = fmul double %spec.select2025.i2326.us, %i.app
  %spec.select20.i2329.us = select i1 %.not17.i2328.us, double %spec.select2025.i2326.us, double %i.apr ; 2 uses
  %i.aps = lshr i64 %i.apo, 1                     ; 2 uses
  %.not18.i2330.us = icmp eq i64 %i.aps, 0
  br i1 %.not18.i2330.us, label %dpow_ui.exit2332.us, label %.lr.ph.i2325.us

dpow_ui.exit2332.us:                              ; preds = %.lr.ph.i2325.us, %bb.du, %bb.dt
  %.2.i2331.us = phi double [ 1.000000e+00, %bb.dt ], [ %spec.select2022.i2323.us, %bb.du ], [ %spec.select20.i2329.us, %.lr.ph.i2325.us ]
  %i.apt = fdiv double %i.apj, %.2.i2331.us       ; 2 uses
  %i.apu = fcmp ole double %i.ic, %i.apt
  %i.apv = select i1 %i.apu, double %i.ic, double %i.apt
  store double %i.apv, ptr %gep3530.a, align 8, !tbaa !9
  %indvars.iv.next3072 = add nuw nsw i64 %indvars.iv3071, 1 ; 2 uses
  %exitcond3075.not = icmp eq i64 %indvars.iv.next3072, %wide.trip.count3074
  br i1 %exitcond3075.not, label %._crit_edge2671.us, label %bb.dt, !llvm.loop !62

..loopexit2616_crit_edge.split.us:                ; preds = %..loopexit2616_crit_edge.us, %bb.dp
  %.19.us = phi double [ %.172726.us, %bb.dp ], [ %.18.us, %..loopexit2616_crit_edge.us ] ; 2 uses
  store i32 %i.ans, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.aoc, ptr %i.aq, align 4, !tbaa !8
  %i.apw = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef %i.aok, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  store double %i.apw, ptr %i.az, align 8, !tbaa !9
  store i32 %.01789, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19202694.us.not, label %.lr.ph2698.us, label %._crit_edge2699.us

bb.dv:                                            ; preds = %.lr.ph2698.us, %.loopexit2613.us
  %indvars.iv3099.a = phi i64 [ %indvars.iv3097, %.lr.ph2698.us ], [ %indvars.iv.next3100.a, %.loopexit2613.us ] ; 6 uses
  %.202696.us = phi double [ %.19.us, %.lr.ph2698.us ], [ %.21.us, %.loopexit2613.us ] ; 2 uses
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3099.a
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !8 ; 4 uses
  %indvars.iv.next3100.a = add nuw nsw i64 %indvars.iv3099.a, 1
  %i.apz = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3099.a
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !8
  %i.aqb = sub nsw i32 %i.aqa, %i.apy             ; 3 uses
  store i32 %i.aqb, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.aoc, ptr %i.ar, align 4, !tbaa !8
  %i.aqc = add nsw i32 %i.apy, %i.aoh
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aqd ; 2 uses
  %i.aqf = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef %i.aqe, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  %gep3538.a = getelementptr [8 x i8], ptr %invariant.gep3537, i64 %indvars.iv3099.a ; 3 uses
  %i.aqg = load double, ptr %gep3538.a, align 8, !tbaa !9 ; 4 uses
  store double %i.aqg, ptr %i.au, align 8, !tbaa !9
  %i.aqh = load double, ptr %gep3556.a, align 8, !tbaa !9 ; 3 uses
  %i.aqi = fcmp ole double %i.aqg, %i.aqh
  %i.aqj = select i1 %i.aqi, double %i.aqg, double %i.aqh ; 4 uses
  %i.aqk = load double, ptr %i.az, align 8, !tbaa !9
  %i.aql = insertelement <2 x double> poison, double %i.aqj, i64 0
  %i.aqm = shufflevector <2 x double> %i.aql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqn = insertelement <2 x double> poison, double %i.aqg, i64 0
  %i.aqo = insertelement <2 x double> %i.aqn, double %i.aqh, i64 1
  %i.aqp = fdiv <2 x double> %i.aqm, %i.aqo
  %i.aqq = insertelement <2 x double> poison, double %i.aqf, i64 0
  %i.aqr = insertelement <2 x double> %i.aqq, double %i.aqk, i64 1
  %i.aqs = fmul <2 x double> %i.aqr, %i.aqp       ; 2 uses
  %i.aqt = extractelement <2 x double> %i.aqs, i64 0
  store double %i.aqt, ptr %i.ay, align 8, !tbaa !9
  %i.aqu = extractelement <2 x double> %i.aqs, i64 1
  store double %i.aqu, ptr %i.az, align 8, !tbaa !9
  %gep3540.a = getelementptr [8 x i8], ptr %invariant.gep3539, i64 %indvars.iv3099.a
  %i.aqv = load double, ptr %gep3540.a, align 8, !tbaa !9
  store double %i.aqv, ptr %i.aw, align 8, !tbaa !9
  %i.aqw = call double @dlarmm_(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ay) #9 ; 8 uses
  store double %i.aqw, ptr %i.bb, align 8, !tbaa !9
  %i.aqx = fmul double %i.aqj, %i.aqw
  %i.aqy = fcmp oeq double %i.aqx, 0.000000e+00
  br i1 %i.aqy, label %bb.dw, label %bb.ec

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  %i.aqz = call double @frexp(double noundef %i.aqw, ptr noundef nonnull %i.r) #9 ; 0 uses
  %i.ara = load i32, ptr %i.r, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #9
  %.not.i2333.us = icmp eq i32 %i.ara, 0
  br i1 %.not.i2333.us, label %.lr.ph2684.split.us, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.arb = icmp slt i32 %i.ara, 0
  %spec.select.i2334.us = select i1 %i.arb, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2335.us = call i32 @llvm.abs.i32(i32 %i.ara, i1 true)
  %i.arc = zext nneg i32 %spec.select19.i2335.us to i64 ; 2 uses
  %i.ard = and i64 %i.arc, 1
  %.not1721.i2336.us = icmp eq i64 %i.ard, 0
  %spec.select2022.i2337.us = select i1 %.not1721.i2336.us, double 1.000000e+00, double %spec.select.i2334.us ; 2 uses
  %i.are = lshr i64 %i.arc, 1                     ; 2 uses
  %.not1823.i2338.us = icmp eq i64 %i.are, 0
  br i1 %.not1823.i2338.us, label %.lr.ph2684.split.us, label %.lr.ph.i2339.us

.lr.ph.i2339.us:                                  ; preds = %bb.dx, %.lr.ph.i2339.us
  %i.arf = phi i64 [ %i.arj, %.lr.ph.i2339.us ], [ %i.are, %bb.dx ] ; 2 uses
  %spec.select2025.i2340.us = phi double [ %spec.select20.i2343.us, %.lr.ph.i2339.us ], [ %spec.select2022.i2337.us, %bb.dx ] ; 2 uses
  %.11424.i2341.us = phi double [ %i.arg, %.lr.ph.i2339.us ], [ %spec.select.i2334.us, %bb.dx ] ; 2 uses
  %i.arg = fmul double %.11424.i2341.us, %.11424.i2341.us ; 2 uses
  %i.arh = and i64 %i.arf, 1
  %.not17.i2342.us = icmp eq i64 %i.arh, 0
  %i.ari = fmul double %spec.select2025.i2340.us, %i.arg
  %spec.select20.i2343.us = select i1 %.not17.i2342.us, double %spec.select2025.i2340.us, double %i.ari ; 2 uses
  %i.arj = lshr i64 %i.arf, 1                     ; 2 uses
  %.not18.i2344.us = icmp eq i64 %i.arj, 0
  br i1 %.not18.i2344.us, label %.lr.ph2684.split.us, label %.lr.ph.i2339.us

.lr.ph2679.us:                                    ; preds = %.lr.ph2684.split.us, %._crit_edge2680.us
  %indvars.iv3086.a = phi i64 [ 1, %.lr.ph2684.split.us ], [ %indvars.iv.next3087, %._crit_edge2680.us ] ; 2 uses
  %i.ark = mul nsw i64 %indvars.iv3086.a, %i.anh
  %invariant.gep3531 = getelementptr [8 x i8], ptr %i.bo, i64 %i.ark
  br label %bb.dy

bb.dy:                                            ; preds = %dpow_ui.exit2360.us, %.lr.ph2679.us
  %indvars.iv3081 = phi i64 [ %indvars.iv.next3082, %dpow_ui.exit2360.us ], [ 1, %.lr.ph2679.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  %i.arl = call double @frexp(double noundef %i.aqw, ptr noundef nonnull %i.q) #9 ; 0 uses
  %i.arm = load i32, ptr %i.q, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  %gep3532 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %indvars.iv3081 ; 2 uses
  %i.arn = load double, ptr %gep3532, align 8, !tbaa !9
  %.not.i2347.us = icmp eq i32 %i.arm, 0
  br i1 %.not.i2347.us, label %dpow_ui.exit2360.us, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aro = icmp slt i32 %i.arm, 0
  %spec.select.i2348.us = select i1 %i.aro, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2349.us = call i32 @llvm.abs.i32(i32 %i.arm, i1 true)
  %i.arp = zext nneg i32 %spec.select19.i2349.us to i64 ; 2 uses
  %i.arq = and i64 %i.arp, 1
  %.not1721.i2350.us = icmp eq i64 %i.arq, 0
  %spec.select2022.i2351.us = select i1 %.not1721.i2350.us, double 1.000000e+00, double %spec.select.i2348.us ; 2 uses
  %i.arr = lshr i64 %i.arp, 1                     ; 2 uses
  %.not1823.i2352.us = icmp eq i64 %i.arr, 0
  br i1 %.not1823.i2352.us, label %dpow_ui.exit2360.us, label %.lr.ph.i2353.us

.lr.ph.i2353.us:                                  ; preds = %bb.dz, %.lr.ph.i2353.us
  %i.ars = phi i64 [ %i.arw, %.lr.ph.i2353.us ], [ %i.arr, %bb.dz ] ; 2 uses
  %spec.select2025.i2354.us = phi double [ %spec.select20.i2357.us, %.lr.ph.i2353.us ], [ %spec.select2022.i2351.us, %bb.dz ] ; 2 uses
  %.11424.i2355.us = phi double [ %i.art, %.lr.ph.i2353.us ], [ %spec.select.i2348.us, %bb.dz ] ; 2 uses
  %i.art = fmul double %.11424.i2355.us, %.11424.i2355.us ; 2 uses
  %i.aru = and i64 %i.ars, 1
  %.not17.i2356.us = icmp eq i64 %i.aru, 0
  %i.arv = fmul double %spec.select2025.i2354.us, %i.art
  %spec.select20.i2357.us = select i1 %.not17.i2356.us, double %spec.select2025.i2354.us, double %i.arv ; 2 uses
  %i.arw = lshr i64 %i.ars, 1                     ; 2 uses
  %.not18.i2358.us = icmp eq i64 %i.arw, 0
  br i1 %.not18.i2358.us, label %dpow_ui.exit2360.us, label %.lr.ph.i2353.us

dpow_ui.exit2360.us:                              ; preds = %.lr.ph.i2353.us, %bb.dz, %bb.dy
  %.2.i2359.us = phi double [ 1.000000e+00, %bb.dy ], [ %spec.select2022.i2351.us, %bb.dz ], [ %spec.select20.i2357.us, %.lr.ph.i2353.us ]
  %i.arx = fdiv double %i.arn, %.2.i2359.us       ; 2 uses
  %i.ary = fcmp ole double %i.ic, %i.arx
  %i.arz = select i1 %i.ary, double %i.ic, double %i.arx
  store double %i.arz, ptr %gep3532, align 8, !tbaa !9
  %indvars.iv.next3082 = add nuw nsw i64 %indvars.iv3081, 1 ; 2 uses
  %exitcond3085.not = icmp eq i64 %indvars.iv.next3082, %wide.trip.count3084
  br i1 %exitcond3085.not, label %._crit_edge2680.us, label %bb.dy, !llvm.loop !63

bb.ea:                                            ; preds = %._crit_edge2685.split.us
  %i.asa = icmp slt i32 %i.ayh, 0
  %spec.select.i2362.us = select i1 %i.asa, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2363.us = call i32 @llvm.abs.i32(i32 %i.ayh, i1 true)
  %i.asb = zext nneg i32 %spec.select19.i2363.us to i64 ; 2 uses
  %i.asc = and i64 %i.asb, 1
  %.not1721.i2364.us = icmp eq i64 %i.asc, 0
  %spec.select2022.i2365.us = select i1 %.not1721.i2364.us, double 1.000000e+00, double %spec.select.i2362.us ; 2 uses
  %i.asd = lshr i64 %i.asb, 1                     ; 2 uses
  %.not1823.i2366.us = icmp eq i64 %i.asd, 0
  br i1 %.not1823.i2366.us, label %dpow_ui.exit2374.us, label %.lr.ph.i2367.us

.lr.ph.i2367.us:                                  ; preds = %bb.ea, %.lr.ph.i2367.us
  %i.ase = phi i64 [ %i.asi, %.lr.ph.i2367.us ], [ %i.asd, %bb.ea ] ; 2 uses
  %spec.select2025.i2368.us = phi double [ %spec.select20.i2371.us, %.lr.ph.i2367.us ], [ %spec.select2022.i2365.us, %bb.ea ] ; 2 uses
  %.11424.i2369.us = phi double [ %i.asf, %.lr.ph.i2367.us ], [ %spec.select.i2362.us, %bb.ea ] ; 2 uses
  %i.asf = fmul double %.11424.i2369.us, %.11424.i2369.us ; 2 uses
  %i.asg = and i64 %i.ase, 1
  %.not17.i2370.us = icmp eq i64 %i.asg, 0
  %i.ash = fmul double %spec.select2025.i2368.us, %i.asf
  %spec.select20.i2371.us = select i1 %.not17.i2370.us, double %spec.select2025.i2368.us, double %i.ash ; 2 uses
  %i.asi = lshr i64 %i.ase, 1                     ; 2 uses
  %.not18.i2372.us = icmp eq i64 %i.asi, 0
  br i1 %.not18.i2372.us, label %dpow_ui.exit2374.us, label %.lr.ph.i2367.us

dpow_ui.exit2374.us:                              ; preds = %.lr.ph.i2367.us, %bb.ea, %._crit_edge2685.split.us
  %.2.i2373.us = phi double [ 1.000000e+00, %._crit_edge2685.split.us ], [ %spec.select2022.i2365.us, %bb.ea ], [ %spec.select20.i2371.us, %.lr.ph.i2367.us ]
  %i.asj = fdiv double %i.aqj, %.2.i2373.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  %i.ask = call double @frexp(double noundef %i.aqw, ptr noundef nonnull %i.o) #9 ; 0 uses
  %i.asl = load i32, ptr %i.o, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  %.not.i2375.us = icmp eq i32 %i.asl, 0
  br i1 %.not.i2375.us, label %dpow_ui.exit2388.us, label %bb.eb

bb.eb:                                            ; preds = %dpow_ui.exit2374.us
  %i.asm = icmp slt i32 %i.asl, 0
  %spec.select.i2376.us = select i1 %i.asm, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2377.us = call i32 @llvm.abs.i32(i32 %i.asl, i1 true)
  %i.asn = zext nneg i32 %spec.select19.i2377.us to i64 ; 2 uses
  %i.aso = and i64 %i.asn, 1
  %.not1721.i2378.us = icmp eq i64 %i.aso, 0
  %spec.select2022.i2379.us = select i1 %.not1721.i2378.us, double 1.000000e+00, double %spec.select.i2376.us ; 2 uses
  %i.asp = lshr i64 %i.asn, 1                     ; 2 uses
  %.not1823.i2380.us = icmp eq i64 %i.asp, 0
  br i1 %.not1823.i2380.us, label %dpow_ui.exit2388.us, label %.lr.ph.i2381.us

.lr.ph.i2381.us:                                  ; preds = %bb.eb, %.lr.ph.i2381.us
  %i.asq = phi i64 [ %i.asu, %.lr.ph.i2381.us ], [ %i.asp, %bb.eb ] ; 2 uses
  %spec.select2025.i2382.us = phi double [ %spec.select20.i2385.us, %.lr.ph.i2381.us ], [ %spec.select2022.i2379.us, %bb.eb ] ; 2 uses
  %.11424.i2383.us = phi double [ %i.asr, %.lr.ph.i2381.us ], [ %spec.select.i2376.us, %bb.eb ] ; 2 uses
  %i.asr = fmul double %.11424.i2383.us, %.11424.i2383.us ; 2 uses
  %i.ass = and i64 %i.asq, 1
  %.not17.i2384.us = icmp eq i64 %i.ass, 0
  %i.ast = fmul double %spec.select2025.i2382.us, %i.asr
  %spec.select20.i2385.us = select i1 %.not17.i2384.us, double %spec.select2025.i2382.us, double %i.ast ; 2 uses
  %i.asu = lshr i64 %i.asq, 1                     ; 2 uses
  %.not18.i2386.us = icmp eq i64 %i.asu, 0
  br i1 %.not18.i2386.us, label %dpow_ui.exit2388.us, label %.lr.ph.i2381.us

dpow_ui.exit2388.us:                              ; preds = %.lr.ph.i2381.us, %bb.eb, %dpow_ui.exit2374.us
  %.2.i2387.us = phi double [ 1.000000e+00, %dpow_ui.exit2374.us ], [ %spec.select2022.i2379.us, %bb.eb ], [ %spec.select20.i2385.us, %.lr.ph.i2381.us ]
  %i.asv = fdiv double %i.aqw, %.2.i2387.us       ; 2 uses
  store double %i.asv, ptr %i.bb, align 8, !tbaa !9
  br label %bb.ec

bb.ec:                                            ; preds = %dpow_ui.exit2388.us, %bb.dv
  %i.asw = phi double [ %i.asv, %dpow_ui.exit2388.us ], [ %i.aqw, %bb.dv ] ; 5 uses
  %.41794.us = phi double [ %i.asj, %dpow_ui.exit2388.us ], [ %i.aqj, %bb.dv ] ; 3 uses
  %.21.us = phi double [ %i.ayf, %dpow_ui.exit2388.us ], [ %.202696.us, %bb.dv ] ; 2 uses
end_hunk_0
begin_hunk_1_@dtrsyl3_:bb.a
  %.not17.i2412.us = icmp eq i64 %i.awa, 0
  %i.awb = fmul double %spec.select2025.i2410.us, %i.avz
  %spec.select20.i2413.us = select i1 %.not17.i2412.us, double %spec.select2025.i2410.us, double %i.awb ; 2 uses
  %i.awc = lshr i64 %i.avy, 1                     ; 2 uses
  %.not18.i2414.us = icmp eq i64 %i.awc, 0
  br i1 %.not18.i2414.us, label %dpow_ui.exit2416.us, label %.lr.ph.i2409.us

dpow_ui.exit2416.us:                              ; preds = %.lr.ph.i2409.us, %bb.ej, %bb.ei
  %.2.i2415.us = phi double [ 1.000000e+00, %bb.ei ], [ %spec.select2022.i2407.us, %bb.ej ], [ %spec.select20.i2413.us, %.lr.ph.i2409.us ]
  %i.awd = fdiv double %i.avt, %.2.i2415.us       ; 2 uses
  %i.awe = fcmp ole double %i.ic, %i.awd
  %i.awf = select i1 %i.awe, double %i.ic, double %i.awd
  store double %i.awf, ptr %gep3542, align 8, !tbaa !9
  %indvars.iv.next3103 = add nuw nsw i64 %indvars.iv3102, 1 ; 2 uses
  %exitcond3106.not = icmp eq i64 %indvars.iv.next3103, %wide.trip.count3105
  br i1 %exitcond3106.not, label %._crit_edge2705.us, label %bb.ei, !llvm.loop !67

bb.ek:                                            ; preds = %._crit_edge2710.split.us
  %i.awg = icmp slt i32 %i.aym, 0
  %spec.select.i2418.us = select i1 %i.awg, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2419.us = call i32 @llvm.abs.i32(i32 %i.aym, i1 true)
  %i.awh = zext nneg i32 %spec.select19.i2419.us to i64 ; 2 uses
  %i.awi = and i64 %i.awh, 1
  %.not1721.i2420.us = icmp eq i64 %i.awi, 0
  %spec.select2022.i2421.us = select i1 %.not1721.i2420.us, double 1.000000e+00, double %spec.select.i2418.us ; 2 uses
  %i.awj = lshr i64 %i.awh, 1                     ; 2 uses
  %.not1823.i2422.us = icmp eq i64 %i.awj, 0
  br i1 %.not1823.i2422.us, label %dpow_ui.exit2430.us, label %.lr.ph.i2423.us

.lr.ph.i2423.us:                                  ; preds = %bb.ek, %.lr.ph.i2423.us
  %i.awk = phi i64 [ %i.awo, %.lr.ph.i2423.us ], [ %i.awj, %bb.ek ] ; 2 uses
  %spec.select2025.i2424.us = phi double [ %spec.select20.i2427.us, %.lr.ph.i2423.us ], [ %spec.select2022.i2421.us, %bb.ek ] ; 2 uses
  %.11424.i2425.us = phi double [ %i.awl, %.lr.ph.i2423.us ], [ %spec.select.i2418.us, %bb.ek ] ; 2 uses
  %i.awl = fmul double %.11424.i2425.us, %.11424.i2425.us ; 2 uses
  %i.awm = and i64 %i.awk, 1
  %.not17.i2426.us = icmp eq i64 %i.awm, 0
  %i.awn = fmul double %spec.select2025.i2424.us, %i.awl
  %spec.select20.i2427.us = select i1 %.not17.i2426.us, double %spec.select2025.i2424.us, double %i.awn ; 2 uses
  %i.awo = lshr i64 %i.awk, 1                     ; 2 uses
  %.not18.i2428.us = icmp eq i64 %i.awo, 0
  br i1 %.not18.i2428.us, label %dpow_ui.exit2430.us, label %.lr.ph.i2423.us

dpow_ui.exit2430.us:                              ; preds = %.lr.ph.i2423.us, %bb.ek, %._crit_edge2710.split.us
  %.2.i2429.us = phi double [ 1.000000e+00, %._crit_edge2710.split.us ], [ %spec.select2022.i2421.us, %bb.ek ], [ %spec.select20.i2427.us, %.lr.ph.i2423.us ]
  %i.awp = fdiv double %i.aun, %.2.i2429.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.awq = call double @frexp(double noundef %i.avc, ptr noundef nonnull %i.k) #9 ; 0 uses
  %i.awr = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  %.not.i2431.us = icmp eq i32 %i.awr, 0
  br i1 %.not.i2431.us, label %dpow_ui.exit2444.us, label %bb.el

bb.el:                                            ; preds = %dpow_ui.exit2430.us
  %i.aws = icmp slt i32 %i.awr, 0
  %spec.select.i2432.us = select i1 %i.aws, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2433.us = call i32 @llvm.abs.i32(i32 %i.awr, i1 true)
  %i.awt = zext nneg i32 %spec.select19.i2433.us to i64 ; 2 uses
  %i.awu = and i64 %i.awt, 1
  %.not1721.i2434.us = icmp eq i64 %i.awu, 0
  %spec.select2022.i2435.us = select i1 %.not1721.i2434.us, double 1.000000e+00, double %spec.select.i2432.us ; 2 uses
  %i.awv = lshr i64 %i.awt, 1                     ; 2 uses
  %.not1823.i2436.us = icmp eq i64 %i.awv, 0
  br i1 %.not1823.i2436.us, label %dpow_ui.exit2444.us, label %.lr.ph.i2437.us

.lr.ph.i2437.us:                                  ; preds = %bb.el, %.lr.ph.i2437.us
  %i.aww = phi i64 [ %i.axa, %.lr.ph.i2437.us ], [ %i.awv, %bb.el ] ; 2 uses
  %spec.select2025.i2438.us = phi double [ %spec.select20.i2441.us, %.lr.ph.i2437.us ], [ %spec.select2022.i2435.us, %bb.el ] ; 2 uses
  %.11424.i2439.us = phi double [ %i.awx, %.lr.ph.i2437.us ], [ %spec.select.i2432.us, %bb.el ] ; 2 uses
  %i.awx = fmul double %.11424.i2439.us, %.11424.i2439.us ; 2 uses
  %i.awy = and i64 %i.aww, 1
  %.not17.i2440.us = icmp eq i64 %i.awy, 0
  %i.awz = fmul double %spec.select2025.i2438.us, %i.awx
  %spec.select20.i2441.us = select i1 %.not17.i2440.us, double %spec.select2025.i2438.us, double %i.awz ; 2 uses
  %i.axa = lshr i64 %i.aww, 1                     ; 2 uses
  %.not18.i2442.us = icmp eq i64 %i.axa, 0
  br i1 %.not18.i2442.us, label %dpow_ui.exit2444.us, label %.lr.ph.i2437.us

dpow_ui.exit2444.us:                              ; preds = %.lr.ph.i2437.us, %bb.el, %dpow_ui.exit2430.us
  %.2.i2443.us = phi double [ 1.000000e+00, %dpow_ui.exit2430.us ], [ %spec.select2022.i2435.us, %bb.el ], [ %spec.select20.i2441.us, %.lr.ph.i2437.us ]
  %i.axb = fdiv double %i.avc, %.2.i2443.us       ; 2 uses
  store double %i.axb, ptr %i.bb, align 8, !tbaa !9
  br label %bb.em

bb.em:                                            ; preds = %dpow_ui.exit2444.us, %bb.ef
  %i.axc = phi double [ %i.axb, %dpow_ui.exit2444.us ], [ %i.avc, %bb.ef ] ; 5 uses
  %.51795.us = phi double [ %i.awp, %dpow_ui.exit2444.us ], [ %i.aun, %bb.ef ] ; 3 uses
  %.23.us = phi double [ %i.ayk, %dpow_ui.exit2444.us ], [ %.222721.us, %bb.ef ] ; 2 uses
  %i.axd = load double, ptr %i.ay, align 8, !tbaa !9
  %i.axe = fmul double %i.axc, %i.axd
  store double %i.axe, ptr %i.ay, align 8, !tbaa !9
  %i.axf = load double, ptr %i.az, align 8, !tbaa !9
  %i.axg = fmul double %i.axc, %i.axf
  store double %i.axg, ptr %i.az, align 8, !tbaa !9
  %i.axh = load double, ptr %gep3556.a, align 8, !tbaa !9
  %i.axi = fdiv double %.51795.us, %i.axh
  %i.axj = fmul double %i.axc, %i.axi             ; 2 uses
  store double %i.axj, ptr %i.av, align 8, !tbaa !9
  %i.axk = fcmp une double %i.axj, 1.000000e+00
  br i1 %i.axk, label %bb.en, label %.loopexit2612.us

bb.en:                                            ; preds = %bb.em
  store i32 %i.ayn, ptr %i.aq, align 4, !tbaa !8
  br i1 %.not19232711.us.not, label %.lr.ph2714.us, label %.loopexit2612.us

.lr.ph2714.us:                                    ; preds = %bb.en, %.lr.ph2714.us
  %indvars.iv3112 = phi i64 [ %indvars.iv.next3113, %.lr.ph2714.us ], [ %i.ayo, %bb.en ] ; 3 uses
  store i32 %i.ans, ptr %i.ar, align 4, !tbaa !8
  %i.axl = mul nsw i64 %indvars.iv3112, %i.anj
  %gep3544 = getelementptr [8 x i8], ptr %invariant.gep3543.a, i64 %i.axl
  call void @dscal_(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av, ptr noundef %gep3544, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3113 = add nsw i64 %indvars.iv3112, 1
  %i.axm = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.axn = sext i32 %i.axm to i64
  %.not1923.us.not = icmp slt i64 %indvars.iv3112, %i.axn
  br i1 %.not1923.us.not, label %.lr.ph2714.us, label %.loopexit2612.us.loopexit, !llvm.loop !68

.loopexit2612.us.loopexit:                        ; preds = %.lr.ph2714.us
  %.pre3326 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2612.us

.loopexit2612.us:                                 ; preds = %.loopexit2612.us.loopexit, %bb.en, %bb.em
  %i.axo = phi double [ %.pre3326, %.loopexit2612.us.loopexit ], [ %i.axc, %bb.en ], [ %i.axc, %bb.em ] ; 3 uses
  %i.axp = load double, ptr %gep3550.a, align 8, !tbaa !9
  %i.axq = fdiv double %.51795.us, %i.axp
  %i.axr = fmul double %i.axq, %i.axo             ; 2 uses
  store double %i.axr, ptr %i.av, align 8, !tbaa !9
  %i.axs = fcmp une double %i.axr, 1.000000e+00
  br i1 %i.axs, label %bb.eo, label %.loopexit2611.us

bb.eo:                                            ; preds = %.loopexit2612.us
  %i.axt = add nsw i32 %i.auc, -1
  store i32 %i.axt, ptr %i.aq, align 4, !tbaa !8
  %.not19242715.us.not = icmp slt i32 %i.aua, %i.auc
  br i1 %.not19242715.us.not, label %.lr.ph2718.us.preheader, label %.loopexit2611.us

.lr.ph2718.us.preheader:                          ; preds = %bb.eo
  %i.axu = sext i32 %i.aua to i64
  br label %.lr.ph2718.us

.lr.ph2718.us:                                    ; preds = %.lr.ph2718.us.preheader, %.lr.ph2718.us
  %indvars.iv3115 = phi i64 [ %i.axu, %.lr.ph2718.us.preheader ], [ %indvars.iv.next3116, %.lr.ph2718.us ] ; 3 uses
  store i32 %i.ans, ptr %i.ar, align 4, !tbaa !8
  %i.axv = mul nsw i64 %indvars.iv3115, %i.anj
  %gep3546 = getelementptr [8 x i8], ptr %invariant.gep3545, i64 %i.axv
  call void @dscal_(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av, ptr noundef %gep3546, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3116 = add nsw i64 %indvars.iv3115, 1
  %i.axw = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.axx = sext i32 %i.axw to i64
  %.not1924.us.not = icmp slt i64 %indvars.iv3115, %i.axx
  br i1 %.not1924.us.not, label %.lr.ph2718.us, label %.loopexit2611.us.loopexit, !llvm.loop !69

.loopexit2611.us.loopexit:                        ; preds = %.lr.ph2718.us
  %.pre3327 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2611.us

.loopexit2611.us:                                 ; preds = %.loopexit2611.us.loopexit, %bb.eo, %.loopexit2612.us
  %i.axy = phi double [ %.pre3327, %.loopexit2611.us.loopexit ], [ %i.axo, %bb.eo ], [ %i.axo, %.loopexit2612.us ]
  %i.axz = fmul double %.51795.us, %i.axy         ; 2 uses
  store double %i.axz, ptr %gep3556.a, align 8, !tbaa !9
  store double %i.axz, ptr %gep3550.a, align 8, !tbaa !9
  store i32 %i.ans, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.aud, ptr %i.ar, align 4, !tbaa !8
  store i32 %i.aoc, ptr %i.as, align 4, !tbaa !8
  store double %i.ang, ptr %i.au, align 8, !tbaa !9
  %i.aya = add nsw i32 %i.aua, %i.aod
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ayb
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.au, ptr noundef %i.aok, ptr noundef nonnull %10, ptr noundef %i.ayc, ptr noundef nonnull %8, ptr noundef nonnull @c_b32, ptr noundef %i.auh, ptr noundef nonnull %10) #9
  %indvars.iv.next3119 = add nuw nsw i64 %indvars.iv3118, 1
  %i.ayd = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.aye = sext i32 %i.ayd to i64
  %.not1921.us.not = icmp slt i64 %indvars.iv3118, %i.aye
  br i1 %.not1921.us.not, label %bb.ef, label %.loopexit2615.us, !llvm.loop !70

.loopexit2615.us:                                 ; preds = %.loopexit2611.us
  br label %bb.dp, !llvm.loop !71

._crit_edge2671.us:                               ; preds = %dpow_ui.exit2332.us
  %indvars.iv.next3077 = add nuw nsw i64 %indvars.iv3076, 1 ; 2 uses
  %exitcond3080.not = icmp eq i64 %indvars.iv.next3077, %wide.trip.count3079
  br i1 %exitcond3080.not, label %..loopexit2616_crit_edge.us, label %.lr.ph2670.us, !llvm.loop !72

..loopexit2616_crit_edge.us:                      ; preds = %._crit_edge2671.us
  store i32 %i.api, ptr %i.ar, align 4, !tbaa !8
  br label %..loopexit2616_crit_edge.split.us

.lr.ph2675.split.us:                              ; preds = %bb.dq, %dpow_ui.exit2318.us
  %.18.us = phi double [ %i.apf, %dpow_ui.exit2318.us ], [ 0.000000e+00, %bb.dq ]
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2670.us

._crit_edge2680.us:                               ; preds = %dpow_ui.exit2360.us
  %indvars.iv.next3087 = add nuw nsw i64 %indvars.iv3086.a, 1 ; 2 uses
  %exitcond3090.not = icmp eq i64 %indvars.iv.next3087, %wide.trip.count3089
  br i1 %exitcond3090.not, label %._crit_edge2685.split.us, label %.lr.ph2679.us, !llvm.loop !73

.lr.ph2684.split.us:                              ; preds = %.lr.ph.i2339.us, %bb.dw, %bb.dx
  %.2.i2345.us = phi double [ 1.000000e+00, %bb.dw ], [ %spec.select2022.i2337.us, %bb.dx ], [ %spec.select20.i2343.us, %.lr.ph.i2339.us ]
  %i.ayf = fmul double %.202696.us, %.2.i2345.us
  store i32 %.01788346534723480, ptr %i.aq, align 4, !tbaa !8
  store i32 %.01789, ptr %i.ar, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2679.us

._crit_edge2685.split.us:                         ; preds = %._crit_edge2680.us
  store i32 %i.arm, ptr %i.as, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  %i.ayg = call double @frexp(double noundef %i.aqw, ptr noundef nonnull %i.p) #9 ; 0 uses
  %i.ayh = load i32, ptr %i.p, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  %.not.i2361.us = icmp eq i32 %i.ayh, 0
  br i1 %.not.i2361.us, label %dpow_ui.exit2374.us, label %bb.ea

.lr.ph2698.us:                                    ; preds = %..loopexit2616_crit_edge.split.us
  %i.ayi = add nsw i32 %i.aob, -1                 ; 2 uses
  %i.ayj = sext i32 %i.anz to i64                 ; 2 uses
  %invariant.gep3537 = getelementptr [8 x i8], ptr %i.bo, i64 %i.aoo
  %.not19272686.us.not = icmp slt i32 %i.anz, %i.aob
  %.not19282690.us.not = icmp slt i32 %i.anz, %i.aob
  br label %bb.dv

._crit_edge2705.us:                               ; preds = %dpow_ui.exit2416.us
  %indvars.iv.next3108 = add nuw nsw i64 %indvars.iv3107.a, 1 ; 2 uses
  %exitcond3111.not = icmp eq i64 %indvars.iv.next3108, %wide.trip.count3110
  br i1 %exitcond3111.not, label %._crit_edge2710.split.us, label %.lr.ph2704.us, !llvm.loop !74

.lr.ph2709.split.us:                              ; preds = %.lr.ph.i2395.us, %bb.eg, %bb.eh
  %.2.i2401.us = phi double [ 1.000000e+00, %bb.eg ], [ %spec.select2022.i2393.us, %bb.eh ], [ %spec.select20.i2399.us, %.lr.ph.i2395.us ]
  %i.ayk = fmul double %.222721.us, %.2.i2401.us
  store i32 %.01788346534723480, ptr %i.aq, align 4, !tbaa !8
  store i32 %.01789, ptr %i.ar, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2704.us

._crit_edge2710.split.us:                         ; preds = %._crit_edge2705.us
  store i32 %i.avs, ptr %i.as, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.ayl = call double @frexp(double noundef %i.avc, ptr noundef nonnull %i.l) #9 ; 0 uses
  %i.aym = load i32, ptr %i.l, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  %.not.i2417.us = icmp eq i32 %i.aym, 0
  br i1 %.not.i2417.us, label %dpow_ui.exit2430.us, label %bb.ek

.lr.ph2723.us:                                    ; preds = %._crit_edge2699.us
  %i.ayn = add nsw i32 %i.aob, -1
  %i.ayo = sext i32 %i.anz to i64
  %invariant.gep3551.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3121
  %.not19232711.us.not = icmp slt i32 %i.anz, %i.aob
  br label %bb.ef

..loopexit2617_crit_edge.us:                      ; preds = %._crit_edge2699.us
  %i.ayp = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.ayq = sext i32 %i.ayp to i64
  %.not1917.us.not = icmp slt i64 %indvars.iv3124.a, %i.ayq
  %indvars.iv.next3098 = add nuw nsw i64 %indvars.iv3097, 1
  br i1 %.not1917.us.not, label %.lr.ph2728.us, label %.loopexit2594, !llvm.loop !75

bb.ep:                                            ; preds = %bb.dn
  %or.cond7 = select i1 %i.abp, i1 true, i1 %i.qc
  %or.cond2991.not = or i1 %.not1915265134733478, %or.cond7
  br i1 %or.cond2991.not, label %.loopexit2594, label %.lr.ph2802

.lr.ph2802:                                       ; preds = %bb.ep
  %i.ayr = icmp sgt i32 %.01788346534723480, 0
  %i.ays = fneg double %i.qb
  br i1 %i.ayr, label %.lr.ph2797.us.preheader, label %.loopexit2594

.lr.ph2797.us.preheader:                          ; preds = %.lr.ph2802
  %i.ayt = sext i32 %i.bm to i64                  ; 7 uses
  %i.ayu = add nuw nsw i32 %.01788346534723480, 1 ; 3 uses
  %i.ayv = sext i32 %i.bi to i64                  ; 4 uses
  %i.ayw = zext nneg i32 %i.pz to i64
  %i.ayx = zext nneg i32 %.01788346534723480 to i64
  %i.ayy = zext nneg i32 %.01789 to i64
  %i.ayz = zext nneg i32 %.01788346534723480 to i64
  %invariant.gep3581 = getelementptr [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3135 = zext nneg i32 %i.ayu to i64
  %wide.trip.count3130 = zext nneg i32 %.pre-phi.a to i64
  %wide.trip.count3145 = zext nneg i32 %i.ayu to i64
  %wide.trip.count3140 = zext nneg i32 %.pre-phi.a to i64
  %invariant.gep3575.a = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %wide.trip.count3164 = zext nneg i32 %i.ayu to i64
  %wide.trip.count3159 = zext nneg i32 %.pre-phi.a to i64
  br label %.lr.ph2797.us

.lr.ph2797.us:                                    ; preds = %.lr.ph2797.us.preheader, %._crit_edge2798.us
  %indvars.iv3178 = phi i64 [ %i.ayy, %.lr.ph2797.us.preheader ], [ %indvars.iv.next3179, %._crit_edge2798.us ] ; 7 uses
  %.242801.us = phi double [ 1.000000e+00, %.lr.ph2797.us.preheader ], [ %.28.lcssa.us, %._crit_edge2798.us ]
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3178 ; 2 uses
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !8 ; 6 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.aza, i64 4
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !8
  %i.aze = sub nsw i32 %i.azd, %i.azb             ; 8 uses
  %i.azf = mul nsw i32 %i.azb, %i.bc              ; 2 uses
  %i.azg = add nsw i32 %i.azf, %i.azb
  %i.azh = sext i32 %i.azg to i64
  %i.azi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.azh
  %indvars.iv.next3179 = add nsw i64 %indvars.iv3178, -1 ; 2 uses
  %i.azj = add nuw nsw i64 %indvars.iv3178, %i.ayz
  %i.azk = mul nsw i64 %i.azj, %i.ayt
  %i.azl = sext i32 %i.azb to i64                 ; 3 uses
  %invariant.gep3583 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3178
  %i.azm = trunc nuw nsw i64 %indvars.iv.next3179 to i32
  %.not19332763.us = icmp slt i64 %indvars.iv3178, 2
  %invariant.gep3567 = getelementptr [8 x i8], ptr %i.bo, i64 %i.azk
  %invariant.gep3561.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.azl
  %invariant.gep3577 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3178
  %invariant.gep3571.a = getelementptr [8 x i8], ptr %i.bk, i64 %i.azl
  %invariant.gep3573 = getelementptr [8 x i8], ptr %i.bk, i64 %i.azl
  br label %bb.eq

bb.eq:                                            ; preds = %.loopexit2607.us, %.lr.ph2797.us
  %indvars.iv3175 = phi i64 [ %i.ayx, %.lr.ph2797.us ], [ %indvars.iv.next3176, %.loopexit2607.us ] ; 5 uses
  %.252795.us = phi double [ %.242801.us, %.lr.ph2797.us ], [ %.31.us, %.loopexit2607.us ] ; 2 uses
  %gep3582 = getelementptr [4 x i8], ptr %invariant.gep3581, i64 %indvars.iv3175 ; 2 uses
  %i.azn = load i32, ptr %gep3582, align 4, !tbaa !8 ; 9 uses
  %i.azo = getelementptr i8, ptr %gep3582, i64 4
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !8 ; 6 uses
  store i32 %i.aze, ptr %i.ao, align 4, !tbaa !8
  %i.azq = sub nsw i32 %i.azp, %i.azn             ; 5 uses
  store i32 %i.azq, ptr %i.ap, align 4, !tbaa !8
  %i.azr = mul nsw i32 %i.azn, %i.bf              ; 2 uses
  %i.azs = add nsw i32 %i.azr, %i.azn
  %i.azt = sext i32 %i.azs to i64
  %i.azu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.azt
  %i.azv = mul nsw i32 %i.azn, %i.bi              ; 2 uses
  %i.azw = add nsw i32 %i.azv, %i.azb
  %i.azx = sext i32 %i.azw to i64
  %i.azy = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.azx ; 4 uses
  call void @dtrsyl_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef %i.azi, ptr noundef nonnull %6, ptr noundef %i.azu, ptr noundef nonnull %8, ptr noundef %i.azy, ptr noundef nonnull %10, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #9
  %i.azz = load i32, ptr %16, align 4, !tbaa !8
  %i.baa = load i32, ptr %i.ba, align 4, !tbaa !8
  %.1999.us = call i32 @llvm.smax.i32(i32 %i.azz, i32 %i.baa)
  store i32 %.1999.us, ptr %16, align 4, !tbaa !8
  %i.bab = load double, ptr %i.bb, align 8, !tbaa !9 ; 5 uses
  %i.bac = mul nsw i64 %indvars.iv3175, %i.ayt    ; 2 uses
  %gep3584 = getelementptr [8 x i8], ptr %invariant.gep3583, i64 %i.bac ; 9 uses
  %i.bad = load double, ptr %gep3584, align 8, !tbaa !9
  %i.bae = fmul double %i.bab, %i.bad             ; 2 uses
  %i.baf = fcmp oeq double %i.bae, 0.000000e+00
  br i1 %i.baf, label %bb.er, label %..loopexit2608_crit_edge.split.us

bb.er:                                            ; preds = %bb.eq
  %i.bag = fcmp oeq double %i.bab, 0.000000e+00
  br i1 %i.bag, label %.lr.ph2744.split.us, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.bah = call double @frexp(double noundef %i.bab, ptr noundef nonnull %i.j) #9 ; 0 uses
  %i.bai = load i32, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  %.not.i2445.us = icmp eq i32 %i.bai, 0
  br i1 %.not.i2445.us, label %dpow_ui.exit2458.us, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.baj = icmp slt i32 %i.bai, 0
  %spec.select.i2446.us = select i1 %i.baj, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2447.us = call i32 @llvm.abs.i32(i32 %i.bai, i1 true)
  %i.bak = zext nneg i32 %spec.select19.i2447.us to i64 ; 2 uses
  %i.bal = and i64 %i.bak, 1
  %.not1721.i2448.us = icmp eq i64 %i.bal, 0
  %spec.select2022.i2449.us = select i1 %.not1721.i2448.us, double 1.000000e+00, double %spec.select.i2446.us ; 2 uses
  %i.bam = lshr i64 %i.bak, 1                     ; 2 uses
  %.not1823.i2450.us = icmp eq i64 %i.bam, 0
  br i1 %.not1823.i2450.us, label %dpow_ui.exit2458.us, label %.lr.ph.i2451.us

.lr.ph.i2451.us:                                  ; preds = %bb.et, %.lr.ph.i2451.us
  %i.ban = phi i64 [ %i.bar, %.lr.ph.i2451.us ], [ %i.bam, %bb.et ] ; 2 uses
  %spec.select2025.i2452.us = phi double [ %spec.select20.i2455.us, %.lr.ph.i2451.us ], [ %spec.select2022.i2449.us, %bb.et ] ; 2 uses
  %.11424.i2453.us = phi double [ %i.bao, %.lr.ph.i2451.us ], [ %spec.select.i2446.us, %bb.et ] ; 2 uses
  %i.bao = fmul double %.11424.i2453.us, %.11424.i2453.us ; 2 uses
  %i.bap = and i64 %i.ban, 1
  %.not17.i2454.us = icmp eq i64 %i.bap, 0
  %i.baq = fmul double %spec.select2025.i2452.us, %i.bao
  %spec.select20.i2455.us = select i1 %.not17.i2454.us, double %spec.select2025.i2452.us, double %i.baq ; 2 uses
  %i.bar = lshr i64 %i.ban, 1                     ; 2 uses
  %.not18.i2456.us = icmp eq i64 %i.bar, 0
  br i1 %.not18.i2456.us, label %dpow_ui.exit2458.us, label %.lr.ph.i2451.us

dpow_ui.exit2458.us:                              ; preds = %.lr.ph.i2451.us, %bb.et, %bb.es
  %.2.i2457.us = phi double [ 1.000000e+00, %bb.es ], [ %spec.select2022.i2449.us, %bb.et ], [ %spec.select20.i2455.us, %.lr.ph.i2451.us ]
  %i.bas = fmul double %.252795.us, %.2.i2457.us
  br label %.lr.ph2744.split.us

.lr.ph2739.us:                                    ; preds = %.lr.ph2744.split.us, %._crit_edge2740.us
  %indvars.iv3132 = phi i64 [ 1, %.lr.ph2744.split.us ], [ %indvars.iv.next3133, %._crit_edge2740.us ] ; 2 uses
  %i.bat = mul nsw i64 %indvars.iv3132, %i.ayt
  %invariant.gep3557.a = getelementptr [8 x i8], ptr %i.bo, i64 %i.bat
  br label %bb.eu

bb.eu:                                            ; preds = %dpow_ui.exit2472.us, %.lr.ph2739.us
  %indvars.iv3127 = phi i64 [ %indvars.iv.next3128, %dpow_ui.exit2472.us ], [ 1, %.lr.ph2739.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.bau = call double @frexp(double noundef %i.bab, ptr noundef nonnull %i.i) #9 ; 0 uses
  %i.bav = load i32, ptr %i.i, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  %gep3558.a = getelementptr [8 x i8], ptr %invariant.gep3557.a, i64 %indvars.iv3127 ; 2 uses
  %i.baw = load double, ptr %gep3558.a, align 8, !tbaa !9
  %.not.i2459.us = icmp eq i32 %i.bav, 0
  br i1 %.not.i2459.us, label %dpow_ui.exit2472.us, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bax = icmp slt i32 %i.bav, 0
  %spec.select.i2460.us = select i1 %i.bax, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2461.us = call i32 @llvm.abs.i32(i32 %i.bav, i1 true)
  %i.bay = zext nneg i32 %spec.select19.i2461.us to i64 ; 2 uses
  %i.baz = and i64 %i.bay, 1
  %.not1721.i2462.us = icmp eq i64 %i.baz, 0
  %spec.select2022.i2463.us = select i1 %.not1721.i2462.us, double 1.000000e+00, double %spec.select.i2460.us ; 2 uses
  %i.bba = lshr i64 %i.bay, 1                     ; 2 uses
  %.not1823.i2464.us = icmp eq i64 %i.bba, 0
  br i1 %.not1823.i2464.us, label %dpow_ui.exit2472.us, label %.lr.ph.i2465.us

.lr.ph.i2465.us:                                  ; preds = %bb.ev, %.lr.ph.i2465.us
  %i.bbb = phi i64 [ %i.bbf, %.lr.ph.i2465.us ], [ %i.bba, %bb.ev ] ; 2 uses
  %spec.select2025.i2466.us = phi double [ %spec.select20.i2469.us, %.lr.ph.i2465.us ], [ %spec.select2022.i2463.us, %bb.ev ] ; 2 uses
  %.11424.i2467.us = phi double [ %i.bbc, %.lr.ph.i2465.us ], [ %spec.select.i2460.us, %bb.ev ] ; 2 uses
  %i.bbc = fmul double %.11424.i2467.us, %.11424.i2467.us ; 2 uses
  %i.bbd = and i64 %i.bbb, 1
  %.not17.i2468.us = icmp eq i64 %i.bbd, 0
  %i.bbe = fmul double %spec.select2025.i2466.us, %i.bbc
  %spec.select20.i2469.us = select i1 %.not17.i2468.us, double %spec.select2025.i2466.us, double %i.bbe ; 2 uses
  %i.bbf = lshr i64 %i.bbb, 1                     ; 2 uses
  %.not18.i2470.us = icmp eq i64 %i.bbf, 0
  br i1 %.not18.i2470.us, label %dpow_ui.exit2472.us, label %.lr.ph.i2465.us

dpow_ui.exit2472.us:                              ; preds = %.lr.ph.i2465.us, %bb.ev, %bb.eu
  %.2.i2471.us = phi double [ 1.000000e+00, %bb.eu ], [ %spec.select2022.i2463.us, %bb.ev ], [ %spec.select20.i2469.us, %.lr.ph.i2465.us ]
  %i.bbg = fdiv double %i.baw, %.2.i2471.us       ; 2 uses
  %i.bbh = fcmp ole double %i.ic, %i.bbg
  %i.bbi = select i1 %i.bbh, double %i.ic, double %i.bbg
  store double %i.bbi, ptr %gep3558.a, align 8, !tbaa !9
  %indvars.iv.next3128 = add nuw nsw i64 %indvars.iv3127, 1 ; 2 uses
  %exitcond3131.not = icmp eq i64 %indvars.iv.next3128, %wide.trip.count3130
  br i1 %exitcond3131.not, label %._crit_edge2740.us, label %bb.eu, !llvm.loop !76

..loopexit2608_crit_edge.split.us:                ; preds = %..loopexit2608_crit_edge.us, %bb.eq
  %.pre-phi3354 = phi double [ %i.bae, %bb.eq ], [ %.pre3353, %..loopexit2608_crit_edge.us ]
  %.27.us = phi double [ %.252795.us, %bb.eq ], [ %.26.us, %..loopexit2608_crit_edge.us ] ; 2 uses
  store double %.pre-phi3354, ptr %gep3584, align 8, !tbaa !9
  store i32 %i.aze, ptr %i.ao, align 4, !tbaa !8
  store i32 %i.azq, ptr %i.ap, align 4, !tbaa !8
  %i.bbj = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef %i.azy, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  store double %i.bbj, ptr %i.az, align 8, !tbaa !9
  store i32 %i.azm, ptr %i.ao, align 4, !tbaa !8
  br i1 %.not19332763.us, label %._crit_edge2768.us, label %.lr.ph2767.us

bb.ew:                                            ; preds = %.lr.ph2767.us, %.loopexit2605.us
  %indvars.iv3153.a = phi i64 [ 1, %.lr.ph2767.us ], [ %indvars.iv.next3154.a, %.loopexit2605.us ] ; 6 uses
  %.282765.us = phi double [ %.27.us, %.lr.ph2767.us ], [ %.29.us, %.loopexit2605.us ] ; 2 uses
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3153.a
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !8 ; 4 uses
  %indvars.iv.next3154.a = add nuw nsw i64 %indvars.iv3153.a, 1
  %i.bbm = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3153.a
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !8
  %i.bbo = sub nsw i32 %i.bbn, %i.bbl             ; 3 uses
  store i32 %i.bbo, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.azq, ptr %i.aq, align 4, !tbaa !8
  %i.bbp = add nsw i32 %i.bbl, %i.azv
  %i.bbq = sext i32 %i.bbp to i64
  %i.bbr = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bbq ; 2 uses
  %i.bbs = call double @dlange_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef %i.bbr, ptr noundef nonnull %10, ptr noundef %i.dr) #9
  %gep3566.a = getelementptr [8 x i8], ptr %invariant.gep3565, i64 %indvars.iv3153.a ; 3 uses
  %i.bbt = load double, ptr %gep3566.a, align 8, !tbaa !9 ; 4 uses
  store double %i.bbt, ptr %i.au, align 8, !tbaa !9
  %i.bbu = load double, ptr %gep3584, align 8, !tbaa !9 ; 3 uses
  %i.bbv = fcmp ole double %i.bbt, %i.bbu
  %i.bbw = select i1 %i.bbv, double %i.bbt, double %i.bbu ; 4 uses
  %i.bbx = load double, ptr %i.az, align 8, !tbaa !9
  %i.bby = insertelement <2 x double> poison, double %i.bbw, i64 0
  %i.bbz = shufflevector <2 x double> %i.bby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bca = insertelement <2 x double> poison, double %i.bbt, i64 0
  %i.bcb = insertelement <2 x double> %i.bca, double %i.bbu, i64 1
  %i.bcc = fdiv <2 x double> %i.bbz, %i.bcb
  %i.bcd = insertelement <2 x double> poison, double %i.bbs, i64 0
  %i.bce = insertelement <2 x double> %i.bcd, double %i.bbx, i64 1
  %i.bcf = fmul <2 x double> %i.bce, %i.bcc       ; 2 uses
  %i.bcg = extractelement <2 x double> %i.bcf, i64 0
  store double %i.bcg, ptr %i.ay, align 8, !tbaa !9
  %i.bch = extractelement <2 x double> %i.bcf, i64 1
  store double %i.bch, ptr %i.az, align 8, !tbaa !9
  %gep3568.a = getelementptr [8 x i8], ptr %invariant.gep3567, i64 %indvars.iv3153.a
  %i.bci = load double, ptr %gep3568.a, align 8, !tbaa !9
end_hunk_1
begin_hunk_2_@dtrsyl3_:bb.a
  %spec.select20.i2553.us = select i1 %.not17.i2552.us, double %spec.select2025.i2550.us, double %i.bhn ; 2 uses
  %i.bho = lshr i64 %i.bhk, 1                     ; 2 uses
  %.not18.i2554.us = icmp eq i64 %i.bho, 0
  br i1 %.not18.i2554.us, label %dpow_ui.exit2556.us, label %.lr.ph.i2549.us

dpow_ui.exit2556.us:                              ; preds = %.lr.ph.i2549.us, %bb.fk, %bb.fj
  %.2.i2555.us = phi double [ 1.000000e+00, %bb.fj ], [ %spec.select2022.i2547.us, %bb.fk ], [ %spec.select20.i2553.us, %.lr.ph.i2549.us ]
  %i.bhp = fdiv double %i.bhf, %.2.i2555.us       ; 2 uses
  %i.bhq = fcmp ole double %i.ic, %i.bhp
  %i.bhr = select i1 %i.bhq, double %i.ic, double %i.bhp
  store double %i.bhr, ptr %gep3570, align 8, !tbaa !9
  %indvars.iv.next3157 = add nuw nsw i64 %indvars.iv3156, 1 ; 2 uses
  %exitcond3160.not = icmp eq i64 %indvars.iv.next3157, %wide.trip.count3159
  br i1 %exitcond3160.not, label %._crit_edge2774.us, label %bb.fj, !llvm.loop !81

bb.fl:                                            ; preds = %._crit_edge2779.split.us
  %i.bhs = icmp slt i32 %i.bjy, 0
  %spec.select.i2558.us = select i1 %i.bhs, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2559.us = call i32 @llvm.abs.i32(i32 %i.bjy, i1 true)
  %i.bht = zext nneg i32 %spec.select19.i2559.us to i64 ; 2 uses
  %i.bhu = and i64 %i.bht, 1
  %.not1721.i2560.us = icmp eq i64 %i.bhu, 0
  %spec.select2022.i2561.us = select i1 %.not1721.i2560.us, double 1.000000e+00, double %spec.select.i2558.us ; 2 uses
  %i.bhv = lshr i64 %i.bht, 1                     ; 2 uses
  %.not1823.i2562.us = icmp eq i64 %i.bhv, 0
  br i1 %.not1823.i2562.us, label %dpow_ui.exit2570.us, label %.lr.ph.i2563.us

.lr.ph.i2563.us:                                  ; preds = %bb.fl, %.lr.ph.i2563.us
  %i.bhw = phi i64 [ %i.bia, %.lr.ph.i2563.us ], [ %i.bhv, %bb.fl ] ; 2 uses
  %spec.select2025.i2564.us = phi double [ %spec.select20.i2567.us, %.lr.ph.i2563.us ], [ %spec.select2022.i2561.us, %bb.fl ] ; 2 uses
  %.11424.i2565.us = phi double [ %i.bhx, %.lr.ph.i2563.us ], [ %spec.select.i2558.us, %bb.fl ] ; 2 uses
  %i.bhx = fmul double %.11424.i2565.us, %.11424.i2565.us ; 2 uses
  %i.bhy = and i64 %i.bhw, 1
  %.not17.i2566.us = icmp eq i64 %i.bhy, 0
  %i.bhz = fmul double %spec.select2025.i2564.us, %i.bhx
  %spec.select20.i2567.us = select i1 %.not17.i2566.us, double %spec.select2025.i2564.us, double %i.bhz ; 2 uses
  %i.bia = lshr i64 %i.bhw, 1                     ; 2 uses
  %.not18.i2568.us = icmp eq i64 %i.bia, 0
  br i1 %.not18.i2568.us, label %dpow_ui.exit2570.us, label %.lr.ph.i2563.us

dpow_ui.exit2570.us:                              ; preds = %.lr.ph.i2563.us, %bb.fl, %._crit_edge2779.split.us
  %.2.i2569.us = phi double [ 1.000000e+00, %._crit_edge2779.split.us ], [ %spec.select2022.i2561.us, %bb.fl ], [ %spec.select20.i2567.us, %.lr.ph.i2563.us ]
  %i.bib = fdiv double %i.bfz, %.2.i2569.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bic = call double @frexp(double noundef %i.bgo, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.bid = load i32, ptr %i.a, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not.i2571.us = icmp eq i32 %i.bid, 0
  br i1 %.not.i2571.us, label %dpow_ui.exit2584.us, label %bb.fm

bb.fm:                                            ; preds = %dpow_ui.exit2570.us
  %i.bie = icmp slt i32 %i.bid, 0
  %spec.select.i2572.us = select i1 %i.bie, double 5.000000e-01, double 2.000000e+00 ; 2 uses
  %spec.select19.i2573.us = call i32 @llvm.abs.i32(i32 %i.bid, i1 true)
  %i.bif = zext nneg i32 %spec.select19.i2573.us to i64 ; 2 uses
  %i.big = and i64 %i.bif, 1
  %.not1721.i2574.us = icmp eq i64 %i.big, 0
  %spec.select2022.i2575.us = select i1 %.not1721.i2574.us, double 1.000000e+00, double %spec.select.i2572.us ; 2 uses
  %i.bih = lshr i64 %i.bif, 1                     ; 2 uses
  %.not1823.i2576.us = icmp eq i64 %i.bih, 0
  br i1 %.not1823.i2576.us, label %dpow_ui.exit2584.us, label %.lr.ph.i2577.us

.lr.ph.i2577.us:                                  ; preds = %bb.fm, %.lr.ph.i2577.us
  %i.bii = phi i64 [ %i.bim, %.lr.ph.i2577.us ], [ %i.bih, %bb.fm ] ; 2 uses
  %spec.select2025.i2578.us = phi double [ %spec.select20.i2581.us, %.lr.ph.i2577.us ], [ %spec.select2022.i2575.us, %bb.fm ] ; 2 uses
  %.11424.i2579.us = phi double [ %i.bij, %.lr.ph.i2577.us ], [ %spec.select.i2572.us, %bb.fm ] ; 2 uses
  %i.bij = fmul double %.11424.i2579.us, %.11424.i2579.us ; 2 uses
  %i.bik = and i64 %i.bii, 1
  %.not17.i2580.us = icmp eq i64 %i.bik, 0
  %i.bil = fmul double %spec.select2025.i2578.us, %i.bij
  %spec.select20.i2581.us = select i1 %.not17.i2580.us, double %spec.select2025.i2578.us, double %i.bil ; 2 uses
  %i.bim = lshr i64 %i.bii, 1                     ; 2 uses
  %.not18.i2582.us = icmp eq i64 %i.bim, 0
  br i1 %.not18.i2582.us, label %dpow_ui.exit2584.us, label %.lr.ph.i2577.us

dpow_ui.exit2584.us:                              ; preds = %.lr.ph.i2577.us, %bb.fm, %dpow_ui.exit2570.us
  %.2.i2583.us = phi double [ 1.000000e+00, %dpow_ui.exit2570.us ], [ %spec.select2022.i2575.us, %bb.fm ], [ %spec.select20.i2581.us, %.lr.ph.i2577.us ]
  %i.bin = fdiv double %i.bgo, %.2.i2583.us       ; 2 uses
  store double %i.bin, ptr %i.bb, align 8, !tbaa !9
  br label %bb.fn

bb.fn:                                            ; preds = %dpow_ui.exit2584.us, %bb.fg
  %i.bio = phi double [ %i.bin, %dpow_ui.exit2584.us ], [ %i.bgo, %bb.fg ] ; 5 uses
  %.71797.us = phi double [ %i.bib, %dpow_ui.exit2584.us ], [ %i.bfz, %bb.fg ] ; 3 uses
  %.31.us = phi double [ %i.bjw, %dpow_ui.exit2584.us ], [ %.302790.us, %bb.fg ] ; 2 uses
  %i.bip = load double, ptr %i.ay, align 8, !tbaa !9
  %i.biq = fmul double %i.bio, %i.bip
  store double %i.biq, ptr %i.ay, align 8, !tbaa !9
  %i.bir = load double, ptr %i.az, align 8, !tbaa !9
  %i.bis = fmul double %i.bio, %i.bir
  store double %i.bis, ptr %i.az, align 8, !tbaa !9
  %i.bit = load double, ptr %gep3584, align 8, !tbaa !9
  %i.biu = fdiv double %.71797.us, %i.bit
  %i.biv = fmul double %i.bio, %i.biu             ; 2 uses
  store double %i.biv, ptr %i.av, align 8, !tbaa !9
  %i.biw = fcmp une double %i.biv, 1.000000e+00
  br i1 %i.biw, label %bb.fo, label %.loopexit2604.us

bb.fo:                                            ; preds = %bb.fn
  store i32 %i.bjz, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19362780.us.not, label %.lr.ph2783.us, label %.loopexit2604.us

.lr.ph2783.us:                                    ; preds = %bb.fo, %.lr.ph2783.us
  %indvars.iv3166 = phi i64 [ %indvars.iv.next3167, %.lr.ph2783.us ], [ %i.bka, %bb.fo ] ; 3 uses
  store i32 %i.aze, ptr %i.aq, align 4, !tbaa !8
  %i.bix = mul nsw i64 %indvars.iv3166, %i.ayv
  %gep3572 = getelementptr [8 x i8], ptr %invariant.gep3571.a, i64 %i.bix
  call void @dscal_(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.av, ptr noundef %gep3572, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3167 = add nsw i64 %indvars.iv3166, 1
  %i.biy = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.biz = sext i32 %i.biy to i64
  %.not1936.us.not = icmp slt i64 %indvars.iv3166, %i.biz
  br i1 %.not1936.us.not, label %.lr.ph2783.us, label %.loopexit2604.us.loopexit, !llvm.loop !82

.loopexit2604.us.loopexit:                        ; preds = %.lr.ph2783.us
  %.pre3331 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2604.us

.loopexit2604.us:                                 ; preds = %.loopexit2604.us.loopexit, %bb.fo, %bb.fn
  %i.bja = phi double [ %.pre3331, %.loopexit2604.us.loopexit ], [ %i.bio, %bb.fo ], [ %i.bio, %bb.fn ] ; 3 uses
  %i.bjb = load double, ptr %gep3578, align 8, !tbaa !9
  %i.bjc = fdiv double %.71797.us, %i.bjb
  %i.bjd = fmul double %i.bjc, %i.bja             ; 2 uses
  store double %i.bjd, ptr %i.av, align 8, !tbaa !9
  %i.bje = fcmp une double %i.bjd, 1.000000e+00
  br i1 %i.bje, label %bb.fp, label %.loopexit2603.us

bb.fp:                                            ; preds = %.loopexit2604.us
  %i.bjf = add nsw i32 %i.bfo, -1
  store i32 %i.bjf, ptr %i.ap, align 4, !tbaa !8
  %.not19372784.us.not = icmp slt i32 %i.bfm, %i.bfo
  br i1 %.not19372784.us.not, label %.lr.ph2787.us.preheader, label %.loopexit2603.us

.lr.ph2787.us.preheader:                          ; preds = %bb.fp
  %i.bjg = sext i32 %i.bfm to i64
  br label %.lr.ph2787.us

.lr.ph2787.us:                                    ; preds = %.lr.ph2787.us.preheader, %.lr.ph2787.us
  %indvars.iv3169 = phi i64 [ %i.bjg, %.lr.ph2787.us.preheader ], [ %indvars.iv.next3170, %.lr.ph2787.us ] ; 3 uses
  store i32 %i.aze, ptr %i.aq, align 4, !tbaa !8
  %i.bjh = mul nsw i64 %indvars.iv3169, %i.ayv
  %gep3574 = getelementptr [8 x i8], ptr %invariant.gep3573, i64 %i.bjh
  call void @dscal_(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.av, ptr noundef %gep3574, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3170 = add nsw i64 %indvars.iv3169, 1
  %i.bji = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.bjj = sext i32 %i.bji to i64
  %.not1937.us.not = icmp slt i64 %indvars.iv3169, %i.bjj
  br i1 %.not1937.us.not, label %.lr.ph2787.us, label %.loopexit2603.us.loopexit, !llvm.loop !83

.loopexit2603.us.loopexit:                        ; preds = %.lr.ph2787.us
  %.pre3332 = load double, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit2603.us

.loopexit2603.us:                                 ; preds = %.loopexit2603.us.loopexit, %bb.fp, %.loopexit2604.us
  %i.bjk = phi double [ %.pre3332, %.loopexit2603.us.loopexit ], [ %i.bja, %bb.fp ], [ %i.bja, %.loopexit2604.us ]
  %i.bjl = fmul double %.71797.us, %i.bjk         ; 2 uses
  store double %i.bjl, ptr %gep3584, align 8, !tbaa !9
  store double %i.bjl, ptr %gep3578, align 8, !tbaa !9
  store i32 %i.aze, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.bfp, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.azq, ptr %i.ar, align 4, !tbaa !8
  store double %i.ays, ptr %i.au, align 8, !tbaa !9
  %i.bjm = add nsw i32 %i.bfm, %i.azr
  %i.bjn = sext i32 %i.bjm to i64
  %i.bjo = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bjn
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.au, ptr noundef %i.azy, ptr noundef nonnull %10, ptr noundef %i.bjo, ptr noundef nonnull %8, ptr noundef nonnull @c_b32, ptr noundef %i.bft, ptr noundef nonnull %10) #9
  %indvars.iv.next3173 = add nuw nsw i64 %indvars.iv3172, 1
  %i.bjp = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.bjq = sext i32 %i.bjp to i64
  %.not1934.us.not = icmp slt i64 %indvars.iv3172, %i.bjq
  br i1 %.not1934.us.not, label %bb.fg, label %.loopexit2607.us, !llvm.loop !84

.loopexit2607.us:                                 ; preds = %.loopexit2603.us
  br label %bb.eq, !llvm.loop !85

._crit_edge2740.us:                               ; preds = %dpow_ui.exit2472.us
  %indvars.iv.next3133 = add nuw nsw i64 %indvars.iv3132, 1 ; 2 uses
  %exitcond3136.not = icmp eq i64 %indvars.iv.next3133, %wide.trip.count3135
  br i1 %exitcond3136.not, label %..loopexit2608_crit_edge.us, label %.lr.ph2739.us, !llvm.loop !86

..loopexit2608_crit_edge.us:                      ; preds = %._crit_edge2740.us
  store i32 %i.bav, ptr %i.aq, align 4, !tbaa !8
  %.pre3328 = load double, ptr %gep3584, align 8, !tbaa !9
  %.pre3353 = fmul double %i.bab, %.pre3328
  br label %..loopexit2608_crit_edge.split.us

.lr.ph2744.split.us:                              ; preds = %bb.er, %dpow_ui.exit2458.us
  %.26.us = phi double [ %i.bas, %dpow_ui.exit2458.us ], [ 0.000000e+00, %bb.er ]
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2739.us

._crit_edge2749.us:                               ; preds = %dpow_ui.exit2500.us
  %indvars.iv.next3143 = add nuw nsw i64 %indvars.iv3142.a, 1 ; 2 uses
  %exitcond3146.not = icmp eq i64 %indvars.iv.next3143, %wide.trip.count3145
  br i1 %exitcond3146.not, label %._crit_edge2754.split.us, label %.lr.ph2748.us, !llvm.loop !87

.lr.ph2753.split.us:                              ; preds = %.lr.ph.i2479.us, %bb.ex, %bb.ey
  %.2.i2485.us = phi double [ 1.000000e+00, %bb.ex ], [ %spec.select2022.i2477.us, %bb.ey ], [ %spec.select20.i2483.us, %.lr.ph.i2479.us ]
  %i.bjr = fmul double %.282765.us, %.2.i2485.us
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  store i32 %.01789, ptr %i.aq, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2748.us

._crit_edge2754.split.us:                         ; preds = %._crit_edge2749.us
  store i32 %i.bcz, ptr %i.ar, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.bjs = call double @frexp(double noundef %i.bcj, ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.bjt = load i32, ptr %i.f, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %.not.i2501.us = icmp eq i32 %i.bjt, 0
  br i1 %.not.i2501.us, label %dpow_ui.exit2514.us, label %bb.fb

.lr.ph2767.us:                                    ; preds = %..loopexit2608_crit_edge.split.us
  %i.bju = add nsw i32 %i.azp, -1                 ; 2 uses
  %i.bjv = sext i32 %i.azn to i64                 ; 2 uses
  %invariant.gep3565 = getelementptr [8 x i8], ptr %i.bo, i64 %i.bac
  %.not19402755.us.not = icmp slt i32 %i.azn, %i.azp
  %.not19412759.us.not = icmp slt i32 %i.azn, %i.azp
  br label %bb.ew

._crit_edge2774.us:                               ; preds = %dpow_ui.exit2556.us
  %indvars.iv.next3162 = add nuw nsw i64 %indvars.iv3161.a, 1 ; 2 uses
  %exitcond3165.not = icmp eq i64 %indvars.iv.next3162, %wide.trip.count3164
  br i1 %exitcond3165.not, label %._crit_edge2779.split.us, label %.lr.ph2773.us, !llvm.loop !88

.lr.ph2778.split.us:                              ; preds = %.lr.ph.i2535.us, %bb.fh, %bb.fi
  %.2.i2541.us = phi double [ 1.000000e+00, %bb.fh ], [ %spec.select2022.i2533.us, %bb.fi ], [ %spec.select20.i2539.us, %.lr.ph.i2535.us ]
  %i.bjw = fmul double %.302790.us, %.2.i2541.us
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  store i32 %.01789, ptr %i.aq, align 4, !tbaa !8
  store double %i.ic, ptr %i.au, align 8, !tbaa !9
  br label %.lr.ph2773.us

._crit_edge2779.split.us:                         ; preds = %._crit_edge2774.us
  store i32 %i.bhe, ptr %i.ar, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.bjx = call double @frexp(double noundef %i.bgo, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.bjy = load i32, ptr %i.b, align 4, !tbaa !8  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.not.i2557.us = icmp eq i32 %i.bjy, 0
  br i1 %.not.i2557.us, label %dpow_ui.exit2570.us, label %bb.fl

.lr.ph2792.us:                                    ; preds = %._crit_edge2768.us
  %i.bjz = add nsw i32 %i.azp, -1
  %i.bka = sext i32 %i.azn to i64
  %invariant.gep3579 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3175
  %.not19362780.us.not = icmp slt i32 %i.azn, %i.azp
  br label %bb.fg

._crit_edge2798.us:                               ; preds = %._crit_edge2768.us
  %i.bkb = icmp sgt i64 %indvars.iv3178, 1
  br i1 %i.bkb, label %.lr.ph2797.us, label %.loopexit2594, !llvm.loop !89

.loopexit2594:                                    ; preds = %..loopexit2617_crit_edge.us, %._crit_edge2798.us, %.loopexit2601, %._crit_edge2942, %.lr.ph2802, %.lr.ph2734, %bb.do, %bb.cl, %.preheader, %bb.ep
  %.32 = phi double [ 1.000000e+00, %.lr.ph2802 ], [ %.9.lcssa, %.loopexit2601 ], [ 1.000000e+00, %bb.ep ], [ 1.000000e+00, %.lr.ph2734 ], [ 1.000000e+00, %.preheader ], [ 1.000000e+00, %bb.cl ], [ %.28.lcssa.us, %._crit_edge2798.us ], [ %.1.lcssa, %._crit_edge2942 ], [ 1.000000e+00, %bb.do ], [ %.20.lcssa.us, %..loopexit2617_crit_edge.us ] ; 5 uses
  call void @free(ptr noundef %i.dr) #9
  %i.bkc = load double, ptr %14, align 8, !tbaa !9 ; 4 uses
  store double %i.bkc, ptr %11, align 8, !tbaa !9
  br i1 %.not1915265134733478, label %._crit_edge2958.split.thread3488, label %.lr.ph2957

.lr.ph2957:                                       ; preds = %.loopexit2594
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19142642346734713482, label %._crit_edge2958.split.thread, label %.lr.ph2957.split

.lr.ph2957.split:                                 ; preds = %.lr.ph2957
  %i.bkd = sext i32 %i.bm to i64                  ; 9 uses
  %wide.trip.count3303 = zext nneg i32 %.pre-phi.a to i64
  %i.bke = zext i32 %.01788346534723480 to i64    ; 2 uses
  %i.bkf = sext i32 %.01788346534723480 to i64
  %i.bkg = add nsw i64 %i.bkf, -1
  %xtraiter3774.a = and i64 %i.bke, 7             ; 3 uses
  %i.bkh = icmp ult i64 %i.bkg, 7
  %unroll_iter = and i64 %i.bke, 4294967288
  %lcmp.mod3776.not = icmp eq i64 %xtraiter3774.a, 0
  %lcmp.mod3779 = icmp ne i64 %xtraiter3774.a, 0
  br label %.lr.ph2951

.lr.ph2951:                                       ; preds = %.lr.ph2957.split, %._crit_edge2952
  %indvars.iv3300.a = phi i64 [ 1, %.lr.ph2957.split ], [ %indvars.iv.next3301.a, %._crit_edge2952 ] ; 2 uses
  %.promoted2960 = phi double [ %i.bkc, %.lr.ph2957.split ], [ %.lcssa3749, %._crit_edge2952 ] ; 2 uses
  %invariant.gep3641.a = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3300.a ; 9 uses
  br i1 %i.bkh, label %.epil.preheader, label %.lr.ph2951.new

.lr.ph2951.new:                                   ; preds = %.lr.ph2951, %.lr.ph2951.new
  %indvars.iv3295 = phi i64 [ %indvars.iv.next3296.7, %.lr.ph2951.new ], [ 1, %.lr.ph2951 ] ; 9 uses
  %i.bki = phi double [ %i.blo, %.lr.ph2951.new ], [ %.promoted2960, %.lr.ph2951 ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph2951.new ], [ 0, %.lr.ph2951 ]
  %i.bkj = mul nsw i64 %indvars.iv3295, %i.bkd
  %gep3642.a = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bkj
  %i.bkk = load double, ptr %gep3642.a, align 8, !tbaa !9 ; 2 uses
  %i.bkl = fcmp ole double %i.bki, %i.bkk
  %i.bkm = select i1 %i.bkl, double %i.bki, double %i.bkk ; 3 uses
  store double %i.bkm, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296 = add nuw nsw i64 %indvars.iv3295, 1
  %i.bkn = mul nsw i64 %indvars.iv.next3296, %i.bkd
  %gep3642.1.a = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bkn
  %i.bko = load double, ptr %gep3642.1.a, align 8, !tbaa !9 ; 2 uses
  %i.bkp = fcmp ole double %i.bkm, %i.bko
  %i.bkq = select i1 %i.bkp, double %i.bkm, double %i.bko ; 3 uses
  store double %i.bkq, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.1 = add nuw nsw i64 %indvars.iv3295, 2
  %i.bkr = mul nsw i64 %indvars.iv.next3296.1, %i.bkd
  %gep3642.2.a = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bkr
  %i.bks = load double, ptr %gep3642.2.a, align 8, !tbaa !9 ; 2 uses
  %i.bkt = fcmp ole double %i.bkq, %i.bks
  %i.bku = select i1 %i.bkt, double %i.bkq, double %i.bks ; 3 uses
  store double %i.bku, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.2 = add nuw nsw i64 %indvars.iv3295, 3
  %i.bkv = mul nsw i64 %indvars.iv.next3296.2, %i.bkd
  %gep3642.3.a = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bkv
  %i.bkw = load double, ptr %gep3642.3.a, align 8, !tbaa !9 ; 2 uses
  %i.bkx = fcmp ole double %i.bku, %i.bkw
  %i.bky = select i1 %i.bkx, double %i.bku, double %i.bkw ; 3 uses
  store double %i.bky, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.3 = add nuw nsw i64 %indvars.iv3295, 4
  %i.bkz = mul nsw i64 %indvars.iv.next3296.3, %i.bkd
  %gep3642.4 = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bkz
  %i.bla = load double, ptr %gep3642.4, align 8, !tbaa !9 ; 2 uses
  %i.blb = fcmp ole double %i.bky, %i.bla
  %i.blc = select i1 %i.blb, double %i.bky, double %i.bla ; 3 uses
  store double %i.blc, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.4 = add nuw nsw i64 %indvars.iv3295, 5
  %i.bld = mul nsw i64 %indvars.iv.next3296.4, %i.bkd
  %gep3642.5 = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bld
  %i.ble = load double, ptr %gep3642.5, align 8, !tbaa !9 ; 2 uses
  %i.blf = fcmp ole double %i.blc, %i.ble
  %i.blg = select i1 %i.blf, double %i.blc, double %i.ble ; 3 uses
  store double %i.blg, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.5 = add nuw nsw i64 %indvars.iv3295, 6
  %i.blh = mul nsw i64 %indvars.iv.next3296.5, %i.bkd
  %gep3642.6 = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.blh
  %i.bli = load double, ptr %gep3642.6, align 8, !tbaa !9 ; 2 uses
  %i.blj = fcmp ole double %i.blg, %i.bli
  %i.blk = select i1 %i.blj, double %i.blg, double %i.bli ; 4 uses
  store double %i.blk, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.6 = add nuw nsw i64 %indvars.iv3295, 7
  %i.bll = mul nsw i64 %indvars.iv.next3296.6, %i.bkd
  %gep3642.7 = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.bll
  %i.blm = load double, ptr %gep3642.7, align 8, !tbaa !9 ; 2 uses
  %i.bln = fcmp ole double %i.blk, %i.blm
  %i.blo = select i1 %i.bln, double %i.blk, double %i.blm ; 4 uses
  store double %i.blo, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.7 = add nuw nsw i64 %indvars.iv3295, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge2952.unr-lcssa, label %.lr.ph2951.new, !llvm.loop !90

._crit_edge2952.unr-lcssa:                        ; preds = %.lr.ph2951.new
  br i1 %lcmp.mod3776.not, label %._crit_edge2952, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2952.unr-lcssa, %.lr.ph2951
  %indvars.iv3295.epil.init = phi i64 [ 1, %.lr.ph2951 ], [ %indvars.iv.next3296.7, %._crit_edge2952.unr-lcssa ]
  %.epil.init = phi double [ %.promoted2960, %.lr.ph2951 ], [ %i.blo, %._crit_edge2952.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3779)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.epil.preheader
  %indvars.iv3295.epil = phi i64 [ %indvars.iv3295.epil.init, %.epil.preheader ], [ %indvars.iv.next3296.epil, %bb.fq ] ; 2 uses
  %i.blp = phi double [ %.epil.init, %.epil.preheader ], [ %i.blt, %bb.fq ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fq ]
  %i.blq = mul nsw i64 %indvars.iv3295.epil, %i.bkd
  %gep3642.epil.a = getelementptr [8 x i8], ptr %invariant.gep3641.a, i64 %i.blq
  %i.blr = load double, ptr %gep3642.epil.a, align 8, !tbaa !9 ; 2 uses
  %i.bls = fcmp ole double %i.blp, %i.blr
  %i.blt = select i1 %i.bls, double %i.blp, double %i.blr ; 3 uses
  store double %i.blt, ptr %11, align 8, !tbaa !9
  %indvars.iv.next3296.epil = add nuw nsw i64 %indvars.iv3295.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3774.a
  br i1 %epil.iter.cmp.not, label %._crit_edge2952, label %bb.fq, !llvm.loop !91

._crit_edge2952:                                  ; preds = %bb.fq, %._crit_edge2952.unr-lcssa
  %.lcssa3750 = phi double [ %i.blk, %._crit_edge2952.unr-lcssa ], [ %i.blp, %bb.fq ]
  %.lcssa3749 = phi double [ %i.blo, %._crit_edge2952.unr-lcssa ], [ %i.blt, %bb.fq ] ; 2 uses
  %indvars.iv.next3301.a = add nuw nsw i64 %indvars.iv3300.a, 1 ; 2 uses
  %exitcond3304.not = icmp eq i64 %indvars.iv.next3301.a, %wide.trip.count3303
  br i1 %exitcond3304.not, label %._crit_edge2958.split, label %.lr.ph2951, !llvm.loop !93

._crit_edge2958.split:                            ; preds = %._crit_edge2952
  store double %.lcssa3750, ptr %i.au, align 8, !tbaa !9
  %i.blu = fcmp oeq double %.lcssa3749, 0.000000e+00
  br i1 %i.blu, label %bb.fr, label %.lr.ph2973.preheader

._crit_edge2958.split.thread3488:                 ; preds = %.loopexit2594
  %i.blv = fcmp oeq double %i.bkc, 0.000000e+00
  br i1 %i.blv, label %bb.fr, label %._crit_edge2974

._crit_edge2958.split.thread:                     ; preds = %.lr.ph2957
  %i.blw = fcmp oeq double %i.bkc, 0.000000e+00
  br i1 %i.blw, label %bb.fr, label %.lr.ph2973.preheader

bb.fr:                                            ; preds = %._crit_edge2958.split.thread3488, %._crit_edge2958.split.thread, %._crit_edge2958.split
  %i.blx = add nuw nsw i32 %i.pz, 2
  store i32 %i.blx, ptr %12, align 4, !tbaa !8
  %i.bly = call i32 @llvm.smax.i32(i32 %.01789, i32 %.01788346534723480)
  %i.blz = uitofp nneg i32 %i.bly to double
  store double %i.blz, ptr %14, align 8, !tbaa !9
  %i.bma = shl nuw nsw i32 %.01788346534723480, 1
  %i.bmb = add nuw nsw i32 %i.bma, %.01789
  %i.bmc = uitofp nneg i32 %i.bmb to double
  %i.bmd = sext i32 %i.bm to i64
  %i.bme = getelementptr [8 x i8], ptr %i.bo, i64 %i.bmd
  %i.bmf = getelementptr i8, ptr %i.bme, i64 16
  store double %i.bmc, ptr %i.bmf, align 8, !tbaa !9
  br label %bb.fz

.lr.ph2973.preheader:                             ; preds = %._crit_edge2958.split, %._crit_edge2958.split.thread
  store i32 %.01789, ptr %i.ao, align 4, !tbaa !8
  %i.bmg = sext i32 %i.bi to i64
  %i.bmh = sext i32 %i.bm to i64
  %invariant.gep3645 = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  br label %.lr.ph2973

.loopexit2587.loopexit:                           ; preds = %.loopexit
  %.pre3347 = load i32, ptr %i.ao, align 4, !tbaa !8
  br label %.loopexit2587

.loopexit2587:                                    ; preds = %.loopexit2587.loopexit, %.lr.ph2973
  %i.bmi = phi i32 [ %.pre3347, %.loopexit2587.loopexit ], [ %i.bmk, %.lr.ph2973 ] ; 2 uses
  %i.bmj = sext i32 %i.bmi to i64
  %.not1960.not = icmp slt i64 %indvars.iv3311.a, %i.bmj
  br i1 %.not1960.not, label %.lr.ph2973, label %._crit_edge2974, !llvm.loop !94

.lr.ph2973:                                       ; preds = %.lr.ph2973.preheader, %.loopexit2587
  %i.bmk = phi i32 [ %.01789, %.lr.ph2973.preheader ], [ %i.bmi, %.loopexit2587 ]
  %indvars.iv3311.a = phi i64 [ 1, %.lr.ph2973.preheader ], [ %indvars.iv.next3312.a, %.loopexit2587 ] ; 5 uses
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv3311.a
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !8 ; 2 uses
  %indvars.iv.next3312.a = add nuw nsw i64 %indvars.iv3311.a, 1
  %i.bmn = getelementptr [4 x i8], ptr %12, i64 %indvars.iv3311.a
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !8
  store i32 %.01788346534723480, ptr %i.ap, align 4, !tbaa !8
  br i1 %.not19142642346734713482, label %.loopexit2587, label %.lr.ph2969

.lr.ph2969:                                       ; preds = %.lr.ph2973
  %i.bmp = sub nsw i32 %i.bmo, %i.bmm
  %i.bmq = sext i32 %i.bmm to i64
  %invariant.gep3647 = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv3311.a
  %invariant.gep3643 = getelementptr [8 x i8], ptr %i.bk, i64 %i.bmq
  br label %bb.fs

bb.fs:                                            ; preds = %.lr.ph2969, %.loopexit
  %i.bmr = phi i32 [ %.01788346534723480, %.lr.ph2969 ], [ %i.bnf, %.loopexit ] ; 2 uses
  %indvars.iv3308 = phi i64 [ 1, %.lr.ph2969 ], [ %indvars.iv.next3309, %.loopexit ] ; 4 uses
  %gep3646 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3645, i64 %indvars.iv3308 ; 2 uses
  %i.bms = load i32, ptr %gep3646, align 4, !tbaa !8 ; 2 uses
  %i.bmt = getelementptr i8, ptr %gep3646, i64 4
  %i.bmu = load i32, ptr %i.bmt, align 4, !tbaa !8 ; 2 uses
  %i.bmv = load double, ptr %11, align 8, !tbaa !9
  %i.bmw = mul nsw i64 %indvars.iv3308, %i.bmh
  %gep3648 = getelementptr [8 x i8], ptr %invariant.gep3647, i64 %i.bmw
  %i.bmx = load double, ptr %gep3648, align 8, !tbaa !9
  %i.bmy = fdiv double %i.bmv, %i.bmx             ; 2 uses
  store double %i.bmy, ptr %i.av, align 8, !tbaa !9
  %i.bmz = fcmp une double %i.bmy, 1.000000e+00
  br i1 %i.bmz, label %bb.ft, label %.loopexit

bb.ft:                                            ; preds = %bb.fs
  %i.bna = add nsw i32 %i.bmu, -1
  store i32 %i.bna, ptr %i.aq, align 4, !tbaa !8
  %.not19652962.not = icmp slt i32 %i.bms, %i.bmu
  br i1 %.not19652962.not, label %.lr.ph2965.preheader, label %.loopexit

.lr.ph2965.preheader:                             ; preds = %bb.ft
  %i.bnb = sext i32 %i.bms to i64
  br label %.lr.ph2965

.lr.ph2965:                                       ; preds = %.lr.ph2965.preheader, %.lr.ph2965
  %indvars.iv3305 = phi i64 [ %i.bnb, %.lr.ph2965.preheader ], [ %indvars.iv.next3306, %.lr.ph2965 ] ; 3 uses
  store i32 %i.bmp, ptr %i.ar, align 4, !tbaa !8
  %i.bnc = mul nsw i64 %indvars.iv3305, %i.bmg
  %gep3644 = getelementptr [8 x i8], ptr %invariant.gep3643, i64 %i.bnc
  call void @dscal_(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av, ptr noundef %gep3644, ptr noundef nonnull @c__1) #9
  %indvars.iv.next3306 = add nsw i64 %indvars.iv3305, 1
  %i.bnd = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.bne = sext i32 %i.bnd to i64
  %.not1965.not = icmp slt i64 %indvars.iv3305, %i.bne
  br i1 %.not1965.not, label %.lr.ph2965, label %.loopexit.loopexit, !llvm.loop !95

.loopexit.loopexit:                               ; preds = %.lr.ph2965
  %.pre3346 = load i32, ptr %i.ap, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ft, %bb.fs
  %i.bnf = phi i32 [ %.pre3346, %.loopexit.loopexit ], [ %i.bmr, %bb.ft ], [ %i.bmr, %bb.fs ] ; 2 uses
  %indvars.iv.next3309 = add nuw nsw i64 %indvars.iv3308, 1
  %i.bng = sext i32 %i.bnf to i64
  %.not1964.not = icmp slt i64 %indvars.iv3308, %i.bng
  br i1 %.not1964.not, label %bb.fs, label %.loopexit2587.loopexit, !llvm.loop !96

._crit_edge2974:                                  ; preds = %.loopexit2587, %._crit_edge2958.split.thread3488
  %i.bnh = fcmp une double %.32, 1.000000e+00
  %i.bni = fcmp ogt double %.32, 0.000000e+00
  %or.cond9 = and i1 %i.bnh, %i.bni
  br i1 %or.cond9, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %._crit_edge2974
  %i.bnj = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %i.bnk = fdiv double %i.bnj, %i.ea              ; 2 uses
  %i.bnl = fdiv double 1.000000e+00, %.32         ; 2 uses
  %i.bnm = fcmp ole double %i.bnk, %i.bnl
  %i.bnn = select i1 %i.bnm, double %i.bnk, double %i.bnl ; 2 uses
  %i.bno = fmul double %.32, %i.bnn
  %i.bnp = fdiv double %i.bnj, %i.bnn
  store double %i.bnp, ptr %11, align 8, !tbaa !9
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %._crit_edge2974
  %.33 = phi double [ %i.bno, %bb.fu ], [ %.32, %._crit_edge2974 ] ; 5 uses
  %i.bnq = fcmp une double %.33, 1.000000e+00
  %i.bnr = fcmp ogt double %.33, 0.000000e+00
  %or.cond11 = and i1 %i.bnq, %i.bnr
  br i1 %or.cond11, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.bns = load double, ptr %9, align 8, !tbaa !9 ; 4 uses
  store double %i.bns, ptr %i.av, align 8, !tbaa !9
  %i.bnt = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  store i32 %i.bnt, ptr %i.ao, align 4, !tbaa !8
  %.not19612985 = icmp slt i32 %i.bnt, 1
  br i1 %.not19612985, label %._crit_edge2990.split, label %.lr.ph2989

.lr.ph2989:                                       ; preds = %bb.fw
  %i.bnu = load i32, ptr %4, align 4, !tbaa !8    ; 4 uses
  store i32 %i.bnu, ptr %i.ap, align 4, !tbaa !8
  %.not19632975 = icmp slt i32 %i.bnu, 1
  br i1 %.not19632975, label %._crit_edge2990.split, label %.lr.ph2978.preheader

.lr.ph2978.preheader:                             ; preds = %.lr.ph2989
  %i.bnv = sext i32 %i.bi to i64                  ; 5 uses
  %i.bnw = add nuw i32 %i.bnt, 1
  %wide.trip.count3322 = zext i32 %i.bnw to i64
  %i.bnx = zext nneg i32 %i.bnu to i64            ; 2 uses
  %xtraiter3781 = and i64 %i.bnx, 3               ; 3 uses
  %i.bny = icmp ult i32 %i.bnu, 4
  %unroll_iter3788 = and i64 %i.bnx, 2147483644
  %lcmp.mod3785.not = icmp eq i64 %xtraiter3781, 0
  %lcmp.mod3787 = icmp ne i64 %xtraiter3781, 0
  br label %.lr.ph2978

.lr.ph2978:                                       ; preds = %.lr.ph2978.preheader, %._crit_edge2979
  %indvars.iv3319 = phi i64 [ 1, %.lr.ph2978.preheader ], [ %indvars.iv.next3320, %._crit_edge2979 ] ; 2 uses
  %.lcssa298129842986 = phi double [ %i.bns, %.lr.ph2978.preheader ], [ %.lcssa, %._crit_edge2979 ] ; 2 uses
  %invariant.gep3649 = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv3319 ; 5 uses
  br i1 %i.bny, label %.epil.preheader3780, label %.lr.ph2978.new

.lr.ph2978.new:                                   ; preds = %.lr.ph2978, %.lr.ph2978.new
  %indvars.iv3314 = phi i64 [ %indvars.iv.next3315.3, %.lr.ph2978.new ], [ 1, %.lr.ph2978 ] ; 5 uses
  %i.bnz = phi double [ %i.bpb, %.lr.ph2978.new ], [ %.lcssa298129842986, %.lr.ph2978 ] ; 2 uses
  %niter3789 = phi i64 [ %niter3789.next.3, %.lr.ph2978.new ], [ 0, %.lr.ph2978 ]
  %i.boa = mul nsw i64 %indvars.iv3314, %i.bnv
  %gep3650 = getelementptr [8 x i8], ptr %invariant.gep3649, i64 %i.boa
  %i.bob = load double, ptr %gep3650, align 8, !tbaa !9 ; 3 uses
  %i.boc = fcmp oge double %i.bob, 0.000000e+00
  %i.bod = fneg double %i.bob
  %i.boe = select i1 %i.boc, double %i.bob, double %i.bod ; 2 uses
  %i.bof = fcmp oge double %i.bnz, %i.boe
  %i.bog = select i1 %i.bof, double %i.bnz, double %i.boe ; 2 uses
  %indvars.iv.next3315 = add nuw nsw i64 %indvars.iv3314, 1
  %i.boh = mul nsw i64 %indvars.iv.next3315, %i.bnv
  %gep3650.1 = getelementptr [8 x i8], ptr %invariant.gep3649, i64 %i.boh
  %i.boi = load double, ptr %gep3650.1, align 8, !tbaa !9 ; 3 uses
  %i.boj = fcmp oge double %i.boi, 0.000000e+00
  %i.bok = fneg double %i.boi
  %i.bol = select i1 %i.boj, double %i.boi, double %i.bok ; 2 uses
  %i.bom = fcmp oge double %i.bog, %i.bol
  %i.bon = select i1 %i.bom, double %i.bog, double %i.bol ; 2 uses
  %indvars.iv.next3315.1 = add nuw nsw i64 %indvars.iv3314, 2
  %i.boo = mul nsw i64 %indvars.iv.next3315.1, %i.bnv
  %gep3650.2 = getelementptr [8 x i8], ptr %invariant.gep3649, i64 %i.boo
  %i.bop = load double, ptr %gep3650.2, align 8, !tbaa !9 ; 3 uses
  %i.boq = fcmp oge double %i.bop, 0.000000e+00
  %i.bor = fneg double %i.bop
  %i.bos = select i1 %i.boq, double %i.bop, double %i.bor ; 2 uses
  %i.bot = fcmp oge double %i.bon, %i.bos
  %i.bou = select i1 %i.bot, double %i.bon, double %i.bos ; 2 uses
  %indvars.iv.next3315.2 = add nuw nsw i64 %indvars.iv3314, 3
  %i.bov = mul nsw i64 %indvars.iv.next3315.2, %i.bnv
  %gep3650.3 = getelementptr [8 x i8], ptr %invariant.gep3649, i64 %i.bov
  %i.bow = load double, ptr %gep3650.3, align 8, !tbaa !9 ; 3 uses
  %i.box = fcmp oge double %i.bow, 0.000000e+00
  %i.boy = fneg double %i.bow
  %i.boz = select i1 %i.box, double %i.bow, double %i.boy ; 2 uses
  %i.bpa = fcmp oge double %i.bou, %i.boz
  %i.bpb = select i1 %i.bpa, double %i.bou, double %i.boz ; 3 uses
  %indvars.iv.next3315.3 = add nuw nsw i64 %indvars.iv3314, 4 ; 2 uses
  %niter3789.next.3 = add i64 %niter3789, 4       ; 2 uses
  %niter3789.ncmp.3 = icmp eq i64 %niter3789.next.3, %unroll_iter3788
  br i1 %niter3789.ncmp.3, label %._crit_edge2979.unr-lcssa, label %.lr.ph2978.new, !llvm.loop !97

._crit_edge2979.unr-lcssa:                        ; preds = %.lr.ph2978.new
  br i1 %lcmp.mod3785.not, label %._crit_edge2979, label %.epil.preheader3780

.epil.preheader3780:                              ; preds = %._crit_edge2979.unr-lcssa, %.lr.ph2978
  %indvars.iv3314.epil.init = phi i64 [ 1, %.lr.ph2978 ], [ %indvars.iv.next3315.3, %._crit_edge2979.unr-lcssa ]
  %.epil.init3784 = phi double [ %.lcssa298129842986, %.lr.ph2978 ], [ %i.bpb, %._crit_edge2979.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3787)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fx, %.epil.preheader3780
  %indvars.iv3314.epil = phi i64 [ %indvars.iv3314.epil.init, %.epil.preheader3780 ], [ %indvars.iv.next3315.epil, %bb.fx ] ; 2 uses
  %i.bpc = phi double [ %.epil.init3784, %.epil.preheader3780 ], [ %i.bpj, %bb.fx ] ; 2 uses
  %epil.iter3782 = phi i64 [ 0, %.epil.preheader3780 ], [ %epil.iter3782.next, %bb.fx ]
  %i.bpd = mul nsw i64 %indvars.iv3314.epil, %i.bnv
  %gep3650.epil = getelementptr [8 x i8], ptr %invariant.gep3649, i64 %i.bpd
  %i.bpe = load double, ptr %gep3650.epil, align 8, !tbaa !9 ; 3 uses
  %i.bpf = fcmp oge double %i.bpe, 0.000000e+00
  %i.bpg = fneg double %i.bpe
  %i.bph = select i1 %i.bpf, double %i.bpe, double %i.bpg ; 2 uses
  %i.bpi = fcmp oge double %i.bpc, %i.bph
  %i.bpj = select i1 %i.bpi, double %i.bpc, double %i.bph ; 2 uses
  %indvars.iv.next3315.epil = add nuw nsw i64 %indvars.iv3314.epil, 1
  %epil.iter3782.next = add i64 %epil.iter3782, 1 ; 2 uses
  %epil.iter3782.cmp.not = icmp eq i64 %epil.iter3782.next, %xtraiter3781
  br i1 %epil.iter3782.cmp.not, label %._crit_edge2979, label %bb.fx, !llvm.loop !98

._crit_edge2979:                                  ; preds = %bb.fx, %._crit_edge2979.unr-lcssa
  %.lcssa = phi double [ %i.bpb, %._crit_edge2979.unr-lcssa ], [ %i.bpj, %bb.fx ] ; 3 uses
  %indvars.iv.next3320 = add nuw nsw i64 %indvars.iv3319, 1 ; 2 uses
  %exitcond3323.not = icmp eq i64 %indvars.iv.next3320, %wide.trip.count3322
  br i1 %exitcond3323.not, label %._crit_edge2990, label %.lr.ph2978, !llvm.loop !99

._crit_edge2990:                                  ; preds = %._crit_edge2979
  store double %.lcssa, ptr %i.av, align 8, !tbaa !9
  br label %._crit_edge2990.split

._crit_edge2990.split:                            ; preds = %._crit_edge2990, %.lr.ph2989, %bb.fw
  %i.bpk = phi double [ %.lcssa, %._crit_edge2990 ], [ %i.bns, %.lr.ph2989 ], [ %i.bns, %bb.fw ]
  %i.bpl = fdiv double %i.ic, %i.bpk              ; 3 uses
  store double %i.bpl, ptr %i.au, align 8, !tbaa !9
  %i.bpm = fdiv double 1.000000e+00, %.33         ; 2 uses
  %i.bpn = fcmp ole double %i.bpl, %i.bpm
  %i.bpo = select i1 %i.bpn, double %i.bpl, double %i.bpm ; 2 uses
  store double %i.bpo, ptr %i.bb, align 8, !tbaa !9
  %i.bpp = fmul double %.33, %i.bpo
  call void @dlascl_(ptr noundef nonnull @.str.9, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_b32, ptr noundef nonnull %i.bb, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12) #9
  br label %bb.fy

bb.fy:                                            ; preds = %._crit_edge2990.split, %bb.fv
  %.34 = phi double [ %i.bpp, %._crit_edge2990.split ], [ %.33, %bb.fv ]
  %i.bpq = load double, ptr %11, align 8, !tbaa !9
  %i.bpr = fmul double %.34, %i.bpq
  store double %i.bpr, ptr %11, align 8, !tbaa !9
  %i.bps = add nuw nsw i32 %i.pz, 2
  store i32 %i.bps, ptr %12, align 4, !tbaa !8
  %i.bpt = call i32 @llvm.smax.i32(i32 %.01789, i32 %.01788346534723480)
  %i.bpu = uitofp nneg i32 %i.bpt to double
  store double %i.bpu, ptr %14, align 8, !tbaa !9
  %i.bpv = shl nuw nsw i32 %.01788346534723480, 1
  %i.bpw = add nuw nsw i32 %i.bpv, %.01789
  %i.bpx = uitofp nneg i32 %i.bpw to double
  %i.bpy = sext i32 %i.bm to i64
  %i.bpz = getelementptr [8 x i8], ptr %i.bo, i64 %i.bpy
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 16
  store double %i.bpx, ptr %i.bqa, align 8, !tbaa !9
  br label %bb.fz

bb.fz:                                            ; preds = %bb.r, %bb.q, %bb.fy, %bb.fr, %bb.v, %.thread2585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @dtrsyl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare double @dlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlarmm_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 8, i32 24}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12, !14, !13}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !13, !14}
!21 = distinct !{!21, !12, !13, !14}
!22 = distinct !{!22, !12, !14, !13}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !13, !14}
!26 = !{!"branch_weights", i32 4, i32 12}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !12, !14, !13}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !92}
!99 = distinct !{!99, !12}
end_hunk_2
