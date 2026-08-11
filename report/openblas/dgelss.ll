begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__6 = internal global i32 6, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGELSS\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@c_b46 = internal global double 0.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b79 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dgelss_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef captures(none) %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11, ptr noundef initializes((0, 4)) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 47 uses
  %i.b = alloca i32, align 4                      ; 29 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 11 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca double, align 8                   ; 10 uses
  %i.i = alloca i32, align 4                      ; 15 uses
  %i.j = alloca double, align 8                   ; 10 uses
  %i.k = alloca [1 x double], align 8             ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.l = load i32, ptr %4, align 4, !tbaa !8      ; 2 uses
  %narrow = xor i32 %i.l, -1
  %i.m = sext i32 %narrow to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %3, i64 %i.m
  %i.o = load i32, ptr %6, align 4, !tbaa !8      ; 8 uses
  %narrow1051 = xor i32 %i.o, -1
  %i.p = sext i32 %narrow1051 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %5, i64 %i.p ; 10 uses
  %i.r = getelementptr inbounds i8, ptr %7, i64 -8 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %10, i64 -8 ; 17 uses
  store i32 0, ptr %12, align 4, !tbaa !8
  %i.t = load i32, ptr %0, align 4, !tbaa !8      ; 6 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !8      ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.u) ; 2 uses
  store i32 %., ptr %i.e, align 4, !tbaa !8
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.u)
  %i.w = load i32, ptr %11, align 4, !tbaa !8     ; 2 uses
  %i.x = icmp eq i32 %i.w, -1                     ; 2 uses
  %i.y = icmp slt i32 %i.t, 0
  br i1 %i.y, label %.thread1095.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp slt i32 %i.u, 0
  br i1 %i.z, label %.thread1095.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %2, align 4, !tbaa !8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.thread1095.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %4, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1)
  %i.ad = icmp slt i32 %i.ac, %spec.select
  br i1 %i.ad, label %.thread1095.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %6, align 4, !tbaa !8
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.thread1095.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp sgt i32 %., 0
  br i1 %i.ah, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  store i32 %i.t, ptr %i.g, align 4, !tbaa !8
  %i.ai = tail call i32 @ilaenv_(ptr noundef nonnull @c__6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4 ; 3 uses
  %i.aj = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not1022 = icmp slt i32 %i.aj, %i.ak
  %.not1023 = icmp slt i32 %i.aj, %i.ai
  %or.cond1079 = select i1 %.not1022, i1 true, i1 %.not1023
  br i1 %or.cond1079, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @dgeqrf_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.al = load double, ptr %i.k, align 8, !tbaa !9
  %i.am = fptosi double %i.al to i32
  call void @dormqr_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.an = load double, ptr %i.k, align 8, !tbaa !9
  %i.ao = fptosi double %i.an to i32
  %i.ap = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  store i32 %i.ap, ptr %i.g, align 4, !tbaa !8
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = call i32 @llvm.smax.i32(i32 %i.aq, i32 1) ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !8
  %i.as = add nsw i32 %i.ap, %i.ao                ; 2 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !8
  %i.at = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.as)
  %.pre = load i32, ptr %0, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %i.ap, %bb.h ], [ %i.ak, %bb.g ] ; 4 uses
  %i.av = phi i32 [ %.pre, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %.0983 = phi i32 [ %i.at, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %.not1025 = icmp slt i32 %i.av, %i.au
  br i1 %.not1025, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.aw = mul nsw i32 %i.au, 5                    ; 2 uses
  store i32 %i.aw, ptr %i.b, align 4, !tbaa !8
  %i.ax = icmp slt i32 %i.au, 1
  %i.ay = select i1 %i.ax, i32 1, i32 %i.aw       ; 2 uses
  call void @dgebrd_(ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.az = load double, ptr %i.k, align 8, !tbaa !9
  %i.ba = fptosi double %i.az to i32
  call void @dormbr_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.bb = load double, ptr %i.k, align 8, !tbaa !9
  %i.bc = fptosi double %i.bb to i32
  call void @dorgbr_(ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.bd = load double, ptr %i.k, align 8, !tbaa !9
  %i.be = fptosi double %i.bd to i32
  %i.bf = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.bg = mul nsw i32 %i.bf, 3                    ; 5 uses
  %i.bh = add nsw i32 %i.bg, %i.ba
  %i.bi = call i32 @llvm.smax.i32(i32 %.0983, i32 %i.bh)
  %i.bj = add nsw i32 %i.bg, %i.bc
  %i.bk = call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bj)
  %i.bl = add nsw i32 %i.bg, %i.be
  %i.bm = call i32 @llvm.smax.i32(i32 %i.bk, i32 %i.bl)
  %i.bn = call i32 @llvm.smax.i32(i32 %i.bm, i32 %i.ay)
  %i.bo = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bf
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bp)
  %i.br = load i32, ptr %i.g, align 4, !tbaa !8
  %i.bs = add nsw i32 %i.br, %i.bg
  %i.bt = add nsw i32 %i.bo, %i.bg                ; 2 uses
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !8
  %i.bu = call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bt) ; 2 uses
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !8
  %i.bv = call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.ay) ; 2 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.bq)
  %.pre1153 = load i32, ptr %0, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bx = phi i32 [ %.pre1153, %bb.j ], [ %i.av, %bb.i ] ; 5 uses
  %i.by = phi i32 [ %i.bf, %bb.j ], [ %i.au, %bb.i ] ; 3 uses
  %.0986 = phi i32 [ %i.bv, %bb.j ], [ 1, %bb.i ]
  %.1984 = phi i32 [ %i.bw, %bb.j ], [ %.0983, %bb.i ]
  %i.bz = icmp sgt i32 %i.by, %i.bx
  br i1 %i.bz, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ca = mul nsw i32 %i.bx, 5
  %i.cb = icmp slt i32 %i.bx, 1
  %i.cc = select i1 %i.cb, i32 1, i32 %i.ca       ; 3 uses
  %i.cd = mul nsw i32 %i.bx, 3                    ; 2 uses
  %i.ce = load i32, ptr %2, align 4, !tbaa !8
  %i.cf = add nsw i32 %i.ce, %i.cd
  %i.cg = add nsw i32 %i.cd, %i.by                ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !8
  %i.ch = call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.cg) ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !8
  %i.ci = call i32 @llvm.smax.i32(i32 %i.ch, i32 %i.cc) ; 2 uses
  %.not1036 = icmp slt i32 %i.by, %i.ai
  br i1 %.not1036, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @dgelqf_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.cj = load double, ptr %i.k, align 8, !tbaa !9
  call void @dgebrd_(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.ck = load double, ptr %i.k, align 8, !tbaa !9
  call void @dormbr_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.cl = load double, ptr %i.k, align 8, !tbaa !9
  call void @dorgbr_(ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.cm = load double, ptr %i.k, align 8, !tbaa !9
  call void @dormlq_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.cn = load double, ptr %i.k, align 8, !tbaa !9
  %i.co = fptosi double %i.cn to i32
  %i.cp = insertelement <4 x double> poison, double %i.cj, i64 0
  %i.cq = insertelement <4 x double> %i.cp, double %i.ck, i64 1
  %i.cr = insertelement <4 x double> %i.cq, double %i.cl, i64 2
  %i.cs = insertelement <4 x double> %i.cr, double %i.cm, i64 3
  %i.ct = fptosi <4 x double> %i.cs to <4 x i32>
  %i.cu = load i32, ptr %0, align 4, !tbaa !8     ; 8 uses
  %i.cv = add i32 %i.cu, 4
  %i.cw = insertelement <2 x i32> <i32 1, i32 poison>, i32 %i.cv, i64 1
  %i.cx = insertelement <2 x i32> poison, i32 %i.cu, i64 0
  %i.cy = shufflevector <2 x i32> %i.cw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cz = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.da = mul <4 x i32> %i.cy, %i.cz
  %i.db = add nsw <4 x i32> %i.da, %i.ct
  %i.dc = add i32 %i.cu, 1                        ; 2 uses
  %i.dd = mul i32 %i.dc, %i.cu
  %i.de = add nsw i32 %i.dd, %i.cc
  %i.df = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 1
  %i.dh = add i32 %i.cu, 2
  %i.di = add i32 %i.df, %i.dc
  %.sink1189 = select i1 %i.dg, i32 %i.di, i32 %i.dh
  %i.dj = mul i32 %.sink1189, %i.cu
  %i.dk = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.db)
  %i.dl = call i32 @llvm.smax.i32(i32 %i.dk, i32 %i.de)
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dl, i32 %i.dj) ; 2 uses
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !8
  %i.dn = add nsw i32 %i.cu, %i.co                ; 2 uses
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !8
  %i.do = call i32 @llvm.smax.i32(i32 %i.dm, i32 %i.dn)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @dgebrd_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.dp = load double, ptr %i.k, align 8, !tbaa !9
  %i.dq = fptosi double %i.dp to i32
  call void @dormbr_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.dr = load double, ptr %i.k, align 8, !tbaa !9
  %i.ds = fptosi double %i.dr to i32
  call void @dorgbr_(ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull @c_n1, ptr noundef nonnull %12) #4
  %i.dt = load double, ptr %i.k, align 8, !tbaa !9
  %i.du = fptosi double %i.dt to i32
  %i.dv = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.dw = mul nsw i32 %i.dv, 3
  %i.dx = call i32 @llvm.smax.i32(i32 %i.dq, i32 %i.ds)
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 %i.du)
  %i.dz = add nsw i32 %i.dw, %i.dy
  %i.ea = call i32 @llvm.smax.i32(i32 %i.dz, i32 %i.cc) ; 2 uses
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !8
  %i.eb = load i32, ptr %1, align 4, !tbaa !8
  %i.ec = load i32, ptr %2, align 4, !tbaa !8
  %i.ed = mul nsw i32 %i.ec, %i.eb                ; 2 uses
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !8
  %i.ee = call i32 @llvm.smax.i32(i32 %i.ea, i32 %i.ed)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ef = phi i32 [ %i.cu, %bb.m ], [ %i.dv, %bb.n ], [ %i.bx, %bb.k ]
  %.1987 = phi i32 [ %i.ci, %bb.m ], [ %i.ci, %bb.n ], [ %.0986, %bb.k ] ; 2 uses
  %.3 = phi i32 [ %i.do, %bb.m ], [ %i.ee, %bb.n ], [ %.1984, %bb.k ]
  %i.eg = call i32 @llvm.smax.i32(i32 %.1987, i32 %.3)
  %i.eh = sitofp i32 %i.eg to double
  %.pre1154 = load i32, ptr %11, align 4, !tbaa !8
end_hunk_0
