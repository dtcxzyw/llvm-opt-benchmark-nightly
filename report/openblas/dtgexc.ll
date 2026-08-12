begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DTGEXC\00", align 1
@c__1 = internal global i32 1, align 4
@c__2 = internal global i32 2, align 4

; Function Attrs: nounwind uwtable
define void @dtgexc_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12, ptr noundef %13, ptr noundef %14, ptr noundef initializes((0, 4)) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 38 uses
  %i.c = alloca i32, align 4                      ; 20 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.e = load i32, ptr %4, align 4, !tbaa !8      ; 13 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.f ; 12 uses
  store i32 0, ptr %15, align 4, !tbaa !8
  %i.h = load i32, ptr %14, align 4, !tbaa !8     ; 2 uses
  %i.i = icmp eq i32 %i.h, -1                     ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !8      ; 12 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread413, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %4, align 4, !tbaa !8
  %i.m = icmp samesign ugt i32 %i.j, 1            ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1) ; 2 uses
  %i.n = icmp slt i32 %i.l, %spec.select
  br i1 %i.n, label %.thread413, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %6, align 4, !tbaa !8
  %i.p = icmp slt i32 %i.o, %spec.select
  br i1 %i.p, label %.thread413, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %8, align 4, !tbaa !8      ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.thread413, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %0, align 4, !tbaa !8
  %.not = icmp ne i32 %i.s, 0
  %i.t = icmp samesign ult i32 %i.q, %i.j
  %16 = select i1 %.not, i1 %i.m, i1 false
  %or.cond427 = select i1 %16, i1 %i.t, i1 false
  br i1 %or.cond427, label %.thread413, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %10, align 4, !tbaa !8     ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %.thread413, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %1, align 4, !tbaa !8
  %.not389 = icmp ne i32 %i.w, 0
  %i.x = icmp samesign ult i32 %i.u, %i.j
  %17 = select i1 %.not389, i1 %i.m, i1 false
  %or.cond428 = select i1 %17, i1 %i.x, i1 false
  br i1 %or.cond428, label %.thread413, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %11, align 4, !tbaa !8     ; 6 uses
  %i.z = icmp slt i32 %i.y, 1
  %i.aa = icmp samesign ugt i32 %i.y, %i.j
  %or.cond429 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond429, label %.thread413, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %12, align 4, !tbaa !8    ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  %i.ad = icmp sgt i32 %i.ab, %i.j
  %or.cond408 = or i1 %i.ac, %i.ad
  br i1 %or.cond408, label %.thread413, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = shl i32 %i.j, 2
  %i.af = add nsw i32 %i.ae, 16
  %.inv = icmp samesign ugt i32 %i.j, 1
  %.0367 = select i1 %.inv, i32 %i.af, i32 1      ; 2 uses
  %i.ag = sitofp i32 %.0367 to double             ; 2 uses
  store double %i.ag, ptr %13, align 8, !tbaa !9
  %i.ah = icmp sge i32 %i.h, %.0367
  %or.cond = or i1 %i.ah, %i.i
  br i1 %or.cond, label %.thread, label %.thread413

.thread413:                                       ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -3, %bb.a ], [ -7, %bb.c ], [ -11, %bb.f ], [ -12, %bb.h ], [ -9, %bb.d ], [ -5, %bb.b ], [ -13, %bb.i ], [ -9, %bb.e ], [ -11, %bb.g ], [ -15, %bb.j ]
  %.neg452 = phi i32 [ 3, %bb.a ], [ 7, %bb.c ], [ 11, %bb.f ], [ 12, %bb.h ], [ 9, %bb.d ], [ 5, %bb.b ], [ 13, %bb.i ], [ 9, %bb.e ], [ 11, %bb.g ], [ 15, %bb.j ]
  store i32 %.sink, ptr %15, align 4, !tbaa !8
  store i32 %.neg452, ptr %i.a, align 4, !tbaa !8
  %i.ai = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %bb.ch

.thread:                                          ; preds = %bb.j
  %i.aj = icmp samesign ult i32 %i.j, 2
  %or.cond455 = select i1 %i.i, i1 true, i1 %i.aj
  br i1 %or.cond455, label %bb.ch, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ak = icmp samesign ugt i32 %i.y, 1
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.y, -1                    ; 3 uses
  %i.am = mul nsw i32 %i.al, %i.e
  %i.an = add nsw i32 %i.am, %i.y
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ar = fcmp une double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.al, ptr %11, align 4, !tbaa !8
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.as = phi i32 [ %i.j, %bb.l ], [ %.pre, %bb.m ], [ %i.j, %bb.k ] ; 3 uses
  %i.at = phi i32 [ %i.y, %bb.l ], [ %i.al, %bb.m ], [ 1, %bb.k ] ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !8
  %i.au = icmp slt i32 %i.at, %i.as
  br i1 %i.au, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = add nuw nsw i32 %i.at, 1
  %i.aw = mul nsw i32 %i.at, %i.e
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !9
  %i.bb = fcmp une double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.d, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bc = phi i1 [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.n ] ; 4 uses
  %i.bd = phi i1 [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.n ]
  %i.be = load i32, ptr %12, align 4, !tbaa !8    ; 5 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bg = add nsw i32 %i.be, -1                   ; 3 uses
  %i.bh = mul nsw i32 %i.bg, %i.e
  %i.bi = add nsw i32 %i.bh, %i.be
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !9
  %i.bm = fcmp une double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bg, ptr %12, align 4, !tbaa !8
  %.pre432 = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.bn = phi i32 [ %i.as, %bb.r ], [ %.pre432, %bb.s ], [ %i.as, %bb.q ]
  %i.bo = phi i32 [ %i.be, %bb.r ], [ %i.bg, %bb.s ], [ %i.be, %bb.q ] ; 6 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bq = add nsw i32 %i.bo, 1
  %i.br = mul nsw i32 %i.bo, %i.e
  %i.bs = add nsw i32 %i.bq, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !9
  %i.bw = fcmp une double %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %or.cond3 = phi i1 [ false, %bb.v ], [ %i.bc, %bb.u ], [ %i.bc, %bb.t ]
  %or.cond5 = phi i1 [ %i.bd, %bb.v ], [ %i.bc, %bb.u ], [ %i.bc, %bb.t ]
  %i.bx = load i32, ptr %11, align 4, !tbaa !8    ; 4 uses
  %i.by = icmp eq i32 %i.bx, %i.bo
  br i1 %i.by, label %bb.ch, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = icmp slt i32 %i.bx, %i.bo
  br i1 %i.bz, label %bb.y, label %bb.bd

bb.y:                                             ; preds = %bb.x
  br i1 %or.cond5, label %.sink.split, label %bb.z

.sink.split:                                      ; preds = %bb.y
  %.mux = select i1 %or.cond3, i32 -1, i32 1
  %i.ca = add nsw i32 %i.bo, %.mux
  store i32 %i.ca, ptr %12, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.sink.split
  %i.cb = load i32, ptr %11, align 4, !tbaa !8    ; 2 uses
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.bc, %bb.z
  %i.cc = phi i32 [ %i.el, %bb.bc ], [ %i.cb, %bb.z ] ; 4 uses
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.ce = add i32 %i.cd, -1
  %or.cond7 = icmp ult i32 %i.ce, 2
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.cf = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  br i1 %or.cond7, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.cg = add nsw i32 %i.cc, %i.cd                ; 3 uses
  %.not403.not = icmp slt i32 %i.cg, %i.cf
  br i1 %.not403.not, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ch = add nsw i32 %i.cg, 1
  %i.ci = mul nsw i32 %i.cg, %i.e
  %i.cj = add nsw i32 %i.ch, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = fcmp une double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 2, ptr %i.c, align 4, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.co = load i32, ptr %15, align 4, !tbaa !8
  %.not404 = icmp eq i32 %i.co, 0
  br i1 %.not404, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.cp, ptr %12, align 4, !tbaa !8
  br label %bb.ch

bb.ag:                                            ; preds = %bb.ae
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !8
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cs = add nsw i32 %i.cr, %i.cq                ; 6 uses
  store i32 %i.cs, ptr %i.b, align 4, !tbaa !8
  %i.ct = load i32, ptr %i.d, align 4, !tbaa !8
  %i.cu = icmp eq i32 %i.ct, 2
  br i1 %i.cu, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.cv = add nsw i32 %i.cs, 1
  %i.cw = mul nsw i32 %i.cs, %i.e
  %i.cx = add nsw i32 %i.cv, %i.cw
  %i.cy = sext i32 %i.cx to i64
end_hunk_0
