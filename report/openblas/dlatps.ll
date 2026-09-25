Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatps?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DLATPS\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@c__1 = internal global i32 1, align 4
@c_b36 = internal global double 5.000000e-01, align 8

; Function Attrs: nounwind uwtable
define void @dlatps_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef captures(none) initializes((0, 4)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca double, align 8                   ; 21 uses
  %i.e = alloca double, align 8                   ; 14 uses
  %i.f = alloca double, align 8                   ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.g = getelementptr inbounds i8, ptr %8, i64 -8 ; 12 uses
  %i.h = getelementptr inbounds i8, ptr %6, i64 -8 ; 14 uses
  %i.i = getelementptr inbounds i8, ptr %5, i64 -8 ; 13 uses
  store i32 0, ptr %9, align 4, !tbaa !20
  %i.j = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %i.k = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %i.l = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %.not.not.not = icmp eq i32 %i.j, 0             ; 19 uses
  br i1 %.not.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %.not538 = icmp eq i32 %i.m, 0
  br i1 %.not538, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not539 = icmp eq i32 %i.k, 0                  ; 3 uses
  br i1 %.not539, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %.not540 = icmp eq i32 %i.n, 0
  br i1 %.not540, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %.not541 = icmp eq i32 %i.o, 0
  br i1 %.not541, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not542 = icmp eq i32 %i.l, 0                  ; 6 uses
  br i1 %.not542, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #6
  %.not543 = icmp eq i32 %i.p, 0
  br i1 %.not543, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %.not544 = icmp eq i32 %i.q, 0
  br i1 %.not544, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %.not545 = icmp eq i32 %i.r, 0
  br i1 %.not545, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i32, ptr %4, align 4, !tbaa !20     ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.pr = load i32, ptr %9, align 4, !tbaa !20     ; 2 uses
  %.not546 = icmp eq i32 %.pr, 0
  br i1 %.not546, label %bb.l, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.i ], [ -3, %bb.g ], [ -5, %bb.j ] ; 2 uses
  store i32 %.sink, ptr %9, align 4, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.u = phi i32 [ %.pr, %bb.k ], [ %.sink, %.thread.sink.split ]
  %i.v = sub nsw i32 0, %i.u
  store i32 %i.v, ptr %i.a, align 4, !tbaa !20
  %i.w = call i32 @xerbla_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %bb.cn

bb.l:                                             ; preds = %bb.k
  %i.x = icmp eq i32 %i.s, 0
  br i1 %i.x, label %bb.cn, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call double @dlamch_(ptr noundef nonnull @.str.7) #6
  %i.z = tail call double @dlamch_(ptr noundef nonnull @.str.8) #6
  %i.aa = fdiv double %i.y, %i.z                  ; 20 uses
  %i.ab = fdiv double 1.000000e+00, %i.aa         ; 11 uses
  store double 1.000000e+00, ptr %7, align 8, !tbaa !22
  %i.ac = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %.not547 = icmp eq i32 %i.ac, 0
  br i1 %.not547, label %.loopexit592, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load i32, ptr %4, align 4, !tbaa !20    ; 7 uses
  br i1 %.not.not.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !20
  %.not549595 = icmp slt i32 %i.ad, 1
  br i1 %.not549595, label %.loopexit592, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.ae = zext nneg i32 %i.ad to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.0458597 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.am, %.lr.ph ] ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !20
  %i.ah = zext nneg i32 %.0458597 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  %i.aj = call double @dasum_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ai, ptr noundef nonnull @c__1) #6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store double %i.aj, ptr %i.ak, align 8, !tbaa !22
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = add nuw nsw i32 %.0458597, %i.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not549.not = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %.not549.not, label %.lr.ph, label %.loopexit592, !llvm.loop !8

bb.p:                                             ; preds = %bb.n
  %i.an = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !20
  %.not548598 = icmp slt i32 %i.ad, 2
  br i1 %.not548598, label %._crit_edge, label %.lr.ph601.preheader

.lr.ph601.preheader:                              ; preds = %bb.p
  %i.ao = zext nneg i32 %i.an to i64
  br label %.lr.ph601

.lr.ph601:                                        ; preds = %.lr.ph601.preheader, %.lr.ph601
  %i.ap = phi i32 [ %i.ad, %.lr.ph601.preheader ], [ %i.ax, %.lr.ph601 ]
  %indvars.iv687 = phi i64 [ 1, %.lr.ph601.preheader ], [ %indvars.iv.next688, %.lr.ph601 ] ; 4 uses
  %.1459600 = phi i32 [ 1, %.lr.ph601.preheader ], [ %i.az, %.lr.ph601 ] ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv687 to i32 ; 2 uses
  %i.ar = sub nsw i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !20
  %i.as = sext i32 %.1459600 to i64
  %i.at = getelementptr [8 x i8], ptr %i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = call double @dasum_(ptr noundef nonnull %i.b, ptr noundef %i.au, ptr noundef nonnull @c__1) #6
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv687
  store double %i.av, ptr %i.aw, align 8, !tbaa !22
  %i.ax = load i32, ptr %4, align 4, !tbaa !20    ; 3 uses
  %reass.sub = sub i32 %.1459600, %i.aq
  %i.ay = add i32 %reass.sub, 1
  %i.az = add i32 %i.ay, %i.ax
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1
  %.not548.not = icmp samesign ult i64 %indvars.iv687, %i.ao
  br i1 %.not548.not, label %.lr.ph601, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph601, %bb.p
  %i.ba = phi i32 [ %i.ad, %bb.p ], [ %i.ax, %.lr.ph601 ]
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bb
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !22
  br label %.loopexit592

.loopexit592:                                     ; preds = %.lr.ph, %bb.o, %._crit_edge, %bb.m
  %i.bd = call i32 @idamax_(ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull @c__1) #6
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !22 ; 2 uses
  %i.bh = fcmp ugt double %i.bg, %i.ab
  br i1 %i.bh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit592
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !22
  br label %bb.s

bb.r:                                             ; preds = %.loopexit592
  %i.bi = fmul double %i.aa, %i.bg
  %i.bj = fdiv double 1.000000e+00, %i.bi
  store double %i.bj, ptr %i.e, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.e, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bk = call i32 @idamax_(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull @c__1) #6
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !22 ; 4 uses
  store double %i.bn, ptr %i.d, align 8, !tbaa !22
  %i.bo = fcmp oge double %i.bn, 0.000000e+00
  %i.bp = fneg double %i.bn
  %i.bq = select i1 %i.bo, double %i.bn, double %i.bp ; 11 uses
  %i.br = load i32, ptr %4, align 4, !tbaa !20    ; 5 uses
  %i.bs = load double, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.bt = fcmp une double %i.bs, 1.000000e+00     ; 2 uses
  br i1 %.not539, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %. = select i1 %.not.not.not, i32 1, i32 -1     ; 10 uses
  %.565 = select i1 %.not.not.not, i32 %i.br, i32 1 ; 13 uses
  %.566 = select i1 %.not.not.not, i32 1, i32 %i.br ; 14 uses
  br i1 %i.bt, label %.loopexit588, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not542, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = fcmp oge double %i.bq, %i.aa
  %i.bv = select i1 %i.bu, double %i.bq, double %i.aa
  %i.bw = fdiv double 1.000000e+00, %i.bv         ; 3 uses
  store i32 %., ptr %i.b, align 4, !tbaa !20
  %10 = icmp sge i32 %.566, %.565
  %11 = icmp sle i32 %.566, %.565
  %.in555602 = select i1 %.not.not.not, i1 %11, i1 %10
  br i1 %.in555602, label %.lr.ph609.preheader, label %.loopexit588

.lr.ph609.preheader:                              ; preds = %bb.v
  %i.bx = add nsw i32 %.566, 1
  %i.by = mul nsw i32 %i.bx, %.566
  %12 = sdiv i32 %i.by, 2
  %13 = sext i32 %.566 to i64
  %i.bz = sext i32 %. to i64
  %14 = sext i32 %.565 to i64                     ; 2 uses
  %i.ca = zext i32 %i.br to i64
  br label %.lr.ph609

.lr.ph609:                                        ; preds = %.lr.ph609.preheader, %bb.w
  %indvars.iv692 = phi i64 [ %i.ca, %.lr.ph609.preheader ], [ %indvars.iv.next693, %bb.w ] ; 2 uses
  %indvars.iv690 = phi i64 [ %13, %.lr.ph609.preheader ], [ %indvars.iv.next691, %bb.w ] ; 2 uses
  %.2460607 = phi i32 [ %12, %.lr.ph609.preheader ], [ %i.cv, %bb.w ] ; 2 uses
  %.0480605 = phi double [ %i.bw, %.lr.ph609.preheader ], [ %.1481, %bb.w ] ; 4 uses
  %.0500604 = phi double [ %i.bw, %.lr.ph609.preheader ], [ %i.cm, %bb.w ] ; 3 uses
  %i.cb = fcmp ugt double %.0480605, %i.aa
  br i1 %i.cb, label %bb.w, label %.loopexit588

bb.w:                                             ; preds = %.lr.ph609
  %i.cc = sext i32 %.2460607 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !22 ; 3 uses
  %i.cf = fcmp oge double %i.ce, 0.000000e+00
  %i.cg = fneg double %i.ce
  %i.ch = select i1 %i.cf, double %i.ce, double %i.cg ; 4 uses
  store double %.0500604, ptr %i.d, align 8, !tbaa !22
  %i.ci = fcmp oge double %i.ch, 1.000000e+00
  %i.cj = select i1 %i.ci, double 1.000000e+00, double %i.ch
  %i.ck = fmul double %.0480605, %i.cj            ; 2 uses
  %i.cl = fcmp ole double %.0500604, %i.ck
  %i.cm = select i1 %i.cl, double %.0500604, double %i.ck ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv690
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = fadd double %i.ch, %i.co                ; 2 uses
  %i.cq = fcmp ult double %i.cp, %i.aa
  %i.cr = fdiv double %i.ch, %i.cp
  %i.cs = fmul double %.0480605, %i.cr
  %.1481 = select i1 %i.cq, double 0.000000e+00, double %i.cs
  %i.ct = trunc i64 %indvars.iv692 to i32
  %i.cu = mul i32 %., %i.ct
  %i.cv = add nsw i32 %.2460607, %i.cu
  %indvars.iv.next693 = add i64 %indvars.iv692, -1
  %indvars.iv.next691 = add nsw i64 %indvars.iv690, %i.bz ; 3 uses
  %15 = icmp sge i64 %indvars.iv.next691, %14
  %i.cw = icmp sle i64 %indvars.iv.next691, %14
  %.in555 = select i1 %.not.not.not, i1 %i.cw, i1 %15
  br i1 %.in555, label %.lr.ph609, label %.loopexit588, !llvm.loop !10

bb.x:                                             ; preds = %bb.u
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !22
  %i.cx = fcmp oge double %i.bq, %i.aa
  %i.cy = select i1 %i.cx, double %i.bq, double %i.aa
  %i.cz = fdiv double 1.000000e+00, %i.cy         ; 2 uses
  %i.da = fcmp oge double %i.cz, 1.000000e+00
  %i.db = select i1 %i.da, double 1.000000e+00, double %i.cz ; 3 uses
  store i32 %.565, ptr %i.b, align 4, !tbaa !20
  %16 = icmp sge i32 %.566, %.565
  %17 = icmp sle i32 %.566, %.565
  %.in554612 = select i1 %.not.not.not, i1 %17, i1 %16
  %i.dc = fcmp ugt double %i.db, %i.aa
  %or.cond613 = select i1 %.in554612, i1 %i.dc, i1 false
  br i1 %or.cond613, label %.lr.ph617.preheader, label %.loopexit588

.lr.ph617.preheader:                              ; preds = %bb.x
  %18 = sext i32 %.566 to i64
  %i.dd = sext i32 %. to i64
  %19 = sext i32 %.565 to i64                     ; 2 uses
  br label %.lr.ph617

.lr.ph617:                                        ; preds = %.lr.ph617.preheader, %.lr.ph617
  %indvars.iv697 = phi i64 [ %18, %.lr.ph617.preheader ], [ %indvars.iv.next698, %.lr.ph617 ] ; 2 uses
  %.2482614 = phi double [ %i.db, %.lr.ph617.preheader ], [ %i.di, %.lr.ph617 ]
  %i.de = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv697
  %i.df = load double, ptr %i.de, align 8, !tbaa !22
  %i.dg = fadd double %i.df, 1.000000e+00
  %i.dh = fdiv double 1.000000e+00, %i.dg
  %i.di = fmul double %.2482614, %i.dh            ; 3 uses
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, %i.dd ; 3 uses
  %20 = icmp sge i64 %indvars.iv.next698, %19
  %i.dj = icmp sle i64 %indvars.iv.next698, %19
  %.in554 = select i1 %.not.not.not, i1 %i.dj, i1 %20
  %i.dk = fcmp ugt double %i.di, %i.aa
  %or.cond = select i1 %.in554, i1 %i.dk, i1 false
  br i1 %or.cond, label %.lr.ph617, label %.loopexit588, !llvm.loop !11

bb.y:                                             ; preds = %bb.s
  %.567 = select i1 %.not.not.not, i32 -1, i32 1  ; 9 uses
  %.568 = select i1 %.not.not.not, i32 1, i32 %i.br ; 13 uses
  %.569 = select i1 %.not.not.not, i32 %i.br, i32 1 ; 13 uses
  br i1 %i.bt, label %.loopexit588, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not542, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = fcmp oge double %i.bq, %i.aa
  %i.dm = select i1 %i.dl, double %i.bq, double %i.aa
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 4 uses
  store i32 %.568, ptr %i.a, align 4, !tbaa !20
  store i32 %.567, ptr %i.b, align 4, !tbaa !20
  %21 = icmp sge i32 %.569, %.568
  %22 = icmp sle i32 %.569, %.568
  %.in552619 = select i1 %.not.not.not, i1 %21, i1 %22
  br i1 %.in552619, label %.lr.ph626.preheader, label %._crit_edge627

.lr.ph626.preheader:                              ; preds = %bb.aa
  %i.do = add nsw i32 %.569, 1
  %i.dp = mul nsw i32 %i.do, %.569
  %23 = sdiv i32 %i.dp, 2
  %24 = sext i32 %.569 to i64
  %i.dq = sext i32 %.567 to i64
  %25 = sext i32 %.568 to i64                     ; 2 uses
  br label %.lr.ph626

.lr.ph626:                                        ; preds = %.lr.ph626.preheader, %bb.ab
  %indvars.iv702 = phi i64 [ 1, %.lr.ph626.preheader ], [ %indvars.iv.next703, %bb.ab ]
  %indvars.iv700 = phi i64 [ %24, %.lr.ph626.preheader ], [ %indvars.iv.next701, %bb.ab ] ; 2 uses
  %.3624 = phi i32 [ %23, %.lr.ph626.preheader ], [ %i.ej, %bb.ab ] ; 2 uses
  %.3483622 = phi double [ %i.dn, %.lr.ph626.preheader ], [ %i.dx, %bb.ab ] ; 4 uses
  %.1501621 = phi double [ %i.dn, %.lr.ph626.preheader ], [ %.2502, %bb.ab ] ; 3 uses
  %i.dr = fcmp ugt double %.3483622, %i.aa
  br i1 %i.dr, label %bb.ab, label %.loopexit588

bb.ab:                                            ; preds = %.lr.ph626
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv700
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = fadd double %i.dt, 1.000000e+00         ; 3 uses
  %i.dv = fdiv double %.1501621, %i.du            ; 2 uses
  %i.dw = fcmp ole double %.3483622, %i.dv
  %i.dx = select i1 %i.dw, double %.3483622, double %i.dv ; 2 uses
  %i.dy = sext i32 %.3624 to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !22 ; 4 uses
  store double %i.ea, ptr %i.d, align 8, !tbaa !22
  %i.eb = fcmp oge double %i.ea, 0.000000e+00
  %i.ec = fneg double %i.ea
  %i.ed = select i1 %i.eb, double %i.ea, double %i.ec ; 2 uses
  %i.ee = fcmp ogt double %i.du, %i.ed
  %i.ef = fdiv double %i.ed, %i.du
  %i.eg = fmul double %.1501621, %i.ef
  %.2502 = select i1 %i.ee, double %i.eg, double %.1501621 ; 2 uses
  %indvars.iv.next703 = add nuw nsw i64 %indvars.iv702, 1 ; 2 uses
  %i.eh = trunc i64 %indvars.iv.next703 to i32
  %i.ei = mul i32 %.567, %i.eh
  %i.ej = add nsw i32 %.3624, %i.ei
  %indvars.iv.next701 = add nsw i64 %indvars.iv700, %i.dq ; 3 uses
  %26 = icmp sge i64 %indvars.iv.next701, %25
  %i.ek = icmp sle i64 %indvars.iv.next701, %25
  %.in552 = select i1 %.not.not.not, i1 %26, i1 %i.ek
  br i1 %.in552, label %.lr.ph626, label %._crit_edge627, !llvm.loop !12

._crit_edge627:                                   ; preds = %bb.ab, %bb.aa
  %.1501.lcssa = phi double [ %i.dn, %bb.aa ], [ %.2502, %bb.ab ] ; 2 uses
  %.3483.lcssa = phi double [ %i.dn, %bb.aa ], [ %i.dx, %bb.ab ] ; 2 uses
  %i.el = fcmp ole double %.3483.lcssa, %.1501.lcssa
  %i.em = select i1 %i.el, double %.3483.lcssa, double %.1501.lcssa
  br label %.loopexit588

bb.ac:                                            ; preds = %bb.z
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !22
  %i.en = fcmp oge double %i.bq, %i.aa
  %i.eo = select i1 %i.en, double %i.bq, double %i.aa
  %i.ep = fdiv double 1.000000e+00, %i.eo         ; 2 uses
  %i.eq = fcmp oge double %i.ep, 1.000000e+00
  %i.er = select i1 %i.eq, double 1.000000e+00, double %i.ep ; 3 uses
  store i32 %.568, ptr %i.b, align 4, !tbaa !20
  %27 = icmp sge i32 %.569, %.568
  %28 = icmp sle i32 %.569, %.568
  %.in630 = select i1 %.not.not.not, i1 %27, i1 %28
  %i.es = fcmp ugt double %i.er, %i.aa
  %or.cond570631 = select i1 %.in630, i1 %i.es, i1 false
  br i1 %or.cond570631, label %.lr.ph635.preheader, label %.loopexit588

.lr.ph635.preheader:                              ; preds = %bb.ac
  %29 = sext i32 %.569 to i64
  %i.et = sext i32 %.567 to i64
  %30 = sext i32 %.568 to i64                     ; 2 uses
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.preheader, %.lr.ph635
  %indvars.iv707 = phi i64 [ %29, %.lr.ph635.preheader ], [ %indvars.iv.next708, %.lr.ph635 ] ; 2 uses
  %.4484632 = phi double [ %i.er, %.lr.ph635.preheader ], [ %i.ex, %.lr.ph635 ]
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv707
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !22
  %i.ew = fadd double %i.ev, 1.000000e+00
  %i.ex = fdiv double %.4484632, %i.ew            ; 3 uses
  %indvars.iv.next708 = add nsw i64 %indvars.iv707, %i.et ; 3 uses
  %31 = icmp sge i64 %indvars.iv.next708, %30
  %i.ey = icmp sle i64 %indvars.iv.next708, %30
  %.in = select i1 %.not.not.not, i1 %31, i1 %i.ey
  %i.ez = fcmp ugt double %i.ex, %i.aa
  %or.cond570 = select i1 %.in, i1 %i.ez, i1 false
  br i1 %or.cond570, label %.lr.ph635, label %.loopexit588, !llvm.loop !13

.loopexit588:                                     ; preds = %.lr.ph609, %bb.w, %.lr.ph617, %.lr.ph626, %.lr.ph635, %bb.v, %bb.x, %bb.ac, %bb.y, %bb.t, %._crit_edge627
  %i.fa = phi double [ 1.000000e+00, %._crit_edge627 ], [ 1.000000e+00, %bb.x ], [ %i.bs, %bb.t ], [ 1.000000e+00, %.lr.ph617 ], [ 1.000000e+00, %bb.ac ], [ %i.bs, %bb.y ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %.lr.ph635 ], [ 1.000000e+00, %.lr.ph626 ], [ 1.000000e+00, %bb.w ], [ 1.000000e+00, %.lr.ph609 ]
  %i.fb = phi i32 [ %.567, %._crit_edge627 ], [ %., %bb.x ], [ %., %bb.t ], [ %., %.lr.ph617 ], [ %.567, %bb.ac ], [ %.567, %bb.y ], [ %., %bb.v ], [ %.567, %.lr.ph635 ], [ %.567, %.lr.ph626 ], [ %., %bb.w ], [ %., %.lr.ph609 ] ; 4 uses
  %.5485 = phi double [ %i.em, %._crit_edge627 ], [ %i.db, %bb.x ], [ 0.000000e+00, %bb.t ], [ %i.di, %.lr.ph617 ], [ %i.er, %bb.ac ], [ 0.000000e+00, %bb.y ], [ %i.bw, %bb.v ], [ %i.ex, %.lr.ph635 ], [ %.3483622, %.lr.ph626 ], [ %i.cm, %bb.w ], [ %.0480605, %.lr.ph609 ]
  %i.fc = phi i32 [ %.568, %._crit_edge627 ], [ %.565, %bb.x ], [ %.565, %bb.t ], [ %.565, %.lr.ph617 ], [ %.568, %bb.ac ], [ %.568, %bb.y ], [ %.565, %bb.v ], [ %.568, %.lr.ph635 ], [ %.568, %.lr.ph626 ], [ %.565, %bb.w ], [ %.565, %.lr.ph609 ] ; 5 uses
  %.2 = phi i32 [ %.569, %._crit_edge627 ], [ %.566, %bb.x ], [ %.566, %bb.t ], [ %.566, %.lr.ph617 ], [ %.569, %bb.ac ], [ %.569, %bb.y ], [ %.566, %bb.v ], [ %.569, %.lr.ph635 ], [ %.569, %.lr.ph626 ], [ %.566, %bb.w ], [ %.566, %.lr.ph609 ] ; 8 uses
  %i.fd = fmul double %.5485, %i.fa
  %i.fe = fcmp ogt double %i.fd, %i.aa
  br i1 %i.fe, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.loopexit588
  call void @dtpsv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull @c__1) #6
  %.pr584 = load double, ptr %i.e, align 8, !tbaa !22
  br label %bb.cl

bb.ae:                                            ; preds = %.loopexit588
  %i.ff = fcmp ogt double %i.bq, %i.ab
  br i1 %i.ff, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fg = fdiv double %i.ab, %i.bq
  store double %i.fg, ptr %7, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull @c__1) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0486 = phi double [ %i.ab, %bb.af ], [ %i.bq, %bb.ae ] ; 2 uses
  %i.fh = icmp slt i32 %i.fb, 0                   ; 2 uses
  %i.fi = icmp sge i32 %.2, %i.fc
  %i.fj = icmp sle i32 %.2, %i.fc
  %.in556665 = select i1 %i.fh, i1 %i.fi, i1 %i.fj ; 2 uses
  br i1 %.not539, label %bb.bf, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.fb, ptr %i.b, align 4, !tbaa !20
  br i1 %.in556665, label %.lr.ph647, label %.loopexit586

.lr.ph647:                                        ; preds = %bb.ah
  %i.fk = add nsw i32 %.2, 1
  %i.fl = mul nsw i32 %i.fk, %.2
  %i.fm = sdiv i32 %i.fl, 2
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph647, %bb.be
  %.4645 = phi i32 [ %i.fm, %.lr.ph647 ], [ %.5, %bb.be ] ; 5 uses
  %.6472643 = phi i32 [ %.2, %.lr.ph647 ], [ %i.jj, %bb.be ] ; 11 uses
  %.1487642 = phi double [ %.0486, %.lr.ph647 ], [ %.7493, %bb.be ] ; 4 uses
  %i.fn = sext i32 %.6472643 to i64               ; 4 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fn ; 7 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !22 ; 6 uses
  store double %i.fp, ptr %i.d, align 8, !tbaa !22
  %i.fq = fcmp oge double %i.fp, 0.000000e+00
  %i.fr = fneg double %i.fp
  %i.fs = select i1 %i.fq, double %i.fp, double %i.fr ; 5 uses
  br i1 %.not542, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = sext i32 %.4645 to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !22
  %i.fw = load double, ptr %i.e, align 8, !tbaa !22
  %i.fx = fmul double %i.fv, %i.fw
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fy = load double, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.fz = fcmp oeq double %i.fy, 1.000000e+00
  br i1 %i.fz, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0494 = phi double [ %i.fx, %bb.aj ], [ %i.fy, %bb.ak ] ; 4 uses
  %i.ga = fcmp oge double %.0494, 0.000000e+00
  %i.gb = fneg double %.0494
  %i.gc = select i1 %i.ga, double %.0494, double %i.gb ; 5 uses
  %i.gd = fcmp ogt double %i.gc, %i.aa
  br i1 %i.gd, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ge = fcmp olt double %i.gc, 1.000000e+00
  %i.gf = fmul double %i.ab, %i.gc
  %i.gg = fcmp ogt double %i.fs, %i.gf
  %or.cond572 = select i1 %i.ge, i1 %i.gg, i1 false
  br i1 %or.cond572, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %bb.am
  %i.gh = fdiv double 1.000000e+00, %i.fs
  br label %.sink.split.sink.split.sink.split

bb.ao:                                            ; preds = %bb.al
  %i.gi = fcmp ogt double %i.gc, 0.000000e+00
  br i1 %i.gi, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gj = fmul double %i.ab, %i.gc                ; 2 uses
  %i.gk = fcmp ogt double %i.fs, %i.gj
  br i1 %i.gk, label %bb.aq, label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.gl = fdiv double %i.gj, %i.fs                ; 2 uses
  store double %i.gl, ptr %i.f, align 8, !tbaa !22
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fn
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !22 ; 2 uses
  %i.go = fcmp ogt double %i.gn, 1.000000e+00
  br i1 %i.go, label %bb.ar, label %.sink.split.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.gp = fdiv double %i.gl, %i.gn
  br label %.sink.split.sink.split.sink.split

bb.as:                                            ; preds = %bb.ao
  %i.gq = load i32, ptr %4, align 4, !tbaa !20    ; 3 uses
  store i32 %i.gq, ptr %i.c, align 4, !tbaa !20
  %.not564637 = icmp slt i32 %i.gq, 1
  br i1 %.not564637, label %.thread576, label %.lr.ph640.preheader

.lr.ph640.preheader:                              ; preds = %bb.as
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %6, i8 0, i64 %i.gs, i1 false), !tbaa !22
  br label %.thread576

.thread576:                                       ; preds = %.lr.ph640.preheader, %bb.as
  store double 1.000000e+00, ptr %i.fo, align 8, !tbaa !22
  store double 0.000000e+00, ptr %7, align 8, !tbaa !22
  br label %bb.aw

.sink.split.sink.split.sink.split:                ; preds = %bb.an, %bb.ar
  %.sink797 = phi double [ %i.gp, %bb.ar ], [ %i.gh, %bb.an ]
  store double %.sink797, ptr %i.f, align 8, !tbaa !22
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.aq
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %6, ptr noundef nonnull @c__1) #6
  %i.gt = load double, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.gu = load double, ptr %7, align 8, !tbaa !22
  %i.gv = fmul double %i.gt, %i.gu
  store double %i.gv, ptr %7, align 8, !tbaa !22
  %i.gw = fmul double %.1487642, %i.gt
  %.pre = load double, ptr %i.fo, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.ap, %bb.am
  %.sink790 = phi double [ %i.fp, %bb.am ], [ %i.fp, %bb.ap ], [ %.pre, %.sink.split.sink.split ]
  %.4490.ph = phi double [ %.1487642, %bb.am ], [ %.1487642, %bb.ap ], [ %i.gw, %.sink.split.sink.split ]
  %i.gx = fdiv double %.sink790, %.0494           ; 5 uses
  store double %i.gx, ptr %i.fo, align 8, !tbaa !22
  store double %i.gx, ptr %i.d, align 8, !tbaa !22
  %i.gy = fcmp oge double %i.gx, 0.000000e+00
  %i.gz = fneg double %i.gx
  %i.ha = select i1 %i.gy, double %i.gx, double %i.gz
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.ak
  %.4490 = phi double [ %.1487642, %bb.ak ], [ %.4490.ph, %.sink.split ] ; 4 uses
  %.0457 = phi double [ %i.fs, %bb.ak ], [ %i.ha, %.sink.split ] ; 3 uses
  %i.hb = fcmp ogt double %.0457, 1.000000e+00
  br i1 %i.hb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hc = fdiv double 1.000000e+00, %.0457        ; 3 uses
  store double %i.hc, ptr %i.f, align 8, !tbaa !22
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fn
  %i.he = load double, ptr %i.hd, align 8, !tbaa !22
  %i.hf = fsub double %i.ab, %.4490
  %i.hg = fmul double %i.hf, %i.hc
  %i.hh = fcmp ogt double %i.he, %i.hg
  br i1 %i.hh, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.hi = fmul nnan double %i.hc, 5.000000e-01
  store double %i.hi, ptr %i.f, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %6, ptr noundef nonnull @c__1) #6
  %i.hj = load double, ptr %i.f, align 8, !tbaa !22
  %i.hk = load double, ptr %7, align 8, !tbaa !22
  %i.hl = fmul double %i.hj, %i.hk
  br label %.sink.split791

bb.aw:                                            ; preds = %.thread576, %bb.at
  %.0457581 = phi double [ 1.000000e+00, %.thread576 ], [ %.0457, %bb.at ]
  %.4490580 = phi double [ 0.000000e+00, %.thread576 ], [ %.4490, %bb.at ] ; 3 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fn
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !22
  %i.ho = fmul double %.0457581, %i.hn
  %i.hp = fsub double %i.ab, %.4490580
  %i.hq = fcmp ogt double %i.ho, %i.hp
  br i1 %i.hq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull @c_b36, ptr noundef nonnull %6, ptr noundef nonnull @c__1) #6
  %i.hr = load double, ptr %7, align 8, !tbaa !22
  %i.hs = fmul double %i.hr, 5.000000e-01
  br label %.sink.split791

.sink.split791:                                   ; preds = %bb.av, %bb.ax
  %.sink792 = phi double [ %i.hs, %bb.ax ], [ %i.hl, %bb.av ]
  %.4490579.ph = phi double [ %.4490580, %bb.ax ], [ %.4490, %bb.av ]
end_hunk_0
