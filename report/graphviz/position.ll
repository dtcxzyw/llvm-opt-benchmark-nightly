Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/position?download=true
inline.NumInlined: 41
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@clust_ht:bb.a
  %i.bf = and i32 %i.be, 1
  %.not74 = icmp eq i32 %i.bf, 0
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !13  ; 4 uses
  br i1 %.not74, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !96
  %i.bi = fadd double %.062.lcssa, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !96
  %i.bl = fadd double %.060.lcssa, %i.bk
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %._crit_edge
  %i.bm = phi ptr [ %.pre, %bb.i ], [ %.pre, %bb.j ], [ %.pre84, %bb.h ], [ %.pre84, %._crit_edge ] ; 2 uses
  %.264 = phi double [ %.062.lcssa, %bb.i ], [ %i.bi, %bb.j ], [ %.062.lcssa, %bb.h ], [ %.062.lcssa, %._crit_edge ] ; 3 uses
  %.2 = phi double [ %.060.lcssa, %bb.i ], [ %i.bl, %bb.j ], [ %.060.lcssa, %bb.h ], [ %.060.lcssa, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ 1, %bb.i ], [ 1, %bb.j ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  store double %.264, ptr %i.bn, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  store double %.2, ptr %i.bo, align 8, !tbaa !90
  %i.bp = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %.not75 = icmp eq ptr %0, %i.bp
  br i1 %.not75, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 336
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !37
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !87 ; 2 uses
  %i.bx = fcmp ogt double %i.bw, %.2
  %..2 = select i1 %i.bx, double %i.bw, double %.2
  store double %..2, ptr %i.bv, align 8, !tbaa !87
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 340
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !38
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !85 ; 2 uses
  %i.ce = fcmp ogt double %i.cd, %.264
  %i.cf = select i1 %i.ce, double %i.cd, double %.264
  store double %i.cf, ptr %i.cc, align 8, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @adjustRanks(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dot_root(ptr noundef %0) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.f = tail call ptr @dot_root(ptr noundef %0) #14
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @G_margin, align 8, !tbaa !89
  %i.i = tail call i32 @late_int(ptr noundef %0, ptr noundef %i.h, i32 noundef 8, i32 noundef 0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.063 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load double, ptr %i.l, align 8, !tbaa !91 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.o = load double, ptr %i.n, align 8, !tbaa !90 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 236
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  %.not72 = icmp slt i32 %i.q, 1
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = add nsw i32 %.063, %1
  %i.s = sitofp nsz i32 %.063 to double           ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %bb.h ]
  %.075 = phi double [ %i.o, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %.06074 = phi double [ %i.m, %.lr.ph ], [ %.161, %bb.h ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93   ; 2 uses
  tail call fastcc void @adjustRanks(ptr noundef %i.x, i32 noundef %i.r)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 340
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !38
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !13  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 340
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !91
  %i.ai = fadd nsz double %i.ah, %i.s
  %i.aj = tail call nsz double @llvm.maxnum.f64(double %.06074, double %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.161 = phi double [ %i.aj, %bb.e ], [ %.06074, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %i.an = load i32, ptr %i.am, align 8, !tbaa !37
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !90
  %i.ar = fadd nsz double %i.aq, %i.s
  %i.as = tail call nsz double @llvm.maxnum.f64(double %.075, double %i.ar)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi double [ %i.as, %bb.g ], [ %.075, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 236
  %i.au = load i32, ptr %i.at, align 4, !tbaa !79
  %i.av = sext i32 %i.au to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.av
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.060.lcssa = phi double [ %i.m, %bb.c ], [ %.161, %bb.h ] ; 2 uses
  %.0.lcssa = phi double [ %i.o, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  %.lcssa = phi ptr [ %i.k, %bb.c ], [ %i.ac, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 136
  store double %.060.lcssa, ptr %i.aw, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa, i64 144
  store double %.0.lcssa, ptr %i.ax, align 8, !tbaa !90
  %i.ay = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %.not69 = icmp eq ptr %0, %i.ay
  br i1 %.not69, label %bb.t, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !13  ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95
  %.not70 = icmp eq ptr %i.bb, null
  br i1 %.not70, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !96 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bf = load double, ptr %i.be, align 8, !tbaa !96 ; 2 uses
  %i.bg = fcmp ogt double %i.bd, %i.bf
  %. = select i1 %i.bg, double %i.bd, double %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 340
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !37
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !86
  %i.bu = sext i32 %i.bi to i64
  %i.bv = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !86
  %i.cd = fsub double %i.bt, %i.cc
  %i.ce = fadd double %.060.lcssa, %i.cd
  %i.cf = fadd double %.0.lcssa, %i.ce
  %i.cg = fsub double %., %i.cf                   ; 5 uses
  %i.ch = fcmp ogt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ci = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 264
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 8 uses
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !13  ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 340
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !38 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 336
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !37 ; 6 uses
  %i.cs = fadd nnan double %i.cg, 1.000000e+00
  %i.ct = fmul nnan double %i.cs, 5.000000e-01    ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 136 ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !91
  %i.cw = fadd double %i.ct, %i.cv                ; 2 uses
  %i.cx = sext i32 %i.cp to i64                   ; 5 uses
  %i.cy = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load double, ptr %i.cz, align 8, !tbaa !85
  %i.db = sitofp i32 %1 to double                 ; 2 uses
  %i.dc = fsub double %i.db, %i.da
  %i.dd = fadd double %i.cw, %i.dc                ; 5 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.de, label %.preheader51.i, label %bb.n

.preheader51.i:                                   ; preds = %bb.k
  %.not52.i = icmp slt i32 %i.cp, %i.cr
  %.pre.i = sext i32 %i.cr to i64                 ; 3 uses
  br i1 %.not52.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader51.i
  %2 = add nsw i64 %i.cx, %.pre.i
  %3 = and i64 %2, 1
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %4 = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %i.cx ; 2 uses
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %.lr.ph.i.prol.loopexit.unr-lcssa

7:                                                ; preds = %.lr.ph.i.prol
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %14 = load double, ptr %13, align 8, !tbaa !86
  %15 = fadd double %i.dd, %14
  store double %15, ptr %13, align 8, !tbaa !86
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %7, %.lr.ph.i.prol
  %indvars.iv.next.i.prol = add nsw i64 %i.cx, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.cx, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %16 = icmp eq i32 %i.cp, %i.cr
  br i1 %16, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.m ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.df = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %indvars.iv.i ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !42
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %17, label %.lr.ph.i.1

17:                                               ; preds = %.lr.ph.i
  %18 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %24 = load double, ptr %23, align 8, !tbaa !86
  %25 = fadd double %i.dd, %24
  store double %25, ptr %23, align 8, !tbaa !86
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %17, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %26 = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %indvars.iv.next.i ; 2 uses
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !43
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !86
  %i.dp = fadd double %i.dd, %i.do
  store double %i.dp, ptr %i.dn, align 8, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.not.i.1 = icmp sgt i64 %indvars.iv.next.i, %.pre.i
  br i1 %.not.not.i.1, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !191

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.m, %.preheader51.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !90 ; 2 uses
  %i.ds = fsub double %i.cg, %i.ct
  %i.dt = fadd double %i.ds, %i.dr
  %i.du = fadd double %i.dd, %i.dt
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !90 ; 2 uses
  %i.dx = fsub double %i.cg, %i.ct
  %i.dy = fadd double %i.dx, %i.dw
  %i.dz = sext i32 %i.cr to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sink90 = phi i64 [ %i.dz, %bb.n ], [ %.pre.i, %._crit_edge.i ]
  %.sink = phi double [ %i.dy, %bb.n ], [ %i.du, %._crit_edge.i ]
  %i.ea = phi double [ %i.dw, %bb.n ], [ %i.dr, %._crit_edge.i ]
  %i.eb = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %.sink90
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !87
  %i.ee = fsub double %i.db, %i.ed
  %i.ef = fadd double %.sink, %i.ee               ; 4 uses
  %i.eg = fcmp ogt double %i.ef, 0.000000e+00
  br i1 %i.eg, label %.preheader.i, label %adjustSimple.exit

.preheader.i:                                     ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 336
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !37 ; 2 uses
  %.not50.not55.i = icmp sgt i32 %i.cr, %i.ei
  br i1 %.not50.not55.i, label %.lr.ph57.preheader.i, label %adjustSimple.exit

.lr.ph57.preheader.i:                             ; preds = %.preheader.i
  %i.ej = sext i32 %i.cr to i64                   ; 4 uses
  %i.ek = sext i32 %i.ei to i64                   ; 3 uses
  %i.el = sub nsw i64 %i.ej, %i.ek
  %xtraiter93 = and i64 %i.el, 1
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.lr.ph57.i.prol.loopexit, label %.lr.ph57.i.prol

.lr.ph57.i.prol:                                  ; preds = %.lr.ph57.preheader.i
  %indvars.iv.next60.i.prol = add nsw i64 %i.ej, -1 ; 3 uses
  %i.em = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %indvars.iv.next60.i.prol ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !42
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %bb.p, label %.lr.ph57.i.prol.loopexit

bb.p:                                             ; preds = %.lr.ph57.i.prol
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !43
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !86
  %i.ew = fadd double %i.ef, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !86
  br label %.lr.ph57.i.prol.loopexit

.lr.ph57.i.prol.loopexit:                         ; preds = %.lr.ph57.i.prol, %bb.p, %.lr.ph57.preheader.i
  %indvars.iv59.i.unr = phi i64 [ %i.ej, %.lr.ph57.preheader.i ], [ %indvars.iv.next60.i.prol, %bb.p ], [ %indvars.iv.next60.i.prol, %.lr.ph57.i.prol ]
  %i.ex = add nsw i64 %i.ej, -1
  %i.ey = icmp eq i64 %i.ex, %i.ek
  br i1 %i.ey, label %adjustSimple.exit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.prol.loopexit, %bb.s
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i.1, %bb.s ], [ %indvars.iv59.i.unr, %.lr.ph57.i.prol.loopexit ] ; 2 uses
  %i.ez = getelementptr [88 x i8], ptr %i.cm, i64 %indvars.iv59.i ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -88
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !42
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.q, label %.lr.ph57.i.1

bb.q:                                             ; preds = %.lr.ph57.i
  %i.fd = getelementptr i8, ptr %i.ez, i64 -80
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !43
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !44
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40 ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !86
  %i.fk = fadd double %i.ef, %i.fj
  store double %i.fk, ptr %i.fi, align 8, !tbaa !86
  br label %.lr.ph57.i.1

.lr.ph57.i.1:                                     ; preds = %bb.q, %.lr.ph57.i
  %indvars.iv.next60.i.1 = add nsw i64 %indvars.iv59.i, -2 ; 3 uses
  %i.fl = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %indvars.iv.next60.i.1 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !42
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph57.i.1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !44
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !86
  %i.fv = fadd double %i.ef, %i.fu
  store double %i.fv, ptr %i.ft, align 8, !tbaa !86
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph57.i.1
  %.not50.not.i.1 = icmp sgt i64 %indvars.iv.next60.i.1, %i.ek
  br i1 %.not50.not.i.1, label %.lr.ph57.i, label %adjustSimple.exit, !llvm.loop !192

adjustSimple.exit:                                ; preds = %.lr.ph57.i.prol.loopexit, %bb.s, %bb.o, %.preheader.i
  %i.fw = fsub double %i.cg, %i.ct
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %i.fy = fadd double %i.fw, %i.ea
  store double %i.fy, ptr %i.fx, align 8, !tbaa !90
  store double %i.cw, ptr %i.cu, align 8, !tbaa !91
  br label %bb.t

bb.t:                                             ; preds = %bb.j, %adjustSimple.exit, %bb.i, %._crit_edge
  %i.fz = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %.not71 = icmp eq ptr %0, %i.fz
  br i1 %.not71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !13  ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 336
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !37
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !87
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 340
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !38
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !85
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 136
  %i.go = load <2 x double>, ptr %i.gn, align 8, !tbaa !80
  %i.gp = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gg, i64 1
  %i.gr = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gq, <2 x double> %i.go) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 1
  store double %i.gs, ptr %i.gf, align 8, !tbaa !87
  %i.gt = extractelement <2 x double> %i.gr, i64 0
  store double %i.gt, ptr %i.gl, align 8, !tbaa !85
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_bb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79
  %.not12 = icmp slt i32 %i.d, 1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  tail call fastcc void @rec_bb(ptr noundef %i.i, ptr noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !79
  %i.m = sext i32 %i.l to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.m
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %i.o = icmp eq ptr %0, %i.n
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !13   ; 15 uses
  br i1 %i.o, label %bb.b, label %bb.h

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 336
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 340
  %i.t = load i32, ptr %i.s, align 4, !tbaa !38   ; 4 uses
  %.not87.i = icmp sgt i32 %i.r, %i.t
  br i1 %.not87.i, label %.preheader.i, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = sext i32 %i.r to i64
  %i.x = add i32 %i.t, 1
  br label %bb.c

.preheader.i:                                     ; preds = %bb.f, %bb.b
  %.sroa.07.0.lcssa.i = phi double [ f0x41DFFFFFFFC00000, %bb.b ], [ %.sroa.07.1.i, %bb.f ] ; 2 uses
end_hunk_0
