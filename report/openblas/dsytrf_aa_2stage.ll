Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytrf_aa_2stage?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DSYTRF_AA_2STAGE\00", align 1
@c__1 = internal global i32 1, align 4
@c_n1 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"NoTranspose\00", align 1
@c_b12 = internal global double 1.000000e+00, align 8
@c_b13 = internal global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b21 = internal global double -1.000000e+00, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"T\00", align 1

; Function Attrs: nounwind uwtable
define void @dsytrf_aa_2stage_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef initializes((0, 4)) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 68 uses
  %i.c = alloca i32, align 4                      ; 50 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 55 uses
  %i.h = alloca i32, align 4                      ; 67 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.i = load i32, ptr %3, align 4, !tbaa !31     ; 39 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j ; 50 uses
  %i.l = getelementptr inbounds i8, ptr %4, i64 -8 ; 64 uses
  %i.m = getelementptr inbounds i8, ptr %6, i64 -4 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %8, i64 -8 ; 14 uses
  store i32 0, ptr %10, align 4, !tbaa !31
  %i.o = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.p = load i32, ptr %9, align 4, !tbaa !31
  %i.q = icmp eq i32 %i.p, -1                     ; 3 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !31
  %i.s = icmp eq i32 %i.r, -1                     ; 3 uses
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not646 = icmp eq i32 %i.t, 0
  br i1 %.not646, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = load i32, ptr %1, align 4, !tbaa !31     ; 4 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %3, align 4, !tbaa !31
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1)
  %i.x = icmp slt i32 %i.w, %spec.select
  br i1 %i.x, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %5, align 4, !tbaa !31
  %i.z = shl i32 %i.u, 2
  %i.aa = icmp sge i32 %i.y, %i.z
  %or.cond = select i1 %i.aa, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %9, align 4, !tbaa !31
  %i.ac = icmp sge i32 %i.ab, %i.u
  %or.cond3 = select i1 %i.ac, i1 true, i1 %i.q
  br i1 %or.cond3, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %.pr = load i32, ptr %10, align 4, !tbaa !31    ; 2 uses
  %.not647 = icmp eq i32 %.pr, 0
  br i1 %.not647, label %bb.h, label %.thread

.thread.sink.split:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -6, %bb.e ], [ -4, %bb.d ], [ -10, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %10, align 4, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g
  %i.ad = phi i32 [ %.pr, %bb.g ], [ %.sink, %.thread.sink.split ]
  %i.ae = sub nsw i32 0, %i.ad
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !31
  %i.af = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 16) #5 ; 0 uses
  br label %bb.bk

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 16, i32 noundef 1) #5 ; 5 uses
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !31
  %i.ah = load i32, ptr %10, align 4, !tbaa !31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = mul nsw i32 %i.ag, 3
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = load i32, ptr %1, align 4, !tbaa !31
  %i.am = mul nsw i32 %i.al, %i.ak
  %i.an = sitofp i32 %i.am to double
  store double %i.an, ptr %4, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.q, label %.thread680, label %bb.l

.thread680:                                       ; preds = %bb.k
  %i.ao = load i32, ptr %1, align 4, !tbaa !31
  %i.ap = mul nsw i32 %i.ao, %i.ag
  %i.aq = sitofp i32 %i.ap to double
  store double %i.aq, ptr %8, align 8, !tbaa !33
  br label %bb.bk

bb.l:                                             ; preds = %bb.k, %bb.h
  %or.cond5 = select i1 %i.s, i1 true, i1 %i.q
  br i1 %or.cond5, label %bb.bk, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %1, align 4, !tbaa !31    ; 6 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.bk, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %5, align 4, !tbaa !31
  %11 = sdiv i32 %i.at, %i.ar                     ; 69 uses
  store i32 %11, ptr %i.d, align 4, !tbaa !31
  %i.au = mul nsw i32 %i.ag, 3
  %.not648 = icmp sgt i32 %11, %i.au
  br i1 %.not648, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %11, -1
  %i.aw = sdiv i32 %i.av, 3                       ; 2 uses
  store i32 %i.aw, ptr %i.h, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = phi i32 [ %i.aw, %bb.o ], [ %i.ag, %bb.n ] ; 2 uses
  %i.ay = load i32, ptr %9, align 4, !tbaa !31    ; 2 uses
  %i.az = mul nsw i32 %i.ax, %i.ar
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = sdiv i32 %i.ay, %i.ar                   ; 2 uses
  store i32 %i.bb, ptr %i.h, align 4, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = phi i32 [ %i.bb, %bb.q ], [ %i.ax, %bb.p ] ; 5 uses
  %i.bd = add i32 %i.ar, -1
  %i.be = add i32 %i.bd, %i.bc
  %i.bf = sdiv i32 %i.be, %i.bc                   ; 2 uses
  %i.bg = shl i32 %i.bc, 1                        ; 4 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.ar) ; 6 uses
  store i32 %., ptr %i.g, align 4, !tbaa !31
  %.not650699 = icmp slt i32 %., 1
  br i1 %.not650699, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.r
  %i.bh = add nuw i32 %., 1
  %wide.trip.count = zext i32 %i.bh to i64
  %i.bi = zext nneg i32 %. to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %., 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check884 = icmp ult i32 %., 32
  br i1 %min.iters.check884, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bi, 24
  %n.vec = and i64 %i.bi, 2147483616              ; 4 uses
  %i.bk = or disjoint i64 %n.vec, 1               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.bl = getelementptr [4 x i8], ptr %6, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <8 x i32> %vec.ind, ptr %i.bl, align 4, !tbaa !31
  store <8 x i32> %step.add, ptr %i.bm, align 4, !tbaa !31
  store <8 x i32> %step.add.2, ptr %i.bn, align 4, !tbaa !31
  store <8 x i32> %step.add.3, ptr %i.bo, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bk, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec885 = and i64 %i.bi, 2147483640           ; 3 uses
  %i.bq = or disjoint i64 %n.vec885, 1
  %i.br = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index886 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next888, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind887 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next889, %vec.epilog.vector.body ] ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %6, i64 %index886
  store <8 x i32> %vec.ind887, ptr %i.bs, align 4, !tbaa !31
  %index.next888 = add nuw i64 %index886, 8       ; 2 uses
  %vec.ind.next889 = add <8 x i32> %vec.ind887, splat (i32 8)
  %i.bt = icmp eq i64 %index.next888, %n.vec885
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n890 = icmp eq i64 %n.vec885, %i.bi
  br i1 %cmp.n890, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.r
  %i.bw = sitofp i32 %i.bc to double
  store double %i.bw, ptr %4, align 8, !tbaa !33
  %i.bx = add nsw i32 %i.bf, -1                   ; 2 uses
  %.not651792 = icmp slt i32 %i.bf, 1             ; 2 uses
  br i1 %.not, label %bb.ao, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  br i1 %.not651792, label %.loopexit695, label %.lr.ph752

.lr.ph752:                                        ; preds = %bb.s
  %i.by = or disjoint i32 %i.bg, 1                ; 15 uses
  %i.bz = add i32 %i.i, 1
  %i.ca = add nsw i32 %11, -1
  %12 = add nsw i32 %11, -1
  %13 = add nsw i32 %11, -1                       ; 4 uses
  %14 = add nsw i32 %11, -1
  %15 = add nsw i32 %11, -1
  %16 = add nsw i32 %11, -1
  %17 = add nsw i32 %11, -1
  %18 = add nsw i32 %11, -1
  %19 = add nsw i32 %11, -1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit697, %.lr.ph752
  %.1623749 = phi i32 [ 0, %.lr.ph752 ], [ %.pre848, %.loopexit697 ] ; 28 uses
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !31  ; 6 uses
  %i.cc = load i32, ptr %1, align 4, !tbaa !31
  %i.cd = mul nsw i32 %i.cb, %.1623749            ; 3 uses
  %i.ce = sub nsw i32 %i.cc, %i.cd                ; 2 uses
  store i32 %i.ce, ptr %i.c, align 4, !tbaa !31
  %i.cf = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ce) ; 2 uses
  store i32 %i.cf, ptr %i.g, align 4, !tbaa !31
  %i.cg = add nsw i32 %.1623749, -1               ; 8 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !31
  %.not665701 = icmp samesign ult i32 %.1623749, 2
  br i1 %.not665701, label %._crit_edge705, label %.lr.ph704

.lr.ph704:                                        ; preds = %bb.t
  %i.ch = icmp eq i32 %i.cg, 1
  %i.ci = shl i32 %i.cb, 1
  %i.cj = add nsw i32 %i.cf, %i.cb
  %storemerge678.peel = select i1 %i.ch, i32 %i.cj, i32 %i.ci
  store i32 %storemerge678.peel, ptr %i.f, align 4, !tbaa !31
  store i32 %i.ca, ptr %i.c, align 4, !tbaa !31
  %i.ck = mul nsw i32 %i.cb, %11
  %i.cl = add nsw i32 %i.by, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cm
  %i.co = add nsw i32 %i.cd, 1
  %i.cp = mul nsw i32 %i.co, %i.i
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr %i.k, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = sext i32 %i.cb to i64
  %i.cu = getelementptr [8 x i8], ptr %i.n, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.c, ptr noundef %i.cs, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef %i.cv, ptr noundef nonnull %1) #5
  %.pre = load i32, ptr %i.b, align 4, !tbaa !31
  %.not665.not.peel = icmp sgt i32 %.pre, 1
  br i1 %.not665.not.peel, label %.peel.next, label %._crit_edge705.loopexit

.peel.next:                                       ; preds = %.lr.ph704, %.peel.next
  %.0625702 = phi i32 [ %i.dw, %.peel.next ], [ 2, %.lr.ph704 ] ; 6 uses
  %i.cw = icmp eq i32 %.0625702, %i.cg
  %i.cx = load i32, ptr %i.h, align 4, !tbaa !31  ; 7 uses
  %i.cy = mul nsw i32 %i.cx, 3
  %i.cz = shl i32 %i.cx, 1
  %i.da = load i32, ptr %i.g, align 4
  %i.db = add nsw i32 %i.cz, %i.da
  %storemerge677 = select i1 %i.cw, i32 %i.db, i32 %i.cy
  store i32 %storemerge677, ptr %i.f, align 4, !tbaa !31
  store i32 %12, ptr %i.c, align 4, !tbaa !31
  %i.dc = add nsw i32 %.0625702, -1
  %i.dd = mul i32 %11, %i.dc
  %i.de = mul i32 %i.dd, %i.cx
  %i.df = add i32 %i.by, %i.cx
  %i.dg = add nsw i32 %i.df, %i.de
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.dh
  %i.dj = add nsw i32 %.0625702, -2
  %i.dk = mul nsw i32 %i.cx, %i.dj
  %i.dl = add nsw i32 %i.dk, 1
  %i.dm = mul nsw i32 %i.cx, %.1623749
  %i.dn = add nsw i32 %i.dm, 1
  %i.do = mul nsw i32 %i.dn, %i.i
  %i.dp = add nsw i32 %i.dl, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dq
  %i.ds = mul nsw i32 %i.cx, %.0625702
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.n, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.di, ptr noundef nonnull %i.c, ptr noundef %i.dr, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef %i.dv, ptr noundef nonnull %1) #5
  %.pre831 = load i32, ptr %i.b, align 4, !tbaa !31
  %i.dw = add nuw nsw i32 %.0625702, 1
  %.not665.not = icmp slt i32 %.0625702, %.pre831
  br i1 %.not665.not, label %.peel.next, label %._crit_edge705.loopexit, !llvm.loop !11

._crit_edge705.loopexit:                          ; preds = %.peel.next, %.lr.ph704
  %.pre832 = load i32, ptr %i.h, align 4, !tbaa !31
  %.pre839 = mul nsw i32 %.pre832, %.1623749
  br label %._crit_edge705

._crit_edge705:                                   ; preds = %._crit_edge705.loopexit, %bb.t
  %.pre-phi840 = phi i32 [ %.pre839, %._crit_edge705.loopexit ], [ %i.cd, %bb.t ] ; 2 uses
  store i32 %13, ptr %i.b, align 4, !tbaa !31
  %i.dx = add nsw i32 %.pre-phi840, 1
  %i.dy = mul i32 %i.dx, %i.bz
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dz
  %i.eb = mul nsw i32 %.pre-phi840, %11
  %i.ec = add nsw i32 %i.eb, %i.by
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ed
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.ea, ptr noundef nonnull %3, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.b) #5
  %i.ef = icmp samesign ugt i32 %.1623749, 1
  br i1 %i.ef, label %.thread682, label %bb.u

.thread682:                                       ; preds = %._crit_edge705
  %i.eg = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  %i.eh = mul nsw i32 %i.eg, %i.cg
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !31
  store i32 %13, ptr %i.c, align 4, !tbaa !31
  %i.ei = mul nsw i32 %i.eg, %.1623749            ; 2 uses
  %i.ej = add nsw i32 %i.ei, 1
  %i.ek = mul nsw i32 %i.ej, %i.i
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [8 x i8], ptr %i.k, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = sext i32 %i.eg to i64
  %i.ep = getelementptr [8 x i8], ptr %i.n, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = mul nsw i32 %11, %i.ei
  %i.es = add nsw i32 %i.er, %i.by
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.et
  call void @dgemm_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b21, ptr noundef %i.en, ptr noundef nonnull %3, ptr noundef %i.eq, ptr noundef nonnull %1, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.c) #5
  store i32 %13, ptr %i.b, align 4, !tbaa !31
  %i.ev = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  %i.ew = mul nsw i32 %i.ev, %i.cg                ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  %i.ey = mul nsw i32 %i.ev, %.1623749
  %i.ez = add nsw i32 %i.ey, 1
  %i.fa = mul nsw i32 %i.ez, %i.i
  %i.fb = add nsw i32 %i.ex, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fc
  %i.fe = mul nsw i32 %i.ew, %11
  %i.ff = add i32 %i.by, %i.ev
  %i.fg = add nsw i32 %i.ff, %i.fe
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fh
  call void @dgemm_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b12, ptr noundef %i.fd, ptr noundef nonnull %3, ptr noundef nonnull %i.fi, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b13, ptr noundef %8, ptr noundef nonnull %1) #5
  store i32 %13, ptr %i.b, align 4, !tbaa !31
  %i.fj = add nsw i32 %.1623749, -2
  %i.fk = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.fl = mul nsw i32 %i.fk, %i.fj
  %i.fm = add nsw i32 %i.fl, 1
  %i.fn = mul nsw i32 %i.fk, %.1623749            ; 2 uses
  %i.fo = add nsw i32 %i.fn, 1
  %i.fp = mul nsw i32 %i.fo, %i.i
  %i.fq = add nsw i32 %i.fm, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fr
  %i.ft = mul nsw i32 %i.fn, %11
  %i.fu = add nsw i32 %i.ft, %i.by
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fv
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b21, ptr noundef %8, ptr noundef nonnull %1, ptr noundef %i.fs, ptr noundef nonnull %3, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.b) #5
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge705
  %.not666 = icmp eq i32 %.1623749, 0
  br i1 %.not666, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread682, %bb.u
  store i32 %14, ptr %i.b, align 4, !tbaa !31
  %i.fx = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.fy = mul nsw i32 %i.fx, %.1623749            ; 2 uses
  %i.fz = mul nsw i32 %i.fy, %11
  %i.ga = add nsw i32 %i.fz, %i.by
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.gb
  %i.gd = mul nsw i32 %i.fx, %i.cg
  %i.ge = add nsw i32 %i.gd, 1
  %i.gf = add nsw i32 %i.fy, 1
  %i.gg = mul nsw i32 %i.gf, %i.i
  %i.gh = add nsw i32 %i.ge, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gi
  call void @dsygst_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.b, ptr noundef %i.gj, ptr noundef nonnull %3, ptr noundef nonnull %i.e) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not666685 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 3 uses
  %i.gk = load i32, ptr %i.g, align 4, !tbaa !31  ; 9 uses
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !31
  %.not667712 = icmp slt i32 %i.gk, 1
  br i1 %.not667712, label %._crit_edge716, label %.lr.ph715

.lr.ph715:                                        ; preds = %bb.w
  store i32 %i.gk, ptr %i.c, align 4, !tbaa !31
  %i.gl = load i32, ptr %i.h, align 4
  %i.gm = mul nsw i32 %i.gl, %.1623749            ; 2 uses
  %invariant.op = add i32 %i.gm, -1               ; 5 uses
  %i.gn = add nuw i32 %i.gk, 1
  %i.go = add nuw i32 %i.gk, 1
  %i.gp = add nsw i32 %i.gk, -2
  br label %bb.x

.loopexit696:                                     ; preds = %.prol.loopexit, %.lr.ph709.new, %bb.x
  %indvars.iv.next802 = add nuw i32 %indvars.iv801, 1
  %exitcond807.not = icmp eq i32 %indvars.iv801, %i.go
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond807.not, label %._crit_edge716, label %bb.x, !llvm.loop !12

bb.x:                                             ; preds = %.lr.ph715, %.loopexit696
  %indvar = phi i32 [ 0, %.lr.ph715 ], [ %indvar.next, %.loopexit696 ] ; 3 uses
  %indvars.iv801 = phi i32 [ 2, %.lr.ph715 ], [ %indvars.iv.next802, %.loopexit696 ] ; 3 uses
  %.1626713 = phi i32 [ 1, %.lr.ph715 ], [ %i.gr, %.loopexit696 ] ; 4 uses
  %i.gq = sub i32 %i.gp, %indvar
  %i.gr = add nuw nsw i32 %.1626713, 1            ; 2 uses
  %.not675706.not = icmp slt i32 %.1626713, %i.gk
  br i1 %.not675706.not, label %.lr.ph709, label %.loopexit696

.lr.ph709:                                        ; preds = %bb.x
  %i.gs = xor i32 %indvar, -1
  %i.gt = add i32 %i.gk, %i.gs
  %i.gu = zext i32 %indvars.iv801 to i64          ; 2 uses
  %.neg676 = add i32 %i.gr, %i.bg                 ; 5 uses
  %.reass718 = add i32 %.1626713, %invariant.op
  %i.gv = mul nsw i32 %.reass718, %11
  %i.gw = sub i32 %i.by, %.1626713
  %invariant.op710 = add i32 %i.gw, %i.gv         ; 5 uses
  %xtraiter = and i32 %i.gt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph709, %.prol.preheader
  %indvars.iv803.prol = phi i64 [ %indvars.iv.next804.prol, %.prol.preheader ], [ %i.gu, %.lr.ph709 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph709 ]
  %i.gx = trunc i64 %indvars.iv803.prol to i32    ; 3 uses
  %.reass.prol = add i32 %invariant.op, %i.gx
  %i.gy = mul nsw i32 %.reass.prol, %11
  %i.gz = sub i32 %.neg676, %i.gx
  %i.ha = add nsw i32 %i.gz, %i.gy
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !33
  %.reass711.prol = add i32 %invariant.op710, %i.gx
  %i.he = sext i32 %.reass711.prol to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.he
  store double %i.hd, ptr %i.hf, align 8, !tbaa !33
  %indvars.iv.next804.prol = add i64 %indvars.iv803.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !13

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph709
  %indvars.iv803.unr = phi i64 [ %i.gu, %.lr.ph709 ], [ %indvars.iv.next804.prol, %.prol.preheader ]
  %i.hg = icmp ult i32 %i.gq, 3
  br i1 %i.hg, label %.loopexit696, label %.lr.ph709.new

.lr.ph709.new:                                    ; preds = %.prol.loopexit, %.lr.ph709.new
  %indvars.iv803 = phi i64 [ %indvars.iv.next804.3, %.lr.ph709.new ], [ %indvars.iv803.unr, %.prol.loopexit ] ; 5 uses
  %i.hh = trunc i64 %indvars.iv803 to i32         ; 3 uses
  %.reass = add i32 %invariant.op, %i.hh
  %i.hi = mul nsw i32 %.reass, %11
  %i.hj = sub i32 %.neg676, %i.hh
  %i.hk = add nsw i32 %i.hj, %i.hi
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !33
  %.reass711 = add i32 %invariant.op710, %i.hh
  %i.ho = sext i32 %.reass711 to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ho
  store double %i.hn, ptr %i.hp, align 8, !tbaa !33
  %i.hq = trunc i64 %indvars.iv803 to i32         ; 2 uses
  %i.hr = add i32 %i.hq, 1                        ; 2 uses
  %.reass.1 = add i32 %i.gm, %i.hq
  %i.hs = mul nsw i32 %.reass.1, %11
  %i.ht = sub i32 %.neg676, %i.hr
  %i.hu = add nsw i32 %i.ht, %i.hs
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !33
  %.reass711.1 = add i32 %invariant.op710, %i.hr
  %i.hy = sext i32 %.reass711.1 to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.hy
  store double %i.hx, ptr %i.hz, align 8, !tbaa !33
  %i.ia = trunc i64 %indvars.iv803 to i32
  %i.ib = add i32 %i.ia, 2                        ; 3 uses
  %.reass.2 = add i32 %invariant.op, %i.ib
  %i.ic = mul nsw i32 %.reass.2, %11
  %i.id = sub i32 %.neg676, %i.ib
  %i.ie = add nsw i32 %i.id, %i.ic
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !33
  %.reass711.2 = add i32 %invariant.op710, %i.ib
  %i.ii = sext i32 %.reass711.2 to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ii
  store double %i.ih, ptr %i.ij, align 8, !tbaa !33
  %i.ik = trunc i64 %indvars.iv803 to i32
  %i.il = add i32 %i.ik, 3                        ; 3 uses
  %.reass.3 = add i32 %invariant.op, %i.il
  %i.im = mul nsw i32 %.reass.3, %11
  %i.in = sub i32 %.neg676, %i.il
  %i.io = add nsw i32 %i.in, %i.im
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !33
  %.reass711.3 = add i32 %invariant.op710, %i.il
  %i.is = sext i32 %.reass711.3 to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.is
  store double %i.ir, ptr %i.it, align 8, !tbaa !33
  %indvars.iv.next804.3 = add nuw nsw i64 %indvars.iv803, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next804.3 to i32
  %exitcond806.not.3 = icmp eq i32 %i.gn, %lftr.wideiv.3
  br i1 %exitcond806.not.3, label %.loopexit696, label %.lr.ph709.new, !llvm.loop !14

._crit_edge716:                                   ; preds = %.loopexit696, %bb.w
  %i.iu = icmp slt i32 %.1623749, %i.bx
  br i1 %i.iu, label %bb.y, label %.loopexit695

bb.y:                                             ; preds = %._crit_edge716
  br i1 %.not666685, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iv = icmp eq i32 %.1623749, 1
  br i1 %i.iv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %16, ptr %i.b, align 4, !tbaa !31
  %i.iw = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.ix = mul nsw i32 %i.iw, %11
  %i.iy = add nsw i32 %i.ix, %i.by
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iz
  %i.jb = add nsw i32 %i.iw, 1                    ; 2 uses
  %i.jc = mul nsw i32 %i.jb, %i.i
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr [8 x i8], ptr %i.k, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  %i.jg = sext i32 %i.jb to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.jg
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.b, ptr noundef %i.jf, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.jh, ptr noundef nonnull %1) #5
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ji = load i32, ptr %i.h, align 4, !tbaa !31  ; 5 uses
  %i.jj = add nsw i32 %i.ji, %i.gk
  store i32 %i.jj, ptr %i.b, align 4, !tbaa !31
  store i32 %15, ptr %i.c, align 4, !tbaa !31
  %i.jk = mul nsw i32 %i.ji, %i.cg
  %i.jl = mul nsw i32 %i.jk, %11
  %i.jm = add i32 %i.by, %i.ji
  %i.jn = add nsw i32 %i.jm, %i.jl
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jo
  %i.jq = add nsw i32 %.1623749, -2
  %i.jr = mul nsw i32 %i.ji, %i.jq
  %i.js = add nsw i32 %i.jr, 1
  %i.jt = mul nsw i32 %i.ji, %.1623749
  %i.ju = add nsw i32 %i.jt, 1                    ; 2 uses
  %i.jv = mul nsw i32 %i.ju, %i.i
  %i.jw = add nsw i32 %i.js, %i.jv
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.jx
  %i.jz = sext i32 %i.ju to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.jz
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.jp, ptr noundef nonnull %i.c, ptr noundef %i.jy, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.ka, ptr noundef nonnull %1) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.kb = load i32, ptr %1, align 4, !tbaa !31
  %i.kc = add nuw nsw i32 %.1623749, 1
  %i.kd = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  %i.ke = mul nsw i32 %i.kd, %i.kc                ; 2 uses
  %i.kf = sub nsw i32 %i.kb, %i.ke
  store i32 %i.kf, ptr %i.b, align 4, !tbaa !31
  %i.kg = mul nsw i32 %i.kd, %.1623749            ; 2 uses
  store i32 %i.kg, ptr %i.c, align 4, !tbaa !31
  %i.kh = sext i32 %i.kd to i64
  %i.ki = getelementptr [8 x i8], ptr %i.n, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  %i.kk = add nsw i32 %i.ke, 1
  %i.kl = mul nsw i32 %i.kk, %i.i                 ; 2 uses
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr [8 x i8], ptr %i.k, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  %i.kp = add nsw i32 %i.kg, 1
  %i.kq = add nsw i32 %i.kp, %i.kl
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kr
  call void @dgemm_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b21, ptr noundef %i.kj, ptr noundef nonnull %1, ptr noundef %i.ko, ptr noundef nonnull %3, ptr noundef nonnull @c_b12, ptr noundef %i.ks, ptr noundef nonnull %3) #5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %i.kt = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  store i32 %i.kt, ptr %i.b, align 4, !tbaa !31
  %.not668719 = icmp slt i32 %i.kt, 1
  %.pre848 = add nuw nsw i32 %.1623749, 1         ; 7 uses
  br i1 %.not668719, label %._crit_edge723, label %.lr.ph722

.lr.ph722:                                        ; preds = %bb.ad, %.lr.ph722
  %.1720 = phi i32 [ %i.lk, %.lr.ph722 ], [ 1, %bb.ad ] ; 4 uses
  %i.ku = load i32, ptr %1, align 4, !tbaa !31    ; 2 uses
  %i.kv = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.kw = mul nsw i32 %i.kv, %.pre848             ; 2 uses
  %i.kx = sub nsw i32 %i.ku, %i.kw
  store i32 %i.kx, ptr %i.c, align 4, !tbaa !31
  %i.ky = mul nsw i32 %i.kv, %.1623749
  %i.kz = add nsw i32 %i.ky, %.1720
  %i.la = add nsw i32 %i.kw, 1
  %i.lb = mul nsw i32 %i.la, %i.i
  %i.lc = add nsw i32 %i.kz, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ld
  %i.lf = add nsw i32 %.1720, -1
  %i.lg = mul nsw i32 %i.ku, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr [8 x i8], ptr %i.n, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 8
  call void @dcopy_(ptr noundef nonnull %i.c, ptr noundef %i.le, ptr noundef nonnull %3, ptr noundef %i.lj, ptr noundef nonnull @c__1) #5
  %i.lk = add nuw nsw i32 %.1720, 1
  %i.ll = load i32, ptr %i.b, align 4, !tbaa !31
  %.not668.not = icmp slt i32 %.1720, %i.ll
  br i1 %.not668.not, label %.lr.ph722, label %._crit_edge723.loopexit, !llvm.loop !15

._crit_edge723.loopexit:                          ; preds = %.lr.ph722
  %.pre833 = load i32, ptr %i.h, align 4, !tbaa !31
  br label %._crit_edge723

._crit_edge723:                                   ; preds = %bb.ad, %._crit_edge723.loopexit
  %i.lm = phi i32 [ %.pre833, %._crit_edge723.loopexit ], [ %i.kt, %bb.ad ]
  %i.ln = load i32, ptr %1, align 4, !tbaa !31
  %i.lo = mul nsw i32 %i.lm, %.pre848             ; 2 uses
  %i.lp = sub nsw i32 %i.ln, %i.lo
  store i32 %i.lp, ptr %i.b, align 4, !tbaa !31
  %i.lq = sext i32 %i.lo to i64
  %i.lr = getelementptr [4 x i8], ptr %i.m, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 4
  %i.lt = call i32 @dgetrf_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef %8, ptr noundef nonnull %1, ptr noundef %i.ls, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.lu = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  store i32 %i.lu, ptr %i.b, align 4, !tbaa !31
  %.not669724 = icmp slt i32 %i.lu, 1
  br i1 %.not669724, label %._crit_edge728, label %.lr.ph727

.lr.ph727:                                        ; preds = %._crit_edge723, %.lr.ph727
  %.2725 = phi i32 [ %i.ml, %.lr.ph727 ], [ 1, %._crit_edge723 ] ; 4 uses
  %i.lv = load i32, ptr %1, align 4, !tbaa !31    ; 2 uses
  %i.lw = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.lx = mul nsw i32 %i.lw, %.pre848             ; 2 uses
  %i.ly = sub nsw i32 %i.lv, %i.lx
  store i32 %i.ly, ptr %i.c, align 4, !tbaa !31
  %i.lz = add nsw i32 %.2725, -1
  %i.ma = mul nsw i32 %i.lv, %i.lz
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr [8 x i8], ptr %i.n, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 8
  %i.me = mul nsw i32 %i.lw, %.1623749
  %i.mf = add nsw i32 %i.me, %.2725
  %i.mg = add nsw i32 %i.lx, 1
  %i.mh = mul nsw i32 %i.mg, %i.i
  %i.mi = add nsw i32 %i.mf, %i.mh
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.mj
  call void @dcopy_(ptr noundef nonnull %i.c, ptr noundef %i.md, ptr noundef nonnull @c__1, ptr noundef %i.mk, ptr noundef nonnull %3) #5
  %i.ml = add nuw nsw i32 %.2725, 1
  %i.mm = load i32, ptr %i.b, align 4, !tbaa !31
  %.not669.not = icmp slt i32 %.2725, %i.mm
  br i1 %.not669.not, label %.lr.ph727, label %._crit_edge728.loopexit, !llvm.loop !16

._crit_edge728.loopexit:                          ; preds = %.lr.ph727
  %.pre834 = load i32, ptr %i.h, align 4, !tbaa !31
  br label %._crit_edge728

._crit_edge728:                                   ; preds = %._crit_edge728.loopexit, %._crit_edge723
  %i.mn = phi i32 [ %.pre834, %._crit_edge728.loopexit ], [ %i.lu, %._crit_edge723 ] ; 4 uses
  %i.mo = load i32, ptr %1, align 4, !tbaa !31
  %i.mp = mul nsw i32 %i.mn, %.pre848
  %i.mq = sub nsw i32 %i.mo, %i.mp                ; 2 uses
  store i32 %i.mq, ptr %i.c, align 4, !tbaa !31
  %i.mr = call i32 @llvm.smin.i32(i32 %i.mn, i32 %i.mq)
  store i32 %i.mr, ptr %i.g, align 4, !tbaa !31
  store i32 %17, ptr %i.b, align 4, !tbaa !31
  %i.ms = mul nsw i32 %i.mn, %.1623749
  %i.mt = mul nsw i32 %i.ms, %11
  %i.mu = add i32 %i.by, %i.mn
  %i.mv = add nsw i32 %i.mu, %i.mt
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.mw
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b13, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.b) #5
  store i32 %18, ptr %i.b, align 4, !tbaa !31
  %i.my = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.mz = mul i32 %11, %.1623749
  %i.na = mul i32 %i.mz, %i.my
  %i.nb = add i32 %i.by, %i.my
  %i.nc = add nsw i32 %i.nb, %i.na
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nd
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %8, ptr noundef nonnull %1, ptr noundef nonnull %i.ne, ptr noundef nonnull %i.b) #5
  br i1 %.not666685, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge728
  store i32 %19, ptr %i.b, align 4, !tbaa !31
  %i.nf = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  %i.ng = mul nsw i32 %i.nf, %i.cg
  %i.nh = add nsw i32 %i.ng, 1
  %i.ni = mul nsw i32 %i.nf, %.1623749            ; 2 uses
  %i.nj = add nsw i32 %i.ni, 1
  %i.nk = mul nsw i32 %i.nj, %i.i
  %i.nl = add nsw i32 %i.nh, %i.nk
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.nm
  %i.no = mul nsw i32 %i.ni, %11
  %i.np = add i32 %i.by, %i.nf
  %i.nq = add nsw i32 %i.np, %i.no
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nr
  call void @dtrsm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b12, ptr noundef %i.nn, ptr noundef nonnull %3, ptr noundef nonnull %i.ns, ptr noundef nonnull %i.b) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge728
  %i.nt = load i32, ptr %i.h, align 4, !tbaa !31  ; 13 uses
  store i32 %i.nt, ptr %i.b, align 4, !tbaa !31
  %.not671738 = icmp slt i32 %i.nt, 1
  br i1 %.not671738, label %.._crit_edge742.split_crit_edge, label %.lr.ph741

.._crit_edge742.split_crit_edge:                  ; preds = %bb.af
  %.pre850 = mul nsw i32 %i.nt, %.1623749
  br label %._crit_edge742.split

.lr.ph741:                                        ; preds = %bb.af
  %i.nu = load i32, ptr %i.g, align 4, !tbaa !31  ; 4 uses
  store i32 %i.nu, ptr %i.c, align 4, !tbaa !31
  %.not674731 = icmp slt i32 %i.nu, 1
  %i.nv = mul nuw nsw i32 %i.nt, %.1623749        ; 4 uses
  %invariant.op743 = add nsw i32 %i.nv, -1
  %i.nw = add i32 %i.by, %i.nt
  %i.nx = add nsw i32 %i.nt, -1
  %i.ny = add i32 %i.nx, %i.nv                    ; 5 uses
  br i1 %.not674731, label %._crit_edge742.split, label %.lr.ph734.preheader

.lr.ph734.preheader:                              ; preds = %.lr.ph741
  %i.nz = zext nneg i32 %i.nu to i64              ; 2 uses
  %xtraiter893 = and i64 %i.nz, 3                 ; 3 uses
  %i.oa = icmp ult i32 %i.nu, 4
  %unroll_iter = and i64 %i.nz, 2147483644
  %lcmp.mod894.not = icmp eq i64 %xtraiter893, 0
  %lcmp.mod895 = icmp ne i64 %xtraiter893, 0
  br label %.lr.ph734

.lr.ph734:                                        ; preds = %.lr.ph734.preheader, %._crit_edge735
  %.3739 = phi i32 [ %i.qm, %._crit_edge735 ], [ 1, %.lr.ph734.preheader ] ; 5 uses
  %.reass730.reass = add i32 %.3739, %invariant.op743
  %i.ob = mul nsw i32 %11, %.reass730.reass
  %i.oc = sub i32 %i.nw, %.3739
  %invariant.op736 = add i32 %i.oc, %i.ob         ; 5 uses
  %i.od = add i32 %i.by, %.3739                   ; 5 uses
  br i1 %i.oa, label %.epil.preheader, label %.lr.ph734.new

.lr.ph734.new:                                    ; preds = %.lr.ph734, %.lr.ph734.new
  %indvars.iv808 = phi i64 [ %indvars.iv.next809.3, %.lr.ph734.new ], [ 1, %.lr.ph734 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph734.new ], [ 0, %.lr.ph734 ]
  %i.oe = trunc nuw nsw i64 %indvars.iv808 to i32 ; 2 uses
  %.reass737 = add i32 %invariant.op736, %i.oe
  %i.of = sext i32 %.reass737 to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !33
  %i.oi = add i32 %i.ny, %i.oe
  %i.oj = mul nsw i32 %11, %i.oi
  %i.ok = trunc i64 %indvars.iv808 to i32
  %i.ol = add i32 %i.nt, %i.ok
  %i.om = sub i32 %i.od, %i.ol
  %i.on = add nsw i32 %i.om, %i.oj
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.oo
  store double %i.oh, ptr %i.op, align 8, !tbaa !33
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %i.oq = trunc nuw nsw i64 %indvars.iv.next809 to i32 ; 2 uses
  %.reass737.1 = add i32 %invariant.op736, %i.oq
  %i.or = sext i32 %.reass737.1 to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.or
  %i.ot = load double, ptr %i.os, align 8, !tbaa !33
  %i.ou = add i32 %i.ny, %i.oq
  %i.ov = mul nsw i32 %11, %i.ou
  %i.ow = trunc i64 %indvars.iv.next809 to i32
  %i.ox = add i32 %i.nt, %i.ow
  %i.oy = sub i32 %i.od, %i.ox
  %i.oz = add nsw i32 %i.oy, %i.ov
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pa
  store double %i.ot, ptr %i.pb, align 8, !tbaa !33
  %indvars.iv.next809.1 = add nuw nsw i64 %indvars.iv808, 2 ; 2 uses
  %i.pc = trunc nuw nsw i64 %indvars.iv.next809.1 to i32 ; 2 uses
  %.reass737.2 = add i32 %invariant.op736, %i.pc
  %i.pd = sext i32 %.reass737.2 to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pd
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !33
  %i.pg = add i32 %i.ny, %i.pc
  %i.ph = mul nsw i32 %11, %i.pg
  %i.pi = trunc i64 %indvars.iv.next809.1 to i32
  %i.pj = add i32 %i.nt, %i.pi
  %i.pk = sub i32 %i.od, %i.pj
  %i.pl = add nsw i32 %i.pk, %i.ph
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pm
  store double %i.pf, ptr %i.pn, align 8, !tbaa !33
  %indvars.iv.next809.2 = add nuw nsw i64 %indvars.iv808, 3 ; 2 uses
  %i.po = trunc nuw nsw i64 %indvars.iv.next809.2 to i32 ; 2 uses
  %.reass737.3 = add i32 %invariant.op736, %i.po
  %i.pp = sext i32 %.reass737.3 to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pp
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !33
  %i.ps = add i32 %i.ny, %i.po
  %i.pt = mul nsw i32 %11, %i.ps
  %i.pu = trunc i64 %indvars.iv.next809.2 to i32
  %i.pv = add i32 %i.nt, %i.pu
  %i.pw = sub i32 %i.od, %i.pv
  %i.px = add nsw i32 %i.pw, %i.pt
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.py
  store double %i.pr, ptr %i.pz, align 8, !tbaa !33
  %indvars.iv.next809.3 = add nuw nsw i64 %indvars.iv808, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge735.unr-lcssa, label %.lr.ph734.new, !llvm.loop !17

._crit_edge735.unr-lcssa:                         ; preds = %.lr.ph734.new
  br i1 %lcmp.mod894.not, label %._crit_edge735, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge735.unr-lcssa, %.lr.ph734
  %indvars.iv808.epil.init = phi i64 [ 1, %.lr.ph734 ], [ %indvars.iv.next809.3, %._crit_edge735.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod895)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %indvars.iv808.epil = phi i64 [ %indvars.iv808.epil.init, %.epil.preheader ], [ %indvars.iv.next809.epil, %bb.ag ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.qa = trunc nuw nsw i64 %indvars.iv808.epil to i32 ; 2 uses
  %.reass737.epil = add i32 %invariant.op736, %i.qa
  %i.qb = sext i32 %.reass737.epil to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.qb
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !33
  %i.qe = add i32 %i.ny, %i.qa
  %i.qf = mul nsw i32 %11, %i.qe
  %i.qg = trunc i64 %indvars.iv808.epil to i32
  %i.qh = add i32 %i.nt, %i.qg
  %i.qi = sub i32 %i.od, %i.qh
  %i.qj = add nsw i32 %i.qi, %i.qf
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.qk
  store double %i.qd, ptr %i.ql, align 8, !tbaa !33
  %indvars.iv.next809.epil = add nuw nsw i64 %indvars.iv808.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter893
  br i1 %epil.iter.cmp.not, label %._crit_edge735, label %bb.ag, !llvm.loop !18

._crit_edge735:                                   ; preds = %bb.ag, %._crit_edge735.unr-lcssa
  %i.qm = add nuw i32 %.3739, 1
  %exitcond813.not = icmp eq i32 %.3739, %i.nt
  br i1 %exitcond813.not, label %._crit_edge742.split, label %.lr.ph734, !llvm.loop !19

._crit_edge742.split:                             ; preds = %._crit_edge735, %.._crit_edge742.split_crit_edge, %.lr.ph741
  %.pre-phi851 = phi i32 [ %.pre850, %.._crit_edge742.split_crit_edge ], [ %i.nv, %.lr.ph741 ], [ %i.nv, %._crit_edge735 ]
  %i.qn = add nsw i32 %.pre-phi851, 1
  %i.qo = mul nsw i32 %i.nt, %.pre848
  %i.qp = add nsw i32 %i.qo, 1
  %i.qq = mul nsw i32 %i.qp, %i.i
  %i.qr = add nsw i32 %i.qn, %i.qq
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.qs
  call void @dlaset_(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b13, ptr noundef nonnull @c_b12, ptr noundef %i.qt, ptr noundef nonnull %3) #5
  %i.qu = load i32, ptr %i.g, align 4, !tbaa !31  ; 2 uses
  store i32 %i.qu, ptr %i.b, align 4, !tbaa !31
  %.not672744 = icmp slt i32 %i.qu, 1
  br i1 %.not672744, label %.loopexit697, label %.lr.ph747

.lr.ph747:                                        ; preds = %._crit_edge742.split, %bb.an
  %.4745 = phi i32 [ %i.sy, %bb.an ], [ 1, %._crit_edge742.split ] ; 5 uses
  %i.qv = load i32, ptr %i.h, align 4, !tbaa !31
  %i.qw = mul nsw i32 %i.qv, %.pre848             ; 3 uses
  %i.qx = add nsw i32 %i.qw, %.4745               ; 7 uses
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.qy ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !31 ; 2 uses
  %i.rb = add nsw i32 %i.ra, %i.qw                ; 9 uses
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !31
  %.not673 = icmp eq i32 %.4745, %i.ra
  br i1 %.not673, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph747
  %i.rc = add nsw i32 %.4745, -1
  store i32 %i.rc, ptr %i.c, align 4, !tbaa !31
  %i.rd = add nsw i32 %i.qw, 1                    ; 2 uses
  %i.re = mul nsw i32 %i.qx, %i.i                 ; 3 uses
  %i.rf = add nsw i32 %i.re, %i.rd
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rg
  %i.ri = mul nsw i32 %i.rb, %i.i                 ; 4 uses
  %i.rj = add nsw i32 %i.ri, %i.rd
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rk
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.rh, ptr noundef nonnull @c__1, ptr noundef %i.rl, ptr noundef nonnull @c__1) #5
  %i.rm = add nsw i32 %i.qx, 1                    ; 3 uses
  %i.rn = icmp sgt i32 %i.rb, %i.rm
  br i1 %i.rn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ro = xor i32 %i.qx, -1
  %i.rp = add i32 %i.rb, %i.ro
  store i32 %i.rp, ptr %i.c, align 4, !tbaa !31
  %i.rq = mul nsw i32 %i.rm, %i.i
  %i.rr = add nsw i32 %i.rq, %i.qx
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rs
  %i.ru = add nsw i32 %i.rm, %i.ri
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rv
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.rt, ptr noundef nonnull %3, ptr noundef %i.rw, ptr noundef nonnull @c__1) #5
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.rx = load i32, ptr %1, align 4, !tbaa !31    ; 2 uses
  %i.ry = icmp slt i32 %i.rb, %i.rx
  br i1 %i.ry, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.rz = sub nsw i32 %i.rx, %i.rb
  store i32 %i.rz, ptr %i.c, align 4, !tbaa !31
  %i.sa = add nsw i32 %i.rb, 1
  %i.sb = mul nsw i32 %i.sa, %i.i                 ; 2 uses
  %i.sc = add nsw i32 %i.sb, %i.qx
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.sd
  %i.sf = add nsw i32 %i.sb, %i.rb
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.sg
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.se, ptr noundef nonnull %3, ptr noundef %i.sh, ptr noundef nonnull %3) #5
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.si = add nsw i32 %i.re, %i.qx
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.sj ; 2 uses
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !33
  %i.sm = add nsw i32 %i.ri, %i.rb
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.sn ; 2 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !33
  store double %i.sp, ptr %i.sk, align 8, !tbaa !33
  store double %i.sl, ptr %i.so, align 8, !tbaa !33
  br i1 %.not666685, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.sq = load i32, ptr %i.h, align 4, !tbaa !31
  %i.sr = mul nsw i32 %i.sq, %.1623749
  store i32 %i.sr, ptr %i.c, align 4, !tbaa !31
  %i.ss = sext i32 %i.re to i64
  %i.st = getelementptr [8 x i8], ptr %i.k, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 8
  %i.sv = sext i32 %i.ri to i64
  %i.sw = getelementptr [8 x i8], ptr %i.k, i64 %i.sv
  %i.sx = getelementptr i8, ptr %i.sw, i64 8
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.su, ptr noundef nonnull @c__1, ptr noundef %i.sx, ptr noundef nonnull @c__1) #5
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph747, %bb.am, %bb.al
  %i.sy = add nuw nsw i32 %.4745, 1
  %i.sz = load i32, ptr %i.b, align 4, !tbaa !31
  %.not672.not = icmp slt i32 %.4745, %i.sz
  br i1 %.not672.not, label %.lr.ph747, label %.loopexit697, !llvm.loop !20

.loopexit697:                                     ; preds = %bb.an, %._crit_edge742.split
  br label %bb.t, !llvm.loop !21

bb.ao:                                            ; preds = %._crit_edge
  br i1 %.not651792, label %.loopexit695, label %.lr.ph797

.lr.ph797:                                        ; preds = %bb.ao
  %i.ta = or disjoint i32 %i.bg, 1                ; 15 uses
  %i.tb = add i32 %i.i, 1                         ; 5 uses
  %i.tc = add nsw i32 %11, -1
  %i.td = add nsw i32 %11, -1
  %i.te = add nsw i32 %11, -1                     ; 4 uses
  %i.tf = add nsw i32 %11, -1
  %i.tg = add nsw i32 %11, -1
  %i.th = add nsw i32 %11, -1
  %i.ti = add nsw i32 %11, -1
  %i.tj = add nsw i32 %11, -1
  %i.tk = add nsw i32 %11, -1
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit694, %.lr.ph797
  %.2624793 = phi i32 [ 0, %.lr.ph797 ], [ %.pre-phi843, %.loopexit694 ] ; 27 uses
  %i.tl = load i32, ptr %i.h, align 4, !tbaa !31  ; 6 uses
  %i.tm = load i32, ptr %1, align 4, !tbaa !31
  %i.tn = mul nsw i32 %i.tl, %.2624793            ; 3 uses
  %i.to = sub nsw i32 %i.tm, %i.tn                ; 2 uses
  store i32 %i.to, ptr %i.c, align 4, !tbaa !31
  %i.tp = call i32 @llvm.smin.i32(i32 %i.tl, i32 %i.to) ; 2 uses
  store i32 %i.tp, ptr %i.g, align 4, !tbaa !31
  %i.tq = add nsw i32 %.2624793, -1               ; 8 uses
  store i32 %i.tq, ptr %i.b, align 4, !tbaa !31
  %.not653753 = icmp samesign ult i32 %.2624793, 2
  br i1 %.not653753, label %._crit_edge757, label %.lr.ph756

.lr.ph756:                                        ; preds = %bb.ap
  %i.tr = icmp eq i32 %i.tq, 1
  %i.ts = shl i32 %i.tl, 1
  %i.tt = add nsw i32 %i.tp, %i.tl
  %storemerge662.peel = select i1 %i.tr, i32 %i.tt, i32 %i.ts
  store i32 %storemerge662.peel, ptr %i.f, align 4, !tbaa !31
  store i32 %i.tc, ptr %i.c, align 4, !tbaa !31
  %i.tu = mul nsw i32 %i.tl, %11
  %i.tv = add nsw i32 %i.ta, %i.tu
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.tw
  %i.ty = add i32 %i.tb, %i.tn
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.tz
  %i.ub = sext i32 %i.tl to i64
  %i.uc = getelementptr [8 x i8], ptr %i.n, i64 %i.ub
  %i.ud = getelementptr i8, ptr %i.uc, i64 8
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.tx, ptr noundef nonnull %i.c, ptr noundef %i.ua, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef %i.ud, ptr noundef nonnull %1) #5
  %.pre835 = load i32, ptr %i.b, align 4, !tbaa !31
  %.not653.not.peel = icmp sgt i32 %.pre835, 1
  br i1 %.not653.not.peel, label %.peel.next815, label %._crit_edge757.loopexit

.peel.next815:                                    ; preds = %.lr.ph756, %.peel.next815
  %.3628754 = phi i32 [ %i.ve, %.peel.next815 ], [ 2, %.lr.ph756 ] ; 6 uses
  %i.ue = icmp eq i32 %.3628754, %i.tq
  %i.uf = load i32, ptr %i.h, align 4, !tbaa !31  ; 7 uses
  %i.ug = mul nsw i32 %i.uf, 3
  %i.uh = shl i32 %i.uf, 1
  %i.ui = load i32, ptr %i.g, align 4
  %i.uj = add nsw i32 %i.uh, %i.ui
  %storemerge = select i1 %i.ue, i32 %i.uj, i32 %i.ug
  store i32 %storemerge, ptr %i.f, align 4, !tbaa !31
  store i32 %i.td, ptr %i.c, align 4, !tbaa !31
  %i.uk = add nsw i32 %.3628754, -1
  %i.ul = mul i32 %11, %i.uk
  %i.um = mul i32 %i.ul, %i.uf
  %i.un = add i32 %i.ta, %i.uf
  %i.uo = add nsw i32 %i.un, %i.um
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.up
  %i.ur = mul nsw i32 %i.uf, %.2624793
  %i.us = add nsw i32 %i.ur, 1
  %i.ut = add nsw i32 %.3628754, -2
  %i.uu = mul nsw i32 %i.uf, %i.ut
  %i.uv = add nsw i32 %i.uu, 1
  %i.uw = mul nsw i32 %i.uv, %i.i
  %i.ux = add nsw i32 %i.us, %i.uw
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.uy
  %i.va = mul nsw i32 %i.uf, %.3628754
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr [8 x i8], ptr %i.n, i64 %i.vb
  %i.vd = getelementptr i8, ptr %i.vc, i64 8
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.uq, ptr noundef nonnull %i.c, ptr noundef %i.uz, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef %i.vd, ptr noundef nonnull %1) #5
  %.pre836 = load i32, ptr %i.b, align 4, !tbaa !31
  %i.ve = add nuw nsw i32 %.3628754, 1
  %.not653.not = icmp slt i32 %.3628754, %.pre836
  br i1 %.not653.not, label %.peel.next815, label %._crit_edge757.loopexit, !llvm.loop !22

._crit_edge757.loopexit:                          ; preds = %.peel.next815, %.lr.ph756
  %.pre837 = load i32, ptr %i.h, align 4, !tbaa !31
  %.pre838 = mul nsw i32 %.pre837, %.2624793
  br label %._crit_edge757

._crit_edge757:                                   ; preds = %._crit_edge757.loopexit, %bb.ap
  %.pre-phi = phi i32 [ %.pre838, %._crit_edge757.loopexit ], [ %i.tn, %bb.ap ] ; 2 uses
  store i32 %i.te, ptr %i.b, align 4, !tbaa !31
  %i.vf = add nsw i32 %.pre-phi, 1
  %i.vg = mul i32 %i.vf, %i.tb
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.vh
  %i.vj = mul nsw i32 %.pre-phi, %11
  %i.vk = add nsw i32 %i.vj, %i.ta
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.vl
  call void @dlacpy_(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.vi, ptr noundef nonnull %3, ptr noundef nonnull %i.vm, ptr noundef nonnull %i.b) #5
  %i.vn = icmp samesign ugt i32 %.2624793, 1
  br i1 %i.vn, label %.thread686, label %bb.aq

.thread686:                                       ; preds = %._crit_edge757
  %i.vo = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  %i.vp = mul nsw i32 %i.vo, %i.tq
  store i32 %i.vp, ptr %i.b, align 4, !tbaa !31
  store i32 %i.te, ptr %i.c, align 4, !tbaa !31
  %i.vq = mul nsw i32 %i.vo, %.2624793            ; 2 uses
  %i.vr = add i32 %i.tb, %i.vq
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.vs
  %i.vu = sext i32 %i.vo to i64
  %i.vv = getelementptr [8 x i8], ptr %i.n, i64 %i.vu
  %i.vw = getelementptr i8, ptr %i.vv, i64 8
  %i.vx = mul nsw i32 %11, %i.vq
  %i.vy = add nsw i32 %i.vx, %i.ta
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.vz
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b21, ptr noundef %i.vt, ptr noundef nonnull %3, ptr noundef %i.vw, ptr noundef nonnull %1, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.wa, ptr noundef nonnull %i.c) #5
  store i32 %i.te, ptr %i.b, align 4, !tbaa !31
  %i.wb = load i32, ptr %i.h, align 4, !tbaa !31  ; 3 uses
  %i.wc = mul nsw i32 %i.wb, %.2624793
  %i.wd = add nsw i32 %i.wc, 1
  %i.we = mul nsw i32 %i.wb, %i.tq                ; 2 uses
  %i.wf = add nsw i32 %i.we, 1
  %i.wg = mul nsw i32 %i.wf, %i.i
  %i.wh = add nsw i32 %i.wd, %i.wg
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.wi
  %i.wk = mul nsw i32 %i.we, %11
  %i.wl = add i32 %i.ta, %i.wb
  %i.wm = add nsw i32 %i.wl, %i.wk
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.wn
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b12, ptr noundef %i.wj, ptr noundef nonnull %3, ptr noundef nonnull %i.wo, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b13, ptr noundef %8, ptr noundef nonnull %1) #5
  store i32 %i.te, ptr %i.b, align 4, !tbaa !31
  %i.wp = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.wq = mul nsw i32 %i.wp, %.2624793            ; 2 uses
  %i.wr = add nsw i32 %i.wq, 1
  %i.ws = add nsw i32 %.2624793, -2
  %i.wt = mul nsw i32 %i.wp, %i.ws
  %i.wu = add nsw i32 %i.wt, 1
  %i.wv = mul nsw i32 %i.wu, %i.i
  %i.ww = add nsw i32 %i.wr, %i.wv
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.wx
  %i.wz = mul nsw i32 %i.wq, %11
  %i.xa = add nsw i32 %i.wz, %i.ta
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.xb
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b21, ptr noundef %8, ptr noundef nonnull %1, ptr noundef %i.wy, ptr noundef nonnull %3, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.xc, ptr noundef nonnull %i.b) #5
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge757
  %.not654 = icmp eq i32 %.2624793, 0
  br i1 %.not654, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread686, %bb.aq
  store i32 %i.tf, ptr %i.b, align 4, !tbaa !31
  %i.xd = load i32, ptr %i.h, align 4, !tbaa !31  ; 2 uses
  %i.xe = mul nsw i32 %i.xd, %.2624793            ; 2 uses
  %i.xf = mul nsw i32 %i.xe, %11
  %i.xg = add nsw i32 %i.xf, %i.ta
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.xh
  %i.xj = add nsw i32 %i.xe, 1
  %i.xk = mul nsw i32 %i.xd, %i.tq
  %i.xl = add nsw i32 %i.xk, 1
  %i.xm = mul nsw i32 %i.xl, %i.i
  %i.xn = add nsw i32 %i.xj, %i.xm
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.xo
  call void @dsygst_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.g, ptr noundef nonnull %i.xi, ptr noundef nonnull %i.b, ptr noundef %i.xp, ptr noundef nonnull %3, ptr noundef nonnull %i.e) #5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not654689 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 3 uses
  %i.xq = load i32, ptr %i.g, align 4, !tbaa !31  ; 9 uses
  store i32 %i.xq, ptr %i.b, align 4, !tbaa !31
  %.not655766 = icmp slt i32 %i.xq, 1
  br i1 %.not655766, label %._crit_edge770, label %.lr.ph769

.lr.ph769:                                        ; preds = %bb.as
  store i32 %i.xq, ptr %i.c, align 4, !tbaa !31
  %i.xr = load i32, ptr %i.h, align 4
  %i.xs = mul nsw i32 %i.xr, %.2624793            ; 2 uses
  %invariant.op771 = add i32 %i.xs, -1            ; 5 uses
  %i.xt = add nuw i32 %i.xq, 1
  %i.xu = add nuw i32 %i.xq, 1
  %i.xv = add nsw i32 %i.xq, -2
  br label %bb.at

.loopexit:                                        ; preds = %.prol.loopexit897, %.lr.ph761.new, %bb.at
  %indvars.iv.next818 = add nuw i32 %indvars.iv817, 1
  %exitcond824.not = icmp eq i32 %indvars.iv817, %i.xu
  %indvar.next899 = add i32 %indvar898, 1
  br i1 %exitcond824.not, label %._crit_edge770, label %bb.at, !llvm.loop !23

bb.at:                                            ; preds = %.lr.ph769, %.loopexit
  %indvar898 = phi i32 [ 0, %.lr.ph769 ], [ %indvar.next899, %.loopexit ] ; 3 uses
  %indvars.iv817 = phi i32 [ 2, %.lr.ph769 ], [ %indvars.iv.next818, %.loopexit ] ; 3 uses
  %.4629767 = phi i32 [ 1, %.lr.ph769 ], [ %i.xx, %.loopexit ] ; 4 uses
  %i.xw = sub i32 %i.xv, %indvar898
  %i.xx = add nuw nsw i32 %.4629767, 1            ; 2 uses
  %.not661758.not = icmp slt i32 %.4629767, %i.xq
  br i1 %.not661758.not, label %.lr.ph761, label %.loopexit

.lr.ph761:                                        ; preds = %bb.at
  %i.xy = xor i32 %indvar898, -1
  %i.xz = add i32 %i.xq, %i.xy
  %i.ya = zext i32 %indvars.iv817 to i64          ; 2 uses
  %.reass772 = add i32 %.4629767, %invariant.op771
  %i.yb = mul nsw i32 %.reass772, %11
  %i.yc = sub i32 %i.ta, %.4629767
  %invariant.op762 = add i32 %i.yc, %i.yb         ; 5 uses
  %.neg = add i32 %i.xx, %i.bg                    ; 5 uses
  %xtraiter900 = and i32 %i.xz, 3                 ; 2 uses
  %lcmp.mod901.not = icmp eq i32 %xtraiter900, 0
  br i1 %lcmp.mod901.not, label %.prol.loopexit897, label %.prol.preheader896

.prol.preheader896:                               ; preds = %.lr.ph761, %.prol.preheader896
  %indvars.iv819.prol = phi i64 [ %indvars.iv.next820.prol, %.prol.preheader896 ], [ %i.ya, %.lr.ph761 ] ; 2 uses
  %prol.iter902 = phi i32 [ %prol.iter902.next, %.prol.preheader896 ], [ 0, %.lr.ph761 ]
  %i.yd = trunc i64 %indvars.iv819.prol to i32    ; 3 uses
  %.reass763.prol = add i32 %invariant.op762, %i.yd
  %i.ye = sext i32 %.reass763.prol to i64
  %i.yf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ye
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !33
  %.reass765.prol = add i32 %invariant.op771, %i.yd
  %i.yh = mul nsw i32 %.reass765.prol, %11
  %i.yi = sub i32 %.neg, %i.yd
  %i.yj = add nsw i32 %i.yi, %i.yh
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.yk
  store double %i.yg, ptr %i.yl, align 8, !tbaa !33
  %indvars.iv.next820.prol = add i64 %indvars.iv819.prol, 1 ; 2 uses
  %prol.iter902.next = add i32 %prol.iter902, 1   ; 2 uses
  %prol.iter902.cmp.not = icmp eq i32 %prol.iter902.next, %xtraiter900
  br i1 %prol.iter902.cmp.not, label %.prol.loopexit897, label %.prol.preheader896, !llvm.loop !24

.prol.loopexit897:                                ; preds = %.prol.preheader896, %.lr.ph761
  %indvars.iv819.unr = phi i64 [ %i.ya, %.lr.ph761 ], [ %indvars.iv.next820.prol, %.prol.preheader896 ]
  %i.ym = icmp ult i32 %i.xw, 3
  br i1 %i.ym, label %.loopexit, label %.lr.ph761.new

.lr.ph761.new:                                    ; preds = %.prol.loopexit897, %.lr.ph761.new
  %indvars.iv819 = phi i64 [ %indvars.iv.next820.3, %.lr.ph761.new ], [ %indvars.iv819.unr, %.prol.loopexit897 ] ; 5 uses
  %i.yn = trunc i64 %indvars.iv819 to i32         ; 3 uses
  %.reass763 = add i32 %invariant.op762, %i.yn
  %i.yo = sext i32 %.reass763 to i64
  %i.yp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.yo
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !33
  %.reass765 = add i32 %invariant.op771, %i.yn
  %i.yr = mul nsw i32 %.reass765, %11
  %i.ys = sub i32 %.neg, %i.yn
  %i.yt = add nsw i32 %i.ys, %i.yr
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.yu
  store double %i.yq, ptr %i.yv, align 8, !tbaa !33
  %i.yw = trunc i64 %indvars.iv819 to i32         ; 2 uses
  %i.yx = add i32 %i.yw, 1                        ; 2 uses
  %.reass763.1 = add i32 %invariant.op762, %i.yx
  %i.yy = sext i32 %.reass763.1 to i64
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.yy
  %i.za = load double, ptr %i.yz, align 8, !tbaa !33
  %.reass765.1 = add i32 %i.xs, %i.yw
  %i.zb = mul nsw i32 %.reass765.1, %11
  %i.zc = sub i32 %.neg, %i.yx
  %i.zd = add nsw i32 %i.zc, %i.zb
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ze
  store double %i.za, ptr %i.zf, align 8, !tbaa !33
  %i.zg = trunc i64 %indvars.iv819 to i32
  %i.zh = add i32 %i.zg, 2                        ; 3 uses
  %.reass763.2 = add i32 %invariant.op762, %i.zh
  %i.zi = sext i32 %.reass763.2 to i64
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zi
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !33
  %.reass765.2 = add i32 %invariant.op771, %i.zh
  %i.zl = mul nsw i32 %.reass765.2, %11
  %i.zm = sub i32 %.neg, %i.zh
  %i.zn = add nsw i32 %i.zm, %i.zl
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zo
  store double %i.zk, ptr %i.zp, align 8, !tbaa !33
  %i.zq = trunc i64 %indvars.iv819 to i32
  %i.zr = add i32 %i.zq, 3                        ; 3 uses
  %.reass763.3 = add i32 %invariant.op762, %i.zr
  %i.zs = sext i32 %.reass763.3 to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zs
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !33
  %.reass765.3 = add i32 %invariant.op771, %i.zr
  %i.zv = mul nsw i32 %.reass765.3, %11
  %i.zw = sub i32 %.neg, %i.zr
  %i.zx = add nsw i32 %i.zw, %i.zv
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zy
  store double %i.zu, ptr %i.zz, align 8, !tbaa !33
  %indvars.iv.next820.3 = add nuw nsw i64 %indvars.iv819, 4 ; 2 uses
  %lftr.wideiv822.3 = trunc i64 %indvars.iv.next820.3 to i32
  %exitcond823.not.3 = icmp eq i32 %i.xt, %lftr.wideiv822.3
  br i1 %exitcond823.not.3, label %.loopexit, label %.lr.ph761.new, !llvm.loop !25

._crit_edge770:                                   ; preds = %.loopexit, %bb.as
  %i.aaa = icmp slt i32 %.2624793, %i.bx
  br i1 %i.aaa, label %bb.au, label %.loopexit695

bb.au:                                            ; preds = %._crit_edge770
  br i1 %.not654689, label %._crit_edge841, label %bb.av

._crit_edge841:                                   ; preds = %bb.au
  %.pre842 = add nuw nsw i32 %.2624793, 1
  br label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.aab = icmp eq i32 %.2624793, 1
  br i1 %i.aab, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 %i.th, ptr %i.b, align 4, !tbaa !31
  %i.aac = load i32, ptr %i.h, align 4, !tbaa !31 ; 2 uses
  %i.aad = mul nsw i32 %i.aac, %11
  %i.aae = add nsw i32 %i.aad, %i.ta
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aaf
  %i.aah = add nsw i32 %i.aac, 1                  ; 2 uses
  %i.aai = add nsw i32 %i.aah, %i.i
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aaj
  %i.aal = sext i32 %i.aah to i64
  %i.aam = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aal
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.aag, ptr noundef nonnull %i.b, ptr noundef %i.aak, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.aam, ptr noundef nonnull %1) #5
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.aan = load i32, ptr %i.h, align 4, !tbaa !31 ; 5 uses
  %i.aao = add nsw i32 %i.aan, %i.xq
  store i32 %i.aao, ptr %i.b, align 4, !tbaa !31
  store i32 %i.tg, ptr %i.c, align 4, !tbaa !31
  %i.aap = mul nsw i32 %i.aan, %i.tq
  %i.aaq = mul nsw i32 %i.aap, %11
  %i.aar = add i32 %i.ta, %i.aan
  %i.aas = add nsw i32 %i.aar, %i.aaq
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aat
  %i.aav = mul nsw i32 %i.aan, %.2624793
  %i.aaw = add nsw i32 %i.aav, 1                  ; 2 uses
  %i.aax = add nsw i32 %.2624793, -2
  %i.aay = mul nsw i32 %i.aan, %i.aax
  %i.aaz = add nsw i32 %i.aay, 1
  %i.aba = mul nsw i32 %i.aaz, %i.i
  %i.abb = add nsw i32 %i.aba, %i.aaw
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.abc
  %i.abe = sext i32 %i.aaw to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.abe
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b12, ptr noundef nonnull %i.aau, ptr noundef nonnull %i.c, ptr noundef %i.abd, ptr noundef nonnull %3, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.abf, ptr noundef nonnull %1) #5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.abg = load i32, ptr %1, align 4, !tbaa !31
  %i.abh = add nuw nsw i32 %.2624793, 1           ; 2 uses
  %i.abi = load i32, ptr %i.h, align 4, !tbaa !31 ; 3 uses
  %i.abj = mul nsw i32 %i.abi, %i.abh             ; 2 uses
  %i.abk = sub nsw i32 %i.abg, %i.abj
  store i32 %i.abk, ptr %i.b, align 4, !tbaa !31
  %i.abl = mul nsw i32 %i.abi, %.2624793          ; 2 uses
  store i32 %i.abl, ptr %i.c, align 4, !tbaa !31
  %i.abm = add nsw i32 %i.abj, 1                  ; 2 uses
  %i.abn = add nsw i32 %i.abm, %i.i
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.abo
  %i.abq = sext i32 %i.abi to i64
  %i.abr = getelementptr [8 x i8], ptr %i.n, i64 %i.abq
  %i.abs = getelementptr i8, ptr %i.abr, i64 8
  %i.abt = add nsw i32 %i.abl, 1
  %i.abu = mul nsw i32 %i.abt, %i.i
  %i.abv = add nsw i32 %i.abu, %i.abm
  %i.abw = sext i32 %i.abv to i64
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.abw
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b21, ptr noundef %i.abp, ptr noundef nonnull %3, ptr noundef %i.abs, ptr noundef nonnull %1, ptr noundef nonnull @c_b12, ptr noundef %i.abx, ptr noundef nonnull %3) #5
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge841, %bb.ay
  %.pre-phi843 = phi i32 [ %.pre842, %._crit_edge841 ], [ %i.abh, %bb.ay ] ; 6 uses
  %i.aby = load i32, ptr %1, align 4, !tbaa !31
  %i.abz = load i32, ptr %i.h, align 4, !tbaa !31 ; 2 uses
  %i.aca = mul nsw i32 %i.abz, %.pre-phi843       ; 2 uses
  %i.acb = sub nsw i32 %i.aby, %i.aca
  store i32 %i.acb, ptr %i.b, align 4, !tbaa !31
  %i.acc = add nsw i32 %i.aca, 1                  ; 2 uses
  %i.acd = mul nsw i32 %i.abz, %.2624793
  %i.ace = add nsw i32 %i.acd, 1
  %i.acf = mul nsw i32 %i.ace, %i.i
  %i.acg = add nsw i32 %i.acf, %i.acc
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ach
  %i.acj = sext i32 %i.acc to i64
  %i.ack = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.acj
  %i.acl = call i32 @dgetrf_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef %i.aci, ptr noundef nonnull %3, ptr noundef nonnull %i.ack, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.acm = load i32, ptr %i.h, align 4, !tbaa !31 ; 4 uses
  %i.acn = load i32, ptr %1, align 4, !tbaa !31
  %i.aco = mul nsw i32 %i.acm, %.pre-phi843
  %i.acp = sub nsw i32 %i.acn, %i.aco             ; 2 uses
  store i32 %i.acp, ptr %i.c, align 4, !tbaa !31
  %i.acq = call i32 @llvm.smin.i32(i32 %i.acm, i32 %i.acp)
  store i32 %i.acq, ptr %i.g, align 4, !tbaa !31
  store i32 %i.ti, ptr %i.b, align 4, !tbaa !31
  %i.acr = mul nsw i32 %i.acm, %.2624793
  %i.acs = mul nsw i32 %i.acr, %11
  %i.act = add i32 %i.ta, %i.acm
  %i.acu = add nsw i32 %i.act, %i.acs
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.acv
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b13, ptr noundef nonnull @c_b13, ptr noundef nonnull %i.acw, ptr noundef nonnull %i.b) #5
  store i32 %i.tj, ptr %i.b, align 4, !tbaa !31
  %i.acx = load i32, ptr %i.h, align 4, !tbaa !31 ; 3 uses
  %i.acy = mul nsw i32 %i.acx, %.pre-phi843
  %i.acz = add nsw i32 %i.acy, 1
  %i.ada = mul nsw i32 %i.acx, %.2624793          ; 2 uses
  %i.adb = add nsw i32 %i.ada, 1
  %i.adc = mul nsw i32 %i.adb, %i.i
  %i.add = add nsw i32 %i.acz, %i.adc
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ade
  %i.adg = mul nsw i32 %i.ada, %11
  %i.adh = add i32 %i.ta, %i.acx
  %i.adi = add nsw i32 %i.adh, %i.adg
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.adj
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %i.adf, ptr noundef nonnull %3, ptr noundef nonnull %i.adk, ptr noundef nonnull %i.b) #5
  br i1 %.not654689, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.tk, ptr %i.b, align 4, !tbaa !31
  %i.adl = load i32, ptr %i.h, align 4, !tbaa !31 ; 3 uses
  %i.adm = mul nsw i32 %i.adl, %.2624793          ; 2 uses
  %i.adn = add nsw i32 %i.adm, 1
  %i.ado = mul nsw i32 %i.adl, %i.tq
  %i.adp = add nsw i32 %i.ado, 1
  %i.adq = mul nsw i32 %i.adp, %i.i
  %i.adr = add nsw i32 %i.adn, %i.adq
  %i.ads = sext i32 %i.adr to i64
  %i.adt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ads
  %i.adu = mul nsw i32 %i.adm, %11
  %i.adv = add i32 %i.ta, %i.adl
  %i.adw = add nsw i32 %i.adv, %i.adu
  %i.adx = sext i32 %i.adw to i64
  %i.ady = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.adx
  call void @dtrsm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b12, ptr noundef %i.adt, ptr noundef nonnull %3, ptr noundef nonnull %i.ady, ptr noundef nonnull %i.b) #5
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.adz = load i32, ptr %i.h, align 4, !tbaa !31 ; 13 uses
  store i32 %i.adz, ptr %i.b, align 4, !tbaa !31
  %.not657782 = icmp slt i32 %i.adz, 1
  br i1 %.not657782, label %.._crit_edge786.split_crit_edge, label %.lr.ph785

.._crit_edge786.split_crit_edge:                  ; preds = %bb.bb
  %.pre844 = mul nsw i32 %i.adz, %.2624793
  br label %._crit_edge786.split

.lr.ph785:                                        ; preds = %bb.bb
  %i.aea = load i32, ptr %i.g, align 4, !tbaa !31 ; 4 uses
  store i32 %i.aea, ptr %i.c, align 4, !tbaa !31
  %.not660775 = icmp slt i32 %i.aea, 1
  %i.aeb = mul nsw i32 %i.adz, %.2624793          ; 4 uses
  %invariant.op787 = add i32 %i.aeb, -1
  %i.aec = add i32 %i.ta, %i.adz
  %i.aed = add nsw i32 %i.adz, -1
  %i.aee = add i32 %i.aed, %i.aeb                 ; 5 uses
  br i1 %.not660775, label %._crit_edge786.split, label %.lr.ph778.preheader

.lr.ph778.preheader:                              ; preds = %.lr.ph785
  %i.aef = zext nneg i32 %i.aea to i64            ; 2 uses
  %xtraiter904 = and i64 %i.aef, 3                ; 3 uses
  %i.aeg = icmp ult i32 %i.aea, 4
  %unroll_iter908 = and i64 %i.aef, 2147483644
  %lcmp.mod906.not = icmp eq i64 %xtraiter904, 0
  %lcmp.mod907 = icmp ne i64 %xtraiter904, 0
  br label %.lr.ph778

.lr.ph778:                                        ; preds = %.lr.ph778.preheader, %._crit_edge779
  %.6783 = phi i32 [ %i.ags, %._crit_edge779 ], [ 1, %.lr.ph778.preheader ] ; 5 uses
  %.reass774.reass = add i32 %.6783, %invariant.op787
  %i.aeh = mul nsw i32 %11, %.reass774.reass
  %i.aei = sub i32 %i.aec, %.6783
  %invariant.op780 = add i32 %i.aei, %i.aeh       ; 5 uses
  %i.aej = add i32 %i.ta, %.6783                  ; 5 uses
  br i1 %i.aeg, label %.epil.preheader903, label %.lr.ph778.new

.lr.ph778.new:                                    ; preds = %.lr.ph778, %.lr.ph778.new
  %indvars.iv825 = phi i64 [ %indvars.iv.next826.3, %.lr.ph778.new ], [ 1, %.lr.ph778 ] ; 6 uses
  %niter909 = phi i64 [ %niter909.next.3, %.lr.ph778.new ], [ 0, %.lr.ph778 ]
  %i.aek = trunc nuw nsw i64 %indvars.iv825 to i32 ; 2 uses
  %.reass781 = add i32 %invariant.op780, %i.aek
  %i.ael = sext i32 %.reass781 to i64
  %i.aem = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ael
  %i.aen = load double, ptr %i.aem, align 8, !tbaa !33
  %i.aeo = add i32 %i.aee, %i.aek
  %i.aep = mul nsw i32 %11, %i.aeo
  %i.aeq = trunc i64 %indvars.iv825 to i32
  %i.aer = add i32 %i.adz, %i.aeq
  %i.aes = sub i32 %i.aej, %i.aer
  %i.aet = add nsw i32 %i.aes, %i.aep
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aeu
  store double %i.aen, ptr %i.aev, align 8, !tbaa !33
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 1 ; 2 uses
  %i.aew = trunc nuw nsw i64 %indvars.iv.next826 to i32 ; 2 uses
  %.reass781.1 = add i32 %invariant.op780, %i.aew
  %i.aex = sext i32 %.reass781.1 to i64
  %i.aey = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aex
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !33
  %i.afa = add i32 %i.aee, %i.aew
  %i.afb = mul nsw i32 %11, %i.afa
  %i.afc = trunc i64 %indvars.iv.next826 to i32
  %i.afd = add i32 %i.adz, %i.afc
  %i.afe = sub i32 %i.aej, %i.afd
  %i.aff = add nsw i32 %i.afe, %i.afb
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.afg
  store double %i.aez, ptr %i.afh, align 8, !tbaa !33
  %indvars.iv.next826.1 = add nuw nsw i64 %indvars.iv825, 2 ; 2 uses
  %i.afi = trunc nuw nsw i64 %indvars.iv.next826.1 to i32 ; 2 uses
  %.reass781.2 = add i32 %invariant.op780, %i.afi
  %i.afj = sext i32 %.reass781.2 to i64
  %i.afk = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.afj
  %i.afl = load double, ptr %i.afk, align 8, !tbaa !33
  %i.afm = add i32 %i.aee, %i.afi
  %i.afn = mul nsw i32 %11, %i.afm
  %i.afo = trunc i64 %indvars.iv.next826.1 to i32
  %i.afp = add i32 %i.adz, %i.afo
  %i.afq = sub i32 %i.aej, %i.afp
  %i.afr = add nsw i32 %i.afq, %i.afn
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.afs
  store double %i.afl, ptr %i.aft, align 8, !tbaa !33
  %indvars.iv.next826.2 = add nuw nsw i64 %indvars.iv825, 3 ; 2 uses
  %i.afu = trunc nuw nsw i64 %indvars.iv.next826.2 to i32 ; 2 uses
  %.reass781.3 = add i32 %invariant.op780, %i.afu
  %i.afv = sext i32 %.reass781.3 to i64
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.afv
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !33
  %i.afy = add i32 %i.aee, %i.afu
  %i.afz = mul nsw i32 %11, %i.afy
  %i.aga = trunc i64 %indvars.iv.next826.2 to i32
  %i.agb = add i32 %i.adz, %i.aga
  %i.agc = sub i32 %i.aej, %i.agb
  %i.agd = add nsw i32 %i.agc, %i.afz
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.age
  store double %i.afx, ptr %i.agf, align 8, !tbaa !33
  %indvars.iv.next826.3 = add nuw nsw i64 %indvars.iv825, 4 ; 2 uses
  %niter909.next.3 = add i64 %niter909, 4         ; 2 uses
  %niter909.ncmp.3 = icmp eq i64 %niter909.next.3, %unroll_iter908
  br i1 %niter909.ncmp.3, label %._crit_edge779.unr-lcssa, label %.lr.ph778.new, !llvm.loop !26

._crit_edge779.unr-lcssa:                         ; preds = %.lr.ph778.new
  br i1 %lcmp.mod906.not, label %._crit_edge779, label %.epil.preheader903

.epil.preheader903:                               ; preds = %._crit_edge779.unr-lcssa, %.lr.ph778
  %indvars.iv825.epil.init = phi i64 [ 1, %.lr.ph778 ], [ %indvars.iv.next826.3, %._crit_edge779.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod907)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader903
  %indvars.iv825.epil = phi i64 [ %indvars.iv825.epil.init, %.epil.preheader903 ], [ %indvars.iv.next826.epil, %bb.bc ] ; 3 uses
  %epil.iter905 = phi i64 [ 0, %.epil.preheader903 ], [ %epil.iter905.next, %bb.bc ]
  %i.agg = trunc nuw nsw i64 %indvars.iv825.epil to i32 ; 2 uses
  %.reass781.epil = add i32 %invariant.op780, %i.agg
  %i.agh = sext i32 %.reass781.epil to i64
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.agh
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !33
  %i.agk = add i32 %i.aee, %i.agg
  %i.agl = mul nsw i32 %11, %i.agk
  %i.agm = trunc i64 %indvars.iv825.epil to i32
  %i.agn = add i32 %i.adz, %i.agm
  %i.ago = sub i32 %i.aej, %i.agn
  %i.agp = add nsw i32 %i.ago, %i.agl
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.agq
  store double %i.agj, ptr %i.agr, align 8, !tbaa !33
  %indvars.iv.next826.epil = add nuw nsw i64 %indvars.iv825.epil, 1
  %epil.iter905.next = add i64 %epil.iter905, 1   ; 2 uses
  %epil.iter905.cmp.not = icmp eq i64 %epil.iter905.next, %xtraiter904
  br i1 %epil.iter905.cmp.not, label %._crit_edge779, label %bb.bc, !llvm.loop !27

._crit_edge779:                                   ; preds = %bb.bc, %._crit_edge779.unr-lcssa
  %i.ags = add nuw i32 %.6783, 1
  %exitcond830.not = icmp eq i32 %.6783, %i.adz
  br i1 %exitcond830.not, label %._crit_edge786.split, label %.lr.ph778, !llvm.loop !28

._crit_edge786.split:                             ; preds = %._crit_edge779, %.._crit_edge786.split_crit_edge, %.lr.ph785
  %.pre-phi845 = phi i32 [ %.pre844, %.._crit_edge786.split_crit_edge ], [ %i.aeb, %.lr.ph785 ], [ %i.aeb, %._crit_edge779 ]
  %i.agt = mul nsw i32 %i.adz, %.pre-phi843
  %i.agu = add nsw i32 %i.agt, 1
  %i.agv = add nsw i32 %.pre-phi845, 1
  %i.agw = mul nsw i32 %i.agv, %i.i
  %i.agx = add nsw i32 %i.agu, %i.agw
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.agy
  call void @dlaset_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b13, ptr noundef nonnull @c_b12, ptr noundef %i.agz, ptr noundef nonnull %3) #5
  %i.aha = load i32, ptr %i.g, align 4, !tbaa !31 ; 2 uses
  store i32 %i.aha, ptr %i.b, align 4, !tbaa !31
  %.not658788 = icmp slt i32 %i.aha, 1
  br i1 %.not658788, label %.loopexit694, label %.lr.ph791

.lr.ph791:                                        ; preds = %._crit_edge786.split, %bb.bj
  %.7789 = phi i32 [ %i.ajf, %bb.bj ], [ 1, %._crit_edge786.split ] ; 5 uses
  %i.ahb = load i32, ptr %i.h, align 4, !tbaa !31
  %i.ahc = mul nsw i32 %i.ahb, %.pre-phi843       ; 3 uses
  %i.ahd = add nsw i32 %i.ahc, %.7789             ; 8 uses
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ahe ; 2 uses
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !31 ; 2 uses
  %i.ahh = add nsw i32 %i.ahg, %i.ahc             ; 11 uses
  store i32 %i.ahh, ptr %i.ahf, align 4, !tbaa !31
  %.not659 = icmp eq i32 %.7789, %i.ahg
  br i1 %.not659, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph791
  %i.ahi = add nsw i32 %.7789, -1
  store i32 %i.ahi, ptr %i.c, align 4, !tbaa !31
  %i.ahj = add nsw i32 %i.ahc, 1
  %i.ahk = mul nsw i32 %i.ahj, %i.i               ; 2 uses
  %i.ahl = add nsw i32 %i.ahk, %i.ahd
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ahm
  %i.aho = add nsw i32 %i.ahk, %i.ahh
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ahp
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.ahn, ptr noundef nonnull %3, ptr noundef %i.ahq, ptr noundef nonnull %3) #5
  %i.ahr = add nsw i32 %i.ahd, 1                  ; 3 uses
  %i.ahs = icmp sgt i32 %i.ahh, %i.ahr
  br i1 %i.ahs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aht = xor i32 %i.ahd, -1
  %i.ahu = add i32 %i.ahh, %i.aht
  store i32 %i.ahu, ptr %i.c, align 4, !tbaa !31
  %i.ahv = mul nsw i32 %i.ahd, %i.i
  %i.ahw = add nsw i32 %i.ahr, %i.ahv
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ahx
  %i.ahz = mul nsw i32 %i.ahr, %i.i
  %i.aia = add nsw i32 %i.ahz, %i.ahh
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aib
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.ahy, ptr noundef nonnull @c__1, ptr noundef %i.aic, ptr noundef nonnull %3) #5
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.aid = load i32, ptr %1, align 4, !tbaa !31   ; 2 uses
  %i.aie = icmp slt i32 %i.ahh, %i.aid
  br i1 %i.aie, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aif = sub nsw i32 %i.aid, %i.ahh
  store i32 %i.aif, ptr %i.c, align 4, !tbaa !31
  %i.aig = add nsw i32 %i.ahh, 1                  ; 2 uses
  %i.aih = mul nsw i32 %i.ahd, %i.i
  %i.aii = add nsw i32 %i.aig, %i.aih
  %i.aij = sext i32 %i.aii to i64
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aij
  %i.ail = mul nsw i32 %i.ahh, %i.i
  %i.aim = add nsw i32 %i.aig, %i.ail
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ain
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.aik, ptr noundef nonnull @c__1, ptr noundef %i.aio, ptr noundef nonnull @c__1) #5
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.aip = mul i32 %i.ahd, %i.tb
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aiq ; 2 uses
  %i.ais = load double, ptr %i.air, align 8, !tbaa !33
  %i.ait = mul i32 %i.ahh, %i.tb
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aiu ; 2 uses
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !33
  store double %i.aiw, ptr %i.air, align 8, !tbaa !33
  store double %i.ais, ptr %i.aiv, align 8, !tbaa !33
  br i1 %.not654689, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aix = load i32, ptr %i.h, align 4, !tbaa !31
  %i.aiy = mul nsw i32 %i.aix, %.2624793
  store i32 %i.aiy, ptr %i.c, align 4, !tbaa !31
  %i.aiz = add nsw i32 %i.ahd, %i.i
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aja
  %i.ajc = add nsw i32 %i.ahh, %i.i
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ajd
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.ajb, ptr noundef nonnull %3, ptr noundef %i.aje, ptr noundef nonnull %3) #5
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph791, %bb.bi, %bb.bh
  %i.ajf = add nuw nsw i32 %.7789, 1
  %i.ajg = load i32, ptr %i.b, align 4, !tbaa !31
  %.not658.not = icmp slt i32 %.7789, %i.ajg
  br i1 %.not658.not, label %.lr.ph791, label %.loopexit694, !llvm.loop !29

.loopexit694:                                     ; preds = %bb.bj, %._crit_edge786.split
  br label %bb.ap, !llvm.loop !30

.loopexit695:                                     ; preds = %._crit_edge716, %._crit_edge770, %bb.s, %bb.ao
  call void @dgbtrf_(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %7, ptr noundef nonnull %10) #5
  br label %bb.bk

bb.bk:                                            ; preds = %.thread680, %bb.m, %bb.l, %.loopexit695, %.thread
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

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dsygst_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgetrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgbtrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
end_hunk_0
