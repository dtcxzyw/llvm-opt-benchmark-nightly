Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgsyl?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DTGSYL\00", align 1
@c__2 = internal global i32 2, align 4
@c_n1 = internal global i32 -1, align 4
@c__5 = internal global i32 5, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@c_b14 = internal global double 0.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@c_b51 = internal global double -1.000000e+00, align 8
@c_b52 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtgsyl_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr nofree noundef writeonly captures(none) %17, ptr noundef %18, ptr nofree noundef readonly captures(none) %19, ptr noundef %20, ptr noundef initializes((0, 4)) %21) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 34 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca double, align 8                   ; 13 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 15 uses
  %i.i = alloca i32, align 4                      ; 16 uses
  %i.j = alloca double, align 8                   ; 12 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca double, align 8                   ; 24 uses
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
  %i.m = load i32, ptr %5, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.m, -1
  %i.n = sext i32 %narrow to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %4, i64 %i.n ; 5 uses
  %i.p = load i32, ptr %7, align 4, !tbaa !8      ; 5 uses
  %narrow718 = xor i32 %i.p, -1
  %i.q = sext i32 %narrow718 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %6, i64 %i.q ; 5 uses
  %i.s = load i32, ptr %9, align 4, !tbaa !8      ; 6 uses
  %narrow719 = xor i32 %i.s, -1
  %i.t = sext i32 %narrow719 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %8, i64 %i.t ; 13 uses
  %i.v = load i32, ptr %11, align 4, !tbaa !8     ; 4 uses
  %narrow720 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow720 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %10, i64 %i.w ; 4 uses
  %i.y = load i32, ptr %13, align 4, !tbaa !8     ; 4 uses
  %narrow721 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow721 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %12, i64 %i.z ; 4 uses
  %i.ab = load i32, ptr %15, align 4, !tbaa !8    ; 7 uses
  %narrow722 = xor i32 %i.ab, -1
  %i.ac = sext i32 %narrow722 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ac ; 13 uses
  %i.ae = getelementptr inbounds i8, ptr %18, i64 -8 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %20, i64 -4 ; 12 uses
  store i32 0, ptr %21, align 4, !tbaa !8
  %i.ag = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.ah = load i32, ptr %19, align 4, !tbaa !8
  %i.ai = icmp eq i32 %i.ah, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ag, 0                    ; 5 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not698 = icmp eq i32 %i.aj, 0
  br i1 %.not698, label %.thread742.sink.split, label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.ak = load i32, ptr %1, align 4, !tbaa !8
  %or.cond724 = icmp ugt i32 %i.ak, 4
  br i1 %or.cond724, label %.thread742.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.pr = load i32, ptr %21, align 4, !tbaa !8     ; 2 uses
  %i.al = icmp eq i32 %.pr, 0
  br i1 %i.al, label %bb.d, label %.thread742

bb.d:                                             ; preds = %bb.c
  %i.am = load i32, ptr %2, align 4, !tbaa !8     ; 6 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread742.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %3, align 4, !tbaa !8     ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %.thread742.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %5, align 4, !tbaa !8
  %i.ar = icmp slt i32 %i.aq, %i.am
  br i1 %i.ar, label %.thread742.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %7, align 4, !tbaa !8
  %i.at = icmp slt i32 %i.as, %i.ao
  br i1 %i.at, label %.thread742.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %9, align 4, !tbaa !8
  %i.av = icmp slt i32 %i.au, %i.am
  br i1 %i.av, label %.thread742.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %11, align 4, !tbaa !8
  %i.ax = icmp slt i32 %i.aw, %i.am
  br i1 %i.ax, label %.thread742.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %13, align 4, !tbaa !8
  %i.az = icmp slt i32 %i.ay, %i.ao
  br i1 %i.az, label %.thread742.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %15, align 4, !tbaa !8
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %.thread742.sink.split, label %.thread

.thread:                                          ; preds = %bb.k
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bc = load i32, ptr %1, align 4, !tbaa !8
  %.off = add i32 %i.bc, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = shl nuw i32 %i.am, 1
  %i.be = mul nsw i32 %i.bd, %i.ao
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread, %bb.m
  %.0660 = phi i32 [ %i.bf, %bb.m ], [ 1, %bb.l ], [ 1, %.thread ] ; 2 uses
  %i.bg = uitofp nneg i32 %.0660 to double        ; 2 uses
  store double %i.bg, ptr %18, align 8, !tbaa !9
  %i.bh = load i32, ptr %19, align 4, !tbaa !8
  %i.bi = icmp sge i32 %i.bh, %.0660
  %or.cond = select i1 %i.bi, i1 true, i1 %i.ai
  br i1 %or.cond, label %.thread737, label %.thread742.sink.split

.thread742.sink.split:                            ; preds = %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.critedge, %bb.b
  %.sink = phi i32 [ -2, %.critedge ], [ -4, %bb.e ], [ -8, %bb.g ], [ -12, %bb.i ], [ -14, %bb.j ], [ -10, %bb.h ], [ -6, %bb.f ], [ -3, %bb.d ], [ -1, %bb.b ], [ -16, %bb.k ], [ -20, %bb.n ] ; 2 uses
  store i32 %.sink, ptr %21, align 4, !tbaa !8
  br label %.thread742

.thread742:                                       ; preds = %.thread742.sink.split, %bb.c
  %i.bj = phi i32 [ %.pr, %bb.c ], [ %.sink, %.thread742.sink.split ]
  %i.bk = sub nsw i32 0, %i.bj
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !8
  %i.bl = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

.thread737:                                       ; preds = %bb.n
  br i1 %i.ai, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread737
  %i.bm = tail call i32 @ilaenv_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 4 uses
  store i32 %i.bm, ptr %i.h, align 4, !tbaa !8
  %i.bn = tail call i32 @ilaenv_(ptr noundef nonnull @c__5, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 4 uses
  store i32 %i.bn, ptr %i.i, align 4, !tbaa !8
  store i32 0, ptr %i.f, align 4, !tbaa !8
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 2
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bo, -2
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !8
  tail call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %8, ptr noundef nonnull %9) #5
  tail call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %14, ptr noundef nonnull %15) #5
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.br = icmp sgt i32 %i.bo, 0                   ; 2 uses
  %spec.select731 = select i1 %i.br, i32 2, i32 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.bs = phi i1 [ false, %bb.q ], [ false, %bb.o ], [ %i.br, %bb.r ] ; 4 uses
  %i.bt = phi i32 [ 1, %bb.q ], [ 1, %bb.o ], [ %spec.select731, %bb.r ] ; 2 uses
  %i.bu = icmp slt i32 %i.bm, 2
  %i.bv = icmp slt i32 %i.bn, 2
  %or.cond3 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond3, label %.lr.ph847.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not700 = icmp slt i32 %i.bm, %i.bw
  br i1 %.not700, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %3, align 4, !tbaa !8
  %.not701 = icmp slt i32 %i.bn, %i.bx
  br i1 %.not701, label %bb.ai, label %.lr.ph847.preheader

.lr.ph847.preheader:                              ; preds = %bb.u, %bb.s
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  store i32 0, ptr %i.k, align 4, !tbaa !8
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %20, ptr noundef nonnull %i.k, ptr noundef nonnull %21) #5
  %i.by = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.bz = fcmp une double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.lr.ph847.preheader
  %i.ca = load i32, ptr %1, align 4, !tbaa !8
  switch i32 %i.ca, label %bb.x [
    i32 1, label %bb.w
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cb = load i32, ptr %2, align 4, !tbaa !8
  %i.cc = shl i32 %i.cb, 1
  %i.cd = load i32, ptr %3, align 4, !tbaa !8
  %i.ce = mul nsw i32 %i.cc, %i.cd
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %i.cf = load i32, ptr %i.k, align 4, !tbaa !8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.sink947 = phi i32 [ %i.cf, %bb.x ], [ %i.ce, %bb.w ]
  %i.cg = sitofp i32 %.sink947 to double
  %i.ch = call double @sqrt(double noundef %i.cg) #5
  %i.ci = load double, ptr %i.d, align 8, !tbaa !9
  %i.cj = call double @sqrt(double noundef %i.ci) #5
  %i.ck = fmul double %i.by, %i.cj
  %i.cl = fdiv double %i.ch, %i.ck
  store double %i.cl, ptr %17, align 8, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %.lr.ph847.preheader
  br i1 %i.bs, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.cm, ptr %i.f, align 4, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cn = load double, ptr %16, align 8, !tbaa !9
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef nonnull %2) #5
  %i.co = load i32, ptr %2, align 4, !tbaa !8
  %i.cp = load i32, ptr %3, align 4, !tbaa !8
  %i.cq = mul nsw i32 %i.cp, %i.co
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.ae, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %i.ct, ptr noundef nonnull %2) #5
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %8, ptr noundef nonnull %9) #5
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %14, ptr noundef nonnull %15) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %.1659.peel = phi double [ %i.cn, %bb.ab ], [ undef, %bb.y ]
  %.not717.not.peel = icmp samesign ugt i32 %i.bt, 1
  br i1 %.not717.not.peel, label %.lr.ph847, label %.loopexit

.lr.ph847:                                        ; preds = %bb.ac
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  store i32 0, ptr %i.k, align 4, !tbaa !8
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %20, ptr noundef nonnull %i.k, ptr noundef nonnull %21) #5
  %i.cu = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.cv = fcmp une double %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.lr.ph847
  %i.cw = load i32, ptr %1, align 4, !tbaa !8
  switch i32 %i.cw, label %bb.af [
    i32 1, label %bb.ae
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.cx = load i32, ptr %2, align 4, !tbaa !8
  %i.cy = shl i32 %i.cx, 1
  %i.cz = load i32, ptr %3, align 4, !tbaa !8
  %i.da = mul nsw i32 %i.cy, %i.cz
  br label %.sink.split948

bb.af:                                            ; preds = %bb.ad
  %i.db = load i32, ptr %i.k, align 4, !tbaa !8
  br label %.sink.split948

.sink.split948:                                   ; preds = %bb.ae, %bb.af
  %.sink955 = phi i32 [ %i.db, %bb.af ], [ %i.da, %bb.ae ]
  %i.dc = sitofp i32 %.sink955 to double
  %i.dd = call double @sqrt(double noundef %i.dc) #5
  %i.de = load double, ptr %i.d, align 8, !tbaa !9
  %i.df = call double @sqrt(double noundef %i.de) #5
  %i.dg = fmul double %i.cu, %i.df
  %i.dh = fdiv double %i.dd, %i.dg
  store double %i.dh, ptr %17, align 8, !tbaa !9
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split948, %.lr.ph847
  br i1 %i.bs, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef %8, ptr noundef nonnull %9) #5
  %i.di = load i32, ptr %2, align 4, !tbaa !8
  %i.dj = load i32, ptr %3, align 4, !tbaa !8
  %i.dk = mul nsw i32 %i.dj, %i.di
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.ae, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.dn, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull %15) #5
  store double %.1659.peel, ptr %16, align 8, !tbaa !9
  br label %.loopexit

bb.ai:                                            ; preds = %bb.u, %bb.t
  %i.do = icmp slt i32 %i.bw, 1
  br i1 %i.do, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.ai
  %.pre = load i32, ptr %i.af, align 4, !tbaa !8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %.0676756 = phi i32 [ %.1677, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %20, i64 %indvars.iv
  store i32 %.0676756, ptr %i.dp, align 4, !tbaa !8
  %i.dq = add nsw i32 %.0676756, %i.bm            ; 4 uses
  %i.dr = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not702 = icmp slt i32 %i.dq, %i.dr
  br i1 %.not702, label %bb.aj, label %._crit_edge.loopexit

bb.aj:                                            ; preds = %.lr.ph
  %i.ds = add nsw i32 %i.dq, -1
  %i.dt = mul nsw i32 %i.ds, %i.m
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !9
  %i.dy = fcmp une double %i.dx, 0.000000e+00
  %i.dz = zext i1 %i.dy to i32
  %.1677 = add nsw i32 %i.dq, %i.dz               ; 2 uses
  %i.ea = icmp sgt i32 %.1677, %i.dr
  br i1 %i.ea, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.aj
  %i.eb = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.ec = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %.0676756, %._crit_edge.loopexit ]
  %i.ed = phi i32 [ %i.bw, %.._crit_edge_crit_edge ], [ %i.dr, %._crit_edge.loopexit ]
  %.1666 = phi i32 [ 0, %.._crit_edge_crit_edge ], [ %i.eb, %._crit_edge.loopexit ] ; 2 uses
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = sext i32 %.1666 to i64
  %i.eg = getelementptr [4 x i8], ptr %i.af, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  store i32 %i.ee, ptr %i.eh, align 4, !tbaa !8
  %i.ei = icmp eq i32 %i.ec, %i.ee
  %i.ej = sext i1 %i.ei to i32
  %spec.select732 = add i32 %.1666, %i.ej         ; 7 uses
  %i.ek = add i32 %spec.select732, 1              ; 2 uses
  %i.el = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.em = icmp slt i32 %i.el, 1
  %.phi.trans.insert = sext i32 %i.ek to i64      ; 3 uses
  br i1 %i.em, label %._crit_edge.._crit_edge764_crit_edge, label %.lr.ph763

._crit_edge.._crit_edge764_crit_edge:             ; preds = %._crit_edge
  %.phi.trans.insert896 = getelementptr [4 x i8], ptr %i.af, i64 %.phi.trans.insert
  %.pre897 = load i32, ptr %.phi.trans.insert896, align 4, !tbaa !8
  br label %._crit_edge764

.lr.ph763:                                        ; preds = %._crit_edge, %bb.ak
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %bb.ak ], [ %.phi.trans.insert, %._crit_edge ] ; 2 uses
  %.0672760 = phi i32 [ %.1673, %bb.ak ], [ 1, %._crit_edge ] ; 3 uses
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, 1 ; 3 uses
  %i.en = getelementptr [4 x i8], ptr %20, i64 %indvars.iv853
  store i32 %.0672760, ptr %i.en, align 4, !tbaa !8
  %i.eo = add nsw i32 %.0672760, %i.bn            ; 4 uses
  %i.ep = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %.not703 = icmp slt i32 %i.eo, %i.ep
  br i1 %.not703, label %bb.ak, label %._crit_edge764.loopexit

bb.ak:                                            ; preds = %.lr.ph763
  %i.eq = add nsw i32 %i.eo, -1
  %i.er = mul nsw i32 %i.eq, %i.p
  %i.es = add nsw i32 %i.er, %i.eo
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !9
  %i.ew = fcmp une double %i.ev, 0.000000e+00
  %i.ex = zext i1 %i.ew to i32
  %.1673 = add nsw i32 %i.eo, %i.ex               ; 2 uses
  %i.ey = icmp sgt i32 %.1673, %i.ep
  br i1 %i.ey, label %._crit_edge764.loopexit, label %.lr.ph763

._crit_edge764.loopexit:                          ; preds = %.lr.ph763, %bb.ak
  %i.ez = trunc nsw i64 %indvars.iv.next854 to i32
  br label %._crit_edge764

._crit_edge764:                                   ; preds = %._crit_edge764.loopexit, %._crit_edge.._crit_edge764_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge.._crit_edge764_crit_edge ], [ %indvars.iv.next854, %._crit_edge764.loopexit ]
  %i.fa = phi i32 [ %.pre897, %._crit_edge.._crit_edge764_crit_edge ], [ %.0672760, %._crit_edge764.loopexit ]
  %i.fb = phi i32 [ %i.el, %._crit_edge.._crit_edge764_crit_edge ], [ %i.ep, %._crit_edge764.loopexit ]
  %.1663 = phi i32 [ %i.ek, %._crit_edge.._crit_edge764_crit_edge ], [ %i.ez, %._crit_edge764.loopexit ]
  %i.fc = add nsw i32 %i.fb, 1                    ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.af, i64 %.pre-phi
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !8
  %i.ff = icmp eq i32 %i.fa, %i.fc
  %i.fg = sext i1 %i.ff to i32
  %spec.select733 = add i32 %.1663, %i.fg         ; 6 uses
  br i1 %.not, label %bb.bb, label %.lr.ph807

.lr.ph807:                                        ; preds = %._crit_edge764
  %i.fh = add nsw i32 %spec.select732, 2          ; 2 uses
  %.not711791 = icmp sgt i32 %i.fh, %spec.select733
  %i.fi = icmp sgt i32 %spec.select732, 0
  %i.fj = add i32 %i.p, 1
  %i.fk = add i32 %i.y, 1
  %22 = zext nneg i32 %spec.select733 to i64
  %i.fl = getelementptr [4 x i8], ptr %i.af, i64 %22
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = add i32 %spec.select733, 1
  %i.fo = sext i32 %i.s to i64                    ; 4 uses
  %i.fp = sext i32 %i.ab to i64                   ; 4 uses
  %i.fq = zext i32 %spec.select732 to i64
  %23 = sext i32 %i.fh to i64
  %i.fr = sext i32 %spec.select733 to i64         ; 2 uses
  %24 = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.fr
  %i.fs = sext i32 %i.fn to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.fs
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph807, %bb.ba
  %.1805 = phi i32 [ 1, %.lr.ph807 ], [ %i.lu, %bb.ba ] ; 4 uses
  %.2804 = phi double [ undef, %.lr.ph807 ], [ %.3, %bb.ba ] ; 3 uses
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  store double 1.000000e+00, ptr %16, align 8, !tbaa !9
  br i1 %.not711791, label %._crit_edge795.thread, label %.lr.ph794

.lr.ph794:                                        ; preds = %bb.al
  br i1 %i.fi, label %.lr.ph790.us, label %.loopexit754.preheader

.loopexit754.preheader:                           ; preds = %.lr.ph794
  %i.fu = load i32, ptr %24, align 4, !tbaa !8
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !8
  %i.fw = sub i32 %i.fv, %i.fu
  store i32 %i.fw, ptr %i.i, align 4, !tbaa !8
  br label %._crit_edge795.thread

.lr.ph790.us:                                     ; preds = %bb.at, %.lr.ph794
  %i.fx = phi i32 [ 0, %.lr.ph794 ], [ %i.ie, %bb.at ]
  %indvars.iv871 = phi i64 [ %23, %.lr.ph794 ], [ %indvars.iv.next872, %bb.at ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv871
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8  ; 11 uses
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1
  %i.ga = getelementptr [4 x i8], ptr %20, i64 %indvars.iv871
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8  ; 9 uses
  %i.gc = add nsw i32 %i.gb, -1                   ; 4 uses
  %i.gd = sub i32 %i.gb, %i.fz
  store i32 %i.gd, ptr %i.i, align 4, !tbaa !8
  %i.ge = mul i32 %i.fz, %i.fj
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gf
  %i.gh = mul nsw i32 %i.fz, %i.s                 ; 2 uses
  %i.gi = mul i32 %i.fz, %i.fk
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.gj
  %i.gl = mul nsw i32 %i.fz, %i.ab                ; 2 uses
  %i.gm = add nsw i32 %i.fz, -1
  %i.gn = sext i32 %i.gh to i64
  %i.go = getelementptr [8 x i8], ptr %i.u, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = sext i32 %i.gl to i64
  %i.gr = getelementptr [8 x i8], ptr %i.ad, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = icmp slt i64 %indvars.iv871, %i.fr      ; 2 uses
  %i.gu = mul nsw i32 %i.gb, %i.p
  %i.gv = add nsw i32 %i.gu, %i.fz
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gw
  %i.gy = mul nsw i32 %i.gb, %i.s
  %i.gz = mul nsw i32 %i.gb, %i.y
  %i.ha = add nsw i32 %i.gz, %i.fz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.hb
  %i.hd = mul nsw i32 %i.gb, %i.ab
  %i.he = sext i32 %i.fz to i64                   ; 2 uses
  %i.hf = sext i32 %i.gb to i64
  %.not712768.us = icmp slt i32 %i.fz, 2
  %.not713773.us.not = icmp slt i32 %i.fz, %i.gb
  br label %bb.am

bb.am:                                            ; preds = %.backedge927, %.lr.ph790.us
  %i.hg = phi i32 [ %i.fx, %.lr.ph790.us ], [ %i.ie, %.backedge927 ]
  %indvars.iv868 = phi i64 [ %i.fq, %.lr.ph790.us ], [ %indvars.iv868.be, %.backedge927 ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv868 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !8  ; 11 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8  ; 3 uses
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  %i.hm = sub i32 %i.hk, %i.hi
  store i32 %i.hm, ptr %i.h, align 4, !tbaa !8
  store i32 0, ptr %i.e, align 4, !tbaa !8
  %i.hn = mul nsw i32 %i.hi, %i.m                 ; 2 uses
  %i.ho = add nsw i32 %i.hn, %i.hi
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hp
  %i.hr = add nsw i32 %i.hi, %i.gh
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.hs ; 3 uses
  %i.hu = mul nsw i32 %i.hi, %i.v                 ; 2 uses
  %i.hv = add nsw i32 %i.hu, %i.hi
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.hw
  %i.hy = add nsw i32 %i.hi, %i.gl
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.hz ; 3 uses
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.hq, ptr noundef nonnull %5, ptr noundef %i.gg, ptr noundef nonnull %7, ptr noundef %i.ht, ptr noundef nonnull %9, ptr noundef %i.hx, ptr noundef nonnull %11, ptr noundef %i.gk, ptr noundef nonnull %13, ptr noundef %i.ia, ptr noundef nonnull %15, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %i.fm, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #5
  %i.ib = load i32, ptr %i.g, align 4, !tbaa !8   ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 %i.ib, ptr %21, align 4, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.id = load i32, ptr %i.e, align 4, !tbaa !8
  %i.ie = add nsw i32 %i.hg, %i.id                ; 3 uses
  %i.if = load double, ptr %i.l, align 8, !tbaa !9
  %i.ig = fcmp une double %i.if, 1.000000e+00
  br i1 %i.ig, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.gm, ptr %i.b, align 4, !tbaa !8
  br i1 %.not712768.us, label %._crit_edge772.us, label %.lr.ph771.us

.lr.ph771.us:                                     ; preds = %bb.ap, %.lr.ph771.us
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %.lr.ph771.us ], [ 1, %bb.ap ] ; 4 uses
  %i.ih = mul nsw i64 %indvars.iv856, %i.fo
  %i.ii = getelementptr [8 x i8], ptr %i.u, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.ij, ptr noundef nonnull @c__1) #5
  %i.ik = mul nsw i64 %indvars.iv856, %i.fp
  %i.il = getelementptr [8 x i8], ptr %i.ad, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.il, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.im, ptr noundef nonnull @c__1) #5
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1
  %i.in = load i32, ptr %i.b, align 4, !tbaa !8
  %i.io = sext i32 %i.in to i64
  %.not712.us.not = icmp slt i64 %indvars.iv856, %i.io
  br i1 %.not712.us.not, label %.lr.ph771.us, label %._crit_edge772.us, !llvm.loop !11

._crit_edge772.us:                                ; preds = %.lr.ph771.us, %bb.ap
  store i32 %i.gc, ptr %i.b, align 4, !tbaa !8
  br i1 %.not713773.us.not, label %.lr.ph776.us, label %._crit_edge782.us

bb.aq:                                            ; preds = %.lr.ph776.us, %bb.aq
  %indvars.iv859 = phi i64 [ %i.he, %.lr.ph776.us ], [ %indvars.iv.next860, %bb.aq ] ; 4 uses
  store i32 %i.kl, ptr %i.c, align 4, !tbaa !8
  %i.ip = mul nsw i64 %indvars.iv859, %i.fo
  %i.iq = getelementptr [8 x i8], ptr %i.u, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %i.ir, ptr noundef nonnull @c__1) #5
  store i32 %i.kl, ptr %i.c, align 4, !tbaa !8
  %i.is = mul nsw i64 %indvars.iv859, %i.fp
  %i.it = getelementptr [8 x i8], ptr %i.ad, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %i.iu, ptr noundef nonnull @c__1) #5
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, 1
  %i.iv = load i32, ptr %i.b, align 4, !tbaa !8
  %i.iw = sext i32 %i.iv to i64
  %.not713.us.not = icmp slt i64 %indvars.iv859, %i.iw
  br i1 %.not713.us.not, label %bb.aq, label %.lr.ph781.us.preheader, !llvm.loop !13

.lr.ph781.us.preheader:                           ; preds = %bb.aq
  store i32 %i.gc, ptr %i.b, align 4, !tbaa !8
  %i.ix = sext i32 %i.hk to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %i.ix
  %invariant.gep935 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ix
  br label %.lr.ph781.us

.lr.ph781.us:                                     ; preds = %.lr.ph781.us.preheader, %.lr.ph781.us
  %indvars.iv862 = phi i64 [ %i.he, %.lr.ph781.us.preheader ], [ %indvars.iv.next863, %.lr.ph781.us ] ; 4 uses
  %i.iy = load i32, ptr %2, align 4, !tbaa !8
  %i.iz = sub nsw i32 %i.iy, %i.hl
  store i32 %i.iz, ptr %i.c, align 4, !tbaa !8
  %i.ja = mul nsw i64 %indvars.iv862, %i.fo
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ja
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %gep, ptr noundef nonnull @c__1) #5
  %i.jb = load i32, ptr %2, align 4, !tbaa !8
  %i.jc = sub nsw i32 %i.jb, %i.hl
  store i32 %i.jc, ptr %i.c, align 4, !tbaa !8
  %i.jd = mul nsw i64 %indvars.iv862, %i.fp
  %gep936 = getelementptr [8 x i8], ptr %invariant.gep935, i64 %i.jd
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %gep936, ptr noundef nonnull @c__1) #5
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1
  %i.je = load i32, ptr %i.b, align 4, !tbaa !8
  %i.jf = sext i32 %i.je to i64
  %.not714.us.not = icmp slt i64 %indvars.iv862, %i.jf
  br i1 %.not714.us.not, label %.lr.ph781.us, label %._crit_edge782.us, !llvm.loop !14

._crit_edge782.us:                                ; preds = %.lr.ph781.us, %._crit_edge772.us
  %i.jg = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  store i32 %i.jg, ptr %i.b, align 4, !tbaa !8
  %.not715783.us = icmp sgt i32 %i.gb, %i.jg
  br i1 %.not715783.us, label %._crit_edge787.us, label %.lr.ph786.us

.lr.ph786.us:                                     ; preds = %._crit_edge782.us, %.lr.ph786.us
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %.lr.ph786.us ], [ %i.hf, %._crit_edge782.us ] ; 4 uses
  %i.jh = mul nsw i64 %indvars.iv865, %i.fo
  %i.ji = getelementptr [8 x i8], ptr %i.u, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.jj, ptr noundef nonnull @c__1) #5
  %i.jk = mul nsw i64 %indvars.iv865, %i.fp
  %i.jl = getelementptr [8 x i8], ptr %i.ad, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.jm, ptr noundef nonnull @c__1) #5
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, 1
  %i.jn = load i32, ptr %i.b, align 4, !tbaa !8
  %i.jo = sext i32 %i.jn to i64
  %.not715.us.not = icmp slt i64 %indvars.iv865, %i.jo
  br i1 %.not715.us.not, label %.lr.ph786.us, label %._crit_edge787.us, !llvm.loop !15

._crit_edge787.us:                                ; preds = %.lr.ph786.us, %._crit_edge782.us
  %i.jp = load double, ptr %i.l, align 8, !tbaa !9
  %i.jq = load double, ptr %16, align 8, !tbaa !9
  %i.jr = fmul double %i.jp, %i.jq
  store double %i.jr, ptr %16, align 8, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge787.us, %bb.ao
  %.not716.us = icmp eq i64 %indvars.iv868, 1
  br i1 %.not716.us, label %.thread925, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.js = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.js, ptr %i.b, align 4, !tbaa !8
  %i.jt = sext i32 %i.hn to i64
  %i.ju = getelementptr [8 x i8], ptr %i.o, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.ju, i64 8
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b51, ptr noundef %i.jv, ptr noundef nonnull %5, ptr noundef %i.ht, ptr noundef nonnull %9, ptr noundef nonnull @c_b52, ptr noundef %i.gp, ptr noundef nonnull %9) #5
  store i32 %i.js, ptr %i.b, align 4, !tbaa !8
  %i.jw = sext i32 %i.hu to i64
  %i.jx = getelementptr [8 x i8], ptr %i.x, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 8
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b51, ptr noundef %i.jy, ptr noundef nonnull %11, ptr noundef %i.ht, ptr noundef nonnull %9, ptr noundef nonnull @c_b52, ptr noundef %i.gs, ptr noundef nonnull %15) #5
  br i1 %i.gt, label %bb.at, label %.thread919

.thread925:                                       ; preds = %bb.ar
  br i1 %i.gt, label %bb.at, label %._crit_edge795

bb.at:                                            ; preds = %.thread925, %bb.as
  %i.jz = load i32, ptr %3, align 4, !tbaa !8
  %i.ka = sub nsw i32 %i.jz, %i.gc
  store i32 %i.ka, ptr %i.b, align 4, !tbaa !8
  %i.kb = add nsw i32 %i.hi, %i.gy
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.kc
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull @c_b52, ptr noundef %i.ia, ptr noundef nonnull %15, ptr noundef %i.gx, ptr noundef nonnull %7, ptr noundef nonnull @c_b52, ptr noundef %i.kd, ptr noundef nonnull %9) #5
  %i.ke = load i32, ptr %3, align 4, !tbaa !8
  %i.kf = sub nsw i32 %i.ke, %i.gc
  store i32 %i.kf, ptr %i.b, align 4, !tbaa !8
  %i.kg = add nsw i32 %i.hi, %i.hd
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.kh
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull @c_b52, ptr noundef %i.ia, ptr noundef nonnull %15, ptr noundef %i.hc, ptr noundef nonnull %13, ptr noundef nonnull @c_b52, ptr noundef %i.ki, ptr noundef nonnull %15) #5
  %i.kj = icmp sgt i64 %indvars.iv868, 1
  br i1 %i.kj, label %.backedge927, label %.lr.ph790.us

.backedge927:                                     ; preds = %bb.at, %.thread919
  %indvars.iv868.be = add nsw i64 %indvars.iv868, -1
  br label %bb.am, !llvm.loop !16

.thread919:                                       ; preds = %bb.as
  %i.kk = icmp sgt i64 %indvars.iv868, 1
end_hunk_0
