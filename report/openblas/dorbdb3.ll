Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorbdb3?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DORBDB3\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: nounwind uwtable
define void @dorbdb3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 26 uses
  %i.c = alloca i32, align 4                      ; 16 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = alloca double, align 8                   ; 6 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.i = load i32, ptr %4, align 4, !tbaa !10     ; 7 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 7 uses
  %i.l = load i32, ptr %6, align 4, !tbaa !10     ; 5 uses
  %narrow309 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow309 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds i8, ptr %7, i64 -8
  %i.p = getelementptr inbounds i8, ptr %8, i64 -8
  %i.q = getelementptr inbounds i8, ptr %9, i64 -8 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %10, i64 -8
  %i.s = getelementptr inbounds i8, ptr %11, i64 -8
  store i32 0, ptr %14, align 4, !tbaa !10
  %i.t = load i32, ptr %13, align 4, !tbaa !10    ; 2 uses
  %i.u = icmp eq i32 %i.t, -1                     ; 2 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !10     ; 6 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread317, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr %1, align 4, !tbaa !10     ; 8 uses
  %i.y = shl i32 %i.x, 1
  %i.z = icmp slt i32 %i.y, %i.v
  %i.aa = icmp sgt i32 %i.x, %i.v
  %or.cond312 = or i1 %i.aa, %i.z
  br i1 %or.cond312, label %.thread317, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %2, align 4, !tbaa !10    ; 4 uses
  %i.ac = sub nsw i32 %i.v, %i.x                  ; 4 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  %i.ae = icmp slt i32 %i.x, %i.ab
  %or.cond313 = or i1 %i.ad, %i.ae
  br i1 %or.cond313, label %.thread317, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %4, align 4, !tbaa !10
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.ag = icmp slt i32 %i.af, %spec.select
  br i1 %i.ag, label %.thread317, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %6, align 4, !tbaa !10
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.thread317, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = xor i32 %i.x, -1
  %i.al = add i32 %i.v, %i.ak
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %i.al)
  %i.an = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.an) ; 2 uses
  store i32 %i.an, ptr %i.h, align 4, !tbaa !10
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = sitofp i32 %i.ap to double
  store double %i.aq, ptr %12, align 8, !tbaa !12
  %i.ar = icmp sgt i32 %i.t, %i.ao
  %or.cond = or i1 %i.ar, %i.u
  br i1 %or.cond, label %.thread, label %.thread317

.thread317:                                       ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -3, %bb.c ], [ -5, %bb.d ], [ -2, %bb.b ], [ -7, %bb.e ], [ -14, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 3, %bb.c ], [ 5, %bb.d ], [ 2, %bb.b ], [ 7, %bb.e ], [ 14, %bb.f ]
  store i32 %.sink, ptr %14, align 4, !tbaa !10
  store i32 %.neg, ptr %i.a, align 4, !tbaa !10
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #5 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.f
  br i1 %i.u, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not310329 = icmp slt i32 %i.ac, 1
  br i1 %.not310329, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.at = add i32 %i.l, 1
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.av = sext i32 %i.i to i64                    ; 2 uses
  %i.aw = sext i32 %i.l to i64
  %i.ax = zext nneg i32 %i.ac to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 20 uses
  %.0303.neg331 = phi i32 [ -1, %.lr.ph ], [ %i.el, %bb.l ] ; 5 uses
  %indvars340 = trunc nuw i64 %indvars.iv to i32  ; 7 uses
  %i.ay = icmp samesign ugt i64 %indvars.iv, 1
  %.pre345 = load i32, ptr %2, align 4, !tbaa !10 ; 2 uses
  %i.az = add nsw i32 %.0303.neg331, 1            ; 9 uses
  br i1 %i.ay, label %bb.i, label %._crit_edge350

._crit_edge350:                                   ; preds = %bb.h
  %.pre352 = mul nuw nsw i64 %indvars.iv, %i.av
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = add i32 %i.az, %.pre345
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !10
  %i.bb = mul nsw i64 %indvars.iv, %i.av          ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = mul i32 %i.at, %indvars340
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bg
  call void @drot_(ptr noundef nonnull %i.b, ptr noundef %i.be, ptr noundef nonnull %4, ptr noundef %i.bh, ptr noundef nonnull %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5
  %.pre = load i32, ptr %2, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge350, %bb.i
  %.pre-phi353 = phi i64 [ %.pre352, %._crit_edge350 ], [ %i.bb, %bb.i ]
  %i.bi = phi i32 [ %.pre345, %._crit_edge350 ], [ %.pre, %bb.i ]
  %i.bj = add i32 %i.az, %i.bi
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !10
  %i.bk = mul nsw i64 %indvars.iv, %i.aw          ; 2 uses
  %i.bl = mul nsw i32 %i.l, %indvars340
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.bm ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.bp = mul nsw i32 %i.l, %indvars
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.bo, ptr noundef %i.bs, ptr noundef nonnull %6, ptr noundef nonnull %i.bt) #5
  %i.bu = load double, ptr %i.bo, align 8, !tbaa !12
  store double %i.bu, ptr %i.f, align 8, !tbaa !12
  store double 1.000000e+00, ptr %i.bo, align 8, !tbaa !12
  %i.bv = load i32, ptr %1, align 4, !tbaa !10
  %i.bw = add i32 %i.az, %i.bv
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !10
  %i.bx = load i32, ptr %2, align 4, !tbaa !10
  %i.by = add i32 %i.az, %i.bx
  store i32 %i.by, ptr %i.c, align 4, !tbaa !10
  %i.bz = mul nsw i32 %i.i, %indvars340
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.ca ; 7 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bo, ptr noundef nonnull %6, ptr noundef nonnull %i.bt, ptr noundef %i.cc, ptr noundef nonnull %4, ptr noundef nonnull %i.au) #5
  %i.cd = load i32, ptr %0, align 4, !tbaa !10
  %i.ce = load i32, ptr %1, align 4, !tbaa !10
  %.neg321 = add i32 %i.cd, %.0303.neg331
  %i.cf = sub i32 %.neg321, %i.ce
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !10
  %i.cg = load i32, ptr %2, align 4, !tbaa !10
  %i.ch = add i32 %i.az, %i.cg
  store i32 %i.ch, ptr %i.c, align 4, !tbaa !10
  %i.ci = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.bk ; 7 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bo, ptr noundef nonnull %6, ptr noundef nonnull %i.bt, ptr noundef %i.cj, ptr noundef nonnull %6, ptr noundef nonnull %i.au) #5
  %i.ck = load i32, ptr %1, align 4, !tbaa !10
  %i.cl = add i32 %i.az, %i.ck
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !10
  %i.cm = call double @dnrm2_(ptr noundef nonnull %i.b, ptr noundef %i.cc, ptr noundef nonnull @c__1) #5 ; 2 uses
  %i.cn = load i32, ptr %0, align 4, !tbaa !10
  %i.co = load i32, ptr %1, align 4, !tbaa !10
  %.neg323 = add i32 %i.cn, %.0303.neg331
  %i.cp = sub i32 %.neg323, %i.co
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !10
  %i.cq = call double @dnrm2_(ptr noundef nonnull %i.c, ptr noundef %i.cj, ptr noundef nonnull @c__1) #5 ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  %i.cs = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cr)
  %sqrt = call double @llvm.sqrt.f64(double %i.cs) ; 2 uses
  store double %sqrt, ptr %i.e, align 8, !tbaa !12
  %i.ct = load double, ptr %i.f, align 8, !tbaa !12
  %i.cu = call double @atan2(double noundef %i.ct, double noundef %sqrt) #5
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %i.cu, ptr %i.cv, align 8, !tbaa !12
  %i.cw = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %i.cx = add i32 %i.az, %i.cw
  store i32 %i.cx, ptr %i.b, align 4, !tbaa !10
  %i.cy = load i32, ptr %0, align 4, !tbaa !10
  %.neg325 = sub i32 %.0303.neg331, %i.cw
  %i.cz = add i32 %.neg325, %i.cy
  store i32 %i.cz, ptr %i.c, align 4, !tbaa !10
  %i.da = load i32, ptr %2, align 4, !tbaa !10
  %i.db = sub nsw i32 %i.da, %indvars340
  store i32 %i.db, ptr %i.d, align 4, !tbaa !10
  %i.dc = mul nsw i32 %i.i, %indvars
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.bq ; 2 uses
  call void @dorbdb5_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.cc, ptr noundef nonnull @c__1, ptr noundef %i.cj, ptr noundef nonnull @c__1, ptr noundef %i.df, ptr noundef nonnull %4, ptr noundef %i.dh, ptr noundef nonnull %6, ptr noundef nonnull %i.au, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #5
  %i.di = load i32, ptr %1, align 4, !tbaa !10
  %i.dj = add i32 %i.az, %i.di
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !10
  %i.dk = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %.pre-phi353
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.cc, ptr noundef %i.dl, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dm) #5
  %i.dn = load i32, ptr %0, align 4, !tbaa !10
  %i.do = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %i.dp = sub nsw i32 %i.dn, %i.do                ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv, %i.dq
  br i1 %i.dr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ds = sub nuw nsw i32 %i.dp, %indvars340
  store i32 %i.ds, ptr %i.b, align 4, !tbaa !10
  %i.dt = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %i.bk
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cj, ptr noundef %i.dv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dw) #5
  %i.dx = load double, ptr %i.cj, align 8, !tbaa !12
  %i.dy = load double, ptr %i.cc, align 8, !tbaa !12
  %i.dz = call double @atan2(double noundef %i.dx, double noundef %i.dy) #5 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.dz, ptr %i.ea, align 8, !tbaa !12
  %15 = call double @cos(double noundef %i.dz) #5
  store double %15, ptr %i.e, align 8, !tbaa !12
  %16 = call double @sin(double noundef %i.dz) #5
  store double %16, ptr %i.f, align 8, !tbaa !12
  store double 1.000000e+00, ptr %i.cj, align 8, !tbaa !12
  %i.eb = load i32, ptr %0, align 4, !tbaa !10
  %i.ec = load i32, ptr %1, align 4, !tbaa !10
  %.neg327 = add i32 %i.eb, %.0303.neg331
  %i.ed = sub i32 %.neg327, %i.ec
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !10
  %i.ee = load i32, ptr %2, align 4, !tbaa !10
  %i.ef = sub nsw i32 %i.ee, %indvars340
  store i32 %i.ef, ptr %i.c, align 4, !tbaa !10
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dh, ptr noundef nonnull %6, ptr noundef nonnull %i.au) #5
  %.pre346 = load i32, ptr %1, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eg = phi i32 [ %.pre346, %bb.k ], [ %i.do, %bb.j ]
  store double 1.000000e+00, ptr %i.cc, align 8, !tbaa !12
  %i.eh = add i32 %i.az, %i.eg
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !10
  %i.ei = load i32, ptr %2, align 4, !tbaa !10
  %i.ej = sub nsw i32 %i.ei, %indvars340
  store i32 %i.ej, ptr %i.c, align 4, !tbaa !10
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cc, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dm, ptr noundef %i.df, ptr noundef nonnull %4, ptr noundef nonnull %i.au) #5
  %.not310.not = icmp samesign ult i64 %indvars.iv, %i.ax
  %i.ek = trunc nuw i64 %indvars.iv to i32
  %i.el = xor i32 %i.ek, -1
  br i1 %.not310.not, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre347 = load i32, ptr %2, align 4, !tbaa !10
  %.pre348 = load i32, ptr %0, align 4, !tbaa !10
  %.pre349 = load i32, ptr %1, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.em = phi i32 [ %.pre349, %._crit_edge.loopexit ], [ %i.x, %bb.g ]
  %i.en = phi i32 [ %.pre348, %._crit_edge.loopexit ], [ %i.v, %bb.g ]
  %i.eo = phi i32 [ %.pre347, %._crit_edge.loopexit ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ep = add i32 %i.en, 1
  %i.eq = sub i32 %i.ep, %i.em                    ; 2 uses
  %.not311333 = icmp sgt i32 %i.eq, %i.eo
  br i1 %.not311333, label %.loopexit, label %.lr.ph337

.lr.ph337:                                        ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = sext i32 %i.eq to i64
  %i.et = sext i32 %i.i to i64
  %i.eu = sext i32 %i.eo to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph337, %bb.m
  %indvars.iv341 = phi i64 [ %i.es, %.lr.ph337 ], [ %indvars.iv.next342, %bb.m ] ; 7 uses
  %indvars344 = trunc i64 %indvars.iv341 to i32   ; 4 uses
  %i.ev = load i32, ptr %1, align 4, !tbaa !10
  %reass.sub = sub i32 %i.ev, %indvars344
  %i.ew = add i32 %reass.sub, 1
  store i32 %i.ew, ptr %i.b, align 4, !tbaa !10
  %i.ex = mul nsw i64 %indvars.iv341, %i.et
  %i.ey = mul nsw i32 %i.i, %indvars344
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv341
  %i.fb = getelementptr [8 x i8], ptr %i.fa, i64 %i.ez ; 3 uses
  %indvars.iv.next342 = add nsw i64 %indvars.iv341, 1 ; 3 uses
  %indvars343 = trunc i64 %indvars.iv.next342 to i32
  %i.fc = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next342
  %i.fd = getelementptr [8 x i8], ptr %i.fc, i64 %i.ex
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv341 ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.fb, ptr noundef %i.fd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fe) #5
  store double 1.000000e+00, ptr %i.fb, align 8, !tbaa !12
  %i.ff = load i32, ptr %1, align 4, !tbaa !10
  %reass.sub338 = sub i32 %i.ff, %indvars344
  %i.fg = add i32 %reass.sub338, 1
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !10
  %i.fh = load i32, ptr %2, align 4, !tbaa !10
  %i.fi = sub nsw i32 %i.fh, %indvars344
  store i32 %i.fi, ptr %i.c, align 4, !tbaa !10
  %i.fj = mul nsw i32 %i.i, %indvars343
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv341
  %i.fm = getelementptr [8 x i8], ptr %i.fl, i64 %i.fk
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.fb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fe, ptr noundef %i.fm, ptr noundef nonnull %4, ptr noundef nonnull %i.er) #5
  %.not311.not = icmp slt i64 %indvars.iv341, %i.eu
  br i1 %.not311.not, label %bb.m, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.m, %._crit_edge, %.thread, %.thread317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind }

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
