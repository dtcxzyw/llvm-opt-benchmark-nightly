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
  %i.m = load i32, ptr %5, align 4, !tbaa !19     ; 5 uses
  %narrow = xor i32 %i.m, -1
  %i.n = sext i32 %narrow to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %4, i64 %i.n ; 5 uses
  %i.p = load i32, ptr %7, align 4, !tbaa !19     ; 5 uses
  %narrow718 = xor i32 %i.p, -1
  %i.q = sext i32 %narrow718 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %6, i64 %i.q ; 5 uses
  %i.s = load i32, ptr %9, align 4, !tbaa !19     ; 6 uses
  %narrow719 = xor i32 %i.s, -1
  %i.t = sext i32 %narrow719 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %8, i64 %i.t ; 13 uses
  %i.v = load i32, ptr %11, align 4, !tbaa !19    ; 4 uses
  %narrow720 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow720 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %10, i64 %i.w ; 4 uses
  %i.y = load i32, ptr %13, align 4, !tbaa !19    ; 4 uses
  %narrow721 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow721 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %12, i64 %i.z ; 4 uses
  %i.ab = load i32, ptr %15, align 4, !tbaa !19   ; 7 uses
  %narrow722 = xor i32 %i.ab, -1
  %i.ac = sext i32 %narrow722 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ac ; 13 uses
  %i.ae = getelementptr inbounds i8, ptr %18, i64 -8 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %20, i64 -4 ; 11 uses
  store i32 0, ptr %21, align 4, !tbaa !19
  %i.ag = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.ah = load i32, ptr %19, align 4, !tbaa !19
  %i.ai = icmp eq i32 %i.ah, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ag, 0                    ; 5 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not698 = icmp eq i32 %i.aj, 0
  br i1 %.not698, label %.thread744.sink.split, label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.ak = load i32, ptr %1, align 4, !tbaa !19
  %or.cond724 = icmp ugt i32 %i.ak, 4
  br i1 %or.cond724, label %.thread744.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.pr = load i32, ptr %21, align 4, !tbaa !19    ; 2 uses
  %i.al = icmp eq i32 %.pr, 0
  br i1 %i.al, label %bb.d, label %.thread744

bb.d:                                             ; preds = %bb.c
  %i.am = load i32, ptr %2, align 4, !tbaa !19    ; 6 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread744.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %3, align 4, !tbaa !19    ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %.thread744.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %5, align 4, !tbaa !19
  %i.ar = icmp slt i32 %i.aq, %i.am
  br i1 %i.ar, label %.thread744.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %7, align 4, !tbaa !19
  %i.at = icmp slt i32 %i.as, %i.ao
  br i1 %i.at, label %.thread744.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %9, align 4, !tbaa !19
  %i.av = icmp slt i32 %i.au, %i.am
  br i1 %i.av, label %.thread744.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %11, align 4, !tbaa !19
  %i.ax = icmp slt i32 %i.aw, %i.am
  br i1 %i.ax, label %.thread744.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %13, align 4, !tbaa !19
  %i.az = icmp slt i32 %i.ay, %i.ao
  br i1 %i.az, label %.thread744.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %15, align 4, !tbaa !19
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %.thread744.sink.split, label %.thread

.thread:                                          ; preds = %bb.k
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bc = load i32, ptr %1, align 4, !tbaa !19
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
  store double %i.bg, ptr %18, align 8, !tbaa !21
  %i.bh = load i32, ptr %19, align 4, !tbaa !19
  %i.bi = icmp sge i32 %i.bh, %.0660
  %or.cond = select i1 %i.bi, i1 true, i1 %i.ai
  br i1 %or.cond, label %.thread739, label %.thread744.sink.split

.thread744.sink.split:                            ; preds = %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.critedge, %bb.b
  %.sink = phi i32 [ -2, %.critedge ], [ -4, %bb.e ], [ -8, %bb.g ], [ -12, %bb.i ], [ -14, %bb.j ], [ -10, %bb.h ], [ -6, %bb.f ], [ -3, %bb.d ], [ -1, %bb.b ], [ -16, %bb.k ], [ -20, %bb.n ] ; 2 uses
  store i32 %.sink, ptr %21, align 4, !tbaa !19
  br label %.thread744

.thread744:                                       ; preds = %.thread744.sink.split, %bb.c
  %i.bj = phi i32 [ %.pr, %bb.c ], [ %.sink, %.thread744.sink.split ]
  %i.bk = sub nsw i32 0, %i.bj
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !19
  %i.bl = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

.thread739:                                       ; preds = %bb.n
  br i1 %i.ai, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread739
  %i.bm = tail call i32 @ilaenv_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 4 uses
  store i32 %i.bm, ptr %i.h, align 4, !tbaa !19
  %i.bn = tail call i32 @ilaenv_(ptr noundef nonnull @c__5, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 4 uses
  store i32 %i.bn, ptr %i.i, align 4, !tbaa !19
  store i32 0, ptr %i.f, align 4, !tbaa !19
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 2
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bo, -2
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !19
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
  br i1 %or.cond3, label %.lr.ph849.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %2, align 4, !tbaa !19    ; 3 uses
  %.not700 = icmp slt i32 %i.bm, %i.bw
  br i1 %.not700, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %3, align 4, !tbaa !19
  %.not701 = icmp slt i32 %i.bn, %i.bx
  br i1 %.not701, label %bb.ai, label %.lr.ph849.preheader

.lr.ph849.preheader:                              ; preds = %bb.u, %bb.s
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !21
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !19
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %20, ptr noundef nonnull %i.k, ptr noundef nonnull %21) #5
  %i.by = load double, ptr %i.j, align 8, !tbaa !21 ; 2 uses
  %i.bz = fcmp une double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.lr.ph849.preheader
  %i.ca = load i32, ptr %1, align 4, !tbaa !19
  switch i32 %i.ca, label %bb.x [
    i32 1, label %bb.w
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cb = load i32, ptr %2, align 4, !tbaa !19
  %i.cc = shl i32 %i.cb, 1
  %i.cd = load i32, ptr %3, align 4, !tbaa !19
  %i.ce = mul nsw i32 %i.cc, %i.cd
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %i.cf = load i32, ptr %i.k, align 4, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.sink949 = phi i32 [ %i.cf, %bb.x ], [ %i.ce, %bb.w ]
  %i.cg = sitofp i32 %.sink949 to double
  %i.ch = call double @sqrt(double noundef %i.cg) #5
  %i.ci = load double, ptr %i.d, align 8, !tbaa !21
  %i.cj = call double @sqrt(double noundef %i.ci) #5
  %i.ck = fmul double %i.by, %i.cj
  %i.cl = fdiv double %i.ch, %i.ck
  store double %i.cl, ptr %17, align 8, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %.lr.ph849.preheader
  br i1 %i.bs, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.cm, ptr %i.f, align 4, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cn = load double, ptr %16, align 8, !tbaa !21
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef nonnull %2) #5
  %i.co = load i32, ptr %2, align 4, !tbaa !19
  %i.cp = load i32, ptr %3, align 4, !tbaa !19
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
  br i1 %.not717.not.peel, label %.lr.ph849, label %.loopexit

.lr.ph849:                                        ; preds = %bb.ac
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !21
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !19
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %20, ptr noundef nonnull %i.k, ptr noundef nonnull %21) #5
  %i.cu = load double, ptr %i.j, align 8, !tbaa !21 ; 2 uses
  %i.cv = fcmp une double %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.lr.ph849
  %i.cw = load i32, ptr %1, align 4, !tbaa !19
  switch i32 %i.cw, label %bb.af [
    i32 1, label %bb.ae
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.cx = load i32, ptr %2, align 4, !tbaa !19
  %i.cy = shl i32 %i.cx, 1
  %i.cz = load i32, ptr %3, align 4, !tbaa !19
  %i.da = mul nsw i32 %i.cy, %i.cz
  br label %.sink.split950

bb.af:                                            ; preds = %bb.ad
  %i.db = load i32, ptr %i.k, align 4, !tbaa !19
  br label %.sink.split950

.sink.split950:                                   ; preds = %bb.ae, %bb.af
  %.sink957 = phi i32 [ %i.db, %bb.af ], [ %i.da, %bb.ae ]
  %i.dc = sitofp i32 %.sink957 to double
  %i.dd = call double @sqrt(double noundef %i.dc) #5
  %i.de = load double, ptr %i.d, align 8, !tbaa !21
  %i.df = call double @sqrt(double noundef %i.de) #5
  %i.dg = fmul double %i.cu, %i.df
  %i.dh = fdiv double %i.dd, %i.dg
  store double %i.dh, ptr %17, align 8, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split950, %.lr.ph849
  br i1 %i.bs, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef %8, ptr noundef nonnull %9) #5
  %i.di = load i32, ptr %2, align 4, !tbaa !19
  %i.dj = load i32, ptr %3, align 4, !tbaa !19
  %i.dk = mul nsw i32 %i.dj, %i.di
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.ae, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.dn, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull %15) #5
  store double %.1659.peel, ptr %16, align 8, !tbaa !21
  br label %.loopexit

bb.ai:                                            ; preds = %bb.u, %bb.t
  %i.do = icmp slt i32 %i.bw, 1
  br i1 %i.do, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.ai
  %.pre = load i32, ptr %i.af, align 4, !tbaa !19
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %.0676758 = phi i32 [ %spec.select732, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %20, i64 %indvars.iv
  store i32 %.0676758, ptr %i.dp, align 4, !tbaa !19
  %i.dq = add nsw i32 %.0676758, %i.bm            ; 4 uses
  %i.dr = load i32, ptr %2, align 4, !tbaa !19    ; 3 uses
  %.not702 = icmp slt i32 %i.dq, %i.dr
  br i1 %.not702, label %bb.aj, label %._crit_edge.loopexit

bb.aj:                                            ; preds = %.lr.ph
  %i.ds = add nsw i32 %i.dq, -1
  %i.dt = mul nsw i32 %i.ds, %i.m
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !21
  %i.dy = fcmp une double %i.dx, 0.000000e+00
  %i.dz = zext i1 %i.dy to i32
  %spec.select732 = add nsw i32 %i.dq, %i.dz      ; 2 uses
  %i.ea = icmp sgt i32 %spec.select732, %i.dr
  br i1 %i.ea, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.aj
  %i.eb = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %22 = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %.0676758, %._crit_edge.loopexit ]
  %i.ec = phi i32 [ %i.bw, %.._crit_edge_crit_edge ], [ %i.dr, %._crit_edge.loopexit ]
  %.1666 = phi i32 [ 0, %.._crit_edge_crit_edge ], [ %i.eb, %._crit_edge.loopexit ] ; 2 uses
  %i.ed = add nsw i32 %i.ec, 1                    ; 2 uses
  %i.ee = sext i32 %.1666 to i64
  %i.ef = getelementptr [4 x i8], ptr %i.af, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !19
  %i.eh = icmp eq i32 %22, %i.ed
  %i.ei = sext i1 %i.eh to i32
  %spec.select733 = add i32 %.1666, %i.ei         ; 7 uses
  %i.ej = add i32 %spec.select733, 1              ; 2 uses
  %i.ek = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.el = icmp slt i32 %i.ek, 1
  %.phi.trans.insert = sext i32 %i.ej to i64      ; 3 uses
  br i1 %i.el, label %._crit_edge.._crit_edge766_crit_edge, label %.lr.ph765

._crit_edge.._crit_edge766_crit_edge:             ; preds = %._crit_edge
  %.phi.trans.insert898 = getelementptr [4 x i8], ptr %i.af, i64 %.phi.trans.insert
  %.pre899 = load i32, ptr %.phi.trans.insert898, align 4, !tbaa !19
  br label %._crit_edge766

.lr.ph765:                                        ; preds = %._crit_edge, %bb.ak
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %bb.ak ], [ %.phi.trans.insert, %._crit_edge ] ; 2 uses
  %.0672762 = phi i32 [ %spec.select734, %bb.ak ], [ 1, %._crit_edge ] ; 3 uses
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, 1 ; 3 uses
  %i.em = getelementptr [4 x i8], ptr %20, i64 %indvars.iv855
  store i32 %.0672762, ptr %i.em, align 4, !tbaa !19
  %i.en = add nsw i32 %.0672762, %i.bn            ; 4 uses
  %i.eo = load i32, ptr %3, align 4, !tbaa !19    ; 3 uses
  %.not703 = icmp slt i32 %i.en, %i.eo
  br i1 %.not703, label %bb.ak, label %._crit_edge766.loopexit

bb.ak:                                            ; preds = %.lr.ph765
  %i.ep = add nsw i32 %i.en, -1
  %i.eq = mul nsw i32 %i.ep, %i.p
  %i.er = add nsw i32 %i.eq, %i.en
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !21
  %i.ev = fcmp une double %i.eu, 0.000000e+00
  %i.ew = zext i1 %i.ev to i32
  %spec.select734 = add nsw i32 %i.en, %i.ew      ; 2 uses
  %i.ex = icmp sgt i32 %spec.select734, %i.eo
  br i1 %i.ex, label %._crit_edge766.loopexit, label %.lr.ph765

._crit_edge766.loopexit:                          ; preds = %.lr.ph765, %bb.ak
  %i.ey = trunc nsw i64 %indvars.iv.next856 to i32
  br label %._crit_edge766

._crit_edge766:                                   ; preds = %._crit_edge766.loopexit, %._crit_edge.._crit_edge766_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge.._crit_edge766_crit_edge ], [ %indvars.iv.next856, %._crit_edge766.loopexit ]
  %23 = phi i32 [ %.pre899, %._crit_edge.._crit_edge766_crit_edge ], [ %.0672762, %._crit_edge766.loopexit ]
  %i.ez = phi i32 [ %i.ek, %._crit_edge.._crit_edge766_crit_edge ], [ %i.eo, %._crit_edge766.loopexit ]
  %.1663 = phi i32 [ %i.ej, %._crit_edge.._crit_edge766_crit_edge ], [ %i.ey, %._crit_edge766.loopexit ]
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.af, i64 %.pre-phi
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !19
  %i.fd = icmp eq i32 %23, %i.fa
  %i.fe = sext i1 %i.fd to i32
  %spec.select735 = add i32 %.1663, %i.fe         ; 5 uses
  br i1 %.not, label %bb.bb, label %.lr.ph809

.lr.ph809:                                        ; preds = %._crit_edge766
  %i.ff = add nsw i32 %spec.select733, 2          ; 2 uses
  %.not711793 = icmp sgt i32 %i.ff, %spec.select735
  %i.fg = icmp sgt i32 %spec.select733, 0
  %i.fh = add i32 %i.p, 1
  %i.fi = add i32 %i.y, 1
  %i.fj = sext i32 %spec.select735 to i64         ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.af, i64 %i.fj ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %i.fm = add i32 %spec.select735, 1
  %i.fn = sext i32 %i.s to i64                    ; 4 uses
  %i.fo = sext i32 %i.ab to i64                   ; 4 uses
  %i.fp = zext i32 %spec.select733 to i64
  %i.fq = sext i32 %i.ff to i64
  %i.fr = sext i32 %i.fm to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.fr
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph809, %bb.ba
  %.1807 = phi i32 [ 1, %.lr.ph809 ], [ %i.lt, %bb.ba ] ; 4 uses
  %.2806 = phi double [ undef, %.lr.ph809 ], [ %.3, %bb.ba ] ; 3 uses
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !21
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !21
  store double 1.000000e+00, ptr %16, align 8, !tbaa !21
  br i1 %.not711793, label %._crit_edge797.thread, label %.lr.ph796

.lr.ph796:                                        ; preds = %bb.al
  br i1 %i.fg, label %.lr.ph792.us, label %.loopexit756.preheader

.loopexit756.preheader:                           ; preds = %.lr.ph796
  %i.ft = load i32, ptr %i.fk, align 4, !tbaa !19
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !19
  %i.fv = sub i32 %i.fu, %i.ft
  store i32 %i.fv, ptr %i.i, align 4, !tbaa !19
  br label %._crit_edge797.thread

.lr.ph792.us:                                     ; preds = %bb.at, %.lr.ph796
  %i.fw = phi i32 [ 0, %.lr.ph796 ], [ %i.id, %bb.at ]
  %indvars.iv873 = phi i64 [ %i.fq, %.lr.ph796 ], [ %indvars.iv.next874, %bb.at ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv873
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !19 ; 11 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1
  %i.fz = getelementptr [4 x i8], ptr %20, i64 %indvars.iv873
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19 ; 9 uses
  %i.gb = add nsw i32 %i.ga, -1                   ; 4 uses
  %i.gc = sub i32 %i.ga, %i.fy
  store i32 %i.gc, ptr %i.i, align 4, !tbaa !19
  %i.gd = mul i32 %i.fy, %i.fh
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ge
  %i.gg = mul nsw i32 %i.fy, %i.s                 ; 2 uses
  %i.gh = mul i32 %i.fy, %i.fi
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.gi
  %i.gk = mul nsw i32 %i.fy, %i.ab                ; 2 uses
  %i.gl = add nsw i32 %i.fy, -1
  %i.gm = sext i32 %i.gg to i64
  %i.gn = getelementptr [8 x i8], ptr %i.u, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = sext i32 %i.gk to i64
  %i.gq = getelementptr [8 x i8], ptr %i.ad, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = icmp slt i64 %indvars.iv873, %i.fj      ; 2 uses
  %i.gt = mul nsw i32 %i.ga, %i.p
  %i.gu = add nsw i32 %i.gt, %i.fy
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gv
  %i.gx = mul nsw i32 %i.ga, %i.s
  %i.gy = mul nsw i32 %i.ga, %i.y
  %i.gz = add nsw i32 %i.gy, %i.fy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ha
  %i.hc = mul nsw i32 %i.ga, %i.ab
  %i.hd = sext i32 %i.fy to i64                   ; 2 uses
  %i.he = sext i32 %i.ga to i64
  %.not712770.us = icmp slt i32 %i.fy, 2
  %.not713775.us.not = icmp slt i32 %i.fy, %i.ga
  br label %bb.am

bb.am:                                            ; preds = %.backedge929, %.lr.ph792.us
  %i.hf = phi i32 [ %i.fw, %.lr.ph792.us ], [ %i.id, %.backedge929 ]
  %indvars.iv870 = phi i64 [ %i.fp, %.lr.ph792.us ], [ %indvars.iv870.be, %.backedge929 ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv870 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !19 ; 11 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !19 ; 3 uses
  %i.hk = add nsw i32 %i.hj, -1                   ; 2 uses
  %i.hl = sub i32 %i.hj, %i.hh
  store i32 %i.hl, ptr %i.h, align 4, !tbaa !19
  store i32 0, ptr %i.e, align 4, !tbaa !19
  %i.hm = mul nsw i32 %i.hh, %i.m                 ; 2 uses
  %i.hn = add nsw i32 %i.hm, %i.hh
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ho
  %i.hq = add nsw i32 %i.hh, %i.gg
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.hr ; 3 uses
  %i.ht = mul nsw i32 %i.hh, %i.v                 ; 2 uses
  %i.hu = add nsw i32 %i.ht, %i.hh
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.hv
  %i.hx = add nsw i32 %i.hh, %i.gk
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.hy ; 3 uses
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.hp, ptr noundef nonnull %5, ptr noundef %i.gf, ptr noundef nonnull %7, ptr noundef %i.hs, ptr noundef nonnull %9, ptr noundef %i.hw, ptr noundef nonnull %11, ptr noundef %i.gj, ptr noundef nonnull %13, ptr noundef %i.hz, ptr noundef nonnull %15, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %i.fl, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #5
  %i.ia = load i32, ptr %i.g, align 4, !tbaa !19  ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 %i.ia, ptr %21, align 4, !tbaa !19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ic = load i32, ptr %i.e, align 4, !tbaa !19
  %i.id = add nsw i32 %i.hf, %i.ic                ; 3 uses
  %i.ie = load double, ptr %i.l, align 8, !tbaa !21
  %i.if = fcmp une double %i.ie, 1.000000e+00
  br i1 %i.if, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.gl, ptr %i.b, align 4, !tbaa !19
  br i1 %.not712770.us, label %._crit_edge774.us, label %.lr.ph773.us

.lr.ph773.us:                                     ; preds = %bb.ap, %.lr.ph773.us
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %.lr.ph773.us ], [ 1, %bb.ap ] ; 4 uses
  %i.ig = mul nsw i64 %indvars.iv858, %i.fn
  %i.ih = getelementptr [8 x i8], ptr %i.u, i64 %i.ig
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.ii, ptr noundef nonnull @c__1) #5
  %i.ij = mul nsw i64 %indvars.iv858, %i.fo
  %i.ik = getelementptr [8 x i8], ptr %i.ad, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.il, ptr noundef nonnull @c__1) #5
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1
  %i.im = load i32, ptr %i.b, align 4, !tbaa !19
  %i.in = sext i32 %i.im to i64
  %.not712.us.not = icmp slt i64 %indvars.iv858, %i.in
  br i1 %.not712.us.not, label %.lr.ph773.us, label %._crit_edge774.us, !llvm.loop !8

._crit_edge774.us:                                ; preds = %.lr.ph773.us, %bb.ap
  store i32 %i.gb, ptr %i.b, align 4, !tbaa !19
  br i1 %.not713775.us.not, label %.lr.ph778.us, label %._crit_edge784.us

bb.aq:                                            ; preds = %.lr.ph778.us, %bb.aq
  %indvars.iv861 = phi i64 [ %i.hd, %.lr.ph778.us ], [ %indvars.iv.next862, %bb.aq ] ; 4 uses
  store i32 %i.kk, ptr %i.c, align 4, !tbaa !19
  %i.io = mul nsw i64 %indvars.iv861, %i.fn
  %i.ip = getelementptr [8 x i8], ptr %i.u, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %i.iq, ptr noundef nonnull @c__1) #5
  store i32 %i.kk, ptr %i.c, align 4, !tbaa !19
  %i.ir = mul nsw i64 %indvars.iv861, %i.fo
  %i.is = getelementptr [8 x i8], ptr %i.ad, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 8
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %i.it, ptr noundef nonnull @c__1) #5
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, 1
  %i.iu = load i32, ptr %i.b, align 4, !tbaa !19
  %i.iv = sext i32 %i.iu to i64
  %.not713.us.not = icmp slt i64 %indvars.iv861, %i.iv
  br i1 %.not713.us.not, label %bb.aq, label %.lr.ph783.us.preheader, !llvm.loop !9

.lr.ph783.us.preheader:                           ; preds = %bb.aq
  store i32 %i.gb, ptr %i.b, align 4, !tbaa !19
  %i.iw = sext i32 %i.hj to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %i.iw
  %invariant.gep937 = getelementptr [8 x i8], ptr %i.ad, i64 %i.iw
  br label %.lr.ph783.us

.lr.ph783.us:                                     ; preds = %.lr.ph783.us.preheader, %.lr.ph783.us
  %indvars.iv864 = phi i64 [ %i.hd, %.lr.ph783.us.preheader ], [ %indvars.iv.next865, %.lr.ph783.us ] ; 4 uses
  %i.ix = load i32, ptr %2, align 4, !tbaa !19
  %i.iy = sub nsw i32 %i.ix, %i.hk
  store i32 %i.iy, ptr %i.c, align 4, !tbaa !19
  %i.iz = mul nsw i64 %indvars.iv864, %i.fn
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.iz
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %gep, ptr noundef nonnull @c__1) #5
  %i.ja = load i32, ptr %2, align 4, !tbaa !19
  %i.jb = sub nsw i32 %i.ja, %i.hk
  store i32 %i.jb, ptr %i.c, align 4, !tbaa !19
  %i.jc = mul nsw i64 %indvars.iv864, %i.fo
  %gep938 = getelementptr [8 x i8], ptr %invariant.gep937, i64 %i.jc
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %gep938, ptr noundef nonnull @c__1) #5
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, 1
  %i.jd = load i32, ptr %i.b, align 4, !tbaa !19
  %i.je = sext i32 %i.jd to i64
  %.not714.us.not = icmp slt i64 %indvars.iv864, %i.je
  br i1 %.not714.us.not, label %.lr.ph783.us, label %._crit_edge784.us, !llvm.loop !10

._crit_edge784.us:                                ; preds = %.lr.ph783.us, %._crit_edge774.us
  %i.jf = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  store i32 %i.jf, ptr %i.b, align 4, !tbaa !19
  %.not715785.us = icmp sgt i32 %i.ga, %i.jf
  br i1 %.not715785.us, label %._crit_edge789.us, label %.lr.ph788.us

.lr.ph788.us:                                     ; preds = %._crit_edge784.us, %.lr.ph788.us
end_hunk_0
