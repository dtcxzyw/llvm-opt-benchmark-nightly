Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlahr2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"NO TRANSPOSE\00", align 1
@c_b4 = internal global double -1.000000e+00, align 8
@c_b5 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UNIT\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"NON-UNIT\00", align 1
@c_b38 = internal global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"No Transpose\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1

; Function Attrs: nounwind uwtable
define void @dlahr2_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 32 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.e = getelementptr inbounds i8, ptr %5, i64 -8
  %i.f = load i32, ptr %4, align 4, !tbaa !9      ; 13 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %3, i64 %i.g ; 22 uses
  %i.i = load i32, ptr %7, align 4, !tbaa !9      ; 10 uses
  %narrow273 = xor i32 %i.i, -1
  %i.j = sext i32 %narrow273 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %6, i64 %i.j ; 9 uses
  %i.l = load i32, ptr %9, align 4, !tbaa !9      ; 4 uses
  %narrow271 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow271 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %8, i64 %i.m ; 5 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !9
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %2, align 4, !tbaa !9      ; 4 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !9
  %.not278 = icmp slt i32 %i.q, 1
  br i1 %.not278, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre287.a = add i32 %i.f, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.r = add i32 %i.f, -1
  %i.s = add i32 %i.f, 1                          ; 3 uses
  %i.t = sext i32 %i.f to i64                     ; 3 uses
  %i.u = sext i32 %i.l to i64
  %i.v = sext i32 %i.i to i64
  %10 = add i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.w = phi i32 [ %i.q, %.lr.ph ], [ %i.ds, %bb.e ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 11 uses
  %.0280 = phi double [ undef, %.lr.ph ], [ %i.ei, %bb.e ]
  %indvars281 = trunc i64 %indvars.iv to i32      ; 9 uses
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  %.pre282.a = load i32, ptr %0, align 4, !tbaa !9 ; 2 uses
  %.pre283.a = load i32, ptr %1, align 4, !tbaa !9 ; 4 uses
  br i1 %i.x, label %bb.d, label %._crit_edge286

._crit_edge286:                                   ; preds = %bb.c
  %.pre288 = mul nuw nsw i64 %indvars.iv, %i.t
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i32 %.pre282.a, %.pre283.a
  store i32 %i.y, ptr %i.b, align 4, !tbaa !9
  %i.z = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 9 uses
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !9
  %i.ab = add nsw i32 %.pre283.a, 1               ; 2 uses
  %i.ac = add nsw i32 %i.ab, %i.l
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = add i32 %i.r, %indvars281
  %i.ag = add i32 %i.af, %.pre283.a
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ah
  %i.aj = mul nsw i64 %indvars.iv, %i.t           ; 5 uses
  %i.ak = sext i32 %i.ab to i64
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %i.aj
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ak
  call void @dgemv_(ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b4, ptr noundef %i.ae, ptr noundef nonnull %9, ptr noundef %i.ai, ptr noundef nonnull %4, ptr noundef nonnull @c_b5, ptr noundef %i.am, ptr noundef nonnull @c__1) #3
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !9
  %i.an = load i32, ptr %1, align 4, !tbaa !9
  %i.ao = trunc nsw i64 %i.aj to i32
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ar
  %i.at = load i32, ptr %2, align 4, !tbaa !9
  %i.au = mul nsw i32 %i.at, %i.i
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [8 x i8], ptr %i.k, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  call void @dcopy_(ptr noundef nonnull %i.b, ptr noundef %i.as, ptr noundef nonnull @c__1, ptr noundef %i.ax, ptr noundef nonnull @c__1) #3
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !9
  %i.ay = load i32, ptr %1, align 4, !tbaa !9
  %i.az = add i32 %i.s, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ba
  %i.bc = load i32, ptr %2, align 4, !tbaa !9
  %i.bd = mul nsw i32 %i.bc, %i.i
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.k, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  call void @dtrmv_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b, ptr noundef %i.bb, ptr noundef nonnull %4, ptr noundef %i.bg, ptr noundef nonnull @c__1) #3
  %i.bh = load i32, ptr %0, align 4, !tbaa !9
  %i.bi = load i32, ptr %1, align 4, !tbaa !9
  %i.bj = add i32 %i.bi, %indvars281              ; 3 uses
  %i.bk = add i32 %i.bh, 1
  %i.bl = sub i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !9
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !9
  %i.bm = add nsw i32 %i.bj, %i.f
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bn
  %i.bp = sext i32 %i.bj to i64
  %i.bq = getelementptr [8 x i8], ptr %i.h, i64 %i.aj
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i32, ptr %2, align 4, !tbaa !9
  %i.bt = mul nsw i32 %i.bs, %i.i
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.k, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b5, ptr noundef %i.bo, ptr noundef nonnull %4, ptr noundef %i.br, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b5, ptr noundef %i.bw, ptr noundef nonnull @c__1) #3
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !9
  %i.bx = load i32, ptr %2, align 4, !tbaa !9
  %i.by = mul nsw i32 %i.bx, %i.i
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %i.k, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  call void @dtrmv_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.cb, ptr noundef nonnull @c__1) #3
  %i.cc = load i32, ptr %0, align 4, !tbaa !9
  %i.cd = load i32, ptr %1, align 4, !tbaa !9
  %i.ce = add i32 %i.cd, %indvars281              ; 3 uses
  %i.cf = add i32 %i.cc, 1
  %i.cg = sub i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !9
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !9
  %i.ch = add nsw i32 %i.ce, %i.f
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ci
  %i.ck = load i32, ptr %2, align 4, !tbaa !9
  %i.cl = mul nsw i32 %i.ck, %i.i
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %i.k, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = sext i32 %i.ce to i64
  %i.cq = getelementptr [8 x i8], ptr %i.h, i64 %i.aj
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.cp
  call void @dgemv_(ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b4, ptr noundef %i.cj, ptr noundef nonnull %4, ptr noundef %i.co, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b5, ptr noundef %i.cr, ptr noundef nonnull @c__1) #3
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !9
  %i.cs = load i32, ptr %1, align 4, !tbaa !9
  %i.ct = add i32 %i.s, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cu
  %i.cw = load i32, ptr %2, align 4, !tbaa !9
  %i.cx = mul nsw i32 %i.cw, %i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [8 x i8], ptr %i.k, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  call void @dtrmv_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b, ptr noundef %i.cv, ptr noundef nonnull %4, ptr noundef %i.da, ptr noundef nonnull @c__1) #3
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !9
  %i.db = load i32, ptr %2, align 4, !tbaa !9
  %i.dc = mul nsw i32 %i.db, %i.i
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.k, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %1, align 4, !tbaa !9
  %i.dh = add i32 %i.ap, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.di
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull @c_b4, ptr noundef %i.df, ptr noundef nonnull @c__1, ptr noundef %i.dj, ptr noundef nonnull @c__1) #3
  %i.dk = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.dl = add nsw i32 %indvars281, -1
  %i.dm = trunc i64 %i.z to i32
  %i.dn = mul i32 %i.f, %i.dm
  %i.do = add i32 %i.dl, %i.dn
  %i.dp = add i32 %i.do, %i.dk
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dq
  store double %.0280, ptr %i.dr, align 8, !tbaa !11
  %.pre = load i32, ptr %0, align 4, !tbaa !9
  %.pre284.a = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge286, %bb.d
  %.pre-phi293 = phi i32 [ 0, %._crit_edge286 ], [ %i.aa, %bb.d ] ; 4 uses
  %.pre-phi289 = phi i64 [ %.pre288, %._crit_edge286 ], [ %i.aj, %bb.d ] ; 3 uses
  %i.ds = phi i32 [ %i.w, %._crit_edge286 ], [ %.pre284.a, %bb.d ] ; 2 uses
  %i.dt = phi i32 [ %.pre283.a, %._crit_edge286 ], [ %i.dk, %bb.d ]
  %i.du = phi i32 [ %.pre282.a, %._crit_edge286 ], [ %.pre, %bb.d ] ; 3 uses
  %i.dv = add i32 %i.dt, %indvars281              ; 4 uses
  %i.dw = add i32 %i.du, 1
  %i.dx = sub i32 %i.dw, %i.dv
  store i32 %i.dx, ptr %i.b, align 4, !tbaa !9
  %i.dy = add nsw i32 %i.dv, 1                    ; 2 uses
  store i32 %i.dy, ptr %i.c, align 4, !tbaa !9
  %i.dz = sext i32 %i.dv to i64
  %i.ea = getelementptr [8 x i8], ptr %i.h, i64 %.pre-phi289
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %i.dz
  %.not272.not = icmp slt i32 %i.dv, %i.du
  %. = select i1 %.not272.not, i32 %i.dy, i32 %i.du
  %i.ec = sext i32 %. to i64
  %i.ed = getelementptr [8 x i8], ptr %i.h, i64 %.pre-phi289
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  call void @dlarfg_(ptr noundef nonnull %i.b, ptr noundef %i.eb, ptr noundef %i.ee, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ef) #3
  %i.eg = load i32, ptr %1, align 4, !tbaa !9     ; 3 uses
  %11 = mul i32 %10, %indvars281
  %12 = add i32 %11, %i.eg
  %13 = sext i32 %12 to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %13 ; 3 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !11 ; 2 uses
  store double 1.000000e+00, ptr %i.eh, align 8, !tbaa !11
  %i.ej = load i32, ptr %0, align 4, !tbaa !9
  %i.ek = sub nsw i32 %i.ej, %i.eg                ; 2 uses
  store i32 %i.ek, ptr %i.b, align 4, !tbaa !9
  %reass.sub = sub i32 %i.ek, %indvars281
  %i.el = add i32 %reass.sub, 1
  store i32 %i.el, ptr %i.c, align 4, !tbaa !9
  %i.em = add nsw i32 %i.eg, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = mul nsw i64 %indvars.iv.next, %i.t
  %i.eo = sext i32 %i.em to i64                   ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.h, i64 %i.en
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = mul nsw i64 %indvars.iv, %i.u           ; 3 uses
  %i.es = getelementptr [8 x i8], ptr %i.n, i64 %i.er
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.eo
  call void @dgemv_(ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b5, ptr noundef %i.eq, ptr noundef nonnull %4, ptr noundef nonnull %i.eh, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b38, ptr noundef %i.et, ptr noundef nonnull @c__1) #3
  %i.eu = load i32, ptr %0, align 4, !tbaa !9
  %i.ev = load i32, ptr %1, align 4, !tbaa !9
  %i.ew = add i32 %i.ev, %indvars281              ; 3 uses
  %i.ex = add i32 %i.eu, 1
  %i.ey = sub i32 %i.ex, %i.ew
  store i32 %i.ey, ptr %i.b, align 4, !tbaa !9
  store i32 %.pre-phi293, ptr %i.c, align 4, !tbaa !9
  %i.ez = add nsw i32 %i.ew, %i.f
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fa
  %i.fc = sext i32 %i.ew to i64
  %i.fd = getelementptr [8 x i8], ptr %i.h, i64 %.pre-phi289
  %i.fe = getelementptr [8 x i8], ptr %i.fd, i64 %i.fc
  %i.ff = mul nsw i64 %indvars.iv, %i.v
  %i.fg = mul nsw i32 %i.i, %indvars281
  %i.fh = getelementptr [8 x i8], ptr %i.k, i64 %i.ff
  %i.fi = getelementptr i8, ptr %i.fh, i64 8      ; 4 uses
  call void @dgemv_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b5, ptr noundef %i.fb, ptr noundef nonnull %4, ptr noundef %i.fe, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b38, ptr noundef %i.fi, ptr noundef nonnull @c__1) #3
  %i.fj = load i32, ptr %0, align 4, !tbaa !9
  %i.fk = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.fl = sub nsw i32 %i.fj, %i.fk
  store i32 %i.fl, ptr %i.b, align 4, !tbaa !9
  store i32 %.pre-phi293, ptr %i.c, align 4, !tbaa !9
  %i.fm = add nsw i32 %i.fk, 1                    ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.l
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fo
  %i.fq = sext i32 %i.fm to i64
  %i.fr = getelementptr [8 x i8], ptr %i.n, i64 %i.er
  %i.fs = getelementptr [8 x i8], ptr %i.fr, i64 %i.fq
  call void @dgemv_(ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b4, ptr noundef %i.fp, ptr noundef nonnull %9, ptr noundef %i.fi, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b5, ptr noundef %i.fs, ptr noundef nonnull @c__1) #3
  %i.ft = load i32, ptr %0, align 4, !tbaa !9
  %i.fu = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.fv = sub nsw i32 %i.ft, %i.fu
  store i32 %i.fv, ptr %i.b, align 4, !tbaa !9
  %i.fw = trunc nsw i64 %i.er to i32
  %i.fx = add i32 %i.fw, 1
  %i.fy = add i32 %i.fx, %i.fu
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fz
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ef, ptr noundef %i.ga, ptr noundef nonnull @c__1) #3
  store i32 %.pre-phi293, ptr %i.b, align 4, !tbaa !9
  %i.gb = load double, ptr %i.ef, align 8, !tbaa !11
  %i.gc = fneg double %i.gb
  store double %i.gc, ptr %i.d, align 8, !tbaa !11
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %i.fi, ptr noundef nonnull @c__1) #3
  store i32 %.pre-phi293, ptr %i.b, align 4, !tbaa !9
  call void @dtrmv_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.fi, ptr noundef nonnull @c__1) #3
  %i.gd = load double, ptr %i.ef, align 8, !tbaa !11
  %i.ge = sext i32 %i.fg to i64
  %i.gf = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %i.ge
  store double %i.gd, ptr %i.gg, align 8, !tbaa !11
  %i.gh = sext i32 %i.ds to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gh
  br i1 %.not.not, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre285 = load i32, ptr %2, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i32 [ %.pre287.a, %.._crit_edge_crit_edge ], [ %i.s, %._crit_edge.loopexit ] ; 2 uses
  %i.gi = phi i32 [ %i.q, %.._crit_edge_crit_edge ], [ %.pre285, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi double [ undef, %.._crit_edge_crit_edge ], [ %i.ei, %._crit_edge.loopexit ]
  %i.gj = load i32, ptr %1, align 4, !tbaa !9
  %i.gk = add nsw i32 %i.gi, %i.gj
  %i.gl = mul nsw i32 %i.gi, %i.f
  %i.gm = add nsw i32 %i.gk, %i.gl
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gn
  store double %.0.lcssa, ptr %i.go, align 8, !tbaa !11
  %i.gp = shl i32 %i.f, 1
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.h, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.7, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.gs, ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull %9) #3
  %i.gt = load i32, ptr %1, align 4, !tbaa !9
  %i.gu = add i32 %.pre-phi, %i.gt
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gv
  call void @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c_b5, ptr noundef %i.gw, ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull %9) #3
  %i.gx = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.gy = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.gz = load i32, ptr %2, align 4, !tbaa !9     ; 3 uses
  %i.ha = add nsw i32 %i.gz, %i.gy                ; 2 uses
  %i.hb = icmp sgt i32 %i.gx, %i.ha
  br i1 %i.hb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.hc = sub i32 %i.gx, %i.ha
  store i32 %i.hc, ptr %i.a, align 4, !tbaa !9
  %i.hd = add nsw i32 %i.gz, 2
  %i.he = mul nsw i32 %i.hd, %i.f
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr [8 x i8], ptr %i.h, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  %i.hi = add i32 %.pre-phi, %i.gy
  %i.hj = add i32 %i.hi, %i.gz
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hk
  call void @dgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b5, ptr noundef %i.hh, ptr noundef nonnull %4, ptr noundef %i.hl, ptr noundef nonnull %4, ptr noundef nonnull @c_b5, ptr noundef %8, ptr noundef nonnull %9) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  call void @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c_b5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9) #3
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrmm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind }

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
