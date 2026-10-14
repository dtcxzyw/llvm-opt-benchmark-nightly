Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytrd_sb2st?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__2 = internal global i32 2, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DSYTRD_SB2ST\00", align 1
@c_n1 = internal global i32 -1, align 4
@c__3 = internal global i32 3, align 4
@c__4 = internal global i32 4, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@c_b26 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsytrd_sb2st_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef captures(none) initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %11 to i64                 ; 3 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %7 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %5 to i64                  ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 11 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 11 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  %i.n = load i32, ptr %6, align 4, !tbaa !39     ; 9 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %5, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %7, i64 -8 ; 24 uses
  %i.r = getelementptr inbounds i8, ptr %8, i64 -8 ; 32 uses
  %i.s = getelementptr inbounds i8, ptr %11, i64 -8 ; 6 uses
  store i32 0, ptr %13, align 4, !tbaa !39
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.u = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  store i32 %i.u, ptr %i.h, align 4, !tbaa !39
  %i.v = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %i.w = load i32, ptr %12, align 4, !tbaa !39
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %10, align 4, !tbaa !39
  %i.z = icmp eq i32 %i.y, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i1 [ true, %bb.a ], [ %i.z, %bb.b ] ; 3 uses
  %i.ab = tail call i32 @ilaenv2stage_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1) #5
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !39
  %i.ac = call i32 @ilaenv2stage_(ptr noundef nonnull @c__3, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull @c_n1) #5 ; 2 uses
  %i.ad = call i32 @ilaenv2stage_(ptr noundef nonnull @c__4, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull @c_n1) #5 ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  %.not293 = icmp eq i32 %i.ae, 0
  br i1 %.not293, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %.not294 = icmp eq i32 %i.af, 0
  br i1 %.not294, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not295 = icmp eq i32 %i.v, 0                  ; 4 uses
  br i1 %.not295, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %.not296 = icmp eq i32 %i.ag, 0
  br i1 %.not296, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load i32, ptr %3, align 4, !tbaa !39    ; 27 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %4, align 4, !tbaa !39    ; 10 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %6, align 4, !tbaa !39
  %.not297 = icmp sgt i32 %i.al, %i.aj
  br i1 %.not297, label %bb.k, label %.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %10, align 4, !tbaa !39
  %i.an = icmp sge i32 %i.am, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.l, label %.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %12, align 4, !tbaa !39
  %i.ap = icmp sge i32 %i.ao, %i.ad
  %or.cond3 = select i1 %i.ap, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.m, label %.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %.pr = load i32, ptr %13, align 4, !tbaa !39    ; 2 uses
  %i.aq = icmp eq i32 %.pr, 0
  br i1 %i.aq, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %bb.e ], [ -4, %bb.h ], [ -7, %bb.j ], [ -11, %bb.k ], [ -5, %bb.i ], [ -3, %bb.g ], [ -13, %bb.l ] ; 2 uses
  store i32 %.sink, ptr %13, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %.ph321 = phi i32 [ %.pr, %bb.m ], [ %.sink, %.thread.sink.split ]
  %i.ar = sub nsw i32 0, %.ph321
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !39
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e, i32 noundef 12) #5 ; 0 uses
  br label %bb.am

bb.n:                                             ; preds = %bb.m
  %i.at = sitofp i32 %i.ac to double              ; 2 uses
  store double %i.at, ptr %9, align 8, !tbaa !41
  %i.au = sitofp i32 %i.ad to double              ; 2 uses
  store double %i.au, ptr %11, align 8, !tbaa !41
  br i1 %i.aa, label %bb.am, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = icmp eq i32 %i.ah, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  store double 1.000000e+00, ptr %11, align 8, !tbaa !41
  br label %bb.am

bb.q:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ax = add nsw i32 %i.aw, %i.aj
  store i32 %i.ax, ptr %i.l, align 4, !tbaa !39
  %i.ay = shl nuw i32 %i.ah, 1
  %i.az = shl nuw i32 %i.aj, 1                    ; 2 uses
  %i.ba = or disjoint i32 %i.az, 1                ; 2 uses
  store i32 %i.ba, ptr %i.k, align 4, !tbaa !39
  %i.bb = mul nsw i32 %i.ba, %i.ah
  br i1 %.not295, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.bd = add nuw nsw i32 %i.bc, %i.aj
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = zext nneg i32 %i.aj to i64
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = sext i32 %i.az to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bi = add nuw nsw i32 %i.aj, 2
  %i.bj = zext nneg i32 %i.bi to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0276 = phi i64 [ %i.bg, %bb.r ], [ 1, %bb.s ] ; 2 uses
  %.0275 = phi i64 [ %i.bf, %bb.r ], [ 2, %bb.s ] ; 4 uses
  %.0268 = phi i64 [ 1, %bb.r ], [ %i.bj, %bb.s ]
  %.0267 = phi i64 [ %i.be, %bb.r ], [ 1, %bb.s ] ; 5 uses
  %.0265 = phi i64 [ %i.bh, %bb.r ], [ 2, %bb.s ] ; 4 uses
  switch i32 %i.aj, label %bb.w [
    i32 0, label %iter.check557
    i32 1, label %iter.check
  ]

iter.check557:                                    ; preds = %bb.t
  %i.bk = sext i32 %i.n to i64                    ; 9 uses
  %i.bl = add nuw i32 %i.ah, 1
  %wide.trip.count398 = zext i32 %i.bl to i64     ; 2 uses
  %invariant.gep450 = getelementptr [8 x i8], ptr %i.p, i64 %.0267 ; 11 uses
  %i.bm = zext nneg i32 %i.ah to i64              ; 5 uses
  %min.iters.check542 = icmp ugt i32 %i.ah, 3
  %ident.check539.not = icmp eq i32 %i.n, 1
  %or.cond666 = select i1 %min.iters.check542, i1 %ident.check539.not, i1 false
  br i1 %or.cond666, label %vector.memcheck540, label %.lr.ph345.preheader

vector.memcheck540:                               ; preds = %iter.check557
  %i.bn = shl nuw nsw i64 %.0267, 3
  %i.bo = add i64 %i.bn, %i.d
  %i.bp = sub i64 %i.c, %i.bo
  %i.bq = add i64 %i.bp, 7
  %diff.check541 = icmp ult i64 %i.bq, 127
  br i1 %diff.check541, label %.lr.ph345.preheader, label %vector.main.loop.iter.check543

vector.main.loop.iter.check543:                   ; preds = %vector.memcheck540
  %min.iters.check544 = icmp ult i32 %i.ah, 16
  br i1 %min.iters.check544, label %vec.epilog.ph561, label %vector.ph545

vector.ph545:                                     ; preds = %vector.main.loop.iter.check543
  %i.br = and i64 %i.bm, 12
  %n.vec546 = and i64 %i.bm, 2147483632           ; 4 uses
  %i.bs = or disjoint i64 %n.vec546, 1
  br label %vector.body547

vector.body547:                                   ; preds = %vector.ph545, %vector.body547
  %index548 = phi i64 [ 0, %vector.ph545 ], [ %index.next553, %vector.body547 ] ; 3 uses
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep450, i64 %index548 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 40
  %i.bw = getelementptr i8, ptr %i.bt, i64 72
  %i.bx = getelementptr i8, ptr %i.bt, i64 104
  %wide.load549 = load <4 x double>, ptr %i.bu, align 8, !tbaa !41
  %wide.load550 = load <4 x double>, ptr %i.bv, align 8, !tbaa !41
  %wide.load551 = load <4 x double>, ptr %i.bw, align 8, !tbaa !41
  %wide.load552 = load <4 x double>, ptr %i.bx, align 8, !tbaa !41
  %i.by = getelementptr [8 x i8], ptr %7, i64 %index548 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store <4 x double> %wide.load549, ptr %i.by, align 8, !tbaa !41
  store <4 x double> %wide.load550, ptr %i.bz, align 8, !tbaa !41
  store <4 x double> %wide.load551, ptr %i.ca, align 8, !tbaa !41
  store <4 x double> %wide.load552, ptr %i.cb, align 8, !tbaa !41
  %index.next553 = add nuw i64 %index548, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next553, %n.vec546
  br i1 %i.cc, label %middle.block554, label %vector.body547, !llvm.loop !8

middle.block554:                                  ; preds = %vector.body547
  %cmp.n555 = icmp eq i64 %n.vec546, %i.bm
  br i1 %cmp.n555, label %._crit_edge346, label %vec.epilog.iter.check559

vec.epilog.iter.check559:                         ; preds = %middle.block554
  %min.epilog.iters.check560 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check560, label %.lr.ph345.preheader, label %vec.epilog.ph561, !prof !45

vec.epilog.ph561:                                 ; preds = %vector.main.loop.iter.check543, %vec.epilog.iter.check559
  %vec.epilog.resume.val556 = phi i64 [ %n.vec546, %vec.epilog.iter.check559 ], [ 0, %vector.main.loop.iter.check543 ]
  %n.vec562 = and i64 %i.bm, 2147483644           ; 3 uses
  %i.cd = or disjoint i64 %n.vec562, 1
  br label %vec.epilog.vector.body563

vec.epilog.vector.body563:                        ; preds = %vec.epilog.vector.body563, %vec.epilog.ph561
  %index564 = phi i64 [ %vec.epilog.resume.val556, %vec.epilog.ph561 ], [ %index.next566, %vec.epilog.vector.body563 ] ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep450, i64 %index564
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %wide.load565 = load <4 x double>, ptr %i.cf, align 8, !tbaa !41
  %i.cg = getelementptr [8 x i8], ptr %7, i64 %index564
  store <4 x double> %wide.load565, ptr %i.cg, align 8, !tbaa !41
  %index.next566 = add nuw i64 %index564, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next566, %n.vec562
  br i1 %i.ch, label %vec.epilog.middle.block567, label %vec.epilog.vector.body563, !llvm.loop !9

vec.epilog.middle.block567:                       ; preds = %vec.epilog.vector.body563
  %cmp.n568 = icmp eq i64 %n.vec562, %i.bm
  br i1 %cmp.n568, label %._crit_edge346, label %.lr.ph345.preheader

.lr.ph345.preheader:                              ; preds = %iter.check557, %vector.memcheck540, %vec.epilog.iter.check559, %vec.epilog.middle.block567
  %indvars.iv395.ph = phi i64 [ 1, %iter.check557 ], [ 1, %vector.memcheck540 ], [ %i.bs, %vec.epilog.iter.check559 ], [ %i.cd, %vec.epilog.middle.block567 ] ; 4 uses
  %i.ci = sub nsw i64 %wide.trip.count398, %indvars.iv395.ph
  %i.cj = zext nneg i32 %i.ah to i64
  %i.ck = sub nsw i64 %i.cj, %indvars.iv395.ph
  %xtraiter684 = and i64 %i.ci, 7                 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph345.prol.loopexit, label %.lr.ph345.prol

.lr.ph345.prol:                                   ; preds = %.lr.ph345.preheader, %.lr.ph345.prol
  %indvars.iv395.prol = phi i64 [ %indvars.iv.next396.prol, %.lr.ph345.prol ], [ %indvars.iv395.ph, %.lr.ph345.preheader ] ; 3 uses
  %prol.iter686 = phi i64 [ %prol.iter686.next, %.lr.ph345.prol ], [ 0, %.lr.ph345.preheader ]
  %i.cl = mul nsw i64 %indvars.iv395.prol, %i.bk
  %gep451.prol = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.cl
  %i.cm = load double, ptr %gep451.prol, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv395.prol
  store double %i.cm, ptr %i.cn, align 8, !tbaa !41
  %indvars.iv.next396.prol = add nuw nsw i64 %indvars.iv395.prol, 1 ; 2 uses
  %prol.iter686.next = add i64 %prol.iter686, 1   ; 2 uses
  %prol.iter686.cmp.not = icmp eq i64 %prol.iter686.next, %xtraiter684
  br i1 %prol.iter686.cmp.not, label %.lr.ph345.prol.loopexit, label %.lr.ph345.prol, !llvm.loop !10

.lr.ph345.prol.loopexit:                          ; preds = %.lr.ph345.prol, %.lr.ph345.preheader
  %indvars.iv395.unr = phi i64 [ %indvars.iv395.ph, %.lr.ph345.preheader ], [ %indvars.iv.next396.prol, %.lr.ph345.prol ]
  %i.co = icmp ult i64 %i.ck, 7
  br i1 %i.co, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %.lr.ph345.prol.loopexit, %.lr.ph345
  %indvars.iv395 = phi i64 [ %indvars.iv.next396.7, %.lr.ph345 ], [ %indvars.iv395.unr, %.lr.ph345.prol.loopexit ] ; 11 uses
  %i.cp = mul nsw i64 %indvars.iv395, %i.bk
  %gep451 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.cp
  %i.cq = load double, ptr %gep451, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv395
  store double %i.cq, ptr %i.cr, align 8, !tbaa !41
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1
  %i.cs = mul nsw i64 %indvars.iv.next396, %i.bk
  %gep451.1 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.cs
  %i.ct = load double, ptr %gep451.1, align 8, !tbaa !41
  %i.cu = getelementptr [8 x i8], ptr %7, i64 %indvars.iv395
  store double %i.ct, ptr %i.cu, align 8, !tbaa !41
  %indvars.iv.next396.1 = add nuw nsw i64 %indvars.iv395, 2 ; 2 uses
  %i.cv = mul nsw i64 %indvars.iv.next396.1, %i.bk
  %gep451.2 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.cv
  %i.cw = load double, ptr %gep451.2, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next396.1
  store double %i.cw, ptr %i.cx, align 8, !tbaa !41
  %indvars.iv.next396.2 = add nuw nsw i64 %indvars.iv395, 3 ; 2 uses
  %i.cy = mul nsw i64 %indvars.iv.next396.2, %i.bk
  %gep451.3 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.cy
  %i.cz = load double, ptr %gep451.3, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next396.2
  store double %i.cz, ptr %i.da, align 8, !tbaa !41
  %indvars.iv.next396.3 = add nuw nsw i64 %indvars.iv395, 4 ; 2 uses
  %i.db = mul nsw i64 %indvars.iv.next396.3, %i.bk
  %gep451.4 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.db
  %i.dc = load double, ptr %gep451.4, align 8, !tbaa !41
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next396.3
  store double %i.dc, ptr %i.dd, align 8, !tbaa !41
  %indvars.iv.next396.4 = add nuw nsw i64 %indvars.iv395, 5 ; 2 uses
  %i.de = mul nsw i64 %indvars.iv.next396.4, %i.bk
  %gep451.5 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.de
  %i.df = load double, ptr %gep451.5, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next396.4
  store double %i.df, ptr %i.dg, align 8, !tbaa !41
  %indvars.iv.next396.5 = add nuw nsw i64 %indvars.iv395, 6 ; 2 uses
  %i.dh = mul nsw i64 %indvars.iv.next396.5, %i.bk
  %gep451.6 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.dh
  %i.di = load double, ptr %gep451.6, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next396.5
  store double %i.di, ptr %i.dj, align 8, !tbaa !41
  %indvars.iv.next396.6 = add nuw nsw i64 %indvars.iv395, 7 ; 2 uses
  %i.dk = mul nsw i64 %indvars.iv.next396.6, %i.bk
  %gep451.7 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.dk
  %i.dl = load double, ptr %gep451.7, align 8, !tbaa !41
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next396.6
  store double %i.dl, ptr %i.dm, align 8, !tbaa !41
  %indvars.iv.next396.7 = add nuw nsw i64 %indvars.iv395, 8 ; 2 uses
  %exitcond399.not.7 = icmp eq i64 %indvars.iv.next396.7, %wide.trip.count398
  br i1 %exitcond399.not.7, label %._crit_edge346, label %.lr.ph345, !llvm.loop !11

._crit_edge346:                                   ; preds = %.lr.ph345.prol.loopexit, %.lr.ph345, %vec.epilog.middle.block567, %middle.block554
  %.not317.not347.not = icmp eq i32 %i.ah, 1
  br i1 %.not317.not347.not, label %._crit_edge351, label %.lr.ph350.preheader

.lr.ph350.preheader:                              ; preds = %._crit_edge346
  %i.dn = add nsw i32 %i.ah, -1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %i.dp, i1 false), !tbaa !41
  br label %._crit_edge351

._crit_edge351:                                   ; preds = %.lr.ph350.preheader, %._crit_edge346
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  store double 1.000000e+00, ptr %11, align 8, !tbaa !41
  br label %bb.am

iter.check:                                       ; preds = %bb.t
  %i.dq = sext i32 %i.n to i64                    ; 9 uses
  %i.dr = add nuw i32 %i.ah, 1
  %wide.trip.count = zext i32 %i.dr to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %.0267 ; 11 uses
  %i.ds = zext nneg i32 %i.ah to i64              ; 9 uses
  %min.iters.check = icmp ugt i32 %i.ah, 3
  %ident.check.not = icmp eq i32 %i.n, 1
  %or.cond667 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond667, label %vector.memcheck, label %.lr.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.dt = shl nuw nsw i64 %.0267, 3
  %i.du = add i64 %i.dt, %i.d
  %i.dv = sub i64 %i.c, %i.du
  %i.dw = add i64 %i.dv, 7
  %diff.check = icmp ult i64 %i.dw, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check464 = icmp ult i32 %i.ah, 16
  br i1 %min.iters.check464, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dx = and i64 %i.ds, 12
  %n.vec = and i64 %i.ds, 2147483632              ; 4 uses
  %i.dy = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = getelementptr i8, ptr %i.dz, i64 40
  %i.ec = getelementptr i8, ptr %i.dz, i64 72
  %i.ed = getelementptr i8, ptr %i.dz, i64 104
  %wide.load = load <4 x double>, ptr %i.ea, align 8, !tbaa !41
  %wide.load465 = load <4 x double>, ptr %i.eb, align 8, !tbaa !41
  %wide.load466 = load <4 x double>, ptr %i.ec, align 8, !tbaa !41
  %wide.load467 = load <4 x double>, ptr %i.ed, align 8, !tbaa !41
  %i.ee = getelementptr [8 x i8], ptr %7, i64 %index ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  store <4 x double> %wide.load, ptr %i.ee, align 8, !tbaa !41
  store <4 x double> %wide.load465, ptr %i.ef, align 8, !tbaa !41
  store <4 x double> %wide.load466, ptr %i.eg, align 8, !tbaa !41
  store <4 x double> %wide.load467, ptr %i.eh, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ds
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec468 = and i64 %i.ds, 2147483644           ; 3 uses
  %i.ej = or disjoint i64 %n.vec468, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index469 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next471, %vec.epilog.vector.body ] ; 3 uses
  %i.ek = getelementptr [8 x i8], ptr %invariant.gep, i64 %index469
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %wide.load470 = load <4 x double>, ptr %i.el, align 8, !tbaa !41
  %i.em = getelementptr [8 x i8], ptr %7, i64 %index469
  store <4 x double> %wide.load470, ptr %i.em, align 8, !tbaa !41
  %index.next471 = add nuw i64 %index469, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next471, %n.vec468
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n472 = icmp eq i64 %n.vec468, %i.ds
  br i1 %cmp.n472, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ] ; 4 uses
  %i.eo = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.ep = zext nneg i32 %i.ah to i64
  %i.eq = sub nsw i64 %i.ep, %indvars.iv.ph
  %xtraiter = and i64 %i.eo, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.er = mul nsw i64 %indvars.iv.prol, %i.dq
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.er
  %i.es = load double, ptr %gep.prol, align 8, !tbaa !41
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.prol
  store double %i.es, ptr %i.et, align 8, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !14

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.eu = icmp ult i64 %i.eq, 7
  br i1 %i.eu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.ev = mul nsw i64 %indvars.iv, %i.dq
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ev
  %i.ew = load double, ptr %gep, align 8, !tbaa !41
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double %i.ew, ptr %i.ex, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ey = mul nsw i64 %indvars.iv.next, %i.dq
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ey
  %i.ez = load double, ptr %gep.1, align 8, !tbaa !41
  %i.fa = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  store double %i.ez, ptr %i.fa, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fb = mul nsw i64 %indvars.iv.next.1, %i.dq
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fb
  %i.fc = load double, ptr %gep.2, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store double %i.fc, ptr %i.fd, align 8, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fe = mul nsw i64 %indvars.iv.next.2, %i.dq
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fe
  %i.ff = load double, ptr %gep.3, align 8, !tbaa !41
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store double %i.ff, ptr %i.fg, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fh = mul nsw i64 %indvars.iv.next.3, %i.dq
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fh
  %i.fi = load double, ptr %gep.4, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.3
  store double %i.fi, ptr %i.fj, align 8, !tbaa !41
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.fk = mul nsw i64 %indvars.iv.next.4, %i.dq
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fk
  %i.fl = load double, ptr %gep.5, align 8, !tbaa !41
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.4
  store double %i.fl, ptr %i.fm, align 8, !tbaa !41
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.fn = mul nsw i64 %indvars.iv.next.5, %i.dq
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fn
  %i.fo = load double, ptr %gep.6, align 8, !tbaa !41
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.5
  store double %i.fo, ptr %i.fp, align 8, !tbaa !41
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.fq = mul nsw i64 %indvars.iv.next.6, %i.dq
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fq
  %i.fr = load double, ptr %gep.7, align 8, !tbaa !41
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.6
  store double %i.fr, ptr %i.fs, align 8, !tbaa !41
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.not314.not338.not = icmp eq i32 %i.ah, 1      ; 2 uses
  br i1 %.not295, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  br i1 %.not314.not338.not, label %.loopexit330, label %iter.check493

iter.check493:                                    ; preds = %bb.u
  %i.ft = sext i32 %i.n to i64                    ; 9 uses
  %wide.trip.count388 = zext nneg i32 %i.ah to i64 ; 2 uses
  %invariant.gep446 = getelementptr [8 x i8], ptr %i.p, i64 %.0275 ; 11 uses
  %i.fu = add nsw i64 %wide.trip.count388, -1     ; 5 uses
  %min.iters.check478 = icmp ugt i32 %i.ah, 4
  %ident.check475.not = icmp eq i32 %i.n, 1
  %or.cond668 = select i1 %min.iters.check478, i1 %ident.check475.not, i1 false
  br i1 %or.cond668, label %vector.memcheck476, label %.lr.ph337.preheader

vector.memcheck476:                               ; preds = %iter.check493
  %i.fv = shl nuw nsw i64 %.0275, 3
  %i.fw = add i64 %i.fv, %i.d
  %i.fx = sub i64 %i.fw, %i.b
  %diff.check477 = icmp ugt i64 %i.fx, -128
  br i1 %diff.check477, label %.lr.ph337.preheader, label %vector.main.loop.iter.check479

vector.main.loop.iter.check479:                   ; preds = %vector.memcheck476
  %min.iters.check480 = icmp ult i32 %i.ah, 17
  br i1 %min.iters.check480, label %vec.epilog.ph497, label %vector.ph481

vector.ph481:                                     ; preds = %vector.main.loop.iter.check479
  %i.fy = and i64 %i.fu, 12
  %n.vec482 = and i64 %i.fu, -16                  ; 4 uses
  %i.fz = or disjoint i64 %n.vec482, 1
  br label %vector.body483

vector.body483:                                   ; preds = %vector.ph481, %vector.body483
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next489, %vector.body483 ] ; 3 uses
  %i.ga = getelementptr [8 x i8], ptr %invariant.gep446, i64 %index484 ; 4 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %i.gc = getelementptr i8, ptr %i.ga, i64 48
  %i.gd = getelementptr i8, ptr %i.ga, i64 80
  %i.ge = getelementptr i8, ptr %i.ga, i64 112
  %wide.load485 = load <4 x double>, ptr %i.gb, align 8, !tbaa !41
  %wide.load486 = load <4 x double>, ptr %i.gc, align 8, !tbaa !41
  %wide.load487 = load <4 x double>, ptr %i.gd, align 8, !tbaa !41
  %wide.load488 = load <4 x double>, ptr %i.ge, align 8, !tbaa !41
  %i.gf = getelementptr [8 x i8], ptr %8, i64 %index484 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  store <4 x double> %wide.load485, ptr %i.gf, align 8, !tbaa !41
  store <4 x double> %wide.load486, ptr %i.gg, align 8, !tbaa !41
  store <4 x double> %wide.load487, ptr %i.gh, align 8, !tbaa !41
  store <4 x double> %wide.load488, ptr %i.gi, align 8, !tbaa !41
  %index.next489 = add nuw i64 %index484, 16      ; 2 uses
  %i.gj = icmp eq i64 %index.next489, %n.vec482
  br i1 %i.gj, label %middle.block490, label %vector.body483, !llvm.loop !16

middle.block490:                                  ; preds = %vector.body483
  %cmp.n491 = icmp eq i64 %i.fu, %n.vec482
  br i1 %cmp.n491, label %.loopexit330, label %vec.epilog.iter.check495

vec.epilog.iter.check495:                         ; preds = %middle.block490
  %min.epilog.iters.check496 = icmp eq i64 %i.fy, 0
  br i1 %min.epilog.iters.check496, label %.lr.ph337.preheader, label %vec.epilog.ph497, !prof !45

vec.epilog.ph497:                                 ; preds = %vector.main.loop.iter.check479, %vec.epilog.iter.check495
  %vec.epilog.resume.val492 = phi i64 [ %n.vec482, %vec.epilog.iter.check495 ], [ 0, %vector.main.loop.iter.check479 ]
  %n.vec498 = and i64 %i.fu, -4                   ; 3 uses
  %i.gk = or disjoint i64 %n.vec498, 1
  br label %vec.epilog.vector.body499

vec.epilog.vector.body499:                        ; preds = %vec.epilog.vector.body499, %vec.epilog.ph497
  %index500 = phi i64 [ %vec.epilog.resume.val492, %vec.epilog.ph497 ], [ %index.next502, %vec.epilog.vector.body499 ] ; 3 uses
  %i.gl = getelementptr [8 x i8], ptr %invariant.gep446, i64 %index500
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  %wide.load501 = load <4 x double>, ptr %i.gm, align 8, !tbaa !41
  %i.gn = getelementptr [8 x i8], ptr %8, i64 %index500
  store <4 x double> %wide.load501, ptr %i.gn, align 8, !tbaa !41
  %index.next502 = add nuw i64 %index500, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next502, %n.vec498
  br i1 %i.go, label %vec.epilog.middle.block503, label %vec.epilog.vector.body499, !llvm.loop !17

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body499
  %cmp.n504 = icmp eq i64 %i.fu, %n.vec498
  br i1 %cmp.n504, label %.loopexit330, label %.lr.ph337.preheader

.lr.ph337.preheader:                              ; preds = %iter.check493, %vector.memcheck476, %vec.epilog.iter.check495, %vec.epilog.middle.block503
  %indvars.iv385.ph = phi i64 [ 1, %iter.check493 ], [ 1, %vector.memcheck476 ], [ %i.fz, %vec.epilog.iter.check495 ], [ %i.gk, %vec.epilog.middle.block503 ] ; 4 uses
  %i.gp = sub nsw i64 %i.ds, %indvars.iv385.ph
  %xtraiter678 = and i64 %i.gp, 7                 ; 2 uses
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.lr.ph337.prol.loopexit, label %.lr.ph337.prol

.lr.ph337.prol:                                   ; preds = %.lr.ph337.preheader, %.lr.ph337.prol
  %indvars.iv385.prol = phi i64 [ %indvars.iv.next386.prol, %.lr.ph337.prol ], [ %indvars.iv385.ph, %.lr.ph337.preheader ] ; 2 uses
  %prol.iter680 = phi i64 [ %prol.iter680.next, %.lr.ph337.prol ], [ 0, %.lr.ph337.preheader ]
  %indvars.iv.next386.prol = add nuw nsw i64 %indvars.iv385.prol, 1 ; 3 uses
  %i.gq = mul nsw i64 %indvars.iv.next386.prol, %i.ft
  %gep447.prol = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.gq
  %i.gr = load double, ptr %gep447.prol, align 8, !tbaa !41
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv385.prol
  store double %i.gr, ptr %i.gs, align 8, !tbaa !41
  %prol.iter680.next = add i64 %prol.iter680, 1   ; 2 uses
  %prol.iter680.cmp.not = icmp eq i64 %prol.iter680.next, %xtraiter678
  br i1 %prol.iter680.cmp.not, label %.lr.ph337.prol.loopexit, label %.lr.ph337.prol, !llvm.loop !18

.lr.ph337.prol.loopexit:                          ; preds = %.lr.ph337.prol, %.lr.ph337.preheader
  %indvars.iv385.unr = phi i64 [ %indvars.iv385.ph, %.lr.ph337.preheader ], [ %indvars.iv.next386.prol, %.lr.ph337.prol ]
  %i.gt = sub nsw i64 %indvars.iv385.ph, %i.ds
  %i.gu = icmp ugt i64 %i.gt, -8
  br i1 %i.gu, label %.loopexit330, label %.lr.ph337

.lr.ph337:                                        ; preds = %.lr.ph337.prol.loopexit, %.lr.ph337
  %indvars.iv385 = phi i64 [ %indvars.iv.next386.7, %.lr.ph337 ], [ %indvars.iv385.unr, %.lr.ph337.prol.loopexit ] ; 10 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1
  %i.gv = mul nsw i64 %indvars.iv.next386, %i.ft
  %gep447 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.gv
  %i.gw = load double, ptr %gep447, align 8, !tbaa !41
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv385
  store double %i.gw, ptr %i.gx, align 8, !tbaa !41
  %indvars.iv.next386.1 = add nuw nsw i64 %indvars.iv385, 2 ; 2 uses
  %i.gy = mul nsw i64 %indvars.iv.next386.1, %i.ft
  %gep447.1 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.gy
  %i.gz = load double, ptr %gep447.1, align 8, !tbaa !41
  %i.ha = getelementptr [8 x i8], ptr %8, i64 %indvars.iv385
  store double %i.gz, ptr %i.ha, align 8, !tbaa !41
  %indvars.iv.next386.2 = add nuw nsw i64 %indvars.iv385, 3 ; 2 uses
  %i.hb = mul nsw i64 %indvars.iv.next386.2, %i.ft
  %gep447.2 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.hb
  %i.hc = load double, ptr %gep447.2, align 8, !tbaa !41
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next386.1
  store double %i.hc, ptr %i.hd, align 8, !tbaa !41
  %indvars.iv.next386.3 = add nuw nsw i64 %indvars.iv385, 4 ; 2 uses
  %i.he = mul nsw i64 %indvars.iv.next386.3, %i.ft
  %gep447.3 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.he
  %i.hf = load double, ptr %gep447.3, align 8, !tbaa !41
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next386.2
  store double %i.hf, ptr %i.hg, align 8, !tbaa !41
  %indvars.iv.next386.4 = add nuw nsw i64 %indvars.iv385, 5 ; 2 uses
  %i.hh = mul nsw i64 %indvars.iv.next386.4, %i.ft
  %gep447.4 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.hh
  %i.hi = load double, ptr %gep447.4, align 8, !tbaa !41
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next386.3
  store double %i.hi, ptr %i.hj, align 8, !tbaa !41
  %indvars.iv.next386.5 = add nuw nsw i64 %indvars.iv385, 6 ; 2 uses
  %i.hk = mul nsw i64 %indvars.iv.next386.5, %i.ft
  %gep447.5 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.hk
  %i.hl = load double, ptr %gep447.5, align 8, !tbaa !41
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next386.4
  store double %i.hl, ptr %i.hm, align 8, !tbaa !41
  %indvars.iv.next386.6 = add nuw nsw i64 %indvars.iv385, 7 ; 2 uses
  %i.hn = mul nsw i64 %indvars.iv.next386.6, %i.ft
  %gep447.6 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.hn
  %i.ho = load double, ptr %gep447.6, align 8, !tbaa !41
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next386.5
  store double %i.ho, ptr %i.hp, align 8, !tbaa !41
  %indvars.iv.next386.7 = add nuw nsw i64 %indvars.iv385, 8 ; 3 uses
  %i.hq = mul nsw i64 %indvars.iv.next386.7, %i.ft
  %gep447.7 = getelementptr [8 x i8], ptr %invariant.gep446, i64 %i.hq
  %i.hr = load double, ptr %gep447.7, align 8, !tbaa !41
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next386.6
  store double %i.hr, ptr %i.hs, align 8, !tbaa !41
  %exitcond389.not.7 = icmp eq i64 %indvars.iv.next386.7, %wide.trip.count388
  br i1 %exitcond389.not.7, label %.loopexit330, label %.lr.ph337, !llvm.loop !19

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not314.not338.not, label %.loopexit330, label %iter.check525

iter.check525:                                    ; preds = %bb.v
  %i.ht = sext i32 %i.n to i64                    ; 9 uses
  %wide.trip.count393 = zext nneg i32 %i.ah to i64 ; 2 uses
  %invariant.gep448 = getelementptr [8 x i8], ptr %i.p, i64 %.0275 ; 11 uses
  %i.hu = add nsw i64 %wide.trip.count393, -1     ; 5 uses
  %min.iters.check510 = icmp ugt i32 %i.ah, 4
  %ident.check507.not = icmp eq i32 %i.n, 1
  %or.cond669 = select i1 %min.iters.check510, i1 %ident.check507.not, i1 false
  br i1 %or.cond669, label %vector.memcheck508, label %.lr.ph341.preheader

vector.memcheck508:                               ; preds = %iter.check525
  %i.hv = shl nuw nsw i64 %.0275, 3
  %i.hw = add i64 %i.hv, %i.d
  %i.hx = sub i64 %i.b, %i.hw
  %i.hy = add i64 %i.hx, 7
  %diff.check509 = icmp ult i64 %i.hy, 127
  br i1 %diff.check509, label %.lr.ph341.preheader, label %vector.main.loop.iter.check511

vector.main.loop.iter.check511:                   ; preds = %vector.memcheck508
  %min.iters.check512 = icmp ult i32 %i.ah, 17
  br i1 %min.iters.check512, label %vec.epilog.ph529, label %vector.ph513

vector.ph513:                                     ; preds = %vector.main.loop.iter.check511
  %i.hz = and i64 %i.hu, 12
  %n.vec514 = and i64 %i.hu, -16                  ; 4 uses
  %i.ia = or disjoint i64 %n.vec514, 1
  br label %vector.body515

vector.body515:                                   ; preds = %vector.ph513, %vector.body515
  %index516 = phi i64 [ 0, %vector.ph513 ], [ %index.next521, %vector.body515 ] ; 3 uses
  %i.ib = getelementptr [8 x i8], ptr %invariant.gep448, i64 %index516 ; 4 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 8
  %i.id = getelementptr i8, ptr %i.ib, i64 40
  %i.ie = getelementptr i8, ptr %i.ib, i64 72
  %i.if = getelementptr i8, ptr %i.ib, i64 104
  %wide.load517 = load <4 x double>, ptr %i.ic, align 8, !tbaa !41
  %wide.load518 = load <4 x double>, ptr %i.id, align 8, !tbaa !41
  %wide.load519 = load <4 x double>, ptr %i.ie, align 8, !tbaa !41
  %wide.load520 = load <4 x double>, ptr %i.if, align 8, !tbaa !41
  %i.ig = getelementptr [8 x i8], ptr %8, i64 %index516 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  store <4 x double> %wide.load517, ptr %i.ig, align 8, !tbaa !41
  store <4 x double> %wide.load518, ptr %i.ih, align 8, !tbaa !41
  store <4 x double> %wide.load519, ptr %i.ii, align 8, !tbaa !41
  store <4 x double> %wide.load520, ptr %i.ij, align 8, !tbaa !41
  %index.next521 = add nuw i64 %index516, 16      ; 2 uses
  %i.ik = icmp eq i64 %index.next521, %n.vec514
  br i1 %i.ik, label %middle.block522, label %vector.body515, !llvm.loop !20

middle.block522:                                  ; preds = %vector.body515
  %cmp.n523 = icmp eq i64 %i.hu, %n.vec514
  br i1 %cmp.n523, label %.loopexit330, label %vec.epilog.iter.check527

vec.epilog.iter.check527:                         ; preds = %middle.block522
  %min.epilog.iters.check528 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check528, label %.lr.ph341.preheader, label %vec.epilog.ph529, !prof !45

vec.epilog.ph529:                                 ; preds = %vector.main.loop.iter.check511, %vec.epilog.iter.check527
  %vec.epilog.resume.val524 = phi i64 [ %n.vec514, %vec.epilog.iter.check527 ], [ 0, %vector.main.loop.iter.check511 ]
  %n.vec530 = and i64 %i.hu, -4                   ; 3 uses
  %i.il = or disjoint i64 %n.vec530, 1
  br label %vec.epilog.vector.body531

vec.epilog.vector.body531:                        ; preds = %vec.epilog.vector.body531, %vec.epilog.ph529
  %index532 = phi i64 [ %vec.epilog.resume.val524, %vec.epilog.ph529 ], [ %index.next534, %vec.epilog.vector.body531 ] ; 3 uses
  %i.im = getelementptr [8 x i8], ptr %invariant.gep448, i64 %index532
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %wide.load533 = load <4 x double>, ptr %i.in, align 8, !tbaa !41
  %i.io = getelementptr [8 x i8], ptr %8, i64 %index532
  store <4 x double> %wide.load533, ptr %i.io, align 8, !tbaa !41
  %index.next534 = add nuw i64 %index532, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next534, %n.vec530
  br i1 %i.ip, label %vec.epilog.middle.block535, label %vec.epilog.vector.body531, !llvm.loop !21

vec.epilog.middle.block535:                       ; preds = %vec.epilog.vector.body531
  %cmp.n536 = icmp eq i64 %i.hu, %n.vec530
  br i1 %cmp.n536, label %.loopexit330, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %iter.check525, %vector.memcheck508, %vec.epilog.iter.check527, %vec.epilog.middle.block535
  %indvars.iv390.ph = phi i64 [ 1, %iter.check525 ], [ 1, %vector.memcheck508 ], [ %i.ia, %vec.epilog.iter.check527 ], [ %i.il, %vec.epilog.middle.block535 ] ; 4 uses
  %i.iq = sub nsw i64 %i.ds, %indvars.iv390.ph
  %xtraiter681 = and i64 %i.iq, 7                 ; 2 uses
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %.lr.ph341.prol.loopexit, label %.lr.ph341.prol

.lr.ph341.prol:                                   ; preds = %.lr.ph341.preheader, %.lr.ph341.prol
  %indvars.iv390.prol = phi i64 [ %indvars.iv.next391.prol, %.lr.ph341.prol ], [ %indvars.iv390.ph, %.lr.ph341.preheader ] ; 3 uses
  %prol.iter683 = phi i64 [ %prol.iter683.next, %.lr.ph341.prol ], [ 0, %.lr.ph341.preheader ]
  %i.ir = mul nsw i64 %indvars.iv390.prol, %i.ht
  %gep449.prol = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.ir
  %i.is = load double, ptr %gep449.prol, align 8, !tbaa !41
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv390.prol
  store double %i.is, ptr %i.it, align 8, !tbaa !41
  %indvars.iv.next391.prol = add nuw nsw i64 %indvars.iv390.prol, 1 ; 2 uses
  %prol.iter683.next = add i64 %prol.iter683, 1   ; 2 uses
  %prol.iter683.cmp.not = icmp eq i64 %prol.iter683.next, %xtraiter681
  br i1 %prol.iter683.cmp.not, label %.lr.ph341.prol.loopexit, label %.lr.ph341.prol, !llvm.loop !22

.lr.ph341.prol.loopexit:                          ; preds = %.lr.ph341.prol, %.lr.ph341.preheader
  %indvars.iv390.unr = phi i64 [ %indvars.iv390.ph, %.lr.ph341.preheader ], [ %indvars.iv.next391.prol, %.lr.ph341.prol ]
  %i.iu = sub nsw i64 %indvars.iv390.ph, %i.ds
  %i.iv = icmp ugt i64 %i.iu, -8
  br i1 %i.iv, label %.loopexit330, label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.prol.loopexit, %.lr.ph341
  %indvars.iv390 = phi i64 [ %indvars.iv.next391.7, %.lr.ph341 ], [ %indvars.iv390.unr, %.lr.ph341.prol.loopexit ] ; 11 uses
  %i.iw = mul nsw i64 %indvars.iv390, %i.ht
  %gep449 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.iw
  %i.ix = load double, ptr %gep449, align 8, !tbaa !41
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv390
  store double %i.ix, ptr %i.iy, align 8, !tbaa !41
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1
  %i.iz = mul nsw i64 %indvars.iv.next391, %i.ht
  %gep449.1 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.iz
  %i.ja = load double, ptr %gep449.1, align 8, !tbaa !41
  %i.jb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv390
  store double %i.ja, ptr %i.jb, align 8, !tbaa !41
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %i.jc = mul nsw i64 %indvars.iv.next391.1, %i.ht
  %gep449.2 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jc
  %i.jd = load double, ptr %gep449.2, align 8, !tbaa !41
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.1
  store double %i.jd, ptr %i.je, align 8, !tbaa !41
  %indvars.iv.next391.2 = add nuw nsw i64 %indvars.iv390, 3 ; 2 uses
  %i.jf = mul nsw i64 %indvars.iv.next391.2, %i.ht
  %gep449.3 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jf
  %i.jg = load double, ptr %gep449.3, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.2
  store double %i.jg, ptr %i.jh, align 8, !tbaa !41
  %indvars.iv.next391.3 = add nuw nsw i64 %indvars.iv390, 4 ; 2 uses
  %i.ji = mul nsw i64 %indvars.iv.next391.3, %i.ht
  %gep449.4 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.ji
  %i.jj = load double, ptr %gep449.4, align 8, !tbaa !41
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.3
  store double %i.jj, ptr %i.jk, align 8, !tbaa !41
  %indvars.iv.next391.4 = add nuw nsw i64 %indvars.iv390, 5 ; 2 uses
  %i.jl = mul nsw i64 %indvars.iv.next391.4, %i.ht
  %gep449.5 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jl
  %i.jm = load double, ptr %gep449.5, align 8, !tbaa !41
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.4
  store double %i.jm, ptr %i.jn, align 8, !tbaa !41
  %indvars.iv.next391.5 = add nuw nsw i64 %indvars.iv390, 6 ; 2 uses
  %i.jo = mul nsw i64 %indvars.iv.next391.5, %i.ht
  %gep449.6 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jo
  %i.jp = load double, ptr %gep449.6, align 8, !tbaa !41
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.5
  store double %i.jp, ptr %i.jq, align 8, !tbaa !41
  %indvars.iv.next391.6 = add nuw nsw i64 %indvars.iv390, 7 ; 2 uses
  %i.jr = mul nsw i64 %indvars.iv.next391.6, %i.ht
  %gep449.7 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jr
  %i.js = load double, ptr %gep449.7, align 8, !tbaa !41
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.6
  store double %i.js, ptr %i.jt, align 8, !tbaa !41
  %indvars.iv.next391.7 = add nuw nsw i64 %indvars.iv390, 8 ; 2 uses
  %exitcond394.not.7 = icmp eq i64 %indvars.iv.next391.7, %wide.trip.count393
  br i1 %exitcond394.not.7, label %.loopexit330, label %.lr.ph341, !llvm.loop !23

.loopexit330:                                     ; preds = %.lr.ph337.prol.loopexit, %.lr.ph337, %.lr.ph341.prol.loopexit, %.lr.ph341, %middle.block490, %vec.epilog.middle.block503, %middle.block522, %vec.epilog.middle.block535, %bb.u, %bb.v
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  store double 1.000000e+00, ptr %11, align 8, !tbaa !41
  br label %bb.am

bb.w:                                             ; preds = %bb.t
  %i.ju = uitofp nneg i32 %i.ah to float
  %i.jv = add nsw i32 %i.ah, -1
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = fdiv float %i.jw, %i.ju
  %i.jy = fadd float %i.jx, 5.000000e-01          ; 3 uses
  %i.jz = fcmp ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ka = call float @llvm.floor.f32(float %i.jy)
  %i.kb = fpext float %i.ka to double
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.kc = fneg float %i.jy
  %i.kd = call float @llvm.floor.f32(float %i.kc)
  %i.ke = fpext float %i.kd to double
  %i.kf = fneg double %i.ke
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.kg = phi double [ %i.kb, %bb.x ], [ %i.kf, %bb.y ]
  %i.kh = fptosi double %i.kg to i32              ; 3 uses
  %i.ki = add nuw nsw i32 %i.aj, 1
  store i32 %i.ki, ptr %i.e, align 4, !tbaa !39
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0267
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.k) #5
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0268
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull @c_b26, ptr noundef nonnull @c_b26, ptr noundef nonnull %i.kk, ptr noundef nonnull %i.k) #5
  store i32 %i.kh, ptr %i.e, align 4, !tbaa !39
  %.not300364 = icmp slt i32 %i.kh, 1
  br i1 %.not300364, label %.._crit_edge368_crit_edge, label %.lr.ph367

.._crit_edge368_crit_edge:                        ; preds = %bb.z
  %.pre422 = load i32, ptr %3, align 4, !tbaa !39
  br label %._crit_edge368

.lr.ph367:                                        ; preds = %bb.z
  %i.kl = sext i32 %i.ay to i64
  %i.km = getelementptr [8 x i8], ptr %9, i64 %i.kl ; 3 uses
  %i.kn = sext i32 %i.bb to i64
  %i.ko = getelementptr [8 x i8], ptr %i.s, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 8      ; 3 uses
  %.pre423 = load i32, ptr %3, align 4, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph367, %._crit_edge362
  %i.kq = phi i32 [ %.pre423, %.lr.ph367 ], [ %i.of, %._crit_edge362 ] ; 5 uses
end_hunk_0
begin_hunk_1_@dsytrd_sb2st_:bb.a
  %spec.select = select i1 %or.cond325, i32 %.pre, i32 0
  br label %.loopexit327

.loopexit327:                                     ; preds = %bb.ad, %bb.ac
  %.0264 = phi i32 [ %i.ll, %bb.ac ], [ %spec.select, %bb.ad ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.lw = load i32, ptr %3, align 4, !tbaa !39    ; 4 uses
  %i.lx = add nsw i32 %i.lw, -1
  %.not312 = icmp sge i32 %.0264, %i.lx
  %i.ly = zext i1 %.not312 to i32
  %spec.select458 = add nsw i32 %.2353, %i.ly     ; 6 uses
  %i.lz = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  store i32 %i.ma, ptr %i.m, align 4, !tbaa !39
  %.not307.not = icmp slt i32 %i.lz, %i.kz
  br i1 %.not307.not, label %.preheader, label %._crit_edge354, !llvm.loop !24

._crit_edge354:                                   ; preds = %.loopexit327
  store i32 %spec.select458, ptr %i.m, align 4, !tbaa !39
  %.not307352.1 = icmp sgt i32 %spec.select458, %i.kz
  br i1 %.not307352.1, label %._crit_edge354.1, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge354, %.loopexit327.1
  %.pre.1 = phi i32 [ %i.mw, %.loopexit327.1 ], [ %i.lw, %._crit_edge354 ] ; 4 uses
  %i.mb = phi i32 [ %i.na, %.loopexit327.1 ], [ %spec.select458, %._crit_edge354 ] ; 3 uses
  %.2353.1 = phi i32 [ %spec.select458.1, %.loopexit327.1 ], [ %spec.select458, %._crit_edge354 ]
  %i.mc = sub nsw i32 %.5358, %i.mb
  %i.md = mul nsw i32 %i.mc, 3                    ; 2 uses
  %i.me = add i32 %i.md, 2                        ; 3 uses
  %i.mf = icmp eq i32 %i.me, 1
  br i1 %i.mf, label %.thread323.1, label %bb.ae

bb.ae:                                            ; preds = %.preheader.1
  %i.mg = srem i32 %i.me, 2                       ; 2 uses
  %i.mh = sdiv i32 %i.me, 2
  %i.mi = add nsw i32 %i.mg, 2
  store i32 %i.mi, ptr %i.i, align 4, !tbaa !39
  %i.mj = icmp eq i32 %i.mg, 0
  %.pre426.1 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %i.mj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mk = mul nsw i32 %.pre426.1, %i.mh
  %i.ml = add nsw i32 %i.mk, %i.mb                ; 3 uses
  %reass.sub.1 = sub i32 %i.ml, %.pre426.1
  %i.mm = add i32 %reass.sub.1, 1
  store i32 %i.mm, ptr %i.g, align 4, !tbaa !39
  %..1 = call i32 @llvm.smin.i32(i32 %i.ml, i32 %.pre.1)
  store i32 %..1, ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327.1

.thread323.1:                                     ; preds = %.preheader.1
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425.1 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.ag

bb.ag:                                            ; preds = %.thread323.1, %bb.ae
  %i.mn = phi i32 [ %.pre425.1, %.thread323.1 ], [ %.pre426.1, %bb.ae ] ; 2 uses
  %i.mo = add i32 %i.md, 3
  %i.mp = sdiv i32 %i.mo, 2
  %i.mq = mul nsw i32 %i.mn, %i.mp
  %i.mr = add nsw i32 %i.mq, %i.mb                ; 3 uses
  %i.ms = sub nsw i32 %i.mr, %i.mn
  %i.mt = add nsw i32 %i.ms, 1                    ; 2 uses
  store i32 %i.mt, ptr %i.g, align 4, !tbaa !39
  %.318.1 = call i32 @llvm.smin.i32(i32 %i.mr, i32 %.pre.1) ; 2 uses
  store i32 %.318.1, ptr %i.f, align 4, !tbaa !39
  %i.mu = add nsw i32 %.318.1, -1
  %.not310.1 = icmp sge i32 %i.mt, %i.mu
  %i.mv = icmp sle i32 %.pre.1, %i.mr
  %or.cond325.1 = and i1 %i.mv, %.not310.1
  %spec.select.1 = select i1 %or.cond325.1, i32 %.pre.1, i32 0
  br label %.loopexit327.1

.loopexit327.1:                                   ; preds = %bb.ag, %bb.af
  %.0264.1 = phi i32 [ %i.ml, %bb.af ], [ %spec.select.1, %bb.ag ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.mw = load i32, ptr %3, align 4, !tbaa !39    ; 3 uses
  %i.mx = add nsw i32 %i.mw, -1
  %.not312.1 = icmp sge i32 %.0264.1, %i.mx
  %i.my = zext i1 %.not312.1 to i32
  %spec.select458.1 = add nsw i32 %.2353.1, %i.my ; 2 uses
  %i.mz = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.na = add nsw i32 %i.mz, 1                    ; 2 uses
  store i32 %i.na, ptr %i.m, align 4, !tbaa !39
  %.not307.not.1 = icmp slt i32 %i.mz, %i.kz
  br i1 %.not307.not.1, label %.preheader.1, label %._crit_edge354.1, !llvm.loop !24

._crit_edge354.1:                                 ; preds = %.loopexit327.1, %._crit_edge354
  %i.nb = phi i32 [ %i.lw, %._crit_edge354 ], [ %i.mw, %.loopexit327.1 ] ; 2 uses
  %.2.lcssa.1 = phi i32 [ %spec.select458, %._crit_edge354 ], [ %spec.select458.1, %.loopexit327.1 ] ; 5 uses
  store i32 %.2.lcssa.1, ptr %i.m, align 4, !tbaa !39
  %.not307352.2 = icmp sgt i32 %.2.lcssa.1, %i.kz
  br i1 %.not307352.2, label %._crit_edge354.2, label %.preheader.2

.preheader.2:                                     ; preds = %._crit_edge354.1, %.loopexit327.2
  %.pre.2 = phi i32 [ %i.nx, %.loopexit327.2 ], [ %i.nb, %._crit_edge354.1 ] ; 4 uses
  %i.nc = phi i32 [ %i.ob, %.loopexit327.2 ], [ %.2.lcssa.1, %._crit_edge354.1 ] ; 3 uses
  %.2353.2 = phi i32 [ %spec.select458.2, %.loopexit327.2 ], [ %.2.lcssa.1, %._crit_edge354.1 ]
  %i.nd = sub nsw i32 %.5358, %i.nc
  %i.ne = mul nsw i32 %i.nd, 3                    ; 2 uses
  %i.nf = add i32 %i.ne, 3                        ; 3 uses
  %i.ng = icmp eq i32 %i.nf, 1
  br i1 %i.ng, label %.thread323.2, label %bb.ah

bb.ah:                                            ; preds = %.preheader.2
  %i.nh = srem i32 %i.nf, 2                       ; 2 uses
  %i.ni = sdiv i32 %i.nf, 2
  %i.nj = add nsw i32 %i.nh, 2
  store i32 %i.nj, ptr %i.i, align 4, !tbaa !39
  %i.nk = icmp eq i32 %i.nh, 0
  %.pre426.2 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %i.nk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.nl = mul nsw i32 %.pre426.2, %i.ni
  %i.nm = add nsw i32 %i.nl, %i.nc                ; 3 uses
  %reass.sub.2 = sub i32 %i.nm, %.pre426.2
  %i.nn = add i32 %reass.sub.2, 1
  store i32 %i.nn, ptr %i.g, align 4, !tbaa !39
  %..2 = call i32 @llvm.smin.i32(i32 %i.nm, i32 %.pre.2)
  store i32 %..2, ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327.2

.thread323.2:                                     ; preds = %.preheader.2
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425.2 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.aj

bb.aj:                                            ; preds = %.thread323.2, %bb.ah
  %i.no = phi i32 [ %.pre425.2, %.thread323.2 ], [ %.pre426.2, %bb.ah ] ; 2 uses
  %i.np = add i32 %i.ne, 4
  %i.nq = sdiv i32 %i.np, 2
  %i.nr = mul nsw i32 %i.no, %i.nq
  %i.ns = add nsw i32 %i.nr, %i.nc                ; 3 uses
  %i.nt = sub nsw i32 %i.ns, %i.no
  %i.nu = add nsw i32 %i.nt, 1                    ; 2 uses
  store i32 %i.nu, ptr %i.g, align 4, !tbaa !39
  %.318.2 = call i32 @llvm.smin.i32(i32 %i.ns, i32 %.pre.2) ; 2 uses
  store i32 %.318.2, ptr %i.f, align 4, !tbaa !39
  %i.nv = add nsw i32 %.318.2, -1
  %.not310.2 = icmp sge i32 %i.nu, %i.nv
  %i.nw = icmp sle i32 %.pre.2, %i.ns
  %or.cond325.2 = and i1 %i.nw, %.not310.2
  %spec.select.2 = select i1 %or.cond325.2, i32 %.pre.2, i32 0
  br label %.loopexit327.2

.loopexit327.2:                                   ; preds = %bb.aj, %bb.ai
  %.0264.2 = phi i32 [ %i.nm, %bb.ai ], [ %spec.select.2, %bb.aj ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.nx = load i32, ptr %3, align 4, !tbaa !39    ; 3 uses
  %i.ny = add nsw i32 %i.nx, -1
  %.not312.2 = icmp sge i32 %.0264.2, %i.ny
  %i.nz = zext i1 %.not312.2 to i32
  %spec.select458.2 = add nsw i32 %.2353.2, %i.nz ; 2 uses
  %i.oa = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.ob = add nsw i32 %i.oa, 1                    ; 2 uses
  store i32 %i.ob, ptr %i.m, align 4, !tbaa !39
  %.not307.not.2 = icmp slt i32 %i.oa, %i.kz
  br i1 %.not307.not.2, label %.preheader.2, label %._crit_edge354.2, !llvm.loop !24

._crit_edge354.2:                                 ; preds = %.loopexit327.2, %._crit_edge354.1
  %i.oc = phi i32 [ %i.nb, %._crit_edge354.1 ], [ %i.nx, %.loopexit327.2 ] ; 2 uses
  %.2.lcssa.2 = phi i32 [ %.2.lcssa.1, %._crit_edge354.1 ], [ %spec.select458.2, %.loopexit327.2 ]
  %i.od = add i32 %.5358, 1                       ; 2 uses
  %exitcond404.not = icmp eq i32 %i.od, %i.kq
  br i1 %exitcond404.not, label %._crit_edge362.loopexit, label %.lr.ph361, !llvm.loop !25

._crit_edge362.loopexit:                          ; preds = %._crit_edge354.2, %.lr.ph361
  %i.oe = phi i32 [ %i.oc, %._crit_edge354.2 ], [ %i.ky, %.lr.ph361 ]
  %.pre421 = load i32, ptr %i.e, align 4, !tbaa !39
  br label %._crit_edge362

._crit_edge362:                                   ; preds = %._crit_edge362.loopexit, %bb.aa
  %i.of = phi i32 [ %i.oe, %._crit_edge362.loopexit ], [ %i.kq, %bb.aa ] ; 2 uses
  %i.og = phi i32 [ %.pre421, %._crit_edge362.loopexit ], [ %i.kr, %bb.aa ] ; 2 uses
  %i.oh = add nuw nsw i32 %.0266365, 1
  %.not300.not = icmp slt i32 %.0266365, %i.og
  br i1 %.not300.not, label %bb.aa, label %._crit_edge368, !llvm.loop !26

._crit_edge368:                                   ; preds = %._crit_edge362, %.._crit_edge368_crit_edge
  %i.oi = phi i32 [ %.pre422, %.._crit_edge368_crit_edge ], [ %i.of, %._crit_edge362 ] ; 13 uses
  %.not301369 = icmp slt i32 %i.oi, 1
  br i1 %.not301369, label %._crit_edge373, label %iter.check589

iter.check589:                                    ; preds = %._crit_edge368
  %i.oj = load i32, ptr %i.k, align 4, !tbaa !39  ; 2 uses
  %i.ok = sext i32 %i.oj to i64                   ; 9 uses
  %i.ol = add nuw i32 %i.oi, 1
  %wide.trip.count408 = zext i32 %i.ol to i64     ; 2 uses
  %invariant.gep452 = getelementptr [8 x i8], ptr %i.s, i64 %.0276 ; 11 uses
  %i.om = zext nneg i32 %i.oi to i64              ; 5 uses
  %min.iters.check574 = icmp ugt i32 %i.oi, 3
  %ident.check571.not = icmp eq i32 %i.oj, 1
  %or.cond670 = select i1 %min.iters.check574, i1 %ident.check571.not, i1 false
  br i1 %or.cond670, label %vector.memcheck572, label %vec.epilog.scalar.ph590.preheader

vector.memcheck572:                               ; preds = %iter.check589
  %i.on = shl nuw nsw i64 %.0276, 3
  %i.oo = add i64 %i.on, %i.a
  %i.op = sub i64 %i.c, %i.oo
  %i.oq = add i64 %i.op, 7
  %diff.check573 = icmp ult i64 %i.oq, 127
  br i1 %diff.check573, label %vec.epilog.scalar.ph590.preheader, label %vector.main.loop.iter.check575

vector.main.loop.iter.check575:                   ; preds = %vector.memcheck572
  %min.iters.check576 = icmp ult i32 %i.oi, 16
  br i1 %min.iters.check576, label %vec.epilog.ph593, label %vector.ph577

vector.ph577:                                     ; preds = %vector.main.loop.iter.check575
  %i.or = and i64 %i.om, 12
  %n.vec578 = and i64 %i.om, 2147483632           ; 4 uses
  %i.os = or disjoint i64 %n.vec578, 1
  br label %vector.body579

vector.body579:                                   ; preds = %vector.ph577, %vector.body579
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 3 uses
  %i.ot = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index580 ; 4 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 32
  %i.ov = getelementptr i8, ptr %i.ot, i64 64
  %i.ow = getelementptr i8, ptr %i.ot, i64 96
  %wide.load581 = load <4 x double>, ptr %i.ot, align 8, !tbaa !41
  %wide.load582 = load <4 x double>, ptr %i.ou, align 8, !tbaa !41
  %wide.load583 = load <4 x double>, ptr %i.ov, align 8, !tbaa !41
  %wide.load584 = load <4 x double>, ptr %i.ow, align 8, !tbaa !41
  %i.ox = getelementptr [8 x i8], ptr %7, i64 %index580 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 96
  store <4 x double> %wide.load581, ptr %i.ox, align 8, !tbaa !41
  store <4 x double> %wide.load582, ptr %i.oy, align 8, !tbaa !41
  store <4 x double> %wide.load583, ptr %i.oz, align 8, !tbaa !41
  store <4 x double> %wide.load584, ptr %i.pa, align 8, !tbaa !41
  %index.next585 = add nuw i64 %index580, 16      ; 2 uses
  %i.pb = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.pb, label %middle.block586, label %vector.body579, !llvm.loop !27

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %n.vec578, %i.om
  br i1 %cmp.n587, label %._crit_edge373, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block586
  %min.epilog.iters.check592 = icmp eq i64 %i.or, 0
  br i1 %min.epilog.iters.check592, label %vec.epilog.scalar.ph590.preheader, label %vec.epilog.ph593, !prof !45

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check575, %vec.epilog.iter.check591
  %vec.epilog.resume.val588 = phi i64 [ %n.vec578, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check575 ]
  %n.vec594 = and i64 %i.om, 2147483644           ; 3 uses
  %i.pc = or disjoint i64 %n.vec594, 1
  br label %vec.epilog.vector.body595

vec.epilog.vector.body595:                        ; preds = %vec.epilog.vector.body595, %vec.epilog.ph593
  %index596 = phi i64 [ %vec.epilog.resume.val588, %vec.epilog.ph593 ], [ %index.next598, %vec.epilog.vector.body595 ] ; 3 uses
  %i.pd = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index596
  %wide.load597 = load <4 x double>, ptr %i.pd, align 8, !tbaa !41
  %i.pe = getelementptr [8 x i8], ptr %7, i64 %index596
  store <4 x double> %wide.load597, ptr %i.pe, align 8, !tbaa !41
  %index.next598 = add nuw i64 %index596, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next598, %n.vec594
  br i1 %i.pf, label %vec.epilog.middle.block599, label %vec.epilog.vector.body595, !llvm.loop !28

vec.epilog.middle.block599:                       ; preds = %vec.epilog.vector.body595
  %cmp.n600 = icmp eq i64 %n.vec594, %i.om
  br i1 %cmp.n600, label %._crit_edge373, label %vec.epilog.scalar.ph590.preheader

vec.epilog.scalar.ph590.preheader:                ; preds = %iter.check589, %vector.memcheck572, %vec.epilog.iter.check591, %vec.epilog.middle.block599
  %indvars.iv405.ph = phi i64 [ 1, %iter.check589 ], [ 1, %vector.memcheck572 ], [ %i.os, %vec.epilog.iter.check591 ], [ %i.pc, %vec.epilog.middle.block599 ] ; 4 uses
  %i.pg = sub nsw i64 %wide.trip.count408, %indvars.iv405.ph
  %i.ph = zext nneg i32 %i.oi to i64
  %i.pi = sub nsw i64 %i.ph, %indvars.iv405.ph
  %xtraiter687 = and i64 %i.pg, 7                 ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol

vec.epilog.scalar.ph590.prol:                     ; preds = %vec.epilog.scalar.ph590.preheader, %vec.epilog.scalar.ph590.prol
  %indvars.iv405.prol = phi i64 [ %indvars.iv.next406.prol, %vec.epilog.scalar.ph590.prol ], [ %indvars.iv405.ph, %vec.epilog.scalar.ph590.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %vec.epilog.scalar.ph590.prol ], [ 0, %vec.epilog.scalar.ph590.preheader ]
  %i.pj = add nsw i64 %indvars.iv405.prol, -1
  %i.pk = mul nsw i64 %i.pj, %i.ok
  %gep453.prol = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pk
  %i.pl = load double, ptr %gep453.prol, align 8, !tbaa !41
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405.prol
  store double %i.pl, ptr %i.pm, align 8, !tbaa !41
  %indvars.iv.next406.prol = add nuw nsw i64 %indvars.iv405.prol, 1 ; 2 uses
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol, !llvm.loop !29

vec.epilog.scalar.ph590.prol.loopexit:            ; preds = %vec.epilog.scalar.ph590.prol, %vec.epilog.scalar.ph590.preheader
  %indvars.iv405.unr = phi i64 [ %indvars.iv405.ph, %vec.epilog.scalar.ph590.preheader ], [ %indvars.iv.next406.prol, %vec.epilog.scalar.ph590.prol ]
  %i.pn = icmp ult i64 %i.pi, 7
  br i1 %i.pn, label %._crit_edge373, label %vec.epilog.scalar.ph590

vec.epilog.scalar.ph590:                          ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590
  %indvars.iv405 = phi i64 [ %indvars.iv.next406.7, %vec.epilog.scalar.ph590 ], [ %indvars.iv405.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 17 uses
  %i.po = add nsw i64 %indvars.iv405, -1
  %i.pp = mul nsw i64 %i.po, %i.ok
  %gep453 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pp
  %i.pq = load double, ptr %gep453, align 8, !tbaa !41
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  store double %i.pq, ptr %i.pr, align 8, !tbaa !41
  %i.ps = mul nsw i64 %indvars.iv405, %i.ok
  %gep453.1 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.ps
  %i.pt = load double, ptr %gep453.1, align 8, !tbaa !41
  %i.pu = getelementptr [8 x i8], ptr %7, i64 %indvars.iv405
  store double %i.pt, ptr %i.pu, align 8, !tbaa !41
  %i.pv = add nsw i64 %indvars.iv405, 1
  %i.pw = mul nsw i64 %i.pv, %i.ok
  %gep453.2 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pw
  %i.px = load double, ptr %gep453.2, align 8, !tbaa !41
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store double %i.px, ptr %i.pz, align 8, !tbaa !41
  %i.qa = add nsw i64 %indvars.iv405, 2
  %i.qb = mul nsw i64 %i.qa, %i.ok
  %gep453.3 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.qb
  %i.qc = load double, ptr %gep453.3, align 8, !tbaa !41
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  store double %i.qc, ptr %i.qe, align 8, !tbaa !41
  %i.qf = add nsw i64 %indvars.iv405, 3
  %i.qg = mul nsw i64 %i.qf, %i.ok
  %gep453.4 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.qg
  %i.qh = load double, ptr %gep453.4, align 8, !tbaa !41
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  store double %i.qh, ptr %i.qj, align 8, !tbaa !41
  %i.qk = add nsw i64 %indvars.iv405, 4
  %i.ql = mul nsw i64 %i.qk, %i.ok
  %gep453.5 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.ql
  %i.qm = load double, ptr %gep453.5, align 8, !tbaa !41
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 40
  store double %i.qm, ptr %i.qo, align 8, !tbaa !41
  %i.qp = add nsw i64 %indvars.iv405, 5
  %i.qq = mul nsw i64 %i.qp, %i.ok
  %gep453.6 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.qq
  %i.qr = load double, ptr %gep453.6, align 8, !tbaa !41
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 48
  store double %i.qr, ptr %i.qt, align 8, !tbaa !41
  %i.qu = add nsw i64 %indvars.iv405, 6
  %i.qv = mul nsw i64 %i.qu, %i.ok
  %gep453.7 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.qv
  %i.qw = load double, ptr %gep453.7, align 8, !tbaa !41
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 56
  store double %i.qw, ptr %i.qy, align 8, !tbaa !41
  %indvars.iv.next406.7 = add nuw nsw i64 %indvars.iv405, 8 ; 2 uses
  %exitcond409.not.7 = icmp eq i64 %indvars.iv.next406.7, %wide.trip.count408
  br i1 %exitcond409.not.7, label %._crit_edge373, label %vec.epilog.scalar.ph590, !llvm.loop !30

._crit_edge373:                                   ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590, %middle.block586, %vec.epilog.middle.block599, %._crit_edge368
  %.not302.not378 = icmp sgt i32 %i.oi, 1         ; 2 uses
  br i1 %.not295, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge373
  br i1 %.not302.not378, label %iter.check621, label %.loopexit

iter.check621:                                    ; preds = %bb.ak
  %i.qz = load i32, ptr %i.k, align 4, !tbaa !39  ; 2 uses
  %i.ra = sext i32 %i.qz to i64                   ; 9 uses
  %wide.trip.count413 = zext nneg i32 %i.oi to i64 ; 4 uses
  %invariant.gep454 = getelementptr [8 x i8], ptr %i.s, i64 %.0265 ; 11 uses
  %i.rb = add nsw i64 %wide.trip.count413, -1     ; 5 uses
  %min.iters.check606 = icmp ugt i32 %i.oi, 4
  %ident.check603.not = icmp eq i32 %i.qz, 1
  %or.cond671 = select i1 %min.iters.check606, i1 %ident.check603.not, i1 false
  br i1 %or.cond671, label %vector.memcheck604, label %vec.epilog.scalar.ph622.preheader

vector.memcheck604:                               ; preds = %iter.check621
  %i.rc = shl nsw i64 %.0265, 3
  %i.rd = add i64 %i.rc, %i.a
  %i.re = sub i64 %i.rd, %i.b
  %diff.check605 = icmp ugt i64 %i.re, -128
  br i1 %diff.check605, label %vec.epilog.scalar.ph622.preheader, label %vector.main.loop.iter.check607

vector.main.loop.iter.check607:                   ; preds = %vector.memcheck604
  %min.iters.check608 = icmp ult i32 %i.oi, 17
  br i1 %min.iters.check608, label %vec.epilog.ph625, label %vector.ph609

vector.ph609:                                     ; preds = %vector.main.loop.iter.check607
  %i.rf = and i64 %i.rb, 12
  %n.vec610 = and i64 %i.rb, -16                  ; 4 uses
  %i.rg = or disjoint i64 %n.vec610, 1
  br label %vector.body611

vector.body611:                                   ; preds = %vector.ph609, %vector.body611
  %index612 = phi i64 [ 0, %vector.ph609 ], [ %index.next617, %vector.body611 ] ; 3 uses
  %i.rh = getelementptr [8 x i8], ptr %invariant.gep454, i64 %index612 ; 4 uses
  %i.ri = getelementptr i8, ptr %i.rh, i64 8
  %i.rj = getelementptr i8, ptr %i.rh, i64 40
  %i.rk = getelementptr i8, ptr %i.rh, i64 72
  %i.rl = getelementptr i8, ptr %i.rh, i64 104
  %wide.load613 = load <4 x double>, ptr %i.ri, align 8, !tbaa !41
  %wide.load614 = load <4 x double>, ptr %i.rj, align 8, !tbaa !41
  %wide.load615 = load <4 x double>, ptr %i.rk, align 8, !tbaa !41
  %wide.load616 = load <4 x double>, ptr %i.rl, align 8, !tbaa !41
  %i.rm = getelementptr [8 x i8], ptr %8, i64 %index612 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 64
end_hunk_1
