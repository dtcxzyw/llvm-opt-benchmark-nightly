Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlahqr?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"SAFE MINIMUM\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PRECISION\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dlahqr_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca [3 x double], align 16            ; 10 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.j = load i32, ptr %6, align 4, !tbaa !42     ; 21 uses
  %narrow = xor i32 %i.j, -1
  %i.k = sext i32 %narrow to i64                  ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.k ; 52 uses
  %i.m = getelementptr inbounds i8, ptr %7, i64 -8 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %8, i64 -8 ; 3 uses
  %i.o = load i32, ptr %12, align 4, !tbaa !42    ; 4 uses
  %narrow780 = xor i32 %i.o, -1
  %i.p = sext i32 %narrow780 to i64               ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %11, i64 %i.p ; 7 uses
  store i32 0, ptr %13, align 4, !tbaa !42
  %i.r = load i32, ptr %2, align 4, !tbaa !42
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit806, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %3, align 4, !tbaa !42     ; 9 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !42     ; 7 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.j, 1
  %i.x = mul i32 %i.t, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !44
  %i.ab = sext i32 %i.t to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ab
  store double %i.aa, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ab
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !44
  br label %.loopexit806

bb.d:                                             ; preds = %bb.b
  %i.ae = add nsw i32 %i.u, -3
  %.not813 = icmp sgt i32 %i.t, %i.ae
  br i1 %.not813, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.d
  %.pre927 = add nsw i32 %i.u, -2
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.af = sext i32 %i.t to i64                    ; 2 uses
  %i.ag = sext i32 %i.j to i64                    ; 9 uses
  %i.ah = add i32 %i.u, -2                        ; 4 uses
  %i.ai = sub i32 %i.ah, %i.t
  %i.aj = add i32 %i.u, -3
  %i.ak = sub i32 %i.aj, %i.t
  %xtraiter = and i32 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.af, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.al = mul nsw i64 %indvars.iv.prol, %i.ag
  %i.am = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.al
  store <2 x double> zeroinitializer, ptr %i.ao, align 8, !tbaa !44
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !8

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = icmp ult i32 %i.ak, 7
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.aq = mul nsw i64 %indvars.iv, %i.ag
  %i.ar = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.aq
  store <2 x double> zeroinitializer, ptr %i.at, align 8, !tbaa !44
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.au = mul nsw i64 %indvars.iv.next, %i.ag
  %i.av = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.au
  store <2 x double> zeroinitializer, ptr %i.ax, align 8, !tbaa !44
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = mul nsw i64 %indvars.iv.next.1, %i.ag
  %i.az = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ay
  store <2 x double> zeroinitializer, ptr %i.bb, align 8, !tbaa !44
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bc = mul nsw i64 %indvars.iv.next.2, %i.ag
  %i.bd = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bc
  store <2 x double> zeroinitializer, ptr %i.bf, align 8, !tbaa !44
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bg = mul nsw i64 %indvars.iv.next.3, %i.ag
  %i.bh = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.3
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bg
  store <2 x double> zeroinitializer, ptr %i.bj, align 8, !tbaa !44
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5 ; 2 uses
  %i.bk = mul nsw i64 %indvars.iv.next.4, %i.ag
  %i.bl = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.4
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.bk
  store <2 x double> zeroinitializer, ptr %i.bn, align 8, !tbaa !44
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bo = mul nsw i64 %indvars.iv.next.5, %i.ag
  %i.bp = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.5
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bo
  store <2 x double> zeroinitializer, ptr %i.br, align 8, !tbaa !44
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv.next.6, %i.ag
  %i.bt = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.6
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bs
  store <2 x double> zeroinitializer, ptr %i.bv, align 8, !tbaa !44
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.ah, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre927, %.._crit_edge_crit_edge ], [ %i.ah, %.lr.ph ], [ %i.ah, %.lr.ph.prol.loopexit ] ; 2 uses
  %.not781 = icmp sgt i32 %i.t, %.pre-phi
  br i1 %.not781, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bw = mul nsw i32 %.pre-phi, %i.j
  %i.bx = add nsw i32 %i.bw, %i.u
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.by
  store double 0.000000e+00, ptr %i.bz, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ca = sub nsw i32 %i.u, %i.t
  %i.cb = add nsw i32 %i.ca, 1                    ; 2 uses
  %i.cc = load i32, ptr %10, align 4, !tbaa !42
  %i.cd = load i32, ptr %9, align 4, !tbaa !42
  %i.ce = add i32 %i.cc, 1
  %i.cf = sub i32 %i.ce, %i.cd
  store i32 %i.cf, ptr %i.g, align 4, !tbaa !42
  %i.cg = tail call double @dlamch_(ptr noundef nonnull @.str) #5 ; 2 uses
  store double %i.cg, ptr %i.h, align 8, !tbaa !44
  %i.ch = fdiv double 1.000000e+00, %i.cg
  store double %i.ch, ptr %i.i, align 8, !tbaa !44
  call void @dlabad_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #5
  %i.ci = call double @dlamch_(ptr noundef nonnull @.str.1) #5 ; 4 uses
  %i.cj = load double, ptr %i.h, align 8, !tbaa !44
  %i.ck = sitofp i32 %i.cb to double
  %i.cl = fdiv double %i.ck, %i.ci
  %i.cm = fmul double %i.cj, %i.cl                ; 3 uses
  %i.cn = load i32, ptr %0, align 4, !tbaa !42
  %.not782 = icmp eq i32 %i.cn, 0
  br i1 %.not782, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load i32, ptr %2, align 4, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0751 = phi i32 [ %i.co, %bb.g ], [ undef, %bb.f ]
  %i.cp = call i32 @llvm.smax.i32(i32 %i.cb, i32 10)
  %i.cq = mul nuw nsw i32 %i.cp, 30               ; 2 uses
  %i.cr = load i32, ptr %4, align 4, !tbaa !42    ; 2 uses
  %i.cs = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.loopexit806, label %.lr.ph867

.lr.ph867:                                        ; preds = %bb.h
  %i.cu = add i32 %i.j, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cx = sext i32 %i.j to i64                    ; 37 uses
  %i.cy = sext i32 %i.o to i64                    ; 12 uses
  %indvars.iv.next881949 = add nsw i64 %i.cx, 1
  %i.cz = shl nsw i64 %i.p, 3                     ; 6 uses
  %i.da = shl nsw i64 %i.cy, 3
  %i.db = shl nsw i64 %i.cy, 3
  %i.dc = shl nsw i64 %i.cy, 3
  %i.dd = shl nsw i64 %i.cy, 3
  %i.de = shl nsw i64 %i.k, 3                     ; 5 uses
  %i.df = shl nsw i64 %i.cx, 3
  %i.dg = shl nsw i64 %i.cx, 3
  %i.dh = shl nsw i64 %i.cx, 3
  %i.di = shl nsw i64 %i.cx, 3
  %i.dj = shl nsw i64 %i.p, 3                     ; 4 uses
  %i.dk = shl nsw i64 %i.cy, 3
  %i.dl = shl nsw i64 %i.cy, 3
  %i.dm = shl nsw i64 %i.cy, 3
  %i.dn = shl nsw i64 %i.k, 3                     ; 3 uses
  %i.do = add nsw i64 %i.dn, 8                    ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.do
  %scevgep1132.a = getelementptr i8, ptr %5, i64 %i.dn
  %i.dp = shl nsw i64 %i.cx, 3
  %scevgep1134.a = getelementptr i8, ptr %5, i64 %i.do
  %scevgep1136.a = getelementptr i8, ptr %5, i64 %i.dn
  %i.dq = shl nsw i64 %i.cx, 3
  %ident.check.not = icmp eq i32 %i.j, 1
  %stride.check = icmp slt i32 %i.j, 0
  %i.dr = getelementptr i8, ptr %11, i64 %i.dj
  %i.ds = getelementptr i8, ptr %11, i64 %i.dj
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = getelementptr i8, ptr %11, i64 %i.dj
  %i.dv = getelementptr i8, ptr %11, i64 %i.dj
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %ident.check1166.not = icmp eq i32 %i.j, 1
  %i.dx = getelementptr i8, ptr %5, i64 %i.de
  %i.dy = getelementptr i8, ptr %5, i64 %i.de
  %i.dz = getelementptr i8, ptr %5, i64 %i.de
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = getelementptr i8, ptr %5, i64 %i.de
  %i.ec = getelementptr i8, ptr %5, i64 %i.de
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = getelementptr i8, ptr %11, i64 %i.cz
  %i.ef = getelementptr i8, ptr %11, i64 %i.cz
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = getelementptr i8, ptr %11, i64 %i.cz
  %i.ei = getelementptr i8, ptr %11, i64 %i.cz
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = getelementptr i8, ptr %11, i64 %i.cz
  %i.el = getelementptr i8, ptr %11, i64 %i.cz
  %i.em = getelementptr i8, ptr %i.el, i64 8
  br label %.preheader805.lr.ph

.preheader805.lr.ph:                              ; preds = %bb.au, %.lr.ph867
  %i.en = phi i32 [ %i.cs, %.lr.ph867 ], [ %i.amn, %bb.au ]
  %.1752865 = phi i32 [ %.0751, %.lr.ph867 ], [ %.2857, %bb.au ]
  %.1754864 = phi i32 [ 1, %.lr.ph867 ], [ %.2755856, %bb.au ]
  %.0765863 = phi i32 [ %i.cr, %.lr.ph867 ], [ %i.amm, %bb.au ] ; 28 uses
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !42
  %i.eo = add nsw i32 %.0765863, -1               ; 8 uses
  %i.ep = mul nsw i32 %i.eo, %i.j                 ; 3 uses
  %i.eq = add nsw i32 %i.ep, %.0765863
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.er ; 3 uses
  %i.et = add i32 %.0765863, -2                   ; 5 uses
  %i.eu = mul nsw i32 %i.et, %i.j
  %i.ev = add nsw i32 %i.eu, %i.eo
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ew
  %i.ey = mul i32 %.0765863, %i.cu
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ez ; 2 uses
  %i.fb = add nsw i32 %i.ep, %i.eo
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fc ; 2 uses
  %i.fe = mul nsw i32 %.0765863, %i.j             ; 3 uses
  %i.ff = add nsw i32 %i.eo, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fg ; 2 uses
  %i.fi = add nsw i32 %i.fe, %.0765863
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fj ; 2 uses
  %i.fl = sext i32 %.0765863 to i64               ; 4 uses
  %i.fm = sext i32 %i.et to i64
  %i.fn = add i32 %.0765863, 1                    ; 2 uses
  %i.fo = sext i32 %i.eo to i64                   ; 3 uses
  %i.fp = add i32 %.0765863, 1
  br label %.preheader805

.preheader805:                                    ; preds = %.preheader805.lr.ph, %._crit_edge853
  %i.fq = phi i32 [ %i.cq, %.preheader805.lr.ph ], [ %i.alb, %._crit_edge853 ]
  %.0746858 = phi i32 [ 0, %.preheader805.lr.ph ], [ %i.alc, %._crit_edge853 ] ; 3 uses
  %.2857 = phi i32 [ %.1752865, %.preheader805.lr.ph ], [ %spec.select802, %._crit_edge853 ] ; 4 uses
  %.2755856 = phi i32 [ %.1754864, %.preheader805.lr.ph ], [ %spec.select, %._crit_edge853 ] ; 5 uses
  %.0758855 = phi i32 [ %i.en, %.preheader805.lr.ph ], [ %.0759.lcssa, %._crit_edge853 ] ; 3 uses
  %.not784.not815 = icmp sgt i32 %.0765863, %.0758855
  br i1 %.not784.not815, label %.lr.ph817.preheader, label %._crit_edge818

.lr.ph817.preheader:                              ; preds = %.preheader805
  %i.fr = sext i32 %.0758855 to i64
  br label %.lr.ph817

.lr.ph817:                                        ; preds = %.lr.ph817.preheader, %bb.p
  %indvars.iv880 = phi i64 [ %i.fl, %.lr.ph817.preheader ], [ %indvars.iv.next881, %bb.p ] ; 8 uses
  %indvars882 = trunc nsw i64 %indvars.iv880 to i32 ; 3 uses
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -1 ; 6 uses
  %indvars = trunc i64 %indvars.iv.next881 to i32
  %i.fs = mul nsw i32 %i.j, %indvars
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.fv = getelementptr [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !44 ; 4 uses
  %i.fx = call double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp ugt double %i.fx, %i.cm
  br i1 %i.fy, label %bb.i, label %._crit_edge818

bb.i:                                             ; preds = %.lr.ph817
  %i.fz = mul i64 %indvars.iv.next881, %indvars.iv.next881949
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !44 ; 4 uses
  %i.gc = fcmp oge double %i.gb, 0.000000e+00
  %i.gd = fneg double %i.gb
  %i.ge = select i1 %i.gc, double %i.gb, double %i.gd
  %i.gf = mul nsw i64 %indvars.iv880, %i.cx       ; 2 uses
  %i.gg = mul nsw i32 %i.j, %indvars882
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.gj = getelementptr [8 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !44 ; 4 uses
  %i.gl = fcmp oge double %i.gk, 0.000000e+00
  %i.gm = fneg double %i.gk
  %i.gn = select i1 %i.gl, double %i.gk, double %i.gm ; 2 uses
  %i.go = fadd double %i.ge, %i.gn                ; 4 uses
  %i.gp = fcmp oeq double %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gq = add nsw i64 %indvars.iv880, -2          ; 2 uses
  %i.gr = load i32, ptr %3, align 4, !tbaa !42
  %i.gs = sext i32 %i.gr to i64
  %.not785 = icmp slt i64 %i.gq, %i.gs
  br i1 %.not785, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gt = mul nsw i64 %i.gq, %i.cx
  %i.gu = getelementptr [8 x i8], ptr %i.l, i64 %i.gt
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %indvars.iv.next881
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !44 ; 3 uses
  %i.gx = fcmp oge double %i.gw, 0.000000e+00
  %i.gy = fneg double %i.gw
  %i.gz = select i1 %i.gx, double %i.gw, double %i.gy
  %i.ha = fadd double %i.go, %i.gz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0744 = phi double [ %i.ha, %bb.k ], [ %i.go, %bb.j ] ; 2 uses
  %i.hb = load i32, ptr %4, align 4, !tbaa !42
  %i.hc = sext i32 %i.hb to i64
  %.not786.not = icmp slt i64 %indvars.iv880, %i.hc
  br i1 %.not786.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hd = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = getelementptr [8 x i8], ptr %i.he, i64 %i.gf
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !44 ; 3 uses
  %i.hh = fcmp oge double %i.hg, 0.000000e+00
  %i.hi = fneg double %i.hg
  %i.hj = select i1 %i.hh, double %i.hg, double %i.hi
  %i.hk = fadd double %.0744, %i.hj
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  %.1745 = phi double [ %i.hk, %bb.m ], [ %.0744, %bb.l ], [ %i.go, %bb.i ]
  %i.hl = fcmp oge double %i.fw, 0.000000e+00
  %i.hm = fneg double %i.fw
  %i.hn = select i1 %i.hl, double %i.fw, double %i.hm ; 2 uses
  %i.ho = fmul double %i.ci, %.1745
  %i.hp = fcmp ugt double %i.hn, %i.ho
  br i1 %i.hp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hq = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next881
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %i.gf
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !44
  %i.ht = fsub double %i.gb, %i.gk
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hs, i64 1 ; 3 uses
  %i.hw = fcmp oge <2 x double> %i.hv, zeroinitializer
  %i.hx = fneg <2 x double> %i.hv
  %i.hy = select <2 x i1> %i.hw, <2 x double> %i.hv, <2 x double> %i.hx ; 4 uses
  %i.hz = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hn, i64 1 ; 4 uses
  %i.ib = fcmp oge <2 x double> %i.ia, %i.hy
  %i.ic = select <2 x i1> %i.ib, <2 x double> %i.ia, <2 x double> %i.hy ; 3 uses
  %i.id = fcmp ole <2 x double> %i.ia, %i.hy
  %i.ie = select <2 x i1> %i.id, <2 x double> %i.ia, <2 x double> %i.hy
  %i.if = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = fadd <2 x double> %i.if, %i.ig
  %i.ii = fdiv <2 x double> %i.ic, %i.ih
  %i.ij = fmul <2 x double> %i.ie, %i.ii          ; 2 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0
  %i.il = fmul double %i.ci, %i.ik                ; 2 uses
  %i.im = fcmp oge double %i.cm, %i.il
  %i.in = select i1 %i.im, double %i.cm, double %i.il
  %i.io = extractelement <2 x double> %i.ij, i64 1
  %i.ip = fcmp ugt double %i.io, %i.in
  br i1 %i.ip, label %bb.p, label %._crit_edge818

bb.p:                                             ; preds = %bb.n, %bb.o
  %.not784.not = icmp sgt i64 %indvars.iv.next881, %i.fr
  br i1 %.not784.not, label %.lr.ph817, label %._crit_edge818, !llvm.loop !10

._crit_edge818:                                   ; preds = %.lr.ph817, %bb.o, %bb.p, %.preheader805
  %.0759.lcssa = phi i32 [ %.0765863, %.preheader805 ], [ %.0758855, %bb.p ], [ %indvars882, %bb.o ], [ %indvars882, %.lr.ph817 ] ; 17 uses
  %i.iq = load i32, ptr %3, align 4, !tbaa !42
  %i.ir = icmp sgt i32 %.0759.lcssa, %i.iq
  br i1 %i.ir, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge818
  %i.is = add nsw i32 %.0759.lcssa, -1
  %i.it = mul nsw i32 %i.is, %i.j
  %i.iu = add nsw i32 %i.it, %.0759.lcssa
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iv
  store double 0.000000e+00, ptr %i.iw, align 8, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge818
  %.not787 = icmp slt i32 %.0759.lcssa, %i.eo
  br i1 %.not787, label %bb.s, label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.ix = load i32, ptr %0, align 4, !tbaa !42
  %.not788 = icmp eq i32 %i.ix, 0                 ; 2 uses
  %spec.select = select i1 %.not788, i32 %.0759.lcssa, i32 %.2755856 ; 6 uses
  %spec.select802 = select i1 %.not788, i32 %.0765863, i32 %.2857 ; 5 uses
  switch i32 %.0746858, label %bb.v [
    i32 10, label %bb.t
    i32 20, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.iy = add nsw i32 %.0759.lcssa, 1             ; 2 uses
  %i.iz = mul nsw i32 %.0759.lcssa, %i.j          ; 2 uses
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !44 ; 3 uses
  %i.je = fcmp oge double %i.jd, 0.000000e+00
  %i.jf = fneg double %i.jd
  %i.jg = select i1 %i.je, double %i.jd, double %i.jf
  %i.jh = add nsw i32 %.0759.lcssa, 2
  %i.ji = mul nsw i32 %i.iy, %i.j
  %i.jj = add nsw i32 %i.jh, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jk
end_hunk_0
begin_hunk_1_@dlahqr_:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.0750 = phi double [ %i.jv, %bb.t ], [ %i.kh, %bb.u ], [ %i.kj, %bb.v ] ; 4 uses
  %.0749 = phi double [ %i.jw, %bb.t ], [ %i.ki, %bb.u ], [ %i.kl, %bb.v ] ; 4 uses
  %.0748 = phi double [ %i.jq, %bb.t ], [ %i.kf, %bb.u ], [ %i.kk, %bb.v ] ; 3 uses
  %.0747 = phi double [ %i.jv, %bb.t ], [ %i.kh, %bb.u ], [ %i.km, %bb.v ] ; 4 uses
  %i.kn = fcmp oge double %.0750, 0.000000e+00
  %i.ko = fneg double %.0750
  %i.kp = select i1 %i.kn, double %.0750, double %i.ko
  %i.kq = fcmp oge double %.0749, 0.000000e+00
  %i.kr = fneg double %.0749
  %i.ks = select i1 %i.kq, double %.0749, double %i.kr
  %i.kt = fadd double %i.kp, %i.ks
  %i.ku = fcmp oge double %.0748, 0.000000e+00
  %i.kv = fneg double %.0748                      ; 2 uses
  %i.kw = select i1 %i.ku, double %.0748, double %i.kv
  %i.kx = fadd double %i.kt, %i.kw
  %i.ky = fcmp oge double %.0747, 0.000000e+00
  %i.kz = fneg double %.0747
  %i.la = select i1 %i.ky, double %.0747, double %i.kz
  %i.lb = fadd double %i.kx, %i.la                ; 7 uses
  %i.lc = fcmp oeq double %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ld = insertelement <2 x double> poison, double %.0750, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %.0747, i64 1
  %i.lf = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fdiv <2 x double> %i.le, %i.lg          ; 2 uses
  %i.li = fdiv double %.0749, %i.lb
  %i.lj = extractelement <2 x double> %i.lh, i64 0 ; 2 uses
  %i.lk = extractelement <2 x double> %i.lh, i64 1 ; 4 uses
  %i.ll = fadd double %i.lj, %i.lk
  %i.lm = fmul double %i.ll, 5.000000e-01         ; 5 uses
  %i.ln = fsub double %i.lj, %i.lm
  %i.lo = fsub double %i.lk, %i.lm
  %i.lp = fdiv double %i.kv, %i.lb
  %i.lq = fmul double %i.li, %i.lp
  %i.lr = call double @llvm.fmuladd.f64(double %i.ln, double %i.lo, double %i.lq) ; 3 uses
  %i.ls = fcmp oge double %i.lr, 0.000000e+00     ; 2 uses
  %i.lt = fneg double %i.lr
  %i.lu = select i1 %i.ls, double %i.lr, double %i.lt
  %i.lv = call double @sqrt(double noundef %i.lu) #5 ; 3 uses
  br i1 %i.ls, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lw = fmul double %i.lb, %i.lm
  %i.lx = fmul double %i.lb, %i.lv                ; 2 uses
  %i.ly = fneg double %i.lx
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.lz = fadd double %i.lm, %i.lv                ; 2 uses
  %i.ma = fsub double %i.lm, %i.lv                ; 2 uses
  %i.mb = fsub double %i.lz, %i.lk
  %i.mc = call double @llvm.fabs.f64(double %i.mb)
  %i.md = fsub double %i.ma, %i.lk
  %i.me = call double @llvm.fabs.f64(double %i.md)
  %i.mf = fcmp ugt double %i.mc, %i.me
  %. = select i1 %i.mf, double %i.ma, double %i.lz
  %.0 = fmul double %i.lb, %.
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.y, %bb.z
  %.0743 = phi double [ 0.000000e+00, %bb.z ], [ %i.lx, %bb.y ], [ 0.000000e+00, %bb.w ]
  %.0742 = phi double [ 0.000000e+00, %bb.z ], [ %i.ly, %bb.y ], [ 0.000000e+00, %bb.w ] ; 4 uses
  %.1 = phi double [ %.0, %bb.z ], [ %i.lw, %bb.y ], [ 0.000000e+00, %bb.w ] ; 3 uses
  %i.mg = fcmp oge double %.0742, 0.000000e+00
  %i.mh = fneg double %.0742
  %i.mi = select i1 %i.mg, double %.0742, double %i.mh
  %i.mj = fneg double %.0743
  %i.mk = sext i32 %.0759.lcssa to i64            ; 2 uses
  %.not789984 = icmp slt i32 %i.et, %.0759.lcssa
  br i1 %.not789984, label %._crit_edge989, label %.lr.ph988

bb.ab:                                            ; preds = %bb.ac
  %indvars886 = trunc i64 %indvars.iv.next884 to i32 ; 2 uses
  %.not789.not = icmp sgt i64 %indvars.iv883985, %i.mk
  br i1 %.not789.not, label %.lr.ph988, label %._crit_edge989.loopexit, !llvm.loop !11

.lr.ph988:                                        ; preds = %bb.aa, %bb.ab
  %indvars886986 = phi i32 [ %indvars886, %bb.ab ], [ %i.et, %bb.aa ] ; 2 uses
  %indvars.iv883985 = phi i64 [ %indvars.iv.next884, %bb.ab ], [ %i.fm, %bb.aa ] ; 9 uses
  %i.ml = add nsw i64 %indvars.iv883985, 1        ; 3 uses
  %i.mm = add nsw i32 %indvars886986, 1
  %i.mn = mul nsw i64 %indvars.iv883985, %i.cx    ; 2 uses
  %i.mo = getelementptr [8 x i8], ptr %i.l, i64 %i.ml
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.mn
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !44 ; 4 uses
  %i.mr = getelementptr [8 x i8], ptr %i.l, i64 %i.mn
  %i.ms = getelementptr [8 x i8], ptr %i.mr, i64 %indvars.iv883985
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !44 ; 5 uses
  %i.mu = fsub double %i.mt, %.1                  ; 5 uses
  %i.mv = fcmp oge double %i.mu, 0.000000e+00
  %i.mw = fneg double %i.mu
  %i.mx = select i1 %i.mv, double %i.mu, double %i.mw
  %i.my = fadd double %i.mi, %i.mx
  %i.mz = fcmp oge double %i.mq, 0.000000e+00
  %i.na = fneg double %i.mq
  %i.nb = select i1 %i.mz, double %i.mq, double %i.na
  %i.nc = fadd double %i.nb, %i.my                ; 3 uses
  %i.nd = mul nsw i64 %i.ml, %i.cx                ; 2 uses
  %i.ne = mul nsw i32 %i.mm, %i.j
  %i.nf = getelementptr [8 x i8], ptr %i.l, i64 %i.nd
  %i.ng = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv883985
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !44
  %i.ni = fdiv double %i.mu, %i.nc
  %i.nj = fmul double %i.mu, %i.ni
  %i.nk = fdiv double %.0742, %i.nc
  %i.nl = sext i32 %i.ne to i64
  %i.nm = getelementptr [8 x i8], ptr %i.l, i64 %i.ml
  %i.nn = getelementptr [8 x i8], ptr %i.nm, i64 %i.nl
  %i.no = load double, ptr %i.nn, align 8, !tbaa !44 ; 4 uses
  %i.np = fadd double %i.mt, %i.no
  %i.nq = fsub double %i.np, %.1
  %i.nr = fsub double %i.nq, %.1
  %i.ns = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv883985
  %i.nt = getelementptr i8, ptr %i.ns, i64 16
  %i.nu = getelementptr [8 x i8], ptr %i.nt, i64 %i.nd
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !44
  %i.nw = fdiv double %i.mq, %i.nc                ; 2 uses
  %i.nx = call double @llvm.fmuladd.f64(double %i.nw, double %i.nh, double %i.nj)
  %i.ny = call double @llvm.fmuladd.f64(double %i.mj, double %i.nk, double %i.nx) ; 4 uses
  %i.nz = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.oa = insertelement <2 x double> %i.nz, double %i.nv, i64 1
  %i.ob = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = fmul <2 x double> %i.oa, %i.oc          ; 3 uses
  %i.oe = fcmp oge double %i.ny, 0.000000e+00
  %i.of = fneg double %i.ny
  %i.og = select i1 %i.oe, double %i.ny, double %i.of
  %i.oh = extractelement <2 x double> %i.od, i64 0 ; 3 uses
  %i.oi = fcmp oge double %i.oh, 0.000000e+00
  %i.oj = fneg double %i.oh
  %i.ok = select i1 %i.oi, double %i.oh, double %i.oj
  %i.ol = fadd double %i.ok, %i.og
  %i.om = extractelement <2 x double> %i.od, i64 1 ; 3 uses
  %i.on = fcmp oge double %i.om, 0.000000e+00
  %i.oo = fneg double %i.om
  %i.op = select i1 %i.on, double %i.om, double %i.oo
  %i.oq = fadd double %i.op, %i.ol                ; 2 uses
  %i.or = fdiv double %i.ny, %i.oq                ; 5 uses
  %i.os = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ou = fdiv <2 x double> %i.od, %i.ot          ; 5 uses
  %i.ov = icmp eq i64 %indvars.iv883985, %i.mk
  br i1 %i.ov, label %._crit_edge989.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph988
  %indvars.iv.next884 = add nsw i64 %indvars.iv883985, -1 ; 4 uses
  %i.ow = mul nsw i64 %indvars.iv.next884, %i.cx  ; 2 uses
  %i.ox = getelementptr [8 x i8], ptr %i.l, i64 %i.ow
  %i.oy = getelementptr [8 x i8], ptr %i.ox, i64 %indvars.iv883985
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !44 ; 3 uses
  %i.pa = fcmp oge double %i.oz, 0.000000e+00
  %i.pb = fneg double %i.oz
  %i.pc = select i1 %i.pa, double %i.oz, double %i.pb
  %i.pd = fcmp oge <2 x double> %i.ou, zeroinitializer
  %i.pe = fneg <2 x double> %i.ou
  %i.pf = select <2 x i1> %i.pd, <2 x double> %i.ou, <2 x double> %i.pe ; 2 uses
  %shift1174 = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1175 = fadd <2 x double> %i.pf, %shift1174
  %i.pg = extractelement <2 x double> %foldExtExtBinop1175, i64 0
  %i.ph = fmul double %i.pg, %i.pc
  %i.pi = fcmp oge double %i.or, 0.000000e+00
  %i.pj = fneg double %i.or
  %i.pk = select i1 %i.pi, double %i.or, double %i.pj
  %i.pl = fmul double %i.ci, %i.pk
  %i.pm = getelementptr [8 x i8], ptr %i.l, i64 %i.ow
  %i.pn = getelementptr [8 x i8], ptr %i.pm, i64 %indvars.iv.next884
  %i.po = load double, ptr %i.pn, align 8, !tbaa !44 ; 3 uses
  %i.pp = fcmp oge double %i.po, 0.000000e+00
  %i.pq = fneg double %i.po
  %i.pr = select i1 %i.pp, double %i.po, double %i.pq
  %i.ps = fcmp oge double %i.mt, 0.000000e+00
  %i.pt = fneg double %i.mt
  %i.pu = select i1 %i.ps, double %i.mt, double %i.pt
  %i.pv = fadd double %i.pu, %i.pr
  %i.pw = fcmp oge double %i.no, 0.000000e+00
  %i.px = fneg double %i.no
  %i.py = select i1 %i.pw, double %i.no, double %i.px
  %i.pz = fadd double %i.py, %i.pv
  %i.qa = fmul double %i.pl, %i.pz
  %i.qb = fcmp ugt double %i.ph, %i.qa
  br i1 %i.qb, label %bb.ab, label %._crit_edge990, !llvm.loop !11

._crit_edge990:                                   ; preds = %bb.ac
  store double %i.or, ptr %i.b, align 16, !tbaa !44
  store <2 x double> %i.ou, ptr %i.cv, align 8, !tbaa !44
  br label %._crit_edge989, !llvm.loop !11

._crit_edge989.loopexit:                          ; preds = %bb.ab, %.lr.ph988
  %.0757.lcssa.ph = phi i32 [ %.0759.lcssa, %.lr.ph988 ], [ %indvars886, %bb.ab ]
  store double %i.or, ptr %i.b, align 16, !tbaa !44
  store <2 x double> %i.ou, ptr %i.cv, align 8, !tbaa !44
  br label %._crit_edge989

._crit_edge989:                                   ; preds = %._crit_edge989.loopexit, %._crit_edge990, %bb.aa
  %.0757.lcssa = phi i32 [ %i.et, %bb.aa ], [ %indvars886986, %._crit_edge990 ], [ %.0757.lcssa.ph, %._crit_edge989.loopexit ] ; 6 uses
  %.not790.not848 = icmp slt i32 %.0757.lcssa, %.0765863
  br i1 %.not790.not848, label %.lr.ph852, label %._crit_edge853

.lr.ph852:                                        ; preds = %._crit_edge989
  %i.qc = icmp sgt i32 %.0757.lcssa, %.0759.lcssa
  %.not792826 = icmp sgt i32 %spec.select, %.0765863
  %i.qd = sext i32 %.0757.lcssa to i64            ; 15 uses
  %i.qe = add i32 %spec.select802, 1              ; 4 uses
  %i.qf = sext i32 %spec.select to i64            ; 10 uses
  %i.qg = sext i32 %spec.select802 to i64         ; 2 uses
  %i.qh = add nsw i64 %i.qd, 2
  %i.qi = mul i64 %i.da, %i.qh                    ; 2 uses
  %i.qj = add nsw i64 %i.qd, 1
  %i.qk = mul i64 %i.db, %i.qj                    ; 2 uses
  %i.ql = mul i64 %i.dc, %i.qd                    ; 2 uses
  %i.qm = add nsw i64 %i.qd, 2
  %i.qn = mul i64 %i.df, %i.qm                    ; 2 uses
  %i.qo = shl nsw i64 %i.qf, 3                    ; 3 uses
  %i.qp = add nsw i64 %i.qd, 1
  %i.qq = mul i64 %i.dg, %i.qp                    ; 2 uses
  %i.qr = mul nsw i64 %i.cx, %i.qd
  %i.qs = add i64 %i.qr, %i.k
  %i.qt = shl i64 %i.qs, 3
  %i.qu = mul i64 %i.di, %i.qd
  %i.qv = add nsw i64 %i.qd, 1
  %i.qw = mul i64 %i.dk, %i.qv                    ; 2 uses
  %i.qx = mul i64 %i.dl, %i.qd                    ; 2 uses
  %14 = shl nsw i64 %i.qd, 3                      ; 2 uses
  %i.qy = add nsw i64 %14, 8
  %15 = xor i32 %.0757.lcssa, -1
  %16 = add i32 %.0765863, %15
  %17 = zext i32 %16 to i64
  %i.qz = shl nuw nsw i64 %17, 3                  ; 2 uses
  %i.ra = add nsw i64 %i.qy, %i.qz
  %18 = mul i64 %i.ra, %i.cx
  %19 = shl nsw i64 %i.qf, 3                      ; 4 uses
  %i.rb = sub i32 %.0765863, %spec.select
  %i.rc = zext i32 %i.rb to i64
  %i.rd = shl nuw nsw i64 %i.rc, 3                ; 2 uses
  %i.re = getelementptr i8, ptr %scevgep, i64 %18
  %i.rf = getelementptr i8, ptr %i.re, i64 %19
  %scevgep1131 = getelementptr i8, ptr %i.rf, i64 %i.rd
  %20 = add nsw i64 %i.qd, 1
  %i.rg = mul i64 %i.dp, %20
  %21 = getelementptr i8, ptr %scevgep1132.a, i64 %i.rg
  %scevgep1133 = getelementptr i8, ptr %21, i64 %19
  %i.rh = add nsw i64 %14, %i.qz
  %22 = mul i64 %i.rh, %i.cx
  %23 = getelementptr i8, ptr %scevgep1134.a, i64 %22
  %24 = getelementptr i8, ptr %23, i64 %19
  %scevgep1135.a = getelementptr i8, ptr %24, i64 %i.rd
  %25 = mul i64 %i.dq, %i.qd
  %i.ri = getelementptr i8, ptr %scevgep1136.a, i64 %25
  %scevgep1137 = getelementptr i8, ptr %i.ri, i64 %19
  %i.rj = shl nsw i64 %i.qd, 4                    ; 2 uses
  %i.rk = add i32 %spec.select802, 1
  %i.rl = sub i32 %i.rk, %.0757.lcssa             ; 2 uses
  %i.rm = sub i32 %spec.select802, %.0757.lcssa   ; 3 uses
  %i.rn = getelementptr i8, ptr %5, i64 %i.rj
  %i.ro = getelementptr i8, ptr %i.rn, i64 -8
  %i.rp = getelementptr i8, ptr %5, i64 %i.rj
  %i.rq = getelementptr i8, ptr %i.rp, i64 -16
  %i.rr = sub i32 %.0765863, %spec.select         ; 2 uses
  %i.rs = zext i32 %i.rr to i64
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 2 uses
  %min.iters.check1139 = icmp ult i32 %i.rr, 7
  %bound01141 = icmp ult ptr %scevgep1137, %scevgep1131
  %bound11142 = icmp ult ptr %scevgep1133, %scevgep1135.a
  %found.conflict1143 = and i1 %bound01141, %bound11142
  %26 = or i1 %found.conflict1143, %stride.check
  %n.vec1145 = and i64 %i.rt, 8589934584          ; 3 uses
  %i.ru = add nsw i64 %n.vec1145, %i.qf
  %cmp.n1162 = icmp eq i64 %i.rt, %n.vec1145
  %i.rv = getelementptr i8, ptr %i.dr, i64 %i.qx
  %i.rw = getelementptr i8, ptr %i.dt, i64 %i.qx
  %i.rx = getelementptr i8, ptr %i.du, i64 %i.qw
  %i.ry = getelementptr i8, ptr %i.dw, i64 %i.qw
  %invariant.op = sub i64 1, %i.qf
  %i.rz = getelementptr i8, ptr %i.dx, i64 %i.qu
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.qo
  %i.sb = getelementptr i8, ptr %5, i64 %i.qt
  %i.sc = getelementptr i8, ptr %i.sb, i64 8
  %i.sd = getelementptr i8, ptr %i.dy, i64 %i.qq
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.qo
  %i.sf = getelementptr i8, ptr %i.ea, i64 %i.qq
  %i.sg = getelementptr i8, ptr %i.eb, i64 %i.qn
  %i.sh = getelementptr i8, ptr %i.sg, i64 %i.qo
  %i.si = getelementptr i8, ptr %i.ed, i64 %i.qn
  %i.sj = getelementptr i8, ptr %i.ee, i64 %i.ql
  %i.sk = getelementptr i8, ptr %i.eg, i64 %i.ql
  %i.sl = getelementptr i8, ptr %i.eh, i64 %i.qk
  %i.sm = getelementptr i8, ptr %i.ej, i64 %i.qk
  %i.sn = getelementptr i8, ptr %i.ek, i64 %i.qi
  %i.so = getelementptr i8, ptr %i.em, i64 %i.qi
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph852, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph852 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %indvars.iv887 = phi i64 [ %i.qd, %.lr.ph852 ], [ %indvars.iv.next888, %.loopexit ] ; 38 uses
  %i.sp = trunc i64 %indvar to i32
  %i.sq = sub i32 %i.rl, %i.sp                    ; 2 uses
  %i.sr = trunc i64 %indvar to i32                ; 2 uses
  %i.ss = trunc i64 %indvar to i32
  %i.st = sub i32 %i.rl, %i.ss                    ; 2 uses
  %i.su = trunc i64 %indvar to i32
  %i.sv = sub i32 %i.rm, %i.su                    ; 2 uses
  %i.sw = shl nuw nsw i64 %indvar, 4
  %scevgep1170 = getelementptr i8, ptr %i.ro, i64 %i.sw
  %i.sx = shl nuw nsw i64 %indvar, 4
  %scevgep1165 = getelementptr i8, ptr %i.rq, i64 %i.sx
  %indvars924 = trunc i64 %indvars.iv887 to i32   ; 2 uses
  %i.sy = trunc i64 %indvars.iv887 to i32
  %i.sz = sub i32 %.0765863, %i.sy
  %i.ta = call i32 @llvm.umin.i32(i32 %i.sz, i32 2)
  %i.tb = add nuw nsw i32 %i.ta, 1
  store i32 %i.tb, ptr %i.f, align 4, !tbaa !42
  %i.tc = icmp sgt i64 %indvars.iv887, %i.qd
  br i1 %i.tc, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.td = add nsw i32 %indvars924, -1
  %i.te = mul nsw i32 %i.td, %i.j
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.th = getelementptr [8 x i8], ptr %i.tg, i64 %i.tf ; 2 uses
  call void @dcopy_(ptr noundef nonnull %i.f, ptr noundef %i.th, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1) #5
  call void @dlarfg_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c) #5
  %i.ti = load double, ptr %i.b, align 16, !tbaa !44
  %i.tj = add nsw i64 %indvars.iv887, -1
  %i.tk = mul nsw i64 %i.tj, %i.cx                ; 2 uses
  store double %i.ti, ptr %i.th, align 8, !tbaa !44
  %i.tl = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.tm = getelementptr i8, ptr %i.tl, i64 8
  %i.tn = getelementptr [8 x i8], ptr %i.tm, i64 %i.tk
  store double 0.000000e+00, ptr %i.tn, align 8, !tbaa !44
  %i.to = icmp slt i64 %indvars.iv887, %i.fo
  br i1 %i.to, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.tp = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.tq = getelementptr i8, ptr %i.tp, i64 16
  %i.tr = getelementptr [8 x i8], ptr %i.tq, i64 %i.tk
  store double 0.000000e+00, ptr %i.tr, align 8, !tbaa !44
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  call void @dlarfg_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c) #5
  br i1 %i.qc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ts = load double, ptr %i.c, align 8, !tbaa !44
  %i.tt = fsub double 1.000000e+00, %i.ts
  %i.tu = add nsw i32 %indvars924, -1
  %i.tv = mul nsw i32 %i.tu, %i.j
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %i.tw ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !44
  %i.ua = fmul double %i.tz, %i.tt
  store double %i.ua, ptr %i.ty, align 8, !tbaa !44
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ae, %bb.af
  %i.ub = load double, ptr %i.cv, align 8, !tbaa !44 ; 35 uses
  %i.uc = load double, ptr %i.c, align 8, !tbaa !44 ; 36 uses
  %i.ud = fmul double %i.ub, %i.uc                ; 34 uses
  %i.ue = load i32, ptr %i.f, align 4, !tbaa !42
  switch i32 %i.ue, label %.loopexit [
    i32 3, label %bb.aj
    i32 2, label %.preheader804
  ]

.preheader804:                                    ; preds = %bb.ai
  %.not791823 = icmp sgt i64 %indvars.iv887, %i.qg
  br i1 %.not791823, label %.preheader, label %.lver.check

.lver.check:                                      ; preds = %.preheader804
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887 ; 10 uses
  %i.uf = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.ug = getelementptr i8, ptr %i.uf, i64 8      ; 5 uses
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig.preheader

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %xtraiter1185 = and i32 %i.st, 3                ; 2 uses
  %lcmp.mod1186.not = icmp eq i32 %xtraiter1185, 0
  br i1 %lcmp.mod1186.not, label %.ph.lver.orig.prol.loopexit, label %.ph.lver.orig.prol.preheader

.ph.lver.orig.prol.preheader:                     ; preds = %.ph.lver.orig.preheader
  %i.uh = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.ui = insertelement <2 x double> %i.uh, double %i.ud, i64 1
  br label %.ph.lver.orig.prol

.ph.lver.orig.prol:                               ; preds = %.ph.lver.orig.prol, %.ph.lver.orig.prol.preheader
  %indvars.iv889.lver.orig.prol = phi i64 [ %indvars.iv.next890.lver.orig.prol, %.ph.lver.orig.prol ], [ %indvars.iv887, %.ph.lver.orig.prol.preheader ] ; 2 uses
  %prol.iter1187 = phi i32 [ %prol.iter1187.next, %.ph.lver.orig.prol ], [ 0, %.ph.lver.orig.prol.preheader ]
  %i.uj = mul nsw i64 %indvars.iv889.lver.orig.prol, %i.cx
  %gep.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.uj ; 2 uses
  %i.uk = load <2 x double>, ptr %gep.lver.orig.prol, align 8, !tbaa !44 ; 3 uses
  %i.ul = extractelement <2 x double> %i.uk, i64 0
  %i.um = extractelement <2 x double> %i.uk, i64 1
  %i.un = call double @llvm.fmuladd.f64(double %i.ub, double %i.um, double %i.ul)
  %i.uo = fneg double %i.un
  %i.up = insertelement <2 x double> poison, double %i.uo, i64 0
  %i.uq = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %i.ui, <2 x double> %i.uk)
  store <2 x double> %i.ur, ptr %gep.lver.orig.prol, align 8, !tbaa !44
  %indvars.iv.next890.lver.orig.prol = add nsw i64 %indvars.iv889.lver.orig.prol, 1 ; 2 uses
  %prol.iter1187.next = add i32 %prol.iter1187, 1 ; 2 uses
  %prol.iter1187.cmp.not = icmp eq i32 %prol.iter1187.next, %xtraiter1185
  br i1 %prol.iter1187.cmp.not, label %.ph.lver.orig.prol.loopexit, label %.ph.lver.orig.prol, !llvm.loop !12

.ph.lver.orig.prol.loopexit:                      ; preds = %.ph.lver.orig.prol, %.ph.lver.orig.preheader
  %indvars.iv889.lver.orig.unr = phi i64 [ %indvars.iv887, %.ph.lver.orig.preheader ], [ %indvars.iv.next890.lver.orig.prol, %.ph.lver.orig.prol ]
  %i.us = icmp ult i32 %i.sv, 3
  br i1 %i.us, label %.preheader, label %.ph.lver.orig.preheader.new

.ph.lver.orig.preheader.new:                      ; preds = %.ph.lver.orig.prol.loopexit
  %i.ut = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.uu = insertelement <2 x double> %i.ut, double %i.ud, i64 1
  %i.uv = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.uw = insertelement <2 x double> %i.uv, double %i.ud, i64 1
  %i.ux = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.uy = insertelement <2 x double> %i.ux, double %i.ud, i64 1
  %i.uz = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.va = insertelement <2 x double> %i.uz, double %i.ud, i64 1
  br label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig, %.ph.lver.orig.preheader.new
  %indvars.iv889.lver.orig = phi i64 [ %indvars.iv889.lver.orig.unr, %.ph.lver.orig.preheader.new ], [ %indvars.iv.next890.lver.orig.3, %.ph.lver.orig ] ; 5 uses
  %i.vb = mul nsw i64 %indvars.iv889.lver.orig, %i.cx
  %gep.lver.orig = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.vb ; 2 uses
  %i.vc = load <2 x double>, ptr %gep.lver.orig, align 8, !tbaa !44 ; 3 uses
  %i.vd = extractelement <2 x double> %i.vc, i64 0
  %i.ve = extractelement <2 x double> %i.vc, i64 1
  %i.vf = call double @llvm.fmuladd.f64(double %i.ub, double %i.ve, double %i.vd)
  %i.vg = fneg double %i.vf
  %i.vh = insertelement <2 x double> poison, double %i.vg, i64 0
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.uu, <2 x double> %i.vc)
  store <2 x double> %i.vj, ptr %gep.lver.orig, align 8, !tbaa !44
  %indvars.iv.next890.lver.orig = add nsw i64 %indvars.iv889.lver.orig, 1
  %i.vk = mul nsw i64 %indvars.iv.next890.lver.orig, %i.cx
  %gep.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.vk ; 2 uses
  %i.vl = load <2 x double>, ptr %gep.lver.orig.1, align 8, !tbaa !44 ; 3 uses
  %i.vm = extractelement <2 x double> %i.vl, i64 0
  %i.vn = extractelement <2 x double> %i.vl, i64 1
  %i.vo = call double @llvm.fmuladd.f64(double %i.ub, double %i.vn, double %i.vm)
  %i.vp = fneg double %i.vo
  %i.vq = insertelement <2 x double> poison, double %i.vp, i64 0
  %i.vr = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vr, <2 x double> %i.uw, <2 x double> %i.vl)
  store <2 x double> %i.vs, ptr %gep.lver.orig.1, align 8, !tbaa !44
  %indvars.iv.next890.lver.orig.1 = add nsw i64 %indvars.iv889.lver.orig, 2
  %i.vt = mul nsw i64 %indvars.iv.next890.lver.orig.1, %i.cx
  %gep.lver.orig.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.vt ; 2 uses
  %i.vu = load <2 x double>, ptr %gep.lver.orig.2, align 8, !tbaa !44 ; 3 uses
  %i.vv = extractelement <2 x double> %i.vu, i64 0
  %i.vw = extractelement <2 x double> %i.vu, i64 1
  %i.vx = call double @llvm.fmuladd.f64(double %i.ub, double %i.vw, double %i.vv)
  %i.vy = fneg double %i.vx
  %i.vz = insertelement <2 x double> poison, double %i.vy, i64 0
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> %i.uy, <2 x double> %i.vu)
  store <2 x double> %i.wb, ptr %gep.lver.orig.2, align 8, !tbaa !44
  %indvars.iv.next890.lver.orig.2 = add nsw i64 %indvars.iv889.lver.orig, 3
  %i.wc = mul nsw i64 %indvars.iv.next890.lver.orig.2, %i.cx
  %gep.lver.orig.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.wc ; 2 uses
  %i.wd = load <2 x double>, ptr %gep.lver.orig.3, align 8, !tbaa !44 ; 3 uses
  %i.we = extractelement <2 x double> %i.wd, i64 0
  %i.wf = extractelement <2 x double> %i.wd, i64 1
end_hunk_1
begin_hunk_2_@dlahqr_:bb.a
  %i.abn = call double @llvm.fmuladd.f64(double %i.abm, double %i.uc, double %i.abh)
  store double %i.abn, ptr %gep968, align 8, !tbaa !44
  %i.abo = load double, ptr %gep970, align 8, !tbaa !44
  %i.abp = call double @llvm.fmuladd.f64(double %i.abm, double %i.ud, double %i.abo)
  store double %i.abp, ptr %gep970, align 8, !tbaa !44
  %i.abq = load double, ptr %gep972, align 8, !tbaa !44
  %i.abr = call double @llvm.fmuladd.f64(double %i.abm, double %i.wu, double %i.abq)
  store double %i.abr, ptr %gep972, align 8, !tbaa !44
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, 1
  %.not797.not = icmp slt i64 %indvars.iv913, %i.aaj
  br i1 %.not797.not, label %scalar.ph1048, label %._crit_edge843, !llvm.loop !21

._crit_edge843:                                   ; preds = %scalar.ph1048, %middle.block1082, %._crit_edge838
  %i.abs = load i32, ptr %1, align 4, !tbaa !42
  %.not798 = icmp eq i32 %i.abs, 0
  br i1 %.not798, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge843
  %i.abt = load i32, ptr %10, align 4, !tbaa !42  ; 5 uses
  %i.abu = load i32, ptr %9, align 4, !tbaa !42   ; 3 uses
  %.not799844 = icmp sgt i32 %i.abu, %i.abt
  br i1 %.not799844, label %.loopexit, label %.lr.ph847

.lr.ph847:                                        ; preds = %bb.ak
  %i.abv = mul nsw i64 %indvars.iv887, %i.cy
  %i.abw = add nsw i64 %indvars.iv887, 1
  %i.abx = mul nsw i64 %i.abw, %i.cy
  %i.aby = add nsw i64 %indvars.iv887, 2
  %i.abz = mul nsw i64 %i.aby, %i.cy
  %i.aca = sext i32 %i.abu to i64                 ; 5 uses
  %i.acb = add i32 %i.abt, 1
  %invariant.gep973 = getelementptr [8 x i8], ptr %i.q, i64 %i.abv ; 4 uses
  %invariant.gep975 = getelementptr [8 x i8], ptr %i.q, i64 %i.abx ; 4 uses
  %invariant.gep977 = getelementptr [8 x i8], ptr %i.q, i64 %i.abz ; 4 uses
  %i.acc = sub i32 %i.abt, %i.abu                 ; 2 uses
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = add nuw nsw i64 %i.acd, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.acc, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph847
  %i.acf = mul i64 %indvar, %i.dd                 ; 6 uses
  %i.acg = shl nsw i64 %i.aca, 3                  ; 6 uses
  %i.ach = getelementptr i8, ptr %i.sj, i64 %i.acf
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.acg ; 2 uses
  %i.acj = shl nuw nsw i64 %i.acd, 3              ; 3 uses
  %i.ack = getelementptr i8, ptr %i.sk, i64 %i.acf
  %i.acl = getelementptr i8, ptr %i.ack, i64 %i.acg
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.acj ; 2 uses
  %i.acn = getelementptr i8, ptr %i.sl, i64 %i.acf
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.acg ; 2 uses
  %i.acp = getelementptr i8, ptr %i.sm, i64 %i.acf
  %i.acq = getelementptr i8, ptr %i.acp, i64 %i.acg
  %i.acr = getelementptr i8, ptr %i.acq, i64 %i.acj ; 2 uses
  %bound0 = icmp ult ptr %i.aci, %i.acr
  %bound1 = icmp ult ptr %i.aco, %i.acm
  %found.conflict = and i1 %bound0, %bound1
  %i.acs = getelementptr i8, ptr %i.sn, i64 %i.acf
  %i.act = getelementptr i8, ptr %i.acs, i64 %i.acg ; 2 uses
  %i.acu = getelementptr i8, ptr %i.so, i64 %i.acf
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.acg
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.acj ; 2 uses
  %bound01009 = icmp ult ptr %i.aci, %i.acw
  %bound11010 = icmp ult ptr %i.act, %i.acm
  %found.conflict1011 = and i1 %bound01009, %bound11010
  %conflict.rdx = or i1 %found.conflict, %found.conflict1011
  %bound01012 = icmp ult ptr %i.aco, %i.acw
  %bound11013 = icmp ult ptr %i.act, %i.acr
  %found.conflict1014 = and i1 %bound01012, %bound11013
  %conflict.rdx1015 = or i1 %conflict.rdx, %found.conflict1014
  br i1 %conflict.rdx1015, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ace, 8589934588             ; 3 uses
  %i.acx = add nsw i64 %n.vec, %i.aca
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ub, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1016 = insertelement <4 x double> poison, double %i.wt, i64 0
  %broadcast.splat1017 = shufflevector <4 x double> %broadcast.splatinsert1016, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1018 = insertelement <4 x double> poison, double %i.uc, i64 0
  %broadcast.splat1019 = shufflevector <4 x double> %broadcast.splatinsert1018, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1020 = insertelement <4 x double> poison, double %i.ud, i64 0
  %broadcast.splat1021 = shufflevector <4 x double> %broadcast.splatinsert1020, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1022 = insertelement <4 x double> poison, double %i.wu, i64 0
  %broadcast.splat1023 = shufflevector <4 x double> %broadcast.splatinsert1022, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.acy = add i64 %index, %i.aca                 ; 3 uses
  %i.acz = getelementptr [8 x i8], ptr %invariant.gep973, i64 %i.acy ; 2 uses
  %wide.load = load <4 x double>, ptr %i.acz, align 8, !tbaa !44, !alias.scope !53, !noalias !54 ; 2 uses
  %i.ada = getelementptr [8 x i8], ptr %invariant.gep975, i64 %i.acy ; 3 uses
  %wide.load1024 = load <4 x double>, ptr %i.ada, align 8, !tbaa !44, !alias.scope !55, !noalias !56
  %i.adb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1024, <4 x double> %wide.load)
  %i.adc = getelementptr [8 x i8], ptr %invariant.gep977, i64 %i.acy ; 3 uses
  %wide.load1025 = load <4 x double>, ptr %i.adc, align 8, !tbaa !44, !alias.scope !56
  %i.add = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1017, <4 x double> %wide.load1025, <4 x double> %i.adb)
  %i.ade = fneg <4 x double> %i.add               ; 3 uses
  %i.adf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ade, <4 x double> %broadcast.splat1019, <4 x double> %wide.load)
  store <4 x double> %i.adf, ptr %i.acz, align 8, !tbaa !44, !alias.scope !53, !noalias !54
  %wide.load1026 = load <4 x double>, ptr %i.ada, align 8, !tbaa !44, !alias.scope !55, !noalias !56
  %i.adg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ade, <4 x double> %broadcast.splat1021, <4 x double> %wide.load1026)
  store <4 x double> %i.adg, ptr %i.ada, align 8, !tbaa !44, !alias.scope !55, !noalias !56
  %wide.load1027 = load <4 x double>, ptr %i.adc, align 8, !tbaa !44, !alias.scope !56
  %i.adh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ade, <4 x double> %broadcast.splat1023, <4 x double> %wide.load1027)
  store <4 x double> %i.adh, ptr %i.adc, align 8, !tbaa !44, !alias.scope !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.adi = icmp eq i64 %index.next, %n.vec
  br i1 %i.adi, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ace, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph847, %middle.block
  %indvars.iv917.ph = phi i64 [ %i.aca, %vector.memcheck ], [ %i.aca, %.lr.ph847 ], [ %i.acx, %middle.block ] ; 6 uses
  %i.adj = trunc i64 %indvars.iv917.ph to i32     ; 2 uses
  %i.adk = add i32 %i.abt, %i.adj
  %i.adl = and i32 %i.adk, 1
  %lcmp.mod1206.not.not = icmp eq i32 %i.adl, 0
  br i1 %lcmp.mod1206.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep974.prol = getelementptr [8 x i8], ptr %invariant.gep973, i64 %indvars.iv917.ph ; 2 uses
  %i.adm = load double, ptr %gep974.prol, align 8, !tbaa !44 ; 2 uses
  %gep976.prol = getelementptr [8 x i8], ptr %invariant.gep975, i64 %indvars.iv917.ph ; 3 uses
  %i.adn = load double, ptr %gep976.prol, align 8, !tbaa !44
  %i.ado = call double @llvm.fmuladd.f64(double %i.ub, double %i.adn, double %i.adm)
  %gep978.prol = getelementptr [8 x i8], ptr %invariant.gep977, i64 %indvars.iv917.ph ; 3 uses
  %i.adp = load double, ptr %gep978.prol, align 8, !tbaa !44
  %i.adq = call double @llvm.fmuladd.f64(double %i.wt, double %i.adp, double %i.ado)
  %i.adr = fneg double %i.adq                     ; 3 uses
  %i.ads = call double @llvm.fmuladd.f64(double %i.adr, double %i.uc, double %i.adm)
  store double %i.ads, ptr %gep974.prol, align 8, !tbaa !44
  %i.adt = load double, ptr %gep976.prol, align 8, !tbaa !44
  %i.adu = call double @llvm.fmuladd.f64(double %i.adr, double %i.ud, double %i.adt)
  store double %i.adu, ptr %gep976.prol, align 8, !tbaa !44
  %i.adv = load double, ptr %gep978.prol, align 8, !tbaa !44
  %i.adw = call double @llvm.fmuladd.f64(double %i.adr, double %i.wu, double %i.adv)
  store double %i.adw, ptr %gep978.prol, align 8, !tbaa !44
  %indvars.iv.next918.prol = add nsw i64 %indvars.iv917.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv917.unr = phi i64 [ %indvars.iv917.ph, %scalar.ph.preheader ], [ %indvars.iv.next918.prol, %scalar.ph.prol ]
  %i.adx = icmp eq i32 %i.abt, %i.adj
  br i1 %i.adx, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv917 = phi i64 [ %indvars.iv.next918.1, %scalar.ph ], [ %indvars.iv917.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep974 = getelementptr [8 x i8], ptr %invariant.gep973, i64 %indvars.iv917 ; 2 uses
  %i.ady = load double, ptr %gep974, align 8, !tbaa !44 ; 2 uses
  %gep976 = getelementptr [8 x i8], ptr %invariant.gep975, i64 %indvars.iv917 ; 3 uses
  %i.adz = load double, ptr %gep976, align 8, !tbaa !44
  %i.aea = call double @llvm.fmuladd.f64(double %i.ub, double %i.adz, double %i.ady)
  %gep978 = getelementptr [8 x i8], ptr %invariant.gep977, i64 %indvars.iv917 ; 3 uses
  %i.aeb = load double, ptr %gep978, align 8, !tbaa !44
  %i.aec = call double @llvm.fmuladd.f64(double %i.wt, double %i.aeb, double %i.aea)
  %i.aed = fneg double %i.aec                     ; 3 uses
  %i.aee = call double @llvm.fmuladd.f64(double %i.aed, double %i.uc, double %i.ady)
  store double %i.aee, ptr %gep974, align 8, !tbaa !44
  %i.aef = load double, ptr %gep976, align 8, !tbaa !44
  %i.aeg = call double @llvm.fmuladd.f64(double %i.aed, double %i.ud, double %i.aef)
  store double %i.aeg, ptr %gep976, align 8, !tbaa !44
  %i.aeh = load double, ptr %gep978, align 8, !tbaa !44
  %i.aei = call double @llvm.fmuladd.f64(double %i.aed, double %i.wu, double %i.aeh)
  store double %i.aei, ptr %gep978, align 8, !tbaa !44
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, 1 ; 3 uses
  %gep974.1 = getelementptr [8 x i8], ptr %invariant.gep973, i64 %indvars.iv.next918 ; 2 uses
  %i.aej = load double, ptr %gep974.1, align 8, !tbaa !44 ; 2 uses
  %gep976.1 = getelementptr [8 x i8], ptr %invariant.gep975, i64 %indvars.iv.next918 ; 3 uses
  %i.aek = load double, ptr %gep976.1, align 8, !tbaa !44
  %i.ael = call double @llvm.fmuladd.f64(double %i.ub, double %i.aek, double %i.aej)
  %gep978.1 = getelementptr [8 x i8], ptr %invariant.gep977, i64 %indvars.iv.next918 ; 3 uses
  %i.aem = load double, ptr %gep978.1, align 8, !tbaa !44
  %i.aen = call double @llvm.fmuladd.f64(double %i.wt, double %i.aem, double %i.ael)
  %i.aeo = fneg double %i.aen                     ; 3 uses
  %i.aep = call double @llvm.fmuladd.f64(double %i.aeo, double %i.uc, double %i.aej)
  store double %i.aep, ptr %gep974.1, align 8, !tbaa !44
  %i.aeq = load double, ptr %gep976.1, align 8, !tbaa !44
  %i.aer = call double @llvm.fmuladd.f64(double %i.aeo, double %i.ud, double %i.aeq)
  store double %i.aer, ptr %gep976.1, align 8, !tbaa !44
  %i.aes = load double, ptr %gep978.1, align 8, !tbaa !44
  %i.aet = call double @llvm.fmuladd.f64(double %i.aeo, double %i.wu, double %i.aes)
  store double %i.aet, ptr %gep978.1, align 8, !tbaa !44
  %indvars.iv.next918.1 = add nsw i64 %indvars.iv917, 2 ; 2 uses
  %lftr.wideiv921.1 = trunc i64 %indvars.iv.next918.1 to i32
  %exitcond922.not.1 = icmp eq i32 %i.acb, %lftr.wideiv921.1
  br i1 %exitcond922.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !27

.preheader:                                       ; preds = %.ph.lver.orig.prol.loopexit, %.ph.lver.orig, %.prol.loopexit, %.ph.new, %.preheader804
  br i1 %.not792826, label %._crit_edge829, label %.lr.ph828

.lr.ph828:                                        ; preds = %.preheader
  %i.aeu = mul nsw i64 %indvars.iv887, %i.cx
  %i.aev = add nsw i64 %indvars.iv887, 1
  %i.aew = mul nsw i64 %i.aev, %i.cx
  %invariant.gep957 = getelementptr [8 x i8], ptr %i.l, i64 %i.aeu ; 6 uses
  %invariant.gep959 = getelementptr [8 x i8], ptr %i.l, i64 %i.aew ; 6 uses
  %brmerge = select i1 %min.iters.check1139, i1 true, i1 %26
  br i1 %brmerge, label %scalar.ph1138.preheader, label %vector.ph1144

vector.ph1144:                                    ; preds = %.lr.ph828
  %broadcast.splatinsert1146 = insertelement <4 x double> poison, double %i.ub, i64 0
  %broadcast.splat1147 = shufflevector <4 x double> %broadcast.splatinsert1146, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1148 = insertelement <4 x double> poison, double %i.uc, i64 0
  %broadcast.splat1149 = shufflevector <4 x double> %broadcast.splatinsert1148, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1150 = insertelement <4 x double> poison, double %i.ud, i64 0
  %broadcast.splat1151 = shufflevector <4 x double> %broadcast.splatinsert1150, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1144
  %index1153 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1160, %vector.body1152 ] ; 2 uses
  %i.aex = add i64 %index1153, %i.qf              ; 2 uses
  %i.aey = getelementptr [8 x i8], ptr %invariant.gep957, i64 %i.aex ; 3 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 32   ; 2 uses
  %wide.load1154 = load <4 x double>, ptr %i.aey, align 8, !tbaa !44, !alias.scope !57, !noalias !58 ; 2 uses
  %wide.load1155 = load <4 x double>, ptr %i.aez, align 8, !tbaa !44, !alias.scope !57, !noalias !58 ; 2 uses
  %i.afa = getelementptr [8 x i8], ptr %invariant.gep959, i64 %i.aex ; 4 uses
  %i.afb = getelementptr i8, ptr %i.afa, i64 32   ; 3 uses
  %wide.load1156 = load <4 x double>, ptr %i.afa, align 8, !tbaa !44, !alias.scope !58
  %wide.load1157 = load <4 x double>, ptr %i.afb, align 8, !tbaa !44, !alias.scope !58
  %i.afc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1147, <4 x double> %wide.load1156, <4 x double> %wide.load1154)
  %i.afd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1147, <4 x double> %wide.load1157, <4 x double> %wide.load1155)
  %i.afe = fneg <4 x double> %i.afc               ; 2 uses
  %i.aff = fneg <4 x double> %i.afd               ; 2 uses
  %i.afg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afe, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1154)
  %i.afh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aff, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1155)
  store <4 x double> %i.afg, ptr %i.aey, align 8, !tbaa !44, !alias.scope !57, !noalias !58
  store <4 x double> %i.afh, ptr %i.aez, align 8, !tbaa !44, !alias.scope !57, !noalias !58
  %wide.load1158 = load <4 x double>, ptr %i.afa, align 8, !tbaa !44, !alias.scope !58
  %wide.load1159 = load <4 x double>, ptr %i.afb, align 8, !tbaa !44, !alias.scope !58
  %i.afi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afe, <4 x double> %broadcast.splat1151, <4 x double> %wide.load1158)
  %i.afj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aff, <4 x double> %broadcast.splat1151, <4 x double> %wide.load1159)
  store <4 x double> %i.afi, ptr %i.afa, align 8, !tbaa !44, !alias.scope !58
  store <4 x double> %i.afj, ptr %i.afb, align 8, !tbaa !44, !alias.scope !58
  %index.next1160 = add nuw i64 %index1153, 8     ; 2 uses
  %i.afk = icmp eq i64 %index.next1160, %n.vec1145
  br i1 %i.afk, label %middle.block1161, label %vector.body1152, !llvm.loop !31

middle.block1161:                                 ; preds = %vector.body1152
  br i1 %cmp.n1162, label %._crit_edge829, label %scalar.ph1138.preheader

scalar.ph1138.preheader:                          ; preds = %.lr.ph828, %middle.block1161
  %indvars.iv895.ph = phi i64 [ %i.ru, %middle.block1161 ], [ %i.qf, %.lr.ph828 ] ; 3 uses
  %i.afl = trunc i64 %indvars.iv895.ph to i32     ; 2 uses
  %i.afm = sub i32 %i.fp, %i.afl
  %i.afn = sub i32 %.0765863, %i.afl
  %xtraiter1191 = and i32 %i.afm, 3               ; 2 uses
  %lcmp.mod1192.not = icmp eq i32 %xtraiter1191, 0
  br i1 %lcmp.mod1192.not, label %scalar.ph1138.prol.loopexit, label %scalar.ph1138.prol

scalar.ph1138.prol:                               ; preds = %scalar.ph1138.preheader, %scalar.ph1138.prol
  %indvars.iv895.prol = phi i64 [ %indvars.iv.next896.prol, %scalar.ph1138.prol ], [ %indvars.iv895.ph, %scalar.ph1138.preheader ] ; 3 uses
  %prol.iter1193 = phi i32 [ %prol.iter1193.next, %scalar.ph1138.prol ], [ 0, %scalar.ph1138.preheader ]
  %gep958.prol = getelementptr [8 x i8], ptr %invariant.gep957, i64 %indvars.iv895.prol ; 2 uses
  %i.afo = load double, ptr %gep958.prol, align 8, !tbaa !44 ; 2 uses
  %gep960.prol = getelementptr [8 x i8], ptr %invariant.gep959, i64 %indvars.iv895.prol ; 3 uses
  %i.afp = load double, ptr %gep960.prol, align 8, !tbaa !44
  %i.afq = call double @llvm.fmuladd.f64(double %i.ub, double %i.afp, double %i.afo)
  %i.afr = fneg double %i.afq                     ; 2 uses
  %i.afs = call double @llvm.fmuladd.f64(double %i.afr, double %i.uc, double %i.afo)
  store double %i.afs, ptr %gep958.prol, align 8, !tbaa !44
  %i.aft = load double, ptr %gep960.prol, align 8, !tbaa !44
  %i.afu = call double @llvm.fmuladd.f64(double %i.afr, double %i.ud, double %i.aft)
  store double %i.afu, ptr %gep960.prol, align 8, !tbaa !44
  %indvars.iv.next896.prol = add nsw i64 %indvars.iv895.prol, 1 ; 2 uses
  %prol.iter1193.next = add i32 %prol.iter1193, 1 ; 2 uses
  %prol.iter1193.cmp.not = icmp eq i32 %prol.iter1193.next, %xtraiter1191
  br i1 %prol.iter1193.cmp.not, label %scalar.ph1138.prol.loopexit, label %scalar.ph1138.prol, !llvm.loop !32

scalar.ph1138.prol.loopexit:                      ; preds = %scalar.ph1138.prol, %scalar.ph1138.preheader
  %indvars.iv895.unr = phi i64 [ %indvars.iv895.ph, %scalar.ph1138.preheader ], [ %indvars.iv.next896.prol, %scalar.ph1138.prol ]
  %i.afv = icmp ult i32 %i.afn, 3
  br i1 %i.afv, label %._crit_edge829, label %scalar.ph1138

.ph.new:                                          ; preds = %.prol.loopexit, %.ph.new
  %store_forwarded = phi double [ %i.agx, %.ph.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv889 = phi i64 [ %indvars.iv.next890.3, %.ph.new ], [ %indvars.iv889.unr, %.prol.loopexit ] ; 5 uses
  %i.afw = mul nuw nsw i64 %indvars.iv889, %i.cx  ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.afw
  %i.afx = getelementptr [8 x i8], ptr %i.ug, i64 %i.afw ; 2 uses
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !44 ; 2 uses
  %i.afz = call double @llvm.fmuladd.f64(double %i.ub, double %i.afy, double %store_forwarded)
  %i.aga = fneg double %i.afz                     ; 2 uses
  %i.agb = call double @llvm.fmuladd.f64(double %i.aga, double %i.uc, double %store_forwarded)
  store double %i.agb, ptr %gep, align 8, !tbaa !44
  %i.agc = call double @llvm.fmuladd.f64(double %i.aga, double %i.ud, double %i.afy) ; 3 uses
  store double %i.agc, ptr %i.afx, align 8, !tbaa !44
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, 1
  %i.agd = mul nuw nsw i64 %indvars.iv.next890, %i.cx ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.agd
  %i.age = getelementptr [8 x i8], ptr %i.ug, i64 %i.agd ; 2 uses
  %i.agf = load double, ptr %i.age, align 8, !tbaa !44 ; 2 uses
  %i.agg = call double @llvm.fmuladd.f64(double %i.ub, double %i.agf, double %i.agc)
  %i.agh = fneg double %i.agg                     ; 2 uses
  %i.agi = call double @llvm.fmuladd.f64(double %i.agh, double %i.uc, double %i.agc)
  store double %i.agi, ptr %gep.1, align 8, !tbaa !44
  %i.agj = call double @llvm.fmuladd.f64(double %i.agh, double %i.ud, double %i.agf) ; 3 uses
  store double %i.agj, ptr %i.age, align 8, !tbaa !44
  %indvars.iv.next890.1 = add nsw i64 %indvars.iv889, 2
  %i.agk = mul nuw nsw i64 %indvars.iv.next890.1, %i.cx ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.agk
  %i.agl = getelementptr [8 x i8], ptr %i.ug, i64 %i.agk ; 2 uses
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !44 ; 2 uses
  %i.agn = call double @llvm.fmuladd.f64(double %i.ub, double %i.agm, double %i.agj)
  %i.ago = fneg double %i.agn                     ; 2 uses
  %i.agp = call double @llvm.fmuladd.f64(double %i.ago, double %i.uc, double %i.agj)
  store double %i.agp, ptr %gep.2, align 8, !tbaa !44
  %i.agq = call double @llvm.fmuladd.f64(double %i.ago, double %i.ud, double %i.agm) ; 3 uses
  store double %i.agq, ptr %i.agl, align 8, !tbaa !44
  %indvars.iv.next890.2 = add nsw i64 %indvars.iv889, 3
  %i.agr = mul nuw nsw i64 %indvars.iv.next890.2, %i.cx ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.agr
  %i.ags = getelementptr [8 x i8], ptr %i.ug, i64 %i.agr ; 2 uses
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !44 ; 2 uses
  %i.agu = call double @llvm.fmuladd.f64(double %i.ub, double %i.agt, double %i.agq)
  %i.agv = fneg double %i.agu                     ; 2 uses
  %i.agw = call double @llvm.fmuladd.f64(double %i.agv, double %i.uc, double %i.agq)
  store double %i.agw, ptr %gep.3, align 8, !tbaa !44
  %i.agx = call double @llvm.fmuladd.f64(double %i.agv, double %i.ud, double %i.agt) ; 2 uses
  store double %i.agx, ptr %i.ags, align 8, !tbaa !44
  %indvars.iv.next890.3 = add nsw i64 %indvars.iv889, 4 ; 2 uses
  %lftr.wideiv893.3 = trunc i64 %indvars.iv.next890.3 to i32
  %exitcond894.not.3 = icmp eq i32 %i.qe, %lftr.wideiv893.3
  br i1 %exitcond894.not.3, label %.preheader, label %.ph.new, !llvm.loop !13

scalar.ph1138:                                    ; preds = %scalar.ph1138.prol.loopexit, %scalar.ph1138
  %indvars.iv895 = phi i64 [ %indvars.iv.next896.3, %scalar.ph1138 ], [ %indvars.iv895.unr, %scalar.ph1138.prol.loopexit ] ; 6 uses
  %gep958 = getelementptr [8 x i8], ptr %invariant.gep957, i64 %indvars.iv895 ; 2 uses
  %i.agy = load double, ptr %gep958, align 8, !tbaa !44 ; 2 uses
  %gep960 = getelementptr [8 x i8], ptr %invariant.gep959, i64 %indvars.iv895 ; 3 uses
  %i.agz = load double, ptr %gep960, align 8, !tbaa !44
  %i.aha = call double @llvm.fmuladd.f64(double %i.ub, double %i.agz, double %i.agy)
  %i.ahb = fneg double %i.aha                     ; 2 uses
  %i.ahc = call double @llvm.fmuladd.f64(double %i.ahb, double %i.uc, double %i.agy)
  store double %i.ahc, ptr %gep958, align 8, !tbaa !44
  %i.ahd = load double, ptr %gep960, align 8, !tbaa !44
  %i.ahe = call double @llvm.fmuladd.f64(double %i.ahb, double %i.ud, double %i.ahd)
  store double %i.ahe, ptr %gep960, align 8, !tbaa !44
  %indvars.iv.next896 = add nsw i64 %indvars.iv895, 1 ; 2 uses
  %gep958.1 = getelementptr [8 x i8], ptr %invariant.gep957, i64 %indvars.iv.next896 ; 2 uses
  %i.ahf = load double, ptr %gep958.1, align 8, !tbaa !44 ; 2 uses
  %gep960.1 = getelementptr [8 x i8], ptr %invariant.gep959, i64 %indvars.iv.next896 ; 3 uses
  %i.ahg = load double, ptr %gep960.1, align 8, !tbaa !44
  %i.ahh = call double @llvm.fmuladd.f64(double %i.ub, double %i.ahg, double %i.ahf)
  %i.ahi = fneg double %i.ahh                     ; 2 uses
  %i.ahj = call double @llvm.fmuladd.f64(double %i.ahi, double %i.uc, double %i.ahf)
  store double %i.ahj, ptr %gep958.1, align 8, !tbaa !44
  %i.ahk = load double, ptr %gep960.1, align 8, !tbaa !44
  %i.ahl = call double @llvm.fmuladd.f64(double %i.ahi, double %i.ud, double %i.ahk)
  store double %i.ahl, ptr %gep960.1, align 8, !tbaa !44
  %indvars.iv.next896.1 = add nsw i64 %indvars.iv895, 2 ; 2 uses
  %gep958.2 = getelementptr [8 x i8], ptr %invariant.gep957, i64 %indvars.iv.next896.1 ; 2 uses
  %i.ahm = load double, ptr %gep958.2, align 8, !tbaa !44 ; 2 uses
  %gep960.2 = getelementptr [8 x i8], ptr %invariant.gep959, i64 %indvars.iv.next896.1 ; 3 uses
  %i.ahn = load double, ptr %gep960.2, align 8, !tbaa !44
  %i.aho = call double @llvm.fmuladd.f64(double %i.ub, double %i.ahn, double %i.ahm)
  %i.ahp = fneg double %i.aho                     ; 2 uses
  %i.ahq = call double @llvm.fmuladd.f64(double %i.ahp, double %i.uc, double %i.ahm)
  store double %i.ahq, ptr %gep958.2, align 8, !tbaa !44
  %i.ahr = load double, ptr %gep960.2, align 8, !tbaa !44
  %i.ahs = call double @llvm.fmuladd.f64(double %i.ahp, double %i.ud, double %i.ahr)
  store double %i.ahs, ptr %gep960.2, align 8, !tbaa !44
  %indvars.iv.next896.2 = add nsw i64 %indvars.iv895, 3 ; 2 uses
  %gep958.3 = getelementptr [8 x i8], ptr %invariant.gep957, i64 %indvars.iv.next896.2 ; 2 uses
  %i.aht = load double, ptr %gep958.3, align 8, !tbaa !44 ; 2 uses
  %gep960.3 = getelementptr [8 x i8], ptr %invariant.gep959, i64 %indvars.iv.next896.2 ; 3 uses
  %i.ahu = load double, ptr %gep960.3, align 8, !tbaa !44
  %i.ahv = call double @llvm.fmuladd.f64(double %i.ub, double %i.ahu, double %i.aht)
  %i.ahw = fneg double %i.ahv                     ; 2 uses
  %i.ahx = call double @llvm.fmuladd.f64(double %i.ahw, double %i.uc, double %i.aht)
  store double %i.ahx, ptr %gep958.3, align 8, !tbaa !44
  %i.ahy = load double, ptr %gep960.3, align 8, !tbaa !44
  %i.ahz = call double @llvm.fmuladd.f64(double %i.ahw, double %i.ud, double %i.ahy)
  store double %i.ahz, ptr %gep960.3, align 8, !tbaa !44
  %indvars.iv.next896.3 = add nsw i64 %indvars.iv895, 4 ; 2 uses
  %lftr.wideiv899.3 = trunc i64 %indvars.iv.next896.3 to i32
  %exitcond900.not.3 = icmp eq i32 %i.fn, %lftr.wideiv899.3
  br i1 %exitcond900.not.3, label %._crit_edge829, label %scalar.ph1138, !llvm.loop !33

._crit_edge829:                                   ; preds = %scalar.ph1138.prol.loopexit, %scalar.ph1138, %middle.block1161, %.preheader
  %i.aia = load i32, ptr %1, align 4, !tbaa !42
  %.not793 = icmp eq i32 %i.aia, 0
  br i1 %.not793, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %._crit_edge829
  %i.aib = load i32, ptr %10, align 4, !tbaa !42  ; 5 uses
  %i.aic = load i32, ptr %9, align 4, !tbaa !42   ; 3 uses
  %.not794830 = icmp sgt i32 %i.aic, %i.aib
  br i1 %.not794830, label %.loopexit, label %.lr.ph833

.lr.ph833:                                        ; preds = %bb.al
  %i.aid = mul nsw i64 %indvars.iv887, %i.cy
  %i.aie = add nsw i64 %indvars.iv887, 1
  %i.aif = mul nsw i64 %i.aie, %i.cy
  %i.aig = sext i32 %i.aic to i64                 ; 5 uses
  %i.aih = add i32 %i.aib, 1
  %invariant.gep961 = getelementptr [8 x i8], ptr %i.q, i64 %i.aid ; 6 uses
  %invariant.gep963 = getelementptr [8 x i8], ptr %i.q, i64 %i.aif ; 6 uses
end_hunk_2
