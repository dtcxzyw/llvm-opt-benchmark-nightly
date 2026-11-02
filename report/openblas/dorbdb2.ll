Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorbdb2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DORBDB2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@c__1 = internal global i32 1, align 4
@c_b9 = internal global double -1.000000e+00, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: nounwind uwtable
define void @dorbdb2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 28 uses
  %i.c = alloca i32, align 4                      ; 16 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.i = load i32, ptr %4, align 4, !tbaa !10     ; 5 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 6 uses
  %i.l = load i32, ptr %6, align 4, !tbaa !10     ; 7 uses
  %narrow312 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow312 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %7, i64 -8
  %i.p = getelementptr inbounds i8, ptr %8, i64 -8
  %i.q = getelementptr inbounds i8, ptr %9, i64 -8
  %i.r = getelementptr inbounds i8, ptr %10, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %11, i64 -8
  store i32 0, ptr %14, align 4, !tbaa !10
  %i.t = load i32, ptr %13, align 4, !tbaa !10    ; 2 uses
  %i.u = icmp eq i32 %i.t, -1                     ; 2 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread323, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr %1, align 4, !tbaa !10     ; 9 uses
  %i.y = icmp slt i32 %i.x, 0
  %i.z = sub nsw i32 %i.v, %i.x                   ; 3 uses
  %i.aa = icmp sgt i32 %i.x, %i.z
  %or.cond316 = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond316, label %.thread323, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %2, align 4, !tbaa !10    ; 4 uses
  %i.ac = icmp slt i32 %i.ab, %i.x
  %i.ad = sub nsw i32 %i.v, %i.ab
  %i.ae = icmp slt i32 %i.ad, %i.x
  %or.cond319 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond319, label %.thread323, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %4, align 4, !tbaa !10
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1)
  %i.ag = icmp slt i32 %i.af, %spec.select
  br i1 %i.ag, label %.thread323, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %6, align 4, !tbaa !10
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.thread323, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.x, -1
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.z)
  %i.am = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.am) ; 2 uses
  store i32 %i.am, ptr %i.h, align 4, !tbaa !10
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = uitofp nneg i32 %i.ao to double
  store double %i.ap, ptr %12, align 8, !tbaa !12
  %i.aq = icmp sgt i32 %i.t, %i.an
  %or.cond = or i1 %i.aq, %i.u
  br i1 %or.cond, label %.thread, label %.thread323

.thread323:                                       ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -3, %bb.c ], [ -5, %bb.d ], [ -2, %bb.b ], [ -7, %bb.e ], [ -14, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 3, %bb.c ], [ 5, %bb.d ], [ 2, %bb.b ], [ 7, %bb.e ], [ 14, %bb.f ]
  store i32 %.sink, ptr %14, align 4, !tbaa !10
  store i32 %.neg, ptr %i.a, align 4, !tbaa !10
  %i.ar = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.f
  br i1 %i.u, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not313340 = icmp eq i32 %i.x, 0
  br i1 %.not313340, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.as = add i32 %i.i, 1
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.au = sext i32 %i.l to i64                    ; 2 uses
  %i.av = sext i32 %i.i to i64
  %i.aw = zext nneg i32 %i.x to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 20 uses
  %.0307.neg342 = phi i32 [ -1, %.lr.ph ], [ %i.eq, %bb.l ]
  %indvars350 = trunc nuw i64 %indvars.iv to i32  ; 12 uses
  %i.ax = icmp samesign ugt i64 %indvars.iv, 1
  %.pre355 = load i32, ptr %2, align 4, !tbaa !10 ; 2 uses
  %i.ay = add nsw i32 %.0307.neg342, 1            ; 9 uses
  br i1 %i.ax, label %bb.i, label %._crit_edge359

._crit_edge359:                                   ; preds = %bb.h
  %.pre361 = mul nuw nsw i64 %indvars.iv, %i.au
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = add i32 %i.ay, %.pre355
  store i32 %i.az, ptr %i.b, align 4, !tbaa !10
  %i.ba = mul i32 %i.as, %indvars350
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bb
  %i.bd = mul nsw i64 %indvars.iv, %i.au          ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.bd
  call void @drot_(ptr noundef nonnull %i.b, ptr noundef %i.bc, ptr noundef nonnull %4, ptr noundef %i.bg, ptr noundef nonnull %6, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %.pre = load i32, ptr %2, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge359, %bb.i
  %.pre-phi362 = phi i64 [ %.pre361, %._crit_edge359 ], [ %i.bd, %bb.i ]
  %i.bh = phi i32 [ %.pre355, %._crit_edge359 ], [ %.pre, %bb.i ]
  %i.bi = add i32 %i.ay, %i.bh
  store i32 %i.bi, ptr %i.b, align 4, !tbaa !10
  %i.bj = mul nsw i64 %indvars.iv, %i.av          ; 2 uses
  %i.bk = mul nsw i32 %i.i, %indvars350
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.bl ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.bo = mul nsw i32 %i.i, %indvars
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.bn, ptr noundef %i.br, ptr noundef nonnull %4, ptr noundef nonnull %i.bs) #6
  %i.bt = load double, ptr %i.bn, align 8, !tbaa !12
  store double %i.bt, ptr %i.e, align 8, !tbaa !12
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !12
  %i.bu = load i32, ptr %1, align 4, !tbaa !10
  %i.bv = sub nsw i32 %i.bu, %indvars350
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !10
  %i.bw = load i32, ptr %2, align 4, !tbaa !10
  %i.bx = add i32 %i.ay, %i.bw
  store i32 %i.bx, ptr %i.c, align 4, !tbaa !10
  %i.by = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.bj ; 8 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bn, ptr noundef nonnull %4, ptr noundef nonnull %i.bs, ptr noundef %i.bz, ptr noundef nonnull %4, ptr noundef nonnull %i.at) #6
  %i.ca = load i32, ptr %0, align 4, !tbaa !10
  %i.cb = load i32, ptr %1, align 4, !tbaa !10
  %i.cc = add i32 %i.ay, %i.ca
  %i.cd = sub i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !10
  %i.ce = load i32, ptr %2, align 4, !tbaa !10
  %i.cf = add i32 %i.ay, %i.ce
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !10
  %i.cg = mul nsw i32 %i.l, %indvars350
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.ch ; 7 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bn, ptr noundef nonnull %4, ptr noundef nonnull %i.bs, ptr noundef %i.cj, ptr noundef nonnull %6, ptr noundef nonnull %i.at) #6
  %i.ck = load i32, ptr %1, align 4, !tbaa !10
  %i.cl = sub nsw i32 %i.ck, %indvars350
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !10
  %i.cm = call double @dnrm2_(ptr noundef nonnull %i.b, ptr noundef %i.bz, ptr noundef nonnull @c__1) #6 ; 2 uses
  %i.cn = load i32, ptr %0, align 4, !tbaa !10
  %i.co = load i32, ptr %1, align 4, !tbaa !10
  %i.cp = add i32 %i.ay, %i.cn
  %i.cq = sub i32 %i.cp, %i.co
  store i32 %i.cq, ptr %i.c, align 4, !tbaa !10
  %i.cr = call double @dnrm2_(ptr noundef nonnull %i.c, ptr noundef %i.cj, ptr noundef nonnull @c__1) #6 ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cs)
  %sqrt = call double @llvm.sqrt.f64(double %i.ct) ; 2 uses
  store double %sqrt, ptr %i.f, align 8, !tbaa !12
  %i.cu = load double, ptr %i.e, align 8, !tbaa !12
  %i.cv = call double @atan2(double noundef %sqrt, double noundef %i.cu) #6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %i.cv, ptr %i.cw, align 8, !tbaa !12
  %i.cx = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %i.cy = sub nsw i32 %i.cx, %indvars350
  store i32 %i.cy, ptr %i.b, align 4, !tbaa !10
  %i.cz = load i32, ptr %0, align 4, !tbaa !10
  %i.da = sub i32 %i.ay, %i.cx
  %i.db = add i32 %i.da, %i.cz
  store i32 %i.db, ptr %i.c, align 4, !tbaa !10
  %i.dc = load i32, ptr %2, align 4, !tbaa !10
  %i.dd = sub nsw i32 %i.dc, %indvars350
  store i32 %i.dd, ptr %i.d, align 4, !tbaa !10
  %i.de = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.bp ; 2 uses
  %i.dg = mul nsw i32 %i.l, %indvars
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %i.dh ; 2 uses
  call void @dorbdb5_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.bz, ptr noundef nonnull @c__1, ptr noundef %i.cj, ptr noundef nonnull @c__1, ptr noundef %i.df, ptr noundef nonnull %4, ptr noundef %i.dj, ptr noundef nonnull %6, ptr noundef nonnull %i.at, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #6
  %i.dk = load i32, ptr %1, align 4, !tbaa !10
  %i.dl = sub nsw i32 %i.dk, %indvars350
  store i32 %i.dl, ptr %i.b, align 4, !tbaa !10
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull @c_b9, ptr noundef %i.bz, ptr noundef nonnull @c__1) #6
  %i.dm = load i32, ptr %0, align 4, !tbaa !10
  %i.dn = load i32, ptr %1, align 4, !tbaa !10
  %i.do = add i32 %i.ay, %i.dm
  %i.dp = sub i32 %i.do, %i.dn
  store i32 %i.dp, ptr %i.b, align 4, !tbaa !10
  %i.dq = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.pre-phi362
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.cj, ptr noundef %i.dr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ds) #6
  %i.dt = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv, %i.du
  br i1 %i.dv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dw = sub nuw nsw i32 %i.dt, %indvars350
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !10
  %i.dx = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.bj
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bz, ptr noundef %i.dz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ea) #6
  %i.eb = load double, ptr %i.bz, align 8, !tbaa !12
  %i.ec = load double, ptr %i.cj, align 8, !tbaa !12
  %i.ed = call double @atan2(double noundef %i.eb, double noundef %i.ec) #6 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.ed, ptr %i.ee, align 8, !tbaa !12
  call void @sincos(double %i.ed, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  store double %cos, ptr %i.e, align 8, !tbaa !12
  store double %sin, ptr %i.f, align 8, !tbaa !12
  store double 1.000000e+00, ptr %i.bz, align 8, !tbaa !12
  %i.ef = load i32, ptr %1, align 4, !tbaa !10
  %i.eg = sub nsw i32 %i.ef, %indvars350
  store i32 %i.eg, ptr %i.b, align 4, !tbaa !10
  %i.eh = load i32, ptr %2, align 4, !tbaa !10
  %i.ei = sub nsw i32 %i.eh, %indvars350
  store i32 %i.ei, ptr %i.c, align 4, !tbaa !10
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.df, ptr noundef nonnull %4, ptr noundef nonnull %i.at) #6
  %.pre356 = load i32, ptr %1, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ej = phi i32 [ %.pre356, %bb.k ], [ %i.dt, %bb.j ]
  store double 1.000000e+00, ptr %i.cj, align 8, !tbaa !12
  %i.ek = load i32, ptr %0, align 4, !tbaa !10
  %i.el = add i32 %i.ay, %i.ek
  %i.em = sub i32 %i.el, %i.ej
  store i32 %i.em, ptr %i.b, align 4, !tbaa !10
  %i.en = load i32, ptr %2, align 4, !tbaa !10
  %i.eo = sub nsw i32 %i.en, %indvars350
  store i32 %i.eo, ptr %i.c, align 4, !tbaa !10
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ds, ptr noundef %i.dj, ptr noundef nonnull %6, ptr noundef nonnull %i.at) #6
  %.not313.not = icmp samesign ult i64 %indvars.iv, %i.aw
  %i.ep = trunc nuw i64 %indvars.iv to i32
  %i.eq = xor i32 %i.ep, -1
  br i1 %.not313.not, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre357 = load i32, ptr %2, align 4, !tbaa !10
  %.pre358 = load i32, ptr %1, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.er = phi i32 [ %.pre358, %._crit_edge.loopexit ], [ 0, %bb.g ] ; 3 uses
  %i.es = phi i32 [ %.pre357, %._crit_edge.loopexit ], [ %i.ab, %bb.g ] ; 2 uses
  %.not314344.not = icmp slt i32 %i.er, %i.es
  br i1 %.not314344.not, label %.lr.ph348, label %.loopexit

.lr.ph348:                                        ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = sext i32 %i.er to i64
  %i.ev = add nsw i64 %i.eu, 1
  %i.ew = sext i32 %i.l to i64
  %i.ex = sext i32 %i.es to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph348, %bb.m
  %indvars.iv351 = phi i64 [ %i.ev, %.lr.ph348 ], [ %indvars.iv.next352, %bb.m ] ; 7 uses
  %.1.neg346.in = phi i32 [ %i.er, %.lr.ph348 ], [ %indvars354, %bb.m ] ; 2 uses
  %indvars354 = trunc i64 %indvars.iv351 to i32   ; 3 uses
  %i.ey = load i32, ptr %0, align 4, !tbaa !10
  %i.ez = load i32, ptr %1, align 4, !tbaa !10
  %i.fa = add i32 %.1.neg346.in, %i.ez
  %i.fb = sub i32 %i.ey, %i.fa
  store i32 %i.fb, ptr %i.b, align 4, !tbaa !10
  %i.fc = mul nsw i64 %indvars.iv351, %i.ew
  %i.fd = mul nsw i32 %i.l, %indvars354
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv351
  %i.fg = getelementptr [8 x i8], ptr %i.ff, i64 %i.fe ; 3 uses
  %indvars.iv.next352 = add nsw i64 %indvars.iv351, 1 ; 3 uses
  %indvars353 = trunc i64 %indvars.iv.next352 to i32
  %i.fh = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next352
  %i.fi = getelementptr [8 x i8], ptr %i.fh, i64 %i.fc
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv351 ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.fg, ptr noundef %i.fi, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fj) #6
  store double 1.000000e+00, ptr %i.fg, align 8, !tbaa !12
  %i.fk = load i32, ptr %0, align 4, !tbaa !10
  %i.fl = load i32, ptr %1, align 4, !tbaa !10
  %i.fm = add i32 %.1.neg346.in, %i.fl
  %i.fn = sub i32 %i.fk, %i.fm
  store i32 %i.fn, ptr %i.b, align 4, !tbaa !10
  %i.fo = load i32, ptr %2, align 4, !tbaa !10
  %i.fp = sub nsw i32 %i.fo, %indvars354
  store i32 %i.fp, ptr %i.c, align 4, !tbaa !10
  %i.fq = mul nsw i32 %i.l, %indvars353
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv351
  %i.ft = getelementptr [8 x i8], ptr %i.fs, i64 %i.fr
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.fg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fj, ptr noundef %i.ft, ptr noundef nonnull %6, ptr noundef nonnull %i.et) #6
  %.not314.not = icmp slt i64 %indvars.iv351, %i.ex
  br i1 %.not314.not, label %bb.m, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.m, %._crit_edge, %.thread, %.thread323
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

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfgp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

declare void @dorbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = !{!5, !5, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
