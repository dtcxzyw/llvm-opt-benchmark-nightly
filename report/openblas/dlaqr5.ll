Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr5?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"SAFE MINIMUM\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PRECISION\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@c_b7 = internal global double 0.000000e+00, align 8
@c_b8 = internal global double 1.000000e+00, align 8
@c__2 = internal global i32 2, align 4
@c__1 = internal global i32 1, align 4
@c__3 = internal global i32 3, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaqr5_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr nofree noundef readonly captures(none) %16, ptr noundef %17, ptr noundef %18, ptr nofree noundef readonly captures(none) %19, ptr noundef %20, ptr noundef %21, ptr nofree noundef readonly captures(none) %22, ptr noundef %23, ptr noundef %24) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 11 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca [3 x double], align 16            ; 8 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.i = getelementptr inbounds i8, ptr %7, i64 -8 ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %8, i64 -8 ; 8 uses
  %i.k = load i32, ptr %10, align 4, !tbaa !70    ; 26 uses
  %narrow = xor i32 %i.k, -1
  %i.l = sext i32 %narrow to i64                  ; 8 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %9, i64 %i.l ; 45 uses
  %i.n = load i32, ptr %14, align 4, !tbaa !70    ; 7 uses
  %narrow1418 = xor i32 %i.n, -1
  %i.o = sext i32 %narrow1418 to i64              ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %13, i64 %i.o ; 8 uses
  %i.q = load i32, ptr %16, align 4, !tbaa !70    ; 11 uses
  %narrow1419 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow1419 to i64              ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %15, i64 %i.r ; 12 uses
  %i.t = load i32, ptr %18, align 4, !tbaa !70    ; 7 uses
  %narrow1424 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow1424 to i64              ; 6 uses
  %i.v = getelementptr [8 x i8], ptr %17, i64 %i.u ; 13 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !70     ; 7 uses
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %.loopexit1492, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %4, align 4, !tbaa !70
  %i.z = load i32, ptr %5, align 4, !tbaa !70
  %.not = icmp slt i32 %i.y, %i.z
  br i1 %.not, label %bb.c, label %.loopexit1492

bb.c:                                             ; preds = %bb.b
  %.not14201493 = icmp eq i32 %i.w, 2
  br i1 %.not14201493, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = add nsw i32 %i.w, -2
  %i.ab = zext nneg i32 %i.aa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.pre-phi, %bb.e ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !72
  %i.ae = getelementptr [8 x i8], ptr %8, i64 %indvars.iv ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !72
  %i.ag = fneg double %i.af
  %i.ah = fcmp une double %i.ad, %i.ag
  br i1 %i.ah, label %bb.d, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre1656 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !72
  %i.ak = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  %i.al = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load <2 x double>, ptr %i.ak, align 8, !tbaa !72
  store <2 x double> %i.an, ptr %i.ai, align 8, !tbaa !72
  store double %i.aj, ptr %i.am, align 8, !tbaa !72
  %i.ao = load double, ptr %i.ac, align 8, !tbaa !72
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.al
  %i.aq = load <2 x double>, ptr %i.ae, align 8, !tbaa !72
  store <2 x double> %i.aq, ptr %i.ac, align 8, !tbaa !72
  store double %i.ao, ptr %i.ap, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge, %bb.d
  %indvars.iv.next.pre-phi = phi i64 [ %.pre1656, %.lr.ph._crit_edge ], [ %i.al, %bb.d ] ; 2 uses
  %.not1420 = icmp sgt i64 %indvars.iv.next.pre-phi, %i.ab
  br i1 %.not1420, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.ar = tail call double @dlamch_(ptr noundef nonnull @.str) #4 ; 2 uses
  store double %i.ar, ptr %i.f, align 8, !tbaa !72
  %i.as = fdiv double 1.000000e+00, %i.ar
  store double %i.as, ptr %i.g, align 8, !tbaa !72
  call void @dlabad_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #4
  %i.at = call double @dlamch_(ptr noundef nonnull @.str.1) #4 ; 6 uses
  %i.au = load double, ptr %i.f, align 8, !tbaa !72
  %i.av = load i32, ptr %3, align 4, !tbaa !70
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fdiv double %i.aw, %i.at
  %i.ay = fmul double %i.au, %i.ax                ; 8 uses
  %i.az = load i32, ptr %2, align 4, !tbaa !70
  %i.ba = load i32, ptr %4, align 4, !tbaa !70    ; 5 uses
  %i.bb = add i32 %i.ba, 2                        ; 3 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !70    ; 2 uses
  %.not1421 = icmp sgt i32 %i.bb, %i.bc
  br i1 %.not1421, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bd = mul nsw i32 %i.ba, %i.k
  %i.be = add nsw i32 %i.bb, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bf
  store double 0.000000e+00, ptr %i.bg, align 8, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.bh = lshr i32 %i.w, 1                        ; 3 uses
  %i.bi = shl nuw i32 %i.bh, 2
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !70
  %i.bj = add nsw i32 %i.bc, -2                   ; 2 uses
  %i.bk = and i32 %i.w, 2147483646                ; 7 uses
  %reass.sub = sub i32 %i.ba, %i.bk               ; 2 uses
  %i.bl = add i32 %reass.sub, 1                   ; 2 uses
  %.not14831571 = icmp sgt i32 %i.bl, %i.bj
  br i1 %.not14831571, label %.loopexit1492, label %.lr.ph1575

.lr.ph1575:                                       ; preds = %bb.g
  %.01369.neg1570 = xor i32 %reass.sub, -1
  %i.bm = add i32 %i.az, -1
  %i.bn = icmp ult i32 %i.bm, 2                   ; 7 uses
  %i.bo = add i32 %i.k, 1                         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.br = add i32 %i.t, 1                         ; 3 uses
  %i.bs = sub i32 %i.bb, %i.bk
  %i.bt = sext i32 %i.k to i64                    ; 3 uses
  %i.bu = lshr i32 %i.w, 1
  %i.bv = zext nneg i32 %i.bu to i64              ; 5 uses
  %i.bw = sext i32 %i.q to i64                    ; 14 uses
  %i.bx = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.by = getelementptr i8, ptr %15, i64 %i.bx
  %scevgep = getelementptr i8, ptr %i.by, i64 32
  %i.bz = shl nsw i64 %i.bw, 3
  %i.ca = getelementptr i8, ptr %15, i64 %i.bx
  %scevgep1789 = getelementptr i8, ptr %i.ca, i64 8
  %i.cb = shl nsw i64 %i.bw, 3
  %scevgep1791 = getelementptr i8, ptr %17, i64 8 ; 3 uses
  %i.cc = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.cd = getelementptr i8, ptr %15, i64 %i.cc
  %scevgep1870 = getelementptr i8, ptr %i.cd, i64 32
  %i.ce = shl nsw i64 %i.bw, 3
  %i.cf = getelementptr i8, ptr %15, i64 %i.cc
  %scevgep1872 = getelementptr i8, ptr %i.cf, i64 8
  %i.cg = shl nsw i64 %i.bw, 3
  %i.ch = shl nsw i64 %i.o, 3                     ; 2 uses
  %i.ci = getelementptr i8, ptr %13, i64 %i.ch
  %scevgep1874 = getelementptr i8, ptr %i.ci, i64 8
  %scevgep1876 = getelementptr i8, ptr %13, i64 %i.ch
  %i.cj = getelementptr i8, ptr %9, i64 16
  %scevgep1973 = getelementptr i8, ptr %9, i64 8
  %i.ck = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.cl = getelementptr i8, ptr %15, i64 %i.ck
  %scevgep1977.a = getelementptr i8, ptr %i.cl, i64 32
  %i.cm = shl nsw i64 %i.bw, 3
  %scevgep1979 = getelementptr i8, ptr %15, i64 %i.ck
  %scevgep1980 = getelementptr i8, ptr %scevgep1979, i64 8
  %25 = shl nsw i64 %i.bw, 3
  %scevgep1981 = getelementptr i8, ptr %9, i64 -16
  %scevgep1982 = getelementptr i8, ptr %9, i64 -8 ; 2 uses
  %i.cn = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.co = getelementptr i8, ptr %15, i64 %i.cn
  %scevgep2078 = getelementptr i8, ptr %i.co, i64 32
  %i.cp = shl nsw i64 %i.bw, 3
  %i.cq = getelementptr i8, ptr %15, i64 %i.cn
  %scevgep2080 = getelementptr i8, ptr %i.cq, i64 8
  %i.cr = shl nsw i64 %i.bw, 3
  %scevgep2082 = getelementptr i8, ptr %9, i64 8  ; 3 uses
  %i.cs = shl nsw i64 %i.l, 3
  %scevgep2083 = getelementptr i8, ptr %9, i64 %i.cs
  %i.ct = shl nsw i64 %i.r, 3
  %i.cu = getelementptr i8, ptr %15, i64 %i.ct
  %scevgep2153 = getelementptr i8, ptr %i.cu, i64 24 ; 2 uses
  %scevgep2154 = getelementptr i8, ptr %17, i64 8 ; 2 uses
  %i.cv = shl nsw i64 %i.o, 3
  %i.cw = getelementptr i8, ptr %13, i64 %i.cv
  %scevgep2209 = getelementptr i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cx = shl nsw i64 %i.r, 3
  %i.cy = getelementptr i8, ptr %15, i64 %i.cx
  %scevgep2266 = getelementptr i8, ptr %i.cy, i64 24 ; 2 uses
  %scevgep2267 = getelementptr i8, ptr %9, i64 8  ; 3 uses
  %scevgep2268 = getelementptr i8, ptr %9, i64 -8
  %scevgep2269 = getelementptr i8, ptr %9, i64 -16
  %i.cz = shl nsw i64 %i.l, 3                     ; 2 uses
  %scevgep2317 = getelementptr i8, ptr %9, i64 %i.cz
  %26 = getelementptr i8, ptr %9, i64 %i.cz
  %scevgep2325 = getelementptr i8, ptr %26, i64 8
  %27 = xor i32 %i.bk, -1
  %28 = add i32 %i.ba, %27
  %29 = and i32 %i.w, 2147483646
  %ident.check2243.not = icmp eq i32 %i.k, 1
  %stride.check2098 = icmp sgt i32 %i.q, 0
  %ident.check.not = icmp eq i32 %i.k, 1
  %stride.check1996 = icmp sgt i32 %i.q, 0
  %stride.check1891 = icmp sgt i32 %i.q, 0
  %stride.check = icmp sgt i32 %i.q, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph1575, %.loopexit1491
  %indvar = phi i32 [ 0, %.lr.ph1575 ], [ %indvar.next, %.loopexit1491 ] ; 2 uses
  %indvars.iv1630 = phi i32 [ %i.ba, %.lr.ph1575 ], [ %indvars.iv.next1631, %.loopexit1491 ] ; 2 uses
  %indvars.iv1594 = phi i32 [ %.01369.neg1570, %.lr.ph1575 ], [ %indvars.iv.next1595, %.loopexit1491 ] ; 5 uses
  %indvars.iv1584 = phi i32 [ %i.bs, %.lr.ph1575 ], [ %indvars.iv.next1585, %.loopexit1491 ] ; 2 uses
  %.013691572 = phi i32 [ %i.bl, %.lr.ph1575 ], [ %i.dg, %.loopexit1491 ] ; 14 uses
  %30 = mul i32 %29, %indvar
  %31 = add i32 %28, %30
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = load i32, ptr %0, align 4, !tbaa !70
  %.not1422 = icmp eq i32 %i.da, 0
  br i1 %.not1422, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.db = load i32, ptr %4, align 4, !tbaa !70
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.01385.ph = phi i32 [ 1, %bb.i ], [ %i.db, %bb.j ]
  %i.dc = load i32, ptr %i.h, align 4, !tbaa !70
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.dd = load i32, ptr %4, align 4, !tbaa !70
  %.01369. = call i32 @llvm.smax.i32(i32 %i.dd, i32 %.013691572)
  %i.de = load i32, ptr %i.h, align 4, !tbaa !70
  call void @dlaset_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b7, ptr noundef nonnull @c_b8, ptr noundef %17, ptr noundef nonnull %18) #4
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.pn = phi i32 [ %i.dc, %.thread ], [ %i.de, %bb.k ]
  %.013851482 = phi i32 [ %.01385.ph, %.thread ], [ %.01369., %bb.k ] ; 3 uses
  %i.df = add i32 %.pn, %.013691572               ; 4 uses
  %i.dg = add nsw i32 %.013691572, %i.bk          ; 3 uses
  %i.dh = add nsw i32 %i.dg, -1
  %i.di = load i32, ptr %5, align 4, !tbaa !70    ; 5 uses
  %i.dj = add nsw i32 %i.di, -2                   ; 2 uses
  %i.dk = call i32 @llvm.smin.i32(i32 %i.dh, i32 %i.dj)
  %.not14261549 = icmp sgt i32 %.013691572, %i.dk
  br i1 %.not14261549, label %._crit_edge1555, label %.lr.ph1554

.lr.ph1554:                                       ; preds = %bb.l
  %i.dl = add i32 %indvars.iv1594, -2
  %i.dm = add i32 %indvars.iv1594, 3
  %i.dn = sext i32 %.013851482 to i64             ; 11 uses
  %smin1632 = call i32 @llvm.smin.i32(i32 %indvars.iv1630, i32 %i.dj)
  %.pre = load i32, ptr %4, align 4, !tbaa !70    ; 3 uses
  %i.do = shl nsw i64 %i.dn, 3                    ; 2 uses
  %scevgep2084 = getelementptr i8, ptr %scevgep2083, i64 %i.do ; 3 uses
  %scevgep2326 = getelementptr i8, ptr %scevgep2317, i64 %i.do ; 2 uses
  %invariant.op2370 = sub i64 1, %i.dn
  %invariant.op = sub i64 1, %i.dn
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph1554, %.loopexit
  %indvar2353 = phi i32 [ 0, %.lr.ph1554 ], [ %indvar.next2354, %.loopexit ] ; 2 uses
  %i.dp = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.atm, %.loopexit ]
  %i.dq = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.atp, %.loopexit ]
  %i.dr = phi i32 [ %i.di, %.lr.ph1554 ], [ %i.atl, %.loopexit ]
  %i.ds = phi i32 [ %i.di, %.lr.ph1554 ], [ %i.ato, %.loopexit ]
  %i.dt = phi i32 [ %i.di, %.lr.ph1554 ], [ %i.atn, %.loopexit ] ; 3 uses
  %i.du = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.atq, %.loopexit ] ; 3 uses
  %indvars.iv1586 = phi i32 [ %indvars.iv1584, %.lr.ph1554 ], [ %indvars.iv.next1587, %.loopexit ] ; 2 uses
  %.013681550 = phi i32 [ %.013691572, %.lr.ph1554 ], [ %i.atr, %.loopexit ] ; 14 uses
  %32 = add i32 %31, %indvar2353
  %i.dv = sub nsw i32 %i.du, %.013681550          ; 2 uses
  %i.dw = sdiv i32 %i.dv, 2
  %i.dx = add nsw i32 %i.dw, 1
  %.inv = icmp sgt i32 %i.dv, 1
  %i.dy = select i1 %.inv, i32 %i.dx, i32 1       ; 5 uses
  %i.dz = xor i32 %.013681550, -1
  %i.ea = add i32 %i.dt, %i.dz
  %i.eb = sdiv i32 %i.ea, 2                       ; 6 uses
  %i.ec = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.eb) ; 3 uses
  %i.ed = add nsw i32 %i.ec, 1                    ; 6 uses
  %i.ee = icmp slt i32 %i.eb, %i.bh
  %i.ef = shl i32 %i.ec, 1                        ; 3 uses
  %i.eg = add i32 %i.ef, %.013681550              ; 33 uses
  %i.eh = add nsw i32 %i.dt, -2
  %i.ei = icmp eq i32 %i.eg, %i.eh
  %i.ej = select i1 %i.ee, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.n, label %.loopexit1489

bb.n:                                             ; preds = %bb.m
  %i.ek = add nsw i32 %i.du, -1
  %i.el = icmp eq i32 %i.eg, %i.ek
  %i.em = add nsw i32 %i.eg, 1                    ; 2 uses
  %i.en = mul nsw i32 %i.ed, %i.q
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr %i.s, i64 %i.eo ; 4 uses
  br i1 %i.el, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eq = mul i32 %i.em, %i.bo
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.er
  %i.et = shl i32 %i.ed, 1                        ; 2 uses
  %i.eu = add nsw i32 %i.et, -1
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ev
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ev
  %i.ey = sext i32 %i.et to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ey
  %i.fb = getelementptr i8, ptr %i.ep, i64 8      ; 3 uses
  call void @dlaqr1_(ptr noundef nonnull @c__2, ptr noundef %i.es, ptr noundef nonnull %10, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.fa, ptr noundef %i.fb) #4
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !72
  store double %i.fc, ptr %i.a, align 8, !tbaa !72
  %i.fd = getelementptr i8, ptr %i.ep, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.a, ptr noundef %i.fd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fb) #4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fe = mul nsw i32 %i.eg, %i.k                 ; 2 uses
  %i.ff = add nsw i32 %i.em, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fg ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !72
  store double %i.fi, ptr %i.a, align 8, !tbaa !72
  %i.fj = add nsw i32 %i.eg, 2
  %i.fk = add nsw i32 %i.fj, %i.fe
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fl ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !72
  %i.fo = getelementptr i8, ptr %i.ep, i64 16     ; 2 uses
  store double %i.fn, ptr %i.fo, align 8, !tbaa !72
  %i.fp = getelementptr i8, ptr %i.ep, i64 8
  call void @dlarfg_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fo, ptr noundef nonnull @c__1, ptr noundef %i.fp) #4
  %i.fq = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.fq, ptr %i.fh, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.fm, align 8, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fr = load i32, ptr %5, align 4, !tbaa !70    ; 30 uses
  %i.fs = add nsw i32 %i.eg, 3                    ; 2 uses
  %i.ft = call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.fs) ; 2 uses
  %.not14401495 = icmp sgt i32 %.013851482, %i.ft
  br i1 %.not14401495, label %._crit_edge1499, label %.lr.ph1498

.lr.ph1498:                                       ; preds = %bb.q
  %i.fu = mul nsw i32 %i.ed, %i.q
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.s, i64 %i.fv ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 8      ; 4 uses
  %i.fy = add nsw i32 %i.eg, 1
  %i.fz = mul nsw i32 %i.fy, %i.k
  %i.ga = getelementptr i8, ptr %i.fw, i64 16     ; 3 uses
  %i.gb = add nsw i32 %i.eg, 2
  %i.gc = mul nsw i32 %i.gb, %i.k
  %i.gd = sext i32 %i.fz to i64                   ; 3 uses
  %i.ge = sext i32 %i.gc to i64                   ; 3 uses
  %i.gf = sext i32 %i.ft to i64                   ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.m, i64 %i.gd ; 2 uses
  %invariant.gep1701 = getelementptr [8 x i8], ptr %i.m, i64 %i.ge ; 2 uses
  %.reass2371 = add i64 %i.gf, %invariant.op2370  ; 3 uses
  %min.iters.check2328 = icmp ult i64 %.reass2371, 8
  br i1 %min.iters.check2328, label %scalar.ph2327.preheader, label %vector.memcheck2329

vector.memcheck2329:                              ; preds = %.lr.ph1498
  %i.gg = shl nsw i64 %i.gd, 3
  %i.gh = getelementptr i8, ptr %scevgep2326, i64 %i.gg ; 2 uses
  %i.gi = add nsw i64 %i.gf, %i.gd
  %i.gj = add nsw i64 %i.gi, %i.l
  %i.gk = shl nsw i64 %i.gj, 3
  %i.gl = getelementptr i8, ptr %scevgep2267, i64 %i.gk ; 2 uses
  %i.gm = shl nsw i64 %i.ge, 3
  %i.gn = getelementptr i8, ptr %scevgep2326, i64 %i.gm ; 2 uses
  %i.go = add nsw i64 %i.gf, %i.ge
  %i.gp = add nsw i64 %i.go, %i.l
  %i.gq = shl nsw i64 %i.gp, 3
  %i.gr = getelementptr i8, ptr %scevgep2267, i64 %i.gq ; 2 uses
  %i.gs = shl nsw i64 %i.fv, 3
  %i.gt = getelementptr i8, ptr %scevgep2266, i64 %i.gs ; 2 uses
  %bound02330 = icmp ult ptr %i.gh, %i.gr
  %bound12331 = icmp ult ptr %i.gn, %i.gl
  %found.conflict2332 = and i1 %bound02330, %bound12331
  %bound02333 = icmp ult ptr %i.gh, %i.gt
  %bound12334 = icmp ult ptr %i.fx, %i.gl
  %found.conflict2335 = and i1 %bound02333, %bound12334
  %conflict.rdx2336 = or i1 %found.conflict2332, %found.conflict2335
  %bound02337 = icmp ult ptr %i.gn, %i.gt
  %bound12338 = icmp ult ptr %i.fx, %i.gr
  %found.conflict2339 = and i1 %bound02337, %bound12338
  %conflict.rdx2340 = or i1 %conflict.rdx2336, %found.conflict2339
  br i1 %conflict.rdx2340, label %scalar.ph2327.preheader, label %vector.ph2341

vector.ph2341:                                    ; preds = %vector.memcheck2329
  %n.vec2342 = and i64 %.reass2371, -8            ; 3 uses
  %i.gu = add nsw i64 %n.vec2342, %i.dn
  %i.gv = load double, ptr %i.fx, align 8, !tbaa !72, !alias.scope !74
  %broadcast.splatinsert2351 = insertelement <4 x double> poison, double %i.gv, i64 0
  %broadcast.splat2352 = shufflevector <4 x double> %broadcast.splatinsert2351, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gw = load double, ptr %i.ga, align 8, !tbaa !72, !alias.scope !74
  %broadcast.splatinsert2349 = insertelement <4 x double> poison, double %i.gw, i64 0
  %broadcast.splat2350 = shufflevector <4 x double> %broadcast.splatinsert2349, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2343

vector.body2343:                                  ; preds = %vector.body2343, %vector.ph2341
  %index2344 = phi i64 [ 0, %vector.ph2341 ], [ %index.next2355, %vector.body2343 ] ; 2 uses
  %i.gx = add i64 %index2344, %i.dn               ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 32     ; 2 uses
  %wide.load2345.a = load <4 x double>, ptr %i.gy, align 8, !tbaa !72, !alias.scope !75, !noalias !76 ; 2 uses
  %wide.load2346.a = load <4 x double>, ptr %i.gz, align 8, !tbaa !72, !alias.scope !75, !noalias !76 ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %i.gx ; 4 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 32     ; 3 uses
  %wide.load2347 = load <4 x double>, ptr %i.ha, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %wide.load2348 = load <4 x double>, ptr %i.hb, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %i.hc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2350, <4 x double> %wide.load2347, <4 x double> %wide.load2345.a)
  %i.hd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2350, <4 x double> %wide.load2348, <4 x double> %wide.load2346.a)
  %i.he = fmul <4 x double> %broadcast.splat2352, %i.hc ; 2 uses
  %i.hf = fmul <4 x double> %broadcast.splat2352, %i.hd ; 2 uses
  %i.hg = fsub <4 x double> %wide.load2345.a, %i.he
  %i.hh = fsub <4 x double> %wide.load2346.a, %i.hf
  store <4 x double> %i.hg, ptr %i.gy, align 8, !tbaa !72, !alias.scope !75, !noalias !76
  store <4 x double> %i.hh, ptr %i.gz, align 8, !tbaa !72, !alias.scope !75, !noalias !76
  %wide.load2353 = load <4 x double>, ptr %i.ha, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %wide.load2354 = load <4 x double>, ptr %i.hb, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %i.hi = fneg <4 x double> %i.he
  %i.hj = fneg <4 x double> %i.hf
  %i.hk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hi, <4 x double> %broadcast.splat2350, <4 x double> %wide.load2353)
  %i.hl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hj, <4 x double> %broadcast.splat2350, <4 x double> %wide.load2354)
  store <4 x double> %i.hk, ptr %i.ha, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  store <4 x double> %i.hl, ptr %i.hb, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %index.next2355 = add nuw i64 %index2344, 8     ; 2 uses
  %i.hm = icmp eq i64 %index.next2355, %n.vec2342
  br i1 %i.hm, label %middle.block2356, label %vector.body2343, !llvm.loop !13

middle.block2356:                                 ; preds = %vector.body2343
  %cmp.n2357 = icmp eq i64 %.reass2371, %n.vec2342
  br i1 %cmp.n2357, label %._crit_edge1499, label %scalar.ph2327.preheader

scalar.ph2327.preheader:                          ; preds = %vector.memcheck2329, %.lr.ph1498, %middle.block2356
  %indvars.iv1581.ph = phi i64 [ %i.dn, %vector.memcheck2329 ], [ %i.dn, %.lr.ph1498 ], [ %i.gu, %middle.block2356 ]
  br label %scalar.ph2327

scalar.ph2327:                                    ; preds = %scalar.ph2327.preheader, %scalar.ph2327
  %indvars.iv1581 = phi i64 [ %indvars.iv.next1582, %scalar.ph2327 ], [ %indvars.iv1581.ph, %scalar.ph2327.preheader ] ; 4 uses
  %i.hn = load double, ptr %i.fx, align 8, !tbaa !72
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1581 ; 2 uses
  %i.ho = load double, ptr %gep, align 8, !tbaa !72 ; 2 uses
  %i.hp = load double, ptr %i.ga, align 8, !tbaa !72
  %gep1702 = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %indvars.iv1581 ; 3 uses
  %i.hq = load double, ptr %gep1702, align 8, !tbaa !72
  %i.hr = call double @llvm.fmuladd.f64(double %i.hp, double %i.hq, double %i.ho)
  %i.hs = fmul double %i.hn, %i.hr                ; 2 uses
  %i.ht = fsub double %i.ho, %i.hs
  store double %i.ht, ptr %gep, align 8, !tbaa !72
  %i.hu = load double, ptr %i.ga, align 8, !tbaa !72
  %i.hv = load double, ptr %gep1702, align 8, !tbaa !72
  %i.hw = fneg double %i.hs
  %i.hx = call double @llvm.fmuladd.f64(double %i.hw, double %i.hu, double %i.hv)
  store double %i.hx, ptr %gep1702, align 8, !tbaa !72
  %indvars.iv.next1582 = add nsw i64 %indvars.iv1581, 1
  %.not1440.not = icmp slt i64 %indvars.iv1581, %i.gf
  br i1 %.not1440.not, label %scalar.ph2327, label %._crit_edge1499, !llvm.loop !14

._crit_edge1499:                                  ; preds = %scalar.ph2327, %middle.block2356, %bb.q
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge1499
  %. = call i32 @llvm.smin.i32(i32 %i.df, i32 %i.fr)
  br label %bb.u

end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  %i.ady = fcmp une double %i.adx, 0.000000e+00
  br i1 %i.ady, label %bb.bc, label %bb.br

bb.bc:                                            ; preds = %bb.bb
  %i.adz = add nsw i32 %i.adt, %i.vk
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aea
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !72 ; 4 uses
  %i.aed = fcmp oge double %i.aec, 0.000000e+00
  %i.aee = fneg double %i.aec
  %i.aef = select i1 %i.aed, double %i.aec, double %i.aee
  %i.aeg = load double, ptr %i.acs, align 8, !tbaa !72 ; 4 uses
  %i.aeh = fcmp oge double %i.aeg, 0.000000e+00
  %i.aei = fneg double %i.aeg
  %i.aej = select i1 %i.aeh, double %i.aeg, double %i.aei ; 5 uses
  %i.aek = fadd double %i.aef, %i.aej             ; 4 uses
  %i.ael = fcmp oeq double %i.aek, 0.000000e+00
  br i1 %i.ael, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %.not1471.not = icmp sgt i32 %i.vk, %i.adr
  br i1 %.not1471.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aem = add nsw i32 %i.vk, -1
  %i.aen = mul nsw i32 %i.aem, %i.k
  %i.aeo = add nsw i32 %i.aen, %i.vk
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aep
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !72 ; 3 uses
  %i.aes = fcmp oge double %i.aer, 0.000000e+00
  %i.aet = fneg double %i.aer
  %i.aeu = select i1 %i.aes, double %i.aer, double %i.aet
  %i.aev = fadd double %i.aek, %i.aeu
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6 = phi double [ %i.aev, %bb.be ], [ %i.aek, %bb.bd ] ; 2 uses
  %i.aew = add nsw i32 %i.adr, 2
  %.not1472 = icmp slt i32 %i.vk, %i.aew
  br i1 %.not1472, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aex = add nsw i32 %i.vk, -2
  %i.aey = mul nsw i32 %i.aex, %i.k
  %i.aez = add nsw i32 %i.aey, %i.vk
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afa
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !72 ; 3 uses
  %i.afd = fcmp oge double %i.afc, 0.000000e+00
  %i.afe = fneg double %i.afc
  %i.aff = select i1 %i.afd, double %i.afc, double %i.afe
  %i.afg = fadd double %.6, %i.aff
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi double [ %i.afg, %bb.bg ], [ %.6, %bb.bf ] ; 2 uses
  %i.afh = add nsw i32 %i.adr, 3
  %.not1473 = icmp slt i32 %i.vk, %i.afh
  br i1 %.not1473, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.afi = add nsw i32 %i.vk, -3
  %i.afj = mul nsw i32 %i.afi, %i.k
  %i.afk = add nsw i32 %i.afj, %i.vk
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afl
  %i.afn = load double, ptr %i.afm, align 8, !tbaa !72 ; 3 uses
  %i.afo = fcmp oge double %i.afn, 0.000000e+00
  %i.afp = fneg double %i.afn
  %i.afq = select i1 %i.afo, double %i.afn, double %i.afp
  %i.afr = fadd double %.7, %i.afq
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.8 = phi double [ %i.afr, %bb.bi ], [ %.7, %bb.bh ] ; 2 uses
  %i.afs = add nsw i32 %i.zy, -2
  %.not1474 = icmp sgt i32 %i.vk, %i.afs
  br i1 %.not1474, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aft = load double, ptr %i.acy, align 8, !tbaa !72 ; 3 uses
  %i.afu = fcmp oge double %i.aft, 0.000000e+00
  %i.afv = fneg double %i.aft
  %i.afw = select i1 %i.afu, double %i.aft, double %i.afv
  %i.afx = fadd double %.8, %i.afw
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.9 = phi double [ %i.afx, %bb.bk ], [ %.8, %bb.bj ] ; 2 uses
  %i.afy = add nsw i32 %i.zy, -3
  %.not1475 = icmp sgt i32 %i.vk, %i.afy
  %i.afz = fcmp oge double %i.adq, 0.000000e+00
  %i.aga = fneg double %i.adq
  %i.agb = select i1 %i.afz, double %i.adq, double %i.aga
  %i.agc = fadd double %i.agb, %.9
  %.10 = select i1 %.not1475, double %.9, double %i.agc ; 2 uses
  %i.agd = add nsw i32 %i.zy, -4
  %.not1476 = icmp sgt i32 %i.vk, %i.agd
  br i1 %.not1476, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.age = add nsw i32 %i.vk, 4
  %i.agf = add nsw i32 %i.age, %.pre-phi1653
  %i.agg = sext i32 %i.agf to i64
  %i.agh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agg
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !72 ; 3 uses
  %i.agj = fcmp oge double %i.agi, 0.000000e+00
  %i.agk = fneg double %i.agi
  %i.agl = select i1 %i.agj, double %i.agi, double %i.agk
  %i.agm = fadd double %.10, %i.agl
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bc
  %.11 = phi double [ %i.agm, %bb.bm ], [ %.10, %bb.bl ], [ %i.aek, %bb.bc ]
  %i.agn = fmul double %i.at, %.11                ; 2 uses
  %i.ago = fcmp oge double %i.adx, 0.000000e+00
  %i.agp = fneg double %i.adx
  %i.agq = select i1 %i.ago, double %i.adx, double %i.agp ; 5 uses
  %i.agr = fcmp oge double %i.ay, %i.agn
  %i.ags = select i1 %i.agr, double %i.ay, double %i.agn
  %i.agt = fcmp ugt double %i.agq, %i.ags
  br i1 %i.agt, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.agu = add nsw i32 %.pre-phi1653, %i.vk
  %i.agv = sext i32 %i.agu to i64
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agv
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !72 ; 3 uses
  %i.agy = fcmp oge double %i.agx, 0.000000e+00
  %i.agz = fneg double %i.agx
  %i.aha = select i1 %i.agy, double %i.agx, double %i.agz ; 4 uses
  %i.ahb = fcmp oge double %i.agq, %i.aha
  %i.ahc = select i1 %i.ahb, double %i.agq, double %i.aha ; 2 uses
  %i.ahd = fsub double %i.aec, %i.aeg             ; 3 uses
  %i.ahe = fcmp oge double %i.ahd, 0.000000e+00
  %i.ahf = fneg double %i.ahd
  %i.ahg = select i1 %i.ahe, double %i.ahd, double %i.ahf ; 4 uses
  %i.ahh = fcmp oge double %i.aej, %i.ahg
  %i.ahi = select i1 %i.ahh, double %i.aej, double %i.ahg ; 2 uses
  %i.ahj = fcmp ole double %i.aej, %i.ahg
  %i.ahk = select i1 %i.ahj, double %i.aej, double %i.ahg
  %i.ahl = fadd double %i.ahi, %i.ahc             ; 2 uses
  %i.ahm = fdiv double %i.ahi, %i.ahl
  %i.ahn = fmul double %i.ahk, %i.ahm             ; 2 uses
  %i.aho = fcmp oeq double %i.ahn, 0.000000e+00
  br i1 %i.aho, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ahp = fmul double %i.at, %i.ahn              ; 2 uses
  %i.ahq = fcmp ole double %i.agq, %i.aha
  %i.ahr = select i1 %i.ahq, double %i.agq, double %i.aha
  %i.ahs = fdiv double %i.ahc, %i.ahl
  %i.aht = fmul double %i.ahr, %i.ahs
  %i.ahu = fcmp oge double %i.ay, %i.ahp
  %i.ahv = select i1 %i.ahu, double %i.ay, double %i.ahp
  %i.ahw = fcmp ugt double %i.aht, %i.ahv
  br i1 %i.ahw, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store double 0.000000e+00, ptr %i.adw, align 8, !tbaa !72
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %bb.bp, %bb.bq, %bb.bn, %._crit_edge1517
  %indvars.iv.next1603 = add nsw i64 %indvars.iv1602, -1
  %.not1455.not = icmp sgt i64 %indvars.iv1602, %i.ve
  br i1 %.not1455.not, label %bb.ar, label %._crit_edge1522, !llvm.loop !40

._crit_edge1522:                                  ; preds = %bb.br
  br i1 %i.bn, label %.thread1693, label %bb.bs

._crit_edge1522.thread:                           ; preds = %.loopexit1489
  br i1 %i.bn, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1522.thread, %._crit_edge1522
  %i.ahx = phi i32 [ %i.vb, %._crit_edge1522.thread ], [ %i.adr, %._crit_edge1522 ]
  %i.ahy = phi i32 [ %i.va, %._crit_edge1522.thread ], [ %i.zy, %._crit_edge1522 ]
  %i.ahz = phi i32 [ %i.uz, %._crit_edge1522.thread ], [ %i.zy, %._crit_edge1522 ] ; 4 uses
  %i.aia = phi i32 [ %i.uy, %._crit_edge1522.thread ], [ %i.zy, %._crit_edge1522 ] ; 2 uses
  %i.aib = phi i32 [ %i.ux, %._crit_edge1522.thread ], [ %i.adr, %._crit_edge1522 ] ; 2 uses
  %i.aic = phi i32 [ %i.uw, %._crit_edge1522.thread ], [ %i.adr, %._crit_edge1522 ] ; 2 uses
  %i.aid = load i32, ptr %0, align 4, !tbaa !70
  %.not1456 = icmp eq i32 %i.aid, 0
  br i1 %.not1456, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aie = load i32, ptr %3, align 4, !tbaa !70
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.aif = phi i32 [ %i.ahz, %bb.bs ], [ %i.ahy, %bb.bt ] ; 2 uses
  %.11388 = phi i32 [ %i.ahz, %bb.bs ], [ %i.aie, %bb.bt ]
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1531

.thread1693:                                      ; preds = %._crit_edge1522
  %.1477 = call i32 @llvm.smin.i32(i32 %i.df, i32 %i.zy)
  br label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.thread1693, %bb.bu
  %i.aig = phi i32 [ %i.zy, %.thread1693 ], [ %i.aia, %bb.bu ] ; 5 uses
  %i.aih = phi i32 [ %i.adr, %.thread1693 ], [ %i.aib, %bb.bu ] ; 12 uses
  %i.aii = phi i32 [ %i.adr, %.thread1693 ], [ %i.aic, %bb.bu ] ; 9 uses
  %.113881695 = phi i32 [ %.1477, %.thread1693 ], [ %.11388, %bb.bu ] ; 4 uses
  %i.aij = phi i32 [ %i.zy, %.thread1693 ], [ %i.aif, %bb.bu ] ; 5 uses
  %i.aik = phi i32 [ %i.zy, %.thread1693 ], [ %i.ahz, %bb.bu ] ; 5 uses
  %i.ail = add i32 %.013681550, -2
  %i.aim = sext i32 %.113881695 to i64
  %i.ain = sext i32 %i.eb to i64                  ; 2 uses
  %smin1609 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.ain) ; 5 uses
  %i.aio = sext i32 %i.dy to i64                  ; 4 uses
  %smin1974 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aio)
  %smin1975 = call i64 @llvm.smin.i64(i64 %smin1974, i64 %i.ain)
  %i.aip = mul i64 %i.cm, %smin1975
  %scevgep1976.a = getelementptr i8, ptr %scevgep1977.a, i64 %i.aip ; 3 uses
  %i.aiq = mul i64 %25, %smin1609
  %scevgep1978 = getelementptr i8, ptr %scevgep1980, i64 %i.aiq ; 3 uses
  %33 = trunc i64 %smin1609 to i32
  %34 = shl nsw i32 %33, 1
  %35 = add i32 %32, %34
  %i.air = call i32 @llvm.smax.i32(i32 %.113881695, i32 %i.aih)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar2355 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next2356, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.eg, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 5 uses
  %36 = call i32 @llvm.smax.i32(i32 %i.aih, i32 %indvars.iv1604)
  %smax2352 = sext i32 %36 to i64
  %37 = shl i32 %indvar2355, 1
  %38 = sub i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %smax2352, %39
  %41 = shl nsw i64 %40, 3
  %scevgep2357 = getelementptr i8, ptr %scevgep2325, i64 %41
  %i.ais = trunc nsw i64 %indvars.iv1610 to i32
  %i.ait = shl i32 %i.ais, 1                      ; 2 uses
  %i.aiu = add i32 %i.ait, %.013681550            ; 2 uses
  %i.aiv = call i32 @llvm.smax.i32(i32 %i.aih, i32 %i.aiu)
  %.not14681523 = icmp sgt i32 %i.aiv, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.aiw = call i32 @llvm.smax.i32(i32 %i.aih, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.aiw to i64              ; 7 uses
  %i.aix = add i32 %i.ail, %i.ait                 ; 2 uses
  %i.aiy = mul nsw i64 %indvars.iv1610, %i.bw
  %i.aiz = getelementptr [8 x i8], ptr %i.s, i64 %i.aiy ; 3 uses
  %i.aja = getelementptr i8, ptr %i.aiz, i64 8    ; 2 uses
  %i.ajb = getelementptr i8, ptr %i.aiz, i64 16   ; 3 uses
  %i.ajc = getelementptr i8, ptr %i.aiz, i64 24   ; 3 uses
  %i.ajd = sext i32 %i.aiu to i64                 ; 3 uses
  %i.aje = sext i32 %i.aix to i64                 ; 3 uses
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.aje ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.ajd ; 2 uses
  %i.ajf = sext i32 %i.aix to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.ajf ; 2 uses
  %i.ajg = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.ajh = sext i32 %i.ajg to i64
  %i.aji = add nsw i64 %i.ajh, 1
  %i.ajj = sub nsw i64 %i.aji, %smax1606          ; 3 uses
  %min.iters.check1984 = icmp ugt i64 %i.ajj, 5
  %or.cond2360 = select i1 %min.iters.check1984, i1 %ident.check.not, i1 false
  br i1 %or.cond2360, label %vector.memcheck1985, label %scalar.ph1983.preheader

vector.memcheck1985:                              ; preds = %.lr.ph1526
  %i.ajk = add nsw i64 %smax1606, %i.aje
  %i.ajl = shl nsw i64 %i.ajk, 3                  ; 2 uses
  %i.ajm = getelementptr i8, ptr %scevgep1982, i64 %i.ajl ; 2 uses
  %i.ajn = call i32 @llvm.smax.i32(i32 %i.air, i32 %indvars.iv1604)
  %i.ajo = sext i32 %i.ajn to i64                 ; 2 uses
  %i.ajp = add nsw i64 %i.ajo, %i.aje
  %i.ajq = shl nsw i64 %i.ajp, 3                  ; 2 uses
  %i.ajr = getelementptr i8, ptr %9, i64 %i.ajq   ; 2 uses
  %i.ajs = add nsw i64 %smax1606, %i.ajd
  %i.ajt = shl nsw i64 %i.ajs, 3
  %i.aju = getelementptr i8, ptr %scevgep1981, i64 %i.ajt ; 3 uses
  %i.ajv = add nsw i64 %i.ajo, %i.ajd
  %i.ajw = shl nsw i64 %i.ajv, 3
  %i.ajx = getelementptr i8, ptr %scevgep1982, i64 %i.ajw ; 3 uses
  %i.ajy = getelementptr i8, ptr %scevgep1973, i64 %i.ajl ; 2 uses
  %i.ajz = getelementptr i8, ptr %i.cj, i64 %i.ajq ; 2 uses
  %bound01989 = icmp ult ptr %i.ajm, %i.ajx
  %bound11990 = icmp ult ptr %i.aju, %i.ajr
  %found.conflict1991 = and i1 %bound01989, %bound11990
  %bound01993 = icmp ult ptr %i.ajm, %scevgep1976.a
  %bound11994 = icmp ult ptr %scevgep1978, %i.ajr
  %found.conflict1995 = and i1 %bound01993, %bound11994
  %i.aka = or i1 %found.conflict1995, %stride.check1996
  %conflict.rdx1997.a = or i1 %found.conflict1991, %i.aka
  %bound01998.a = icmp ult ptr %i.aju, %i.ajz
  %bound11999.a = icmp ult ptr %i.ajy, %i.ajx
  %found.conflict2000.a = and i1 %bound01998.a, %bound11999.a
  %conflict.rdx2001.a = or i1 %conflict.rdx1997.a, %found.conflict2000.a
  %bound02002 = icmp ult ptr %i.aju, %scevgep1976.a
  %bound12003 = icmp ult ptr %scevgep1978, %i.ajx
  %found.conflict2004 = and i1 %bound02002, %bound12003
  %conflict.rdx2005 = or i1 %conflict.rdx2001.a, %found.conflict2004
  %bound02006 = icmp ult ptr %i.ajy, %scevgep1976.a
  %bound12007 = icmp ult ptr %scevgep1978, %i.ajz
  %found.conflict2008 = and i1 %bound02006, %bound12007
  %conflict.rdx2009 = or i1 %conflict.rdx2005, %found.conflict2008
  br i1 %conflict.rdx2009, label %scalar.ph1983.preheader, label %vector.ph2010

vector.ph2010:                                    ; preds = %vector.memcheck1985
  %n.vec2011 = and i64 %i.ajj, -2                 ; 3 uses
  %i.akb = add nsw i64 %n.vec2011, %smax1606
  %i.akc = load double, ptr %i.aja, align 8, !tbaa !72, !alias.scope !98
  %broadcast.splatinsert2021 = insertelement <2 x double> poison, double %i.akc, i64 0
  %broadcast.splat2022 = shufflevector <2 x double> %broadcast.splatinsert2021, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akd = load double, ptr %i.ajb, align 8, !tbaa !72, !alias.scope !98
  %broadcast.splatinsert2016 = insertelement <2 x double> poison, double %i.akd, i64 0
  %broadcast.splat2017 = shufflevector <2 x double> %broadcast.splatinsert2016, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ake = load double, ptr %i.ajc, align 8, !tbaa !72, !alias.scope !98
  %broadcast.splatinsert2019 = insertelement <2 x double> poison, double %i.ake, i64 0
  %broadcast.splat2020 = shufflevector <2 x double> %broadcast.splatinsert2019, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %load_initial = load <2 x double>, ptr %scevgep2357, align 8
  br label %vector.body2012

vector.body2012:                                  ; preds = %vector.body2012, %vector.ph2010
  %store_forwarded = phi <2 x double> [ %load_initial, %vector.ph2010 ], [ %i.akr, %vector.body2012 ] ; 2 uses
  %index2013 = phi i64 [ 0, %vector.ph2010 ], [ %index.next2025, %vector.body2012 ] ; 2 uses
  %i.akf = add i64 %index2013, %smax1606          ; 3 uses
  %i.akg = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.akf
  %i.akh = getelementptr i8, ptr %i.akg, i64 8
  %i.aki = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.akf ; 3 uses
  %wide.load2015.a = load <2 x double>, ptr %i.aki, align 8, !tbaa !72, !alias.scope !99, !noalias !100
  %i.akj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2017, <2 x double> %wide.load2015.a, <2 x double> %store_forwarded)
  %i.akk = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.akf
  %i.akl = getelementptr i8, ptr %i.akk, i64 24   ; 3 uses
  %wide.load2018 = load <2 x double>, ptr %i.akl, align 8, !tbaa !72, !alias.scope !101, !noalias !98
  %i.akm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2020, <2 x double> %wide.load2018, <2 x double> %i.akj)
  %i.akn = fmul <2 x double> %broadcast.splat2022, %i.akm ; 2 uses
  %i.ako = fsub <2 x double> %store_forwarded, %i.akn
  store <2 x double> %i.ako, ptr %i.akh, align 8, !tbaa !72, !alias.scope !102, !noalias !103
  %wide.load2023 = load <2 x double>, ptr %i.aki, align 8, !tbaa !72, !alias.scope !99, !noalias !100
  %i.akp = fneg <2 x double> %i.akn               ; 2 uses
  %i.akq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akp, <2 x double> %broadcast.splat2017, <2 x double> %wide.load2023)
  store <2 x double> %i.akq, ptr %i.aki, align 8, !tbaa !72, !alias.scope !99, !noalias !100
  %wide.load2024 = load <2 x double>, ptr %i.akl, align 8, !tbaa !72, !alias.scope !101, !noalias !98
  %i.akr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akp, <2 x double> %broadcast.splat2020, <2 x double> %wide.load2024) ; 2 uses
  store <2 x double> %i.akr, ptr %i.akl, align 8, !tbaa !72, !alias.scope !101, !noalias !98
  %index.next2025 = add nuw i64 %index2013, 2     ; 2 uses
  %i.aks = icmp eq i64 %index.next2025, %n.vec2011
  br i1 %i.aks, label %middle.block2026, label %vector.body2012, !llvm.loop !46

middle.block2026:                                 ; preds = %vector.body2012
  %cmp.n2027 = icmp eq i64 %i.ajj, %n.vec2011
  br i1 %cmp.n2027, label %._crit_edge1527, label %scalar.ph1983.preheader

scalar.ph1983.preheader:                          ; preds = %vector.memcheck1985, %.lr.ph1526, %middle.block2026
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1985 ], [ %smax1606, %.lr.ph1526 ], [ %i.akb, %middle.block2026 ]
  br label %scalar.ph1983

scalar.ph1983:                                    ; preds = %scalar.ph1983.preheader, %scalar.ph1983
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1983 ], [ %indvars.iv1607.ph, %scalar.ph1983.preheader ] ; 3 uses
  %i.akt = load double, ptr %i.aja, align 8, !tbaa !72
  %i.aku = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.aku
  %i.akv = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.akw = load double, ptr %i.akv, align 8, !tbaa !72 ; 2 uses
  %i.akx = load double, ptr %i.ajb, align 8, !tbaa !72
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.aku ; 3 uses
  %i.aky = load double, ptr %gep1724, align 8, !tbaa !72
  %i.akz = call double @llvm.fmuladd.f64(double %i.akx, double %i.aky, double %i.akw)
  %i.ala = load double, ptr %i.ajc, align 8, !tbaa !72
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.aku
  %i.alb = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alc = load double, ptr %i.alb, align 8, !tbaa !72
  %i.ald = call double @llvm.fmuladd.f64(double %i.ala, double %i.alc, double %i.akz)
  %i.ale = fmul double %i.akt, %i.ald             ; 2 uses
  %i.alf = fsub double %i.akw, %i.ale
  store double %i.alf, ptr %i.akv, align 8, !tbaa !72
  %i.alg = load double, ptr %i.ajb, align 8, !tbaa !72
  %i.alh = load double, ptr %gep1724, align 8, !tbaa !72
  %i.ali = fneg double %i.ale                     ; 2 uses
  %i.alj = call double @llvm.fmuladd.f64(double %i.ali, double %i.alg, double %i.alh)
  store double %i.alj, ptr %gep1724, align 8, !tbaa !72
  %i.alk = load double, ptr %i.ajc, align 8, !tbaa !72
  %i.all = load double, ptr %i.alb, align 8, !tbaa !72
  %i.alm = call double @llvm.fmuladd.f64(double %i.ali, double %i.alk, double %i.all)
  store double %i.alm, ptr %i.alb, align 8, !tbaa !72
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aim
  br i1 %.not1468.not, label %scalar.ph1983, label %._crit_edge1527, !llvm.loop !47

._crit_edge1527:                                  ; preds = %scalar.ph1983, %middle.block2026, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.aio
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next2356 = add i32 %indvar2355, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !48

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.aln = add i32 %i.dl, %.013681550
  %i.alo = sub nsw i32 %i.aii, %.013691572
  %i.alp = load i32, ptr %i.h, align 4, !tbaa !70
  %.reass = add i32 %i.dm, %i.eg
  %i.alq = call i32 @llvm.smin.i32(i32 %i.alp, i32 %.reass) ; 2 uses
  %i.alr = add i32 %i.ef, -1
  %i.als = add i32 %indvars.iv1594, %i.aii
  %i.alt = zext i32 %i.alq to i64                 ; 2 uses
  %i.alu = sext i32 %i.eb to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.alu)
  %i.alv = sext i32 %i.dy to i64
  %i.alw = mul i64 %i.bz, %i.aio
  %scevgep1788 = getelementptr i8, ptr %scevgep, i64 %i.alw ; 3 uses
  %i.alx = mul i64 %i.cb, %smin1609
  %scevgep1790 = getelementptr i8, ptr %scevgep1789, i64 %i.alx ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.alr, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 2 uses
  %i.aly = trunc nsw i64 %indvars.iv1628 to i32
  %i.alz = shl i32 %i.aly, 1                      ; 2 uses
  %i.ama = add i32 %i.alz, -1
  %i.amb = call i32 @llvm.smax.i32(i32 %i.alo, i32 %i.ama)
  %i.amc = call i32 @llvm.smax.i32(i32 %i.amb, i32 1)
  %.not14661541 = icmp sgt i32 %i.amc, %i.alq
  br i1 %.not14661541, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.bw
  %smax1622 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.als)
  %smax1623 = call i32 @llvm.smax.i32(i32 %smax1622, i32 1)
  %i.amd = zext nneg i32 %smax1623 to i64         ; 9 uses
  %i.ame = add i32 %i.aln, %i.alz                 ; 3 uses
  %i.amf = mul nsw i64 %indvars.iv1628, %i.bw
  %i.amg = getelementptr [8 x i8], ptr %i.s, i64 %i.amf ; 3 uses
  %i.amh = getelementptr i8, ptr %i.amg, i64 8    ; 2 uses
  %i.ami = add nsw i32 %i.ame, 1
  %i.amj = mul nsw i32 %i.ami, %i.t
  %i.amk = getelementptr i8, ptr %i.amg, i64 16   ; 3 uses
  %i.aml = add nsw i32 %i.ame, 2
  %i.amm = mul nsw i32 %i.aml, %i.t
  %i.amn = getelementptr i8, ptr %i.amg, i64 24   ; 3 uses
  %i.amo = add nsw i32 %i.ame, 3
  %i.amp = mul nsw i32 %i.amo, %i.t
  %i.amq = sext i32 %i.amj to i64                 ; 3 uses
  %i.amr = sext i32 %i.amm to i64                 ; 3 uses
  %i.ams = sext i32 %i.amp to i64                 ; 3 uses
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.v, i64 %i.amq ; 2 uses
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.v, i64 %i.amr ; 2 uses
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.v, i64 %i.ams ; 2 uses
  %i.amt = call i64 @llvm.umax.i64(i64 %i.alt, i64 %i.amd) ; 4 uses
  %i.amu = add nuw nsw i64 %i.amt, 1
  %i.amv = sub nsw i64 %i.amu, %i.amd             ; 3 uses
  %min.iters.check = icmp ult i64 %i.amv, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1544
  %i.amw = add nsw i64 %i.amq, %i.amd
  %i.amx = shl nsw i64 %i.amw, 3
  %i.amy = getelementptr i8, ptr %i.v, i64 %i.amx ; 3 uses
  %i.amz = add nsw i64 %i.amt, %i.amq
  %i.ana = add nsw i64 %i.amz, %i.u
  %i.anb = shl nsw i64 %i.ana, 3
  %i.anc = getelementptr i8, ptr %scevgep1791, i64 %i.anb ; 3 uses
  %i.and = add nsw i64 %i.amr, %i.amd
  %i.ane = shl nsw i64 %i.and, 3
  %i.anf = getelementptr i8, ptr %i.v, i64 %i.ane ; 3 uses
  %i.ang = add nsw i64 %i.amt, %i.amr
  %i.anh = add nsw i64 %i.ang, %i.u
  %i.ani = shl nsw i64 %i.anh, 3
  %i.anj = getelementptr i8, ptr %scevgep1791, i64 %i.ani ; 3 uses
  %i.ank = add nsw i64 %i.ams, %i.amd
  %i.anl = shl nsw i64 %i.ank, 3
  %i.anm = getelementptr i8, ptr %i.v, i64 %i.anl ; 3 uses
  %i.ann = add nsw i64 %i.amt, %i.ams
  %i.ano = add nsw i64 %i.ann, %i.u
  %i.anp = shl nsw i64 %i.ano, 3
  %i.anq = getelementptr i8, ptr %scevgep1791, i64 %i.anp ; 3 uses
  %bound0 = icmp ult ptr %i.amy, %i.anj
  %bound1 = icmp ult ptr %i.anf, %i.anc
  %found.conflict = and i1 %bound0, %bound1
  %bound01792 = icmp ult ptr %i.amy, %i.anq
  %bound11793 = icmp ult ptr %i.anm, %i.anc
  %found.conflict1794 = and i1 %bound01792, %bound11793
  %conflict.rdx = or i1 %found.conflict, %found.conflict1794
  %bound01795 = icmp ult ptr %i.amy, %scevgep1788
  %bound11796 = icmp ult ptr %scevgep1790, %i.anc
  %found.conflict1797 = and i1 %bound01795, %bound11796
  %i.anr = or i1 %found.conflict1797, %stride.check
  %conflict.rdx1798 = or i1 %conflict.rdx, %i.anr
  %bound01799 = icmp ult ptr %i.anf, %i.anq
  %bound11800 = icmp ult ptr %i.anm, %i.anj
  %found.conflict1801 = and i1 %bound01799, %bound11800
  %conflict.rdx1802 = or i1 %conflict.rdx1798, %found.conflict1801
  %bound01803 = icmp ult ptr %i.anf, %scevgep1788
  %bound11804 = icmp ult ptr %scevgep1790, %i.anj
  %found.conflict1805 = and i1 %bound01803, %bound11804
  %conflict.rdx1806 = or i1 %conflict.rdx1802, %found.conflict1805
  %bound01807 = icmp ult ptr %i.anm, %scevgep1788
  %bound11808 = icmp ult ptr %scevgep1790, %i.anq
  %found.conflict1809 = and i1 %bound01807, %bound11808
  %conflict.rdx1810 = or i1 %conflict.rdx1806, %found.conflict1809
  br i1 %conflict.rdx1810, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amv, -4                     ; 3 uses
  %i.ans = add nsw i64 %n.vec, %i.amd
  %i.ant = load double, ptr %i.amh, align 8, !tbaa !72, !alias.scope !104
  %broadcast.splatinsert1815 = insertelement <4 x double> poison, double %i.ant, i64 0
  %broadcast.splat1816 = shufflevector <4 x double> %broadcast.splatinsert1815, <4 x double> poison, <4 x i32> zeroinitializer
  %i.anu = load double, ptr %i.amk, align 8, !tbaa !72, !alias.scope !104
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.anu, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.anv = load double, ptr %i.amn, align 8, !tbaa !72, !alias.scope !104
  %broadcast.splatinsert1813 = insertelement <4 x double> poison, double %i.anv, i64 0
  %broadcast.splat1814 = shufflevector <4 x double> %broadcast.splatinsert1813, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anw = add nuw i64 %index, %i.amd             ; 3 uses
  %i.anx = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %i.anw ; 2 uses
  %wide.load = load <4 x double>, ptr %i.anx, align 8, !tbaa !72, !alias.scope !105, !noalias !106 ; 2 uses
  %i.any = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %i.anw ; 3 uses
  %wide.load1811 = load <4 x double>, ptr %i.any, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.anz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1811, <4 x double> %wide.load)
  %i.aoa = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %i.anw ; 3 uses
  %wide.load1812 = load <4 x double>, ptr %i.aoa, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.aob = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1814, <4 x double> %wide.load1812, <4 x double> %i.anz)
  %i.aoc = fmul <4 x double> %broadcast.splat1816, %i.aob ; 2 uses
  %i.aod = fsub <4 x double> %wide.load, %i.aoc
  store <4 x double> %i.aod, ptr %i.anx, align 8, !tbaa !72, !alias.scope !105, !noalias !106
  %wide.load1817 = load <4 x double>, ptr %i.any, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.aoe = fneg <4 x double> %i.aoc               ; 2 uses
  %i.aof = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aoe, <4 x double> %broadcast.splat, <4 x double> %wide.load1817)
  store <4 x double> %i.aof, ptr %i.any, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %wide.load1818 = load <4 x double>, ptr %i.aoa, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.aog = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aoe, <4 x double> %broadcast.splat1814, <4 x double> %wide.load1818)
  store <4 x double> %i.aog, ptr %i.aoa, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aoh = icmp eq i64 %index.next, %n.vec
  br i1 %i.aoh, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amv, %n.vec
  br i1 %cmp.n, label %._crit_edge1545, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1544, %middle.block
  %indvars.iv1624.ph = phi i64 [ %i.amd, %vector.memcheck ], [ %i.amd, %.lr.ph1544 ], [ %i.ans, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %scalar.ph ], [ %indvars.iv1624.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aoi = load double, ptr %i.amh, align 8, !tbaa !72
  %gep1734 = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %indvars.iv1624 ; 2 uses
  %i.aoj = load double, ptr %gep1734, align 8, !tbaa !72 ; 2 uses
  %i.aok = load double, ptr %i.amk, align 8, !tbaa !72
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %indvars.iv1624 ; 3 uses
  %i.aol = load double, ptr %gep1736, align 8, !tbaa !72
  %i.aom = call double @llvm.fmuladd.f64(double %i.aok, double %i.aol, double %i.aoj)
  %i.aon = load double, ptr %i.amn, align 8, !tbaa !72
  %gep1738 = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %indvars.iv1624 ; 3 uses
  %i.aoo = load double, ptr %gep1738, align 8, !tbaa !72
  %i.aop = call double @llvm.fmuladd.f64(double %i.aon, double %i.aoo, double %i.aom)
  %i.aoq = fmul double %i.aoi, %i.aop             ; 2 uses
  %i.aor = fsub double %i.aoj, %i.aoq
  store double %i.aor, ptr %gep1734, align 8, !tbaa !72
  %i.aos = load double, ptr %i.amk, align 8, !tbaa !72
  %i.aot = load double, ptr %gep1736, align 8, !tbaa !72
  %i.aou = fneg double %i.aoq                     ; 2 uses
  %i.aov = call double @llvm.fmuladd.f64(double %i.aou, double %i.aos, double %i.aot)
  store double %i.aov, ptr %gep1736, align 8, !tbaa !72
  %i.aow = load double, ptr %i.amn, align 8, !tbaa !72
  %i.aox = load double, ptr %gep1738, align 8, !tbaa !72
  %i.aoy = call double @llvm.fmuladd.f64(double %i.aou, double %i.aow, double %i.aox)
  store double %i.aoy, ptr %gep1738, align 8, !tbaa !72
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  %.not1466.not = icmp samesign ult i64 %indvars.iv1624, %i.alt
  br i1 %.not1466.not, label %scalar.ph, label %._crit_edge1545, !llvm.loop !55

._crit_edge1545:                                  ; preds = %scalar.ph, %middle.block, %bb.bw
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1
  %.not1462.not = icmp sgt i64 %indvars.iv1628, %i.alv
  %indvars.iv.next1621 = add i32 %indvars.iv1620, -2
  br i1 %.not1462.not, label %bb.bw, label %.loopexit, !llvm.loop !56

bb.bx:                                            ; preds = %._crit_edge1532
  %i.aoz = load i32, ptr %1, align 4, !tbaa !70
  %.not1459 = icmp eq i32 %i.aoz, 0
  %or.cond = or i1 %.not1459, %.not14551518
  br i1 %or.cond, label %.loopexit, label %.lr.ph1540
end_hunk_1
begin_hunk_2_@dlaqr5_:bb.a
  %i.apz = mul nsw i32 %i.apy, %i.n
  %i.aqa = getelementptr i8, ptr %i.apw, i64 16   ; 7 uses
  %i.aqb = add i32 %i.apt, %.013681550
  %i.aqc = mul nsw i32 %i.aqb, %i.n
  %i.aqd = getelementptr i8, ptr %i.apw, i64 24   ; 7 uses
  %i.aqe = add nsw i32 %i.apu, 3
  %i.aqf = mul nsw i32 %i.aqe, %i.n
  %i.aqg = sext i32 %i.apz to i64                 ; 2 uses
  %i.aqh = sext i32 %i.aqc to i64                 ; 2 uses
  %i.aqi = sext i32 %i.aqf to i64                 ; 2 uses
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.p, i64 %i.aqg ; 4 uses
  %invariant.gep1729 = getelementptr [8 x i8], ptr %i.p, i64 %i.aqh ; 4 uses
  %invariant.gep1731 = getelementptr [8 x i8], ptr %i.p, i64 %i.aqi ; 4 uses
  br i1 %min.iters.check1879, label %scalar.ph1878.preheader, label %vector.memcheck1880

vector.memcheck1880:                              ; preds = %.lr.ph1536
  %i.aqj = shl nsw i64 %i.aqg, 3                  ; 2 uses
  %i.aqk = getelementptr i8, ptr %scevgep1877, i64 %i.aqj ; 3 uses
  %i.aql = getelementptr i8, ptr %scevgep1875, i64 %i.aqj ; 3 uses
  %i.aqm = shl nsw i64 %i.aqh, 3                  ; 2 uses
  %i.aqn = getelementptr i8, ptr %scevgep1877, i64 %i.aqm ; 3 uses
  %i.aqo = getelementptr i8, ptr %scevgep1875, i64 %i.aqm ; 3 uses
  %i.aqp = shl nsw i64 %i.aqi, 3                  ; 2 uses
  %i.aqq = getelementptr i8, ptr %scevgep1877, i64 %i.aqp ; 3 uses
  %i.aqr = getelementptr i8, ptr %scevgep1875, i64 %i.aqp ; 3 uses
  %bound01881 = icmp ult ptr %i.aqk, %i.aqo
  %bound11882 = icmp ult ptr %i.aqn, %i.aql
  %found.conflict1883 = and i1 %bound01881, %bound11882
  %bound01884 = icmp ult ptr %i.aqk, %i.aqr
  %bound11885 = icmp ult ptr %i.aqq, %i.aql
  %found.conflict1886 = and i1 %bound01884, %bound11885
  %conflict.rdx1887 = or i1 %found.conflict1883, %found.conflict1886
  %bound01888 = icmp ult ptr %i.aqk, %scevgep1871
  %bound11889 = icmp ult ptr %scevgep1873, %i.aql
  %found.conflict1890 = and i1 %bound01888, %bound11889
  %i.aqs = or i1 %found.conflict1890, %stride.check1891
  %conflict.rdx1892 = or i1 %conflict.rdx1887, %i.aqs
  %bound01893 = icmp ult ptr %i.aqn, %i.aqr
  %bound11894 = icmp ult ptr %i.aqq, %i.aqo
  %found.conflict1895 = and i1 %bound01893, %bound11894
  %conflict.rdx1896 = or i1 %conflict.rdx1892, %found.conflict1895
  %bound01897 = icmp ult ptr %i.aqn, %scevgep1871
  %bound11898 = icmp ult ptr %scevgep1873, %i.aqo
  %found.conflict1899 = and i1 %bound01897, %bound11898
  %conflict.rdx1900 = or i1 %conflict.rdx1896, %found.conflict1899
  %bound01901 = icmp ult ptr %i.aqq, %scevgep1871
  %bound11902 = icmp ult ptr %scevgep1873, %i.aqr
  %found.conflict1903 = and i1 %bound01901, %bound11902
  %conflict.rdx1904 = or i1 %conflict.rdx1900, %found.conflict1903
  br i1 %conflict.rdx1904, label %scalar.ph1878.preheader, label %vector.ph1905

vector.ph1905:                                    ; preds = %vector.memcheck1880
  %i.aqt = load double, ptr %i.apx, align 8, !tbaa !72, !alias.scope !110
  %broadcast.splatinsert1916 = insertelement <4 x double> poison, double %i.aqt, i64 0
  %broadcast.splat1917 = shufflevector <4 x double> %broadcast.splatinsert1916, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aqu = load double, ptr %i.aqa, align 8, !tbaa !72, !alias.scope !110
  %broadcast.splatinsert1911 = insertelement <4 x double> poison, double %i.aqu, i64 0
  %broadcast.splat1912 = shufflevector <4 x double> %broadcast.splatinsert1911, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aqv = load double, ptr %i.aqd, align 8, !tbaa !72, !alias.scope !110
  %broadcast.splatinsert1914 = insertelement <4 x double> poison, double %i.aqv, i64 0
  %broadcast.splat1915 = shufflevector <4 x double> %broadcast.splatinsert1914, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1907

vector.body1907:                                  ; preds = %vector.body1907, %vector.ph1905
  %index1908 = phi i64 [ 0, %vector.ph1905 ], [ %index.next1920, %vector.body1907 ] ; 2 uses
  %i.aqw = add i64 %index1908, %i.apd             ; 3 uses
  %i.aqx = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %i.aqw ; 2 uses
  %wide.load1909 = load <4 x double>, ptr %i.aqx, align 8, !tbaa !72, !alias.scope !111, !noalias !112 ; 2 uses
  %i.aqy = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %i.aqw ; 3 uses
  %wide.load1910 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.aqz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1912, <4 x double> %wide.load1910, <4 x double> %wide.load1909)
  %i.ara = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %i.aqw ; 3 uses
  %wide.load1913 = load <4 x double>, ptr %i.ara, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.arb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1915, <4 x double> %wide.load1913, <4 x double> %i.aqz)
  %i.arc = fmul <4 x double> %broadcast.splat1917, %i.arb ; 2 uses
  %i.ard = fsub <4 x double> %wide.load1909, %i.arc
  store <4 x double> %i.ard, ptr %i.aqx, align 8, !tbaa !72, !alias.scope !111, !noalias !112
  %wide.load1918 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.are = fneg <4 x double> %i.arc               ; 2 uses
  %i.arf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat1912, <4 x double> %wide.load1918)
  store <4 x double> %i.arf, ptr %i.aqy, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %wide.load1919 = load <4 x double>, ptr %i.ara, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.arg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat1915, <4 x double> %wide.load1919)
  store <4 x double> %i.arg, ptr %i.ara, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %index.next1920 = add nuw i64 %index1908, 4     ; 2 uses
  %i.arh = icmp eq i64 %index.next1920, %n.vec1906
  br i1 %i.arh, label %middle.block1921, label %vector.body1907, !llvm.loop !62

middle.block1921:                                 ; preds = %vector.body1907
  br i1 %cmp.n1922, label %._crit_edge1537, label %scalar.ph1878.preheader

scalar.ph1878.preheader:                          ; preds = %vector.memcheck1880, %.lr.ph1536, %middle.block1921
  %indvars.iv1612.ph = phi i64 [ %i.apd, %vector.memcheck1880 ], [ %i.apd, %.lr.ph1536 ], [ %i.apr, %middle.block1921 ] ; 6 uses
  %i.ari = trunc i64 %indvars.iv1612.ph to i32    ; 2 uses
  %i.arj = add i32 %i.apb, %i.ari
  %i.ark = and i32 %i.arj, 1
  %lcmp.mod2366.not.not = icmp eq i32 %i.ark, 0
  br i1 %lcmp.mod2366.not.not, label %scalar.ph1878.prol, label %scalar.ph1878.prol.loopexit

scalar.ph1878.prol:                               ; preds = %scalar.ph1878.preheader
  %i.arl = load double, ptr %i.apx, align 8, !tbaa !72
  %gep1728.prol = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612.ph ; 2 uses
  %i.arm = load double, ptr %gep1728.prol, align 8, !tbaa !72 ; 2 uses
  %i.arn = load double, ptr %i.aqa, align 8, !tbaa !72
  %gep1730.prol = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612.ph ; 3 uses
  %i.aro = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.arp = call double @llvm.fmuladd.f64(double %i.arn, double %i.aro, double %i.arm)
  %i.arq = load double, ptr %i.aqd, align 8, !tbaa !72
  %gep1732.prol = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612.ph ; 3 uses
  %i.arr = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.ars = call double @llvm.fmuladd.f64(double %i.arq, double %i.arr, double %i.arp)
  %i.art = fmul double %i.arl, %i.ars             ; 2 uses
  %i.aru = fsub double %i.arm, %i.art
  store double %i.aru, ptr %gep1728.prol, align 8, !tbaa !72
  %i.arv = load double, ptr %i.aqa, align 8, !tbaa !72
  %i.arw = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.arx = fneg double %i.art                     ; 2 uses
  %i.ary = call double @llvm.fmuladd.f64(double %i.arx, double %i.arv, double %i.arw)
  store double %i.ary, ptr %gep1730.prol, align 8, !tbaa !72
  %i.arz = load double, ptr %i.aqd, align 8, !tbaa !72
  %i.asa = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.asb = call double @llvm.fmuladd.f64(double %i.arx, double %i.arz, double %i.asa)
  store double %i.asb, ptr %gep1732.prol, align 8, !tbaa !72
  %indvars.iv.next1613.prol = add nsw i64 %indvars.iv1612.ph, 1
  br label %scalar.ph1878.prol.loopexit

scalar.ph1878.prol.loopexit:                      ; preds = %scalar.ph1878.prol, %scalar.ph1878.preheader
  %indvars.iv1612.unr = phi i64 [ %indvars.iv1612.ph, %scalar.ph1878.preheader ], [ %indvars.iv.next1613.prol, %scalar.ph1878.prol ]
  %i.asc = icmp eq i32 %i.apb, %i.ari
  br i1 %i.asc, label %._crit_edge1537, label %scalar.ph1878

scalar.ph1878:                                    ; preds = %scalar.ph1878.prol.loopexit, %scalar.ph1878
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %scalar.ph1878 ], [ %indvars.iv1612.unr, %scalar.ph1878.prol.loopexit ] ; 5 uses
  %i.asd = load double, ptr %i.apx, align 8, !tbaa !72
  %gep1728 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612 ; 2 uses
  %i.ase = load double, ptr %gep1728, align 8, !tbaa !72 ; 2 uses
  %i.asf = load double, ptr %i.aqa, align 8, !tbaa !72
  %gep1730 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612 ; 3 uses
  %i.asg = load double, ptr %gep1730, align 8, !tbaa !72
  %i.ash = call double @llvm.fmuladd.f64(double %i.asf, double %i.asg, double %i.ase)
  %i.asi = load double, ptr %i.aqd, align 8, !tbaa !72
  %gep1732 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612 ; 3 uses
  %i.asj = load double, ptr %gep1732, align 8, !tbaa !72
  %i.ask = call double @llvm.fmuladd.f64(double %i.asi, double %i.asj, double %i.ash)
  %i.asl = fmul double %i.asd, %i.ask             ; 2 uses
  %i.asm = fsub double %i.ase, %i.asl
  store double %i.asm, ptr %gep1728, align 8, !tbaa !72
  %i.asn = load double, ptr %i.aqa, align 8, !tbaa !72
  %i.aso = load double, ptr %gep1730, align 8, !tbaa !72
  %i.asp = fneg double %i.asl                     ; 2 uses
  %i.asq = call double @llvm.fmuladd.f64(double %i.asp, double %i.asn, double %i.aso)
  store double %i.asq, ptr %gep1730, align 8, !tbaa !72
  %i.asr = load double, ptr %i.aqd, align 8, !tbaa !72
  %i.ass = load double, ptr %gep1732, align 8, !tbaa !72
  %i.ast = call double @llvm.fmuladd.f64(double %i.asp, double %i.asr, double %i.ass)
  store double %i.ast, ptr %gep1732, align 8, !tbaa !72
  %indvars.iv.next1613 = add nsw i64 %indvars.iv1612, 1 ; 3 uses
  %i.asu = load double, ptr %i.apx, align 8, !tbaa !72
  %gep1728.1 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv.next1613 ; 2 uses
  %i.asv = load double, ptr %gep1728.1, align 8, !tbaa !72 ; 2 uses
  %i.asw = load double, ptr %i.aqa, align 8, !tbaa !72
  %gep1730.1 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv.next1613 ; 3 uses
  %i.asx = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.asy = call double @llvm.fmuladd.f64(double %i.asw, double %i.asx, double %i.asv)
  %i.asz = load double, ptr %i.aqd, align 8, !tbaa !72
  %gep1732.1 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv.next1613 ; 3 uses
  %i.ata = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.atb = call double @llvm.fmuladd.f64(double %i.asz, double %i.ata, double %i.asy)
  %i.atc = fmul double %i.asu, %i.atb             ; 2 uses
  %i.atd = fsub double %i.asv, %i.atc
  store double %i.atd, ptr %gep1728.1, align 8, !tbaa !72
  %i.ate = load double, ptr %i.aqa, align 8, !tbaa !72
  %i.atf = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.atg = fneg double %i.atc                     ; 2 uses
  %i.ath = call double @llvm.fmuladd.f64(double %i.atg, double %i.ate, double %i.atf)
  store double %i.ath, ptr %gep1730.1, align 8, !tbaa !72
  %i.ati = load double, ptr %i.aqd, align 8, !tbaa !72
  %i.atj = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.atk = call double @llvm.fmuladd.f64(double %i.atg, double %i.ati, double %i.atj)
  store double %i.atk, ptr %gep1732.1, align 8, !tbaa !72
  %indvars.iv.next1613.1 = add nsw i64 %indvars.iv1612, 2 ; 2 uses
  %lftr.wideiv1615.1 = trunc i64 %indvars.iv.next1613.1 to i32
  %exitcond1616.not.1 = icmp eq i32 %i.ape, %lftr.wideiv1615.1
  br i1 %exitcond1616.not.1, label %._crit_edge1537, label %scalar.ph1878, !llvm.loop !63

._crit_edge1537:                                  ; preds = %scalar.ph1878.prol.loopexit, %scalar.ph1878, %middle.block1921
  %indvars.iv.next1619 = add nsw i64 %indvars.iv1618, -1
  %.not1460.not = icmp sgt i64 %indvars.iv1618, %i.apg
  br i1 %.not1460.not, label %.lr.ph1536, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %._crit_edge1537, %._crit_edge1545, %bb.bu, %._crit_edge1522.thread, %.lr.ph1540, %.preheader, %bb.bx
  %i.atl = phi i32 [ %i.aig, %._crit_edge1545 ], [ %i.aia, %bb.bu ], [ %i.aig, %.lr.ph1540 ], [ %i.aig, %.preheader ], [ %i.aig, %bb.bx ], [ %i.uy, %._crit_edge1522.thread ], [ %i.aig, %._crit_edge1537 ] ; 2 uses
  %i.atm = phi i32 [ %i.aii, %._crit_edge1545 ], [ %i.aic, %bb.bu ], [ %i.aii, %.lr.ph1540 ], [ %i.aii, %.preheader ], [ %i.aii, %bb.bx ], [ %i.uw, %._crit_edge1522.thread ], [ %i.aii, %._crit_edge1537 ]
  %i.atn = phi i32 [ %i.aij, %._crit_edge1545 ], [ %i.aif, %bb.bu ], [ %i.aij, %.lr.ph1540 ], [ %i.aij, %.preheader ], [ %i.aij, %bb.bx ], [ %i.uy, %._crit_edge1522.thread ], [ %i.aij, %._crit_edge1537 ]
  %i.ato = phi i32 [ %i.aik, %._crit_edge1545 ], [ %i.ahz, %bb.bu ], [ %i.aik, %.lr.ph1540 ], [ %i.aik, %.preheader ], [ %i.aik, %bb.bx ], [ %i.uy, %._crit_edge1522.thread ], [ %i.aik, %._crit_edge1537 ]
  %i.atp = phi i32 [ %i.aii, %._crit_edge1545 ], [ %i.aib, %bb.bu ], [ %i.aih, %.lr.ph1540 ], [ %i.aih, %.preheader ], [ %i.aih, %bb.bx ], [ %i.ux, %._crit_edge1522.thread ], [ %i.aih, %._crit_edge1537 ]
  %i.atq = phi i32 [ %i.aii, %._crit_edge1545 ], [ %i.ahx, %bb.bu ], [ %i.aih, %.lr.ph1540 ], [ %i.aih, %.preheader ], [ %i.aih, %bb.bx ], [ %i.vb, %._crit_edge1522.thread ], [ %i.aih, %._crit_edge1537 ]
  %i.atr = add i32 %.013681550, 1
  %indvars.iv.next1587 = add i32 %indvars.iv1586, 1
  %exitcond1633.not = icmp eq i32 %.013681550, %smin1632
  %indvar.next2354 = add i32 %indvar2353, 1
  br i1 %exitcond1633.not, label %._crit_edge1555, label %bb.m, !llvm.loop !65

._crit_edge1555:                                  ; preds = %.loopexit, %bb.l
  %.pre1645 = phi i32 [ %i.di, %bb.l ], [ %i.atl, %.loopexit ] ; 2 uses
  br i1 %i.bn, label %bb.by, label %.loopexit1491

bb.by:                                            ; preds = %._crit_edge1555
  %i.ats = load i32, ptr %0, align 4, !tbaa !70
  %.not1427 = icmp eq i32 %i.ats, 0               ; 2 uses
  %.pre1644 = load i32, ptr %4, align 4, !tbaa !70 ; 3 uses
  %spec.select = select i1 %.not1427, ptr %5, ptr %3
  %spec.select1745 = select i1 %.not1427, i32 %.pre1644, i32 1 ; 3 uses
  %.21389 = load i32, ptr %spec.select, align 4, !tbaa !70 ; 4 uses
  %i.att = sub nsw i32 %.pre1644, %.013691572
  %i.atu = call i32 @llvm.smax.i32(i32 %i.att, i32 1) ; 7 uses
  %i.atv = sub nsw i32 %i.df, %.pre1645
  %i.atw = load i32, ptr %i.h, align 4, !tbaa !70
  %i.atx = call i32 @llvm.smax.i32(i32 %i.atv, i32 0)
  %i.aty = add i32 %i.atw, 1
  %i.atz = add nuw i32 %i.atu, %i.atx
  %i.aua = sub i32 %i.aty, %i.atz
  store i32 %i.aua, ptr %i.d, align 4, !tbaa !70
  %i.aub = load i32, ptr %22, align 4, !tbaa !70  ; 2 uses
  %.1478 = call i32 @llvm.smin.i32(i32 %i.df, i32 %.pre1645) ; 2 uses
  %i.auc = add i32 %.1478, 1                      ; 2 uses
  %i.aud = icmp slt i32 %i.aub, 0                 ; 2 uses
  %i.aue = icmp sge i32 %i.auc, %.21389
  %i.auf = icmp slt i32 %.1478, %.21389
  %.in14291556 = select i1 %i.aud, i1 %i.aue, i1 %i.auf
  br i1 %.in14291556, label %.lr.ph1559, label %._crit_edge1560

.lr.ph1559:                                       ; preds = %bb.by
  %i.aug = add i32 %.21389, 1
  %i.auh = mul i32 %i.atu, %i.br
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.aui
  %i.auk = add nsw i32 %i.atu, %.013691572
  %i.aul = sext i32 %i.auc to i64
  %i.aum = sext i32 %i.aub to i64
  %i.aun = sext i32 %.21389 to i64                ; 2 uses
  %i.auo = sext i32 %i.auk to i64
  %invariant.gep1739 = getelementptr [8 x i8], ptr %i.m, i64 %i.auo
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1559, %bb.bz
  %indvars.iv1635 = phi i64 [ %i.aul, %.lr.ph1559 ], [ %indvars.iv.next1636, %bb.bz ] ; 3 uses
  %i.aup = load i32, ptr %22, align 4, !tbaa !70
  %i.auq = trunc nsw i64 %indvars.iv1635 to i32
  %i.aur = sub i32 %i.aug, %i.auq
  %i.aus = call i32 @llvm.smin.i32(i32 %i.aup, i32 %i.aur)
  store i32 %i.aus, ptr %i.b, align 4, !tbaa !70
  %i.aut = mul nsw i64 %indvars.iv1635, %i.bt
  %gep1740 = getelementptr [8 x i8], ptr %invariant.gep1739, i64 %i.aut ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %i.auj, ptr noundef nonnull %18, ptr noundef %gep1740, ptr noundef nonnull %10, ptr noundef nonnull @c_b7, ptr noundef %23, ptr noundef %24) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef %23, ptr noundef %24, ptr noundef %gep1740, ptr noundef nonnull %10) #4
  %indvars.iv.next1636 = add nsw i64 %indvars.iv1635, %i.aum ; 3 uses
  %i.auu = icmp sge i64 %indvars.iv.next1636, %i.aun
  %i.auv = icmp sle i64 %indvars.iv.next1636, %i.aun
  %.in1429 = select i1 %i.aud, i1 %i.auu, i1 %i.auv
  br i1 %.in1429, label %bb.bz, label %._crit_edge1560.loopexit, !llvm.loop !66

._crit_edge1560.loopexit:                         ; preds = %bb.bz
  %.pre1646 = load i32, ptr %4, align 4, !tbaa !70
  br label %._crit_edge1560

._crit_edge1560:                                  ; preds = %._crit_edge1560.loopexit, %bb.by
  %i.auw = phi i32 [ %.pre1646, %._crit_edge1560.loopexit ], [ %.pre1644, %bb.by ]
  %.01369.1479 = call i32 @llvm.smax.i32(i32 %i.auw, i32 %.013691572) ; 3 uses
  %i.aux = add nsw i32 %.01369.1479, -1           ; 2 uses
  %i.auy = load i32, ptr %19, align 4, !tbaa !70  ; 2 uses
  %i.auz = icmp slt i32 %i.auy, 0                 ; 2 uses
  %i.ava = icmp sge i32 %spec.select1745, %i.aux
  %i.avb = icmp slt i32 %spec.select1745, %.01369.1479
  %.in14311561 = select i1 %i.auz, i1 %i.ava, i1 %i.avb
  br i1 %.in14311561, label %.lr.ph1564, label %._crit_edge1565

.lr.ph1564:                                       ; preds = %._crit_edge1560
  %i.avc = add nsw i32 %i.atu, %.013691572
  %i.avd = mul nsw i32 %i.avc, %i.k
  %i.ave = mul i32 %i.atu, %i.br
  %i.avf = sext i32 %i.ave to i64
  %i.avg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.avf
  %i.avh = sext i32 %spec.select1745 to i64
  %i.avi = sext i32 %i.auy to i64
  %i.avj = sext i32 %.01369.1479 to i64
  %i.avk = sext i32 %i.aux to i64
  %i.avl = sext i32 %i.avd to i64
  %invariant.gep1741 = getelementptr [8 x i8], ptr %i.m, i64 %i.avl
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1564, %bb.ca
  %indvars.iv1638 = phi i64 [ %i.avh, %.lr.ph1564 ], [ %indvars.iv.next1639, %bb.ca ] ; 3 uses
  %i.avm = load i32, ptr %19, align 4, !tbaa !70
  %i.avn = load i32, ptr %4, align 4, !tbaa !70
  %.01369.1480 = call i32 @llvm.smax.i32(i32 %i.avn, i32 %.013691572)
  %i.avo = trunc nsw i64 %indvars.iv1638 to i32
  %i.avp = sub nsw i32 %.01369.1480, %i.avo
  %i.avq = call i32 @llvm.smin.i32(i32 %i.avm, i32 %i.avp)
  store i32 %i.avq, ptr %i.b, align 4, !tbaa !70
  %gep1742 = getelementptr [8 x i8], ptr %invariant.gep1741, i64 %indvars.iv1638 ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %gep1742, ptr noundef nonnull %10, ptr noundef %i.avg, ptr noundef nonnull %18, ptr noundef nonnull @c_b7, ptr noundef %20, ptr noundef %21) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %20, ptr noundef %21, ptr noundef %gep1742, ptr noundef nonnull %10) #4
  %indvars.iv.next1639 = add nsw i64 %indvars.iv1638, %i.avi ; 3 uses
  %i.avr = icmp sge i64 %indvars.iv.next1639, %i.avk
  %i.avs = icmp slt i64 %indvars.iv.next1639, %i.avj
  %.in1431 = select i1 %i.auz, i1 %i.avr, i1 %i.avs
  br i1 %.in1431, label %bb.ca, label %._crit_edge1565, !llvm.loop !67

._crit_edge1565:                                  ; preds = %bb.ca, %._crit_edge1560
  %i.avt = load i32, ptr %1, align 4, !tbaa !70
  %.not1432 = icmp eq i32 %i.avt, 0
  br i1 %.not1432, label %.loopexit1491, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1565
  %i.avu = load i32, ptr %12, align 4, !tbaa !70  ; 3 uses
  %i.avv = load i32, ptr %19, align 4, !tbaa !70  ; 2 uses
  %i.avw = load i32, ptr %11, align 4, !tbaa !70  ; 3 uses
  %i.avx = icmp slt i32 %i.avv, 0                 ; 2 uses
  %i.avy = icmp sge i32 %i.avw, %i.avu
  %i.avz = icmp sle i32 %i.avw, %i.avu
  %.in14331566 = select i1 %i.avx, i1 %i.avy, i1 %i.avz
  br i1 %.in14331566, label %.lr.ph1569, label %.loopexit1491

.lr.ph1569:                                       ; preds = %bb.cb
  %i.awa = add nsw i32 %i.atu, %.013691572
  %i.awb = mul nsw i32 %i.awa, %i.n
  %i.awc = mul i32 %i.atu, %i.br
  %i.awd = sext i32 %i.awc to i64
  %i.awe = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.awd
  %i.awf = sext i32 %i.avw to i64
  %i.awg = sext i32 %i.avv to i64
  %i.awh = sext i32 %i.avu to i64                 ; 2 uses
  %i.awi = sext i32 %i.awb to i64
  %invariant.gep1743 = getelementptr [8 x i8], ptr %i.p, i64 %i.awi
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1569, %bb.cc
  %indvars.iv1641 = phi i64 [ %i.awf, %.lr.ph1569 ], [ %indvars.iv.next1642, %bb.cc ] ; 3 uses
  %i.awj = load i32, ptr %19, align 4, !tbaa !70
  %i.awk = load i32, ptr %12, align 4, !tbaa !70
  %i.awl = trunc nsw i64 %indvars.iv1641 to i32
  %reass.sub1577 = sub i32 %i.awk, %i.awl
  %i.awm = add i32 %reass.sub1577, 1
  %i.awn = call i32 @llvm.smin.i32(i32 %i.awj, i32 %i.awm)
  store i32 %i.awn, ptr %i.b, align 4, !tbaa !70
  %gep1744 = getelementptr [8 x i8], ptr %invariant.gep1743, i64 %indvars.iv1641 ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %gep1744, ptr noundef nonnull %14, ptr noundef %i.awe, ptr noundef nonnull %18, ptr noundef nonnull @c_b7, ptr noundef %20, ptr noundef nonnull %21) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %20, ptr noundef nonnull %21, ptr noundef %gep1744, ptr noundef nonnull %14) #4
  %indvars.iv.next1642 = add nsw i64 %indvars.iv1641, %i.awg ; 3 uses
  %i.awo = icmp sge i64 %indvars.iv.next1642, %i.awh
  %i.awp = icmp sle i64 %indvars.iv.next1642, %i.awh
  %.in1433 = select i1 %i.avx, i1 %i.awo, i1 %i.awp
  br i1 %.in1433, label %bb.cc, label %.loopexit1491, !llvm.loop !68

.loopexit1491:                                    ; preds = %bb.cc, %bb.cb, %._crit_edge1555, %._crit_edge1565
  %indvars.iv.next1595 = sub i32 %indvars.iv1594, %i.bk
  %.not1483 = icmp sgt i32 %i.dg, %i.bj
  %indvars.iv.next1585 = add i32 %indvars.iv1584, %i.bk
  %indvars.iv.next1631 = add i32 %indvars.iv1630, %i.bk
  %indvar.next = add i32 %indvar, 1
  br i1 %.not1483, label %.loopexit1492, label %bb.h, !llvm.loop !69

.loopexit1492:                                    ; preds = %.loopexit1491, %bb.g, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaqr1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !73}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !73, !78, !79}
!14 = distinct !{!14, !73, !78}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !73, !78, !79}
!20 = distinct !{!20, !73, !78}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !73, !78, !79}
!26 = distinct !{!26, !73, !78}
!27 = distinct !{!27, i1 false, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !73, !78, !79}
!32 = distinct !{!32, !73, !78}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !73, !78, !79}
!39 = distinct !{!39, !73, !78}
!40 = distinct !{!40, !73}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !73, !78, !79}
!47 = distinct !{!47, !73, !78}
!48 = distinct !{!48, !73}
!49 = distinct !{!49, i1 false, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !73, !78, !79}
!55 = distinct !{!55, !73, !78}
!56 = distinct !{!56, !73}
!57 = distinct !{!57, i1 false, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !73, !78, !79}
!63 = distinct !{!63, !73, !78}
!64 = distinct !{!64, !73}
!65 = distinct !{!65, !73}
!66 = distinct !{!66, !73}
!67 = distinct !{!67, !73}
!68 = distinct !{!68, !73}
!69 = distinct !{!69, !73}
!70 = !{!5, !5, i64 0}
!71 = !{!"double", !4, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!10}
!75 = !{!11}
!76 = !{!12, !10}
!77 = !{!12}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!16}
!81 = !{!17}
!82 = !{!18, !16}
!83 = !{!18}
!84 = !{!22}
!85 = !{!23}
!86 = !{!24, !22}
!87 = !{!24}
!88 = !{!28}
!89 = !{!29}
!90 = !{!30, !28}
!91 = !{!30}
!92 = !{!34}
!93 = !{!35}
!94 = !{!37, !36, !34}
!95 = !{!37}
!96 = !{!36, !34}
!97 = !{!36}
!98 = !{!42}
!99 = !{!43}
!100 = !{!44, !42}
!101 = !{!44}
!102 = !{!45}
!103 = !{!43, !42}
!104 = !{!50}
!105 = !{!51}
!106 = !{!53, !52, !50}
!107 = !{!53}
!108 = !{!52, !50}
!109 = !{!52}
!110 = !{!58}
!111 = !{!59}
!112 = !{!61, !60, !58}
!113 = !{!61}
!114 = !{!60, !58}
!115 = !{!60}
end_hunk_2
