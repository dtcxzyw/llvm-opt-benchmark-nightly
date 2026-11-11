Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatrs?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DLATRS\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@c__1 = internal global i32 1, align 4
@c_b36 = internal global double 5.000000e-01, align 8

; Function Attrs: nounwind uwtable
define void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) initializes((0, 4)) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca double, align 8                   ; 20 uses
  %i.e = alloca double, align 8                   ; 14 uses
  %i.f = alloca double, align 8                   ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.g = load i32, ptr %6, align 4, !tbaa !19     ; 13 uses
  %narrow = xor i32 %i.g, -1
  %i.h = sext i32 %narrow to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %5, i64 %i.h ; 13 uses
  %i.j = getelementptr inbounds i8, ptr %7, i64 -8 ; 14 uses
  %i.k = getelementptr inbounds i8, ptr %9, i64 -8 ; 12 uses
  store i32 0, ptr %10, align 4, !tbaa !19
  %i.l = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %i.m = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %i.n = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %.not.not.not = icmp eq i32 %i.l, 0             ; 15 uses
  br i1 %.not.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %.not524 = icmp eq i32 %i.o, 0
  br i1 %.not524, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not525 = icmp eq i32 %i.m, 0                  ; 3 uses
  br i1 %.not525, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %.not526 = icmp eq i32 %i.p, 0
  br i1 %.not526, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %.not527 = icmp eq i32 %i.q, 0
  br i1 %.not527, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not528 = icmp eq i32 %i.n, 0                  ; 6 uses
  br i1 %.not528, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #6
  %.not529 = icmp eq i32 %i.r, 0
  br i1 %.not529, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %.not530 = icmp eq i32 %i.s, 0
  br i1 %.not530, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %.not531 = icmp eq i32 %i.t, 0
  br i1 %.not531, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = load i32, ptr %4, align 4, !tbaa !19     ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %6, align 4, !tbaa !19
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1)
  %i.x = icmp slt i32 %i.w, %spec.select
  br i1 %i.x, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pr = load i32, ptr %10, align 4, !tbaa !19    ; 2 uses
  %.not532 = icmp eq i32 %.pr, 0
  br i1 %.not532, label %bb.m, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.i ], [ -5, %bb.j ], [ -3, %bb.g ], [ -7, %bb.k ] ; 2 uses
  store i32 %.sink, ptr %10, align 4, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.l
  %i.y = phi i32 [ %.pr, %bb.l ], [ %.sink, %.thread.sink.split ]
  %i.z = sub nsw i32 0, %i.y
  store i32 %i.z, ptr %i.a, align 4, !tbaa !19
  %i.aa = call i32 @xerbla_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %bb.cq

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp eq i32 %i.u, 0
  br i1 %i.ab, label %bb.cq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call double @dlamch_(ptr noundef nonnull @.str.7) #6
  %i.ad = tail call double @dlamch_(ptr noundef nonnull @.str.8) #6
  %i.ae = fdiv double %i.ac, %i.ad                ; 20 uses
  %i.af = fdiv double 1.000000e+00, %i.ae         ; 11 uses
  store double 1.000000e+00, ptr %8, align 8, !tbaa !21
  %i.ag = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %.not533 = icmp eq i32 %i.ag, 0
  br i1 %.not533, label %.loopexit578, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %4, align 4, !tbaa !19    ; 6 uses
  br i1 %.not.not.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !19
  %.not535581 = icmp slt i32 %i.ah, 1
  br i1 %.not535581, label %.loopexit578, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.ai = sext i32 %i.g to i64
  %i.aj = zext nneg i32 %i.ah to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.b, align 4, !tbaa !19
  %i.am = mul nsw i64 %indvars.iv, %i.ai
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = call double @dasum_(ptr noundef nonnull %i.b, ptr noundef %i.ao, ptr noundef nonnull @c__1) #6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ap, ptr %i.aq, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not535.not = icmp samesign ult i64 %indvars.iv, %i.aj
  br i1 %.not535.not, label %.lr.ph, label %.loopexit578, !llvm.loop !8

bb.q:                                             ; preds = %bb.o
  %i.ar = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !19
  %.not534583 = icmp slt i32 %i.ah, 2
  br i1 %.not534583, label %._crit_edge, label %.lr.ph585.preheader

.lr.ph585.preheader:                              ; preds = %bb.q
  %i.as = sext i32 %i.g to i64
  %i.at = zext nneg i32 %i.ar to i64
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %.lr.ph585.preheader, %.lr.ph585
  %indvars.iv658 = phi i64 [ 1, %.lr.ph585.preheader ], [ %indvars.iv.next659, %.lr.ph585 ] ; 5 uses
  %i.au = load i32, ptr %4, align 4, !tbaa !19
  %i.av = trunc nuw nsw i64 %indvars.iv658 to i32
  %i.aw = sub nsw i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.b, align 4, !tbaa !19
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %i.ax = mul nsw i64 %indvars.iv658, %i.as
  %i.ay = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.next659
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = call double @dasum_(ptr noundef nonnull %i.b, ptr noundef %i.az, ptr noundef nonnull @c__1) #6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv658
  store double %i.ba, ptr %i.bb, align 8, !tbaa !21
  %.not534.not = icmp samesign ult i64 %indvars.iv658, %i.at
  br i1 %.not534.not, label %.lr.ph585, label %._crit_edge.loopexit, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph585
  %.pre = load i32, ptr %4, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %i.bc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ah, %bb.q ]
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bd
  store double 0.000000e+00, ptr %i.be, align 8, !tbaa !21
  br label %.loopexit578

.loopexit578:                                     ; preds = %.lr.ph, %bb.p, %._crit_edge, %bb.n
  %i.bf = call i32 @idamax_(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %i.bj = fcmp ugt double %i.bi, %i.af
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit578
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !21
  br label %bb.t

bb.s:                                             ; preds = %.loopexit578
  %i.bk = fmul double %i.ae, %i.bi
  %i.bl = fdiv double 1.000000e+00, %i.bk
  store double %i.bl, ptr %i.e, align 8, !tbaa !21
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.e, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bm = call i32 @idamax_(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull @c__1) #6
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !21 ; 4 uses
  store double %i.bp, ptr %i.d, align 8, !tbaa !21
  %i.bq = fcmp oge double %i.bp, 0.000000e+00
  %i.br = fneg double %i.bp
  %i.bs = select i1 %i.bq, double %i.bp, double %i.br ; 11 uses
  %i.bt = load i32, ptr %4, align 4, !tbaa !19    ; 12 uses
  %i.bu = load double, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %i.bv = fcmp une double %i.bu, 1.000000e+00     ; 2 uses
  br i1 %.not525, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %. = select i1 %.not.not.not, i32 1, i32 -1     ; 9 uses
  %.551 = select i1 %.not.not.not, i32 %i.bt, i32 1 ; 7 uses
  %.552 = select i1 %.not.not.not, i32 1, i32 %i.bt ; 8 uses
  br i1 %i.bv, label %.loopexit574, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not528, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = fcmp oge double %i.bs, %i.ae
  %i.bx = select i1 %i.bw, double %i.bs, double %i.ae
  %i.by = fdiv double 1.000000e+00, %i.bx         ; 3 uses
  store i32 %., ptr %i.b, align 4, !tbaa !19
  %.in541586 = icmp sgt i32 %i.bt, 0
  br i1 %.in541586, label %.lr.ph591, label %.loopexit574

.lr.ph591:                                        ; preds = %bb.w
  %i.bz = add i32 %i.g, 1
  %11 = zext nneg i32 %.552 to i64
  %i.ca = sext i32 %. to i64
  %12 = zext nneg i32 %i.bt to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph591, %bb.y
  %indvars.iv661 = phi i64 [ %11, %.lr.ph591 ], [ %indvars.iv.next662, %bb.y ] ; 3 uses
  %.0468588 = phi double [ %i.by, %.lr.ph591 ], [ %.1469, %bb.y ] ; 4 uses
  %.0488587 = phi double [ %i.by, %.lr.ph591 ], [ %i.co, %bb.y ] ; 3 uses
  %i.cb = fcmp ugt double %.0468588, %i.ae
  br i1 %i.cb, label %bb.y, label %.loopexit574

bb.y:                                             ; preds = %bb.x
  %i.cc = trunc nsw i64 %indvars.iv661 to i32
  %i.cd = mul i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !21 ; 3 uses
  %i.ch = fcmp oge double %i.cg, 0.000000e+00
  %i.ci = fneg double %i.cg
  %i.cj = select i1 %i.ch, double %i.cg, double %i.ci ; 4 uses
  store double %.0488587, ptr %i.d, align 8, !tbaa !21
  %i.ck = fcmp oge double %i.cj, 1.000000e+00
  %i.cl = select i1 %i.ck, double 1.000000e+00, double %i.cj
  %i.cm = fmul double %.0468588, %i.cl            ; 2 uses
  %i.cn = fcmp ole double %.0488587, %i.cm
  %i.co = select i1 %i.cn, double %.0488587, double %i.cm ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv661
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !21
  %i.cr = fadd double %i.cj, %i.cq                ; 2 uses
  %i.cs = fcmp ult double %i.cr, %i.ae
  %i.ct = fdiv double %i.cj, %i.cr
  %i.cu = fmul double %.0468588, %i.ct
  %.1469 = select i1 %i.cs, double 0.000000e+00, double %i.cu
  %indvars.iv.next662 = add nsw i64 %indvars.iv661, %i.ca ; 3 uses
  %13 = icmp sgt i64 %indvars.iv.next662, 0
  %i.cv = icmp sle i64 %indvars.iv.next662, %12
  %.in541 = select i1 %.not.not.not, i1 %i.cv, i1 %13
  br i1 %.in541, label %bb.x, label %.loopexit574, !llvm.loop !10

bb.z:                                             ; preds = %bb.v
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !21
  %i.cw = fcmp oge double %i.bs, %i.ae
  %i.cx = select i1 %i.cw, double %i.bs, double %i.ae
  %i.cy = fdiv double 1.000000e+00, %i.cx         ; 2 uses
  %i.cz = fcmp oge double %i.cy, 1.000000e+00
  %i.da = select i1 %i.cz, double 1.000000e+00, double %i.cy ; 3 uses
  store i32 %.551, ptr %i.b, align 4, !tbaa !19
  %.in540594 = icmp sgt i32 %i.bt, 0
  %i.db = fcmp ugt double %i.da, %i.ae
  %or.cond595 = select i1 %.in540594, i1 %i.db, i1 false
  br i1 %or.cond595, label %.lr.ph599.preheader, label %.loopexit574

.lr.ph599.preheader:                              ; preds = %bb.z
  %14 = zext nneg i32 %.552 to i64
  %i.dc = sext i32 %. to i64
  %15 = zext nneg i32 %i.bt to i64
  br label %.lr.ph599

.lr.ph599:                                        ; preds = %.lr.ph599.preheader, %.lr.ph599
  %indvars.iv664 = phi i64 [ %14, %.lr.ph599.preheader ], [ %indvars.iv.next665, %.lr.ph599 ] ; 2 uses
  %.2470596 = phi double [ %i.da, %.lr.ph599.preheader ], [ %i.dh, %.lr.ph599 ]
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv664
  %i.de = load double, ptr %i.dd, align 8, !tbaa !21
  %i.df = fadd double %i.de, 1.000000e+00
  %i.dg = fdiv double 1.000000e+00, %i.df
  %i.dh = fmul double %.2470596, %i.dg            ; 3 uses
  %indvars.iv.next665 = add nsw i64 %indvars.iv664, %i.dc ; 3 uses
  %16 = icmp sgt i64 %indvars.iv.next665, 0
  %i.di = icmp sle i64 %indvars.iv.next665, %15
  %.in540 = select i1 %.not.not.not, i1 %i.di, i1 %16
  %i.dj = fcmp ugt double %i.dh, %i.ae
  %or.cond = select i1 %.in540, i1 %i.dj, i1 false
  br i1 %or.cond, label %.lr.ph599, label %.loopexit574, !llvm.loop !11

bb.aa:                                            ; preds = %bb.t
  %.553 = select i1 %.not.not.not, i32 -1, i32 1  ; 8 uses
  %.554 = select i1 %.not.not.not, i32 1, i32 %i.bt ; 7 uses
  %.555 = select i1 %.not.not.not, i32 %i.bt, i32 1 ; 7 uses
  br i1 %i.bv, label %.loopexit574, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not528, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = fcmp oge double %i.bs, %i.ae
  %i.dl = select i1 %i.dk, double %i.bs, double %i.ae
  %i.dm = fdiv double 1.000000e+00, %i.dl         ; 4 uses
  store i32 %.554, ptr %i.a, align 4, !tbaa !19
  store i32 %.553, ptr %i.b, align 4, !tbaa !19
  %.in538601 = icmp sgt i32 %i.bt, 0
  br i1 %.in538601, label %.lr.ph606, label %._crit_edge607

.lr.ph606:                                        ; preds = %bb.ac
  %i.dn = add i32 %i.g, 1
  %17 = zext nneg i32 %.555 to i64
  %i.do = sext i32 %.553 to i64
  %18 = zext nneg i32 %i.bt to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph606, %bb.ae
  %indvars.iv667 = phi i64 [ %17, %.lr.ph606 ], [ %indvars.iv.next668, %bb.ae ] ; 3 uses
  %.3471603 = phi double [ %i.dm, %.lr.ph606 ], [ %i.dv, %bb.ae ] ; 4 uses
  %.1489602 = phi double [ %i.dm, %.lr.ph606 ], [ %.2490, %bb.ae ] ; 3 uses
  %i.dp = fcmp ugt double %.3471603, %i.ae
  br i1 %i.dp, label %bb.ae, label %.loopexit574

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv667
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !21
  %i.ds = fadd double %i.dr, 1.000000e+00         ; 3 uses
  %i.dt = fdiv double %.1489602, %i.ds            ; 2 uses
  %i.du = fcmp ole double %.3471603, %i.dt
  %i.dv = select i1 %i.du, double %.3471603, double %i.dt ; 2 uses
  %i.dw = trunc nsw i64 %indvars.iv667 to i32
  %i.dx = mul i32 %i.dn, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !21 ; 4 uses
  store double %i.ea, ptr %i.d, align 8, !tbaa !21
  %i.eb = fcmp oge double %i.ea, 0.000000e+00
  %i.ec = fneg double %i.ea
  %i.ed = select i1 %i.eb, double %i.ea, double %i.ec ; 2 uses
  %i.ee = fcmp ogt double %i.ds, %i.ed
  %i.ef = fdiv double %i.ed, %i.ds
  %i.eg = fmul double %.1489602, %i.ef
  %.2490 = select i1 %i.ee, double %i.eg, double %.1489602 ; 2 uses
  %indvars.iv.next668 = add nsw i64 %indvars.iv667, %i.do ; 3 uses
  %19 = icmp sgt i64 %indvars.iv.next668, 0
  %i.eh = icmp sle i64 %indvars.iv.next668, %18
  %.in538 = select i1 %.not.not.not, i1 %19, i1 %i.eh
  br i1 %.in538, label %bb.ad, label %._crit_edge607, !llvm.loop !12

._crit_edge607:                                   ; preds = %bb.ae, %bb.ac
  %.1489.lcssa = phi double [ %i.dm, %bb.ac ], [ %.2490, %bb.ae ] ; 2 uses
  %.3471.lcssa = phi double [ %i.dm, %bb.ac ], [ %i.dv, %bb.ae ] ; 2 uses
  %i.ei = fcmp ole double %.3471.lcssa, %.1489.lcssa
  %i.ej = select i1 %i.ei, double %.3471.lcssa, double %.1489.lcssa
  br label %.loopexit574

bb.af:                                            ; preds = %bb.ab
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !21
  %i.ek = fcmp oge double %i.bs, %i.ae
  %i.el = select i1 %i.ek, double %i.bs, double %i.ae
  %i.em = fdiv double 1.000000e+00, %i.el         ; 2 uses
  %i.en = fcmp oge double %i.em, 1.000000e+00
  %i.eo = select i1 %i.en, double 1.000000e+00, double %i.em ; 3 uses
  store i32 %.554, ptr %i.b, align 4, !tbaa !19
  %.in610 = icmp sgt i32 %i.bt, 0
  %i.ep = fcmp ugt double %i.eo, %i.ae
  %or.cond556611 = select i1 %.in610, i1 %i.ep, i1 false
  br i1 %or.cond556611, label %.lr.ph615.preheader, label %.loopexit574

.lr.ph615.preheader:                              ; preds = %bb.af
  %20 = zext nneg i32 %.555 to i64
  %i.eq = sext i32 %.553 to i64
  %21 = zext nneg i32 %i.bt to i64
  br label %.lr.ph615

.lr.ph615:                                        ; preds = %.lr.ph615.preheader, %.lr.ph615
  %indvars.iv670 = phi i64 [ %20, %.lr.ph615.preheader ], [ %indvars.iv.next671, %.lr.ph615 ] ; 2 uses
  %.4472612 = phi double [ %i.eo, %.lr.ph615.preheader ], [ %i.eu, %.lr.ph615 ]
  %i.er = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv670
  %i.es = load double, ptr %i.er, align 8, !tbaa !21
  %i.et = fadd double %i.es, 1.000000e+00
  %i.eu = fdiv double %.4472612, %i.et            ; 3 uses
  %indvars.iv.next671 = add nsw i64 %indvars.iv670, %i.eq ; 3 uses
  %22 = icmp sgt i64 %indvars.iv.next671, 0
  %i.ev = icmp sle i64 %indvars.iv.next671, %21
  %.in = select i1 %.not.not.not, i1 %22, i1 %i.ev
  %i.ew = fcmp ugt double %i.eu, %i.ae
  %or.cond556 = select i1 %.in, i1 %i.ew, i1 false
  br i1 %or.cond556, label %.lr.ph615, label %.loopexit574, !llvm.loop !13

.loopexit574:                                     ; preds = %bb.x, %bb.y, %.lr.ph599, %bb.ad, %.lr.ph615, %bb.w, %bb.z, %bb.af, %bb.aa, %bb.u, %._crit_edge607
  %i.ex = phi double [ 1.000000e+00, %._crit_edge607 ], [ 1.000000e+00, %bb.z ], [ %i.bu, %bb.u ], [ 1.000000e+00, %.lr.ph599 ], [ 1.000000e+00, %bb.af ], [ %i.bu, %bb.aa ], [ 1.000000e+00, %bb.w ], [ 1.000000e+00, %.lr.ph615 ], [ 1.000000e+00, %bb.ad ], [ 1.000000e+00, %bb.y ], [ 1.000000e+00, %bb.x ]
  %i.ey = phi i32 [ %.553, %._crit_edge607 ], [ %., %bb.z ], [ %., %bb.u ], [ %., %.lr.ph599 ], [ %.553, %bb.af ], [ %.553, %bb.aa ], [ %., %bb.w ], [ %.553, %.lr.ph615 ], [ %.553, %bb.ad ], [ %., %bb.y ], [ %., %bb.x ] ; 3 uses
  %.5473 = phi double [ %i.ej, %._crit_edge607 ], [ %i.da, %bb.z ], [ 0.000000e+00, %bb.u ], [ %i.dh, %.lr.ph599 ], [ %i.eo, %bb.af ], [ 0.000000e+00, %bb.aa ], [ %i.by, %bb.w ], [ %i.eu, %.lr.ph615 ], [ %.3471603, %bb.ad ], [ %i.co, %bb.y ], [ %.0468588, %bb.x ]
  %i.ez = phi i32 [ %.554, %._crit_edge607 ], [ %.551, %bb.z ], [ %.551, %bb.u ], [ %.551, %.lr.ph599 ], [ %.554, %bb.af ], [ %.554, %bb.aa ], [ %.551, %bb.w ], [ %.554, %.lr.ph615 ], [ %.554, %bb.ad ], [ %.551, %bb.y ], [ %.551, %bb.x ] ; 5 uses
  %.2 = phi i32 [ %.555, %._crit_edge607 ], [ %.552, %bb.z ], [ %.552, %bb.u ], [ %.552, %.lr.ph599 ], [ %.555, %bb.af ], [ %.555, %bb.aa ], [ %.552, %bb.w ], [ %.555, %.lr.ph615 ], [ %.555, %bb.ad ], [ %.552, %bb.y ], [ %.552, %bb.x ] ; 4 uses
  %i.fa = fmul double %.5473, %i.ex
  %i.fb = fcmp ogt double %i.fa, %i.ae
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit574
  call void @dtrsv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull @c__1) #6
  %.pr570 = load double, ptr %i.e, align 8, !tbaa !21
  br label %bb.co

bb.ah:                                            ; preds = %.loopexit574
  %i.fc = fcmp ogt double %i.bs, %i.af
  br i1 %i.fc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fd = fdiv double %i.af, %i.bs
  store double %i.fd, ptr %8, align 8, !tbaa !21
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull @c__1) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0474 = phi double [ %i.af, %bb.ai ], [ %i.bs, %bb.ah ] ; 2 uses
  %i.fe = icmp slt i32 %i.ey, 0                   ; 2 uses
  %i.ff = icmp sge i32 %.2, %i.ez
  %i.fg = icmp sle i32 %.2, %i.ez
  %.in542639 = select i1 %i.fe, i1 %i.ff, i1 %i.fg ; 2 uses
  br i1 %.not525, label %bb.bh, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.ey, ptr %i.b, align 4, !tbaa !19
  br i1 %.in542639, label %.lr.ph625, label %.loopexit572

.lr.ph625:                                        ; preds = %bb.ak
  %i.fh = add i32 %i.g, 1
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph625, %bb.bg
  %.6623 = phi i32 [ %.2, %.lr.ph625 ], [ %i.iz, %bb.bg ] ; 12 uses
  %.1475622 = phi double [ %.0474, %.lr.ph625 ], [ %.5479, %bb.bg ] ; 4 uses
  %i.fi = sext i32 %.6623 to i64                  ; 4 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fi ; 6 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !21 ; 6 uses
  store double %i.fk, ptr %i.d, align 8, !tbaa !21
  %i.fl = fcmp oge double %i.fk, 0.000000e+00
  %i.fm = fneg double %i.fk
  %i.fn = select i1 %i.fl, double %i.fk, double %i.fm ; 5 uses
  br i1 %.not528, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = mul i32 %.6623, %i.fh
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !21
  %i.fs = load double, ptr %i.e, align 8, !tbaa !21
  %i.ft = fmul double %i.fr, %i.fs
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fu = load double, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  %i.fv = fcmp oeq double %i.fu, 1.000000e+00
  br i1 %i.fv, label %bb.aw, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0482 = phi double [ %i.ft, %bb.am ], [ %i.fu, %bb.an ] ; 4 uses
  %i.fw = fcmp oge double %.0482, 0.000000e+00
  %i.fx = fneg double %.0482
  %i.fy = select i1 %i.fw, double %.0482, double %i.fx ; 5 uses
  %i.fz = fcmp ogt double %i.fy, %i.ae
  br i1 %i.fz, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ga = fcmp olt double %i.fy, 1.000000e+00
  %i.gb = fmul double %i.af, %i.fy
  %i.gc = fcmp ogt double %i.fn, %i.gb
  %or.cond558 = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %or.cond558, label %bb.aq, label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.gd = fdiv double 1.000000e+00, %i.fn
  br label %.sink.split.sink.split.sink.split

bb.ar:                                            ; preds = %bb.ao
  %i.ge = fcmp ogt double %i.fy, 0.000000e+00
  br i1 %i.ge, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.gf = fmul double %i.af, %i.fy                ; 2 uses
  %i.gg = fcmp ogt double %i.fn, %i.gf
  br i1 %i.gg, label %bb.at, label %.sink.split

bb.at:                                            ; preds = %bb.as
  %i.gh = fdiv double %i.gf, %i.fn                ; 2 uses
  store double %i.gh, ptr %i.f, align 8, !tbaa !21
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fi
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !21 ; 2 uses
  %i.gk = fcmp ogt double %i.gj, 1.000000e+00
  br i1 %i.gk, label %bb.au, label %.sink.split.sink.split

bb.au:                                            ; preds = %bb.at
  %i.gl = fdiv double %i.gh, %i.gj
  br label %.sink.split.sink.split.sink.split

bb.av:                                            ; preds = %bb.ar
  %i.gm = load i32, ptr %4, align 4, !tbaa !19    ; 3 uses
  store i32 %i.gm, ptr %i.c, align 4, !tbaa !19
  %.not550617 = icmp slt i32 %i.gm, 1
  br i1 %.not550617, label %.thread562, label %.lr.ph620.preheader

.lr.ph620.preheader:                              ; preds = %bb.av
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %7, i8 0, i64 %i.go, i1 false), !tbaa !21
  br label %.thread562

.thread562:                                       ; preds = %.lr.ph620.preheader, %bb.av
  store double 1.000000e+00, ptr %i.fj, align 8, !tbaa !21
  store double 0.000000e+00, ptr %8, align 8, !tbaa !21
  br label %bb.az

.sink.split.sink.split.sink.split:                ; preds = %bb.aq, %bb.au
  %.sink760 = phi double [ %i.gl, %bb.au ], [ %i.gd, %bb.aq ]
  store double %.sink760, ptr %i.f, align 8, !tbaa !21
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.at
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %7, ptr noundef nonnull @c__1) #6
  %i.gp = load double, ptr %i.f, align 8, !tbaa !21 ; 2 uses
  %i.gq = load double, ptr %8, align 8, !tbaa !21
  %i.gr = fmul double %i.gp, %i.gq
  store double %i.gr, ptr %8, align 8, !tbaa !21
  %i.gs = fmul double %.1475622, %i.gp
  %.pre687 = load double, ptr %i.fj, align 8, !tbaa !21
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.as, %bb.ap
  %.sink743 = phi double [ %i.fk, %bb.ap ], [ %i.fk, %bb.as ], [ %.pre687, %.sink.split.sink.split ]
  %.4478.ph = phi double [ %.1475622, %bb.ap ], [ %.1475622, %bb.as ], [ %i.gs, %.sink.split.sink.split ]
  %i.gt = fdiv double %.sink743, %.0482           ; 5 uses
  store double %i.gt, ptr %i.fj, align 8, !tbaa !21
  store double %i.gt, ptr %i.d, align 8, !tbaa !21
  %i.gu = fcmp oge double %i.gt, 0.000000e+00
  %i.gv = fneg double %i.gt
  %i.gw = select i1 %i.gu, double %i.gt, double %i.gv
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.an
  %.4478 = phi double [ %.1475622, %bb.an ], [ %.4478.ph, %.sink.split ] ; 4 uses
  %.0452 = phi double [ %i.fn, %bb.an ], [ %i.gw, %.sink.split ] ; 3 uses
  %i.gx = fcmp ogt double %.0452, 1.000000e+00
  br i1 %i.gx, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gy = fdiv double 1.000000e+00, %.0452        ; 3 uses
  store double %i.gy, ptr %i.f, align 8, !tbaa !21
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fi
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !21
  %i.hb = fsub double %i.af, %.4478
  %i.hc = fmul double %i.hb, %i.gy
  %i.hd = fcmp ogt double %i.ha, %i.hc
  br i1 %i.hd, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.he = fmul nnan double %i.gy, 5.000000e-01
  store double %i.he, ptr %i.f, align 8, !tbaa !21
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %7, ptr noundef nonnull @c__1) #6
  %i.hf = load double, ptr %i.f, align 8, !tbaa !21
  %i.hg = load double, ptr %8, align 8, !tbaa !21
  %i.hh = fmul double %i.hf, %i.hg
  br label %.sink.split744

bb.az:                                            ; preds = %.thread562, %bb.aw
  %.0452567 = phi double [ 1.000000e+00, %.thread562 ], [ %.0452, %bb.aw ]
  %.4478566 = phi double [ 0.000000e+00, %.thread562 ], [ %.4478, %bb.aw ] ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fi
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !21
  %i.hk = fmul double %.0452567, %i.hj
  %i.hl = fsub double %i.af, %.4478566
  %i.hm = fcmp ogt double %i.hk, %i.hl
  br i1 %i.hm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull @c_b36, ptr noundef nonnull %7, ptr noundef nonnull @c__1) #6
  %i.hn = load double, ptr %8, align 8, !tbaa !21
  %i.ho = fmul double %i.hn, 5.000000e-01
  br label %.sink.split744

.sink.split744:                                   ; preds = %bb.ay, %bb.ba
  %.sink745 = phi double [ %i.ho, %bb.ba ], [ %i.hh, %bb.ay ]
  %.4478565.ph = phi double [ %.4478566, %bb.ba ], [ %.4478, %bb.ay ]
  store double %.sink745, ptr %8, align 8, !tbaa !21
  br label %bb.bb
end_hunk_0
