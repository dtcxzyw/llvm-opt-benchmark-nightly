Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorbdb4?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DORBDB4\00", align 1
@c__1 = internal global i32 1, align 4
@c_b5 = internal global double -1.000000e+00, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: nounwind uwtable
define void @dorbdb4_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 40 uses
  %i.c = alloca i32, align 4                      ; 20 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca double, align 8                   ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.i = load i32, ptr %4, align 4, !tbaa !11     ; 8 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 8 uses
  %i.l = load i32, ptr %6, align 4, !tbaa !11     ; 8 uses
  %narrow463 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow463 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 11 uses
  %i.o = getelementptr inbounds i8, ptr %7, i64 -8
  %i.p = getelementptr inbounds i8, ptr %8, i64 -8
  %i.q = getelementptr inbounds i8, ptr %9, i64 -8
  %i.r = getelementptr inbounds i8, ptr %10, i64 -8
  %i.s = getelementptr inbounds i8, ptr %11, i64 -8 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %12, i64 -8 ; 5 uses
  store i32 0, ptr %15, align 4, !tbaa !11
  %i.u = load i32, ptr %14, align 4, !tbaa !11    ; 2 uses
  %i.v = icmp eq i32 %i.u, -1                     ; 2 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !11     ; 6 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.thread469, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %1, align 4, !tbaa !11     ; 7 uses
  %i.z = load i32, ptr %2, align 4, !tbaa !11     ; 7 uses
  %i.aa = sub nsw i32 %i.w, %i.z                  ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  %i.ac = icmp slt i32 %i.z, %i.y
  %or.cond464 = or i1 %i.ac, %i.ab
  br i1 %or.cond464, label %.thread469, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp sgt i32 %i.z, %i.w
  br i1 %i.ad, label %.thread469, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %4, align 4, !tbaa !11
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %i.af = icmp slt i32 %i.ae, %spec.select
  br i1 %i.af, label %.thread469, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = sub nsw i32 %i.w, %i.y
  %i.ah = load i32, ptr %6, align 4, !tbaa !11
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.thread469, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !11
  %i.al = add nsw i32 %i.y, -1
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.al)
  %i.an = xor i32 %i.y, -1
  %i.ao = add i32 %i.w, %i.an
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao)
  store i32 %i.z, ptr %i.h, align 4, !tbaa !11
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.z) ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  %i.as = sitofp i32 %i.ar to double
  store double %i.as, ptr %13, align 8, !tbaa !13
  %i.at = icmp sgt i32 %i.u, %i.aq
  %or.cond = or i1 %i.at, %i.v
  br i1 %or.cond, label %.thread, label %.thread469

.thread469:                                       ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -3, %bb.c ], [ -5, %bb.d ], [ -2, %bb.b ], [ -7, %bb.e ], [ -14, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 3, %bb.c ], [ 5, %bb.d ], [ 2, %bb.b ], [ 7, %bb.e ], [ 14, %bb.f ]
  store i32 %.sink, ptr %15, align 4, !tbaa !11
  store i32 %.neg, ptr %i.a, align 4, !tbaa !11
  %i.au = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.f
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not459492 = icmp slt i32 %i.aa, 1
  br i1 %.not459492, label %._crit_edge497, label %.lr.ph496

.lr.ph496:                                        ; preds = %bb.g
  %i.av = add i32 %i.i, 1
  %i.aw = add i32 %i.l, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = sext i32 %i.l to i64                    ; 2 uses
  %i.ba = sext i32 %i.i to i64                    ; 2 uses
  %i.bb = zext nneg i32 %i.aa to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph496, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph496 ], [ %indvars.iv.next.pre-phi, %bb.m ] ; 19 uses
  %.0453.neg494 = phi i32 [ -1, %.lr.ph496 ], [ %i.gq, %bb.m ] ; 4 uses
  %indvars514 = trunc i64 %indvars.iv to i32      ; 7 uses
  %i.bc = icmp eq i64 %indvars.iv, 1
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %.not462490 = icmp slt i32 %i.bd, 1
  br i1 %.not462490, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %i.bf, i1 false), !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.i
  %i.bg = load i32, ptr %1, align 4, !tbaa !11    ; 2 uses
  %i.bh = sub nsw i32 %i.bd, %i.bg
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !11
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr [8 x i8], ptr %i.t, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  call void @dorbdb5_(ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef %12, ptr noundef nonnull @c__1, ptr noundef %i.bk, ptr noundef nonnull @c__1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #6
  call void @dscal_(ptr noundef nonnull %1, ptr noundef nonnull @c_b5, ptr noundef %12, ptr noundef nonnull @c__1) #6
  call void @dlarfgp_(ptr noundef nonnull %1, ptr noundef %12, ptr noundef nonnull %i.ay, ptr noundef nonnull @c__1, ptr noundef %9) #6
  %i.bl = load i32, ptr %0, align 4, !tbaa !11
  %i.bm = load i32, ptr %1, align 4, !tbaa !11    ; 2 uses
  %i.bn = sub nsw i32 %i.bl, %i.bm
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !11
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr [8 x i8], ptr %i.t, i64 %i.bo ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = getelementptr i8, ptr %i.bp, i64 16
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.bq, ptr noundef %i.br, ptr noundef nonnull @c__1, ptr noundef %10) #6
  %i.bs = load double, ptr %12, align 8, !tbaa !13
  %i.bt = load i32, ptr %1, align 4, !tbaa !11
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.t, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13
  %i.by = call double @atan2(double noundef %i.bs, double noundef %i.bx) #6 ; 3 uses
  store double %i.by, ptr %7, align 8, !tbaa !13
  %i.bz = call double @cos(double noundef %i.by) #6
  %i.ca = call double @sin(double noundef %i.by) #6
  store double %i.ca, ptr %i.f, align 8, !tbaa !13
  store double 1.000000e+00, ptr %12, align 8, !tbaa !13
  %i.cb = load i32, ptr %1, align 4, !tbaa !11
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %i.t, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  store double 1.000000e+00, ptr %i.ce, align 8, !tbaa !13
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef nonnull @c__1, ptr noundef %9, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.ax) #6
  %i.cf = load i32, ptr %0, align 4, !tbaa !11
  %i.cg = load i32, ptr %1, align 4, !tbaa !11    ; 2 uses
  %i.ch = sub nsw i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !11
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr [8 x i8], ptr %i.t, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef %i.ck, ptr noundef nonnull @c__1, ptr noundef %10, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.ax) #6
  %.pre527 = add nsw i32 %.0453.neg494, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cl = load i32, ptr %1, align 4, !tbaa !11    ; 2 uses
  %i.cm = add nsw i32 %.0453.neg494, 1            ; 11 uses
  %i.cn = add i32 %i.cm, %i.cl
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !11
  %i.co = load i32, ptr %0, align 4, !tbaa !11
  %i.cp = sub i32 %i.cm, %i.cl
  %i.cq = add i32 %i.cp, %i.co
  store i32 %i.cq, ptr %i.c, align 4, !tbaa !11
  %i.cr = load i32, ptr %2, align 4, !tbaa !11
  %i.cs = add i32 %i.cm, %i.cr
  store i32 %i.cs, ptr %i.d, align 4, !tbaa !11
  %i.ct = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.cu = add nsw i32 %indvars514, -1             ; 2 uses
  %i.cv = mul nsw i64 %i.ct, %i.ba
  %i.cw = mul nsw i32 %i.cu, %i.i
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.cx ; 6 uses
  %i.da = mul nsw i64 %i.ct, %i.az
  %i.db = mul nsw i32 %i.cu, %i.l
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %i.dc ; 5 uses
  %i.df = mul i32 %i.av, %indvars514
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dg ; 2 uses
  %i.di = mul i32 %i.aw, %indvars514
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dj ; 2 uses
  call void @dorbdb5_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.cz, ptr noundef nonnull @c__1, ptr noundef %i.de, ptr noundef nonnull @c__1, ptr noundef %i.dh, ptr noundef nonnull %4, ptr noundef %i.dk, ptr noundef nonnull %6, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #6
  %i.dl = load i32, ptr %1, align 4, !tbaa !11
  %i.dm = add i32 %i.cm, %i.dl
  store i32 %i.dm, ptr %i.b, align 4, !tbaa !11
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull @c_b5, ptr noundef %i.cz, ptr noundef nonnull @c__1) #6
  %i.dn = load i32, ptr %1, align 4, !tbaa !11
  %i.do = add i32 %i.cm, %i.dn
  store i32 %i.do, ptr %i.b, align 4, !tbaa !11
  %i.dp = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.dq = getelementptr [8 x i8], ptr %i.k, i64 %i.cv
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.cz, ptr noundef %i.dr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ds) #6
  %i.dt = load i32, ptr %0, align 4, !tbaa !11
  %i.du = load i32, ptr %1, align 4, !tbaa !11
  %i.dv = add i32 %i.cm, %i.dt
  %i.dw = sub i32 %i.dv, %i.du
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !11
  %i.dx = getelementptr [8 x i8], ptr %i.n, i64 %i.da
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %i.dp
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.de, ptr noundef %i.dy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dz) #6
  %i.ea = load double, ptr %i.cz, align 8, !tbaa !13
  %i.eb = load double, ptr %i.de, align 8, !tbaa !13
  %i.ec = call double @atan2(double noundef %i.ea, double noundef %i.eb) #6 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %i.ec, ptr %i.ed, align 8, !tbaa !13
  %i.ee = call double @cos(double noundef %i.ec) #6
  %i.ef = call double @sin(double noundef %i.ec) #6
  store double %i.ef, ptr %i.f, align 8, !tbaa !13
  store double 1.000000e+00, ptr %i.cz, align 8, !tbaa !13
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !13
  %i.eg = load i32, ptr %1, align 4, !tbaa !11
  %i.eh = add i32 %i.cm, %i.eg
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !11
  %i.ei = load i32, ptr %2, align 4, !tbaa !11
  %i.ej = add i32 %i.cm, %i.ei
  store i32 %i.ej, ptr %i.c, align 4, !tbaa !11
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ds, ptr noundef %i.dh, ptr noundef nonnull %4, ptr noundef nonnull %i.ax) #6
  %i.ek = load i32, ptr %0, align 4, !tbaa !11
  %i.el = load i32, ptr %1, align 4, !tbaa !11
  %i.em = add i32 %i.cm, %i.ek
  %i.en = sub i32 %i.em, %i.el
  store i32 %i.en, ptr %i.b, align 4, !tbaa !11
  %i.eo = load i32, ptr %2, align 4, !tbaa !11
  %i.ep = add i32 %i.cm, %i.eo
  store i32 %i.ep, ptr %i.c, align 4, !tbaa !11
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.de, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dz, ptr noundef %i.dk, ptr noundef nonnull %6, ptr noundef nonnull %i.ax) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %indvars.iv.next.pre-phi = phi i64 [ %i.dp, %bb.j ], [ 2, %._crit_edge ] ; 4 uses
  %.pre-phi = phi i32 [ %i.cm, %bb.j ], [ %.pre527, %._crit_edge ] ; 4 uses
  %.0454 = phi double [ %i.ee, %bb.j ], [ %i.bz, %._crit_edge ]
  %i.eq = load i32, ptr %2, align 4, !tbaa !11
  %i.er = add i32 %.pre-phi, %i.eq
  store i32 %i.er, ptr %i.b, align 4, !tbaa !11
  %i.es = fneg double %.0454
  store double %i.es, ptr %i.e, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@dorbdb4_:bb.a
  %i.gn = call double @atan2(double noundef %sqrt, double noundef %i.fk) #6
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.gn, ptr %i.go, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.not459.not = icmp slt i64 %indvars.iv, %i.bb
  %i.gp = trunc i64 %indvars.iv to i32
  %i.gq = xor i32 %i.gp, -1
  br i1 %.not459.not, label %bb.h, label %._crit_edge497.loopexit, !llvm.loop !8

._crit_edge497.loopexit:                          ; preds = %bb.m
  %.pre = load i32, ptr %1, align 4, !tbaa !11
  %.pre523 = load i32, ptr %0, align 4, !tbaa !11
  %.pre524 = load i32, ptr %2, align 4, !tbaa !11
  br label %._crit_edge497

._crit_edge497:                                   ; preds = %._crit_edge497.loopexit, %bb.g
  %i.gr = phi i32 [ %.pre524, %._crit_edge497.loopexit ], [ %i.z, %bb.g ] ; 2 uses
  %i.gs = phi i32 [ %.pre523, %._crit_edge497.loopexit ], [ %i.w, %bb.g ]
  %i.gt = phi i32 [ %.pre, %._crit_edge497.loopexit ], [ %i.y, %bb.g ] ; 3 uses
  %i.gu = add i32 %i.gs, 1
  %i.gv = sub i32 %i.gu, %i.gr                    ; 2 uses
  %.not460499 = icmp sgt i32 %i.gv, %i.gt
  br i1 %.not460499, label %._crit_edge504, label %.lr.ph503

.lr.ph503:                                        ; preds = %._crit_edge497
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gx = sext i32 %i.gv to i64
  %i.gy = sext i32 %i.i to i64
  %i.gz = sext i32 %i.gt to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph503, %bb.n
  %indvars.iv515 = phi i64 [ %i.gx, %.lr.ph503 ], [ %indvars.iv.next516, %bb.n ] ; 8 uses
  %indvars518 = trunc i64 %indvars.iv515 to i32   ; 5 uses
  %i.ha = load i32, ptr %2, align 4, !tbaa !11
  %reass.sub = sub i32 %i.ha, %indvars518
  %i.hb = add i32 %reass.sub, 1
  store i32 %i.hb, ptr %i.b, align 4, !tbaa !11
  %i.hc = mul nsw i64 %indvars.iv515, %i.gy
  %i.hd = mul nsw i32 %i.i, %indvars518
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv515
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he ; 4 uses
  %indvars.iv.next516 = add nsw i64 %indvars.iv515, 1 ; 3 uses
  %indvars517 = trunc i64 %indvars.iv.next516 to i32
  %i.hh = mul nsw i32 %i.i, %indvars517
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv515
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %i.hi
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv515 ; 3 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.hg, ptr noundef %i.hk, ptr noundef nonnull %4, ptr noundef nonnull %i.hl) #6
  store double 1.000000e+00, ptr %i.hg, align 8, !tbaa !13
  %i.hm = load i32, ptr %1, align 4, !tbaa !11
  %i.hn = sub nsw i32 %i.hm, %indvars518
  store i32 %i.hn, ptr %i.b, align 4, !tbaa !11
  %i.ho = load i32, ptr %2, align 4, !tbaa !11
  %reass.sub509 = sub i32 %i.ho, %indvars518
  %i.hp = add i32 %reass.sub509, 1
  store i32 %i.hp, ptr %i.c, align 4, !tbaa !11
  %i.hq = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next516
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %i.hc
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.hg, ptr noundef nonnull %4, ptr noundef nonnull %i.hl, ptr noundef %i.hr, ptr noundef nonnull %4, ptr noundef nonnull %i.gw) #6
  %i.hs = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.ht = load i32, ptr %1, align 4, !tbaa !11
  %i.hu = sub nsw i32 %i.hs, %i.ht
  store i32 %i.hu, ptr %i.b, align 4, !tbaa !11
  %reass.sub510 = sub i32 %i.hs, %indvars518
  %i.hv = add i32 %reass.sub510, 1
  store i32 %i.hv, ptr %i.c, align 4, !tbaa !11
  %i.hw = load i32, ptr %0, align 4, !tbaa !11
  %i.hx = trunc i64 %indvars.iv515 to i32
  %i.hy = mul i32 %i.l, %i.hx
  %i.hz = add i32 %i.hy, 1
  %i.ia = sub i32 %i.hz, %i.hs
  %i.ib = add i32 %i.ia, %i.hw
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ic
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.hg, ptr noundef nonnull %4, ptr noundef nonnull %i.hl, ptr noundef %i.id, ptr noundef nonnull %6, ptr noundef nonnull %i.gw) #6
  %.not460.not = icmp slt i64 %indvars.iv515, %i.gz
  br i1 %.not460.not, label %bb.n, label %._crit_edge504.loopexit, !llvm.loop !9

._crit_edge504.loopexit:                          ; preds = %bb.n
  %.pre525 = load i32, ptr %2, align 4, !tbaa !11
  %.pre526 = load i32, ptr %1, align 4, !tbaa !11
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %._crit_edge504.loopexit, %._crit_edge497
  %i.ie = phi i32 [ %.pre526, %._crit_edge504.loopexit ], [ %i.gt, %._crit_edge497 ] ; 2 uses
  %i.if = phi i32 [ %.pre525, %._crit_edge504.loopexit ], [ %i.gr, %._crit_edge497 ] ; 2 uses
  %.not461505.not = icmp slt i32 %i.ie, %i.if
  br i1 %.not461505.not, label %.lr.ph508, label %.loopexit

.lr.ph508:                                        ; preds = %._crit_edge504
  %i.ig = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ih = sext i32 %i.ie to i64
  %i.ii = add nsw i64 %i.ih, 1
  %i.ij = sext i32 %i.l to i64                    ; 2 uses
  %i.ik = sext i32 %i.if to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph508, %bb.o
  %indvars.iv519 = phi i64 [ %i.ii, %.lr.ph508 ], [ %indvars.iv.next520, %bb.o ] ; 5 uses
  %i.il = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv519 to i32     ; 4 uses
  %reass.sub511 = sub i32 %i.il, %i.im
  %i.in = add i32 %reass.sub511, 1
  store i32 %i.in, ptr %i.b, align 4, !tbaa !11
  %i.io = load i32, ptr %0, align 4, !tbaa !11
  %i.ip = load i32, ptr %1, align 4, !tbaa !11
  %i.iq = add i32 %i.io, %i.im
  %i.ir = add i32 %i.il, %i.ip
  %i.is = sub i32 %i.iq, %i.ir
  %i.it = mul nsw i64 %indvars.iv519, %i.ij       ; 3 uses
  %i.iu = sext i32 %i.is to i64                   ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %i.n, i64 %i.it
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.iu
  %indvars.iv.next520 = add nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.ix = mul nsw i64 %indvars.iv.next520, %i.ij
  %i.iy = getelementptr [8 x i8], ptr %i.n, i64 %i.ix
  %i.iz = getelementptr [8 x i8], ptr %i.iy, i64 %i.iu
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv519 ; 2 uses
  call void @dlarfgp_(ptr noundef nonnull %i.b, ptr noundef %i.iw, ptr noundef %i.iz, ptr noundef nonnull %6, ptr noundef nonnull %i.ja) #6
  %i.jb = load i32, ptr %0, align 4, !tbaa !11
  %i.jc = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.jd = load i32, ptr %1, align 4, !tbaa !11
  %.neg489 = add i32 %i.jb, %i.im
  %i.je = add i32 %i.jc, %i.jd
  %i.jf = sub i32 %.neg489, %i.je                 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr [8 x i8], ptr %i.n, i64 %i.it
  %i.ji = getelementptr [8 x i8], ptr %i.jh, i64 %i.jg ; 2 uses
  store double 1.000000e+00, ptr %i.ji, align 8, !tbaa !13
  %i.jj = sub nsw i32 %i.jc, %i.im                ; 2 uses
  store i32 %i.jj, ptr %i.b, align 4, !tbaa !11
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %i.c, align 4, !tbaa !11
  %i.jl = trunc nsw i64 %i.it to i32
  %i.jm = add i32 %i.jl, 1
  %i.jn = add i32 %i.jm, %i.jf
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.jo
  call void @dlarf_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ji, ptr noundef nonnull %6, ptr noundef nonnull %i.ja, ptr noundef %i.jp, ptr noundef nonnull %6, ptr noundef nonnull %i.ig) #6
  %.not461.not = icmp slt i64 %indvars.iv519, %i.ik
  br i1 %.not461.not, label %bb.o, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.o, %._crit_edge504, %.thread, %.thread469
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

declare void @dorbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!8 = distinct !{!8, !14}
!9 = distinct !{!9, !14}
!10 = distinct !{!10, !14}
!11 = !{!5, !5, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_1
