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
  %i.j = load i32, ptr %6, align 4, !tbaa !8      ; 21 uses
  %narrow = xor i32 %i.j, -1
  %i.k = sext i32 %narrow to i64                  ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.k ; 52 uses
  %i.m = getelementptr inbounds i8, ptr %7, i64 -8 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %8, i64 -8 ; 3 uses
  %i.o = load i32, ptr %12, align 4, !tbaa !8     ; 4 uses
  %narrow780 = xor i32 %i.o, -1
  %i.p = sext i32 %narrow780 to i64               ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %11, i64 %i.p ; 7 uses
  store i32 0, ptr %13, align 4, !tbaa !8
  %i.r = load i32, ptr %2, align 4, !tbaa !8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit806, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %3, align 4, !tbaa !8      ; 9 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !8      ; 7 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.j, 1
  %i.x = mul i32 %i.t, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9
  %i.ab = sext i32 %i.t to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ab
  store double %i.aa, ptr %i.ac, align 8, !tbaa !9
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ab
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !9
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
  store <2 x double> zeroinitializer, ptr %i.ao, align 8, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !11

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
  store <2 x double> zeroinitializer, ptr %i.at, align 8, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.au = mul nsw i64 %indvars.iv.next, %i.ag
  %i.av = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.au
  store <2 x double> zeroinitializer, ptr %i.ax, align 8, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = mul nsw i64 %indvars.iv.next.1, %i.ag
  %i.az = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ay
  store <2 x double> zeroinitializer, ptr %i.bb, align 8, !tbaa !9
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bc = mul nsw i64 %indvars.iv.next.2, %i.ag
  %i.bd = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bc
  store <2 x double> zeroinitializer, ptr %i.bf, align 8, !tbaa !9
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bg = mul nsw i64 %indvars.iv.next.3, %i.ag
  %i.bh = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.3
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bg
  store <2 x double> zeroinitializer, ptr %i.bj, align 8, !tbaa !9
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5 ; 2 uses
  %i.bk = mul nsw i64 %indvars.iv.next.4, %i.ag
  %i.bl = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.4
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.bk
  store <2 x double> zeroinitializer, ptr %i.bn, align 8, !tbaa !9
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bo = mul nsw i64 %indvars.iv.next.5, %i.ag
  %i.bp = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.5
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bo
  store <2 x double> zeroinitializer, ptr %i.br, align 8, !tbaa !9
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv.next.6, %i.ag
  %i.bt = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.6
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bs
  store <2 x double> zeroinitializer, ptr %i.bv, align 8, !tbaa !9
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.ah, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre927, %.._crit_edge_crit_edge ], [ %i.ah, %.lr.ph ], [ %i.ah, %.lr.ph.prol.loopexit ] ; 2 uses
  %.not781 = icmp sgt i32 %i.t, %.pre-phi
  br i1 %.not781, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bw = mul nsw i32 %.pre-phi, %i.j
  %i.bx = add nsw i32 %i.bw, %i.u
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.by
  store double 0.000000e+00, ptr %i.bz, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ca = sub nsw i32 %i.u, %i.t
  %i.cb = add nsw i32 %i.ca, 1                    ; 2 uses
  %i.cc = load i32, ptr %10, align 4, !tbaa !8
  %i.cd = load i32, ptr %9, align 4, !tbaa !8
  %i.ce = add i32 %i.cc, 1
  %i.cf = sub i32 %i.ce, %i.cd
  store i32 %i.cf, ptr %i.g, align 4, !tbaa !8
  %i.cg = tail call double @dlamch_(ptr noundef nonnull @.str) #5 ; 2 uses
  store double %i.cg, ptr %i.h, align 8, !tbaa !9
  %i.ch = fdiv double 1.000000e+00, %i.cg
  store double %i.ch, ptr %i.i, align 8, !tbaa !9
  call void @dlabad_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #5
  %i.ci = call double @dlamch_(ptr noundef nonnull @.str.1) #5 ; 4 uses
  %i.cj = load double, ptr %i.h, align 8, !tbaa !9
  %i.ck = sitofp i32 %i.cb to double
  %i.cl = fdiv double %i.ck, %i.ci
  %i.cm = fmul double %i.cj, %i.cl                ; 3 uses
  %i.cn = load i32, ptr %0, align 4, !tbaa !8
  %.not782 = icmp eq i32 %i.cn, 0
  br i1 %.not782, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0751 = phi i32 [ %i.co, %bb.g ], [ undef, %bb.f ]
  %i.cp = call i32 @llvm.smax.i32(i32 %i.cb, i32 10)
  %i.cq = mul nuw nsw i32 %i.cp, 30               ; 2 uses
  %i.cr = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.cs = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.loopexit806, label %.lr.ph867

.lr.ph867:                                        ; preds = %bb.h
  %i.cu = add i32 %i.j, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cx = sext i32 %i.j to i64                    ; 37 uses
  %i.cy = sext i32 %i.o to i64                    ; 12 uses
  %indvars.iv.next881949 = add nsw i64 %i.cx, 1
  %i.cz = shl nsw i64 %i.p, 3                     ; 3 uses
  %i.da = shl nsw i64 %i.cy, 3
  %i.db = shl nsw i64 %i.cy, 3
  %i.dc = shl nsw i64 %i.cy, 3
  %i.dd = shl nsw i64 %i.cy, 3
  %i.de = shl nsw i64 %i.k, 3                     ; 5 uses
  %i.df = shl nsw i64 %i.cx, 3
  %i.dg = shl nsw i64 %i.cx, 3
  %i.dh = shl nsw i64 %i.cx, 3
  %i.di = shl nsw i64 %i.cx, 3
  %i.dj = shl nsw i64 %i.p, 3                     ; 2 uses
  %i.dk = shl nsw i64 %i.cy, 3
  %i.dl = shl nsw i64 %i.cy, 3
  %i.dm = shl nsw i64 %i.cy, 3
  %i.dn = shl nsw i64 %i.k, 3                     ; 3 uses
  %scevgep1100 = getelementptr i8, ptr %5, i64 %i.dn
  %i.do = shl nsw i64 %i.cx, 3
  %i.dp = add nsw i64 %i.dn, 8                    ; 2 uses
  %scevgep1102 = getelementptr i8, ptr %5, i64 %i.dp
  %scevgep1104 = getelementptr i8, ptr %5, i64 %i.dn
  %i.dq = shl nsw i64 %i.cx, 3
  %scevgep1106 = getelementptr i8, ptr %5, i64 %i.dp
  %i.dr = getelementptr i8, ptr %11, i64 %i.dj
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = getelementptr i8, ptr %11, i64 %i.dj
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %i.dv = getelementptr i8, ptr %5, i64 %i.de
  %i.dw = getelementptr i8, ptr %5, i64 %i.de
  %i.dx = getelementptr i8, ptr %5, i64 %i.de
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = getelementptr i8, ptr %5, i64 %i.de
  %i.ea = getelementptr i8, ptr %5, i64 %i.de
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = getelementptr i8, ptr %11, i64 %i.cz
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = getelementptr i8, ptr %11, i64 %i.cz
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = getelementptr i8, ptr %11, i64 %i.cz
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %ident.check.not = icmp eq i32 %i.j, 1
  %stride.check = icmp slt i32 %i.j, 0
  %ident.check1136.not = icmp eq i32 %i.j, 1
  br label %.preheader805.lr.ph

.preheader805.lr.ph:                              ; preds = %bb.au, %.lr.ph867
  %i.ei = phi i32 [ %i.cs, %.lr.ph867 ], [ %i.aku, %bb.au ]
  %.1752865 = phi i32 [ %.0751, %.lr.ph867 ], [ %.2857, %bb.au ]
  %.1754864 = phi i32 [ 1, %.lr.ph867 ], [ %.2755856, %bb.au ]
  %.0765863 = phi i32 [ %i.cr, %.lr.ph867 ], [ %i.akt, %bb.au ] ; 29 uses
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !8
  %i.ej = add nsw i32 %.0765863, -1               ; 8 uses
  %i.ek = mul nsw i32 %i.ej, %i.j                 ; 3 uses
  %i.el = add nsw i32 %i.ek, %.0765863
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.em ; 3 uses
  %i.eo = add i32 %.0765863, -2                   ; 5 uses
  %i.ep = mul nsw i32 %i.eo, %i.j
  %i.eq = add nsw i32 %i.ep, %i.ej
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.er
  %i.et = mul i32 %.0765863, %i.cu
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.eu ; 2 uses
  %i.ew = add nsw i32 %i.ek, %i.ej
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ex ; 2 uses
  %i.ez = mul nsw i32 %.0765863, %i.j             ; 3 uses
  %i.fa = add nsw i32 %i.ej, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fb ; 2 uses
  %i.fd = add nsw i32 %i.ez, %.0765863
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fe ; 2 uses
  %i.fg = sext i32 %.0765863 to i64               ; 4 uses
  %i.fh = sext i32 %i.eo to i64
  %i.fi = add i32 %.0765863, 1                    ; 2 uses
  %i.fj = sext i32 %i.ej to i64                   ; 3 uses
  %i.fk = add i32 %.0765863, 1
  br label %.preheader805

.preheader805:                                    ; preds = %.preheader805.lr.ph, %._crit_edge853
  %i.fl = phi i32 [ %i.cq, %.preheader805.lr.ph ], [ %i.ajj, %._crit_edge853 ]
  %.0746858 = phi i32 [ 0, %.preheader805.lr.ph ], [ %i.ajk, %._crit_edge853 ] ; 3 uses
  %.2857 = phi i32 [ %.1752865, %.preheader805.lr.ph ], [ %spec.select802, %._crit_edge853 ] ; 4 uses
  %.2755856 = phi i32 [ %.1754864, %.preheader805.lr.ph ], [ %spec.select, %._crit_edge853 ] ; 5 uses
  %.0758855 = phi i32 [ %i.ei, %.preheader805.lr.ph ], [ %.0759.lcssa, %._crit_edge853 ] ; 3 uses
  %.not784.not815 = icmp sgt i32 %.0765863, %.0758855
  br i1 %.not784.not815, label %.lr.ph817.preheader, label %._crit_edge818

.lr.ph817.preheader:                              ; preds = %.preheader805
  %i.fm = sext i32 %.0758855 to i64
  br label %.lr.ph817

.lr.ph817:                                        ; preds = %.lr.ph817.preheader, %bb.p
  %indvars.iv880 = phi i64 [ %i.fg, %.lr.ph817.preheader ], [ %indvars.iv.next881, %bb.p ] ; 8 uses
  %indvars882 = trunc nsw i64 %indvars.iv880 to i32 ; 3 uses
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -1 ; 6 uses
  %indvars = trunc i64 %indvars.iv.next881 to i32
  %i.fn = mul nsw i32 %i.j, %indvars
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9 ; 4 uses
  %i.fs = call double @llvm.fabs.f64(double %i.fr)
  %i.ft = fcmp ugt double %i.fs, %i.cm
  br i1 %i.ft, label %bb.i, label %._crit_edge818

bb.i:                                             ; preds = %.lr.ph817
  %i.fu = mul i64 %indvars.iv.next881, %indvars.iv.next881949
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !9 ; 4 uses
  %i.fx = fcmp oge double %i.fw, 0.000000e+00
  %i.fy = fneg double %i.fw
  %i.fz = select i1 %i.fx, double %i.fw, double %i.fy
  %i.ga = mul nsw i64 %indvars.iv880, %i.cx       ; 2 uses
  %i.gb = mul nsw i32 %i.j, %indvars882
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %i.gc
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !9 ; 4 uses
  %i.gg = fcmp oge double %i.gf, 0.000000e+00
  %i.gh = fneg double %i.gf
  %i.gi = select i1 %i.gg, double %i.gf, double %i.gh ; 2 uses
  %i.gj = fadd double %i.fz, %i.gi                ; 4 uses
  %i.gk = fcmp oeq double %i.gj, 0.000000e+00
  br i1 %i.gk, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gl = add nsw i64 %indvars.iv880, -2          ; 2 uses
  %i.gm = load i32, ptr %3, align 4, !tbaa !8
  %i.gn = sext i32 %i.gm to i64
  %.not785 = icmp slt i64 %i.gl, %i.gn
  br i1 %.not785, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.go = mul nsw i64 %i.gl, %i.cx
  %i.gp = getelementptr [8 x i8], ptr %i.l, i64 %i.go
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %indvars.iv.next881
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !9 ; 3 uses
  %i.gs = fcmp oge double %i.gr, 0.000000e+00
  %i.gt = fneg double %i.gr
  %i.gu = select i1 %i.gs, double %i.gr, double %i.gt
  %i.gv = fadd double %i.gj, %i.gu
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0744 = phi double [ %i.gv, %bb.k ], [ %i.gj, %bb.j ] ; 2 uses
  %i.gw = load i32, ptr %4, align 4, !tbaa !8
  %i.gx = sext i32 %i.gw to i64
  %.not786.not = icmp slt i64 %indvars.iv880, %i.gx
  br i1 %.not786.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gy = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %i.ga
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !9 ; 3 uses
  %i.hc = fcmp oge double %i.hb, 0.000000e+00
  %i.hd = fneg double %i.hb
  %i.he = select i1 %i.hc, double %i.hb, double %i.hd
  %i.hf = fadd double %.0744, %i.he
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  %.1745 = phi double [ %i.hf, %bb.m ], [ %.0744, %bb.l ], [ %i.gj, %bb.i ]
  %i.hg = fcmp oge double %i.fr, 0.000000e+00
  %i.hh = fneg double %i.fr
  %i.hi = select i1 %i.hg, double %i.fr, double %i.hh ; 2 uses
  %i.hj = fmul double %i.ci, %.1745
  %i.hk = fcmp ugt double %i.hi, %i.hj
  br i1 %i.hk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hl = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next881
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %i.ga
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !9
  %i.ho = fsub double %i.fw, %i.gf
  %i.hp = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hn, i64 1 ; 3 uses
  %i.hr = fcmp oge <2 x double> %i.hq, zeroinitializer
  %i.hs = fneg <2 x double> %i.hq
  %i.ht = select <2 x i1> %i.hr, <2 x double> %i.hq, <2 x double> %i.hs ; 4 uses
  %i.hu = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hi, i64 1 ; 4 uses
  %i.hw = fcmp oge <2 x double> %i.hv, %i.ht
  %i.hx = select <2 x i1> %i.hw, <2 x double> %i.hv, <2 x double> %i.ht ; 3 uses
  %i.hy = fcmp ole <2 x double> %i.hv, %i.ht
  %i.hz = select <2 x i1> %i.hy, <2 x double> %i.hv, <2 x double> %i.ht
  %i.ia = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = fadd <2 x double> %i.ia, %i.ib
  %i.id = fdiv <2 x double> %i.hx, %i.ic
  %i.ie = fmul <2 x double> %i.hz, %i.id          ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  %i.ig = fmul double %i.ci, %i.if                ; 2 uses
  %i.ih = fcmp oge double %i.cm, %i.ig
  %i.ii = select i1 %i.ih, double %i.cm, double %i.ig
  %i.ij = extractelement <2 x double> %i.ie, i64 1
  %i.ik = fcmp ugt double %i.ij, %i.ii
  br i1 %i.ik, label %bb.p, label %._crit_edge818

bb.p:                                             ; preds = %bb.n, %bb.o
  %.not784.not = icmp sgt i64 %indvars.iv.next881, %i.fm
  br i1 %.not784.not, label %.lr.ph817, label %._crit_edge818, !llvm.loop !15

._crit_edge818:                                   ; preds = %.lr.ph817, %bb.o, %bb.p, %.preheader805
  %.0759.lcssa = phi i32 [ %.0765863, %.preheader805 ], [ %.0758855, %bb.p ], [ %indvars882, %bb.o ], [ %indvars882, %.lr.ph817 ] ; 17 uses
  %i.il = load i32, ptr %3, align 4, !tbaa !8
  %i.im = icmp sgt i32 %.0759.lcssa, %i.il
  br i1 %i.im, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge818
  %i.in = add nsw i32 %.0759.lcssa, -1
  %i.io = mul nsw i32 %i.in, %i.j
  %i.ip = add nsw i32 %i.io, %.0759.lcssa
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iq
  store double 0.000000e+00, ptr %i.ir, align 8, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge818
  %.not787 = icmp slt i32 %.0759.lcssa, %i.ej
  br i1 %.not787, label %bb.s, label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.is = load i32, ptr %0, align 4, !tbaa !8
  %.not788 = icmp eq i32 %i.is, 0                 ; 2 uses
  %spec.select = select i1 %.not788, i32 %.0759.lcssa, i32 %.2755856 ; 7 uses
  %spec.select802 = select i1 %.not788, i32 %.0765863, i32 %.2857 ; 5 uses
  switch i32 %.0746858, label %bb.v [
    i32 10, label %bb.t
    i32 20, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.it = add nsw i32 %.0759.lcssa, 1             ; 2 uses
  %i.iu = mul nsw i32 %.0759.lcssa, %i.j          ; 2 uses
  %i.iv = add nsw i32 %i.it, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9 ; 3 uses
  %i.iz = fcmp oge double %i.iy, 0.000000e+00
  %i.ja = fneg double %i.iy
  %i.jb = select i1 %i.iz, double %i.iy, double %i.ja
  %i.jc = add nsw i32 %.0759.lcssa, 2
  %i.jd = mul nsw i32 %i.it, %i.j
  %i.je = add nsw i32 %i.jc, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !9 ; 3 uses
  %i.ji = fcmp oge double %i.jh, 0.000000e+00
  %i.jj = fneg double %i.jh
  %i.jk = select i1 %i.ji, double %i.jh, double %i.jj
  %i.jl = fadd double %i.jb, %i.jk                ; 3 uses
  %i.jm = add nsw i32 %i.iu, %.0759.lcssa
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9
  %i.jq = call double @llvm.fmuladd.f64(double %i.jl, double 7.500000e-01, double %i.jp) ; 2 uses
  %i.jr = fmul double %i.jl, -4.375000e-01
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.js = load double, ptr %i.en, align 8, !tbaa !9 ; 3 uses
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.js
  %i.jv = select i1 %i.jt, double %i.js, double %i.ju
  %i.jw = load double, ptr %i.es, align 8, !tbaa !9 ; 3 uses
  %i.jx = fcmp oge double %i.jw, 0.000000e+00
  %i.jy = fneg double %i.jw
  %i.jz = select i1 %i.jx, double %i.jw, double %i.jy
  %i.ka = fadd double %i.jv, %i.jz                ; 3 uses
  %i.kb = load double, ptr %i.ev, align 8, !tbaa !9
  %i.kc = call double @llvm.fmuladd.f64(double %i.ka, double 7.500000e-01, double %i.kb) ; 2 uses
  %i.kd = fmul double %i.ka, -4.375000e-01
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ke = load double, ptr %i.ey, align 8, !tbaa !9
  %i.kf = load double, ptr %i.en, align 8, !tbaa !9
  %i.kg = load double, ptr %i.fc, align 8, !tbaa !9
  %i.kh = load double, ptr %i.ff, align 8, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.0750 = phi double [ %i.jq, %bb.t ], [ %i.kc, %bb.u ], [ %i.ke, %bb.v ] ; 4 uses
  %.0749 = phi double [ %i.jr, %bb.t ], [ %i.kd, %bb.u ], [ %i.kg, %bb.v ] ; 4 uses
  %.0748 = phi double [ %i.jl, %bb.t ], [ %i.ka, %bb.u ], [ %i.kf, %bb.v ] ; 3 uses
  %.0747 = phi double [ %i.jq, %bb.t ], [ %i.kc, %bb.u ], [ %i.kh, %bb.v ] ; 4 uses
  %i.ki = fcmp oge double %.0750, 0.000000e+00
  %i.kj = fneg double %.0750
  %i.kk = select i1 %i.ki, double %.0750, double %i.kj
  %i.kl = fcmp oge double %.0749, 0.000000e+00
  %i.km = fneg double %.0749
  %i.kn = select i1 %i.kl, double %.0749, double %i.km
  %i.ko = fadd double %i.kk, %i.kn
  %i.kp = fcmp oge double %.0748, 0.000000e+00
  %i.kq = fneg double %.0748                      ; 2 uses
  %i.kr = select i1 %i.kp, double %.0748, double %i.kq
  %i.ks = fadd double %i.ko, %i.kr
  %i.kt = fcmp oge double %.0747, 0.000000e+00
  %i.ku = fneg double %.0747
  %i.kv = select i1 %i.kt, double %.0747, double %i.ku
  %i.kw = fadd double %i.ks, %i.kv                ; 7 uses
  %i.kx = fcmp oeq double %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ky = insertelement <2 x double> poison, double %.0750, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %.0747, i64 1
  %i.la = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fdiv <2 x double> %i.kz, %i.lb          ; 2 uses
  %i.ld = fdiv double %.0749, %i.kw
  %i.le = extractelement <2 x double> %i.lc, i64 0 ; 2 uses
  %i.lf = extractelement <2 x double> %i.lc, i64 1 ; 4 uses
  %i.lg = fadd double %i.le, %i.lf
  %i.lh = fmul double %i.lg, 5.000000e-01         ; 5 uses
  %i.li = fsub double %i.le, %i.lh
  %i.lj = fsub double %i.lf, %i.lh
  %i.lk = fdiv double %i.kq, %i.kw
  %i.ll = fmul double %i.ld, %i.lk
  %i.lm = call double @llvm.fmuladd.f64(double %i.li, double %i.lj, double %i.ll) ; 3 uses
  %i.ln = fcmp oge double %i.lm, 0.000000e+00     ; 2 uses
  %i.lo = fneg double %i.lm
  %i.lp = select i1 %i.ln, double %i.lm, double %i.lo
  %i.lq = call double @sqrt(double noundef %i.lp) #5 ; 3 uses
  br i1 %i.ln, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lr = fmul double %i.kw, %i.lh
  %i.ls = fmul double %i.kw, %i.lq                ; 2 uses
  %i.lt = fneg double %i.ls
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.lu = fadd double %i.lh, %i.lq                ; 2 uses
  %i.lv = fsub double %i.lh, %i.lq                ; 2 uses
  %i.lw = fsub double %i.lu, %i.lf
  %i.lx = call double @llvm.fabs.f64(double %i.lw)
  %i.ly = fsub double %i.lv, %i.lf
  %i.lz = call double @llvm.fabs.f64(double %i.ly)
  %i.ma = fcmp ugt double %i.lx, %i.lz
  %. = select i1 %i.ma, double %i.lv, double %i.lu
  %.0 = fmul double %i.kw, %.
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.y, %bb.z
  %.0743 = phi double [ 0.000000e+00, %bb.z ], [ %i.ls, %bb.y ], [ 0.000000e+00, %bb.w ]
  %.0742 = phi double [ 0.000000e+00, %bb.z ], [ %i.lt, %bb.y ], [ 0.000000e+00, %bb.w ] ; 4 uses
  %.1 = phi double [ %.0, %bb.z ], [ %i.lr, %bb.y ], [ 0.000000e+00, %bb.w ] ; 3 uses
  %i.mb = fcmp oge double %.0742, 0.000000e+00
  %i.mc = fneg double %.0742
  %i.md = select i1 %i.mb, double %.0742, double %i.mc
  %i.me = fneg double %.0743
  %i.mf = sext i32 %.0759.lcssa to i64            ; 2 uses
  %.not789984 = icmp slt i32 %i.eo, %.0759.lcssa
  br i1 %.not789984, label %._crit_edge989, label %.lr.ph988

bb.ab:                                            ; preds = %bb.ac
  %indvars886 = trunc i64 %indvars.iv.next884 to i32 ; 2 uses
  %.not789.not = icmp sgt i64 %indvars.iv883985, %i.mf
  br i1 %.not789.not, label %.lr.ph988, label %._crit_edge989.loopexit, !llvm.loop !16

.lr.ph988:                                        ; preds = %bb.aa, %bb.ab
  %indvars886986 = phi i32 [ %indvars886, %bb.ab ], [ %i.eo, %bb.aa ] ; 2 uses
  %indvars.iv883985 = phi i64 [ %indvars.iv.next884, %bb.ab ], [ %i.fh, %bb.aa ] ; 9 uses
  %i.mg = add nsw i64 %indvars.iv883985, 1        ; 3 uses
  %i.mh = add nsw i32 %indvars886986, 1
  %i.mi = mul nsw i64 %indvars.iv883985, %i.cx    ; 2 uses
  %i.mj = getelementptr [8 x i8], ptr %i.l, i64 %i.mg
  %i.mk = getelementptr [8 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !9 ; 4 uses
  %i.mm = getelementptr [8 x i8], ptr %i.l, i64 %i.mi
  %i.mn = getelementptr [8 x i8], ptr %i.mm, i64 %indvars.iv883985
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !9 ; 5 uses
  %i.mp = fsub double %i.mo, %.1                  ; 5 uses
  %i.mq = fcmp oge double %i.mp, 0.000000e+00
  %i.mr = fneg double %i.mp
  %i.ms = select i1 %i.mq, double %i.mp, double %i.mr
  %i.mt = fadd double %i.md, %i.ms
  %i.mu = fcmp oge double %i.ml, 0.000000e+00
  %i.mv = fneg double %i.ml
  %i.mw = select i1 %i.mu, double %i.ml, double %i.mv
  %i.mx = fadd double %i.mw, %i.mt                ; 3 uses
  %i.my = fdiv double %i.ml, %i.mx                ; 2 uses
  %i.mz = mul nsw i64 %i.mg, %i.cx                ; 2 uses
  %i.na = mul nsw i32 %i.mh, %i.j
  %i.nb = getelementptr [8 x i8], ptr %i.l, i64 %i.mz
  %i.nc = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv883985
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !9
  %i.ne = fdiv double %i.mp, %i.mx
  %i.nf = fmul double %i.mp, %i.ne
  %i.ng = call double @llvm.fmuladd.f64(double %i.my, double %i.nd, double %i.nf)
  %i.nh = fdiv double %.0742, %i.mx
  %i.ni = call double @llvm.fmuladd.f64(double %i.me, double %i.nh, double %i.ng) ; 4 uses
  %i.nj = sext i32 %i.na to i64
  %i.nk = getelementptr [8 x i8], ptr %i.l, i64 %i.mg
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !9 ; 4 uses
  %i.nn = fadd double %i.mo, %i.nm
  %i.no = fsub double %i.nn, %.1
  %i.np = fsub double %i.no, %.1
  %i.nq = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv883985
  %i.nr = getelementptr i8, ptr %i.nq, i64 16
  %i.ns = getelementptr [8 x i8], ptr %i.nr, i64 %i.mz
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@dlahqr_:bb.a
  %indvars.iv.next896.3 = add nsw i64 %indvars.iv895, 4 ; 2 uses
  %lftr.wideiv899.3 = trunc i64 %indvars.iv.next896.3 to i32
  %exitcond900.not.3 = icmp eq i32 %i.fi, %lftr.wideiv899.3
  br i1 %exitcond900.not.3, label %._crit_edge829, label %scalar.ph1112, !llvm.loop !50

._crit_edge829:                                   ; preds = %scalar.ph1112.prol.loopexit, %scalar.ph1112, %middle.block1131, %.preheader
  %i.agq = load i32, ptr %1, align 4, !tbaa !8
  %.not793 = icmp eq i32 %i.agq, 0
  br i1 %.not793, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %._crit_edge829
  %i.agr = load i32, ptr %10, align 4, !tbaa !8   ; 6 uses
  %i.ags = load i32, ptr %9, align 4, !tbaa !8    ; 4 uses
  %.not794830 = icmp sgt i32 %i.ags, %i.agr
  br i1 %.not794830, label %.loopexit, label %.lr.ph833

.lr.ph833:                                        ; preds = %bb.al
  %i.agt = mul nsw i64 %indvars.iv887, %i.cy
  %i.agu = add nsw i64 %indvars.iv887, 1
  %i.agv = mul nsw i64 %i.agu, %i.cy
  %i.agw = sext i32 %i.ags to i64                 ; 6 uses
  %i.agx = add i32 %i.agr, 1
  %invariant.gep961 = getelementptr [8 x i8], ptr %i.q, i64 %i.agt ; 7 uses
  %invariant.gep963 = getelementptr [8 x i8], ptr %i.q, i64 %i.agv ; 7 uses
  %i.agy = sub i32 %i.agr, %i.ags                 ; 2 uses
  %i.agz = zext i32 %i.agy to i64
  %i.aha = add nuw nsw i64 %i.agz, 1              ; 2 uses
  %min.iters.check1078 = icmp ult i32 %i.agy, 7
  br i1 %min.iters.check1078, label %scalar.ph1077.preheader, label %vector.memcheck1067

vector.memcheck1067:                              ; preds = %.lr.ph833
  %i.ahb = shl nsw i64 %i.agw, 3                  ; 2 uses
  %scevgep1068 = getelementptr i8, ptr %invariant.gep961, i64 %i.ahb
  %i.ahc = sub i32 %i.agr, %i.ags
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = add nsw i64 %i.agw, %i.ahd
  %i.ahf = shl nsw i64 %i.ahe, 3                  ; 2 uses
  %scevgep1070 = getelementptr i8, ptr %scevgep1069, i64 %i.ahf
  %scevgep1071 = getelementptr i8, ptr %invariant.gep963, i64 %i.ahb
  %scevgep1073 = getelementptr i8, ptr %scevgep1072, i64 %i.ahf
  %bound01074 = icmp ult ptr %scevgep1068, %scevgep1073
  %bound11075 = icmp ult ptr %scevgep1071, %scevgep1070
  %found.conflict1076 = and i1 %bound01074, %bound11075
  br i1 %found.conflict1076, label %scalar.ph1077.preheader, label %vector.ph1079

vector.ph1079:                                    ; preds = %vector.memcheck1067
  %n.vec1080 = and i64 %i.aha, 8589934584         ; 3 uses
  %i.ahg = add nsw i64 %n.vec1080, %i.agw
  %broadcast.splatinsert1081 = insertelement <4 x double> poison, double %i.un, i64 0
  %broadcast.splat1082 = shufflevector <4 x double> %broadcast.splatinsert1081, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1083 = insertelement <4 x double> poison, double %i.uo, i64 0
  %broadcast.splat1084 = shufflevector <4 x double> %broadcast.splatinsert1083, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1085 = insertelement <4 x double> poison, double %i.up, i64 0
  %broadcast.splat1086 = shufflevector <4 x double> %broadcast.splatinsert1085, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %vector.ph1079
  %index1088 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1095, %vector.body1087 ] ; 2 uses
  %i.ahh = add i64 %index1088, %i.agw             ; 2 uses
  %i.ahi = getelementptr [8 x i8], ptr %invariant.gep961, i64 %i.ahh ; 3 uses
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 32   ; 2 uses
  %wide.load1089 = load <4 x double>, ptr %i.ahi, align 8, !tbaa !9, !alias.scope !51, !noalias !54 ; 2 uses
  %wide.load1090 = load <4 x double>, ptr %i.ahj, align 8, !tbaa !9, !alias.scope !51, !noalias !54 ; 2 uses
  %i.ahk = getelementptr [8 x i8], ptr %invariant.gep963, i64 %i.ahh ; 4 uses
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 32   ; 3 uses
  %wide.load1091 = load <4 x double>, ptr %i.ahk, align 8, !tbaa !9, !alias.scope !54
  %wide.load1092 = load <4 x double>, ptr %i.ahl, align 8, !tbaa !9, !alias.scope !54
  %i.ahm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1082, <4 x double> %wide.load1091, <4 x double> %wide.load1089)
  %i.ahn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1082, <4 x double> %wide.load1092, <4 x double> %wide.load1090)
  %i.aho = fneg <4 x double> %i.ahm               ; 2 uses
  %i.ahp = fneg <4 x double> %i.ahn               ; 2 uses
  %i.ahq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aho, <4 x double> %broadcast.splat1084, <4 x double> %wide.load1089)
  %i.ahr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ahp, <4 x double> %broadcast.splat1084, <4 x double> %wide.load1090)
  store <4 x double> %i.ahq, ptr %i.ahi, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <4 x double> %i.ahr, ptr %i.ahj, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %wide.load1093 = load <4 x double>, ptr %i.ahk, align 8, !tbaa !9, !alias.scope !54
  %wide.load1094 = load <4 x double>, ptr %i.ahl, align 8, !tbaa !9, !alias.scope !54
  %i.ahs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aho, <4 x double> %broadcast.splat1086, <4 x double> %wide.load1093)
  %i.aht = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ahp, <4 x double> %broadcast.splat1086, <4 x double> %wide.load1094)
  store <4 x double> %i.ahs, ptr %i.ahk, align 8, !tbaa !9, !alias.scope !54
  store <4 x double> %i.aht, ptr %i.ahl, align 8, !tbaa !9, !alias.scope !54
  %index.next1095 = add nuw i64 %index1088, 8     ; 2 uses
  %i.ahu = icmp eq i64 %index.next1095, %n.vec1080
  br i1 %i.ahu, label %middle.block1096, label %vector.body1087, !llvm.loop !56

middle.block1096:                                 ; preds = %vector.body1087
  %cmp.n1097 = icmp eq i64 %i.aha, %n.vec1080
  br i1 %cmp.n1097, label %.loopexit, label %scalar.ph1077.preheader

scalar.ph1077.preheader:                          ; preds = %vector.memcheck1067, %.lr.ph833, %middle.block1096
  %indvars.iv901.ph = phi i64 [ %i.agw, %vector.memcheck1067 ], [ %i.agw, %.lr.ph833 ], [ %i.ahg, %middle.block1096 ] ; 3 uses
  %i.ahv = add i32 %i.agr, 1
  %i.ahw = trunc i64 %indvars.iv901.ph to i32     ; 2 uses
  %i.ahx = sub i32 %i.ahv, %i.ahw
  %i.ahy = sub i32 %i.agr, %i.ahw
  %xtraiter1164 = and i32 %i.ahx, 3               ; 2 uses
  %lcmp.mod1165.not = icmp eq i32 %xtraiter1164, 0
  br i1 %lcmp.mod1165.not, label %scalar.ph1077.prol.loopexit, label %scalar.ph1077.prol

scalar.ph1077.prol:                               ; preds = %scalar.ph1077.preheader, %scalar.ph1077.prol
  %indvars.iv901.prol = phi i64 [ %indvars.iv.next902.prol, %scalar.ph1077.prol ], [ %indvars.iv901.ph, %scalar.ph1077.preheader ] ; 3 uses
  %prol.iter1166 = phi i32 [ %prol.iter1166.next, %scalar.ph1077.prol ], [ 0, %scalar.ph1077.preheader ]
  %gep962.prol = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv901.prol ; 2 uses
  %i.ahz = load double, ptr %gep962.prol, align 8, !tbaa !9 ; 2 uses
  %gep964.prol = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv901.prol ; 3 uses
  %i.aia = load double, ptr %gep964.prol, align 8, !tbaa !9
  %i.aib = call double @llvm.fmuladd.f64(double %i.un, double %i.aia, double %i.ahz)
  %i.aic = fneg double %i.aib                     ; 2 uses
  %i.aid = call double @llvm.fmuladd.f64(double %i.aic, double %i.uo, double %i.ahz)
  store double %i.aid, ptr %gep962.prol, align 8, !tbaa !9
  %i.aie = load double, ptr %gep964.prol, align 8, !tbaa !9
  %i.aif = call double @llvm.fmuladd.f64(double %i.aic, double %i.up, double %i.aie)
  store double %i.aif, ptr %gep964.prol, align 8, !tbaa !9
  %indvars.iv.next902.prol = add nsw i64 %indvars.iv901.prol, 1 ; 2 uses
  %prol.iter1166.next = add i32 %prol.iter1166, 1 ; 2 uses
  %prol.iter1166.cmp.not = icmp eq i32 %prol.iter1166.next, %xtraiter1164
  br i1 %prol.iter1166.cmp.not, label %scalar.ph1077.prol.loopexit, label %scalar.ph1077.prol, !llvm.loop !57

scalar.ph1077.prol.loopexit:                      ; preds = %scalar.ph1077.prol, %scalar.ph1077.preheader
  %indvars.iv901.unr = phi i64 [ %indvars.iv901.ph, %scalar.ph1077.preheader ], [ %indvars.iv.next902.prol, %scalar.ph1077.prol ]
  %i.aig = icmp ult i32 %i.ahy, 3
  br i1 %i.aig, label %.loopexit, label %scalar.ph1077

scalar.ph1077:                                    ; preds = %scalar.ph1077.prol.loopexit, %scalar.ph1077
  %indvars.iv901 = phi i64 [ %indvars.iv.next902.3, %scalar.ph1077 ], [ %indvars.iv901.unr, %scalar.ph1077.prol.loopexit ] ; 6 uses
  %gep962 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv901 ; 2 uses
  %i.aih = load double, ptr %gep962, align 8, !tbaa !9 ; 2 uses
  %gep964 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv901 ; 3 uses
  %i.aii = load double, ptr %gep964, align 8, !tbaa !9
  %i.aij = call double @llvm.fmuladd.f64(double %i.un, double %i.aii, double %i.aih)
  %i.aik = fneg double %i.aij                     ; 2 uses
  %i.ail = call double @llvm.fmuladd.f64(double %i.aik, double %i.uo, double %i.aih)
  store double %i.ail, ptr %gep962, align 8, !tbaa !9
  %i.aim = load double, ptr %gep964, align 8, !tbaa !9
  %i.ain = call double @llvm.fmuladd.f64(double %i.aik, double %i.up, double %i.aim)
  store double %i.ain, ptr %gep964, align 8, !tbaa !9
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, 1 ; 2 uses
  %gep962.1 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next902 ; 2 uses
  %i.aio = load double, ptr %gep962.1, align 8, !tbaa !9 ; 2 uses
  %gep964.1 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv.next902 ; 3 uses
  %i.aip = load double, ptr %gep964.1, align 8, !tbaa !9
  %i.aiq = call double @llvm.fmuladd.f64(double %i.un, double %i.aip, double %i.aio)
  %i.air = fneg double %i.aiq                     ; 2 uses
  %i.ais = call double @llvm.fmuladd.f64(double %i.air, double %i.uo, double %i.aio)
  store double %i.ais, ptr %gep962.1, align 8, !tbaa !9
  %i.ait = load double, ptr %gep964.1, align 8, !tbaa !9
  %i.aiu = call double @llvm.fmuladd.f64(double %i.air, double %i.up, double %i.ait)
  store double %i.aiu, ptr %gep964.1, align 8, !tbaa !9
  %indvars.iv.next902.1 = add nsw i64 %indvars.iv901, 2 ; 2 uses
  %gep962.2 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next902.1 ; 2 uses
  %i.aiv = load double, ptr %gep962.2, align 8, !tbaa !9 ; 2 uses
  %gep964.2 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv.next902.1 ; 3 uses
  %i.aiw = load double, ptr %gep964.2, align 8, !tbaa !9
  %i.aix = call double @llvm.fmuladd.f64(double %i.un, double %i.aiw, double %i.aiv)
  %i.aiy = fneg double %i.aix                     ; 2 uses
  %i.aiz = call double @llvm.fmuladd.f64(double %i.aiy, double %i.uo, double %i.aiv)
  store double %i.aiz, ptr %gep962.2, align 8, !tbaa !9
  %i.aja = load double, ptr %gep964.2, align 8, !tbaa !9
  %i.ajb = call double @llvm.fmuladd.f64(double %i.aiy, double %i.up, double %i.aja)
  store double %i.ajb, ptr %gep964.2, align 8, !tbaa !9
  %indvars.iv.next902.2 = add nsw i64 %indvars.iv901, 3 ; 2 uses
  %gep962.3 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next902.2 ; 2 uses
  %i.ajc = load double, ptr %gep962.3, align 8, !tbaa !9 ; 2 uses
  %gep964.3 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv.next902.2 ; 3 uses
  %i.ajd = load double, ptr %gep964.3, align 8, !tbaa !9
  %i.aje = call double @llvm.fmuladd.f64(double %i.un, double %i.ajd, double %i.ajc)
  %i.ajf = fneg double %i.aje                     ; 2 uses
  %i.ajg = call double @llvm.fmuladd.f64(double %i.ajf, double %i.uo, double %i.ajc)
  store double %i.ajg, ptr %gep962.3, align 8, !tbaa !9
  %i.ajh = load double, ptr %gep964.3, align 8, !tbaa !9
  %i.aji = call double @llvm.fmuladd.f64(double %i.ajf, double %i.up, double %i.ajh)
  store double %i.aji, ptr %gep964.3, align 8, !tbaa !9
  %indvars.iv.next902.3 = add nsw i64 %indvars.iv901, 4 ; 2 uses
  %lftr.wideiv905.3 = trunc i64 %indvars.iv.next902.3 to i32
  %exitcond906.not.3 = icmp eq i32 %i.agx, %lftr.wideiv905.3
  br i1 %exitcond906.not.3, label %.loopexit, label %scalar.ph1077, !llvm.loop !58

.loopexit:                                        ; preds = %scalar.ph1077.prol.loopexit, %scalar.ph1077, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1096, %middle.block, %bb.al, %bb.ak, %bb.ai, %._crit_edge843, %._crit_edge829
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, 1 ; 2 uses
  %lftr.wideiv925 = trunc i64 %indvars.iv.next888 to i32
  %exitcond926.not = icmp eq i32 %.0765863, %lftr.wideiv925
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond926.not, label %._crit_edge853.loopexit, label %bb.ad, !llvm.loop !59

._crit_edge853.loopexit:                          ; preds = %.loopexit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %._crit_edge853

._crit_edge853:                                   ; preds = %._crit_edge853.loopexit, %._crit_edge989
  %i.ajj = phi i32 [ %.pre, %._crit_edge853.loopexit ], [ %i.fl, %._crit_edge989 ] ; 2 uses
  %i.ajk = add nuw nsw i32 %.0746858, 1
  %.not783.not = icmp slt i32 %.0746858, %i.ajj
  br i1 %.not783.not, label %.preheader805, label %._crit_edge859, !llvm.loop !60

._crit_edge859:                                   ; preds = %._crit_edge853
  store i32 %.0765863, ptr %13, align 4, !tbaa !8
  br label %.loopexit806

bb.am:                                            ; preds = %bb.r
  %i.ajl = icmp eq i32 %.0759.lcssa, %.0765863
  %14 = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fg ; 2 uses
  br i1 %i.ajl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ajm = load double, ptr %i.ev, align 8, !tbaa !9
  %i.ajn = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fg
  store double %i.ajm, ptr %i.ajn, align 8, !tbaa !9
  store double 0.000000e+00, ptr %14, align 8, !tbaa !9
  br label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.ajo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fj
  %i.ajp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fj
  %i.ajq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fg
  call void @dlanv2_(ptr noundef %i.ey, ptr noundef %i.fc, ptr noundef %i.en, ptr noundef %i.ff, ptr noundef nonnull %i.ajo, ptr noundef nonnull %i.ajp, ptr noundef nonnull %i.ajq, ptr noundef nonnull %14, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %i.ajr = load i32, ptr %0, align 4, !tbaa !8
  %.not800 = icmp eq i32 %i.ajr, 0
  br i1 %.not800, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ajs = icmp sgt i32 %.2857, %.0765863
  br i1 %i.ajs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ajt = sub nsw i32 %.2857, %.0765863
  store i32 %i.ajt, ptr %i.a, align 4, !tbaa !8
  %i.aju = mul nsw i32 %i.fi, %i.j                ; 2 uses
  %i.ajv = add nsw i32 %i.aju, %i.ej
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ajw
  %i.ajy = add nsw i32 %i.aju, %.0765863
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ajz
  call void @drot_(ptr noundef nonnull %i.a, ptr noundef %i.ajx, ptr noundef nonnull %6, ptr noundef %i.aka, ptr noundef nonnull %6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.akb = xor i32 %.2755856, -1
  %i.akc = add i32 %.0765863, %i.akb
  store i32 %i.akc, ptr %i.a, align 4, !tbaa !8
  %i.akd = add nsw i32 %.2755856, %i.ek
  %i.ake = sext i32 %i.akd to i64
  %i.akf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ake
  %i.akg = add nsw i32 %.2755856, %i.ez
  %i.akh = sext i32 %i.akg to i64
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.akh
  call void @drot_(ptr noundef nonnull %i.a, ptr noundef %i.akf, ptr noundef nonnull @c__1, ptr noundef %i.aki, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.akj = load i32, ptr %1, align 4, !tbaa !8
  %.not801 = icmp eq i32 %i.akj, 0
  br i1 %.not801, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.akk = load i32, ptr %9, align 4, !tbaa !8    ; 2 uses
  %i.akl = mul nsw i32 %i.ej, %i.o
  %i.akm = add nsw i32 %i.akk, %i.akl
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.akn
  %i.akp = mul nsw i32 %.0765863, %i.o
  %i.akq = add nsw i32 %i.akk, %i.akp
  %i.akr = sext i32 %i.akq to i64
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.akr
  call void @drot_(ptr noundef nonnull %i.g, ptr noundef %i.ako, ptr noundef nonnull @c__1, ptr noundef %i.aks, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.an
  %i.akt = add nsw i32 %.0759.lcssa, -1
  %i.aku = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %.not = icmp sgt i32 %.0759.lcssa, %i.aku
  br i1 %.not, label %.preheader805.lr.ph, label %.loopexit806

.loopexit806:                                     ; preds = %bb.au, %bb.h, %bb.a, %._crit_edge859, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
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

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlanv2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !14}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25, !26}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = !{!25}
!28 = !{!26}
!29 = distinct !{!29, !14, !30, !31}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !14, !30}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = !{!37}
!40 = !{!38}
!41 = distinct !{!41, !14, !30, !31}
!42 = distinct !{!42, !14, !30}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !14, !30, !31}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !14, !30}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !14, !30, !31}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !14, !30}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
end_hunk_1
