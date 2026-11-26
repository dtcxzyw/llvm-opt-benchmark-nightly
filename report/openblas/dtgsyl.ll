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
  %i.m = load i32, ptr %5, align 4, !tbaa !20     ; 5 uses
  %narrow = xor i32 %i.m, -1
  %i.n = sext i32 %narrow to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %4, i64 %i.n ; 5 uses
  %i.p = load i32, ptr %7, align 4, !tbaa !20     ; 5 uses
  %narrow718 = xor i32 %i.p, -1
  %i.q = sext i32 %narrow718 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %6, i64 %i.q ; 5 uses
  %i.s = load i32, ptr %9, align 4, !tbaa !20     ; 6 uses
  %narrow719 = xor i32 %i.s, -1
  %i.t = sext i32 %narrow719 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %8, i64 %i.t ; 13 uses
  %i.v = load i32, ptr %11, align 4, !tbaa !20    ; 4 uses
  %narrow720 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow720 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %10, i64 %i.w ; 4 uses
  %i.y = load i32, ptr %13, align 4, !tbaa !20    ; 4 uses
  %narrow721 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow721 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %12, i64 %i.z ; 4 uses
  %i.ab = load i32, ptr %15, align 4, !tbaa !20   ; 7 uses
  %narrow722 = xor i32 %i.ab, -1
  %i.ac = sext i32 %narrow722 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ac ; 13 uses
  %i.ae = getelementptr inbounds i8, ptr %18, i64 -8 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %20, i64 -4 ; 11 uses
  store i32 0, ptr %21, align 4, !tbaa !20
  %i.ag = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.ah = load i32, ptr %19, align 4, !tbaa !20
  %i.ai = icmp eq i32 %i.ah, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ag, 0                    ; 5 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not698 = icmp eq i32 %i.aj, 0
  br i1 %.not698, label %.thread744.sink.split, label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.ak = load i32, ptr %1, align 4, !tbaa !20
  %or.cond724 = icmp ugt i32 %i.ak, 4
  br i1 %or.cond724, label %.thread744.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.pr = load i32, ptr %21, align 4, !tbaa !20    ; 2 uses
  %i.al = icmp eq i32 %.pr, 0
  br i1 %i.al, label %bb.d, label %.thread744

bb.d:                                             ; preds = %bb.c
  %i.am = load i32, ptr %2, align 4, !tbaa !20    ; 6 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread744.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %3, align 4, !tbaa !20    ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %.thread744.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %5, align 4, !tbaa !20
  %i.ar = icmp slt i32 %i.aq, %i.am
  br i1 %i.ar, label %.thread744.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %7, align 4, !tbaa !20
  %i.at = icmp slt i32 %i.as, %i.ao
  br i1 %i.at, label %.thread744.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %9, align 4, !tbaa !20
  %i.av = icmp slt i32 %i.au, %i.am
  br i1 %i.av, label %.thread744.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %11, align 4, !tbaa !20
  %i.ax = icmp slt i32 %i.aw, %i.am
  br i1 %i.ax, label %.thread744.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %13, align 4, !tbaa !20
  %i.az = icmp slt i32 %i.ay, %i.ao
  br i1 %i.az, label %.thread744.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %15, align 4, !tbaa !20
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %.thread744.sink.split, label %.thread

.thread:                                          ; preds = %bb.k
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bc = load i32, ptr %1, align 4, !tbaa !20
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
  store double %i.bg, ptr %18, align 8, !tbaa !22
  %i.bh = load i32, ptr %19, align 4, !tbaa !20
  %i.bi = icmp sge i32 %i.bh, %.0660
  %or.cond = select i1 %i.bi, i1 true, i1 %i.ai
  br i1 %or.cond, label %.thread739, label %.thread744.sink.split

.thread744.sink.split:                            ; preds = %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.critedge, %bb.b
  %.sink = phi i32 [ -2, %.critedge ], [ -4, %bb.e ], [ -8, %bb.g ], [ -12, %bb.i ], [ -14, %bb.j ], [ -10, %bb.h ], [ -6, %bb.f ], [ -3, %bb.d ], [ -1, %bb.b ], [ -16, %bb.k ], [ -20, %bb.n ] ; 2 uses
  store i32 %.sink, ptr %21, align 4, !tbaa !20
  br label %.thread744

.thread744:                                       ; preds = %.thread744.sink.split, %bb.c
  %i.bj = phi i32 [ %.pr, %bb.c ], [ %.sink, %.thread744.sink.split ]
  %i.bk = sub nsw i32 0, %i.bj
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !20
  %i.bl = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

.thread739:                                       ; preds = %bb.n
  br i1 %i.ai, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread739
  %i.bm = tail call i32 @ilaenv_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 4 uses
  store i32 %i.bm, ptr %i.h, align 4, !tbaa !20
  %i.bn = tail call i32 @ilaenv_(ptr noundef nonnull @c__5, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 4 uses
  store i32 %i.bn, ptr %i.i, align 4, !tbaa !20
  store i32 0, ptr %i.f, align 4, !tbaa !20
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %1, align 4, !tbaa !20    ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 2
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bo, -2
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !20
  tail call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %8, ptr noundef nonnull %9) #5
  tail call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %14, ptr noundef nonnull %15) #5
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.br = icmp sgt i32 %i.bo, 0                   ; 2 uses
  %spec.select731 = select i1 %i.br, i32 2, i32 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.bs = phi i1 [ false, %bb.q ], [ false, %bb.o ], [ %i.br, %bb.r ] ; 4 uses
  %.0 = phi i32 [ 1, %bb.q ], [ 1, %bb.o ], [ %spec.select731, %bb.r ] ; 2 uses
  %i.bt = icmp slt i32 %i.bm, 2
  %i.bu = icmp slt i32 %i.bn, 2
  %or.cond3 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond3, label %.lr.ph856.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %2, align 4, !tbaa !20    ; 3 uses
  %.not700 = icmp slt i32 %i.bm, %i.bv
  br i1 %.not700, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = load i32, ptr %3, align 4, !tbaa !20
  %.not701 = icmp slt i32 %i.bn, %i.bw
  br i1 %.not701, label %bb.ai, label %.lr.ph856.preheader

.lr.ph856.preheader:                              ; preds = %bb.u, %bb.s
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !22
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !22
  store i32 0, ptr %i.k, align 4, !tbaa !20
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %20, ptr noundef nonnull %i.k, ptr noundef nonnull %21) #5
  %i.bx = load double, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %i.by = fcmp une double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.lr.ph856.preheader
  %i.bz = load i32, ptr %1, align 4, !tbaa !20
  switch i32 %i.bz, label %bb.x [
    i32 1, label %bb.w
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.ca = load i32, ptr %2, align 4, !tbaa !20
  %i.cb = shl i32 %i.ca, 1
  %i.cc = load i32, ptr %3, align 4, !tbaa !20
  %i.cd = mul nsw i32 %i.cb, %i.cc
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.k, align 4, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.sink957 = phi i32 [ %i.ce, %bb.x ], [ %i.cd, %bb.w ]
  %i.cf = sitofp i32 %.sink957 to double
  %i.cg = call double @sqrt(double noundef %i.cf) #5
  %i.ch = load double, ptr %i.d, align 8, !tbaa !22
  %i.ci = call double @sqrt(double noundef %i.ch) #5
  %i.cj = fmul double %i.bx, %i.ci
  %i.ck = fdiv double %i.cg, %i.cj
  store double %i.ck, ptr %17, align 8, !tbaa !22
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %.lr.ph856.preheader
  br i1 %i.bs, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i32, ptr %1, align 4, !tbaa !20
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cm = load double, ptr %16, align 8, !tbaa !22
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef nonnull %2) #5
  %i.cn = load i32, ptr %2, align 4, !tbaa !20
  %i.co = load i32, ptr %3, align 4, !tbaa !20
  %i.cp = mul nsw i32 %i.co, %i.cn
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr %i.ae, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %i.cs, ptr noundef nonnull %2) #5
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %8, ptr noundef nonnull %9) #5
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %14, ptr noundef nonnull %15) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %.1659.peel = phi double [ %i.cm, %bb.ab ], [ undef, %bb.y ]
  %exitcond902.peel.not = icmp eq i32 %.0, 1
  br i1 %exitcond902.peel.not, label %.loopexit, label %.lr.ph856

.lr.ph856:                                        ; preds = %bb.ac
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !22
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !22
  store i32 0, ptr %i.k, align 4, !tbaa !20
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %20, ptr noundef nonnull %i.k, ptr noundef nonnull %21) #5
  %i.ct = load double, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %i.cu = fcmp une double %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.lr.ph856
  %i.cv = load i32, ptr %1, align 4, !tbaa !20
  switch i32 %i.cv, label %bb.af [
    i32 1, label %bb.ae
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.cw = load i32, ptr %2, align 4, !tbaa !20
  %i.cx = shl i32 %i.cw, 1
  %i.cy = load i32, ptr %3, align 4, !tbaa !20
  %i.cz = mul nsw i32 %i.cx, %i.cy
  br label %.sink.split958

bb.af:                                            ; preds = %bb.ad
  %i.da = load i32, ptr %i.k, align 4, !tbaa !20
  br label %.sink.split958

.sink.split958:                                   ; preds = %bb.ae, %bb.af
  %.sink965 = phi i32 [ %i.da, %bb.af ], [ %i.cz, %bb.ae ]
  %i.db = sitofp i32 %.sink965 to double
  %i.dc = call double @sqrt(double noundef %i.db) #5
  %i.dd = load double, ptr %i.d, align 8, !tbaa !22
  %i.de = call double @sqrt(double noundef %i.dd) #5
  %i.df = fmul double %i.ct, %i.de
  %i.dg = fdiv double %i.dc, %i.df
  store double %i.dg, ptr %17, align 8, !tbaa !22
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split958, %.lr.ph856
  br i1 %i.bs, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef %8, ptr noundef nonnull %9) #5
  %i.dh = load i32, ptr %2, align 4, !tbaa !20
  %i.di = load i32, ptr %3, align 4, !tbaa !20
  %i.dj = mul nsw i32 %i.di, %i.dh
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.ae, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.dm, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull %15) #5
  store double %.1659.peel, ptr %16, align 8, !tbaa !22
  br label %.loopexit

bb.ai:                                            ; preds = %bb.u, %bb.t
  %i.dn = icmp slt i32 %i.bv, 1
  br i1 %i.dn, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.ai
  %.pre = load i32, ptr %i.af, align 4, !tbaa !20
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %.0676758 = phi i32 [ %spec.select732, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %20, i64 %indvars.iv
  store i32 %.0676758, ptr %i.do, align 4, !tbaa !20
  %i.dp = add nsw i32 %.0676758, %i.bm            ; 4 uses
  %i.dq = load i32, ptr %2, align 4, !tbaa !20    ; 3 uses
  %.not702 = icmp slt i32 %i.dp, %i.dq
  br i1 %.not702, label %bb.aj, label %._crit_edge.loopexit

bb.aj:                                            ; preds = %.lr.ph
  %i.dr = add nsw i32 %i.dp, -1
  %i.ds = mul nsw i32 %i.dr, %i.m
  %i.dt = add nsw i32 %i.ds, %i.dp
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !22
  %i.dx = fcmp une double %i.dw, 0.000000e+00
  %i.dy = zext i1 %i.dx to i32
  %spec.select732 = add nsw i32 %i.dp, %i.dy      ; 2 uses
  %i.dz = icmp sgt i32 %spec.select732, %i.dq
  br i1 %i.dz, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.aj
  %i.ea = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %22 = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %.0676758, %._crit_edge.loopexit ]
  %i.eb = phi i32 [ %i.bv, %.._crit_edge_crit_edge ], [ %i.dq, %._crit_edge.loopexit ]
  %.1666 = phi i32 [ 0, %.._crit_edge_crit_edge ], [ %i.ea, %._crit_edge.loopexit ] ; 2 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 2 uses
  %i.ed = sext i32 %.1666 to i64
  %i.ee = getelementptr [4 x i8], ptr %i.af, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !20
  %i.eg = icmp eq i32 %22, %i.ec
  %i.eh = sext i1 %i.eg to i32
  %spec.select733 = add i32 %.1666, %i.eh         ; 7 uses
  %i.ei = add i32 %spec.select733, 1              ; 3 uses
  %i.ej = load i32, ptr %3, align 4, !tbaa !20    ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 1
  %.phi.trans.insert = sext i32 %i.ei to i64      ; 3 uses
  br i1 %i.ek, label %._crit_edge.._crit_edge766_crit_edge, label %.lr.ph765

._crit_edge.._crit_edge766_crit_edge:             ; preds = %._crit_edge
  %.phi.trans.insert907 = getelementptr [4 x i8], ptr %i.af, i64 %.phi.trans.insert
  %.pre908 = load i32, ptr %.phi.trans.insert907, align 4, !tbaa !20
  br label %._crit_edge766

.lr.ph765:                                        ; preds = %._crit_edge, %bb.ak
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %bb.ak ], [ %.phi.trans.insert, %._crit_edge ] ; 2 uses
  %.0672762 = phi i32 [ %spec.select734, %bb.ak ], [ 1, %._crit_edge ] ; 3 uses
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 3 uses
  %i.el = getelementptr [4 x i8], ptr %20, i64 %indvars.iv862
  store i32 %.0672762, ptr %i.el, align 4, !tbaa !20
  %i.em = add nsw i32 %.0672762, %i.bn            ; 4 uses
  %i.en = load i32, ptr %3, align 4, !tbaa !20    ; 3 uses
  %.not703 = icmp slt i32 %i.em, %i.en
  br i1 %.not703, label %bb.ak, label %._crit_edge766.loopexit

bb.ak:                                            ; preds = %.lr.ph765
  %i.eo = add nsw i32 %i.em, -1
  %i.ep = mul nsw i32 %i.eo, %i.p
  %i.eq = add nsw i32 %i.ep, %i.em
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !22
  %i.eu = fcmp une double %i.et, 0.000000e+00
  %i.ev = zext i1 %i.eu to i32
  %spec.select734 = add nsw i32 %i.em, %i.ev      ; 2 uses
  %i.ew = icmp sgt i32 %spec.select734, %i.en
  br i1 %i.ew, label %._crit_edge766.loopexit, label %.lr.ph765

._crit_edge766.loopexit:                          ; preds = %.lr.ph765, %bb.ak
  %i.ex = trunc nsw i64 %indvars.iv.next863 to i32
  br label %._crit_edge766

._crit_edge766:                                   ; preds = %._crit_edge766.loopexit, %._crit_edge.._crit_edge766_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge.._crit_edge766_crit_edge ], [ %indvars.iv.next863, %._crit_edge766.loopexit ]
  %23 = phi i32 [ %.pre908, %._crit_edge.._crit_edge766_crit_edge ], [ %.0672762, %._crit_edge766.loopexit ]
  %i.ey = phi i32 [ %i.ej, %._crit_edge.._crit_edge766_crit_edge ], [ %i.en, %._crit_edge766.loopexit ]
  %.1663 = phi i32 [ %i.ei, %._crit_edge.._crit_edge766_crit_edge ], [ %i.ex, %._crit_edge766.loopexit ]
  %i.ez = add nsw i32 %i.ey, 1                    ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.af, i64 %.pre-phi
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !20
  %i.fc = icmp eq i32 %23, %i.ez
  %i.fd = sext i1 %i.fc to i32
  %spec.select735 = add i32 %.1663, %i.fd         ; 5 uses
  br i1 %.not, label %bb.bb, label %.lr.ph815

.lr.ph815:                                        ; preds = %._crit_edge766
  %i.fe = add nsw i32 %spec.select733, 2          ; 2 uses
  %.not711796 = icmp sgt i32 %i.fe, %spec.select735
  %i.ff = icmp sgt i32 %spec.select733, 0
  %i.fg = add i32 %i.p, 1
  %i.fh = add i32 %i.y, 1
  %i.fi = sext i32 %spec.select735 to i64         ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %i.af, i64 %i.fi ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = add i32 %spec.select735, 1
  %i.fm = sext i32 %i.s to i64                    ; 4 uses
  %i.fn = sext i32 %i.ab to i64                   ; 4 uses
  %i.fo = zext i32 %spec.select733 to i64
  %i.fp = sext i32 %i.fe to i64
  %i.fq = sext i32 %i.fl to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.fq
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph815, %bb.ba
  %.1813 = phi i32 [ 1, %.lr.ph815 ], [ %i.lr, %bb.ba ] ; 4 uses
  %.2812 = phi double [ undef, %.lr.ph815 ], [ %.3, %bb.ba ] ; 3 uses
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !22
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !22
  store double 1.000000e+00, ptr %16, align 8, !tbaa !22
  br i1 %.not711796, label %._crit_edge801.thread, label %.lr.ph800

.lr.ph800:                                        ; preds = %bb.al
  br i1 %i.ff, label %.lr.ph792.us, label %.loopexit756.preheader

.loopexit756.preheader:                           ; preds = %.lr.ph800
  %i.fs = load i32, ptr %i.fj, align 4, !tbaa !20
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !20
  %i.fu = sub i32 %i.ft, %i.fs
  store i32 %i.fu, ptr %i.i, align 4, !tbaa !20
  br label %._crit_edge801.thread

.lr.ph792.us:                                     ; preds = %bb.at, %.lr.ph800
  %indvars.iv880 = phi i64 [ %i.fp, %.lr.ph800 ], [ %indvars.iv.next881, %bb.at ] ; 4 uses
  %.lcssa795797.us = phi i32 [ 0, %.lr.ph800 ], [ %i.ib, %bb.at ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv880
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !20 ; 11 uses
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 1
  %i.fx = getelementptr [4 x i8], ptr %20, i64 %indvars.iv880
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !20 ; 9 uses
  %i.fz = add nsw i32 %i.fy, -1                   ; 4 uses
  %i.ga = sub i32 %i.fy, %i.fw
  store i32 %i.ga, ptr %i.i, align 4, !tbaa !20
  %i.gb = mul i32 %i.fw, %i.fg
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gc
  %i.ge = mul nsw i32 %i.fw, %i.s                 ; 2 uses
  %i.gf = mul i32 %i.fw, %i.fh
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.gg
  %i.gi = mul nsw i32 %i.fw, %i.ab                ; 2 uses
  %i.gj = add nsw i32 %i.fw, -1
  %i.gk = sext i32 %i.ge to i64
  %i.gl = getelementptr [8 x i8], ptr %i.u, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr [8 x i8], ptr %i.ad, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = icmp slt i64 %indvars.iv880, %i.fi      ; 2 uses
  %i.gr = mul nsw i32 %i.fy, %i.p
  %i.gs = add nsw i32 %i.gr, %i.fw
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gt
  %i.gv = mul nsw i32 %i.fy, %i.s
  %i.gw = mul nsw i32 %i.fy, %i.y
  %i.gx = add nsw i32 %i.gw, %i.fw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.gy
  %i.ha = mul nsw i32 %i.fy, %i.ab
  %i.hb = sext i32 %i.fw to i64                   ; 2 uses
  %i.hc = sext i32 %i.fy to i64
  %.not712770.us = icmp slt i32 %i.fw, 2
  %.not713775.us.not = icmp slt i32 %i.fw, %i.fy
  br label %bb.am

bb.am:                                            ; preds = %.backedge, %.lr.ph792.us
  %indvars.iv877 = phi i64 [ %i.fo, %.lr.ph792.us ], [ %indvars.iv877.be, %.backedge ] ; 5 uses
  %i.hd = phi i32 [ %.lcssa795797.us, %.lr.ph792.us ], [ %i.ib, %.backedge ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv877 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !20 ; 11 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !20 ; 3 uses
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  %i.hj = sub i32 %i.hh, %i.hf
  store i32 %i.hj, ptr %i.h, align 4, !tbaa !20
  store i32 0, ptr %i.e, align 4, !tbaa !20
  %i.hk = mul nsw i32 %i.hf, %i.m                 ; 2 uses
  %i.hl = add nsw i32 %i.hk, %i.hf
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hm
  %i.ho = add nsw i32 %i.hf, %i.ge
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.hp ; 3 uses
  %i.hr = mul nsw i32 %i.hf, %i.v                 ; 2 uses
  %i.hs = add nsw i32 %i.hr, %i.hf
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ht
  %i.hv = add nsw i32 %i.hf, %i.gi
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.hw ; 3 uses
  call void @dtgsy2_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.hn, ptr noundef nonnull %5, ptr noundef %i.gd, ptr noundef nonnull %7, ptr noundef %i.hq, ptr noundef nonnull %9, ptr noundef %i.hu, ptr noundef nonnull %11, ptr noundef %i.gh, ptr noundef nonnull %13, ptr noundef %i.hx, ptr noundef nonnull %15, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef %i.fk, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #5
  %i.hy = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 %i.hy, ptr %21, align 4, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ia = load i32, ptr %i.e, align 4, !tbaa !20
  %i.ib = add nsw i32 %i.hd, %i.ia                ; 3 uses
  %i.ic = load double, ptr %i.l, align 8, !tbaa !22
  %i.id = fcmp une double %i.ic, 1.000000e+00
  br i1 %i.id, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.gj, ptr %i.b, align 4, !tbaa !20
  br i1 %.not712770.us, label %._crit_edge774.us, label %.lr.ph773.us

.lr.ph773.us:                                     ; preds = %bb.ap, %.lr.ph773.us
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %.lr.ph773.us ], [ 1, %bb.ap ] ; 4 uses
  %i.ie = mul nsw i64 %indvars.iv865, %i.fm
  %i.if = getelementptr [8 x i8], ptr %i.u, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.ig, ptr noundef nonnull @c__1) #5
  %i.ih = mul nsw i64 %indvars.iv865, %i.fn
  %i.ii = getelementptr [8 x i8], ptr %i.ad, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef %i.ij, ptr noundef nonnull @c__1) #5
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 1
  %i.ik = load i32, ptr %i.b, align 4, !tbaa !20
  %i.il = sext i32 %i.ik to i64
  %.not712.us.not = icmp slt i64 %indvars.iv865, %i.il
  br i1 %.not712.us.not, label %.lr.ph773.us, label %._crit_edge774.us, !llvm.loop !8

._crit_edge774.us:                                ; preds = %.lr.ph773.us, %bb.ap
  store i32 %i.fz, ptr %i.b, align 4, !tbaa !20
  br i1 %.not713775.us.not, label %.lr.ph778.us, label %._crit_edge784.us

bb.aq:                                            ; preds = %.lr.ph778.us, %bb.aq
  %indvars.iv868 = phi i64 [ %i.hb, %.lr.ph778.us ], [ %indvars.iv.next869, %bb.aq ] ; 4 uses
  store i32 %i.ki, ptr %i.c, align 4, !tbaa !20
  %i.im = mul nsw i64 %indvars.iv868, %i.fm
  %i.in = getelementptr [8 x i8], ptr %i.u, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 8
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %i.io, ptr noundef nonnull @c__1) #5
  store i32 %i.ki, ptr %i.c, align 4, !tbaa !20
  %i.ip = mul nsw i64 %indvars.iv868, %i.fn
  %i.iq = getelementptr [8 x i8], ptr %i.ad, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %i.ir, ptr noundef nonnull @c__1) #5
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, 1
  %i.is = load i32, ptr %i.b, align 4, !tbaa !20
  %i.it = sext i32 %i.is to i64
  %.not713.us.not = icmp slt i64 %indvars.iv868, %i.it
  br i1 %.not713.us.not, label %bb.aq, label %.lr.ph783.us.preheader, !llvm.loop !9

.lr.ph783.us.preheader:                           ; preds = %bb.aq
  store i32 %i.fz, ptr %i.b, align 4, !tbaa !20
  %i.iu = sext i32 %i.hh to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %i.iu
  %invariant.gep945 = getelementptr [8 x i8], ptr %i.ad, i64 %i.iu
  br label %.lr.ph783.us

.lr.ph783.us:                                     ; preds = %.lr.ph783.us.preheader, %.lr.ph783.us
  %indvars.iv871 = phi i64 [ %i.hb, %.lr.ph783.us.preheader ], [ %indvars.iv.next872, %.lr.ph783.us ] ; 4 uses
  %i.iv = load i32, ptr %2, align 4, !tbaa !20
  %i.iw = sub nsw i32 %i.iv, %i.hi
  store i32 %i.iw, ptr %i.c, align 4, !tbaa !20
  %i.ix = mul nsw i64 %indvars.iv871, %i.fm
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ix
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %gep, ptr noundef nonnull @c__1) #5
  %i.iy = load i32, ptr %2, align 4, !tbaa !20
  %i.iz = sub nsw i32 %i.iy, %i.hi
  store i32 %i.iz, ptr %i.c, align 4, !tbaa !20
  %i.ja = mul nsw i64 %indvars.iv871, %i.fn
  %gep946 = getelementptr [8 x i8], ptr %invariant.gep945, i64 %i.ja
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef %gep946, ptr noundef nonnull @c__1) #5
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, 1
  %i.jb = load i32, ptr %i.b, align 4, !tbaa !20
  %i.jc = sext i32 %i.jb to i64
  %.not714.us.not = icmp slt i64 %indvars.iv871, %i.jc
  br i1 %.not714.us.not, label %.lr.ph783.us, label %._crit_edge784.us, !llvm.loop !10

._crit_edge784.us:                                ; preds = %.lr.ph783.us, %._crit_edge774.us
  %i.jd = load i32, ptr %3, align 4, !tbaa !20    ; 2 uses
  store i32 %i.jd, ptr %i.b, align 4, !tbaa !20
  %.not715785.us = icmp sgt i32 %i.fy, %i.jd
  br i1 %.not715785.us, label %._crit_edge789.us, label %.lr.ph788.us

.lr.ph788.us:                                     ; preds = %._crit_edge784.us, %.lr.ph788.us
end_hunk_0
