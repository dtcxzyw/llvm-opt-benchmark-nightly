loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DLATRS\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@c_n1 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"DLATRS3\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Safe Minimum\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@c_b35 = internal global double -1.000000e+00, align 8
@c_b36 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dlatrs3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef captures(none) initializes((0, 8)) %12, ptr nofree noundef readonly captures(none) %13, ptr noundef initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca double, align 8                   ; 9 uses
  %i.i = alloca double, align 8                   ; 6 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca [32 x double], align 16           ; 4 uses
  %i.l = alloca [64 x double], align 16           ; 6 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca double, align 8                   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.o = load i32, ptr %7, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.o, -1
  %i.p = sext i32 %narrow to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %6, i64 %i.p ; 4 uses
  %i.r = load i32, ptr %9, align 4, !tbaa !8      ; 9 uses
  %narrow627 = xor i32 %i.r, -1
  %i.s = sext i32 %narrow627 to i64               ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %8, i64 %i.s ; 9 uses
  %i.u = getelementptr inbounds i8, ptr %10, i64 -8 ; 7 uses
  %i.v = getelementptr inbounds i8, ptr %12, i64 -8 ; 12 uses
  store i32 0, ptr %14, align 4, !tbaa !8
  %i.w = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %i.x = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %i.y = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %i.z = load i32, ptr %13, align 4, !tbaa !8
  %i.aa = icmp eq i32 %i.z, -1
  %i.ab = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %4, ptr noundef %4, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 0) #6
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 8)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 64) ; 14 uses
  %i.ae = load i32, ptr %4, align 4, !tbaa !8
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = sdiv i32 %i.ag, %i.ad                   ; 9 uses
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1) ; 17 uses
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.aj = load i32, ptr %5, align 4, !tbaa !8     ; 3 uses
  %i.ak = add nsw i32 %i.aj, 31
  %i.al = sdiv i32 %i.ak, 32
  %i.am = icmp slt i32 %i.aj, 33                  ; 2 uses
  %i.an = select i1 %i.am, i32 1, i32 %i.al       ; 2 uses
  %spec.select = select i1 %i.am, i32 %i.aj, i32 32
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %spec.select) ; 4 uses
  %i.ap = mul nuw nsw i32 %i.ao, %i.ai
  %i.aq = add nuw i32 %i.ao, %i.ai
  %i.ar = mul i32 %i.aq, %i.ai
  %i.as = sitofp i32 %i.ar to double
  store double %i.as, ptr %12, align 8, !tbaa !9
  %.not = icmp eq i32 %i.w, 0                     ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  %.not590 = icmp eq i32 %i.at, 0
  br i1 %.not590, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not591 = icmp eq i32 %i.x, 0                  ; 6 uses
  br i1 %.not591, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.au = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.5) #6
  %.not592 = icmp eq i32 %i.au, 0
  br i1 %.not592, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %.not593 = icmp eq i32 %i.av, 0
  br i1 %.not593, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not594 = icmp eq i32 %i.y, 0
  br i1 %.not594, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #6
  %.not595 = icmp eq i32 %i.aw, 0
  br i1 %.not595, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  %.not596 = icmp eq i32 %i.ax, 0
  br i1 %.not596, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %.not597 = icmp eq i32 %i.ay, 0
  br i1 %.not597, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = load i32, ptr %4, align 4, !tbaa !8     ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %5, align 4, !tbaa !8     ; 7 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %7, align 4, !tbaa !8
  %spec.select629 = tail call i32 @llvm.umax.i32(i32 %i.az, i32 1) ; 2 uses
  %i.be = icmp slt i32 %i.bd, %spec.select629
  br i1 %i.be, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %9, align 4, !tbaa !8
  %i.bg = icmp slt i32 %i.bf, %spec.select629
  br i1 %i.bg, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.aa, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %13, align 4, !tbaa !8
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = load double, ptr %12, align 8, !tbaa !9
  %i.bk = fcmp ogt double %i.bj, %i.bi
  br i1 %i.bk, label %.thread.sink.split, label %.thread644

bb.p:                                             ; preds = %bb.n
  %.pr = load i32, ptr %14, align 4, !tbaa !8     ; 2 uses
  %.not598 = icmp eq i32 %.pr, 0
  br i1 %.not598, label %.loopexit, label %.thread

.thread644:                                       ; preds = %bb.o
  %.pr645 = load i32, ptr %14, align 4, !tbaa !8  ; 2 uses
  %.not598646 = icmp eq i32 %.pr645, 0
  br i1 %.not598646, label %bb.q, label %.thread

.thread.sink.split:                               ; preds = %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.i ], [ -6, %bb.k ], [ -10, %bb.m ], [ -8, %bb.l ], [ -5, %bb.j ], [ -3, %bb.g ], [ -14, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %14, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.thread644, %bb.p
  %i.bl = phi i32 [ %.pr645, %.thread644 ], [ %.pr, %bb.p ], [ %.sink, %.thread.sink.split ]
  %i.bm = sub nsw i32 0, %i.bl
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !8
  %i.bn = call i32 @xerbla_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %.thread644
  %.not599652 = icmp eq i32 %i.bb, 0
  br i1 %.not599652, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.bo = add nuw i32 %i.bb, 1
  %wide.trip.count = zext i32 %i.bo to i64
  %i.bp = zext nneg i32 %i.bb to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check878 = icmp ult i32 %i.bb, 16
  br i1 %min.iters.check878, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, 2147483632              ; 4 uses
  %i.br = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %10, i64 %index ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.bs, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.bt, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.bu, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.bv, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec879 = and i64 %i.bp, 2147483644           ; 3 uses
  %i.bx = or disjoint i64 %n.vec879, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index880.a = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next881.a, %vec.epilog.vector.body ] ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %10, i64 %index880.a
  store <4 x double> splat (double 1.000000e+00), ptr %i.by, align 8, !tbaa !9
  %index.next881.a = add nuw i64 %index880.a, 4   ; 2 uses
  %i.bz = icmp eq i64 %index.next881.a, %n.vec879
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n882 = icmp eq i64 %n.vec879, %i.bp
  br i1 %cmp.n882, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.br, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ca, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.bb)
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cd = tail call double @dlamch_(ptr noundef nonnull @.str.9) #6
  %i.ce = tail call double @dlamch_(ptr noundef nonnull @.str.10) #6 ; 2 uses
  %i.cf = load i32, ptr %5, align 4, !tbaa !8
  %i.cg = icmp slt i32 %i.cf, 2
  br i1 %i.cg, label %bb.s, label %.lr.ph665

bb.s:                                             ; preds = %bb.r
  tail call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14) #6
  %i.ch = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %.not628734 = icmp slt i32 %i.ch, 2
  br i1 %.not628734, label %.loopexit, label %.lr.ph737.preheader

.lr.ph737.preheader:                              ; preds = %bb.s
  %i.ci = sext i32 %i.r to i64
  %i.cj = add nuw i32 %i.ch, 1
  %wide.trip.count822 = zext i32 %i.cj to i64
  br label %.lr.ph737

.lr.ph737:                                        ; preds = %.lr.ph737.preheader, %.lr.ph737
  %indvars.iv819 = phi i64 [ 2, %.lr.ph737.preheader ], [ %indvars.iv.next820, %.lr.ph737 ] ; 3 uses
  %i.ck = mul nsw i64 %indvars.iv819, %i.ci
  %i.cl = getelementptr [8 x i8], ptr %i.t, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv819
  tail call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.cm, ptr noundef nonnull %i.cn, ptr noundef %11, ptr noundef nonnull %14) #6
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1 ; 2 uses
  %exitcond823.not = icmp eq i64 %indvars.iv.next820, %wide.trip.count822
  br i1 %exitcond823.not, label %.loopexit, label %.lr.ph737, !llvm.loop !18

.lr.ph665:                                        ; preds = %bb.r
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !8
  %i.co = zext nneg i32 %i.ad to i64
  %i.cp = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.cq = zext nneg i32 %i.ap to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.cq
  br label %bb.t

.loopexit651:                                     ; preds = %.lr.ph658.split, %bb.u, %bb.t
  %.1563.lcssa = phi double [ %.0562662, %bb.t ], [ %i.dv, %bb.u ], [ %i.el, %.lr.ph658.split ] ; 2 uses
  %.not601.not = icmp samesign ult i64 %indvars.iv753, %i.cp
  br i1 %.not601.not, label %bb.t, label %._crit_edge666, !llvm.loop !19

bb.t:                                             ; preds = %.lr.ph665, %.loopexit651
  %indvars.iv753 = phi i64 [ 1, %.lr.ph665 ], [ %indvars.iv.next754, %.loopexit651 ] ; 5 uses
  %.0562662 = phi double [ 0.000000e+00, %.lr.ph665 ], [ %.1563.lcssa, %.loopexit651 ] ; 3 uses
  %i.cr = add nsw i64 %indvars.iv753, -1          ; 3 uses
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %.0550 = select i1 %.not, i32 %i.ai, i32 %i.cs  ; 2 uses
  %i.ct = trunc nsw i64 %indvars.iv.next754 to i32
  %.0541 = select i1 %.not, i32 %i.ct, i32 1      ; 2 uses
  %.not624654 = icmp sgt i32 %.0541, %.0550
  br i1 %.not624654, label %.loopexit651, label %.lr.ph658

.lr.ph658:                                        ; preds = %bb.t
  %i.cu = load i32, ptr %4, align 4, !tbaa !8
  %i.cv = trunc i64 %indvars.iv753 to i32
  %i.cw = mul i32 %i.ad, %i.cv
  %.631 = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.cu)
  %i.cx = mul nuw nsw i64 %i.cr, %i.co            ; 2 uses
  %i.cy = trunc nsw i64 %i.cx to i32
  %i.cz = sub nsw i32 %.631, %i.cy                ; 2 uses
  %i.da = trunc i64 %i.cr to i32
  %i.db = add i32 %i.ao, %i.da
  %i.dc = mul i32 %i.db, %i.ai
  %i.dd = trunc i64 %i.cx to i32
  %i.de = add i32 %i.dd, 1
  %i.df = mul i32 %i.o, %i.de
  %invariant.op659 = add i32 %i.df, 1             ; 2 uses
  %i.dg = zext nneg i32 %.0541 to i64             ; 2 uses
  %i.dh = add i32 %.0550, 1
  %wide.trip.count751 = zext i32 %i.dh to i64     ; 2 uses
  br i1 %.not591, label %.lr.ph658.split.us, label %.lr.ph658.split

.lr.ph658.split.us:                               ; preds = %.lr.ph658
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv753
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph658.split.us
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %bb.u ], [ %i.dg, %.lr.ph658.split.us ] ; 3 uses
  %.1563655.us = phi double [ %i.dv, %bb.u ], [ %.0562662, %.lr.ph658.split.us ] ; 2 uses
  %i.di = add nsw i64 %indvars.iv748, -1          ; 2 uses
  %i.dj = trunc i64 %indvars.iv748 to i32
  %i.dk = mul i32 %i.ad, %i.dj
  %i.dl = load i32, ptr %4, align 4, !tbaa !8
  %.632.us = call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dl)
  %i.dm = trunc i64 %i.di to i32
  %i.dn = mul i32 %i.ad, %i.dm                    ; 2 uses
  %i.do = sub nsw i32 %.632.us, %i.dn
  store i32 %i.do, ptr %i.b, align 4, !tbaa !8
  store i32 %i.cz, ptr %i.c, align 4, !tbaa !8
  %.reass660 = add i32 %i.dn, %invariant.op659
  %i.dp = sext i32 %.reass660 to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.dp
  %i.dr = call double @dlange_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.dq, ptr noundef nonnull %7, ptr noundef nonnull %i.l) #6 ; 4 uses
  store double %i.dr, ptr %i.i, align 8, !tbaa !9
  %i.ds = mul nsw i64 %i.di, %i.cp
  %i.dt = getelementptr [8 x i8], ptr %gep, i64 %i.ds
  store double %i.dr, ptr %i.dt, align 8, !tbaa !9
  %i.du = fcmp oge double %.1563655.us, %i.dr
  %i.dv = select i1 %i.du, double %.1563655.us, double %i.dr ; 2 uses
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %wide.trip.count751
  br i1 %exitcond752.not, label %.loopexit651, label %bb.u, !llvm.loop !20

.lr.ph658.split:                                  ; preds = %.lr.ph658, %.lr.ph658.split
  %indvars.iv743 = phi i64 [ %indvars.iv.next744, %.lr.ph658.split ], [ %i.dg, %.lr.ph658 ] ; 4 uses
  %.1563655 = phi double [ %i.el, %.lr.ph658.split ], [ %.0562662, %.lr.ph658 ] ; 2 uses
  %i.dw = trunc i64 %indvars.iv743 to i32
  %i.dx = mul i32 %i.ad, %i.dw
  %i.dy = load i32, ptr %4, align 4, !tbaa !8
  %.632 = call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.dy)
  %i.dz = trunc i64 %indvars.iv743 to i32
  %i.ea = add i32 %i.dz, -1
  %i.eb = mul i32 %i.ea, %i.ad                    ; 2 uses
  %i.ec = sub nsw i32 %.632, %i.eb
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !8
  store i32 %i.cz, ptr %i.c, align 4, !tbaa !8
  %.reass = add i32 %i.eb, %invariant.op659
  %i.ed = sext i32 %.reass to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ed
  %i.ef = call double @dlange_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.ee, ptr noundef nonnull %7, ptr noundef nonnull %i.l) #6 ; 4 uses
  store double %i.ef, ptr %i.i, align 8, !tbaa !9
  %i.eg = trunc nuw nsw i64 %indvars.iv743 to i32
  %i.eh = add i32 %i.dc, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ei
  store double %i.ef, ptr %i.ej, align 8, !tbaa !9
  %i.ek = fcmp oge double %.1563655, %i.ef
  %i.el = select i1 %i.ek, double %.1563655, double %i.ef ; 2 uses
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count751
  br i1 %exitcond747.not, label %.loopexit651, label %.lr.ph658.split, !llvm.loop !20

._crit_edge666:                                   ; preds = %.loopexit651
  %i.em = call double @dlamch_(ptr noundef nonnull @.str.9) #6
  %i.en = fcmp ugt double %.1563.lcssa, %i.em
  br i1 %i.en, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge666
  %i.eo = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %.not602730 = icmp slt i32 %i.eo, 1
  br i1 %.not602730, label %.loopexit, label %.lr.ph733.preheader

.lr.ph733.preheader:                              ; preds = %bb.v
  %i.ep = sext i32 %i.r to i64
  %i.eq = zext nneg i32 %i.eo to i64
  br label %.lr.ph733

.lr.ph733:                                        ; preds = %.lr.ph733.preheader, %.lr.ph733
  %indvars.iv816 = phi i64 [ 1, %.lr.ph733.preheader ], [ %indvars.iv.next817, %.lr.ph733 ] ; 4 uses
  %i.er = mul nsw i64 %indvars.iv816, %i.ep
  %i.es = getelementptr [8 x i8], ptr %i.t, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv816
  call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.et, ptr noundef nonnull %i.eu, ptr noundef %11, ptr noundef nonnull %14) #6
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1
  %.not602.not = icmp samesign ult i64 %indvars.iv816, %i.eq
  br i1 %.not602.not, label %.lr.ph733, label %.loopexit, !llvm.loop !21

bb.w:                                             ; preds = %._crit_edge666
  %.not603726 = icmp slt i32 %i.an, 1
  br i1 %.not603726, label %.loopexit, label %.lr.ph729

.lr.ph729:                                        ; preds = %bb.w
  %i.ev = add i32 %i.o, 1
  %15 = sext i32 %i.ah to i64                     ; 8 uses
  %i.ew = zext nneg i32 %i.ai to i64
  %i.ex = shl nsw i64 %i.s, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.ex  ; 2 uses
  %i.ey = add i32 %i.r, 1                         ; 2 uses
  %i.ez = zext nneg i32 %i.ai to i64              ; 5 uses
  %i.fa = xor i1 %.not, %.not591                  ; 3 uses
  %.637..634 = select i1 %i.fa, i32 1, i32 -1
  %.638..635 = select i1 %i.fa, i32 %i.ai, i32 1  ; 2 uses
  %.639..636 = select i1 %i.fa, i32 1, i32 %i.ai
  %wide.trip.count808 = zext nneg i32 %i.an to i64
  %smax921 = call i64 @llvm.smax.i64(i64 %15, i64 1) ; 5 uses
  %min.iters.check930 = icmp slt i32 %i.ah, 4
  %min.iters.check932 = icmp slt i32 %i.ah, 16
  %i.fb = and i64 %smax921, 12
  %n.vec934 = and i64 %smax921, 2147483632        ; 4 uses
  %i.fc = or disjoint i64 %n.vec934, 1
  %cmp.n939 = icmp eq i64 %smax921, %n.vec934
  %min.epilog.iters.check944 = icmp eq i64 %i.fb, 0
  %n.vec946 = and i64 %smax921, 2147483644        ; 3 uses
  %i.fd = or disjoint i64 %n.vec946, 1
  %cmp.n951 = icmp eq i64 %smax921, %n.vec946
  %smax897 = call i64 @llvm.smax.i64(i64 %15, i64 1) ; 5 uses
  %min.iters.check907 = icmp slt i32 %i.ah, 4
  %min.iters.check909 = icmp slt i32 %i.ah, 16
  %i.fe = and i64 %smax897, 12
  %n.vec911 = and i64 %smax897, 2147483632        ; 4 uses
  %i.ff = or disjoint i64 %n.vec911, 1
  %cmp.n916 = icmp eq i64 %smax897, %n.vec911
  %min.epilog.iters.check921 = icmp eq i64 %i.fe, 0
  %n.vec923 = and i64 %smax897, 2147483644        ; 3 uses
  %i.fg = or disjoint i64 %n.vec923, 1
  %cmp.n928 = icmp eq i64 %smax897, %n.vec923
  %smax = call i64 @llvm.smax.i64(i64 %15, i64 1) ; 5 uses
  %min.iters.check884 = icmp slt i32 %i.ah, 4
  %min.iters.check886 = icmp slt i32 %i.ah, 16
  %i.fh = and i64 %smax, 12
  %n.vec888 = and i64 %smax, 2147483632           ; 4 uses
  %i.fi = or disjoint i64 %n.vec888, 1
  %cmp.n893 = icmp eq i64 %smax, %n.vec888
  %min.epilog.iters.check898 = icmp eq i64 %i.fh, 0
  %n.vec900 = and i64 %smax, 2147483644           ; 3 uses
  %i.fj = or disjoint i64 %n.vec900, 1
  %cmp.n905 = icmp eq i64 %smax, %n.vec900
  %i.fk = xor i1 %.not591, %.not
  %.str.1.sink = select i1 %.not591, ptr @.str.5, ptr @.str.1
  %smax951 = call i64 @llvm.smax.i64(i64 %15, i64 1) ; 2 uses
  %xtraiter = and i64 %smax951, 7                 ; 3 uses
  %i.fl = icmp slt i32 %i.ah, 8
  %unroll_iter = and i64 %smax951, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod959 = icmp ne i64 %xtraiter, 0
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph729, %._crit_edge725
  %indvars.iv813 = phi i64 [ 1, %.lr.ph729 ], [ %indvars.iv.next814, %._crit_edge725 ] ; 3 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv813 to i32
  %i.fn = shl i32 %i.fm, 5                        ; 5 uses
  %i.fo = add i32 %i.fn, -31                      ; 2 uses
  %i.fp = load i32, ptr %5, align 4, !tbaa !8
  %.633 = call i32 @llvm.smin.i32(i32 %i.fn, i32 %i.fp)
  %reass.sub = sub i32 %.633, %i.fn
  %i.fq = add i32 %reass.sub, 32                  ; 9 uses
  %.not605669 = icmp slt i32 %i.fq, 1             ; 4 uses
  br i1 %.not605669, label %.lr.ph712, label %.lr.ph672

.lr.ph672:                                        ; preds = %bb.x
  %i.fr = zext nneg i32 %i.fq to i64
  br label %iter.check941

iter.check941:                                    ; preds = %.lr.ph672, %.loopexit954
  %indvars.iv761 = phi i64 [ 1, %.lr.ph672 ], [ %indvars.iv.next762, %.loopexit954 ] ; 3 uses
  %i.fs = mul nuw nsw i64 %indvars.iv761, %i.ew
  %invariant.gep850.a = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.fs ; 3 uses
  br i1 %min.iters.check930, label %vec.epilog.scalar.ph942.preheader, label %vector.main.loop.iter.check931

vector.main.loop.iter.check931:                   ; preds = %iter.check941
  br i1 %min.iters.check932, label %vec.epilog.ph945, label %vector.body935

vector.body935:                                   ; preds = %vector.main.loop.iter.check931, %vector.body935
  %index936 = phi i64 [ %index.next937, %vector.body935 ], [ 0, %vector.main.loop.iter.check931 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep850.a, i64 %index936 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.fu, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.fv, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.fw, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.fx, align 8, !tbaa !9
  %index.next937 = add nuw i64 %index936, 16      ; 2 uses
  %i.fy = icmp eq i64 %index.next937, %n.vec934
  br i1 %i.fy, label %middle.block938, label %vector.body935, !llvm.loop !22

middle.block938:                                  ; preds = %vector.body935
  br i1 %cmp.n939, label %.loopexit954, label %vec.epilog.iter.check943

vec.epilog.iter.check943:                         ; preds = %middle.block938
  br i1 %min.epilog.iters.check944, label %vec.epilog.scalar.ph942.preheader, label %vec.epilog.ph945, !prof !15

vec.epilog.ph945:                                 ; preds = %vector.main.loop.iter.check931, %vec.epilog.iter.check943
  %vec.epilog.resume.val940 = phi i64 [ %n.vec934, %vec.epilog.iter.check943 ], [ 0, %vector.main.loop.iter.check931 ]
  br label %vec.epilog.vector.body947

vec.epilog.vector.body947:                        ; preds = %vec.epilog.vector.body947, %vec.epilog.ph945
  %index948 = phi i64 [ %vec.epilog.resume.val940, %vec.epilog.ph945 ], [ %index.next949, %vec.epilog.vector.body947 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep850.a, i64 %index948
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.ga, align 8, !tbaa !9
  %index.next949 = add nuw i64 %index948, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next949, %n.vec946
  br i1 %i.gb, label %vec.epilog.middle.block950, label %vec.epilog.vector.body947, !llvm.loop !23

vec.epilog.middle.block950:                       ; preds = %vec.epilog.vector.body947
  br i1 %cmp.n951, label %.loopexit954, label %vec.epilog.scalar.ph942.preheader

vec.epilog.scalar.ph942.preheader:                ; preds = %iter.check941, %vec.epilog.iter.check943, %vec.epilog.middle.block950
  %indvars.iv756.ph = phi i64 [ 1, %iter.check941 ], [ %i.fc, %vec.epilog.iter.check943 ], [ %i.fd, %vec.epilog.middle.block950 ]
  br label %vec.epilog.scalar.ph942

vec.epilog.scalar.ph942:                          ; preds = %vec.epilog.scalar.ph942.preheader, %vec.epilog.scalar.ph942
  %indvars.iv756 = phi i64 [ %indvars.iv.next757, %vec.epilog.scalar.ph942 ], [ %indvars.iv756.ph, %vec.epilog.scalar.ph942.preheader ] ; 3 uses
  %gep851.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep850.a, i64 %indvars.iv756
  store double 1.000000e+00, ptr %gep851.a, align 8, !tbaa !9
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 1
  %.not622.not = icmp slt i64 %indvars.iv756, %15
  br i1 %.not622.not, label %vec.epilog.scalar.ph942, label %.loopexit954, !llvm.loop !24

.loopexit954:                                     ; preds = %vec.epilog.scalar.ph942, %vec.epilog.middle.block950, %middle.block938
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1
  %.not605.not = icmp samesign ult i64 %indvars.iv761, %i.fr
  br i1 %.not605.not, label %iter.check941, label %.lr.ph712, !llvm.loop !25

.lr.ph712:                                        ; preds = %.loopexit954, %bb.x
  store i32 %.637..634, ptr %i.b, align 4, !tbaa !8
  %i.gc = add i32 %i.fn, -32                      ; 2 uses
  %i.gd = mul nsw i32 %i.fo, %i.r                 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph712, %._crit_edge707
  %.1556710 = phi i32 [ %.639..636, %.lr.ph712 ], [ %i.mo, %._crit_edge707 ] ; 7 uses
  %i.ge = add i32 %.1556710, -1                   ; 4 uses
  %i.gf = mul i32 %i.ge, %i.ad                    ; 5 uses
  %i.gg = add nsw i32 %i.gf, 1                    ; 6 uses
  %i.gh = mul i32 %.1556710, %i.ad
  %i.gi = load i32, ptr %4, align 4, !tbaa !8
  %.640 = call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.gi) ; 5 uses
  store i32 %i.fq, ptr %i.c, align 4, !tbaa !8
  br i1 %.not605669, label %._crit_edge695, label %.lr.ph694

.lr.ph694:                                        ; preds = %bb.y
  %i.gj = sub nsw i32 %.640, %i.gf                ; 3 uses
  %i.gk = mul i32 %i.gg, %i.ev
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.gl
  %.not619680 = icmp slt i32 %i.gf, 1
  %i.gn = zext nneg i32 %i.gf to i64
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = add i32 %i.ey, %.640
  %i.gq = xor i32 %.640, -1
  %i.gr = sext i32 %.1556710 to i64               ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph694, %.loopexit874
  %indvars.iv789 = phi i64 [ 1, %.lr.ph694 ], [ %indvars.iv.next790, %.loopexit874 ] ; 7 uses
  %indvars.iv787 = phi i64 [ 0, %.lr.ph694 ], [ %indvars.iv.next788, %.loopexit874 ] ; 2 uses
  %i.gs = trunc nuw nsw i64 %indvars.iv787 to i32
  %i.gt = mul i32 %i.r, %i.gs                     ; 2 uses
  %i.gu = add i32 %i.gp, %i.gt
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i64 %i.gv, 3
  %scevgep779 = getelementptr i8, ptr %scevgep, i64 %i.gw
  %i.gx = add i32 %i.ey, %i.gt
  %i.gy = sext i32 %i.gx to i64
  %i.gz = shl nsw i64 %i.gy, 3
  %scevgep774 = getelementptr i8, ptr %scevgep, i64 %i.gz ; 2 uses
  %i.ha = trunc nuw nsw i64 %indvars.iv789 to i32
  %i.hb = add i32 %i.gc, %i.ha                    ; 3 uses
  %i.hc = icmp eq i64 %indvars.iv789, 1
  store i32 %i.gj, ptr %i.d, align 4, !tbaa !8
  %i.hd = mul nsw i32 %i.hb, %i.r
  %i.he = add nsw i32 %i.hd, %i.gg
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hf
  %.str.1..str.7 = select i1 %i.hc, ptr @.str.1, ptr @.str.7
  call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.str.1..str.7, ptr noundef nonnull %i.d, ptr noundef %i.gm, ptr noundef nonnull %7, ptr noundef %i.hg, ptr noundef nonnull %i.n, ptr noundef %11, ptr noundef nonnull %14) #6
  store i32 %i.gj, ptr %i.d, align 4, !tbaa !8
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hf ; 2 uses
  %i.hi = call double @dlange_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.d, ptr noundef nonnull @c__1, ptr noundef %i.hh, ptr noundef nonnull %9, ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv789
  %i.hk = getelementptr i8, ptr %i.hj, i64 -8     ; 2 uses
  store double %i.hi, ptr %i.hk, align 8, !tbaa !9
  %i.hl = load double, ptr %i.n, align 8, !tbaa !9 ; 4 uses
  %i.hm = fcmp oeq double %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hn = sext i32 %i.hb to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.hn
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !9
  br i1 %.not619680, label %._crit_edge684, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep774, i8 0, i64 %i.go, i1 false), !tbaa !9
  br label %._crit_edge684

._crit_edge684:                                   ; preds = %.lr.ph683, %bb.aa
  %i.hp = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %.not620.not685 = icmp slt i32 %.640, %i.hp
  br i1 %.not620.not685, label %.lr.ph688, label %iter.check895

.lr.ph688:                                        ; preds = %._crit_edge684
  %i.hq = add i32 %i.hp, %i.gq
  %i.hr = zext i32 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = add nuw nsw i64 %i.hs, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep779, i8 0, i64 %i.ht, i1 false), !tbaa !9
  br label %iter.check895

iter.check895:                                    ; preds = %.lr.ph688, %._crit_edge684
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !8
  %i.hu = mul nuw nsw i64 %indvars.iv789, %i.ez   ; 2 uses
  %i.hv = and i64 %i.hu, 4294967295
  %invariant.gep854.a = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.hv ; 3 uses
  br i1 %min.iters.check884, label %vec.epilog.scalar.ph896.preheader, label %vector.main.loop.iter.check885

vector.main.loop.iter.check885:                   ; preds = %iter.check895
  br i1 %min.iters.check886, label %vec.epilog.ph899, label %vector.body889

vector.body889:                                   ; preds = %vector.main.loop.iter.check885, %vector.body889
  %index890 = phi i64 [ %index.next891, %vector.body889 ], [ 0, %vector.main.loop.iter.check885 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep854.a, i64 %index890 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.hx, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.hy, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.hz, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ia, align 8, !tbaa !9
  %index.next891 = add nuw i64 %index890, 16      ; 2 uses
  %i.ib = icmp eq i64 %index.next891, %n.vec888
  br i1 %i.ib, label %middle.block892, label %vector.body889, !llvm.loop !26

middle.block892:                                  ; preds = %vector.body889
  br i1 %cmp.n893, label %.loopexit953, label %vec.epilog.iter.check897

vec.epilog.iter.check897:                         ; preds = %middle.block892
  br i1 %min.epilog.iters.check898, label %vec.epilog.scalar.ph896.preheader, label %vec.epilog.ph899, !prof !15

vec.epilog.ph899:                                 ; preds = %vector.main.loop.iter.check885, %vec.epilog.iter.check897
  %vec.epilog.resume.val894 = phi i64 [ %n.vec888, %vec.epilog.iter.check897 ], [ 0, %vector.main.loop.iter.check885 ]
  br label %vec.epilog.vector.body901

vec.epilog.vector.body901:                        ; preds = %vec.epilog.vector.body901, %vec.epilog.ph899
  %index902 = phi i64 [ %vec.epilog.resume.val894, %vec.epilog.ph899 ], [ %index.next903, %vec.epilog.vector.body901 ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep854.a, i64 %index902
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.id, align 8, !tbaa !9
  %index.next903 = add nuw i64 %index902, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next903, %n.vec900
  br i1 %i.ie, label %vec.epilog.middle.block904, label %vec.epilog.vector.body901, !llvm.loop !27

vec.epilog.middle.block904:                       ; preds = %vec.epilog.vector.body901
  br i1 %cmp.n905, label %.loopexit953, label %vec.epilog.scalar.ph896.preheader

vec.epilog.scalar.ph896.preheader:                ; preds = %iter.check895, %vec.epilog.iter.check897, %vec.epilog.middle.block904
  %indvars.iv782.ph = phi i64 [ 1, %iter.check895 ], [ %i.fi, %vec.epilog.iter.check897 ], [ %i.fj, %vec.epilog.middle.block904 ]
  br label %vec.epilog.scalar.ph896

vec.epilog.scalar.ph896:                          ; preds = %vec.epilog.scalar.ph896.preheader, %vec.epilog.scalar.ph896
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %vec.epilog.scalar.ph896 ], [ %indvars.iv782.ph, %vec.epilog.scalar.ph896.preheader ] ; 3 uses
  %gep855.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep854.a, i64 %indvars.iv782
  store double 1.000000e+00, ptr %gep855.a, align 8, !tbaa !9
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1
  %.not621.not = icmp slt i64 %indvars.iv782, %15
  br i1 %.not621.not, label %vec.epilog.scalar.ph896, label %.loopexit953, !llvm.loop !28

.loopexit953:                                     ; preds = %vec.epilog.scalar.ph896, %vec.epilog.middle.block904, %middle.block892
  %.pre = add nsw i64 %i.hu, %i.gr
  br label %.loopexit874

bb.ab:                                            ; preds = %bb.z
  %i.if = mul nuw nsw i64 %indvars.iv789, %i.ez   ; 2 uses
  %i.ig = add nsw i64 %i.if, %i.gr                ; 6 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9 ; 2 uses
  %i.ij = fmul double %i.hl, %i.ii
  %i.ik = fcmp oeq double %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.ac, label %.loopexit874

bb.ac:                                            ; preds = %bb.ab
  %i.il = fdiv double %i.ii, %i.ce                ; 2 uses
  store double %i.il, ptr %i.h, align 8, !tbaa !9
  %i.im = fmul double %i.hl, %i.il                ; 2 uses
  store double %i.im, ptr %i.n, align 8, !tbaa !9
  store double %i.ce, ptr %i.ih, align 8, !tbaa !9
  %i.in = fdiv double 1.000000e+00, %i.im         ; 2 uses
  store double %i.in, ptr %i.m, align 8, !tbaa !9
  %i.io = fmul double %i.hi, %i.in                ; 2 uses
  %i.ip = fcmp ugt double %i.io, %i.cd
  br i1 %i.ip, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %i.io, ptr %i.hk, align 8, !tbaa !9
  store i32 %i.gj, ptr %i.d, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, ptr noundef %i.hh, ptr noundef nonnull @c__1) #6
  br label %.loopexit874

bb.ae:                                            ; preds = %bb.ac
  %i.iq = sext i32 %i.hb to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.iq
  store double 0.000000e+00, ptr %i.ir, align 8, !tbaa !9
  %i.is = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %.not617674 = icmp slt i32 %i.is, 1
  br i1 %.not617674, label %iter.check918, label %.lr.ph677

.lr.ph677:                                        ; preds = %bb.ae
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep774, i8 0, i64 %i.iu, i1 false), !tbaa !9
  br label %iter.check918

iter.check918:                                    ; preds = %.lr.ph677, %bb.ae
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !8
  %i.iv = and i64 %i.if, 4294967295
  %invariant.gep852.a = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.iv ; 3 uses
  br i1 %min.iters.check907, label %vec.epilog.scalar.ph919.preheader, label %vector.main.loop.iter.check908

vector.main.loop.iter.check908:                   ; preds = %iter.check918
  br i1 %min.iters.check909, label %vec.epilog.ph922, label %vector.body912

vector.body912:                                   ; preds = %vector.main.loop.iter.check908, %vector.body912
  %index913 = phi i64 [ %index.next914, %vector.body912 ], [ 0, %vector.main.loop.iter.check908 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep852.a, i64 %index913 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.ix, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.iy, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.iz, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ja, align 8, !tbaa !9
  %index.next914 = add nuw i64 %index913, 16      ; 2 uses
  %i.jb = icmp eq i64 %index.next914, %n.vec911
  br i1 %i.jb, label %middle.block915, label %vector.body912, !llvm.loop !29

middle.block915:                                  ; preds = %vector.body912
  br i1 %cmp.n916, label %.loopexit874, label %vec.epilog.iter.check920

vec.epilog.iter.check920:                         ; preds = %middle.block915
  br i1 %min.epilog.iters.check921, label %vec.epilog.scalar.ph919.preheader, label %vec.epilog.ph922, !prof !15

vec.epilog.ph922:                                 ; preds = %vector.main.loop.iter.check908, %vec.epilog.iter.check920
  %vec.epilog.resume.val917 = phi i64 [ %n.vec911, %vec.epilog.iter.check920 ], [ 0, %vector.main.loop.iter.check908 ]
  br label %vec.epilog.vector.body924

vec.epilog.vector.body924:                        ; preds = %vec.epilog.vector.body924, %vec.epilog.ph922
  %index925 = phi i64 [ %vec.epilog.resume.val917, %vec.epilog.ph922 ], [ %index.next926, %vec.epilog.vector.body924 ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep852.a, i64 %index925
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.jd, align 8, !tbaa !9
  %index.next926 = add nuw i64 %index925, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next926, %n.vec923
  br i1 %i.je, label %vec.epilog.middle.block927, label %vec.epilog.vector.body924, !llvm.loop !30

vec.epilog.middle.block927:                       ; preds = %vec.epilog.vector.body924
  br i1 %cmp.n928, label %.loopexit874, label %vec.epilog.scalar.ph919.preheader

vec.epilog.scalar.ph919.preheader:                ; preds = %iter.check918, %vec.epilog.iter.check920, %vec.epilog.middle.block927
  %indvars.iv768.ph = phi i64 [ 1, %iter.check918 ], [ %i.ff, %vec.epilog.iter.check920 ], [ %i.fg, %vec.epilog.middle.block927 ]
  br label %vec.epilog.scalar.ph919

vec.epilog.scalar.ph919:                          ; preds = %vec.epilog.scalar.ph919.preheader, %vec.epilog.scalar.ph919
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %vec.epilog.scalar.ph919 ], [ %indvars.iv768.ph, %vec.epilog.scalar.ph919.preheader ] ; 3 uses
  %gep853.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep852.a, i64 %indvars.iv768
  store double 1.000000e+00, ptr %gep853.a, align 8, !tbaa !9
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1
  %.not618.not = icmp slt i64 %indvars.iv768, %15
  br i1 %.not618.not, label %vec.epilog.scalar.ph919, label %.loopexit874, !llvm.loop !31

.loopexit874:                                     ; preds = %vec.epilog.scalar.ph919, %middle.block915, %vec.epilog.middle.block927, %bb.ab, %bb.ad, %.loopexit953
  %i.jf = phi double [ %i.hl, %bb.ab ], [ 1.000000e+00, %.loopexit953 ], [ 1.000000e+00, %bb.ad ], [ 1.000000e+00, %middle.block915 ], [ 1.000000e+00, %vec.epilog.middle.block927 ], [ 1.000000e+00, %vec.epilog.scalar.ph919 ]
  %.pre-phi = phi i64 [ %i.ig, %bb.ab ], [ %.pre, %.loopexit953 ], [ %i.ig, %bb.ad ], [ %i.ig, %middle.block915 ], [ %i.ig, %vec.epilog.middle.block927 ], [ %i.ig, %vec.epilog.scalar.ph919 ]
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %.pre-phi ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !9
  %i.ji = fmul double %i.jh, %i.jf                ; 2 uses
  store double %i.ji, ptr %i.n, align 8, !tbaa !9
  store double %i.ji, ptr %i.jg, align 8, !tbaa !9
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 1
  %i.jj = load i32, ptr %i.c, align 4, !tbaa !8
  %i.jk = sext i32 %i.jj to i64
  %.not613.not = icmp slt i64 %indvars.iv789, %i.jk
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  br i1 %.not613.not, label %bb.z, label %._crit_edge695, !llvm.loop !32

._crit_edge695:                                   ; preds = %.loopexit874, %bb.y
  br i1 %i.fk, label %bb.af, label %.split

.split:                                           ; preds = %._crit_edge695
  store i32 1, ptr %i.c, align 4, !tbaa !8
  store i32 -1, ptr %i.d, align 4, !tbaa !8
  %i.jl = icmp sgt i32 %i.ge, 0
  br i1 %i.jl, label %.lr.ph706, label %._crit_edge707

bb.af:                                            ; preds = %._crit_edge695
  %i.jm = add nsw i32 %.1556710, 1
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !8
  store i32 1, ptr %i.d, align 4, !tbaa !8
  %.not872.not = icmp slt i32 %.1556710, %i.ai
  br i1 %.not872.not, label %.lr.ph706, label %._crit_edge707

.lr.ph706:                                        ; preds = %.split, %bb.af
  %.1843845 = phi i32 [ %i.ge, %.split ], [ %i.jm, %bb.af ]
  %i.jn = add i32 %i.ao, %i.ge
  %invariant.op708 = mul i32 %i.jn, %i.ai
  %i.jo = sub nsw i32 %.640, %i.gf                ; 2 uses
  %i.jp = mul nsw i32 %i.gg, %i.o
  %i.jq = add nsw i32 %i.gg, %i.gd
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jr
  %i.jt = sext i32 %.1556710 to i64
  %invariant.gep858 = getelementptr [8 x i8], ptr %i.v, i64 %i.jt
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph706, %._crit_edge702
  %.2559704 = phi i32 [ %.1843845, %.lr.ph706 ], [ %i.mi, %._crit_edge702 ] ; 5 uses
  %i.ju = add nsw i32 %.2559704, -1
  %i.jv = mul nsw i32 %i.ju, %i.ad                ; 3 uses
  %i.jw = add nsw i32 %i.jv, 1                    ; 4 uses
  %i.jx = mul nsw i32 %.2559704, %i.ad
  %i.jy = load i32, ptr %4, align 4, !tbaa !8
  %.641 = call i32 @llvm.smin.i32(i32 %i.jx, i32 %i.jy) ; 2 uses
  store i32 %i.fq, ptr %i.e, align 4, !tbaa !8
  br i1 %.not605669, label %._crit_edge702, label %.lr.ph701

.lr.ph701:                                        ; preds = %bb.ag
  %i.jz = sub nsw i32 %.641, %i.jv                ; 2 uses
  %.reass697.reass = add i32 %.2559704, %invariant.op708
  %i.ka = sext i32 %.reass697.reass to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ka
  %i.kc = sext i32 %.2559704 to i64
  %invariant.gep856 = getelementptr [8 x i8], ptr %i.v, i64 %i.kc
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph701, %bb.al
  %indvars.iv794.a = phi i64 [ 1, %.lr.ph701 ], [ %indvars.iv.next795.a, %bb.al ] ; 5 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv794.a to i32
  %i.ke = add i32 %i.gc, %i.kd
  %i.kf = mul nuw nsw i64 %indvars.iv794.a, %i.ez ; 2 uses
  %gep857 = getelementptr [8 x i8], ptr %invariant.gep856, i64 %i.kf ; 4 uses
  %i.kg = load double, ptr %gep857, align 8, !tbaa !9 ; 2 uses
  %gep859 = getelementptr [8 x i8], ptr %invariant.gep858, i64 %i.kf ; 4 uses
  %i.kh = load double, ptr %gep859, align 8, !tbaa !9 ; 2 uses
  %i.ki = fcmp ole double %i.kg, %i.kh
  %i.kj = select i1 %i.ki, double %i.kg, double %i.kh ; 5 uses
  store i32 %i.jz, ptr %i.f, align 4, !tbaa !8
  %i.kk = mul nsw i32 %i.ke, %i.r                 ; 2 uses
  %i.kl = add nsw i32 %i.kk, %i.jw
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.km ; 2 uses
  %i.ko = call double @dlange_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.f, ptr noundef nonnull @c__1, ptr noundef %i.kn, ptr noundef nonnull %9, ptr noundef nonnull %i.l) #6
  %i.kp = load double, ptr %gep857, align 8, !tbaa !9
  %i.kq = load double, ptr %gep859, align 8, !tbaa !9
  %i.kr = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv794.a
  %i.ks = getelementptr i8, ptr %i.kr, i64 -8     ; 3 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !9
  %i.ku = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kw = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kx = insertelement <2 x double> %i.kw, double %i.kq, i64 1
  %i.ky = fdiv <2 x double> %i.kv, %i.kx
  %i.kz = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.la = insertelement <2 x double> %i.kz, double %i.kt, i64 1
  %i.lb = fmul <2 x double> %i.la, %i.ky          ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  store double %i.lc, ptr %i.j, align 8, !tbaa !9
  %i.ld = extractelement <2 x double> %i.lb, i64 1
  store double %i.ld, ptr %i.ks, align 8, !tbaa !9
  %i.le = load double, ptr %i.kb, align 8, !tbaa !9
  store double %i.le, ptr %i.i, align 8, !tbaa !9
  %i.lf = call double @dlarmm_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ks, ptr noundef nonnull %i.j) #6 ; 3 uses
  store double %i.lf, ptr %i.n, align 8, !tbaa !9
  %i.lg = load double, ptr %gep857, align 8, !tbaa !9
  %i.lh = fdiv double %i.kj, %i.lg
  %i.li = fmul double %i.lf, %i.lh                ; 2 uses
  store double %i.li, ptr %i.h, align 8, !tbaa !9
  %i.lj = fcmp une double %i.li, 1.000000e+00
  br i1 %i.lj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.jz, ptr %i.f, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef %i.kn, ptr noundef nonnull @c__1) #6
  %i.lk = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.ll = fmul double %i.kj, %i.lk
  store double %i.ll, ptr %gep857, align 8, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.lm = phi double [ %i.lk, %bb.ai ], [ %i.lf, %bb.ah ]
  %i.ln = load double, ptr %gep859, align 8, !tbaa !9
  %i.lo = fdiv double %i.kj, %i.ln
  %i.lp = fmul double %i.lo, %i.lm                ; 2 uses
  store double %i.lp, ptr %i.h, align 8, !tbaa !9
  %i.lq = fcmp une double %i.lp, 1.000000e+00
  br i1 %i.lq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.jo, ptr %i.f, align 4, !tbaa !8
  %i.lr = add nsw i32 %i.kk, %i.gg
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ls
  call void @dscal_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef %i.lt, ptr noundef nonnull @c__1) #6
  %i.lu = load double, ptr %i.n, align 8, !tbaa !9
  %i.lv = fmul double %i.kj, %i.lu
  store double %i.lv, ptr %gep859, align 8, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %indvars.iv.next795.a = add nuw nsw i64 %indvars.iv794.a, 1
  %i.lw = load i32, ptr %i.e, align 4, !tbaa !8
  %i.lx = sext i32 %i.lw to i64
  %.not616.not = icmp slt i64 %indvars.iv794.a, %i.lx
  br i1 %.not616.not, label %bb.ah, label %._crit_edge702, !llvm.loop !33

._crit_edge702:                                   ; preds = %bb.al, %bb.ag
  %i.ly = sub nsw i32 %.641, %i.jv
  store i32 %i.ly, ptr %i.e, align 4, !tbaa !8
  store i32 %i.fq, ptr %i.f, align 4, !tbaa !8
  store i32 %i.jo, ptr %i.g, align 4, !tbaa !8
  %i.lz = add nsw i32 %i.jw, %i.jp
  %i.ma = mul nsw i32 %i.jw, %i.o
  %i.mb = add nsw i32 %i.ma, %i.gg
  %.sink871 = select i1 %.not591, i32 %i.mb, i32 %i.lz
  %i.mc = sext i32 %.sink871 to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.mc
  %i.me = add nsw i32 %i.jw, %i.gd
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mf
  call void @dgemm_(ptr noundef nonnull %.str.1.sink, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b35, ptr noundef %i.md, ptr noundef nonnull %7, ptr noundef %i.js, ptr noundef nonnull %9, ptr noundef nonnull @c_b36, ptr noundef %i.mg, ptr noundef nonnull %9) #6
  %i.mh = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.mi = add nsw i32 %i.mh, %.2559704            ; 3 uses
  %i.mj = icmp slt i32 %i.mh, 0
  %i.mk = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ml = icmp sge i32 %i.mi, %i.mk
  %i.mm = icmp sle i32 %i.mi, %i.mk
  %.in614 = select i1 %i.mj, i1 %i.ml, i1 %i.mm
  br i1 %.in614, label %bb.ag, label %._crit_edge707, !llvm.loop !34

._crit_edge707:                                   ; preds = %._crit_edge702, %.split, %bb.af
  %i.mn = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.mo = add nsw i32 %i.mn, %.1556710            ; 3 uses
  %i.mp = icmp slt i32 %i.mn, 0
  %i.mq = icmp sge i32 %i.mo, %.638..635
  %i.mr = icmp sle i32 %i.mo, %.638..635
  %.in = select i1 %i.mp, i1 %i.mq, i1 %i.mr
  br i1 %.in, label %bb.y, label %._crit_edge713, !llvm.loop !35

._crit_edge713:                                   ; preds = %._crit_edge707
  br i1 %.not605669, label %._crit_edge719.thread, label %.lr.ph718.preheader

._crit_edge719.thread:                            ; preds = %._crit_edge713
  store i32 %i.fq, ptr %i.b, align 4, !tbaa !8
  br label %._crit_edge725

.lr.ph718.preheader:                              ; preds = %._crit_edge713
  %i.ms = sext i32 %i.fo to i64
  %i.mt = zext nneg i32 %i.fq to i64
  %invariant.gep862 = getelementptr [8 x i8], ptr %i.u, i64 %i.ms
  br label %.lr.ph718

.lr.ph718:                                        ; preds = %.lr.ph718.preheader, %.epilog-lcssa
  %indvars.iv802 = phi i64 [ 1, %.lr.ph718.preheader ], [ %indvars.iv.next803, %.epilog-lcssa ] ; 4 uses
  %gep863 = getelementptr [8 x i8], ptr %invariant.gep862, i64 %indvars.iv802
  %i.mu = getelementptr i8, ptr %gep863, i64 -8   ; 10 uses
  %i.mv = mul nuw nsw i64 %indvars.iv802, %i.ez
  %.promoted = load double, ptr %i.mu, align 8, !tbaa !9 ; 2 uses
  %invariant.gep860 = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.mv ; 9 uses
  br i1 %i.fl, label %.epil.preheader, label %.lr.ph718.new

.lr.ph718.new:                                    ; preds = %.lr.ph718, %.lr.ph718.new
  %indvars.iv797.a = phi i64 [ %indvars.iv.next798.7, %.lr.ph718.new ], [ 1, %.lr.ph718 ] ; 9 uses
  %i.mw = phi double [ %i.ob, %.lr.ph718.new ], [ %.promoted, %.lr.ph718 ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph718.new ], [ 0, %.lr.ph718 ]
  %gep861 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %i.mx = load double, ptr %gep861, align 8, !tbaa !9 ; 2 uses
  %i.my = fcmp ole double %i.mw, %i.mx
  %i.mz = select i1 %i.my, double %i.mw, double %i.mx ; 3 uses
  store double %i.mz, ptr %i.mu, align 8, !tbaa !9
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.1 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nb = load double, ptr %gep861.1, align 8, !tbaa !9 ; 2 uses
  %i.nc = fcmp ole double %i.mz, %i.nb
  %i.nd = select i1 %i.nc, double %i.mz, double %i.nb ; 3 uses
  store double %i.nd, ptr %i.mu, align 8, !tbaa !9
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.2 = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nf = load double, ptr %gep861.2, align 8, !tbaa !9 ; 2 uses
  %i.ng = fcmp ole double %i.nd, %i.nf
  %i.nh = select i1 %i.ng, double %i.nd, double %i.nf ; 3 uses
  store double %i.nh, ptr %i.mu, align 8, !tbaa !9
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.3 = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nj = load double, ptr %gep861.3, align 8, !tbaa !9 ; 2 uses
  %i.nk = fcmp ole double %i.nh, %i.nj
  %i.nl = select i1 %i.nk, double %i.nh, double %i.nj ; 3 uses
  store double %i.nl, ptr %i.mu, align 8, !tbaa !9
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.4 = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.nn = load double, ptr %gep861.4, align 8, !tbaa !9 ; 2 uses
  %i.no = fcmp ole double %i.nl, %i.nn
  %i.np = select i1 %i.no, double %i.nl, double %i.nn ; 3 uses
  store double %i.np, ptr %i.mu, align 8, !tbaa !9
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.5 = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %i.nr = load double, ptr %gep861.5, align 8, !tbaa !9 ; 2 uses
  %i.ns = fcmp ole double %i.np, %i.nr
  %i.nt = select i1 %i.ns, double %i.np, double %i.nr ; 3 uses
  store double %i.nt, ptr %i.mu, align 8, !tbaa !9
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.6 = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  %i.nv = load double, ptr %gep861.6, align 8, !tbaa !9 ; 2 uses
  %i.nw = fcmp ole double %i.nt, %i.nv
  %i.nx = select i1 %i.nw, double %i.nt, double %i.nv ; 3 uses
  store double %i.nx, ptr %i.mu, align 8, !tbaa !9
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.a
  %gep861.7 = getelementptr inbounds nuw i8, ptr %i.ny, i64 56
  %i.nz = load double, ptr %gep861.7, align 8, !tbaa !9 ; 2 uses
  %i.oa = fcmp ole double %i.nx, %i.nz
  %i.ob = select i1 %i.oa, double %i.nx, double %i.nz ; 3 uses
  store double %i.ob, ptr %i.mu, align 8, !tbaa !9
  %indvars.iv.next798.7 = add nuw nsw i64 %indvars.iv797.a, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.lr.ph718.new, !llvm.loop !36

.unr-lcssa:                                       ; preds = %.lr.ph718.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph718
  %indvars.iv797.epil.init = phi i64 [ 1, %.lr.ph718 ], [ %indvars.iv.next798.7, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.lr.ph718 ], [ %i.ob, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod959)
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.epil.preheader
  %indvars.iv797.epil = phi i64 [ %indvars.iv797.epil.init, %.epil.preheader ], [ %indvars.iv.next798.epil, %bb.am ] ; 2 uses
  %i.oc = phi double [ %.epil.init, %.epil.preheader ], [ %i.of, %bb.am ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.am ]
  %gep861.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep860, i64 %indvars.iv797.epil
  %i.od = load double, ptr %gep861.epil, align 8, !tbaa !9 ; 2 uses
  %i.oe = fcmp ole double %i.oc, %i.od
  %i.of = select i1 %i.oe, double %i.oc, double %i.od ; 2 uses
  store double %i.of, ptr %i.mu, align 8, !tbaa !9
  %indvars.iv.next798.epil = add nuw nsw i64 %indvars.iv797.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.am, !llvm.loop !37

.epilog-lcssa:                                    ; preds = %bb.am, %.unr-lcssa
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 1
  %.not607.not = icmp samesign ult i64 %indvars.iv802, %i.mt
  br i1 %.not607.not, label %.lr.ph718, label %._crit_edge719, !llvm.loop !39

._crit_edge719:                                   ; preds = %.epilog-lcssa
  store i32 %i.fq, ptr %i.b, align 4, !tbaa !8
  %i.og = add i32 %i.fn, -32
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge719, %.loopexit649
  %i.oh = phi i32 [ %i.fq, %._crit_edge719 ], [ %i.pg, %.loopexit649 ]
  %indvars.iv810 = phi i64 [ 1, %._crit_edge719 ], [ %indvars.iv.next811, %.loopexit649 ] ; 4 uses
  %i.oi = trunc nuw nsw i64 %indvars.iv810 to i32
  %i.oj = add i32 %i.og, %i.oi                    ; 2 uses
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ok ; 2 uses
  %i.om = load double, ptr %i.ol, align 8, !tbaa !9 ; 2 uses
  %i.on = fcmp une double %i.om, 1.000000e+00
  %i.oo = fcmp une double %i.om, 0.000000e+00
  %or.cond = and i1 %i.on, %i.oo
  br i1 %or.cond, label %.preheader, label %.loopexit649

.preheader:                                       ; preds = %bb.an
  %i.op = mul nuw nsw i64 %indvars.iv810, %i.ez
  %i.oq = mul nsw i32 %i.oj, %i.r
  %i.or = add i32 %i.oq, 1
  %invariant.gep864 = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.op
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader, %bb.aq
  %indvars.iv805 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next806, %bb.aq ] ; 5 uses
  %i.os = trunc i64 %indvars.iv805 to i32
  %i.ot = mul i32 %i.ad, %i.os                    ; 2 uses
  store i32 %i.ot, ptr %i.d, align 4, !tbaa !8
  %i.ou = load i32, ptr %4, align 4, !tbaa !8
  %i.ov = load double, ptr %i.ol, align 8, !tbaa !9
  %gep865 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep864, i64 %indvars.iv805
  %i.ow = load double, ptr %gep865, align 8, !tbaa !9
  %i.ox = fdiv double %i.ov, %i.ow                ; 2 uses
  store double %i.ox, ptr %i.h, align 8, !tbaa !9
  %i.oy = fcmp une double %i.ox, 1.000000e+00
  br i1 %i.oy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.642 = call i32 @llvm.smin.i32(i32 %i.ot, i32 %i.ou)
  %i.oz = trunc i64 %indvars.iv805 to i32
  %i.pa = add i32 %i.oz, -1
  %i.pb = mul i32 %i.pa, %i.ad                    ; 2 uses
  %i.pc = sub nsw i32 %.642, %i.pb
  store i32 %i.pc, ptr %i.d, align 4, !tbaa !8
  %i.pd = add i32 %i.or, %i.pb
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.pe
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef %i.pf, ptr noundef nonnull @c__1) #6
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1
  %.not609.not = icmp slt i64 %indvars.iv805, %15
  br i1 %.not609.not, label %bb.ao, label %.loopexit649.loopexit, !llvm.loop !40

.loopexit649.loopexit:                            ; preds = %bb.aq
  %.pre824 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %.loopexit649

.loopexit649:                                     ; preds = %.loopexit649.loopexit, %bb.an
  %i.pg = phi i32 [ %.pre824, %.loopexit649.loopexit ], [ %i.oh, %bb.an ] ; 2 uses
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1
  %i.ph = sext i32 %i.pg to i64
  %.not608.not = icmp slt i64 %indvars.iv810, %i.ph
  br i1 %.not608.not, label %bb.an, label %._crit_edge725, !llvm.loop !41

._crit_edge725:                                   ; preds = %.loopexit649, %._crit_edge719.thread
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1
  %.not603.not = icmp samesign ult i64 %indvars.iv813, %wide.trip.count808
  br i1 %.not603.not, label %bb.x, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %._crit_edge725, %.lr.ph733, %.lr.ph737, %bb.w, %bb.v, %bb.s, %bb.p, %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlatrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlarmm_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12, !14, !13}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12, !13, !14}
!23 = distinct !{!23, !12, !13, !14}
!24 = distinct !{!24, !12, !14, !13}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12, !13, !14}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !12, !14, !13}
!29 = distinct !{!29, !12, !13, !14}
!30 = distinct !{!30, !12, !13, !14}
!31 = distinct !{!31, !12, !14, !13}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
end_hunk_0
