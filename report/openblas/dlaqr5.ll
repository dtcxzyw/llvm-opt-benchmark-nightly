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
  %i.k = load i32, ptr %10, align 4, !tbaa !70    ; 30 uses
  %narrow = xor i32 %i.k, -1
  %i.l = sext i32 %narrow to i64                  ; 6 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %9, i64 %i.l ; 45 uses
  %i.n = load i32, ptr %14, align 4, !tbaa !70    ; 11 uses
  %narrow1418 = xor i32 %i.n, -1
  %i.o = sext i32 %narrow1418 to i64              ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %13, i64 %i.o ; 6 uses
  %i.q = load i32, ptr %16, align 4, !tbaa !70    ; 11 uses
  %narrow1419 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow1419 to i64              ; 8 uses
  %i.s = getelementptr [8 x i8], ptr %15, i64 %i.r ; 12 uses
  %i.t = load i32, ptr %18, align 4, !tbaa !70    ; 11 uses
  %narrow1424 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow1424 to i64              ; 8 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %17, i64 %i.u ; 8 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !70     ; 9 uses
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
  %reass.sub = sub i32 %i.ba, %i.bk               ; 4 uses
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
  %i.bx = shl nsw i64 %i.u, 3                     ; 3 uses
  %scevgep = getelementptr i8, ptr %17, i64 %i.bx
  %i.by = mul i32 %i.t, -2
  %scevgep1755 = getelementptr i8, ptr %17, i64 8
  %scevgep1757 = getelementptr i8, ptr %17, i64 %i.bx
  %scevgep1759 = getelementptr i8, ptr %17, i64 8
  %scevgep1761 = getelementptr i8, ptr %17, i64 %i.bx
  %scevgep1763 = getelementptr i8, ptr %17, i64 8
  %i.bz = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.ca = getelementptr i8, ptr %15, i64 %i.bz
  %scevgep1765 = getelementptr i8, ptr %i.ca, i64 8
  %i.cb = shl nsw i64 %i.bw, 3
  %i.cc = getelementptr i8, ptr %15, i64 %i.bz
  %scevgep1767 = getelementptr i8, ptr %i.cc, i64 32
  %i.cd = shl nsw i64 %i.bw, 3
  %i.ce = shl nsw i64 %i.o, 3                     ; 4 uses
  %scevgep1803 = getelementptr i8, ptr %13, i64 %i.ce
  %i.cf = and i32 %i.w, 2147483646
  %i.cg = mul i32 %i.n, -2
  %i.ch = add nsw i64 %i.ce, 8                    ; 3 uses
  %scevgep1810 = getelementptr i8, ptr %13, i64 %i.ch
  %scevgep1813.a = getelementptr i8, ptr %13, i64 %i.ce
  %scevgep1816.a = getelementptr i8, ptr %13, i64 %i.ch
  %scevgep1819.a = getelementptr i8, ptr %13, i64 %i.ce
  %scevgep1822.a = getelementptr i8, ptr %13, i64 %i.ch
  %i.ci = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %15, i64 %i.ci
  %scevgep1825.a = getelementptr i8, ptr %i.cj, i64 8
  %i.ck = shl nsw i64 %i.bw, 3
  %i.cl = getelementptr i8, ptr %15, i64 %i.ci
  %scevgep1827 = getelementptr i8, ptr %i.cl, i64 32
  %i.cm = shl nsw i64 %i.bw, 3
  %scevgep1881 = getelementptr i8, ptr %9, i64 -8
  %i.cn = xor i32 %i.bk, -1
  %i.co = add i32 %i.ba, %i.cn
  %i.cp = and i32 %i.w, 2147483646
  %scevgep1889.a = getelementptr i8, ptr %9, i64 -16
  %scevgep1891 = getelementptr i8, ptr %9, i64 -8
  %scevgep1893 = getelementptr i8, ptr %9, i64 8
  %scevgep1895 = getelementptr i8, ptr %9, i64 16
  %i.cq = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %15, i64 %i.cq
  %scevgep1897 = getelementptr i8, ptr %i.cr, i64 8
  %i.cs = shl nsw i64 %i.bw, 3
  %i.ct = getelementptr i8, ptr %15, i64 %i.cq
  %scevgep1899 = getelementptr i8, ptr %i.ct, i64 32
  %i.cu = shl nsw i64 %i.bw, 3
  %i.cv = shl nsw i64 %i.l, 3                     ; 3 uses
  %scevgep1955 = getelementptr i8, ptr %9, i64 %i.cv
  %i.cw = and i32 %i.w, 2147483646
  %i.cx = mul i32 %i.k, -2
  %scevgep1960.a = getelementptr i8, ptr %9, i64 8
  %scevgep1963.a = getelementptr i8, ptr %9, i64 %i.cv
  %scevgep1966.a = getelementptr i8, ptr %9, i64 8
  %scevgep1968.a = getelementptr i8, ptr %9, i64 %i.cv
  %scevgep1971.a = getelementptr i8, ptr %9, i64 8
  %i.cy = shl nsw i64 %i.r, 3                     ; 2 uses
  %i.cz = getelementptr i8, ptr %15, i64 %i.cy
  %scevgep1973.a = getelementptr i8, ptr %i.cz, i64 8
  %i.da = shl nsw i64 %i.bw, 3
  %i.db = getelementptr i8, ptr %15, i64 %i.cy
  %scevgep1975 = getelementptr i8, ptr %i.db, i64 32
  %i.dc = shl nsw i64 %i.bw, 3
  %i.dd = shl nsw i64 %i.u, 3                     ; 2 uses
  %scevgep2029 = getelementptr i8, ptr %17, i64 %i.dd
  %scevgep2031 = getelementptr i8, ptr %17, i64 8
  %scevgep2034 = getelementptr i8, ptr %17, i64 %i.dd
  %scevgep2036.a = getelementptr i8, ptr %17, i64 8
  %i.de = shl nsw i64 %i.r, 3
  %i.df = getelementptr i8, ptr %15, i64 %i.de
  %scevgep2038 = getelementptr i8, ptr %i.df, i64 24
  %i.dg = shl nsw i64 %i.o, 3                     ; 3 uses
  %scevgep2074 = getelementptr i8, ptr %13, i64 %i.dg
  %i.dh = add nsw i64 %i.dg, 8                    ; 2 uses
  %scevgep2076 = getelementptr i8, ptr %13, i64 %i.dh
  %scevgep2078 = getelementptr i8, ptr %13, i64 %i.dg
  %scevgep2080 = getelementptr i8, ptr %13, i64 %i.dh
  %i.di = shl nsw i64 %i.r, 3
  %i.dj = add nsw i64 %i.di, 24                   ; 2 uses
  %scevgep2082 = getelementptr i8, ptr %15, i64 %i.dj
  %scevgep2120 = getelementptr i8, ptr %9, i64 -16
  %scevgep2122 = getelementptr i8, ptr %9, i64 -8
  %scevgep2126 = getelementptr i8, ptr %9, i64 8
  %scevgep2128 = getelementptr i8, ptr %15, i64 %i.dj
  %i.dk = shl nsw i64 %i.l, 3                     ; 2 uses
  %scevgep2162 = getelementptr i8, ptr %9, i64 %i.dk
  %scevgep2165 = getelementptr i8, ptr %9, i64 8
  %scevgep2168 = getelementptr i8, ptr %9, i64 %i.dk
  %scevgep2171 = getelementptr i8, ptr %9, i64 8
  %i.dl = shl nsw i64 %i.r, 3
  %i.dm = getelementptr i8, ptr %15, i64 %i.dl
  %scevgep2173.a = getelementptr i8, ptr %i.dm, i64 24
  %ident.check2118.not = icmp eq i32 %i.k, 1
  %stride.check1987 = icmp sgt i32 %i.q, 0
  %ident.check.not = icmp eq i32 %i.k, 1
  %stride.check1913 = icmp sgt i32 %i.q, 0
  %stride.check1839 = icmp sgt i32 %i.q, 0
  %stride.check = icmp sgt i32 %i.q, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph1575, %.loopexit1491
  %indvar1805 = phi i32 [ 0, %.lr.ph1575 ], [ %indvar.next1806, %.loopexit1491 ] ; 4 uses
  %indvars.iv1630 = phi i32 [ %i.ba, %.lr.ph1575 ], [ %indvars.iv.next1631, %.loopexit1491 ] ; 2 uses
  %indvars.iv1594 = phi i32 [ %.01369.neg1570, %.lr.ph1575 ], [ %indvars.iv.next1595, %.loopexit1491 ] ; 5 uses
  %indvars.iv1584 = phi i32 [ %i.bs, %.lr.ph1575 ], [ %indvars.iv.next1585, %.loopexit1491 ] ; 2 uses
  %.013691572 = phi i32 [ %i.bl, %.lr.ph1575 ], [ %i.dz, %.loopexit1491 ] ; 14 uses
  %i.dn = mul i32 %i.cw, %indvar1805
  %i.do = add i32 %reass.sub, %i.dn
  %i.dp = mul i32 %i.cp, %indvar1805
  %i.dq = add i32 %i.co, %i.dp
  %i.dr = mul i32 %i.cf, %indvar1805
  %i.ds = add i32 %reass.sub, %i.dr
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = load i32, ptr %0, align 4, !tbaa !70
  %.not1422 = icmp eq i32 %i.dt, 0
  br i1 %.not1422, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.du = load i32, ptr %4, align 4, !tbaa !70
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.01385.ph = phi i32 [ 1, %bb.i ], [ %i.du, %bb.j ]
  %i.dv = load i32, ptr %i.h, align 4, !tbaa !70
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.dw = load i32, ptr %4, align 4, !tbaa !70
  %.01369. = call i32 @llvm.smax.i32(i32 %i.dw, i32 %.013691572)
  %i.dx = load i32, ptr %i.h, align 4, !tbaa !70
  call void @dlaset_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b7, ptr noundef nonnull @c_b8, ptr noundef %17, ptr noundef nonnull %18) #4
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.pn = phi i32 [ %i.dv, %.thread ], [ %i.dx, %bb.k ]
  %.013851482 = phi i32 [ %.01385.ph, %.thread ], [ %.01369., %bb.k ] ; 3 uses
  %i.dy = add i32 %.pn, %.013691572               ; 4 uses
  %i.dz = add nsw i32 %.013691572, %i.bk          ; 3 uses
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = load i32, ptr %5, align 4, !tbaa !70    ; 5 uses
  %i.ec = add nsw i32 %i.eb, -2                   ; 2 uses
  %i.ed = call i32 @llvm.smin.i32(i32 %i.ea, i32 %i.ec)
  %.not14261549 = icmp sgt i32 %.013691572, %i.ed
  br i1 %.not14261549, label %._crit_edge1555, label %.lr.ph1554

.lr.ph1554:                                       ; preds = %bb.l
  %i.ee = add i32 %indvars.iv1594, -2
  %i.ef = add i32 %indvars.iv1594, 3
  %i.eg = sext i32 %.013851482 to i64             ; 13 uses
  %smin1632 = call i32 @llvm.smin.i32(i32 %indvars.iv1630, i32 %i.ec)
  %.pre = load i32, ptr %4, align 4, !tbaa !70    ; 3 uses
  %i.eh = shl nsw i64 %i.eg, 3                    ; 5 uses
  %scevgep1956 = getelementptr i8, ptr %scevgep1955, i64 %i.eh
  %scevgep1964 = getelementptr i8, ptr %scevgep1963.a, i64 %i.eh
  %scevgep1969.a = getelementptr i8, ptr %scevgep1968.a, i64 %i.eh
  %scevgep2163 = getelementptr i8, ptr %scevgep2162, i64 %i.eh
  %scevgep2169 = getelementptr i8, ptr %scevgep2168, i64 %i.eh
  %invariant.op2219 = sub i64 1, %i.eg
  %invariant.op = sub i64 1, %i.eg
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph1554, %.loopexit
  %indvar = phi i32 [ 0, %.lr.ph1554 ], [ %indvar.next, %.loopexit ] ; 7 uses
  %i.ei = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.auu, %.loopexit ]
  %i.ej = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.aux, %.loopexit ]
  %i.ek = phi i32 [ %i.eb, %.lr.ph1554 ], [ %i.aut, %.loopexit ]
  %i.el = phi i32 [ %i.eb, %.lr.ph1554 ], [ %i.auw, %.loopexit ]
  %i.em = phi i32 [ %i.eb, %.lr.ph1554 ], [ %i.auv, %.loopexit ] ; 3 uses
  %i.en = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.auy, %.loopexit ] ; 3 uses
  %indvars.iv1586 = phi i32 [ %indvars.iv1584, %.lr.ph1554 ], [ %indvars.iv.next1587, %.loopexit ] ; 4 uses
  %.013681550 = phi i32 [ %.013691572, %.lr.ph1554 ], [ %i.auz, %.loopexit ] ; 17 uses
  %i.eo = add i32 %i.do, %indvar
  %i.ep = add i32 %i.dq, %indvar
  %i.eq = add i32 %i.ds, %indvar
  %i.er = add i32 %indvar, -1
  %i.es = add i32 %indvar, 1
  %i.et = sub nsw i32 %i.en, %.013681550          ; 2 uses
  %i.eu = sdiv i32 %i.et, 2
  %i.ev = add nsw i32 %i.eu, 1
  %.inv = icmp sgt i32 %i.et, 1
  %i.ew = select i1 %.inv, i32 %i.ev, i32 1       ; 5 uses
  %i.ex = xor i32 %.013681550, -1
  %i.ey = add i32 %i.em, %i.ex
  %i.ez = sdiv i32 %i.ey, 2                       ; 6 uses
  %i.fa = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.ez) ; 3 uses
  %i.fb = add nsw i32 %i.fa, 1                    ; 6 uses
  %i.fc = icmp slt i32 %i.ez, %i.bh
  %i.fd = shl i32 %i.fa, 1                        ; 3 uses
  %i.fe = add i32 %i.fd, %.013681550              ; 33 uses
  %i.ff = add nsw i32 %i.em, -2
  %i.fg = icmp eq i32 %i.fe, %i.ff
  %i.fh = select i1 %i.fc, i1 %i.fg, i1 false
  br i1 %i.fh, label %bb.n, label %.loopexit1489

bb.n:                                             ; preds = %bb.m
  %i.fi = add nsw i32 %i.en, -1
  %i.fj = icmp eq i32 %i.fe, %i.fi
end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  %i.rr = load double, ptr %i.pv, align 8, !tbaa !72
  %i.rs = load double, ptr %gep1714, align 8, !tbaa !72
  %i.rt = fneg double %i.rp
  %i.ru = call double @llvm.fmuladd.f64(double %i.rt, double %i.rr, double %i.rs)
  store double %i.ru, ptr %gep1714, align 8, !tbaa !72
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1
  %.not1454.not = icmp samesign ult i64 %indvars.iv1596, %i.qc
  br i1 %.not1454.not, label %scalar.ph2051, label %.loopexit1489, !llvm.loop !26

bb.ap:                                            ; preds = %bb.an
  %i.rv = load i32, ptr %1, align 4, !tbaa !70
  %.not1451 = icmp eq i32 %i.rv, 0
  br i1 %.not1451, label %.loopexit1489, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rw = load i32, ptr %12, align 4, !tbaa !70   ; 6 uses
  %i.rx = load i32, ptr %11, align 4, !tbaa !70   ; 4 uses
  %.not14521505 = icmp sgt i32 %i.rx, %i.rw
  br i1 %.not14521505, label %.loopexit1489, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %bb.aq
  %i.ry = mul nsw i32 %i.fb, %i.q
  %i.rz = sext i32 %i.ry to i64                   ; 2 uses
  %i.sa = getelementptr [8 x i8], ptr %i.s, i64 %i.rz ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 8      ; 6 uses
  %i.sc = mul nsw i32 %i.is, %i.n
  %i.sd = getelementptr i8, ptr %i.sa, i64 16     ; 7 uses
  %i.se = add nsw i32 %i.fe, 2
  %i.sf = mul nsw i32 %i.se, %i.n
  %i.sg = sext i32 %i.rx to i64                   ; 6 uses
  %i.sh = sext i32 %i.sc to i64                   ; 2 uses
  %i.si = sext i32 %i.sf to i64                   ; 2 uses
  %i.sj = add i32 %i.rw, 1
  %invariant.gep1707 = getelementptr [8 x i8], ptr %i.p, i64 %i.sh ; 4 uses
  %invariant.gep1709 = getelementptr [8 x i8], ptr %i.p, i64 %i.si ; 4 uses
  %i.sk = sub i32 %i.rw, %i.rx                    ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %min.iters.check2096 = icmp ult i32 %i.sk, 7
  br i1 %min.iters.check2096, label %scalar.ph2095.preheader, label %vector.memcheck2073

vector.memcheck2073:                              ; preds = %.lr.ph1508
  %i.sn = add nsw i64 %i.sg, %i.sh
  %i.so = shl nsw i64 %i.sn, 3                    ; 2 uses
  %scevgep2075 = getelementptr i8, ptr %scevgep2074, i64 %i.so ; 2 uses
  %i.sp = sub i32 %i.rw, %i.rx
  %i.sq = zext i32 %i.sp to i64
  %i.sr = shl nuw nsw i64 %i.sq, 3                ; 2 uses
  %i.ss = getelementptr i8, ptr %scevgep2076, i64 %i.so
  %scevgep2077 = getelementptr i8, ptr %i.ss, i64 %i.sr ; 2 uses
  %i.st = add nsw i64 %i.sg, %i.si
  %i.su = shl nsw i64 %i.st, 3                    ; 2 uses
  %scevgep2079 = getelementptr i8, ptr %scevgep2078, i64 %i.su ; 2 uses
  %i.sv = getelementptr i8, ptr %scevgep2080, i64 %i.su
  %scevgep2081 = getelementptr i8, ptr %i.sv, i64 %i.sr ; 2 uses
  %i.sw = shl nsw i64 %i.rz, 3
  %scevgep2083 = getelementptr i8, ptr %scevgep2082, i64 %i.sw ; 2 uses
  %bound02084 = icmp ult ptr %scevgep2075, %scevgep2081
  %bound12085 = icmp ult ptr %scevgep2079, %scevgep2077
  %found.conflict2086 = and i1 %bound02084, %bound12085
  %bound02087 = icmp ult ptr %scevgep2075, %scevgep2083
  %bound12088 = icmp ult ptr %i.sb, %scevgep2077
  %found.conflict2089 = and i1 %bound02087, %bound12088
  %conflict.rdx2090 = or i1 %found.conflict2086, %found.conflict2089
  %bound02091 = icmp ult ptr %scevgep2079, %scevgep2083
  %bound12092 = icmp ult ptr %i.sb, %scevgep2081
  %found.conflict2093 = and i1 %bound02091, %bound12092
  %conflict.rdx2094 = or i1 %conflict.rdx2090, %found.conflict2093
  br i1 %conflict.rdx2094, label %scalar.ph2095.preheader, label %vector.ph2097

vector.ph2097:                                    ; preds = %vector.memcheck2073
  %n.vec2098 = and i64 %i.sm, 8589934584          ; 3 uses
  %i.sx = add nsw i64 %n.vec2098, %i.sg
  %i.sy = load double, ptr %i.sb, align 8, !tbaa !72, !alias.scope !88
  %broadcast.splatinsert2107 = insertelement <4 x double> poison, double %i.sy, i64 0
  %broadcast.splat2108 = shufflevector <4 x double> %broadcast.splatinsert2107, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sz = load double, ptr %i.sd, align 8, !tbaa !72, !alias.scope !88 ; 2 uses
  %broadcast.splatinsert2105 = insertelement <4 x double> poison, double %i.sz, i64 0
  %broadcast.splat2106 = shufflevector <4 x double> %broadcast.splatinsert2105, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2111 = insertelement <4 x double> poison, double %i.sz, i64 0
  %broadcast.splat2112 = shufflevector <4 x double> %broadcast.splatinsert2111, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2099

vector.body2099:                                  ; preds = %vector.body2099, %vector.ph2097
  %index2100 = phi i64 [ 0, %vector.ph2097 ], [ %index.next2113, %vector.body2099 ] ; 2 uses
  %i.ta = add i64 %index2100, %i.sg               ; 2 uses
  %i.tb = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %i.ta ; 3 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 32     ; 2 uses
  %wide.load2101 = load <4 x double>, ptr %i.tb, align 8, !tbaa !72, !alias.scope !89, !noalias !90 ; 2 uses
  %wide.load2102 = load <4 x double>, ptr %i.tc, align 8, !tbaa !72, !alias.scope !89, !noalias !90 ; 2 uses
  %i.td = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %i.ta ; 4 uses
  %i.te = getelementptr i8, ptr %i.td, i64 32     ; 3 uses
  %wide.load2103 = load <4 x double>, ptr %i.td, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %wide.load2104 = load <4 x double>, ptr %i.te, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %i.tf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2106, <4 x double> %wide.load2103, <4 x double> %wide.load2101)
  %i.tg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2106, <4 x double> %wide.load2104, <4 x double> %wide.load2102)
  %i.th = fmul <4 x double> %broadcast.splat2108, %i.tf ; 2 uses
  %i.ti = fmul <4 x double> %broadcast.splat2108, %i.tg ; 2 uses
  %i.tj = fsub <4 x double> %wide.load2101, %i.th
  %i.tk = fsub <4 x double> %wide.load2102, %i.ti
  store <4 x double> %i.tj, ptr %i.tb, align 8, !tbaa !72, !alias.scope !89, !noalias !90
  store <4 x double> %i.tk, ptr %i.tc, align 8, !tbaa !72, !alias.scope !89, !noalias !90
  %wide.load2109 = load <4 x double>, ptr %i.td, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %wide.load2110 = load <4 x double>, ptr %i.te, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %i.tl = fneg <4 x double> %i.th
  %i.tm = fneg <4 x double> %i.ti
  %i.tn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tl, <4 x double> %broadcast.splat2112, <4 x double> %wide.load2109)
  %i.to = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tm, <4 x double> %broadcast.splat2112, <4 x double> %wide.load2110)
  store <4 x double> %i.tn, ptr %i.td, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  store <4 x double> %i.to, ptr %i.te, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %index.next2113 = add nuw i64 %index2100, 8     ; 2 uses
  %i.tp = icmp eq i64 %index.next2113, %n.vec2098
  br i1 %i.tp, label %middle.block2114, label %vector.body2099, !llvm.loop !31

middle.block2114:                                 ; preds = %vector.body2099
  %cmp.n2115 = icmp eq i64 %i.sm, %n.vec2098
  br i1 %cmp.n2115, label %.loopexit1489, label %scalar.ph2095.preheader

scalar.ph2095.preheader:                          ; preds = %vector.memcheck2073, %.lr.ph1508, %middle.block2114
  %indvars.iv1591.ph = phi i64 [ %i.sg, %vector.memcheck2073 ], [ %i.sg, %.lr.ph1508 ], [ %i.sx, %middle.block2114 ] ; 5 uses
  %i.tq = trunc i64 %indvars.iv1591.ph to i32     ; 2 uses
  %i.tr = add i32 %i.rw, %i.tq
  %i.ts = and i32 %i.tr, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ts, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph2095.prol, label %scalar.ph2095.prol.loopexit

scalar.ph2095.prol:                               ; preds = %scalar.ph2095.preheader
  %i.tt = load double, ptr %i.sb, align 8, !tbaa !72
  %gep1708.prol = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591.ph ; 2 uses
  %i.tu = load double, ptr %gep1708.prol, align 8, !tbaa !72 ; 2 uses
  %i.tv = load double, ptr %i.sd, align 8, !tbaa !72
  %gep1710.prol = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591.ph ; 3 uses
  %i.tw = load double, ptr %gep1710.prol, align 8, !tbaa !72
  %i.tx = call double @llvm.fmuladd.f64(double %i.tv, double %i.tw, double %i.tu)
  %i.ty = fmul double %i.tt, %i.tx                ; 2 uses
  %i.tz = fsub double %i.tu, %i.ty
  store double %i.tz, ptr %gep1708.prol, align 8, !tbaa !72
  %i.ua = load double, ptr %i.sd, align 8, !tbaa !72
  %i.ub = load double, ptr %gep1710.prol, align 8, !tbaa !72
  %i.uc = fneg double %i.ty
  %i.ud = call double @llvm.fmuladd.f64(double %i.uc, double %i.ua, double %i.ub)
  store double %i.ud, ptr %gep1710.prol, align 8, !tbaa !72
  %indvars.iv.next1592.prol = add nsw i64 %indvars.iv1591.ph, 1
  br label %scalar.ph2095.prol.loopexit

scalar.ph2095.prol.loopexit:                      ; preds = %scalar.ph2095.prol, %scalar.ph2095.preheader
  %indvars.iv1591.unr = phi i64 [ %indvars.iv1591.ph, %scalar.ph2095.preheader ], [ %indvars.iv.next1592.prol, %scalar.ph2095.prol ]
  %i.ue = icmp eq i32 %i.rw, %i.tq
  br i1 %i.ue, label %.loopexit1489, label %scalar.ph2095

scalar.ph2095:                                    ; preds = %scalar.ph2095.prol.loopexit, %scalar.ph2095
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592.1, %scalar.ph2095 ], [ %indvars.iv1591.unr, %scalar.ph2095.prol.loopexit ] ; 4 uses
  %i.uf = load double, ptr %i.sb, align 8, !tbaa !72
  %gep1708 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591 ; 2 uses
  %i.ug = load double, ptr %gep1708, align 8, !tbaa !72 ; 2 uses
  %i.uh = load double, ptr %i.sd, align 8, !tbaa !72
  %gep1710 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591 ; 3 uses
  %i.ui = load double, ptr %gep1710, align 8, !tbaa !72
  %i.uj = call double @llvm.fmuladd.f64(double %i.uh, double %i.ui, double %i.ug)
  %i.uk = fmul double %i.uf, %i.uj                ; 2 uses
  %i.ul = fsub double %i.ug, %i.uk
  store double %i.ul, ptr %gep1708, align 8, !tbaa !72
  %i.um = load double, ptr %i.sd, align 8, !tbaa !72
  %i.un = load double, ptr %gep1710, align 8, !tbaa !72
  %i.uo = fneg double %i.uk
  %i.up = call double @llvm.fmuladd.f64(double %i.uo, double %i.um, double %i.un)
  store double %i.up, ptr %gep1710, align 8, !tbaa !72
  %indvars.iv.next1592 = add nsw i64 %indvars.iv1591, 1 ; 2 uses
  %i.uq = load double, ptr %i.sb, align 8, !tbaa !72
  %gep1708.1 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv.next1592 ; 2 uses
  %i.ur = load double, ptr %gep1708.1, align 8, !tbaa !72 ; 2 uses
  %i.us = load double, ptr %i.sd, align 8, !tbaa !72
  %gep1710.1 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv.next1592 ; 3 uses
  %i.ut = load double, ptr %gep1710.1, align 8, !tbaa !72
  %i.uu = call double @llvm.fmuladd.f64(double %i.us, double %i.ut, double %i.ur)
  %i.uv = fmul double %i.uq, %i.uu                ; 2 uses
  %i.uw = fsub double %i.ur, %i.uv
  store double %i.uw, ptr %gep1708.1, align 8, !tbaa !72
  %i.ux = load double, ptr %i.sd, align 8, !tbaa !72
  %i.uy = load double, ptr %gep1710.1, align 8, !tbaa !72
  %i.uz = fneg double %i.uv
  %i.va = call double @llvm.fmuladd.f64(double %i.uz, double %i.ux, double %i.uy)
  store double %i.va, ptr %gep1710.1, align 8, !tbaa !72
  %indvars.iv.next1592.1 = add nsw i64 %indvars.iv1591, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1592.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.sj, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %.loopexit1489, label %scalar.ph2095, !llvm.loop !32

.loopexit1489:                                    ; preds = %scalar.ph2095.prol.loopexit, %scalar.ph2095, %scalar.ph2051, %middle.block2114, %middle.block2070, %bb.aq, %bb.ao, %bb.ap, %bb.m
  %i.vb = phi i32 [ %i.ku, %middle.block2070 ], [ %i.ei, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2114 ], [ %i.ku, %scalar.ph2051 ], [ %i.ku, %scalar.ph2095 ], [ %i.ku, %scalar.ph2095.prol.loopexit ] ; 2 uses
  %i.vc = phi i32 [ %i.ku, %middle.block2070 ], [ %i.ej, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2114 ], [ %i.ku, %scalar.ph2051 ], [ %i.ku, %scalar.ph2095 ], [ %i.ku, %scalar.ph2095.prol.loopexit ] ; 2 uses
  %i.vd = phi i32 [ %i.gp, %middle.block2070 ], [ %i.ek, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2114 ], [ %i.gp, %scalar.ph2051 ], [ %i.gp, %scalar.ph2095 ], [ %i.gp, %scalar.ph2095.prol.loopexit ] ; 4 uses
  %i.ve = phi i32 [ %i.gp, %middle.block2070 ], [ %i.el, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2114 ], [ %i.gp, %scalar.ph2051 ], [ %i.gp, %scalar.ph2095 ], [ %i.gp, %scalar.ph2095.prol.loopexit ]
  %i.vf = phi i32 [ %i.gp, %middle.block2070 ], [ %i.em, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2114 ], [ %i.gp, %scalar.ph2051 ], [ %i.gp, %scalar.ph2095 ], [ %i.gp, %scalar.ph2095.prol.loopexit ]
  %i.vg = phi i32 [ %i.ku, %middle.block2070 ], [ %i.en, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2114 ], [ %i.ku, %scalar.ph2051 ], [ %i.ku, %scalar.ph2095 ], [ %i.ku, %scalar.ph2095.prol.loopexit ] ; 3 uses
  %.not14551518 = icmp slt i32 %i.fa, %i.ew       ; 4 uses
  br i1 %.not14551518, label %._crit_edge1522.thread, label %.lr.ph1521

.lr.ph1521:                                       ; preds = %.loopexit1489
  %i.vh = add i32 %.013681550, -2
  %i.vi = sext i32 %i.ez to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.vi) ; 3 uses
  %i.vj = sext i32 %i.ew to i64                   ; 2 uses
  %i.vk = trunc i64 %smin to i32
  %i.vl = shl nsw i32 %i.vk, 1                    ; 3 uses
  %i.vm = add i32 %i.eo, %i.vl
  %i.vn = mul i32 %i.k, %i.vm
  %i.vo = add i32 %.013681550, %i.vl
  %i.vp = mul i32 %i.k, %i.vo
  %i.vq = add i32 %indvars.iv1586, %i.vl
  %i.vr = mul i32 %i.k, %i.vq
  %i.vs = mul i64 %i.da, %smin
  %scevgep1974.a = getelementptr i8, ptr %scevgep1973.a, i64 %i.vs ; 3 uses
  %i.vt = mul i64 %i.dc, %i.vj
  %scevgep1976.a = getelementptr i8, ptr %scevgep1975, i64 %i.vt ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1521, %bb.br
  %indvar1957 = phi i32 [ 0, %.lr.ph1521 ], [ %indvar.next1958, %bb.br ] ; 2 uses
  %i.vu = phi i32 [ %i.vg, %.lr.ph1521 ], [ %i.aee, %bb.br ] ; 2 uses
  %indvars.iv1602 = phi i64 [ %smin, %.lr.ph1521 ], [ %indvars.iv.next1603, %bb.br ] ; 6 uses
  %i.vv = mul i32 %i.cx, %indvar1957              ; 3 uses
  %i.vw = add i32 %i.vn, %i.vv
  %i.vx = sext i32 %i.vw to i64                   ; 2 uses
  %i.vy = shl nsw i64 %i.vx, 3
  %scevgep1959 = getelementptr i8, ptr %scevgep1956, i64 %i.vy ; 3 uses
  %i.vz = add i32 %i.vp, %i.vv
  %i.wa = sext i32 %i.vz to i64                   ; 2 uses
  %i.wb = shl nsw i64 %i.wa, 3
  %scevgep1965 = getelementptr i8, ptr %scevgep1964, i64 %i.wb ; 3 uses
  %i.wc = add i32 %i.vr, %i.vv
  %i.wd = sext i32 %i.wc to i64                   ; 2 uses
  %i.we = shl nsw i64 %i.wd, 3
  %scevgep1970 = getelementptr i8, ptr %scevgep1969.a, i64 %i.we ; 3 uses
  %i.wf = trunc nsw i64 %indvars.iv1602 to i32
  %i.wg = shl i32 %i.wf, 1                        ; 8 uses
  %i.wh = add i32 %i.vh, %i.wg                    ; 25 uses
  %i.wi = add nsw i32 %i.vu, -1
  %i.wj = icmp eq i32 %i.wh, %i.wi
  br i1 %i.wj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.wk = mul i32 %i.vu, %i.bo
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.wl
  %i.wn = add nsw i32 %i.wg, -1
  %i.wo = sext i32 %i.wn to i64                   ; 2 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wo
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wo
  %i.wr = sext i32 %i.wg to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wr
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wr
  %i.wu = mul nsw i64 %indvars.iv1602, %i.bw
  %i.wv = getelementptr [8 x i8], ptr %i.s, i64 %i.wu ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 8      ; 3 uses
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.wm, ptr noundef nonnull %10, ptr noundef nonnull %i.wp, ptr noundef nonnull %i.wq, ptr noundef nonnull %i.ws, ptr noundef nonnull %i.wt, ptr noundef %i.ww) #4
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !72
  store double %i.wx, ptr %i.c, align 8, !tbaa !72
  %i.wy = getelementptr i8, ptr %i.wv, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef %i.wy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ww) #4
  %.pre1647 = add nsw i32 %i.wh, 3
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %i.wz = mul nsw i64 %indvars.iv1602, %i.bw
  %i.xa = getelementptr [8 x i8], ptr %i.s, i64 %i.wz ; 3 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 8      ; 3 uses
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !72
  %i.xd = getelementptr i8, ptr %i.xa, i64 24     ; 4 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !72
  %i.xf = fmul double %i.xc, %i.xe
  %i.xg = add nsw i32 %i.wh, 3                    ; 6 uses
  %i.xh = add i32 %i.wg, %.013681550              ; 3 uses
  %i.xi = mul nsw i32 %i.xh, %i.k                 ; 2 uses
  %i.xj = add nsw i32 %i.xg, %i.xi
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xk ; 4 uses
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !72
  %i.xn = fneg double %i.xm
  %i.xo = fmul double %i.xf, %i.xn                ; 3 uses
  %i.xp = mul nsw i32 %i.wh, %i.k                 ; 4 uses
  %i.xq = add nsw i32 %i.xg, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xr ; 6 uses
  store double %i.xo, ptr %i.xs, align 8, !tbaa !72
  %i.xt = getelementptr i8, ptr %i.xa, i64 16     ; 3 uses
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !72
  %i.xv = fmul double %i.xo, %i.xu
  %i.xw = add nsw i32 %i.wh, 1                    ; 3 uses
  %i.xx = mul nsw i32 %i.xw, %i.k                 ; 2 uses
  %i.xy = add nsw i32 %i.xx, %i.xg
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xz ; 2 uses
  store double %i.xv, ptr %i.ya, align 8, !tbaa !72
  %i.yb = load double, ptr %i.xd, align 8, !tbaa !72
  %i.yc = load double, ptr %i.xl, align 8, !tbaa !72
  %i.yd = call double @llvm.fmuladd.f64(double %i.xo, double %i.yb, double %i.yc)
  store double %i.yd, ptr %i.xl, align 8, !tbaa !72
  %i.ye = add nsw i32 %i.xw, %i.xp
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yf ; 5 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !72
  store double %i.yh, ptr %i.a, align 8, !tbaa !72
  %i.yi = add nsw i32 %i.xp, %i.xh
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yj ; 5 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !72
  store double %i.yl, ptr %i.xt, align 8, !tbaa !72
  %i.ym = load double, ptr %i.xs, align 8, !tbaa !72
  store double %i.ym, ptr %i.xd, align 8, !tbaa !72
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.xt, ptr noundef nonnull @c__1, ptr noundef nonnull %i.xb) #4
  %i.yn = load double, ptr %i.xs, align 8, !tbaa !72
  %i.yo = fcmp une double %i.yn, 0.000000e+00
  br i1 %i.yo, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.yp = load double, ptr %i.ya, align 8, !tbaa !72
  %i.yq = fcmp une double %i.yp, 0.000000e+00
  br i1 %i.yq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yr = load double, ptr %i.xl, align 8, !tbaa !72
  %i.ys = fcmp oeq double %i.yr, 0.000000e+00
  br i1 %i.ys, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.yt = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.yt, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.yu = add nsw i32 %i.xx, %i.xw
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yv ; 2 uses
  %i.yx = add nsw i32 %i.wg, -1
  %i.yy = sext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.yy
  %i.za = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.yy
  %i.zb = sext i32 %i.wg to i64                   ; 2 uses
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zb
  %i.zd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.zb
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.yw, ptr noundef nonnull %10, ptr noundef nonnull %i.yz, ptr noundef nonnull %i.za, ptr noundef nonnull %i.zc, ptr noundef nonnull %i.zd, ptr noundef nonnull %i.e) #4
  %i.ze = load double, ptr %i.e, align 16, !tbaa !72
  store double %i.ze, ptr %i.c, align 8, !tbaa !72
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bp, ptr noundef nonnull @c__1, ptr noundef nonnull %i.e) #4
  %i.zf = load double, ptr %i.yg, align 8, !tbaa !72 ; 2 uses
  %i.zg = load <2 x double>, ptr %i.e, align 16, !tbaa !72 ; 3 uses
  %i.zh = load double, ptr %i.yk, align 8, !tbaa !72 ; 2 uses
  %i.zi = extractelement <2 x double> %i.zg, i64 1 ; 2 uses
  %i.zj = call double @llvm.fmuladd.f64(double %i.zi, double %i.zh, double %i.zf)
  %i.zk = extractelement <2 x double> %i.zg, i64 0
  %i.zl = fmul double %i.zk, %i.zj                ; 3 uses
  %i.zm = fneg double %i.zl
  %i.zn = call double @llvm.fmuladd.f64(double %i.zm, double %i.zi, double %i.zh) ; 3 uses
  %i.zo = fcmp oge double %i.zn, 0.000000e+00
  %i.zp = fneg double %i.zn
  %i.zq = select i1 %i.zo, double %i.zn, double %i.zp
  %i.zr = load double, ptr %i.bq, align 16, !tbaa !72 ; 2 uses
  %i.zs = fmul double %i.zr, %i.zl                ; 3 uses
  %i.zt = fcmp oge double %i.zs, 0.000000e+00
  %i.zu = fneg double %i.zs
  %i.zv = select i1 %i.zt, double %i.zs, double %i.zu
  %i.zw = fadd double %i.zq, %i.zv
  %i.zx = add nsw i32 %i.xp, %i.wh
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.zy
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !72 ; 3 uses
  %i.aab = fcmp oge double %i.aaa, 0.000000e+00
  %i.aac = fneg double %i.aaa
  %i.aad = select i1 %i.aab, double %i.aaa, double %i.aac
  %i.aae = load double, ptr %i.yw, align 8, !tbaa !72 ; 3 uses
  %i.aaf = fcmp oge double %i.aae, 0.000000e+00
  %i.aag = fneg double %i.aae
  %i.aah = select i1 %i.aaf, double %i.aae, double %i.aag
  %i.aai = fadd double %i.aad, %i.aah
  %i.aaj = add nsw i32 %i.xi, %i.xh
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aak
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !72 ; 3 uses
  %i.aan = fcmp oge double %i.aam, 0.000000e+00
  %i.aao = fneg double %i.aam
  %i.aap = select i1 %i.aan, double %i.aam, double %i.aao
  %i.aaq = fadd double %i.aai, %i.aap
  %i.aar = fmul double %i.at, %i.aaq
  %i.aas = fcmp ogt double %i.zw, %i.aar
  br i1 %i.aas, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aat = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.aat, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.aau = fsub double %i.zf, %i.zl
  store double %i.aau, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  store <2 x double> %i.zg, ptr %i.xb, align 8, !tbaa !72
  store double %i.zr, ptr %i.xd, align 8, !tbaa !72
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.az, %bb.ay, %bb.as
  %.pre-phi = phi i32 [ %i.xg, %bb.aw ], [ %i.xg, %bb.az ], [ %i.xg, %bb.ay ], [ %.pre1647, %bb.as ] ; 3 uses
  %i.aav = load i32, ptr %5, align 4, !tbaa !70   ; 11 uses
  %i.aaw = call i32 @llvm.smin.i32(i32 %i.aav, i32 %.pre-phi) ; 2 uses
  %.not14701513 = icmp sgt i32 %.013851482, %i.aaw
  %.pre1648 = mul nsw i64 %indvars.iv1602, %i.bw  ; 2 uses
  br i1 %.not14701513, label %.._crit_edge1517_crit_edge, label %.lr.ph1516

.._crit_edge1517_crit_edge:                       ; preds = %bb.ba
end_hunk_1
begin_hunk_2_@dlaqr5_:bb.a
  %i.aeq = fcmp oge double %i.aep, 0.000000e+00
  %i.aer = fneg double %i.aep
  %i.aes = select i1 %i.aeq, double %i.aep, double %i.aer
  %i.aet = load double, ptr %i.adf, align 8, !tbaa !72 ; 4 uses
  %i.aeu = fcmp oge double %i.aet, 0.000000e+00
  %i.aev = fneg double %i.aet
  %i.aew = select i1 %i.aeu, double %i.aet, double %i.aev ; 5 uses
  %i.aex = fadd double %i.aes, %i.aew             ; 4 uses
  %i.aey = fcmp oeq double %i.aex, 0.000000e+00
  br i1 %i.aey, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %.not1471.not = icmp sgt i32 %i.wh, %i.aee
  br i1 %.not1471.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aez = add nsw i32 %i.wh, -1
  %i.afa = mul nsw i32 %i.aez, %i.k
  %i.afb = add nsw i32 %i.afa, %i.wh
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !72 ; 3 uses
  %i.aff = fcmp oge double %i.afe, 0.000000e+00
  %i.afg = fneg double %i.afe
  %i.afh = select i1 %i.aff, double %i.afe, double %i.afg
  %i.afi = fadd double %i.aex, %i.afh
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6 = phi double [ %i.afi, %bb.be ], [ %i.aex, %bb.bd ] ; 2 uses
  %i.afj = add nsw i32 %i.aee, 2
  %.not1472 = icmp slt i32 %i.wh, %i.afj
  br i1 %.not1472, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.afk = add nsw i32 %i.wh, -2
  %i.afl = mul nsw i32 %i.afk, %i.k
  %i.afm = add nsw i32 %i.afl, %i.wh
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afn
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !72 ; 3 uses
  %i.afq = fcmp oge double %i.afp, 0.000000e+00
  %i.afr = fneg double %i.afp
  %i.afs = select i1 %i.afq, double %i.afp, double %i.afr
  %i.aft = fadd double %.6, %i.afs
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi double [ %i.aft, %bb.bg ], [ %.6, %bb.bf ] ; 2 uses
  %i.afu = add nsw i32 %i.aee, 3
  %.not1473 = icmp slt i32 %i.wh, %i.afu
  br i1 %.not1473, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.afv = add nsw i32 %i.wh, -3
  %i.afw = mul nsw i32 %i.afv, %i.k
  %i.afx = add nsw i32 %i.afw, %i.wh
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afy
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !72 ; 3 uses
  %i.agb = fcmp oge double %i.aga, 0.000000e+00
  %i.agc = fneg double %i.aga
  %i.agd = select i1 %i.agb, double %i.aga, double %i.agc
  %i.age = fadd double %.7, %i.agd
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.8 = phi double [ %i.age, %bb.bi ], [ %.7, %bb.bh ] ; 2 uses
  %i.agf = add nsw i32 %i.aav, -2
  %.not1474 = icmp sgt i32 %i.wh, %i.agf
  br i1 %.not1474, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.agg = load double, ptr %i.adl, align 8, !tbaa !72 ; 3 uses
  %i.agh = fcmp oge double %i.agg, 0.000000e+00
  %i.agi = fneg double %i.agg
  %i.agj = select i1 %i.agh, double %i.agg, double %i.agi
  %i.agk = fadd double %.8, %i.agj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.9 = phi double [ %i.agk, %bb.bk ], [ %.8, %bb.bj ] ; 2 uses
  %i.agl = add nsw i32 %i.aav, -3
  %.not1475 = icmp sgt i32 %i.wh, %i.agl
  %i.agm = fcmp oge double %i.aed, 0.000000e+00
  %i.agn = fneg double %i.aed
  %i.ago = select i1 %i.agm, double %i.aed, double %i.agn
  %i.agp = fadd double %i.ago, %.9
  %.10 = select i1 %.not1475, double %.9, double %i.agp ; 2 uses
  %i.agq = add nsw i32 %i.aav, -4
  %.not1476 = icmp sgt i32 %i.wh, %i.agq
  br i1 %.not1476, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.agr = add nsw i32 %i.wh, 4
  %i.ags = add nsw i32 %i.agr, %.pre-phi1653
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !72 ; 3 uses
  %i.agw = fcmp oge double %i.agv, 0.000000e+00
  %i.agx = fneg double %i.agv
  %i.agy = select i1 %i.agw, double %i.agv, double %i.agx
  %i.agz = fadd double %.10, %i.agy
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bc
  %.11 = phi double [ %i.agz, %bb.bm ], [ %.10, %bb.bl ], [ %i.aex, %bb.bc ]
  %i.aha = fmul double %i.at, %.11                ; 2 uses
  %i.ahb = fcmp oge double %i.aek, 0.000000e+00
  %i.ahc = fneg double %i.aek
  %i.ahd = select i1 %i.ahb, double %i.aek, double %i.ahc ; 5 uses
  %i.ahe = fcmp oge double %i.ay, %i.aha
  %i.ahf = select i1 %i.ahe, double %i.ay, double %i.aha
  %i.ahg = fcmp ugt double %i.ahd, %i.ahf
  br i1 %i.ahg, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahh = add nsw i32 %.pre-phi1653, %i.wh
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ahi
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !72 ; 3 uses
  %i.ahl = fcmp oge double %i.ahk, 0.000000e+00
  %i.ahm = fneg double %i.ahk
  %i.ahn = select i1 %i.ahl, double %i.ahk, double %i.ahm ; 4 uses
  %i.aho = fcmp oge double %i.ahd, %i.ahn
  %i.ahp = select i1 %i.aho, double %i.ahd, double %i.ahn ; 2 uses
  %i.ahq = fsub double %i.aep, %i.aet             ; 3 uses
  %i.ahr = fcmp oge double %i.ahq, 0.000000e+00
  %i.ahs = fneg double %i.ahq
  %i.aht = select i1 %i.ahr, double %i.ahq, double %i.ahs ; 4 uses
  %i.ahu = fcmp oge double %i.aew, %i.aht
  %i.ahv = select i1 %i.ahu, double %i.aew, double %i.aht ; 2 uses
  %i.ahw = fcmp ole double %i.aew, %i.aht
  %i.ahx = select i1 %i.ahw, double %i.aew, double %i.aht
  %i.ahy = fadd double %i.ahv, %i.ahp             ; 2 uses
  %i.ahz = fdiv double %i.ahv, %i.ahy
  %i.aia = fmul double %i.ahx, %i.ahz             ; 2 uses
  %i.aib = fcmp oeq double %i.aia, 0.000000e+00
  br i1 %i.aib, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aic = fmul double %i.at, %i.aia              ; 2 uses
  %i.aid = fcmp ole double %i.ahd, %i.ahn
  %i.aie = select i1 %i.aid, double %i.ahd, double %i.ahn
  %i.aif = fdiv double %i.ahp, %i.ahy
  %i.aig = fmul double %i.aie, %i.aif
  %i.aih = fcmp oge double %i.ay, %i.aic
  %i.aii = select i1 %i.aih, double %i.ay, double %i.aic
  %i.aij = fcmp ugt double %i.aig, %i.aii
  br i1 %i.aij, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store double 0.000000e+00, ptr %i.aej, align 8, !tbaa !72
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %bb.bp, %bb.bq, %bb.bn, %._crit_edge1517
  %indvars.iv.next1603 = add nsw i64 %indvars.iv1602, -1
  %.not1455.not = icmp sgt i64 %indvars.iv1602, %i.vj
  %indvar.next1958 = add i32 %indvar1957, 1
  br i1 %.not1455.not, label %bb.ar, label %._crit_edge1522, !llvm.loop !40

._crit_edge1522:                                  ; preds = %bb.br
  br i1 %i.bn, label %.thread1693, label %bb.bs

._crit_edge1522.thread:                           ; preds = %.loopexit1489
  br i1 %i.bn, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1522.thread, %._crit_edge1522
  %i.aik = phi i32 [ %i.vg, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ]
  %i.ail = phi i32 [ %i.vf, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ]
  %i.aim = phi i32 [ %i.ve, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ] ; 4 uses
  %i.ain = phi i32 [ %i.vd, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ] ; 2 uses
  %i.aio = phi i32 [ %i.vc, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ] ; 2 uses
  %i.aip = phi i32 [ %i.vb, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ] ; 2 uses
  %i.aiq = load i32, ptr %0, align 4, !tbaa !70
  %.not1456 = icmp eq i32 %i.aiq, 0
  br i1 %.not1456, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.air = load i32, ptr %3, align 4, !tbaa !70
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ais = phi i32 [ %i.aim, %bb.bs ], [ %i.ail, %bb.bt ] ; 2 uses
  %.11388 = phi i32 [ %i.aim, %bb.bs ], [ %i.air, %bb.bt ]
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1531

.thread1693:                                      ; preds = %._crit_edge1522
  %.1477 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.aav)
  br label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.thread1693, %bb.bu
  %i.ait = phi i32 [ %i.aav, %.thread1693 ], [ %i.ain, %bb.bu ] ; 5 uses
  %i.aiu = phi i32 [ %i.aee, %.thread1693 ], [ %i.aio, %bb.bu ] ; 11 uses
  %i.aiv = phi i32 [ %i.aee, %.thread1693 ], [ %i.aip, %bb.bu ] ; 9 uses
  %.113881695 = phi i32 [ %.1477, %.thread1693 ], [ %.11388, %bb.bu ] ; 3 uses
  %i.aiw = phi i32 [ %i.aav, %.thread1693 ], [ %i.ais, %bb.bu ] ; 5 uses
  %i.aix = phi i32 [ %i.aav, %.thread1693 ], [ %i.aim, %bb.bu ] ; 5 uses
  %i.aiy = add i32 %.013681550, -2
  %i.aiz = sext i32 %.113881695 to i64            ; 2 uses
  %i.aja = sext i32 %i.ez to i64                  ; 2 uses
  %smin1609 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aja) ; 7 uses
  %i.ajb = sext i32 %i.ew to i64                  ; 4 uses
  %i.ajc = sext i32 %i.aiu to i64                 ; 2 uses
  %i.ajd = trunc i64 %smin1609 to i32
  %i.aje = shl nsw i32 %i.ajd, 1                  ; 2 uses
  %i.ajf = add i32 %i.ep, %i.aje
  %i.ajg = add i32 %.013681550, %i.aje
  %i.ajh = mul i64 %i.cs, %smin1609
  %scevgep1898.a = getelementptr i8, ptr %scevgep1897, i64 %i.ajh ; 3 uses
  %smin1900 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.ajb)
  %smin1901 = call i64 @llvm.smin.i64(i64 %smin1900, i64 %i.aja)
  %i.aji = mul i64 %i.cu, %smin1901
  %scevgep1902 = getelementptr i8, ptr %scevgep1899, i64 %i.aji ; 3 uses
  %smax1886.a = call i64 @llvm.smax.i64(i64 %i.ajc, i64 %i.aiz)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar1883 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next1884, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.fe, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 4 uses
  %i.ajj = sext i32 %indvars.iv1604 to i64        ; 2 uses
  %smax1882 = call i64 @llvm.smax.i64(i64 %i.ajc, i64 %i.ajj) ; 2 uses
  %i.ajk = mul i32 %indvar1883, -2                ; 2 uses
  %i.ajl = add i32 %i.ajf, %i.ajk
  %i.ajm = sext i32 %i.ajl to i64                 ; 2 uses
  %i.ajn = add i64 %smax1882, %i.ajm
  %i.ajo = shl i64 %i.ajn, 3                      ; 2 uses
  %scevgep1885 = getelementptr i8, ptr %scevgep1881, i64 %i.ajo ; 3 uses
  %smax1887 = call i64 @llvm.smax.i64(i64 %smax1886.a, i64 %i.ajj) ; 2 uses
  %i.ajp = add i64 %smax1887, %i.ajm
  %i.ajq = shl nsw i64 %i.ajp, 3                  ; 2 uses
  %scevgep1888 = getelementptr i8, ptr %9, i64 %i.ajq ; 3 uses
  %i.ajr = add i32 %i.ajg, %i.ajk
  %i.ajs = sext i32 %i.ajr to i64                 ; 2 uses
  %i.ajt = add i64 %smax1882, %i.ajs
  %i.aju = shl i64 %i.ajt, 3
  %scevgep1890 = getelementptr i8, ptr %scevgep1889.a, i64 %i.aju ; 3 uses
  %i.ajv = add i64 %smax1887, %i.ajs
  %i.ajw = shl nsw i64 %i.ajv, 3
  %scevgep1892 = getelementptr i8, ptr %scevgep1891, i64 %i.ajw ; 3 uses
  %scevgep1894 = getelementptr i8, ptr %scevgep1893, i64 %i.ajo ; 3 uses
  %scevgep1896 = getelementptr i8, ptr %scevgep1895, i64 %i.ajq ; 3 uses
  %i.ajx = trunc nsw i64 %indvars.iv1610 to i32
  %i.ajy = shl i32 %i.ajx, 1                      ; 2 uses
  %i.ajz = add i32 %i.ajy, %.013681550            ; 2 uses
  %i.aka = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %i.ajz)
  %.not14681523 = icmp sgt i32 %i.aka, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.akb = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.akb to i64              ; 5 uses
  %i.akc = add i32 %i.aiy, %i.ajy                 ; 2 uses
  %i.akd = mul nsw i64 %indvars.iv1610, %i.bw
  %i.ake = getelementptr [8 x i8], ptr %i.s, i64 %i.akd ; 3 uses
  %i.akf = getelementptr i8, ptr %i.ake, i64 8    ; 2 uses
  %i.akg = getelementptr i8, ptr %i.ake, i64 16   ; 3 uses
  %i.akh = getelementptr i8, ptr %i.ake, i64 24   ; 3 uses
  %i.aki = sext i32 %i.ajz to i64
  %i.akj = sext i32 %i.akc to i64
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.akj ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.aki ; 2 uses
  %i.akk = sext i32 %i.akc to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.akk ; 2 uses
  %i.akl = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.akm = sext i32 %i.akl to i64
  %i.akn = add nsw i64 %i.akm, 1
  %i.ako = sub nsw i64 %i.akn, %smax1606          ; 3 uses
  %min.iters.check1930 = icmp ugt i64 %i.ako, 7
  %or.cond2209 = select i1 %min.iters.check1930, i1 %ident.check.not, i1 false
  br i1 %or.cond2209, label %vector.memcheck1880, label %scalar.ph1929.preheader

vector.memcheck1880:                              ; preds = %.lr.ph1526
  %bound01903 = icmp ult ptr %scevgep1885, %scevgep1892
  %bound11904 = icmp ult ptr %scevgep1890, %scevgep1888
  %found.conflict1905 = and i1 %bound01903, %bound11904
  %bound01906 = icmp ult ptr %scevgep1885, %scevgep1896
  %bound11907 = icmp ult ptr %scevgep1894, %scevgep1888
  %found.conflict1908 = and i1 %bound01906, %bound11907
  %conflict.rdx1909 = or i1 %found.conflict1905, %found.conflict1908
  %bound01910 = icmp ult ptr %scevgep1885, %scevgep1902
  %bound11911 = icmp ult ptr %scevgep1898.a, %scevgep1888
  %found.conflict1912 = and i1 %bound01910, %bound11911
  %i.akp = or i1 %found.conflict1912, %stride.check1913
  %conflict.rdx1914 = or i1 %conflict.rdx1909, %i.akp
  %bound01915 = icmp ult ptr %scevgep1890, %scevgep1896
  %bound11916 = icmp ult ptr %scevgep1894, %scevgep1892
  %found.conflict1917 = and i1 %bound01915, %bound11916
  %conflict.rdx1918 = or i1 %conflict.rdx1914, %found.conflict1917
  %bound01919 = icmp ult ptr %scevgep1890, %scevgep1902
  %bound11920 = icmp ult ptr %scevgep1898.a, %scevgep1892
  %found.conflict1921 = and i1 %bound01919, %bound11920
  %conflict.rdx1923 = or i1 %found.conflict1921, %conflict.rdx1918
  %bound01924 = icmp ult ptr %scevgep1894, %scevgep1902
  %bound11925 = icmp ult ptr %scevgep1898.a, %scevgep1896
  %found.conflict1926 = and i1 %bound01924, %bound11925
  %conflict.rdx1928 = or i1 %found.conflict1926, %conflict.rdx1923
  br i1 %conflict.rdx1928, label %scalar.ph1929.preheader, label %vector.ph1931

vector.ph1931:                                    ; preds = %vector.memcheck1880
  %n.vec1932 = and i64 %i.ako, -2                 ; 3 uses
  %i.akq = add nsw i64 %n.vec1932, %smax1606
  %i.akr = load double, ptr %i.akf, align 8, !tbaa !72, !alias.scope !98
  %broadcast.splatinsert1942 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1943 = shufflevector <2 x double> %broadcast.splatinsert1942, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aks = load double, ptr %i.akg, align 8, !tbaa !72, !alias.scope !98 ; 2 uses
  %broadcast.splatinsert1937 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1938 = shufflevector <2 x double> %broadcast.splatinsert1937, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akt = load double, ptr %i.akh, align 8, !tbaa !72, !alias.scope !98 ; 2 uses
  %broadcast.splatinsert1940 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat1941 = shufflevector <2 x double> %broadcast.splatinsert1940, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1945 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1946 = shufflevector <2 x double> %broadcast.splatinsert1945, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1948 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat1949 = shufflevector <2 x double> %broadcast.splatinsert1948, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1933

vector.body1933:                                  ; preds = %vector.body1933, %vector.ph1931
  %index1934 = phi i64 [ 0, %vector.ph1931 ], [ %index.next1950, %vector.body1933 ] ; 2 uses
  %i.aku = add i64 %index1934, %smax1606          ; 3 uses
  %i.akv = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.aku
  %i.akw = getelementptr i8, ptr %i.akv, i64 8    ; 2 uses
  %wide.load1935 = load <2 x double>, ptr %i.akw, align 8, !tbaa !72, !alias.scope !99, !noalias !100 ; 2 uses
  %i.akx = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.aku ; 3 uses
  %wide.load1936 = load <2 x double>, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %i.aky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1938, <2 x double> %wide.load1936, <2 x double> %wide.load1935)
  %i.akz = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.aku
  %i.ala = getelementptr i8, ptr %i.akz, i64 24   ; 3 uses
  %wide.load1939 = load <2 x double>, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %i.alb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1941, <2 x double> %wide.load1939, <2 x double> %i.aky)
  %i.alc = fmul <2 x double> %broadcast.splat1943, %i.alb ; 2 uses
  %i.ald = fsub <2 x double> %wide.load1935, %i.alc
  store <2 x double> %i.ald, ptr %i.akw, align 8, !tbaa !72, !alias.scope !99, !noalias !100
  %wide.load1944 = load <2 x double>, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %i.ale = fneg <2 x double> %i.alc               ; 2 uses
  %i.alf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %broadcast.splat1946, <2 x double> %wide.load1944)
  store <2 x double> %i.alf, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %wide.load1947 = load <2 x double>, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %i.alg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %broadcast.splat1949, <2 x double> %wide.load1947)
  store <2 x double> %i.alg, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %index.next1950 = add nuw i64 %index1934, 2     ; 2 uses
  %i.alh = icmp eq i64 %index.next1950, %n.vec1932
  br i1 %i.alh, label %middle.block1951, label %vector.body1933, !llvm.loop !46

middle.block1951:                                 ; preds = %vector.body1933
  %cmp.n1952 = icmp eq i64 %i.ako, %n.vec1932
  br i1 %cmp.n1952, label %._crit_edge1527, label %scalar.ph1929.preheader

scalar.ph1929.preheader:                          ; preds = %vector.memcheck1880, %.lr.ph1526, %middle.block1951
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1880 ], [ %smax1606, %.lr.ph1526 ], [ %i.akq, %middle.block1951 ]
  br label %scalar.ph1929

scalar.ph1929:                                    ; preds = %scalar.ph1929.preheader, %scalar.ph1929
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1929 ], [ %indvars.iv1607.ph, %scalar.ph1929.preheader ] ; 3 uses
  %i.ali = load double, ptr %i.akf, align 8, !tbaa !72
  %i.alj = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.alj
  %i.alk = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.all = load double, ptr %i.alk, align 8, !tbaa !72 ; 2 uses
  %i.alm = load double, ptr %i.akg, align 8, !tbaa !72
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.alj ; 3 uses
  %i.aln = load double, ptr %gep1724, align 8, !tbaa !72
  %i.alo = call double @llvm.fmuladd.f64(double %i.alm, double %i.aln, double %i.all)
  %i.alp = load double, ptr %i.akh, align 8, !tbaa !72
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.alj
  %i.alq = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !72
  %i.als = call double @llvm.fmuladd.f64(double %i.alp, double %i.alr, double %i.alo)
  %i.alt = fmul double %i.ali, %i.als             ; 2 uses
  %i.alu = fsub double %i.all, %i.alt
  store double %i.alu, ptr %i.alk, align 8, !tbaa !72
  %i.alv = load double, ptr %i.akg, align 8, !tbaa !72
  %i.alw = load double, ptr %gep1724, align 8, !tbaa !72
  %i.alx = fneg double %i.alt                     ; 2 uses
  %i.aly = call double @llvm.fmuladd.f64(double %i.alx, double %i.alv, double %i.alw)
  store double %i.aly, ptr %gep1724, align 8, !tbaa !72
  %i.alz = load double, ptr %i.akh, align 8, !tbaa !72
  %i.ama = load double, ptr %i.alq, align 8, !tbaa !72
  %i.amb = call double @llvm.fmuladd.f64(double %i.alx, double %i.alz, double %i.ama)
  store double %i.amb, ptr %i.alq, align 8, !tbaa !72
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aiz
  br i1 %.not1468.not, label %scalar.ph1929, label %._crit_edge1527, !llvm.loop !47

._crit_edge1527:                                  ; preds = %scalar.ph1929, %middle.block1951, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.ajb
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next1884 = add i32 %indvar1883, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !48

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.amc = add i32 %i.ee, %.013681550
  %i.amd = sub nsw i32 %i.aiv, %.013691572
  %i.ame = load i32, ptr %i.h, align 4, !tbaa !70
  %.reass = add i32 %i.ef, %i.fe
  %i.amf = call i32 @llvm.smin.i32(i32 %i.ame, i32 %.reass) ; 2 uses
  %i.amg = add i32 %i.fd, -1
  %i.amh = add i32 %indvars.iv1594, %i.aiv        ; 2 uses
  %i.ami = zext i32 %i.amf to i64                 ; 3 uses
  %i.amj = sext i32 %i.ez to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.amj)
  %i.amk = sext i32 %i.ew to i64
  %i.aml = trunc i64 %smin1609 to i32
  %i.amm = shl nsw i32 %i.aml, 1                  ; 3 uses
  %i.amn = add i32 %i.er, %i.amm
  %i.amo = mul i32 %i.t, %i.amn
  %i.amp = add i32 %indvar, %i.amm
  %i.amq = mul i32 %i.t, %i.amp
  %i.amr = add i32 %i.es, %i.amm
  %i.ams = mul i32 %i.t, %i.amr
  %i.amt = mul i64 %i.cb, %smin1609
  %scevgep1766 = getelementptr i8, ptr %scevgep1765, i64 %i.amt ; 3 uses
  %i.amu = mul i64 %i.cd, %i.ajb
  %scevgep1768 = getelementptr i8, ptr %scevgep1767, i64 %i.amu ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvar1750 = phi i32 [ 0, %.lr.ph1548 ], [ %indvar.next1751, %._crit_edge1545 ] ; 2 uses
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.amg, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 3 uses
  %i.amv = mul i32 %i.by, %indvar1750             ; 3 uses
  %i.amw = add i32 %i.amo, %i.amv
  %i.amx = sext i32 %i.amw to i64                 ; 2 uses
  %smax1752 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amh)
  %smax1753 = call i32 @llvm.smax.i32(i32 %smax1752, i32 1)
  %i.amy = zext nneg i32 %smax1753 to i64         ; 4 uses
  %i.amz = add nsw i64 %i.amx, %i.amy
  %i.ana = shl nsw i64 %i.amz, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep, i64 %i.ana ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.amy) ; 3 uses
  %i.anb = add nsw i64 %umax, %i.u
  %i.anc = add nsw i64 %i.anb, %i.amx
  %i.and = shl nsw i64 %i.anc, 3
  %scevgep1756 = getelementptr i8, ptr %scevgep1755, i64 %i.and ; 3 uses
  %i.ane = add i32 %i.amq, %i.amv
  %i.anf = sext i32 %i.ane to i64                 ; 2 uses
  %i.ang = add nsw i64 %i.anf, %i.amy
  %i.anh = shl nsw i64 %i.ang, 3
  %scevgep1758 = getelementptr i8, ptr %scevgep1757, i64 %i.anh ; 3 uses
  %i.ani = add nsw i64 %umax, %i.u
  %i.anj = add nsw i64 %i.ani, %i.anf
  %i.ank = shl nsw i64 %i.anj, 3
  %scevgep1760 = getelementptr i8, ptr %scevgep1759, i64 %i.ank ; 3 uses
  %i.anl = add i32 %i.ams, %i.amv
  %i.anm = sext i32 %i.anl to i64                 ; 2 uses
  %i.ann = add nsw i64 %i.anm, %i.amy
  %i.ano = shl nsw i64 %i.ann, 3
  %scevgep1762 = getelementptr i8, ptr %scevgep1761, i64 %i.ano ; 3 uses
  %i.anp = add nsw i64 %umax, %i.u
  %i.anq = add nsw i64 %i.anp, %i.anm
  %i.anr = shl nsw i64 %i.anq, 3
  %scevgep1764 = getelementptr i8, ptr %scevgep1763, i64 %i.anr ; 3 uses
  %i.ans = trunc nsw i64 %indvars.iv1628 to i32
  %i.ant = shl i32 %i.ans, 1                      ; 2 uses
  %i.anu = add i32 %i.ant, -1
  %i.anv = call i32 @llvm.smax.i32(i32 %i.amd, i32 %i.anu)
  %i.anw = call i32 @llvm.smax.i32(i32 %i.anv, i32 1)
  %.not14661541 = icmp sgt i32 %i.anw, %i.amf
  br i1 %.not14661541, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.bw
  %smax1622 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amh)
  %smax1623 = call i32 @llvm.smax.i32(i32 %smax1622, i32 1)
  %i.anx = zext nneg i32 %smax1623 to i64         ; 6 uses
  %i.any = add i32 %i.amc, %i.ant                 ; 3 uses
  %i.anz = mul nsw i64 %indvars.iv1628, %i.bw
  %i.aoa = getelementptr [8 x i8], ptr %i.s, i64 %i.anz ; 3 uses
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8    ; 2 uses
  %i.aoc = add nsw i32 %i.any, 1
  %i.aod = mul nsw i32 %i.aoc, %i.t
  %i.aoe = getelementptr i8, ptr %i.aoa, i64 16   ; 3 uses
  %i.aof = add nsw i32 %i.any, 2
  %i.aog = mul nsw i32 %i.aof, %i.t
  %i.aoh = getelementptr i8, ptr %i.aoa, i64 24   ; 3 uses
  %i.aoi = add nsw i32 %i.any, 3
  %i.aoj = mul nsw i32 %i.aoi, %i.t
  %i.aok = sext i32 %i.aod to i64
  %i.aol = sext i32 %i.aog to i64
  %i.aom = sext i32 %i.aoj to i64
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.v, i64 %i.aok ; 2 uses
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.v, i64 %i.aol ; 2 uses
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.v, i64 %i.aom ; 2 uses
  %i.aon = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.anx)
  %i.aoo = add nuw nsw i64 %i.aon, 1
  %i.aop = sub nsw i64 %i.aoo, %i.anx             ; 3 uses
  %min.iters.check = icmp ult i64 %i.aop, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1544
  %bound0 = icmp ult ptr %scevgep1754, %scevgep1760
  %bound1 = icmp ult ptr %scevgep1758, %scevgep1756
  %found.conflict = and i1 %bound0, %bound1
  %bound01769 = icmp ult ptr %scevgep1754, %scevgep1764
  %bound11770 = icmp ult ptr %scevgep1762, %scevgep1756
  %found.conflict1771 = and i1 %bound01769, %bound11770
  %conflict.rdx = or i1 %found.conflict, %found.conflict1771
  %bound01772 = icmp ult ptr %scevgep1754, %scevgep1768
  %bound11773 = icmp ult ptr %scevgep1766, %scevgep1756
  %found.conflict1774 = and i1 %bound01772, %bound11773
  %i.aoq = or i1 %found.conflict1774, %stride.check
  %conflict.rdx1775 = or i1 %conflict.rdx, %i.aoq
  %bound01776 = icmp ult ptr %scevgep1758, %scevgep1764
  %bound11777 = icmp ult ptr %scevgep1762, %scevgep1760
  %found.conflict1778 = and i1 %bound01776, %bound11777
  %conflict.rdx1779 = or i1 %conflict.rdx1775, %found.conflict1778
  %bound01780 = icmp ult ptr %scevgep1758, %scevgep1768
  %bound11781 = icmp ult ptr %scevgep1766, %scevgep1760
  %found.conflict1782 = and i1 %bound01780, %bound11781
  %conflict.rdx1784 = or i1 %found.conflict1782, %conflict.rdx1779
  %bound01785 = icmp ult ptr %scevgep1762, %scevgep1768
  %bound11786 = icmp ult ptr %scevgep1766, %scevgep1764
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %conflict.rdx1789 = or i1 %found.conflict1787, %conflict.rdx1784
  br i1 %conflict.rdx1789, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aop, -4                     ; 3 uses
  %i.aor = add nsw i64 %n.vec, %i.anx
  %i.aos = load double, ptr %i.aob, align 8, !tbaa !72, !alias.scope !104
  %broadcast.splatinsert1794.a = insertelement <4 x double> poison, double %i.aos, i64 0
  %broadcast.splat1795.a = shufflevector <4 x double> %broadcast.splatinsert1794.a, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aot = load double, ptr %i.aoe, align 8, !tbaa !72, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aou = load double, ptr %i.aoh, align 8, !tbaa !72, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert1792 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat1793 = shufflevector <4 x double> %broadcast.splatinsert1792, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1797 = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat1798 = shufflevector <4 x double> %broadcast.splatinsert1797, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1800 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat1801 = shufflevector <4 x double> %broadcast.splatinsert1800, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aov = add nuw i64 %index, %i.anx             ; 3 uses
  %i.aow = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %i.aov ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aow, align 8, !tbaa !72, !alias.scope !105, !noalias !106 ; 2 uses
  %i.aox = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %i.aov ; 3 uses
  %wide.load1790 = load <4 x double>, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.aoy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1790, <4 x double> %wide.load)
  %i.aoz = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %i.aov ; 3 uses
  %wide.load1791 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.apa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1793, <4 x double> %wide.load1791, <4 x double> %i.aoy)
  %i.apb = fmul <4 x double> %broadcast.splat1795.a, %i.apa ; 2 uses
  %i.apc = fsub <4 x double> %wide.load, %i.apb
  store <4 x double> %i.apc, ptr %i.aow, align 8, !tbaa !72, !alias.scope !105, !noalias !106
  %wide.load1796 = load <4 x double>, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.apd = fneg <4 x double> %i.apb               ; 2 uses
  %i.ape = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apd, <4 x double> %broadcast.splat1798, <4 x double> %wide.load1796)
  store <4 x double> %i.ape, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %wide.load1799 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.apf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apd, <4 x double> %broadcast.splat1801, <4 x double> %wide.load1799)
  store <4 x double> %i.apf, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apg = icmp eq i64 %index.next, %n.vec
  br i1 %i.apg, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aop, %n.vec
  br i1 %cmp.n, label %._crit_edge1545, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1544, %middle.block
  %indvars.iv1624.ph = phi i64 [ %i.anx, %vector.memcheck ], [ %i.anx, %.lr.ph1544 ], [ %i.aor, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %scalar.ph ], [ %indvars.iv1624.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aph = load double, ptr %i.aob, align 8, !tbaa !72
  %gep1734 = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %indvars.iv1624 ; 2 uses
  %i.api = load double, ptr %gep1734, align 8, !tbaa !72 ; 2 uses
  %i.apj = load double, ptr %i.aoe, align 8, !tbaa !72
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %indvars.iv1624 ; 3 uses
  %i.apk = load double, ptr %gep1736, align 8, !tbaa !72
  %i.apl = call double @llvm.fmuladd.f64(double %i.apj, double %i.apk, double %i.api)
  %i.apm = load double, ptr %i.aoh, align 8, !tbaa !72
  %gep1738 = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %indvars.iv1624 ; 3 uses
  %i.apn = load double, ptr %gep1738, align 8, !tbaa !72
  %i.apo = call double @llvm.fmuladd.f64(double %i.apm, double %i.apn, double %i.apl)
  %i.app = fmul double %i.aph, %i.apo             ; 2 uses
  %i.apq = fsub double %i.api, %i.app
  store double %i.apq, ptr %gep1734, align 8, !tbaa !72
  %i.apr = load double, ptr %i.aoe, align 8, !tbaa !72
  %i.aps = load double, ptr %gep1736, align 8, !tbaa !72
  %i.apt = fneg double %i.app                     ; 2 uses
  %i.apu = call double @llvm.fmuladd.f64(double %i.apt, double %i.apr, double %i.aps)
  store double %i.apu, ptr %gep1736, align 8, !tbaa !72
  %i.apv = load double, ptr %i.aoh, align 8, !tbaa !72
  %i.apw = load double, ptr %gep1738, align 8, !tbaa !72
  %i.apx = call double @llvm.fmuladd.f64(double %i.apt, double %i.apv, double %i.apw)
  store double %i.apx, ptr %gep1738, align 8, !tbaa !72
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  %.not1466.not = icmp samesign ult i64 %indvars.iv1624, %i.ami
  br i1 %.not1466.not, label %scalar.ph, label %._crit_edge1545, !llvm.loop !55

._crit_edge1545:                                  ; preds = %scalar.ph, %middle.block, %bb.bw
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1
  %.not1462.not = icmp sgt i64 %indvars.iv1628, %i.amk
  %indvars.iv.next1621 = add i32 %indvars.iv1620, -2
  %indvar.next1751 = add i32 %indvar1750, 1
  br i1 %.not1462.not, label %bb.bw, label %.loopexit, !llvm.loop !56

bb.bx:                                            ; preds = %._crit_edge1532
  %i.apy = load i32, ptr %1, align 4, !tbaa !70
  %.not1459 = icmp eq i32 %i.apy, 0
  %or.cond = or i1 %.not1459, %.not14551518
  br i1 %or.cond, label %.loopexit, label %.lr.ph1540

.lr.ph1540:                                       ; preds = %bb.bx
  %i.apz = add i32 %.013681550, -2
  %i.aqa = load i32, ptr %12, align 4, !tbaa !70  ; 6 uses
  %i.aqb = load i32, ptr %11, align 4, !tbaa !70  ; 4 uses
  %.not14611533 = icmp sgt i32 %i.aqb, %i.aqa
  br i1 %.not14611533, label %.loopexit, label %.lr.ph1536.preheader

.lr.ph1536.preheader:                             ; preds = %.lr.ph1540
  %i.aqc = sext i32 %i.aqb to i64                 ; 6 uses
  %i.aqd = add i32 %i.aqa, 1
  %i.aqe = sext i32 %i.ez to i64
  %smin1617 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aqe)
  %i.aqf = sext i32 %i.ew to i64
  %i.aqg = shl nsw i64 %i.aqc, 3                  ; 3 uses
  %scevgep1804 = getelementptr i8, ptr %scevgep1803, i64 %i.aqg
  %i.aqh = trunc i64 %smin1609 to i32
  %i.aqi = shl nsw i32 %i.aqh, 1                  ; 3 uses
  %i.aqj = add i32 %i.eq, %i.aqi
  %i.aqk = mul i32 %i.n, %i.aqj
  %i.aql = sub i32 %i.aqa, %i.aqb
  %i.aqm = zext i32 %i.aql to i64
  %i.aqn = add nsw i64 %i.aqc, %i.aqm
  %i.aqo = shl nsw i64 %i.aqn, 3                  ; 3 uses
  %scevgep1811.a = getelementptr i8, ptr %scevgep1810, i64 %i.aqo
  %scevgep1814.a = getelementptr i8, ptr %scevgep1813.a, i64 %i.aqg
  %i.aqp = add i32 %.013681550, %i.aqi
  %i.aqq = mul i32 %i.n, %i.aqp
  %scevgep1817.a = getelementptr i8, ptr %scevgep1816.a, i64 %i.aqo
  %scevgep1820.a = getelementptr i8, ptr %scevgep1819.a, i64 %i.aqg
  %i.aqr = add i32 %indvars.iv1586, %i.aqi
  %i.aqs = mul i32 %i.n, %i.aqr
  %scevgep1823.a = getelementptr i8, ptr %scevgep1822.a, i64 %i.aqo
  %i.aqt = mul i64 %i.ck, %smin1609
  %scevgep1826.a = getelementptr i8, ptr %scevgep1825.a, i64 %i.aqt ; 3 uses
  %i.aqu = mul i64 %i.cm, %i.ajb
  %scevgep1828 = getelementptr i8, ptr %scevgep1827, i64 %i.aqu ; 3 uses
  %i.aqv = sub i32 %i.aqa, %i.aqb                 ; 2 uses
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = add nuw nsw i64 %i.aqw, 1              ; 2 uses
  %min.iters.check1856 = icmp ult i32 %i.aqv, 7
  %n.vec1858 = and i64 %i.aqx, 8589934588         ; 3 uses
  %i.aqy = add nsw i64 %n.vec1858, %i.aqc
  %cmp.n1878 = icmp eq i64 %i.aqx, %n.vec1858
  br label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.lr.ph1536.preheader, %._crit_edge1537
  %indvar1807 = phi i32 [ 0, %.lr.ph1536.preheader ], [ %indvar.next1808.a, %._crit_edge1537 ] ; 2 uses
  %indvars.iv1618 = phi i64 [ %smin1617, %.lr.ph1536.preheader ], [ %indvars.iv.next1619, %._crit_edge1537 ] ; 4 uses
  %i.aqz = trunc nsw i64 %indvars.iv1618 to i32
  %i.ara = shl i32 %i.aqz, 1                      ; 2 uses
  %i.arb = add i32 %i.apz, %i.ara                 ; 2 uses
  %i.arc = mul nsw i64 %indvars.iv1618, %i.bw
  %i.ard = getelementptr [8 x i8], ptr %i.s, i64 %i.arc ; 3 uses
  %i.are = getelementptr i8, ptr %i.ard, i64 8    ; 4 uses
  %i.arf = add nsw i32 %i.arb, 1
  %i.arg = mul nsw i32 %i.arf, %i.n
  %i.arh = getelementptr i8, ptr %i.ard, i64 16   ; 7 uses
  %i.ari = add i32 %i.ara, %.013681550
  %i.arj = mul nsw i32 %i.ari, %i.n
  %i.ark = getelementptr i8, ptr %i.ard, i64 24   ; 7 uses
  %i.arl = add nsw i32 %i.arb, 3
  %i.arm = mul nsw i32 %i.arl, %i.n
  %i.arn = sext i32 %i.arg to i64
  %i.aro = sext i32 %i.arj to i64
  %i.arp = sext i32 %i.arm to i64
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.p, i64 %i.arn ; 4 uses
  %invariant.gep1729 = getelementptr [8 x i8], ptr %i.p, i64 %i.aro ; 4 uses
  %invariant.gep1731 = getelementptr [8 x i8], ptr %i.p, i64 %i.arp ; 4 uses
  br i1 %min.iters.check1856, label %scalar.ph1855.preheader, label %vector.memcheck1802

vector.memcheck1802:                              ; preds = %.lr.ph1536
  %i.arq = mul i32 %i.cg, %indvar1807             ; 3 uses
  %i.arr = add i32 %i.aqs, %i.arq
  %i.ars = sext i32 %i.arr to i64
  %i.art = shl nsw i64 %i.ars, 3                  ; 2 uses
  %scevgep1824 = getelementptr i8, ptr %scevgep1823.a, i64 %i.art ; 3 uses
  %scevgep1821 = getelementptr i8, ptr %scevgep1820.a, i64 %i.art ; 3 uses
  %i.aru = add i32 %i.aqq, %i.arq
  %i.arv = sext i32 %i.aru to i64
  %i.arw = shl nsw i64 %i.arv, 3                  ; 2 uses
  %scevgep1818 = getelementptr i8, ptr %scevgep1817.a, i64 %i.arw ; 3 uses
  %scevgep1815 = getelementptr i8, ptr %scevgep1814.a, i64 %i.arw ; 3 uses
  %i.arx = add i32 %i.aqk, %i.arq
  %i.ary = sext i32 %i.arx to i64
  %i.arz = shl nsw i64 %i.ary, 3                  ; 2 uses
  %scevgep1812 = getelementptr i8, ptr %scevgep1811.a, i64 %i.arz ; 3 uses
  %scevgep1809 = getelementptr i8, ptr %scevgep1804, i64 %i.arz ; 3 uses
  %bound01829 = icmp ult ptr %scevgep1809, %scevgep1818
  %bound11830 = icmp ult ptr %scevgep1815, %scevgep1812
  %found.conflict1831 = and i1 %bound01829, %bound11830
  %bound01832 = icmp ult ptr %scevgep1809, %scevgep1824
  %bound11833 = icmp ult ptr %scevgep1821, %scevgep1812
  %found.conflict1834 = and i1 %bound01832, %bound11833
  %conflict.rdx1835 = or i1 %found.conflict1831, %found.conflict1834
  %bound01836 = icmp ult ptr %scevgep1809, %scevgep1828
  %bound11837 = icmp ult ptr %scevgep1826.a, %scevgep1812
  %found.conflict1838 = and i1 %bound01836, %bound11837
  %i.asa = or i1 %found.conflict1838, %stride.check1839
  %conflict.rdx1840 = or i1 %conflict.rdx1835, %i.asa
  %bound01841 = icmp ult ptr %scevgep1815, %scevgep1824
  %bound11842 = icmp ult ptr %scevgep1821, %scevgep1818
  %found.conflict1843 = and i1 %bound01841, %bound11842
  %conflict.rdx1844 = or i1 %conflict.rdx1840, %found.conflict1843
  %bound01845 = icmp ult ptr %scevgep1815, %scevgep1828
  %bound11846 = icmp ult ptr %scevgep1826.a, %scevgep1818
  %found.conflict1847 = and i1 %bound01845, %bound11846
  %conflict.rdx1849 = or i1 %found.conflict1847, %conflict.rdx1844
  %bound01850 = icmp ult ptr %scevgep1821, %scevgep1828
  %bound11851 = icmp ult ptr %scevgep1826.a, %scevgep1824
  %found.conflict1852 = and i1 %bound01850, %bound11851
  %conflict.rdx1854 = or i1 %found.conflict1852, %conflict.rdx1849
  br i1 %conflict.rdx1854, label %scalar.ph1855.preheader, label %vector.ph1857

vector.ph1857:                                    ; preds = %vector.memcheck1802
  %i.asb = load double, ptr %i.are, align 8, !tbaa !72, !alias.scope !110
  %broadcast.splatinsert1868 = insertelement <4 x double> poison, double %i.asb, i64 0
  %broadcast.splat1869 = shufflevector <4 x double> %broadcast.splatinsert1868, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asc = load double, ptr %i.arh, align 8, !tbaa !72, !alias.scope !110 ; 2 uses
  %broadcast.splatinsert1863 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1864 = shufflevector <4 x double> %broadcast.splatinsert1863, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asd = load double, ptr %i.ark, align 8, !tbaa !72, !alias.scope !110 ; 2 uses
  %broadcast.splatinsert1866 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1867 = shufflevector <4 x double> %broadcast.splatinsert1866, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1871 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1872 = shufflevector <4 x double> %broadcast.splatinsert1871, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1874 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1875 = shufflevector <4 x double> %broadcast.splatinsert1874, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1859

vector.body1859:                                  ; preds = %vector.body1859, %vector.ph1857
  %index1860 = phi i64 [ 0, %vector.ph1857 ], [ %index.next1876, %vector.body1859 ] ; 2 uses
  %i.ase = add i64 %index1860, %i.aqc             ; 3 uses
  %i.asf = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %i.ase ; 2 uses
  %wide.load1861 = load <4 x double>, ptr %i.asf, align 8, !tbaa !72, !alias.scope !111, !noalias !112 ; 2 uses
  %i.asg = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %i.ase ; 3 uses
  %wide.load1862 = load <4 x double>, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.ash = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1864, <4 x double> %wide.load1862, <4 x double> %wide.load1861)
  %i.asi = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %i.ase ; 3 uses
  %wide.load1865 = load <4 x double>, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.asj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1867, <4 x double> %wide.load1865, <4 x double> %i.ash)
  %i.ask = fmul <4 x double> %broadcast.splat1869, %i.asj ; 2 uses
  %i.asl = fsub <4 x double> %wide.load1861, %i.ask
  store <4 x double> %i.asl, ptr %i.asf, align 8, !tbaa !72, !alias.scope !111, !noalias !112
  %wide.load1870 = load <4 x double>, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.asm = fneg <4 x double> %i.ask               ; 2 uses
  %i.asn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asm, <4 x double> %broadcast.splat1872, <4 x double> %wide.load1870)
  store <4 x double> %i.asn, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %wide.load1873 = load <4 x double>, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.aso = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asm, <4 x double> %broadcast.splat1875, <4 x double> %wide.load1873)
  store <4 x double> %i.aso, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %index.next1876 = add nuw i64 %index1860, 4     ; 2 uses
  %i.asp = icmp eq i64 %index.next1876, %n.vec1858
  br i1 %i.asp, label %middle.block1877, label %vector.body1859, !llvm.loop !62

middle.block1877:                                 ; preds = %vector.body1859
  br i1 %cmp.n1878, label %._crit_edge1537, label %scalar.ph1855.preheader

scalar.ph1855.preheader:                          ; preds = %vector.memcheck1802, %.lr.ph1536, %middle.block1877
  %indvars.iv1612.ph = phi i64 [ %i.aqc, %vector.memcheck1802 ], [ %i.aqc, %.lr.ph1536 ], [ %i.aqy, %middle.block1877 ] ; 6 uses
  %i.asq = trunc i64 %indvars.iv1612.ph to i32    ; 2 uses
  %i.asr = add i32 %i.aqa, %i.asq
  %i.ass = and i32 %i.asr, 1
  %lcmp.mod2215.not.not = icmp eq i32 %i.ass, 0
  br i1 %lcmp.mod2215.not.not, label %scalar.ph1855.prol, label %scalar.ph1855.prol.loopexit

scalar.ph1855.prol:                               ; preds = %scalar.ph1855.preheader
  %i.ast = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728.prol = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612.ph ; 2 uses
  %i.asu = load double, ptr %gep1728.prol, align 8, !tbaa !72 ; 2 uses
  %i.asv = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730.prol = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612.ph ; 3 uses
  %i.asw = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.asx = call double @llvm.fmuladd.f64(double %i.asv, double %i.asw, double %i.asu)
  %i.asy = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732.prol = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612.ph ; 3 uses
  %i.asz = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.ata = call double @llvm.fmuladd.f64(double %i.asy, double %i.asz, double %i.asx)
  %i.atb = fmul double %i.ast, %i.ata             ; 2 uses
  %i.atc = fsub double %i.asu, %i.atb
  store double %i.atc, ptr %gep1728.prol, align 8, !tbaa !72
  %i.atd = load double, ptr %i.arh, align 8, !tbaa !72
  %i.ate = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.atf = fneg double %i.atb                     ; 2 uses
  %i.atg = call double @llvm.fmuladd.f64(double %i.atf, double %i.atd, double %i.ate)
  store double %i.atg, ptr %gep1730.prol, align 8, !tbaa !72
  %i.ath = load double, ptr %i.ark, align 8, !tbaa !72
  %i.ati = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.atj = call double @llvm.fmuladd.f64(double %i.atf, double %i.ath, double %i.ati)
  store double %i.atj, ptr %gep1732.prol, align 8, !tbaa !72
  %indvars.iv.next1613.prol = add nsw i64 %indvars.iv1612.ph, 1
  br label %scalar.ph1855.prol.loopexit

scalar.ph1855.prol.loopexit:                      ; preds = %scalar.ph1855.prol, %scalar.ph1855.preheader
  %indvars.iv1612.unr = phi i64 [ %indvars.iv1612.ph, %scalar.ph1855.preheader ], [ %indvars.iv.next1613.prol, %scalar.ph1855.prol ]
  %i.atk = icmp eq i32 %i.aqa, %i.asq
  br i1 %i.atk, label %._crit_edge1537, label %scalar.ph1855

scalar.ph1855:                                    ; preds = %scalar.ph1855.prol.loopexit, %scalar.ph1855
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %scalar.ph1855 ], [ %indvars.iv1612.unr, %scalar.ph1855.prol.loopexit ] ; 5 uses
  %i.atl = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612 ; 2 uses
  %i.atm = load double, ptr %gep1728, align 8, !tbaa !72 ; 2 uses
  %i.atn = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612 ; 3 uses
  %i.ato = load double, ptr %gep1730, align 8, !tbaa !72
  %i.atp = call double @llvm.fmuladd.f64(double %i.atn, double %i.ato, double %i.atm)
  %i.atq = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612 ; 3 uses
  %i.atr = load double, ptr %gep1732, align 8, !tbaa !72
  %i.ats = call double @llvm.fmuladd.f64(double %i.atq, double %i.atr, double %i.atp)
  %i.att = fmul double %i.atl, %i.ats             ; 2 uses
  %i.atu = fsub double %i.atm, %i.att
  store double %i.atu, ptr %gep1728, align 8, !tbaa !72
  %i.atv = load double, ptr %i.arh, align 8, !tbaa !72
  %i.atw = load double, ptr %gep1730, align 8, !tbaa !72
  %i.atx = fneg double %i.att                     ; 2 uses
  %i.aty = call double @llvm.fmuladd.f64(double %i.atx, double %i.atv, double %i.atw)
  store double %i.aty, ptr %gep1730, align 8, !tbaa !72
  %i.atz = load double, ptr %i.ark, align 8, !tbaa !72
  %i.aua = load double, ptr %gep1732, align 8, !tbaa !72
  %i.aub = call double @llvm.fmuladd.f64(double %i.atx, double %i.atz, double %i.aua)
  store double %i.aub, ptr %gep1732, align 8, !tbaa !72
  %indvars.iv.next1613 = add nsw i64 %indvars.iv1612, 1 ; 3 uses
  %i.auc = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728.1 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv.next1613 ; 2 uses
  %i.aud = load double, ptr %gep1728.1, align 8, !tbaa !72 ; 2 uses
  %i.aue = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730.1 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv.next1613 ; 3 uses
  %i.auf = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.aug = call double @llvm.fmuladd.f64(double %i.aue, double %i.auf, double %i.aud)
  %i.auh = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732.1 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv.next1613 ; 3 uses
  %i.aui = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.auj = call double @llvm.fmuladd.f64(double %i.auh, double %i.aui, double %i.aug)
  %i.auk = fmul double %i.auc, %i.auj             ; 2 uses
end_hunk_2
