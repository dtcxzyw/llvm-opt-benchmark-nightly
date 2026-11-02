Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorbdb1?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DORBDB1\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: nounwind uwtable
define void @dorbdb1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 22 uses
  %i.c = alloca i32, align 4                      ; 14 uses
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
  %i.i = load i32, ptr %4, align 4, !tbaa !9      ; 4 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 5 uses
  %i.l = load i32, ptr %6, align 4, !tbaa !9      ; 5 uses
  %narrow265 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow265 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds i8, ptr %7, i64 -8
  %i.p = getelementptr inbounds i8, ptr %8, i64 -8
  %i.q = getelementptr inbounds i8, ptr %9, i64 -8
  %i.r = getelementptr inbounds i8, ptr %10, i64 -8
  %i.s = getelementptr inbounds i8, ptr %11, i64 -8
  store i32 0, ptr %14, align 4, !tbaa !9
  %i.t = load i32, ptr %13, align 4, !tbaa !9     ; 2 uses
  %i.u = icmp eq i32 %i.t, -1                     ; 2 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread274, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr %1, align 4, !tbaa !9      ; 5 uses
  %i.y = load i32, ptr %2, align 4, !tbaa !9      ; 7 uses
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.y
  %or.cond268 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond268, label %.thread274, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp slt i32 %i.y, 0
  br i1 %i.ac, label %.thread274, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %4, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.ae = icmp slt i32 %i.ad, %spec.select
  br i1 %i.ae, label %.thread274, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %6, align 4, !tbaa !9
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 1)
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.thread274, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %i.x, -1
  %i.aj = xor i32 %i.x, -1
  %i.ak = add i32 %i.v, %i.aj
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ak) ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !9
  %i.am = add nsw i32 %i.y, -1
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.am) ; 2 uses
  %i.ao = add nsw i32 %i.y, -2
  store i32 %i.ao, ptr %i.h, align 4, !tbaa !9
  %i.ap = add nsw i32 %i.an, 1
  %i.aq = uitofp nneg i32 %i.ap to double
  store double %i.aq, ptr %12, align 8, !tbaa !11
  %i.ar = icmp sgt i32 %i.t, %i.an
  %or.cond = or i1 %i.ar, %i.u
  br i1 %or.cond, label %.thread, label %.thread274

.thread274:                                       ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -3, %bb.c ], [ -5, %bb.d ], [ -2, %bb.b ], [ -7, %bb.e ], [ -14, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 3, %bb.c ], [ 5, %bb.d ], [ 2, %bb.b ], [ 7, %bb.e ], [ 14, %bb.f ]
  store i32 %.sink, ptr %14, align 4, !tbaa !9
  store i32 %.neg, ptr %i.a, align 4, !tbaa !9
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #5 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.f
  %.not266287 = icmp eq i32 %i.y, 0
  %or.cond297 = or i1 %i.u, %.not266287
  br i1 %or.cond297, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.au = sext i32 %i.l to i64                    ; 2 uses
  %i.av = sext i32 %i.i to i64                    ; 2 uses
  %i.aw = zext nneg i32 %i.y to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 19 uses
  %.0260.neg289 = phi i32 [ -1, %.lr.ph ], [ %.pre-phi293, %bb.i ] ; 4 uses
  %indvars291 = trunc nuw i64 %indvars.iv to i32  ; 12 uses
  %i.ax = load i32, ptr %1, align 4, !tbaa !9
  %i.ay = add nsw i32 %.0260.neg289, 1            ; 4 uses
  %i.az = add i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.b, align 4, !tbaa !9
  %i.ba = mul nsw i64 %indvars.iv, %i.av
  %i.bb = mul nsw i32 %i.i, %indvars291
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.bc ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 8 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.ba
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bh) #5
  %i.bi = load i32, ptr %0, align 4, !tbaa !9
  %i.bj = load i32, ptr %1, align 4, !tbaa !9
  %i.bk = add i32 %i.ay, %i.bi
  %i.bl = sub i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !9
  %i.bm = mul nsw i64 %indvars.iv, %i.au
  %i.bn = mul nsw i32 %i.l, %indvars291
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bo ; 4 uses
  %i.br = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bm
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.bq, ptr noundef %i.bs, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bt) #5
  %i.bu = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bv = load double, ptr %i.be, align 8, !tbaa !11
  %i.bw = call double @atan2(double noundef %i.bu, double noundef %i.bv) #5 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %i.bw, ptr %i.bx, align 8, !tbaa !11
  %15 = call double @cos(double noundef %i.bw) #5
  store double %15, ptr %i.e, align 8, !tbaa !11
  %16 = call double @sin(double noundef %i.bw) #5
  store double %16, ptr %i.f, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.be, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !11
  %i.by = load i32, ptr %1, align 4, !tbaa !9
  %i.bz = add i32 %i.ay, %i.by
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !9
  %i.ca = load i32, ptr %2, align 4, !tbaa !9
  %i.cb = sub nsw i32 %i.ca, %indvars291
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !9
  %i.cc = mul nsw i32 %i.i, %indvars
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.be, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bh, ptr noundef %i.cf, ptr noundef nonnull %4, ptr noundef nonnull %i.at) #5
  %i.cg = load i32, ptr %0, align 4, !tbaa !9
  %i.ch = load i32, ptr %1, align 4, !tbaa !9
  %i.ci = add i32 %i.ay, %i.cg
  %i.cj = sub i32 %i.ci, %i.ch
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !9
  %i.ck = load i32, ptr %2, align 4, !tbaa !9
  %i.cl = sub nsw i32 %i.ck, %indvars291
  store i32 %i.cl, ptr %i.c, align 4, !tbaa !9
  %i.cm = mul nsw i32 %i.l, %indvars
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cn ; 7 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bq, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bt, ptr noundef %i.cp, ptr noundef nonnull %6, ptr noundef nonnull %i.at) #5
  %i.cq = load i32, ptr %2, align 4, !tbaa !9     ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv, %i.cr
  br i1 %i.cs, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %i.ct = trunc nuw i64 %indvars.iv to i32
  %.pre292 = xor i32 %i.ct, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = sub nuw nsw i32 %i.cq, %indvars291
  store i32 %i.cu, ptr %i.b, align 4, !tbaa !9
  call void @drot_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cf, ptr noundef nonnull %4, ptr noundef nonnull %i.cp, ptr noundef nonnull %6, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5
  %i.cv = load i32, ptr %2, align 4, !tbaa !9
  %i.cw = sub nsw i32 %i.cv, %indvars291
  store i32 %i.cw, ptr %i.b, align 4, !tbaa !9
  %i.cx = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.cy = add nuw nsw i32 %indvars291, 2
  %i.cz = mul nsw i64 %i.cx, %i.au
  %i.da = mul nsw i32 %i.cy, %i.l
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cp, ptr noundef %i.dd, ptr noundef nonnull %6, ptr noundef nonnull %i.de) #5
  %i.df = load double, ptr %i.cp, align 8, !tbaa !11
  store double %i.df, ptr %i.f, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.cp, align 8, !tbaa !11
  %i.dg = load i32, ptr %1, align 4, !tbaa !9
  %i.dh = sub nsw i32 %i.dg, %indvars291
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !9
  %i.di = load i32, ptr %2, align 4, !tbaa !9
  %i.dj = sub nsw i32 %i.di, %indvars291
  store i32 %i.dj, ptr %i.c, align 4, !tbaa !9
  %i.dk = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.cd ; 3 uses
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cp, ptr noundef nonnull %6, ptr noundef nonnull %i.de, ptr noundef %i.dl, ptr noundef nonnull %4, ptr noundef nonnull %i.at) #5
  %i.dm = load i32, ptr %0, align 4, !tbaa !9
  %i.dn = load i32, ptr %1, align 4, !tbaa !9
  %.neg282 = add i32 %i.dm, %.0260.neg289
  %i.do = sub i32 %.neg282, %i.dn
  store i32 %i.do, ptr %i.b, align 4, !tbaa !9
  %i.dp = load i32, ptr %2, align 4, !tbaa !9
  %i.dq = sub nsw i32 %i.dp, %indvars291
  store i32 %i.dq, ptr %i.c, align 4, !tbaa !9
  %i.dr = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %i.cn ; 3 uses
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cp, ptr noundef nonnull %6, ptr noundef nonnull %i.de, ptr noundef %i.ds, ptr noundef nonnull %6, ptr noundef nonnull %i.at) #5
  %i.dt = load i32, ptr %1, align 4, !tbaa !9
  %i.du = sub nsw i32 %i.dt, %indvars291
  store i32 %i.du, ptr %i.b, align 4, !tbaa !9
  %i.dv = call double @dnrm2_(ptr noundef nonnull %i.b, ptr noundef %i.dl, ptr noundef nonnull @c__1) #5 ; 2 uses
  %i.dw = load i32, ptr %0, align 4, !tbaa !9
  %i.dx = load i32, ptr %1, align 4, !tbaa !9
  %.neg284 = add i32 %i.dw, %.0260.neg289
  %i.dy = sub i32 %.neg284, %i.dx
  store i32 %i.dy, ptr %i.c, align 4, !tbaa !9
  %i.dz = call double @dnrm2_(ptr noundef nonnull %i.c, ptr noundef %i.ds, ptr noundef nonnull @c__1) #5 ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = call double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double %i.ea)
  %sqrt = call double @llvm.sqrt.f64(double %i.eb) ; 2 uses
  store double %sqrt, ptr %i.e, align 8, !tbaa !11
  %i.ec = load double, ptr %i.f, align 8, !tbaa !11
  %i.ed = call double @atan2(double noundef %i.ec, double noundef %sqrt) #5
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.ed, ptr %i.ee, align 8, !tbaa !11
  %i.ef = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.eg = sub nsw i32 %i.ef, %indvars291
  store i32 %i.eg, ptr %i.b, align 4, !tbaa !9
  %i.eh = load i32, ptr %0, align 4, !tbaa !9
  %.neg286 = sub i32 %.0260.neg289, %i.ef
  %i.ei = add i32 %.neg286, %i.eh
  store i32 %i.ei, ptr %i.c, align 4, !tbaa !9
  %i.ej = load i32, ptr %2, align 4, !tbaa !9
  %i.ek = trunc nuw nsw i64 %indvars.iv to i32
  %i.el = xor i32 %i.ek, -1                       ; 2 uses
  %i.em = add i32 %i.ej, %i.el
  store i32 %i.em, ptr %i.d, align 4, !tbaa !9
  %i.en = mul nsw i64 %i.cx, %i.av
  %i.eo = getelementptr [8 x i8], ptr %i.k, i64 %i.en
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv.next
  %i.eq = getelementptr [8 x i8], ptr %i.n, i64 %i.cz
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %indvars.iv.next
  call void @dorbdb5_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.dl, ptr noundef nonnull @c__1, ptr noundef %i.ds, ptr noundef nonnull @c__1, ptr noundef %i.ep, ptr noundef nonnull %4, ptr noundef %i.er, ptr noundef nonnull %6, ptr noundef nonnull %i.at, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #5
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi293 = phi i32 [ %.pre292, %._crit_edge ], [ %i.el, %bb.h ]
  %.not266.not = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %.not266.not, label %bb.g, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.i, %.thread, %.thread274
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

declare void @dlarfgp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @dorbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, !12}
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
