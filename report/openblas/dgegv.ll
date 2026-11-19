Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgegv?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DGEQRF\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"DORMQR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DORGQR\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DGEGV \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c_b27 = internal global double 1.000000e+00, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b38 = internal global double 0.000000e+00, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: nounwind uwtable
define void @dgegv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef initializes((0, 8)) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef captures(none) initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca i32, align 4                      ; 27 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 8 uses
  %i.j = alloca [1 x i32], align 4                ; 4 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 12 uses
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
  %i.m = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %narrow = xor i32 %i.m, -1
  %i.n = sext i32 %narrow to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %3, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %6, align 4, !tbaa !37     ; 3 uses
  %narrow706 = xor i32 %i.p, -1
  %i.q = sext i32 %narrow706 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %5, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %7, i64 -8
  %i.t = getelementptr inbounds i8, ptr %8, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %9, i64 -8
  %i.v = load i32, ptr %11, align 4, !tbaa !37    ; 5 uses
  %narrow717 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow717 to i64               ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %10, i64 %i.w ; 8 uses
  %i.y = load i32, ptr %13, align 4, !tbaa !37    ; 3 uses
  %narrow718 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow718 to i64               ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %12, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %14, i64 -8 ; 3 uses
  %i.ac = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not698 = icmp eq i32 %i.ad, 0                 ; 2 uses
  %not..not698 = xor i1 %.not698, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i1 [ false, %bb.a ], [ %not..not698, %bb.b ] ; 4 uses
  %i.af = phi i1 [ false, %bb.a ], [ %.not698, %bb.b ] ; 3 uses
  %i.ag = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #5
  %.not699 = icmp eq i32 %i.ag, 0
  br i1 %.not699, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %.not700 = icmp eq i32 %i.ah, 0                 ; 2 uses
  %not..not700 = xor i1 %.not700, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi i1 [ false, %bb.c ], [ %not..not700, %bb.d ] ; 6 uses
  %i.aj = phi i1 [ false, %bb.c ], [ %.not700, %bb.d ]
  %i.ak = or i1 %i.ae, %i.ai                      ; 4 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !37
  %i.am = shl i32 %i.al, 3
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1) ; 5 uses
  %i.ao = uitofp nneg i32 %i.an to double
  store double %i.ao, ptr %14, align 8, !tbaa !39
  %i.ap = load i32, ptr %15, align 4, !tbaa !37
  %i.aq = icmp eq i32 %i.ap, -1                   ; 2 uses
  store i32 0, ptr %16, align 4, !tbaa !37
  %brmerge = select i1 %i.af, i1 true, i1 %i.aj
  %.mux = select i1 %i.af, i32 -1, i32 -2
  %.mux968 = select i1 %i.af, i32 -1, i32 -2
  br i1 %brmerge, label %.thread752.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %2, align 4, !tbaa !37    ; 4 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread752.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i32, ptr %4, align 4, !tbaa !37
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1) ; 2 uses
  %i.au = icmp slt i32 %i.at, %spec.select
  br i1 %i.au, label %.thread752.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr %6, align 4, !tbaa !37
  %i.aw = icmp slt i32 %i.av, %spec.select
  br i1 %i.aw, label %.thread752.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %11, align 4, !tbaa !37   ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 1
  %i.az = icmp samesign ult i32 %i.ax, %i.ar
  %or.cond793 = select i1 %i.ae, i1 %i.az, i1 false
  %or.cond796 = select i1 %i.ay, i1 true, i1 %or.cond793
  br i1 %or.cond796, label %.thread752.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %13, align 4, !tbaa !37   ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  %i.bc = icmp samesign ult i32 %i.ba, %i.ar
  %or.cond794 = select i1 %i.ai, i1 %i.bc, i1 false
  %or.cond797 = select i1 %i.bb, i1 true, i1 %or.cond794
  br i1 %or.cond797, label %.thread752.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %15, align 4, !tbaa !37
  %i.be = icmp sge i32 %i.bd, %i.an
  %or.cond = select i1 %i.be, i1 true, i1 %i.aq
  br i1 %or.cond, label %.thread, label %.thread752.sink.split

.thread:                                          ; preds = %bb.k
  %i.bf = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.bg = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.bh = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bg)
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bh)
  %i.bk = load i32, ptr %2, align 4, !tbaa !37    ; 4 uses
  %i.bl = mul nsw i32 %i.bk, 6                    ; 2 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !37
  %i.bm = add nsw i32 %i.bj, 1
  %i.bn = mul nsw i32 %i.bk, %i.bm                ; 2 uses
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !37
  %i.bo = shl i32 %i.bk, 1
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bn)
  %i.bq = add nsw i32 %i.bp, %i.bo
  %i.br = sitofp i32 %i.bq to double
  store double %i.br, ptr %14, align 8, !tbaa !39
  %.pr751.pr = load i32, ptr %16, align 4, !tbaa !37 ; 2 uses
  %.not704 = icmp eq i32 %.pr751.pr, 0
  br i1 %.not704, label %bb.l, label %.thread752

.thread752.sink.split:                            ; preds = %bb.e, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sink = phi i32 [ %.mux, %bb.e ], [ -3, %bb.f ], [ -7, %bb.h ], [ -14, %bb.j ], [ -12, %bb.i ], [ -5, %bb.g ], [ -16, %bb.k ]
  %.ph = phi i32 [ %.mux968, %bb.e ], [ -3, %bb.f ], [ -7, %bb.h ], [ -14, %bb.j ], [ -12, %bb.i ], [ -5, %bb.g ], [ -16, %bb.k ]
  store i32 %.sink, ptr %16, align 4, !tbaa !37
  br label %.thread752

.thread752:                                       ; preds = %.thread752.sink.split, %.thread
  %i.bs = phi i32 [ %.pr751.pr, %.thread ], [ %.ph, %.thread752.sink.split ]
  %i.bt = sub nsw i32 0, %i.bs
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !37
  %i.bu = call i32 @xerbla_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %bb.bw

bb.l:                                             ; preds = %.thread
  %i.bv = icmp eq i32 %i.bk, 0
  %or.cond966 = select i1 %i.aq, i1 true, i1 %i.bv
  br i1 %or.cond966, label %bb.bw, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call double @dlamch_(ptr noundef nonnull @.str.7) #5
  %i.bx = tail call double @dlamch_(ptr noundef nonnull @.str.8) #5
  %i.by = fmul double %i.bw, %i.bx                ; 4 uses
  %i.bz = tail call double @dlamch_(ptr noundef nonnull @.str.9) #5 ; 2 uses
  %i.ca = fadd double %i.bz, %i.bz                ; 16 uses
  %i.cb = fdiv double 1.000000e+00, %i.ca         ; 2 uses
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.by, double 4.000000e+00, double 1.000000e+00)
  %i.cd = tail call double @dlange_(ptr noundef nonnull @.str.10, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %14) #5 ; 5 uses
  store double %i.cd, ptr %i.c, align 8, !tbaa !39
  %i.ce = fcmp olt double %i.cd, 1.000000e+00
  %i.cf = fmul double %i.cd, %i.cb                ; 2 uses
  %i.cg = fcmp olt double %i.cf, 1.000000e+00
  %i.ch = select i1 %i.ce, i1 %i.cg, i1 false     ; 2 uses
  %.0666 = select i1 %i.ch, double %i.ca, double %i.cd
  %.0665 = select i1 %i.ch, double %i.cf, double 1.000000e+00 ; 2 uses
  %i.ci = fcmp ogt double %i.cd, 0.000000e+00
  br i1 %i.ci, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @dlascl_(ptr noundef nonnull @.str.11, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b27, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.e) #5
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !37
  %.not705 = icmp eq i32 %i.cj, 0
  br i1 %.not705, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = load i32, ptr %2, align 4, !tbaa !37
  %i.cl = add nsw i32 %i.ck, 10
  store i32 %i.cl, ptr %16, align 4, !tbaa !37
  br label %bb.bw

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cm = call double @dlange_(ptr noundef nonnull @.str.10, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %14) #5 ; 5 uses
  store double %i.cm, ptr %i.d, align 8, !tbaa !39
  %i.cn = fcmp olt double %i.cm, 1.000000e+00
  %i.co = fmul double %i.cb, %i.cm                ; 2 uses
  %i.cp = fcmp olt double %i.co, 1.000000e+00
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false     ; 2 uses
  %.0664 = select i1 %i.cq, double %i.ca, double %i.cm
  %.0663 = select i1 %i.cq, double %i.co, double 1.000000e+00
  %i.cr = fcmp ogt double %i.cm, 0.000000e+00
  br i1 %i.cr, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @dlascl_(ptr noundef nonnull @.str.11, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b27, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.e) #5
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !37
  %.not707 = icmp eq i32 %i.cs, 0
  br i1 %.not707, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load i32, ptr %2, align 4, !tbaa !37
  %i.cu = add nsw i32 %i.ct, 10
  store i32 %i.cu, ptr %16, align 4, !tbaa !37
  br label %bb.bw

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.cv = load i32, ptr %2, align 4, !tbaa !37    ; 3 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cv                ; 3 uses
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cy ; 3 uses
  %i.da = sext i32 %i.cx to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.da ; 8 uses
  call void @dggbal_(ptr noundef nonnull @.str.12, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef nonnull %14, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.db, ptr noundef nonnull %i.e) #5
  %i.dc = load i32, ptr %i.e, align 4, !tbaa !37
  %.not708 = icmp eq i32 %i.dc, 0
  br i1 %.not708, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = load i32, ptr %2, align 4, !tbaa !37
  %i.de = add nsw i32 %i.dd, 1
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.s
  %i.df = load i32, ptr %i.k, align 4, !tbaa !37
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = load i32, ptr %i.l, align 4, !tbaa !37  ; 3 uses
  %i.di = sub i32 %i.dg, %i.dh                    ; 3 uses
  store i32 %i.di, ptr %i.g, align 4, !tbaa !37
  br i1 %i.ak, label %bb.v, label %bb.w

end_hunk_0
begin_hunk_1_@dgegv_:bb.a
bb.z:                                             ; preds = %bb.y
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !37
  %i.ep = load double, ptr %i.dt, align 8, !tbaa !39
  %i.eq = fptosi double %i.ep to i32
  %i.er = add i32 %i.dy, %i.eq                    ; 2 uses
  store i32 %i.er, ptr %i.b, align 4, !tbaa !37
  %i.es = call i32 @llvm.smax.i32(i32 %i.ea, i32 %i.er) ; 7 uses
  %.not712 = icmp eq i32 %i.en, 0
  br i1 %.not712, label %bb.aa, label %.thread758

.thread758:                                       ; preds = %bb.y, %bb.z
  %.1761 = phi i32 [ %i.es, %bb.z ], [ %i.ea, %bb.y ]
  %i.et = load i32, ptr %2, align 4, !tbaa !37
  %i.eu = add nsw i32 %i.et, 3
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ae, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @dlaset_(ptr noundef nonnull @.str.15, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b38, ptr noundef nonnull @c_b27, ptr noundef %10, ptr noundef nonnull %11) #5
  %i.ev = load i32, ptr %i.g, align 4, !tbaa !37
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.a, align 4, !tbaa !37
  store i32 %i.ew, ptr %i.b, align 4, !tbaa !37
  %i.ex = load i32, ptr %i.l, align 4, !tbaa !37  ; 3 uses
  %i.ey = add nsw i32 %i.ex, 1                    ; 2 uses
  %i.ez = mul nsw i32 %i.ex, %i.p
  %i.fa = add nsw i32 %i.ey, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.fb
  %i.fd = mul nsw i32 %i.ex, %i.v
  %i.fe = add nsw i32 %i.ey, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ff
  call void @dlacpy_(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.fc, ptr noundef nonnull %6, ptr noundef %i.fg, ptr noundef nonnull %11) #5
  %i.fh = load i32, ptr %15, align 4, !tbaa !37
  %reass.sub851 = sub i32 %i.fh, %i.dl
  %i.fi = add i32 %reass.sub851, 1
  store i32 %i.fi, ptr %i.a, align 4, !tbaa !37
  %i.fj = load i32, ptr %i.l, align 4, !tbaa !37
  %i.fk = add i32 %i.v, 1
  %i.fl = mul i32 %i.fj, %i.fk
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.fm
  call void @dorgqr_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.fn, ptr noundef nonnull %11, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #5
  %i.fo = load i32, ptr %i.e, align 4, !tbaa !37  ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, -1
  br i1 %i.fp, label %bb.ac, label %.thread762

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.es, ptr %i.a, align 4, !tbaa !37
  %i.fq = load double, ptr %i.dt, align 8, !tbaa !39
  %i.fr = fptosi double %i.fq to i32
  %i.fs = add i32 %i.dy, %i.fr                    ; 2 uses
  store i32 %i.fs, ptr %i.b, align 4, !tbaa !37
  %i.ft = call i32 @llvm.smax.i32(i32 %i.es, i32 %i.fs) ; 3 uses
  %.not714 = icmp eq i32 %i.fo, 0
  br i1 %.not714, label %.thread767, label %.thread762

.thread762:                                       ; preds = %bb.ab, %bb.ac
  %.2765 = phi i32 [ %i.ft, %bb.ac ], [ %i.es, %bb.ab ]
  %i.fu = load i32, ptr %2, align 4, !tbaa !37
  %i.fv = add nsw i32 %i.fu, 4
  br label %.loopexit.sink.split

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.ai, label %.thread766, label %bb.ae

.thread767:                                       ; preds = %bb.ac
  br i1 %i.ai, label %.thread766, label %.thread773

.thread766:                                       ; preds = %bb.ad, %.thread767
  %.3772 = phi i32 [ %i.ft, %.thread767 ], [ %i.es, %bb.ad ]
  call void @dlaset_(ptr noundef nonnull @.str.15, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b38, ptr noundef nonnull @c_b27, ptr noundef %12, ptr noundef nonnull %13) #5
  br label %.thread773

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ak, label %.thread773, label %bb.af

.thread773:                                       ; preds = %.thread767, %.thread766, %bb.ae
  %.3770 = phi i32 [ %.3772, %.thread766 ], [ %i.es, %bb.ae ], [ %i.ft, %.thread767 ]
  call void @dgghrd_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %i.e) #5
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fw = load i32, ptr %i.l, align 4, !tbaa !37  ; 2 uses
  %i.fx = mul i32 %i.fw, %i.ej
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fy
  %i.ga = mul i32 %i.fw, %i.do
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.gb
  call void @dgghrd_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1, ptr noundef nonnull %i.g, ptr noundef %i.fz, ptr noundef nonnull %4, ptr noundef %i.gc, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %i.e) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread773
  %.3769 = phi i32 [ %i.es, %bb.af ], [ %.3770, %.thread773 ] ; 4 uses
  %i.gd = load i32, ptr %i.e, align 4, !tbaa !37
  %.not715 = icmp eq i32 %i.gd, 0
  br i1 %.not715, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ge = load i32, ptr %2, align 4, !tbaa !37
  %i.gf = add nsw i32 %i.ge, 5
  br label %.loopexit.sink.split

bb.ai:                                            ; preds = %bb.ag
  %.747 = select i1 %i.ak, i8 83, i8 69
  store i8 %.747, ptr %i.i, align 1, !tbaa !40
  %i.gg = load i32, ptr %15, align 4, !tbaa !37
  %reass.sub852 = sub i32 %i.gg, %i.cx
  %i.gh = add i32 %reass.sub852, 1
  store i32 %i.gh, ptr %i.a, align 4, !tbaa !37
  call void @dhgeqz_(ptr noundef nonnull %i.i, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %i.db, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #5
  %i.gi = load i32, ptr %i.e, align 4, !tbaa !37  ; 7 uses
  %i.gj = icmp sgt i32 %i.gi, -1
  br i1 %i.gj, label %bb.aj, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load i32, ptr %2, align 4, !tbaa !37
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  store i32 %.3769, ptr %i.a, align 4, !tbaa !37
  %i.gk = load double, ptr %i.db, align 8, !tbaa !39
  %i.gl = fptosi double %i.gk to i32
  %i.gm = shl i32 %i.cv, 1
  %i.gn = add i32 %i.gm, %i.gl                    ; 2 uses
  store i32 %i.gn, ptr %i.b, align 4, !tbaa !37
  %i.go = call i32 @llvm.smax.i32(i32 %.3769, i32 %i.gn) ; 8 uses
  %.not720 = icmp eq i32 %i.gi, 0
  br i1 %.not720, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = load i32, ptr %2, align 4, !tbaa !37    ; 2 uses
  %.not737 = icmp sgt i32 %i.gi, %i.gp
  br i1 %.not737, label %bb.al, label %.loopexit.sink.split

bb.al:                                            ; preds = %._crit_edge, %bb.ak
  %i.gq = phi i32 [ %i.gp, %bb.ak ], [ %.pre, %._crit_edge ] ; 4 uses
  %.4778782 = phi i32 [ %i.go, %bb.ak ], [ %.3769, %._crit_edge ] ; 2 uses
  %i.gr = icmp sle i32 %i.gi, %i.gq
  %i.gs = shl i32 %i.gq, 1
  %.not738 = icmp sgt i32 %i.gi, %i.gs
  %or.cond748 = or i1 %i.gr, %.not738
  br i1 %or.cond748, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gt = sub nsw i32 %i.gi, %i.gq
  br label %.loopexit.sink.split

bb.an:                                            ; preds = %bb.al
  %i.gu = add nsw i32 %i.gq, 6
  br label %.loopexit.sink.split

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.ak, label %bb.ap, label %.loopexit805

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ae, label %bb.aq, label %.thread783

bb.aq:                                            ; preds = %bb.ap
  %. = select i1 %i.ai, i8 66, i8 76
  store i8 %., ptr %i.i, align 1, !tbaa !40
  call void @dtgevc_(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.j, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.db, ptr noundef nonnull %i.e) #5
  %i.gv = load i32, ptr %i.e, align 4, !tbaa !37
  %.not721 = icmp eq i32 %i.gv, 0
  br i1 %.not721, label %bb.as, label %bb.ar

.thread783:                                       ; preds = %bb.ap
  store i8 82, ptr %i.i, align 1, !tbaa !40
  call void @dtgevc_(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.j, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.db, ptr noundef nonnull %i.e) #5
  %i.gw = load i32, ptr %i.e, align 4, !tbaa !37
  %.not721784 = icmp eq i32 %i.gw, 0
  br i1 %.not721784, label %.thread785, label %bb.ar

bb.ar:                                            ; preds = %.thread783, %bb.aq
  %i.gx = load i32, ptr %2, align 4, !tbaa !37
  %i.gy = add nsw i32 %i.gx, 7
  br label %.loopexit.sink.split

bb.as:                                            ; preds = %bb.aq
  call void @dggbak_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef nonnull %14, ptr noundef nonnull %i.cz, ptr noundef nonnull %2, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %i.e) #5
  %i.gz = load i32, ptr %i.e, align 4, !tbaa !37
  %.not722 = icmp eq i32 %i.gz, 0
  %i.ha = load i32, ptr %2, align 4, !tbaa !37    ; 12 uses
  br i1 %.not722, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = add nsw i32 %i.ha, 8
  br label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.as
  store i32 %i.ha, ptr %i.a, align 4, !tbaa !37
  %.not723824 = icmp slt i32 %i.ha, 1
  br i1 %.not723824, label %.thread785, label %.lr.ph826

.lr.ph826:                                        ; preds = %bb.au
  %i.hc = add nuw i32 %i.ha, 1
  %i.hd = sext i32 %i.v to i64                    ; 8 uses
  %wide.trip.count879 = zext i32 %i.hc to i64     ; 7 uses
  %i.he = zext nneg i32 %i.ha to i64              ; 7 uses
  %i.hf = shl nsw i64 %i.hd, 3                    ; 2 uses
  %17 = add nsw i64 %i.hf, 8
  %18 = mul i64 %17, %wide.trip.count879
  %i.hg = shl nsw i64 %i.w, 3                     ; 4 uses
  %19 = getelementptr i8, ptr %10, i64 %18
  %scevgep = getelementptr i8, ptr %19, i64 %i.hg
  %i.hh = shl nsw i64 %i.hd, 4
  %i.hi = getelementptr i8, ptr %10, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.hg
  %scevgep988.a = getelementptr i8, ptr %i.hj, i64 8
  %20 = shl nuw nsw i64 %wide.trip.count879, 3    ; 2 uses
  %21 = add nsw i64 %20, -8
  %22 = mul i64 %21, %i.hd
  %23 = getelementptr i8, ptr %10, i64 %22
  %24 = getelementptr i8, ptr %23, i64 %i.hg
  %scevgep989.a = getelementptr i8, ptr %24, i64 %20
  %i.hk = getelementptr i8, ptr %10, i64 %i.hf
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.hg
  %scevgep990 = getelementptr i8, ptr %i.hl, i64 8
  %i.hm = zext nneg i32 %i.ha to i64              ; 4 uses
  %i.hn = add nsw i64 %wide.trip.count879, -2     ; 2 uses
  %i.ho = zext nneg i32 %i.ha to i64
  %xtraiter = and i64 %i.hm, 3                    ; 3 uses
  %i.hp = icmp ult i64 %i.hn, 3
  %unroll_iter = and i64 %i.hm, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1079 = icmp ne i64 %xtraiter, 0
  %min.iters.check991 = icmp ult i32 %i.ha, 8
  %bound0 = icmp ult ptr %scevgep990, %scevgep
  %bound1 = icmp ult ptr %scevgep988.a, %scevgep989.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.v, 0
  %25 = or i1 %found.conflict, %stride.check
  %n.vec993 = and i64 %i.he, 2147483640           ; 3 uses
  %i.hq = or disjoint i64 %n.vec993, 1
  %cmp.n1004 = icmp eq i64 %n.vec993, %i.he
  %xtraiter1083 = and i64 %i.hm, 3                ; 3 uses
  %i.hr = icmp ult i64 %i.hn, 3
  %unroll_iter1088 = and i64 %i.hm, 2147483644
  %lcmp.mod1085.not = icmp eq i64 %xtraiter1083, 0
  %lcmp.mod1087 = icmp ne i64 %xtraiter1083, 0
  %min.iters.check = icmp ult i32 %i.ha, 4
  %min.iters.check974 = icmp ult i32 %i.ha, 16
  %i.hs = and i64 %i.he, 12
  %n.vec = and i64 %i.he, 2147483632              ; 4 uses
  %i.ht = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.he
  %min.epilog.iters.check = icmp eq i64 %i.hs, 0
  %n.vec978 = and i64 %i.he, 2147483644           ; 3 uses
  %i.hu = or disjoint i64 %n.vec978, 1
  %cmp.n984 = icmp eq i64 %n.vec978, %i.he
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph826, %.loopexit806
  %indvars.iv876 = phi i64 [ 1, %.lr.ph826 ], [ %indvars.iv.next877, %.loopexit806 ] ; 7 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv876
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !39 ; 2 uses
  %i.hx = fcmp olt double %i.hw, 0.000000e+00
  br i1 %i.hx, label %.loopexit806, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hy = fcmp oeq double %i.hw, 0.000000e+00
  store i32 %i.ha, ptr %i.b, align 4, !tbaa !37
  %i.hz = mul nsw i64 %indvars.iv876, %i.hd       ; 2 uses
  br i1 %i.hy, label %.lr.ph816, label %.lr.ph

.lr.ph816:                                        ; preds = %bb.aw
  %invariant.gep946 = getelementptr [8 x i8], ptr %i.x, i64 %i.hz ; 5 uses
  br i1 %i.hr, label %.epil.preheader1082, label %.lr.ph816.new

.lr.ph816.new:                                    ; preds = %.lr.ph816, %.lr.ph816.new
  %indvars.iv861 = phi i64 [ %indvars.iv.next862.3, %.lr.ph816.new ], [ 1, %.lr.ph816 ] ; 5 uses
  %.0669814 = phi double [ %i.ja, %.lr.ph816.new ], [ 0.000000e+00, %.lr.ph816 ] ; 2 uses
  %niter1089 = phi i64 [ %niter1089.next.3, %.lr.ph816.new ], [ 0, %.lr.ph816 ]
  %gep947 = getelementptr [8 x i8], ptr %invariant.gep946, i64 %indvars.iv861
  %i.ia = load double, ptr %gep947, align 8, !tbaa !39 ; 3 uses
  %i.ib = fcmp oge double %i.ia, 0.000000e+00
  %i.ic = fneg double %i.ia
  %i.id = select i1 %i.ib, double %i.ia, double %i.ic ; 2 uses
  %i.ie = fcmp oge double %.0669814, %i.id
  %i.if = select i1 %i.ie, double %.0669814, double %i.id ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %invariant.gep946, i64 %indvars.iv861
  %gep947.1 = getelementptr i8, ptr %i.ig, i64 8
  %i.ih = load double, ptr %gep947.1, align 8, !tbaa !39 ; 3 uses
  %i.ii = fcmp oge double %i.ih, 0.000000e+00
  %i.ij = fneg double %i.ih
  %i.ik = select i1 %i.ii, double %i.ih, double %i.ij ; 2 uses
  %i.il = fcmp oge double %i.if, %i.ik
  %i.im = select i1 %i.il, double %i.if, double %i.ik ; 2 uses
  %i.in = getelementptr [8 x i8], ptr %invariant.gep946, i64 %indvars.iv861
  %gep947.2 = getelementptr i8, ptr %i.in, i64 16
  %i.io = load double, ptr %gep947.2, align 8, !tbaa !39 ; 3 uses
  %i.ip = fcmp oge double %i.io, 0.000000e+00
  %i.iq = fneg double %i.io
  %i.ir = select i1 %i.ip, double %i.io, double %i.iq ; 2 uses
  %i.is = fcmp oge double %i.im, %i.ir
  %i.it = select i1 %i.is, double %i.im, double %i.ir ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %invariant.gep946, i64 %indvars.iv861
  %gep947.3 = getelementptr i8, ptr %i.iu, i64 24
  %i.iv = load double, ptr %gep947.3, align 8, !tbaa !39 ; 3 uses
  %i.iw = fcmp oge double %i.iv, 0.000000e+00
  %i.ix = fneg double %i.iv
  %i.iy = select i1 %i.iw, double %i.iv, double %i.ix ; 2 uses
  %i.iz = fcmp oge double %i.it, %i.iy
  %i.ja = select i1 %i.iz, double %i.it, double %i.iy ; 3 uses
  %indvars.iv.next862.3 = add nuw nsw i64 %indvars.iv861, 4 ; 2 uses
  %niter1089.next.3 = add i64 %niter1089, 4       ; 2 uses
  %niter1089.ncmp.3 = icmp eq i64 %niter1089.next.3, %unroll_iter1088
  br i1 %niter1089.ncmp.3, label %.loopexit808.unr-lcssa, label %.lr.ph816.new, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.aw
  %i.jb = add nuw nsw i64 %indvars.iv876, 1
  %i.jc = mul nsw i64 %i.jb, %i.hd
  %invariant.gep = getelementptr [8 x i8], ptr %i.x, i64 %i.hz ; 5 uses
  %invariant.gep944 = getelementptr [8 x i8], ptr %i.x, i64 %i.jc ; 5 uses
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 1, %.lr.ph ] ; 6 uses
  %.1670811 = phi double [ %i.ku, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.jd = load double, ptr %gep, align 8, !tbaa !39 ; 3 uses
  %i.je = fcmp oge double %i.jd, 0.000000e+00
  %i.jf = fneg double %i.jd
  %i.jg = select i1 %i.je, double %i.jd, double %i.jf
  %gep945 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv
  %i.jh = load double, ptr %gep945, align 8, !tbaa !39 ; 3 uses
  %i.ji = fcmp oge double %i.jh, 0.000000e+00
  %i.jj = fneg double %i.jh
  %i.jk = select i1 %i.ji, double %i.jh, double %i.jj
  %i.jl = fadd double %i.jg, %i.jk                ; 2 uses
  %i.jm = fcmp oge double %.1670811, %i.jl
  %i.jn = select i1 %i.jm, double %.1670811, double %i.jl ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.jo = load double, ptr %gep.1, align 8, !tbaa !39 ; 3 uses
  %i.jp = fcmp oge double %i.jo, 0.000000e+00
  %i.jq = fneg double %i.jo
  %i.jr = select i1 %i.jp, double %i.jo, double %i.jq
  %gep945.1 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv.next
  %i.js = load double, ptr %gep945.1, align 8, !tbaa !39 ; 3 uses
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.js
  %i.jv = select i1 %i.jt, double %i.js, double %i.ju
  %i.jw = fadd double %i.jr, %i.jv                ; 2 uses
  %i.jx = fcmp oge double %i.jn, %i.jw
  %i.jy = select i1 %i.jx, double %i.jn, double %i.jw ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.jz = load double, ptr %gep.2, align 8, !tbaa !39 ; 3 uses
  %i.ka = fcmp oge double %i.jz, 0.000000e+00
  %i.kb = fneg double %i.jz
  %i.kc = select i1 %i.ka, double %i.jz, double %i.kb
  %gep945.2 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv.next.1
  %i.kd = load double, ptr %gep945.2, align 8, !tbaa !39 ; 3 uses
  %i.ke = fcmp oge double %i.kd, 0.000000e+00
  %i.kf = fneg double %i.kd
  %i.kg = select i1 %i.ke, double %i.kd, double %i.kf
  %i.kh = fadd double %i.kc, %i.kg                ; 2 uses
  %i.ki = fcmp oge double %i.jy, %i.kh
  %i.kj = select i1 %i.ki, double %i.jy, double %i.kh ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.kk = load double, ptr %gep.3, align 8, !tbaa !39 ; 3 uses
  %i.kl = fcmp oge double %i.kk, 0.000000e+00
  %i.km = fneg double %i.kk
  %i.kn = select i1 %i.kl, double %i.kk, double %i.km
  %gep945.3 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv.next.2
  %i.ko = load double, ptr %gep945.3, align 8, !tbaa !39 ; 3 uses
  %i.kp = fcmp oge double %i.ko, 0.000000e+00
  %i.kq = fneg double %i.ko
  %i.kr = select i1 %i.kp, double %i.ko, double %i.kq
  %i.ks = fadd double %i.kn, %i.kr                ; 2 uses
  %i.kt = fcmp oge double %i.kj, %i.ks
  %i.ku = select i1 %i.kt, double %i.kj, double %i.ks ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit808.thread.unr-lcssa, label %.lr.ph.new, !llvm.loop !9

.loopexit808.unr-lcssa:                           ; preds = %.lr.ph816.new
  br i1 %lcmp.mod1085.not, label %.loopexit808, label %.epil.preheader1082

.epil.preheader1082:                              ; preds = %.loopexit808.unr-lcssa, %.lr.ph816
  %indvars.iv861.epil.init = phi i64 [ 1, %.lr.ph816 ], [ %indvars.iv.next862.3, %.loopexit808.unr-lcssa ]
  %.0669814.epil.init = phi double [ 0.000000e+00, %.lr.ph816 ], [ %i.ja, %.loopexit808.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1087)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader1082
  %indvars.iv861.epil = phi i64 [ %indvars.iv861.epil.init, %.epil.preheader1082 ], [ %indvars.iv.next862.epil, %bb.ax ] ; 2 uses
  %.0669814.epil = phi double [ %.0669814.epil.init, %.epil.preheader1082 ], [ %i.la, %bb.ax ] ; 2 uses
  %epil.iter1084 = phi i64 [ 0, %.epil.preheader1082 ], [ %epil.iter1084.next, %bb.ax ]
  %gep947.epil = getelementptr [8 x i8], ptr %invariant.gep946, i64 %indvars.iv861.epil
  %i.kv = load double, ptr %gep947.epil, align 8, !tbaa !39 ; 3 uses
  %i.kw = fcmp oge double %i.kv, 0.000000e+00
  %i.kx = fneg double %i.kv
  %i.ky = select i1 %i.kw, double %i.kv, double %i.kx ; 2 uses
  %i.kz = fcmp oge double %.0669814.epil, %i.ky
  %i.la = select i1 %i.kz, double %.0669814.epil, double %i.ky ; 2 uses
  %indvars.iv.next862.epil = add nuw nsw i64 %indvars.iv861.epil, 1
  %epil.iter1084.next = add i64 %epil.iter1084, 1 ; 2 uses
  %epil.iter1084.cmp.not = icmp eq i64 %epil.iter1084.next, %xtraiter1083
  br i1 %epil.iter1084.cmp.not, label %.loopexit808, label %bb.ax, !llvm.loop !10

.loopexit808:                                     ; preds = %bb.ax, %.loopexit808.unr-lcssa
  %.lcssa1077 = phi double [ %i.ja, %.loopexit808.unr-lcssa ], [ %i.la, %bb.ax ] ; 2 uses
  %i.lb = fcmp olt double %.lcssa1077, %i.ca
  br i1 %i.lb, label %.loopexit806, label %iter.check

.loopexit808.thread.unr-lcssa:                    ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.loopexit808.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit808.thread.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit808.thread.unr-lcssa ]
  %.1670811.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ku, %.loopexit808.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1079)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ay ] ; 3 uses
  %.1670811.epil = phi double [ %.1670811.epil.init, %.epil.preheader ], [ %i.lm, %bb.ay ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ay ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.lc = load double, ptr %gep.epil, align 8, !tbaa !39 ; 3 uses
  %i.ld = fcmp oge double %i.lc, 0.000000e+00
  %i.le = fneg double %i.lc
  %i.lf = select i1 %i.ld, double %i.lc, double %i.le
  %gep945.epil = getelementptr [8 x i8], ptr %invariant.gep944, i64 %indvars.iv.epil
  %i.lg = load double, ptr %gep945.epil, align 8, !tbaa !39 ; 3 uses
  %i.lh = fcmp oge double %i.lg, 0.000000e+00
  %i.li = fneg double %i.lg
  %i.lj = select i1 %i.lh, double %i.lg, double %i.li
  %i.lk = fadd double %i.lf, %i.lj                ; 2 uses
  %i.ll = fcmp oge double %.1670811.epil, %i.lk
  %i.lm = select i1 %i.ll, double %.1670811.epil, double %i.lk ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit808.thread, label %bb.ay, !llvm.loop !11

.loopexit808.thread:                              ; preds = %bb.ay, %.loopexit808.thread.unr-lcssa
  %.lcssa1076 = phi double [ %i.ku, %.loopexit808.thread.unr-lcssa ], [ %i.lm, %bb.ay ] ; 2 uses
  %i.ln = fcmp olt double %.lcssa1076, %i.ca
  br i1 %i.ln, label %.loopexit806, label %.thread932

.thread932:                                       ; preds = %.loopexit808.thread
  %i.lo = fdiv double 1.000000e+00, %.lcssa1076   ; 11 uses
  store i32 %i.ha, ptr %i.b, align 4, !tbaa !37
  %i.lp = mul nsw i64 %indvars.iv876, %i.hd
  %i.lq = add nuw nsw i64 %indvars.iv876, 1
  %i.lr = mul nsw i64 %i.lq, %i.hd
  %invariant.gep948 = getelementptr [8 x i8], ptr %i.x, i64 %i.lp ; 6 uses
  %invariant.gep950 = getelementptr [8 x i8], ptr %i.x, i64 %i.lr ; 6 uses
  %brmerge1117 = select i1 %min.iters.check991, i1 true, i1 %25
  br i1 %brmerge1117, label %scalar.ph.preheader, label %vector.ph992

iter.check:                                       ; preds = %.loopexit808
  %i.ls = fdiv double 1.000000e+00, %.lcssa1077   ; 3 uses
  %i.lt = mul nsw i64 %indvars.iv876, %i.hd
  %invariant.gep952 = getelementptr [8 x i8], ptr %i.x, i64 %i.lt ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check974, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ls, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lu = getelementptr [8 x i8], ptr %invariant.gep952, i64 %index ; 4 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 8      ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lu, i64 40     ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lu, i64 72     ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lu, i64 104    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.lv, align 8, !tbaa !39
  %wide.load975 = load <4 x double>, ptr %i.lw, align 8, !tbaa !39
  %wide.load976 = load <4 x double>, ptr %i.lx, align 8, !tbaa !39
  %wide.load977 = load <4 x double>, ptr %i.ly, align 8, !tbaa !39
  %i.lz = fmul <4 x double> %broadcast.splat, %wide.load
  %i.ma = fmul <4 x double> %broadcast.splat, %wide.load975
  %i.mb = fmul <4 x double> %broadcast.splat, %wide.load976
  %i.mc = fmul <4 x double> %broadcast.splat, %wide.load977
  store <4 x double> %i.lz, ptr %i.lv, align 8, !tbaa !39
  store <4 x double> %i.ma, ptr %i.lw, align 8, !tbaa !39
  store <4 x double> %i.mb, ptr %i.lx, align 8, !tbaa !39
  store <4 x double> %i.mc, ptr %i.ly, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit806, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert979 = insertelement <4 x double> poison, double %i.ls, i64 0
  %broadcast.splat980 = shufflevector <4 x double> %broadcast.splatinsert979, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index981 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next983, %vec.epilog.vector.body ] ; 2 uses
  %i.me = getelementptr [8 x i8], ptr %invariant.gep952, i64 %index981
  %i.mf = getelementptr i8, ptr %i.me, i64 8      ; 2 uses
  %wide.load982 = load <4 x double>, ptr %i.mf, align 8, !tbaa !39
  %i.mg = fmul <4 x double> %broadcast.splat980, %wide.load982
  store <4 x double> %i.mg, ptr %i.mf, align 8, !tbaa !39
  %index.next983 = add nuw i64 %index981, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next983, %n.vec978
  br i1 %i.mh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n984, label %.loopexit806, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv871.ph = phi i64 [ 1, %iter.check ], [ %i.ht, %vec.epilog.iter.check ], [ %i.hu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %vec.epilog.scalar.ph ], [ %indvars.iv871.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep953 = getelementptr [8 x i8], ptr %invariant.gep952, i64 %indvars.iv871 ; 2 uses
  %i.mi = load double, ptr %gep953, align 8, !tbaa !39
  %i.mj = fmul double %i.ls, %i.mi
  store double %i.mj, ptr %gep953, align 8, !tbaa !39
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1 ; 2 uses
  %exitcond875.not = icmp eq i64 %indvars.iv.next872, %wide.trip.count879
  br i1 %exitcond875.not, label %.loopexit806, label %vec.epilog.scalar.ph, !llvm.loop !14

vector.ph992:                                     ; preds = %.thread932
  %broadcast.splatinsert994 = insertelement <4 x double> poison, double %i.lo, i64 0
  %broadcast.splat995 = shufflevector <4 x double> %broadcast.splatinsert994, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph992
  %index997 = phi i64 [ 0, %vector.ph992 ], [ %index.next1002, %vector.body996 ] ; 2 uses
  %i.mk = or disjoint i64 %index997, 1            ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %invariant.gep948, i64 %i.mk ; 3 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 32     ; 2 uses
  %wide.load998 = load <4 x double>, ptr %i.ml, align 8, !tbaa !39, !alias.scope !46, !noalias !47
  %wide.load999 = load <4 x double>, ptr %i.mm, align 8, !tbaa !39, !alias.scope !46, !noalias !47
  %i.mn = fmul <4 x double> %broadcast.splat995, %wide.load998
  %i.mo = fmul <4 x double> %broadcast.splat995, %wide.load999
  store <4 x double> %i.mn, ptr %i.ml, align 8, !tbaa !39, !alias.scope !46, !noalias !47
  store <4 x double> %i.mo, ptr %i.mm, align 8, !tbaa !39, !alias.scope !46, !noalias !47
  %i.mp = getelementptr [8 x i8], ptr %invariant.gep950, i64 %i.mk ; 3 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 32     ; 2 uses
  %wide.load1000 = load <4 x double>, ptr %i.mp, align 8, !tbaa !39, !alias.scope !47
  %wide.load1001 = load <4 x double>, ptr %i.mq, align 8, !tbaa !39, !alias.scope !47
  %i.mr = fmul <4 x double> %broadcast.splat995, %wide.load1000
  %i.ms = fmul <4 x double> %broadcast.splat995, %wide.load1001
  store <4 x double> %i.mr, ptr %i.mp, align 8, !tbaa !39, !alias.scope !47
  store <4 x double> %i.ms, ptr %i.mq, align 8, !tbaa !39, !alias.scope !47
  %index.next1002 = add nuw i64 %index997, 8      ; 2 uses
  %i.mt = icmp eq i64 %index.next1002, %n.vec993
  br i1 %i.mt, label %middle.block1003, label %vector.body996, !llvm.loop !18

middle.block1003:                                 ; preds = %vector.body996
  br i1 %cmp.n1004, label %.loopexit806, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.thread932, %middle.block1003
  %indvars.iv866.ph = phi i64 [ %i.hq, %middle.block1003 ], [ 1, %.thread932 ] ; 4 uses
  %i.mu = sub nsw i64 %wide.trip.count879, %indvars.iv866.ph
  %i.mv = sub nsw i64 %i.ho, %indvars.iv866.ph
  %xtraiter1080 = and i64 %i.mu, 3                ; 2 uses
  %lcmp.mod1081.not = icmp eq i64 %xtraiter1080, 0
  br i1 %lcmp.mod1081.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv866.prol = phi i64 [ %indvars.iv.next867.prol, %scalar.ph.prol ], [ %indvars.iv866.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep949.prol = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv866.prol ; 2 uses
  %i.mw = load double, ptr %gep949.prol, align 8, !tbaa !39
  %i.mx = fmul double %i.lo, %i.mw
  store double %i.mx, ptr %gep949.prol, align 8, !tbaa !39
  %gep951.prol = getelementptr [8 x i8], ptr %invariant.gep950, i64 %indvars.iv866.prol ; 2 uses
  %i.my = load double, ptr %gep951.prol, align 8, !tbaa !39
  %i.mz = fmul double %i.lo, %i.my
  store double %i.mz, ptr %gep951.prol, align 8, !tbaa !39
  %indvars.iv.next867.prol = add nuw nsw i64 %indvars.iv866.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1080
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !19

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv866.unr = phi i64 [ %indvars.iv866.ph, %scalar.ph.preheader ], [ %indvars.iv.next867.prol, %scalar.ph.prol ]
  %i.na = icmp ult i64 %i.mv, 3
  br i1 %i.na, label %.loopexit806, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv866 = phi i64 [ %indvars.iv.next867.3, %scalar.ph ], [ %indvars.iv866.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep949 = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv866 ; 2 uses
  %i.nb = load double, ptr %gep949, align 8, !tbaa !39
  %i.nc = fmul double %i.lo, %i.nb
  store double %i.nc, ptr %gep949, align 8, !tbaa !39
  %gep951 = getelementptr [8 x i8], ptr %invariant.gep950, i64 %indvars.iv866 ; 2 uses
  %i.nd = load double, ptr %gep951, align 8, !tbaa !39
  %i.ne = fmul double %i.lo, %i.nd
  store double %i.ne, ptr %gep951, align 8, !tbaa !39
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, 1 ; 2 uses
  %gep949.1 = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv.next867 ; 2 uses
  %i.nf = load double, ptr %gep949.1, align 8, !tbaa !39
  %i.ng = fmul double %i.lo, %i.nf
  store double %i.ng, ptr %gep949.1, align 8, !tbaa !39
  %gep951.1 = getelementptr [8 x i8], ptr %invariant.gep950, i64 %indvars.iv.next867 ; 2 uses
  %i.nh = load double, ptr %gep951.1, align 8, !tbaa !39
  %i.ni = fmul double %i.lo, %i.nh
  store double %i.ni, ptr %gep951.1, align 8, !tbaa !39
  %indvars.iv.next867.1 = add nuw nsw i64 %indvars.iv866, 2 ; 2 uses
  %gep949.2 = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv.next867.1 ; 2 uses
  %i.nj = load double, ptr %gep949.2, align 8, !tbaa !39
  %i.nk = fmul double %i.lo, %i.nj
  store double %i.nk, ptr %gep949.2, align 8, !tbaa !39
  %gep951.2 = getelementptr [8 x i8], ptr %invariant.gep950, i64 %indvars.iv.next867.1 ; 2 uses
  %i.nl = load double, ptr %gep951.2, align 8, !tbaa !39
  %i.nm = fmul double %i.lo, %i.nl
  store double %i.nm, ptr %gep951.2, align 8, !tbaa !39
  %indvars.iv.next867.2 = add nuw nsw i64 %indvars.iv866, 3 ; 2 uses
  %gep949.3 = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv.next867.2 ; 2 uses
  %i.nn = load double, ptr %gep949.3, align 8, !tbaa !39
  %i.no = fmul double %i.lo, %i.nn
  store double %i.no, ptr %gep949.3, align 8, !tbaa !39
  %gep951.3 = getelementptr [8 x i8], ptr %invariant.gep950, i64 %indvars.iv.next867.2 ; 2 uses
  %i.np = load double, ptr %gep951.3, align 8, !tbaa !39
  %i.nq = fmul double %i.lo, %i.np
  store double %i.nq, ptr %gep951.3, align 8, !tbaa !39
  %indvars.iv.next867.3 = add nuw nsw i64 %indvars.iv866, 4 ; 2 uses
  %exitcond870.not.3 = icmp eq i64 %indvars.iv.next867.3, %wide.trip.count879
  br i1 %exitcond870.not.3, label %.loopexit806, label %scalar.ph, !llvm.loop !20

.loopexit806:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %vec.epilog.scalar.ph, %middle.block1003, %middle.block, %vec.epilog.middle.block, %.loopexit808.thread, %bb.av, %.loopexit808
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 1 ; 2 uses
  %exitcond880.not = icmp eq i64 %indvars.iv.next877, %wide.trip.count879
  br i1 %exitcond880.not, label %.thread785, label %bb.av, !llvm.loop !21

.thread785:                                       ; preds = %.loopexit806, %bb.au, %.thread783
  br i1 %i.ai, label %bb.az, label %.loopexit805

bb.az:                                            ; preds = %.thread785
  call void @dggbak_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef nonnull %2, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef nonnull %14, ptr noundef nonnull %i.cz, ptr noundef nonnull %2, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %i.e) #5
  %i.nr = load i32, ptr %i.e, align 4, !tbaa !37
  %.not724 = icmp eq i32 %i.nr, 0
  %i.ns = load i32, ptr %2, align 4, !tbaa !37    ; 9 uses
  br i1 %.not724, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nt = add nsw i32 %i.ns, 9
  br label %.loopexit.sink.split

bb.bb:                                            ; preds = %bb.az
  %.not725843 = icmp slt i32 %i.ns, 1
  br i1 %.not725843, label %.loopexit, label %.lr.ph845

.lr.ph845:                                        ; preds = %bb.bb
  %i.nu = add nuw i32 %i.ns, 1
  %i.nv = sext i32 %i.y to i64                    ; 8 uses
  %wide.trip.count904 = zext i32 %i.nu to i64     ; 7 uses
  %i.nw = zext nneg i32 %i.ns to i64              ; 7 uses
  %i.nx = shl nsw i64 %i.nv, 3                    ; 2 uses
  %26 = add nsw i64 %i.nx, 8
  %27 = mul i64 %26, %wide.trip.count904
  %i.ny = shl nsw i64 %i.z, 3                     ; 4 uses
  %28 = getelementptr i8, ptr %12, i64 %27
  %scevgep1048 = getelementptr i8, ptr %28, i64 %i.ny
  %i.nz = shl nsw i64 %i.nv, 4
  %i.oa = getelementptr i8, ptr %12, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.oa, i64 %i.ny
  %scevgep1049.a = getelementptr i8, ptr %i.ob, i64 8
  %29 = shl nuw nsw i64 %wide.trip.count904, 3    ; 2 uses
  %30 = add nsw i64 %29, -8
  %31 = mul i64 %30, %i.nv
  %32 = getelementptr i8, ptr %12, i64 %31
  %33 = getelementptr i8, ptr %32, i64 %i.ny
  %scevgep1050.a = getelementptr i8, ptr %33, i64 %29
  %i.oc = getelementptr i8, ptr %12, i64 %i.nx
  %i.od = getelementptr i8, ptr %i.oc, i64 %i.ny
  %scevgep1051 = getelementptr i8, ptr %i.od, i64 8
  %i.oe = zext nneg i32 %i.ns to i64              ; 4 uses
  %i.of = add nsw i64 %wide.trip.count904, -2     ; 2 uses
  %i.og = zext nneg i32 %i.ns to i64
  %xtraiter1091 = and i64 %i.oe, 3                ; 3 uses
  %i.oh = icmp ult i64 %i.of, 3
  %unroll_iter1096 = and i64 %i.oe, 2147483644
  %lcmp.mod1093.not = icmp eq i64 %xtraiter1091, 0
  %lcmp.mod1095 = icmp ne i64 %xtraiter1091, 0
  %min.iters.check1053 = icmp ult i32 %i.ns, 8
  %bound01055 = icmp ult ptr %scevgep1051, %scevgep1048
  %bound11056 = icmp ult ptr %scevgep1049.a, %scevgep1050.a
  %found.conflict1057 = and i1 %bound01055, %bound11056
  %stride.check1058 = icmp slt i32 %i.y, 0
  %34 = or i1 %found.conflict1057, %stride.check1058
  %n.vec1060 = and i64 %i.nw, 2147483640          ; 3 uses
  %i.oi = or disjoint i64 %n.vec1060, 1
  %cmp.n1071 = icmp eq i64 %n.vec1060, %i.nw
  %xtraiter1102 = and i64 %i.oe, 3                ; 3 uses
  %i.oj = icmp ult i64 %i.of, 3
  %unroll_iter1107 = and i64 %i.oe, 2147483644
  %lcmp.mod1104.not = icmp eq i64 %xtraiter1102, 0
  %lcmp.mod1106 = icmp ne i64 %xtraiter1102, 0
  %min.iters.check1007 = icmp ult i32 %i.ns, 4
  %min.iters.check1009 = icmp ult i32 %i.ns, 16
  %i.ok = and i64 %i.nw, 12
  %n.vec1011 = and i64 %i.nw, 2147483632          ; 4 uses
  %i.ol = or disjoint i64 %n.vec1011, 1
  %cmp.n1022 = icmp eq i64 %n.vec1011, %i.nw
  %min.epilog.iters.check1026 = icmp eq i64 %i.ok, 0
  %n.vec1029 = and i64 %i.nw, 2147483644          ; 3 uses
  %i.om = or disjoint i64 %n.vec1029, 1
  %cmp.n1037 = icmp eq i64 %n.vec1029, %i.nw
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph845, %.loopexit801
  %indvars.iv901 = phi i64 [ 1, %.lr.ph845 ], [ %indvars.iv.next902, %.loopexit801 ] ; 7 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv901
  %i.oo = load double, ptr %i.on, align 8, !tbaa !39 ; 2 uses
  %i.op = fcmp olt double %i.oo, 0.000000e+00
  br i1 %i.op, label %.loopexit801, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oq = fcmp oeq double %i.oo, 0.000000e+00
  %i.or = mul nsw i64 %indvars.iv901, %i.nv       ; 2 uses
  br i1 %i.oq, label %.lr.ph835, label %.lr.ph830

.lr.ph835:                                        ; preds = %bb.bd
  %invariant.gep958 = getelementptr [8 x i8], ptr %i.aa, i64 %i.or ; 5 uses
  br i1 %i.oj, label %.epil.preheader1101, label %.lr.ph835.new

.lr.ph835.new:                                    ; preds = %.lr.ph835, %.lr.ph835.new
  %indvars.iv886 = phi i64 [ %indvars.iv.next887.3, %.lr.ph835.new ], [ 1, %.lr.ph835 ] ; 5 uses
  %.3672833 = phi double [ %i.ps, %.lr.ph835.new ], [ 0.000000e+00, %.lr.ph835 ] ; 2 uses
  %niter1108 = phi i64 [ %niter1108.next.3, %.lr.ph835.new ], [ 0, %.lr.ph835 ]
  %gep959 = getelementptr [8 x i8], ptr %invariant.gep958, i64 %indvars.iv886
  %i.os = load double, ptr %gep959, align 8, !tbaa !39 ; 3 uses
  %i.ot = fcmp oge double %i.os, 0.000000e+00
  %i.ou = fneg double %i.os
  %i.ov = select i1 %i.ot, double %i.os, double %i.ou ; 2 uses
  %i.ow = fcmp oge double %.3672833, %i.ov
  %i.ox = select i1 %i.ow, double %.3672833, double %i.ov ; 2 uses
  %i.oy = getelementptr [8 x i8], ptr %invariant.gep958, i64 %indvars.iv886
  %gep959.1 = getelementptr i8, ptr %i.oy, i64 8
  %i.oz = load double, ptr %gep959.1, align 8, !tbaa !39 ; 3 uses
  %i.pa = fcmp oge double %i.oz, 0.000000e+00
  %i.pb = fneg double %i.oz
  %i.pc = select i1 %i.pa, double %i.oz, double %i.pb ; 2 uses
  %i.pd = fcmp oge double %i.ox, %i.pc
  %i.pe = select i1 %i.pd, double %i.ox, double %i.pc ; 2 uses
  %i.pf = getelementptr [8 x i8], ptr %invariant.gep958, i64 %indvars.iv886
  %gep959.2 = getelementptr i8, ptr %i.pf, i64 16
  %i.pg = load double, ptr %gep959.2, align 8, !tbaa !39 ; 3 uses
  %i.ph = fcmp oge double %i.pg, 0.000000e+00
  %i.pi = fneg double %i.pg
  %i.pj = select i1 %i.ph, double %i.pg, double %i.pi ; 2 uses
  %i.pk = fcmp oge double %i.pe, %i.pj
  %i.pl = select i1 %i.pk, double %i.pe, double %i.pj ; 2 uses
  %i.pm = getelementptr [8 x i8], ptr %invariant.gep958, i64 %indvars.iv886
  %gep959.3 = getelementptr i8, ptr %i.pm, i64 24
  %i.pn = load double, ptr %gep959.3, align 8, !tbaa !39 ; 3 uses
  %i.po = fcmp oge double %i.pn, 0.000000e+00
  %i.pp = fneg double %i.pn
  %i.pq = select i1 %i.po, double %i.pn, double %i.pp ; 2 uses
  %i.pr = fcmp oge double %i.pl, %i.pq
  %i.ps = select i1 %i.pr, double %i.pl, double %i.pq ; 3 uses
  %indvars.iv.next887.3 = add nuw nsw i64 %indvars.iv886, 4 ; 2 uses
  %niter1108.next.3 = add i64 %niter1108, 4       ; 2 uses
  %niter1108.ncmp.3 = icmp eq i64 %niter1108.next.3, %unroll_iter1107
  br i1 %niter1108.ncmp.3, label %.loopexit803.unr-lcssa, label %.lr.ph835.new, !llvm.loop !22

.lr.ph830:                                        ; preds = %bb.bd
  %i.pt = add nuw nsw i64 %indvars.iv901, 1
  %i.pu = mul nsw i64 %i.pt, %i.nv
  %invariant.gep954 = getelementptr [8 x i8], ptr %i.aa, i64 %i.or ; 5 uses
  %invariant.gep956 = getelementptr [8 x i8], ptr %i.aa, i64 %i.pu ; 5 uses
  br i1 %i.oh, label %.epil.preheader1090, label %.lr.ph830.new

.lr.ph830.new:                                    ; preds = %.lr.ph830, %.lr.ph830.new
  %indvars.iv881 = phi i64 [ %indvars.iv.next882.3, %.lr.ph830.new ], [ 1, %.lr.ph830 ] ; 6 uses
  %.4673828 = phi double [ %i.rm, %.lr.ph830.new ], [ 0.000000e+00, %.lr.ph830 ] ; 2 uses
  %niter1097 = phi i64 [ %niter1097.next.3, %.lr.ph830.new ], [ 0, %.lr.ph830 ]
  %gep955 = getelementptr [8 x i8], ptr %invariant.gep954, i64 %indvars.iv881
  %i.pv = load double, ptr %gep955, align 8, !tbaa !39 ; 3 uses
  %i.pw = fcmp oge double %i.pv, 0.000000e+00
  %i.px = fneg double %i.pv
  %i.py = select i1 %i.pw, double %i.pv, double %i.px
  %gep957 = getelementptr [8 x i8], ptr %invariant.gep956, i64 %indvars.iv881
  %i.pz = load double, ptr %gep957, align 8, !tbaa !39 ; 3 uses
  %i.qa = fcmp oge double %i.pz, 0.000000e+00
  %i.qb = fneg double %i.pz
  %i.qc = select i1 %i.qa, double %i.pz, double %i.qb
  %i.qd = fadd double %i.py, %i.qc                ; 2 uses
  %i.qe = fcmp oge double %.4673828, %i.qd
  %i.qf = select i1 %i.qe, double %.4673828, double %i.qd ; 2 uses
  %indvars.iv.next882 = add nuw nsw i64 %indvars.iv881, 1 ; 2 uses
  %gep955.1 = getelementptr [8 x i8], ptr %invariant.gep954, i64 %indvars.iv.next882
  %i.qg = load double, ptr %gep955.1, align 8, !tbaa !39 ; 3 uses
  %i.qh = fcmp oge double %i.qg, 0.000000e+00
  %i.qi = fneg double %i.qg
  %i.qj = select i1 %i.qh, double %i.qg, double %i.qi
  %gep957.1 = getelementptr [8 x i8], ptr %invariant.gep956, i64 %indvars.iv.next882
  %i.qk = load double, ptr %gep957.1, align 8, !tbaa !39 ; 3 uses
  %i.ql = fcmp oge double %i.qk, 0.000000e+00
  %i.qm = fneg double %i.qk
  %i.qn = select i1 %i.ql, double %i.qk, double %i.qm
  %i.qo = fadd double %i.qj, %i.qn                ; 2 uses
  %i.qp = fcmp oge double %i.qf, %i.qo
  %i.qq = select i1 %i.qp, double %i.qf, double %i.qo ; 2 uses
  %indvars.iv.next882.1 = add nuw nsw i64 %indvars.iv881, 2 ; 2 uses
  %gep955.2 = getelementptr [8 x i8], ptr %invariant.gep954, i64 %indvars.iv.next882.1
  %i.qr = load double, ptr %gep955.2, align 8, !tbaa !39 ; 3 uses
  %i.qs = fcmp oge double %i.qr, 0.000000e+00
  %i.qt = fneg double %i.qr
  %i.qu = select i1 %i.qs, double %i.qr, double %i.qt
  %gep957.2 = getelementptr [8 x i8], ptr %invariant.gep956, i64 %indvars.iv.next882.1
  %i.qv = load double, ptr %gep957.2, align 8, !tbaa !39 ; 3 uses
  %i.qw = fcmp oge double %i.qv, 0.000000e+00
  %i.qx = fneg double %i.qv
  %i.qy = select i1 %i.qw, double %i.qv, double %i.qx
  %i.qz = fadd double %i.qu, %i.qy                ; 2 uses
  %i.ra = fcmp oge double %i.qq, %i.qz
  %i.rb = select i1 %i.ra, double %i.qq, double %i.qz ; 2 uses
  %indvars.iv.next882.2 = add nuw nsw i64 %indvars.iv881, 3 ; 2 uses
  %gep955.3 = getelementptr [8 x i8], ptr %invariant.gep954, i64 %indvars.iv.next882.2
  %i.rc = load double, ptr %gep955.3, align 8, !tbaa !39 ; 3 uses
  %i.rd = fcmp oge double %i.rc, 0.000000e+00
  %i.re = fneg double %i.rc
  %i.rf = select i1 %i.rd, double %i.rc, double %i.re
  %gep957.3 = getelementptr [8 x i8], ptr %invariant.gep956, i64 %indvars.iv.next882.2
  %i.rg = load double, ptr %gep957.3, align 8, !tbaa !39 ; 3 uses
  %i.rh = fcmp oge double %i.rg, 0.000000e+00
  %i.ri = fneg double %i.rg
  %i.rj = select i1 %i.rh, double %i.rg, double %i.ri
  %i.rk = fadd double %i.rf, %i.rj                ; 2 uses
  %i.rl = fcmp oge double %i.rb, %i.rk
  %i.rm = select i1 %i.rl, double %i.rb, double %i.rk ; 3 uses
  %indvars.iv.next882.3 = add nuw nsw i64 %indvars.iv881, 4 ; 2 uses
  %niter1097.next.3 = add i64 %niter1097, 4       ; 2 uses
  %niter1097.ncmp.3 = icmp eq i64 %niter1097.next.3, %unroll_iter1096
  br i1 %niter1097.ncmp.3, label %.loopexit803.thread.unr-lcssa, label %.lr.ph830.new, !llvm.loop !23

.loopexit803.unr-lcssa:                           ; preds = %.lr.ph835.new
  br i1 %lcmp.mod1104.not, label %.loopexit803, label %.epil.preheader1101

.epil.preheader1101:                              ; preds = %.loopexit803.unr-lcssa, %.lr.ph835
  %indvars.iv886.epil.init = phi i64 [ 1, %.lr.ph835 ], [ %indvars.iv.next887.3, %.loopexit803.unr-lcssa ]
  %.3672833.epil.init = phi double [ 0.000000e+00, %.lr.ph835 ], [ %i.ps, %.loopexit803.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1106)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.epil.preheader1101
  %indvars.iv886.epil = phi i64 [ %indvars.iv886.epil.init, %.epil.preheader1101 ], [ %indvars.iv.next887.epil, %bb.be ] ; 2 uses
  %.3672833.epil = phi double [ %.3672833.epil.init, %.epil.preheader1101 ], [ %i.rs, %bb.be ] ; 2 uses
  %epil.iter1103 = phi i64 [ 0, %.epil.preheader1101 ], [ %epil.iter1103.next, %bb.be ]
  %gep959.epil = getelementptr [8 x i8], ptr %invariant.gep958, i64 %indvars.iv886.epil
  %i.rn = load double, ptr %gep959.epil, align 8, !tbaa !39 ; 3 uses
  %i.ro = fcmp oge double %i.rn, 0.000000e+00
  %i.rp = fneg double %i.rn
  %i.rq = select i1 %i.ro, double %i.rn, double %i.rp ; 2 uses
  %i.rr = fcmp oge double %.3672833.epil, %i.rq
  %i.rs = select i1 %i.rr, double %.3672833.epil, double %i.rq ; 2 uses
  %indvars.iv.next887.epil = add nuw nsw i64 %indvars.iv886.epil, 1
  %epil.iter1103.next = add i64 %epil.iter1103, 1 ; 2 uses
  %epil.iter1103.cmp.not = icmp eq i64 %epil.iter1103.next, %xtraiter1102
  br i1 %epil.iter1103.cmp.not, label %.loopexit803, label %bb.be, !llvm.loop !24

.loopexit803:                                     ; preds = %bb.be, %.loopexit803.unr-lcssa
  %.lcssa1074 = phi double [ %i.ps, %.loopexit803.unr-lcssa ], [ %i.rs, %bb.be ] ; 2 uses
  %i.rt = fcmp olt double %.lcssa1074, %i.ca
  br i1 %i.rt, label %.loopexit801, label %iter.check1023

.loopexit803.thread.unr-lcssa:                    ; preds = %.lr.ph830.new
  br i1 %lcmp.mod1093.not, label %.loopexit803.thread, label %.epil.preheader1090

.epil.preheader1090:                              ; preds = %.loopexit803.thread.unr-lcssa, %.lr.ph830
  %indvars.iv881.epil.init = phi i64 [ 1, %.lr.ph830 ], [ %indvars.iv.next882.3, %.loopexit803.thread.unr-lcssa ]
  %.4673828.epil.init = phi double [ 0.000000e+00, %.lr.ph830 ], [ %i.rm, %.loopexit803.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1095)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader1090
  %indvars.iv881.epil = phi i64 [ %indvars.iv881.epil.init, %.epil.preheader1090 ], [ %indvars.iv.next882.epil, %bb.bf ] ; 3 uses
  %.4673828.epil = phi double [ %.4673828.epil.init, %.epil.preheader1090 ], [ %i.se, %bb.bf ] ; 2 uses
  %epil.iter1092 = phi i64 [ 0, %.epil.preheader1090 ], [ %epil.iter1092.next, %bb.bf ]
  %gep955.epil = getelementptr [8 x i8], ptr %invariant.gep954, i64 %indvars.iv881.epil
  %i.ru = load double, ptr %gep955.epil, align 8, !tbaa !39 ; 3 uses
  %i.rv = fcmp oge double %i.ru, 0.000000e+00
  %i.rw = fneg double %i.ru
  %i.rx = select i1 %i.rv, double %i.ru, double %i.rw
  %gep957.epil = getelementptr [8 x i8], ptr %invariant.gep956, i64 %indvars.iv881.epil
  %i.ry = load double, ptr %gep957.epil, align 8, !tbaa !39 ; 3 uses
  %i.rz = fcmp oge double %i.ry, 0.000000e+00
  %i.sa = fneg double %i.ry
  %i.sb = select i1 %i.rz, double %i.ry, double %i.sa
  %i.sc = fadd double %i.rx, %i.sb                ; 2 uses
  %i.sd = fcmp oge double %.4673828.epil, %i.sc
  %i.se = select i1 %i.sd, double %.4673828.epil, double %i.sc ; 2 uses
  %indvars.iv.next882.epil = add nuw nsw i64 %indvars.iv881.epil, 1
  %epil.iter1092.next = add i64 %epil.iter1092, 1 ; 2 uses
  %epil.iter1092.cmp.not = icmp eq i64 %epil.iter1092.next, %xtraiter1091
  br i1 %epil.iter1092.cmp.not, label %.loopexit803.thread, label %bb.bf, !llvm.loop !25

.loopexit803.thread:                              ; preds = %bb.bf, %.loopexit803.thread.unr-lcssa
  %.lcssa = phi double [ %i.rm, %.loopexit803.thread.unr-lcssa ], [ %i.se, %bb.bf ] ; 2 uses
  %i.sf = fcmp olt double %.lcssa, %i.ca
  br i1 %i.sf, label %.loopexit801, label %.thread936

.thread936:                                       ; preds = %.loopexit803.thread
  %i.sg = fdiv double 1.000000e+00, %.lcssa       ; 11 uses
  %i.sh = mul nsw i64 %indvars.iv901, %i.nv
  %i.si = add nuw nsw i64 %indvars.iv901, 1
  %i.sj = mul nsw i64 %i.si, %i.nv
  %invariant.gep960 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sh ; 6 uses
  %invariant.gep962 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sj ; 6 uses
  %brmerge1118 = select i1 %min.iters.check1053, i1 true, i1 %34
  br i1 %brmerge1118, label %scalar.ph1052.preheader, label %vector.ph1059

iter.check1023:                                   ; preds = %.loopexit803
  %i.sk = fdiv double 1.000000e+00, %.lcssa1074   ; 3 uses
  %i.sl = mul nsw i64 %indvars.iv901, %i.nv
  %invariant.gep964 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sl ; 3 uses
  br i1 %min.iters.check1007, label %vec.epilog.scalar.ph1025.preheader, label %vector.main.loop.iter.check1008

vector.main.loop.iter.check1008:                  ; preds = %iter.check1023
  br i1 %min.iters.check1009, label %vec.epilog.ph1027, label %vector.ph1010

vector.ph1010:                                    ; preds = %vector.main.loop.iter.check1008
  %broadcast.splatinsert1012 = insertelement <4 x double> poison, double %i.sk, i64 0
  %broadcast.splat1013 = shufflevector <4 x double> %broadcast.splatinsert1012, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.ph1010, %vector.body1014
  %index1015 = phi i64 [ 0, %vector.ph1010 ], [ %index.next1020, %vector.body1014 ] ; 2 uses
  %i.sm = getelementptr [8 x i8], ptr %invariant.gep964, i64 %index1015 ; 4 uses
  %i.sn = getelementptr i8, ptr %i.sm, i64 8      ; 2 uses
  %i.so = getelementptr i8, ptr %i.sm, i64 40     ; 2 uses
  %i.sp = getelementptr i8, ptr %i.sm, i64 72     ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sm, i64 104    ; 2 uses
  %wide.load1016 = load <4 x double>, ptr %i.sn, align 8, !tbaa !39
  %wide.load1017 = load <4 x double>, ptr %i.so, align 8, !tbaa !39
  %wide.load1018 = load <4 x double>, ptr %i.sp, align 8, !tbaa !39
  %wide.load1019 = load <4 x double>, ptr %i.sq, align 8, !tbaa !39
  %i.sr = fmul <4 x double> %broadcast.splat1013, %wide.load1016
  %i.ss = fmul <4 x double> %broadcast.splat1013, %wide.load1017
  %i.st = fmul <4 x double> %broadcast.splat1013, %wide.load1018
  %i.su = fmul <4 x double> %broadcast.splat1013, %wide.load1019
  store <4 x double> %i.sr, ptr %i.sn, align 8, !tbaa !39
  store <4 x double> %i.ss, ptr %i.so, align 8, !tbaa !39
  store <4 x double> %i.st, ptr %i.sp, align 8, !tbaa !39
  store <4 x double> %i.su, ptr %i.sq, align 8, !tbaa !39
  %index.next1020 = add nuw i64 %index1015, 16    ; 2 uses
  %i.sv = icmp eq i64 %index.next1020, %n.vec1011
  br i1 %i.sv, label %middle.block1021, label %vector.body1014, !llvm.loop !26

middle.block1021:                                 ; preds = %vector.body1014
  br i1 %cmp.n1022, label %.loopexit801, label %vec.epilog.iter.check1024

vec.epilog.iter.check1024:                        ; preds = %middle.block1021
  br i1 %min.epilog.iters.check1026, label %vec.epilog.scalar.ph1025.preheader, label %vec.epilog.ph1027, !prof !45

vec.epilog.ph1027:                                ; preds = %vector.main.loop.iter.check1008, %vec.epilog.iter.check1024
  %vec.epilog.resume.val1028 = phi i64 [ %n.vec1011, %vec.epilog.iter.check1024 ], [ 0, %vector.main.loop.iter.check1008 ]
  %broadcast.splatinsert1030 = insertelement <4 x double> poison, double %i.sk, i64 0
  %broadcast.splat1031 = shufflevector <4 x double> %broadcast.splatinsert1030, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1032

vec.epilog.vector.body1032:                       ; preds = %vec.epilog.vector.body1032, %vec.epilog.ph1027
  %index1033 = phi i64 [ %vec.epilog.resume.val1028, %vec.epilog.ph1027 ], [ %index.next1035, %vec.epilog.vector.body1032 ] ; 2 uses
  %i.sw = getelementptr [8 x i8], ptr %invariant.gep964, i64 %index1033
  %i.sx = getelementptr i8, ptr %i.sw, i64 8      ; 2 uses
  %wide.load1034 = load <4 x double>, ptr %i.sx, align 8, !tbaa !39
  %i.sy = fmul <4 x double> %broadcast.splat1031, %wide.load1034
  store <4 x double> %i.sy, ptr %i.sx, align 8, !tbaa !39
  %index.next1035 = add nuw i64 %index1033, 4     ; 2 uses
  %i.sz = icmp eq i64 %index.next1035, %n.vec1029
  br i1 %i.sz, label %vec.epilog.middle.block1036, label %vec.epilog.vector.body1032, !llvm.loop !27

vec.epilog.middle.block1036:                      ; preds = %vec.epilog.vector.body1032
  br i1 %cmp.n1037, label %.loopexit801, label %vec.epilog.scalar.ph1025.preheader

vec.epilog.scalar.ph1025.preheader:               ; preds = %iter.check1023, %vec.epilog.iter.check1024, %vec.epilog.middle.block1036
  %indvars.iv896.ph = phi i64 [ 1, %iter.check1023 ], [ %i.ol, %vec.epilog.iter.check1024 ], [ %i.om, %vec.epilog.middle.block1036 ]
  br label %vec.epilog.scalar.ph1025

vec.epilog.scalar.ph1025:                         ; preds = %vec.epilog.scalar.ph1025.preheader, %vec.epilog.scalar.ph1025
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %vec.epilog.scalar.ph1025 ], [ %indvars.iv896.ph, %vec.epilog.scalar.ph1025.preheader ] ; 2 uses
  %gep965 = getelementptr [8 x i8], ptr %invariant.gep964, i64 %indvars.iv896 ; 2 uses
  %i.ta = load double, ptr %gep965, align 8, !tbaa !39
  %i.tb = fmul double %i.sk, %i.ta
  store double %i.tb, ptr %gep965, align 8, !tbaa !39
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 1 ; 2 uses
  %exitcond900.not = icmp eq i64 %indvars.iv.next897, %wide.trip.count904
  br i1 %exitcond900.not, label %.loopexit801, label %vec.epilog.scalar.ph1025, !llvm.loop !28

vector.ph1059:                                    ; preds = %.thread936
  %broadcast.splatinsert1061 = insertelement <4 x double> poison, double %i.sg, i64 0
  %broadcast.splat1062 = shufflevector <4 x double> %broadcast.splatinsert1061, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %vector.ph1059
  %index1064 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1069, %vector.body1063 ] ; 2 uses
  %i.tc = or disjoint i64 %index1064, 1           ; 2 uses
  %i.td = getelementptr [8 x i8], ptr %invariant.gep960, i64 %i.tc ; 3 uses
  %i.te = getelementptr i8, ptr %i.td, i64 32     ; 2 uses
  %wide.load1065.a = load <4 x double>, ptr %i.td, align 8, !tbaa !39, !alias.scope !48, !noalias !49
  %wide.load1066.a = load <4 x double>, ptr %i.te, align 8, !tbaa !39, !alias.scope !48, !noalias !49
  %i.tf = fmul <4 x double> %broadcast.splat1062, %wide.load1065.a
  %i.tg = fmul <4 x double> %broadcast.splat1062, %wide.load1066.a
  store <4 x double> %i.tf, ptr %i.td, align 8, !tbaa !39, !alias.scope !48, !noalias !49
  store <4 x double> %i.tg, ptr %i.te, align 8, !tbaa !39, !alias.scope !48, !noalias !49
  %i.th = getelementptr [8 x i8], ptr %invariant.gep962, i64 %i.tc ; 3 uses
  %i.ti = getelementptr i8, ptr %i.th, i64 32     ; 2 uses
  %wide.load1067 = load <4 x double>, ptr %i.th, align 8, !tbaa !39, !alias.scope !49
  %wide.load1068 = load <4 x double>, ptr %i.ti, align 8, !tbaa !39, !alias.scope !49
  %i.tj = fmul <4 x double> %broadcast.splat1062, %wide.load1067
  %i.tk = fmul <4 x double> %broadcast.splat1062, %wide.load1068
  store <4 x double> %i.tj, ptr %i.th, align 8, !tbaa !39, !alias.scope !49
  store <4 x double> %i.tk, ptr %i.ti, align 8, !tbaa !39, !alias.scope !49
  %index.next1069 = add nuw i64 %index1064, 8     ; 2 uses
  %i.tl = icmp eq i64 %index.next1069, %n.vec1060
  br i1 %i.tl, label %middle.block1070, label %vector.body1063, !llvm.loop !32

middle.block1070:                                 ; preds = %vector.body1063
  br i1 %cmp.n1071, label %.loopexit801, label %scalar.ph1052.preheader

scalar.ph1052.preheader:                          ; preds = %.thread936, %middle.block1070
  %indvars.iv891.ph = phi i64 [ %i.oi, %middle.block1070 ], [ 1, %.thread936 ] ; 4 uses
  %i.tm = sub nsw i64 %wide.trip.count904, %indvars.iv891.ph
  %i.tn = sub nsw i64 %i.og, %indvars.iv891.ph
  %xtraiter1098 = and i64 %i.tm, 3                ; 2 uses
  %lcmp.mod1099.not = icmp eq i64 %xtraiter1098, 0
  br i1 %lcmp.mod1099.not, label %scalar.ph1052.prol.loopexit, label %scalar.ph1052.prol

scalar.ph1052.prol:                               ; preds = %scalar.ph1052.preheader, %scalar.ph1052.prol
  %indvars.iv891.prol = phi i64 [ %indvars.iv.next892.prol, %scalar.ph1052.prol ], [ %indvars.iv891.ph, %scalar.ph1052.preheader ] ; 3 uses
  %prol.iter1100 = phi i64 [ %prol.iter1100.next, %scalar.ph1052.prol ], [ 0, %scalar.ph1052.preheader ]
  %gep961.prol = getelementptr [8 x i8], ptr %invariant.gep960, i64 %indvars.iv891.prol ; 2 uses
  %i.to = load double, ptr %gep961.prol, align 8, !tbaa !39
  %i.tp = fmul double %i.sg, %i.to
  store double %i.tp, ptr %gep961.prol, align 8, !tbaa !39
  %gep963.prol = getelementptr [8 x i8], ptr %invariant.gep962, i64 %indvars.iv891.prol ; 2 uses
  %i.tq = load double, ptr %gep963.prol, align 8, !tbaa !39
  %i.tr = fmul double %i.sg, %i.tq
  store double %i.tr, ptr %gep963.prol, align 8, !tbaa !39
  %indvars.iv.next892.prol = add nuw nsw i64 %indvars.iv891.prol, 1 ; 2 uses
  %prol.iter1100.next = add i64 %prol.iter1100, 1 ; 2 uses
  %prol.iter1100.cmp.not = icmp eq i64 %prol.iter1100.next, %xtraiter1098
  br i1 %prol.iter1100.cmp.not, label %scalar.ph1052.prol.loopexit, label %scalar.ph1052.prol, !llvm.loop !33

scalar.ph1052.prol.loopexit:                      ; preds = %scalar.ph1052.prol, %scalar.ph1052.preheader
  %indvars.iv891.unr = phi i64 [ %indvars.iv891.ph, %scalar.ph1052.preheader ], [ %indvars.iv.next892.prol, %scalar.ph1052.prol ]
  %i.ts = icmp ult i64 %i.tn, 3
  br i1 %i.ts, label %.loopexit801, label %scalar.ph1052

scalar.ph1052:                                    ; preds = %scalar.ph1052.prol.loopexit, %scalar.ph1052
  %indvars.iv891 = phi i64 [ %indvars.iv.next892.3, %scalar.ph1052 ], [ %indvars.iv891.unr, %scalar.ph1052.prol.loopexit ] ; 6 uses
  %gep961 = getelementptr [8 x i8], ptr %invariant.gep960, i64 %indvars.iv891 ; 2 uses
  %i.tt = load double, ptr %gep961, align 8, !tbaa !39
  %i.tu = fmul double %i.sg, %i.tt
  store double %i.tu, ptr %gep961, align 8, !tbaa !39
  %gep963 = getelementptr [8 x i8], ptr %invariant.gep962, i64 %indvars.iv891 ; 2 uses
  %i.tv = load double, ptr %gep963, align 8, !tbaa !39
  %i.tw = fmul double %i.sg, %i.tv
  store double %i.tw, ptr %gep963, align 8, !tbaa !39
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1 ; 2 uses
  %gep961.1 = getelementptr [8 x i8], ptr %invariant.gep960, i64 %indvars.iv.next892 ; 2 uses
  %i.tx = load double, ptr %gep961.1, align 8, !tbaa !39
  %i.ty = fmul double %i.sg, %i.tx
  store double %i.ty, ptr %gep961.1, align 8, !tbaa !39
  %gep963.1 = getelementptr [8 x i8], ptr %invariant.gep962, i64 %indvars.iv.next892 ; 2 uses
  %i.tz = load double, ptr %gep963.1, align 8, !tbaa !39
  %i.ua = fmul double %i.sg, %i.tz
  store double %i.ua, ptr %gep963.1, align 8, !tbaa !39
  %indvars.iv.next892.1 = add nuw nsw i64 %indvars.iv891, 2 ; 2 uses
  %gep961.2 = getelementptr [8 x i8], ptr %invariant.gep960, i64 %indvars.iv.next892.1 ; 2 uses
  %i.ub = load double, ptr %gep961.2, align 8, !tbaa !39
  %i.uc = fmul double %i.sg, %i.ub
  store double %i.uc, ptr %gep961.2, align 8, !tbaa !39
  %gep963.2 = getelementptr [8 x i8], ptr %invariant.gep962, i64 %indvars.iv.next892.1 ; 2 uses
  %i.ud = load double, ptr %gep963.2, align 8, !tbaa !39
  %i.ue = fmul double %i.sg, %i.ud
  store double %i.ue, ptr %gep963.2, align 8, !tbaa !39
  %indvars.iv.next892.2 = add nuw nsw i64 %indvars.iv891, 3 ; 2 uses
  %gep961.3 = getelementptr [8 x i8], ptr %invariant.gep960, i64 %indvars.iv.next892.2 ; 2 uses
  %i.uf = load double, ptr %gep961.3, align 8, !tbaa !39
  %i.ug = fmul double %i.sg, %i.uf
  store double %i.ug, ptr %gep961.3, align 8, !tbaa !39
  %gep963.3 = getelementptr [8 x i8], ptr %invariant.gep962, i64 %indvars.iv.next892.2 ; 2 uses
  %i.uh = load double, ptr %gep963.3, align 8, !tbaa !39
  %i.ui = fmul double %i.sg, %i.uh
  store double %i.ui, ptr %gep963.3, align 8, !tbaa !39
  %indvars.iv.next892.3 = add nuw nsw i64 %indvars.iv891, 4 ; 2 uses
  %exitcond895.not.3 = icmp eq i64 %indvars.iv.next892.3, %wide.trip.count904
  br i1 %exitcond895.not.3, label %.loopexit801, label %scalar.ph1052, !llvm.loop !34

.loopexit801:                                     ; preds = %scalar.ph1052.prol.loopexit, %scalar.ph1052, %vec.epilog.scalar.ph1025, %middle.block1070, %middle.block1021, %vec.epilog.middle.block1036, %.loopexit803.thread, %bb.bc, %.loopexit803
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1 ; 2 uses
  %exitcond905.not = icmp eq i64 %indvars.iv.next902, %wide.trip.count904
  br i1 %exitcond905.not, label %.loopexit805, label %bb.bc, !llvm.loop !35

.loopexit805:                                     ; preds = %.loopexit801, %.thread785, %bb.ao
  %.pr = load i32, ptr %2, align 4, !tbaa !37     ; 3 uses
  %.not726846 = icmp slt i32 %.pr, 1
  br i1 %.not726846, label %.loopexit, label %.lr.ph848

.lr.ph848:                                        ; preds = %.loopexit805
  %i.uj = load double, ptr %i.c, align 8, !tbaa !39 ; 4 uses
  %i.uk = load double, ptr %i.d, align 8, !tbaa !39 ; 2 uses
  %i.ul = fmul double %i.cc, %i.ca                ; 8 uses
  %i.um = fdiv double %i.ul, %.0666               ; 2 uses
  %i.un = fdiv double %i.ul, %.0664
  %i.uo = zext nneg i32 %.pr to i64
  %i.up = add nuw i32 %.pr, 1
  %wide.trip.count909 = zext i32 %i.up to i64
  br label %bb.bg
end_hunk_1
