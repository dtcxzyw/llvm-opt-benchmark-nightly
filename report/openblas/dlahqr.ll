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
  %scevgep1105 = getelementptr i8, ptr %5, i64 %i.dn
  %i.do = shl nsw i64 %i.cx, 3
  %i.dp = add nsw i64 %i.dn, 8                    ; 2 uses
  %scevgep1107 = getelementptr i8, ptr %5, i64 %i.dp
  %scevgep1109 = getelementptr i8, ptr %5, i64 %i.dn
  %i.dq = shl nsw i64 %i.cx, 3
  %scevgep1111 = getelementptr i8, ptr %5, i64 %i.dp
  %i.dr = getelementptr i8, ptr %11, i64 %i.dj
  %i.ds = getelementptr i8, ptr %11, i64 %i.dj
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = getelementptr i8, ptr %11, i64 %i.dj
  %i.dv = getelementptr i8, ptr %11, i64 %i.dj
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
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
  %ident.check.not = icmp eq i32 %i.j, 1
  %stride.check = icmp slt i32 %i.j, 0
  %ident.check1141.not = icmp eq i32 %i.j, 1
  br label %.preheader805.lr.ph

.preheader805.lr.ph:                              ; preds = %bb.au, %.lr.ph867
  %i.en = phi i32 [ %i.cs, %.lr.ph867 ], [ %i.all, %bb.au ]
  %.1752865 = phi i32 [ %.0751, %.lr.ph867 ], [ %.2857, %bb.au ]
  %.1754864 = phi i32 [ 1, %.lr.ph867 ], [ %.2755856, %bb.au ]
  %.0765863 = phi i32 [ %i.cr, %.lr.ph867 ], [ %i.alk, %bb.au ] ; 29 uses
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !8
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
  %i.fq = phi i32 [ %i.cq, %.preheader805.lr.ph ], [ %i.aka, %._crit_edge853 ]
  %.0746858 = phi i32 [ 0, %.preheader805.lr.ph ], [ %i.akb, %._crit_edge853 ] ; 3 uses
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
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !9 ; 4 uses
  %i.fx = call double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp ugt double %i.fx, %i.cm
  br i1 %i.fy, label %bb.i, label %._crit_edge818

bb.i:                                             ; preds = %.lr.ph817
  %i.fz = mul i64 %indvars.iv.next881, %indvars.iv.next881949
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9 ; 4 uses
  %i.gc = fcmp oge double %i.gb, 0.000000e+00
  %i.gd = fneg double %i.gb
  %i.ge = select i1 %i.gc, double %i.gb, double %i.gd
  %i.gf = mul nsw i64 %indvars.iv880, %i.cx       ; 2 uses
  %i.gg = mul nsw i32 %i.j, %indvars882
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.gj = getelementptr [8 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !9 ; 4 uses
  %i.gl = fcmp oge double %i.gk, 0.000000e+00
  %i.gm = fneg double %i.gk
  %i.gn = select i1 %i.gl, double %i.gk, double %i.gm ; 2 uses
  %i.go = fadd double %i.ge, %i.gn                ; 4 uses
  %i.gp = fcmp oeq double %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gq = add nsw i64 %indvars.iv880, -2          ; 2 uses
  %i.gr = load i32, ptr %3, align 4, !tbaa !8
  %i.gs = sext i32 %i.gr to i64
  %.not785 = icmp slt i64 %i.gq, %i.gs
  br i1 %.not785, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gt = mul nsw i64 %i.gq, %i.cx
  %i.gu = getelementptr [8 x i8], ptr %i.l, i64 %i.gt
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %indvars.iv.next881
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !9 ; 3 uses
  %i.gx = fcmp oge double %i.gw, 0.000000e+00
  %i.gy = fneg double %i.gw
  %i.gz = select i1 %i.gx, double %i.gw, double %i.gy
  %i.ha = fadd double %i.go, %i.gz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0744 = phi double [ %i.ha, %bb.k ], [ %i.go, %bb.j ] ; 2 uses
  %i.hb = load i32, ptr %4, align 4, !tbaa !8
  %i.hc = sext i32 %i.hb to i64
  %.not786.not = icmp slt i64 %indvars.iv880, %i.hc
  br i1 %.not786.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hd = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv880
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = getelementptr [8 x i8], ptr %i.he, i64 %i.gf
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !9 ; 3 uses
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
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !9
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
  br i1 %.not784.not, label %.lr.ph817, label %._crit_edge818, !llvm.loop !15

._crit_edge818:                                   ; preds = %.lr.ph817, %bb.o, %bb.p, %.preheader805
  %.0759.lcssa = phi i32 [ %.0765863, %.preheader805 ], [ %.0758855, %bb.p ], [ %indvars882, %bb.o ], [ %indvars882, %.lr.ph817 ] ; 17 uses
  %i.iq = load i32, ptr %3, align 4, !tbaa !8
  %i.ir = icmp sgt i32 %.0759.lcssa, %i.iq
  br i1 %i.ir, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge818
  %i.is = add nsw i32 %.0759.lcssa, -1
  %i.it = mul nsw i32 %i.is, %i.j
  %i.iu = add nsw i32 %i.it, %.0759.lcssa
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iv
  store double 0.000000e+00, ptr %i.iw, align 8, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge818
  %.not787 = icmp slt i32 %.0759.lcssa, %i.eo
  br i1 %.not787, label %bb.s, label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.ix = load i32, ptr %0, align 4, !tbaa !8
  %.not788 = icmp eq i32 %i.ix, 0                 ; 2 uses
  %spec.select = select i1 %.not788, i32 %.0759.lcssa, i32 %.2755856 ; 7 uses
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
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !9 ; 3 uses
  %i.je = fcmp oge double %i.jd, 0.000000e+00
  %i.jf = fneg double %i.jd
  %i.jg = select i1 %i.je, double %i.jd, double %i.jf
  %i.jh = add nsw i32 %.0759.lcssa, 2
  %i.ji = mul nsw i32 %i.iy, %i.j
  %i.jj = add nsw i32 %i.jh, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !9 ; 3 uses
  %i.jn = fcmp oge double %i.jm, 0.000000e+00
  %i.jo = fneg double %i.jm
  %i.jp = select i1 %i.jn, double %i.jm, double %i.jo
  %i.jq = fadd double %i.jg, %i.jp                ; 3 uses
  %i.jr = add nsw i32 %i.iz, %.0759.lcssa
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !9
  %i.jv = call double @llvm.fmuladd.f64(double %i.jq, double 7.500000e-01, double %i.ju) ; 2 uses
  %i.jw = fmul double %i.jq, -4.375000e-01
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.jx = load double, ptr %i.es, align 8, !tbaa !9 ; 3 uses
  %i.jy = fcmp oge double %i.jx, 0.000000e+00
  %i.jz = fneg double %i.jx
  %i.ka = select i1 %i.jy, double %i.jx, double %i.jz
  %i.kb = load double, ptr %i.ex, align 8, !tbaa !9 ; 3 uses
  %i.kc = fcmp oge double %i.kb, 0.000000e+00
  %i.kd = fneg double %i.kb
  %i.ke = select i1 %i.kc, double %i.kb, double %i.kd
  %i.kf = fadd double %i.ka, %i.ke                ; 3 uses
  %i.kg = load double, ptr %i.fa, align 8, !tbaa !9
  %i.kh = call double @llvm.fmuladd.f64(double %i.kf, double 7.500000e-01, double %i.kg) ; 2 uses
  %i.ki = fmul double %i.kf, -4.375000e-01
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.kj = load double, ptr %i.fd, align 8, !tbaa !9
  %i.kk = load double, ptr %i.es, align 8, !tbaa !9
  %i.kl = load double, ptr %i.fh, align 8, !tbaa !9
  %i.km = load double, ptr %i.fk, align 8, !tbaa !9
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
  br i1 %.not789.not, label %.lr.ph988, label %._crit_edge989.loopexit, !llvm.loop !16

.lr.ph988:                                        ; preds = %bb.aa, %bb.ab
  %indvars886986 = phi i32 [ %indvars886, %bb.ab ], [ %i.et, %bb.aa ] ; 2 uses
  %indvars.iv883985 = phi i64 [ %indvars.iv.next884, %bb.ab ], [ %i.fm, %bb.aa ] ; 9 uses
  %i.ml = add nsw i64 %indvars.iv883985, 1        ; 3 uses
  %i.mm = add nsw i32 %indvars886986, 1
  %i.mn = mul nsw i64 %indvars.iv883985, %i.cx    ; 2 uses
  %i.mo = getelementptr [8 x i8], ptr %i.l, i64 %i.ml
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.mn
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !9 ; 4 uses
  %i.mr = getelementptr [8 x i8], ptr %i.l, i64 %i.mn
  %i.ms = getelementptr [8 x i8], ptr %i.mr, i64 %indvars.iv883985
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !9 ; 5 uses
  %i.mu = fsub double %i.mt, %.1                  ; 5 uses
  %i.mv = fcmp oge double %i.mu, 0.000000e+00
  %i.mw = fneg double %i.mu
  %i.mx = select i1 %i.mv, double %i.mu, double %i.mw
  %i.my = fadd double %i.mi, %i.mx
  %i.mz = fcmp oge double %i.mq, 0.000000e+00
  %i.na = fneg double %i.mq
  %i.nb = select i1 %i.mz, double %i.mq, double %i.na
  %i.nc = fadd double %i.nb, %i.my                ; 3 uses
  %i.nd = fdiv double %i.mq, %i.nc                ; 2 uses
  %i.ne = mul nsw i64 %i.ml, %i.cx                ; 2 uses
  %i.nf = mul nsw i32 %i.mm, %i.j
  %i.ng = getelementptr [8 x i8], ptr %i.l, i64 %i.ne
  %i.nh = getelementptr [8 x i8], ptr %i.ng, i64 %indvars.iv883985
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9
  %i.nj = fdiv double %i.mu, %i.nc
  %i.nk = fmul double %i.mu, %i.nj
  %i.nl = call double @llvm.fmuladd.f64(double %i.nd, double %i.ni, double %i.nk)
  %i.nm = fdiv double %.0742, %i.nc
  %i.nn = call double @llvm.fmuladd.f64(double %i.mj, double %i.nm, double %i.nl) ; 4 uses
  %i.no = sext i32 %i.nf to i64
  %i.np = getelementptr [8 x i8], ptr %i.l, i64 %i.ml
  %i.nq = getelementptr [8 x i8], ptr %i.np, i64 %i.no
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !9 ; 4 uses
  %i.ns = fadd double %i.mt, %i.nr
  %i.nt = fsub double %i.ns, %.1
  %i.nu = fsub double %i.nt, %.1
  %i.nv = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv883985
  %i.nw = getelementptr i8, ptr %i.nv, i64 16
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.ne
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@dlahqr_:bb.a
  %indvars.iv.next896.3 = add nsw i64 %indvars.iv895, 4 ; 2 uses
  %lftr.wideiv899.3 = trunc i64 %indvars.iv.next896.3 to i32
  %exitcond900.not.3 = icmp eq i32 %i.fn, %lftr.wideiv899.3
  br i1 %exitcond900.not.3, label %._crit_edge829, label %scalar.ph1117, !llvm.loop !50

._crit_edge829:                                   ; preds = %scalar.ph1117.prol.loopexit, %scalar.ph1117, %middle.block1136, %.preheader
  %i.ahh = load i32, ptr %1, align 4, !tbaa !8
  %.not793 = icmp eq i32 %i.ahh, 0
  br i1 %.not793, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %._crit_edge829
  %i.ahi = load i32, ptr %10, align 4, !tbaa !8   ; 6 uses
  %i.ahj = load i32, ptr %9, align 4, !tbaa !8    ; 4 uses
  %.not794830 = icmp sgt i32 %i.ahj, %i.ahi
  br i1 %.not794830, label %.loopexit, label %.lr.ph833

.lr.ph833:                                        ; preds = %bb.al
  %i.ahk = mul nsw i64 %indvars.iv887, %i.cy
  %i.ahl = add nsw i64 %indvars.iv887, 1
  %i.ahm = mul nsw i64 %i.ahl, %i.cy
  %i.ahn = sext i32 %i.ahj to i64                 ; 6 uses
  %i.aho = add i32 %i.ahi, 1
  %invariant.gep961 = getelementptr [8 x i8], ptr %i.q, i64 %i.ahk ; 6 uses
  %invariant.gep963 = getelementptr [8 x i8], ptr %i.q, i64 %i.ahm ; 6 uses
  %i.ahp = sub i32 %i.ahi, %i.ahj                 ; 2 uses
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = add nuw nsw i64 %i.ahq, 1              ; 2 uses
  %min.iters.check1083 = icmp ult i32 %i.ahp, 7
  br i1 %min.iters.check1083, label %scalar.ph1082.preheader, label %vector.memcheck1070

vector.memcheck1070:                              ; preds = %.lr.ph833
  %i.ahs = shl nsw i64 %i.ahn, 3                  ; 2 uses
  %scevgep1072 = getelementptr i8, ptr %scevgep1071, i64 %i.ahs
  %i.aht = sub i32 %i.ahi, %i.ahj
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = add nsw i64 %i.ahn, %i.ahu
  %i.ahw = shl nsw i64 %i.ahv, 3                  ; 2 uses
  %scevgep1074 = getelementptr i8, ptr %scevgep1073, i64 %i.ahw
  %scevgep1076 = getelementptr i8, ptr %scevgep1075, i64 %i.ahs
  %scevgep1078 = getelementptr i8, ptr %scevgep1077, i64 %i.ahw
  %bound01079 = icmp ult ptr %scevgep1072, %scevgep1078
  %bound11080 = icmp ult ptr %scevgep1076, %scevgep1074
  %found.conflict1081 = and i1 %bound01079, %bound11080
  br i1 %found.conflict1081, label %scalar.ph1082.preheader, label %vector.ph1084

vector.ph1084:                                    ; preds = %vector.memcheck1070
  %n.vec1085 = and i64 %i.ahr, 8589934584         ; 3 uses
  %i.ahx = add nsw i64 %n.vec1085, %i.ahn
  %broadcast.splatinsert1086 = insertelement <4 x double> poison, double %i.ve, i64 0
  %broadcast.splat1087 = shufflevector <4 x double> %broadcast.splatinsert1086, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1088 = insertelement <4 x double> poison, double %i.vf, i64 0
  %broadcast.splat1089 = shufflevector <4 x double> %broadcast.splatinsert1088, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1090 = insertelement <4 x double> poison, double %i.vg, i64 0
  %broadcast.splat1091 = shufflevector <4 x double> %broadcast.splatinsert1090, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %vector.ph1084
  %index1093 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1100, %vector.body1092 ] ; 2 uses
  %i.ahy = add i64 %index1093, %i.ahn             ; 2 uses
  %i.ahz = getelementptr [8 x i8], ptr %invariant.gep961, i64 %i.ahy ; 3 uses
  %i.aia = getelementptr i8, ptr %i.ahz, i64 32   ; 2 uses
  %wide.load1094 = load <4 x double>, ptr %i.ahz, align 8, !tbaa !9, !alias.scope !51, !noalias !54 ; 2 uses
  %wide.load1095 = load <4 x double>, ptr %i.aia, align 8, !tbaa !9, !alias.scope !51, !noalias !54 ; 2 uses
  %i.aib = getelementptr [8 x i8], ptr %invariant.gep963, i64 %i.ahy ; 4 uses
  %i.aic = getelementptr i8, ptr %i.aib, i64 32   ; 3 uses
  %wide.load1096 = load <4 x double>, ptr %i.aib, align 8, !tbaa !9, !alias.scope !54
  %wide.load1097 = load <4 x double>, ptr %i.aic, align 8, !tbaa !9, !alias.scope !54
  %i.aid = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1087, <4 x double> %wide.load1096, <4 x double> %wide.load1094)
  %i.aie = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1087, <4 x double> %wide.load1097, <4 x double> %wide.load1095)
  %i.aif = fneg <4 x double> %i.aid               ; 2 uses
  %i.aig = fneg <4 x double> %i.aie               ; 2 uses
  %i.aih = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aif, <4 x double> %broadcast.splat1089, <4 x double> %wide.load1094)
  %i.aii = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aig, <4 x double> %broadcast.splat1089, <4 x double> %wide.load1095)
  store <4 x double> %i.aih, ptr %i.ahz, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <4 x double> %i.aii, ptr %i.aia, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %wide.load1098 = load <4 x double>, ptr %i.aib, align 8, !tbaa !9, !alias.scope !54
  %wide.load1099 = load <4 x double>, ptr %i.aic, align 8, !tbaa !9, !alias.scope !54
  %i.aij = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aif, <4 x double> %broadcast.splat1091, <4 x double> %wide.load1098)
  %i.aik = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aig, <4 x double> %broadcast.splat1091, <4 x double> %wide.load1099)
  store <4 x double> %i.aij, ptr %i.aib, align 8, !tbaa !9, !alias.scope !54
  store <4 x double> %i.aik, ptr %i.aic, align 8, !tbaa !9, !alias.scope !54
  %index.next1100 = add nuw i64 %index1093, 8     ; 2 uses
  %i.ail = icmp eq i64 %index.next1100, %n.vec1085
  br i1 %i.ail, label %middle.block1101, label %vector.body1092, !llvm.loop !56

middle.block1101:                                 ; preds = %vector.body1092
  %cmp.n1102 = icmp eq i64 %i.ahr, %n.vec1085
  br i1 %cmp.n1102, label %.loopexit, label %scalar.ph1082.preheader

scalar.ph1082.preheader:                          ; preds = %vector.memcheck1070, %.lr.ph833, %middle.block1101
  %indvars.iv901.ph = phi i64 [ %i.ahn, %vector.memcheck1070 ], [ %i.ahn, %.lr.ph833 ], [ %i.ahx, %middle.block1101 ] ; 3 uses
  %i.aim = add i32 %i.ahi, 1
  %i.ain = trunc i64 %indvars.iv901.ph to i32     ; 2 uses
  %i.aio = sub i32 %i.aim, %i.ain
  %i.aip = sub i32 %i.ahi, %i.ain
  %xtraiter1169 = and i32 %i.aio, 3               ; 2 uses
  %lcmp.mod1170.not = icmp eq i32 %xtraiter1169, 0
  br i1 %lcmp.mod1170.not, label %scalar.ph1082.prol.loopexit, label %scalar.ph1082.prol

scalar.ph1082.prol:                               ; preds = %scalar.ph1082.preheader, %scalar.ph1082.prol
  %indvars.iv901.prol = phi i64 [ %indvars.iv.next902.prol, %scalar.ph1082.prol ], [ %indvars.iv901.ph, %scalar.ph1082.preheader ] ; 3 uses
  %prol.iter1171 = phi i32 [ %prol.iter1171.next, %scalar.ph1082.prol ], [ 0, %scalar.ph1082.preheader ]
  %gep962.prol = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv901.prol ; 2 uses
  %i.aiq = load double, ptr %gep962.prol, align 8, !tbaa !9 ; 2 uses
  %gep964.prol = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv901.prol ; 3 uses
  %i.air = load double, ptr %gep964.prol, align 8, !tbaa !9
  %i.ais = call double @llvm.fmuladd.f64(double %i.ve, double %i.air, double %i.aiq)
  %i.ait = fneg double %i.ais                     ; 2 uses
  %i.aiu = call double @llvm.fmuladd.f64(double %i.ait, double %i.vf, double %i.aiq)
  store double %i.aiu, ptr %gep962.prol, align 8, !tbaa !9
  %i.aiv = load double, ptr %gep964.prol, align 8, !tbaa !9
  %i.aiw = call double @llvm.fmuladd.f64(double %i.ait, double %i.vg, double %i.aiv)
  store double %i.aiw, ptr %gep964.prol, align 8, !tbaa !9
  %indvars.iv.next902.prol = add nsw i64 %indvars.iv901.prol, 1 ; 2 uses
  %prol.iter1171.next = add i32 %prol.iter1171, 1 ; 2 uses
  %prol.iter1171.cmp.not = icmp eq i32 %prol.iter1171.next, %xtraiter1169
  br i1 %prol.iter1171.cmp.not, label %scalar.ph1082.prol.loopexit, label %scalar.ph1082.prol, !llvm.loop !57

scalar.ph1082.prol.loopexit:                      ; preds = %scalar.ph1082.prol, %scalar.ph1082.preheader
  %indvars.iv901.unr = phi i64 [ %indvars.iv901.ph, %scalar.ph1082.preheader ], [ %indvars.iv.next902.prol, %scalar.ph1082.prol ]
  %i.aix = icmp ult i32 %i.aip, 3
  br i1 %i.aix, label %.loopexit, label %scalar.ph1082

scalar.ph1082:                                    ; preds = %scalar.ph1082.prol.loopexit, %scalar.ph1082
  %indvars.iv901 = phi i64 [ %indvars.iv.next902.3, %scalar.ph1082 ], [ %indvars.iv901.unr, %scalar.ph1082.prol.loopexit ] ; 6 uses
  %gep962 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv901 ; 2 uses
  %i.aiy = load double, ptr %gep962, align 8, !tbaa !9 ; 2 uses
  %gep964 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv901 ; 3 uses
  %i.aiz = load double, ptr %gep964, align 8, !tbaa !9
  %i.aja = call double @llvm.fmuladd.f64(double %i.ve, double %i.aiz, double %i.aiy)
  %i.ajb = fneg double %i.aja                     ; 2 uses
  %i.ajc = call double @llvm.fmuladd.f64(double %i.ajb, double %i.vf, double %i.aiy)
  store double %i.ajc, ptr %gep962, align 8, !tbaa !9
  %i.ajd = load double, ptr %gep964, align 8, !tbaa !9
  %i.aje = call double @llvm.fmuladd.f64(double %i.ajb, double %i.vg, double %i.ajd)
  store double %i.aje, ptr %gep964, align 8, !tbaa !9
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, 1 ; 2 uses
  %gep962.1 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next902 ; 2 uses
  %i.ajf = load double, ptr %gep962.1, align 8, !tbaa !9 ; 2 uses
  %gep964.1 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv.next902 ; 3 uses
  %i.ajg = load double, ptr %gep964.1, align 8, !tbaa !9
  %i.ajh = call double @llvm.fmuladd.f64(double %i.ve, double %i.ajg, double %i.ajf)
  %i.aji = fneg double %i.ajh                     ; 2 uses
  %i.ajj = call double @llvm.fmuladd.f64(double %i.aji, double %i.vf, double %i.ajf)
  store double %i.ajj, ptr %gep962.1, align 8, !tbaa !9
  %i.ajk = load double, ptr %gep964.1, align 8, !tbaa !9
  %i.ajl = call double @llvm.fmuladd.f64(double %i.aji, double %i.vg, double %i.ajk)
  store double %i.ajl, ptr %gep964.1, align 8, !tbaa !9
  %indvars.iv.next902.1 = add nsw i64 %indvars.iv901, 2 ; 2 uses
  %gep962.2 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next902.1 ; 2 uses
  %i.ajm = load double, ptr %gep962.2, align 8, !tbaa !9 ; 2 uses
  %gep964.2 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv.next902.1 ; 3 uses
  %i.ajn = load double, ptr %gep964.2, align 8, !tbaa !9
  %i.ajo = call double @llvm.fmuladd.f64(double %i.ve, double %i.ajn, double %i.ajm)
  %i.ajp = fneg double %i.ajo                     ; 2 uses
  %i.ajq = call double @llvm.fmuladd.f64(double %i.ajp, double %i.vf, double %i.ajm)
  store double %i.ajq, ptr %gep962.2, align 8, !tbaa !9
  %i.ajr = load double, ptr %gep964.2, align 8, !tbaa !9
  %i.ajs = call double @llvm.fmuladd.f64(double %i.ajp, double %i.vg, double %i.ajr)
  store double %i.ajs, ptr %gep964.2, align 8, !tbaa !9
  %indvars.iv.next902.2 = add nsw i64 %indvars.iv901, 3 ; 2 uses
  %gep962.3 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next902.2 ; 2 uses
  %i.ajt = load double, ptr %gep962.3, align 8, !tbaa !9 ; 2 uses
  %gep964.3 = getelementptr [8 x i8], ptr %invariant.gep963, i64 %indvars.iv.next902.2 ; 3 uses
  %i.aju = load double, ptr %gep964.3, align 8, !tbaa !9
  %i.ajv = call double @llvm.fmuladd.f64(double %i.ve, double %i.aju, double %i.ajt)
  %i.ajw = fneg double %i.ajv                     ; 2 uses
  %i.ajx = call double @llvm.fmuladd.f64(double %i.ajw, double %i.vf, double %i.ajt)
  store double %i.ajx, ptr %gep962.3, align 8, !tbaa !9
  %i.ajy = load double, ptr %gep964.3, align 8, !tbaa !9
  %i.ajz = call double @llvm.fmuladd.f64(double %i.ajw, double %i.vg, double %i.ajy)
  store double %i.ajz, ptr %gep964.3, align 8, !tbaa !9
  %indvars.iv.next902.3 = add nsw i64 %indvars.iv901, 4 ; 2 uses
  %lftr.wideiv905.3 = trunc i64 %indvars.iv.next902.3 to i32
  %exitcond906.not.3 = icmp eq i32 %i.aho, %lftr.wideiv905.3
  br i1 %exitcond906.not.3, label %.loopexit, label %scalar.ph1082, !llvm.loop !58

.loopexit:                                        ; preds = %scalar.ph1082.prol.loopexit, %scalar.ph1082, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1101, %middle.block, %bb.al, %bb.ak, %bb.ai, %._crit_edge843, %._crit_edge829
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, 1 ; 2 uses
  %lftr.wideiv925 = trunc i64 %indvars.iv.next888 to i32
  %exitcond926.not = icmp eq i32 %.0765863, %lftr.wideiv925
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond926.not, label %._crit_edge853.loopexit, label %bb.ad, !llvm.loop !59

._crit_edge853.loopexit:                          ; preds = %.loopexit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %._crit_edge853

._crit_edge853:                                   ; preds = %._crit_edge853.loopexit, %._crit_edge989
  %i.aka = phi i32 [ %.pre, %._crit_edge853.loopexit ], [ %i.fq, %._crit_edge989 ] ; 2 uses
  %i.akb = add nuw nsw i32 %.0746858, 1
  %.not783.not = icmp slt i32 %.0746858, %i.aka
  br i1 %.not783.not, label %.preheader805, label %._crit_edge859, !llvm.loop !60

._crit_edge859:                                   ; preds = %._crit_edge853
  store i32 %.0765863, ptr %13, align 4, !tbaa !8
  br label %.loopexit806

bb.am:                                            ; preds = %bb.r
  %i.akc = icmp eq i32 %.0759.lcssa, %.0765863
  %14 = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fl ; 2 uses
  br i1 %i.akc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.akd = load double, ptr %i.fa, align 8, !tbaa !9
  %i.ake = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fl
  store double %i.akd, ptr %i.ake, align 8, !tbaa !9
  store double 0.000000e+00, ptr %14, align 8, !tbaa !9
  br label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.akf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fo
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fo
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fl
  call void @dlanv2_(ptr noundef %i.fd, ptr noundef %i.fh, ptr noundef %i.es, ptr noundef %i.fk, ptr noundef nonnull %i.akf, ptr noundef nonnull %i.akg, ptr noundef nonnull %i.akh, ptr noundef nonnull %14, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %i.aki = load i32, ptr %0, align 4, !tbaa !8
  %.not800 = icmp eq i32 %i.aki, 0
  br i1 %.not800, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.akj = icmp sgt i32 %.2857, %.0765863
  br i1 %i.akj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.akk = sub nsw i32 %.2857, %.0765863
  store i32 %i.akk, ptr %i.a, align 4, !tbaa !8
  %i.akl = mul nsw i32 %i.fn, %i.j                ; 2 uses
  %i.akm = add nsw i32 %i.akl, %i.eo
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.akn
  %i.akp = add nsw i32 %i.akl, %.0765863
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.akq
  call void @drot_(ptr noundef nonnull %i.a, ptr noundef %i.ako, ptr noundef nonnull %6, ptr noundef %i.akr, ptr noundef nonnull %6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.aks = xor i32 %.2755856, -1
  %i.akt = add i32 %.0765863, %i.aks
  store i32 %i.akt, ptr %i.a, align 4, !tbaa !8
  %i.aku = add nsw i32 %.2755856, %i.ep
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.akv
  %i.akx = add nsw i32 %.2755856, %i.fe
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aky
  call void @drot_(ptr noundef nonnull %i.a, ptr noundef %i.akw, ptr noundef nonnull @c__1, ptr noundef %i.akz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.ala = load i32, ptr %1, align 4, !tbaa !8
  %.not801 = icmp eq i32 %i.ala, 0
  br i1 %.not801, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.alb = load i32, ptr %9, align 4, !tbaa !8    ; 2 uses
  %i.alc = mul nsw i32 %i.eo, %i.o
  %i.ald = add nsw i32 %i.alb, %i.alc
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ale
  %i.alg = mul nsw i32 %.0765863, %i.o
  %i.alh = add nsw i32 %i.alb, %i.alg
  %i.ali = sext i32 %i.alh to i64
  %i.alj = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ali
  call void @drot_(ptr noundef nonnull %i.g, ptr noundef %i.alf, ptr noundef nonnull @c__1, ptr noundef %i.alj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.an
  %i.alk = add nsw i32 %.0759.lcssa, -1
  %i.all = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %.not = icmp sgt i32 %.0759.lcssa, %i.all
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
