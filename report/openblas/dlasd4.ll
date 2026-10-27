Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasd4?download=true
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1

; Function Attrs: nounwind uwtable
define void @dlasd4_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 18 uses
  %i.b = alloca double, align 8                   ; 14 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca [3 x double], align 16            ; 10 uses
  %i.e = alloca [3 x double], align 16            ; 12 uses
  %i.f = alloca i32, align 4                      ; 13 uses
  %i.g = alloca double, align 8                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.h = getelementptr inbounds i8, ptr %7, i64 -8 ; 82 uses
  %i.i = getelementptr inbounds i8, ptr %4, i64 -8 ; 82 uses
  %i.j = getelementptr inbounds i8, ptr %3, i64 -8 ; 64 uses
  %i.k = getelementptr i8, ptr %2, i64 -8         ; 28 uses
  store i32 0, ptr %8, align 4, !tbaa !83
  %i.l = load i32, ptr %0, align 4, !tbaa !83
  switch i32 %i.l, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = load double, ptr %2, align 8, !tbaa !85  ; 2 uses
  %i.n = load double, ptr %5, align 8, !tbaa !85
  %i.o = load double, ptr %3, align 8, !tbaa !85  ; 2 uses
  %i.p = fmul double %i.n, %i.o
  %i.q = fmul double %i.o, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.q)
  %i.s = tail call double @sqrt(double noundef %i.r) #6
  store double %i.s, ptr %6, align 8, !tbaa !85
  store double 1.000000e+00, ptr %4, align 8, !tbaa !85
  store double 1.000000e+00, ptr %7, align 8, !tbaa !85
  br label %.loopexit1662

bb.c:                                             ; preds = %bb.a
  tail call void @dlasd5_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #6
  br label %.loopexit1662

bb.d:                                             ; preds = %bb.a
  %i.t = tail call double @dlamch_(ptr noundef nonnull @.str) #6 ; 5 uses
  %i.u = load double, ptr %5, align 8, !tbaa !85  ; 2 uses
  %i.v = fdiv double 1.000000e+00, %i.u           ; 15 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !83     ; 12 uses
  %i.x = load i32, ptr %0, align 4, !tbaa !83
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.w, -1
  %i.aa = fmul double %i.u, 5.000000e-01          ; 2 uses
  %i.ab = sext i32 %i.w to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !85 ; 3 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.aa)
  %i.af = tail call double @sqrt(double noundef %i.ae) #6
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = fdiv double %i.aa, %i.ag                ; 7 uses
  %i.ai = load i32, ptr %0, align 4, !tbaa !83    ; 12 uses
  %.not16351771 = icmp slt i32 %i.ai, 1
  br i1 %.not16351771, label %._crit_edge1781, label %.lr.ph1774

.lr.ph1774:                                       ; preds = %bb.e
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.aj ; 9 uses
  %i.al = add nuw i32 %i.ai, 1
  %wide.trip.count1923 = zext i32 %i.al to i64    ; 2 uses
  %i.am = zext nneg i32 %i.ai to i64              ; 2 uses
  %min.iters.check2272 = icmp ult i32 %i.ai, 20
  br i1 %min.iters.check2272, label %scalar.ph2271.preheader, label %vector.memcheck2273

vector.memcheck2273:                              ; preds = %.lr.ph1774
  %i.an = shl nuw nsw i64 %wide.trip.count1923, 3
  %i.ao = add nsw i64 %i.an, -8                   ; 3 uses
  %i.ap = getelementptr i8, ptr %7, i64 %i.ao     ; 3 uses
  %i.aq = getelementptr i8, ptr %4, i64 %i.ao     ; 3 uses
  %i.ar = shl nuw nsw i64 %i.aj, 3
  %i.as = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ao     ; 2 uses
  %bound02274 = icmp ult ptr %7, %i.aq
  %bound12275 = icmp ult ptr %4, %i.ap
  %found.conflict2276 = and i1 %bound02274, %bound12275
  %bound02277.a = icmp ult ptr %7, %i.as
  %bound12278.a = icmp ult ptr %i.ak, %i.ap
  %found.conflict2279.a = and i1 %bound02277.a, %bound12278.a
  %conflict.rdx2280.a = or i1 %found.conflict2276, %found.conflict2279.a
  %bound02281.a = icmp ult ptr %7, %i.at
  %bound12282.a = icmp ult ptr %2, %i.ap
  %found.conflict2283.a = and i1 %bound02281.a, %bound12282.a
  %conflict.rdx2284.a = or i1 %conflict.rdx2280.a, %found.conflict2283.a
  %bound02285.a = icmp ult ptr %4, %i.as
  %bound12286.a = icmp ult ptr %i.ak, %i.aq
  %found.conflict2287.a = and i1 %bound02285.a, %bound12286.a
  %conflict.rdx2288.a = or i1 %conflict.rdx2284.a, %found.conflict2287.a
  %bound02289 = icmp ult ptr %4, %i.at
  %bound12290 = icmp ult ptr %2, %i.aq
  %found.conflict2291 = and i1 %bound02289, %bound12290
  %conflict.rdx2292 = or i1 %conflict.rdx2288.a, %found.conflict2291
  br i1 %conflict.rdx2292, label %scalar.ph2271.preheader, label %vector.ph2293

vector.ph2293:                                    ; preds = %vector.memcheck2273
  %n.vec2294 = and i64 %i.am, 2147483640          ; 3 uses
  %i.au = or disjoint i64 %n.vec2294, 1
  %i.av = load double, ptr %i.ak, align 8, !tbaa !85, !alias.scope !86
  %broadcast.splatinsert2305 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat2306 = shufflevector <4 x double> %broadcast.splatinsert2305, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2295 = insertelement <4 x double> poison, double %i.ah, i64 0
  %broadcast.splat2296 = shufflevector <4 x double> %broadcast.splatinsert2295, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2297

vector.body2297:                                  ; preds = %vector.body2297, %vector.ph2293
  %index2298 = phi i64 [ 0, %vector.ph2293 ], [ %index.next2307, %vector.body2297 ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %index2298 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %wide.load2299.a = load <4 x double>, ptr %i.aw, align 8, !tbaa !85, !alias.scope !87
  %wide.load2300.a = load <4 x double>, ptr %i.ax, align 8, !tbaa !85, !alias.scope !87
  %i.ay = fadd <4 x double> %wide.load2299.a, %broadcast.splat2306
  %i.az = fadd <4 x double> %wide.load2300.a, %broadcast.splat2306
  %i.ba = fadd <4 x double> %broadcast.splat2296, %i.ay
  %i.bb = fadd <4 x double> %broadcast.splat2296, %i.az
  %i.bc = getelementptr [8 x i8], ptr %7, i64 %index2298 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <4 x double> %i.ba, ptr %i.bc, align 8, !tbaa !85, !alias.scope !88, !noalias !89
  store <4 x double> %i.bb, ptr %i.bd, align 8, !tbaa !85, !alias.scope !88, !noalias !89
  %wide.load2303 = load <4 x double>, ptr %i.aw, align 8, !tbaa !85, !alias.scope !87
  %wide.load2304 = load <4 x double>, ptr %i.ax, align 8, !tbaa !85, !alias.scope !87
  %i.be = fsub <4 x double> %wide.load2303, %broadcast.splat2306
  %i.bf = fsub <4 x double> %wide.load2304, %broadcast.splat2306
  %i.bg = fsub <4 x double> %i.be, %broadcast.splat2296
  %i.bh = fsub <4 x double> %i.bf, %broadcast.splat2296
  %i.bi = getelementptr [8 x i8], ptr %4, i64 %index2298 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store <4 x double> %i.bg, ptr %i.bi, align 8, !tbaa !85, !alias.scope !90, !noalias !91
  store <4 x double> %i.bh, ptr %i.bj, align 8, !tbaa !85, !alias.scope !90, !noalias !91
  %index.next2307 = add nuw i64 %index2298, 8     ; 2 uses
  %i.bk = icmp eq i64 %index.next2307, %n.vec2294
  br i1 %i.bk, label %middle.block2308, label %vector.body2297, !llvm.loop !13

middle.block2308:                                 ; preds = %vector.body2297
  %cmp.n2309 = icmp eq i64 %n.vec2294, %i.am
  br i1 %cmp.n2309, label %._crit_edge1775, label %scalar.ph2271.preheader

scalar.ph2271.preheader:                          ; preds = %vector.memcheck2273, %.lr.ph1774, %middle.block2308
  %indvars.iv1920.ph = phi i64 [ 1, %vector.memcheck2273 ], [ 1, %.lr.ph1774 ], [ %i.au, %middle.block2308 ] ; 6 uses
  %i.bl = zext nneg i32 %i.ai to i64
  %i.bm = and i32 %i.ai, 1
  %lcmp.mod2506.not = icmp eq i32 %i.bm, 0
  br i1 %lcmp.mod2506.not, label %scalar.ph2271.prol.loopexit, label %scalar.ph2271.prol

scalar.ph2271.prol:                               ; preds = %scalar.ph2271.preheader
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1920.ph ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !85
  %i.bp = load double, ptr %i.ak, align 8, !tbaa !85
  %i.bq = fadd double %i.bo, %i.bp
  %i.br = fadd double %i.ah, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1920.ph
  store double %i.br, ptr %i.bs, align 8, !tbaa !85
  %i.bt = load double, ptr %i.bn, align 8, !tbaa !85
  %i.bu = load double, ptr %i.ak, align 8, !tbaa !85
  %i.bv = fsub double %i.bt, %i.bu
  %i.bw = fsub double %i.bv, %i.ah
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1920.ph
  store double %i.bw, ptr %i.bx, align 8, !tbaa !85
  %indvars.iv.next1921.prol = add nuw nsw i64 %indvars.iv1920.ph, 1
  br label %scalar.ph2271.prol.loopexit

scalar.ph2271.prol.loopexit:                      ; preds = %scalar.ph2271.prol, %scalar.ph2271.preheader
  %indvars.iv1920.unr = phi i64 [ %indvars.iv1920.ph, %scalar.ph2271.preheader ], [ %indvars.iv.next1921.prol, %scalar.ph2271.prol ]
  %i.by = icmp eq i64 %indvars.iv1920.ph, %i.bl
  br i1 %i.by, label %._crit_edge1775, label %scalar.ph2271

scalar.ph2271:                                    ; preds = %scalar.ph2271.prol.loopexit, %scalar.ph2271
  %indvars.iv1920 = phi i64 [ %indvars.iv.next1921.1, %scalar.ph2271 ], [ %indvars.iv1920.unr, %scalar.ph2271.prol.loopexit ] ; 7 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1920 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !85
  %i.cb = load double, ptr %i.ak, align 8, !tbaa !85
  %i.cc = fadd double %i.ca, %i.cb
  %i.cd = fadd double %i.ah, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1920
  store double %i.cd, ptr %i.ce, align 8, !tbaa !85
  %i.cf = load double, ptr %i.bz, align 8, !tbaa !85
  %i.cg = load double, ptr %i.ak, align 8, !tbaa !85
  %i.ch = fsub double %i.cf, %i.cg
  %i.ci = fsub double %i.ch, %i.ah
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1920
  store double %i.ci, ptr %i.cj, align 8, !tbaa !85
  %i.ck = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1920 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !85
  %i.cm = load double, ptr %i.ak, align 8, !tbaa !85
  %i.cn = fadd double %i.cl, %i.cm
  %i.co = fadd double %i.ah, %i.cn
  %i.cp = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1920
  store double %i.co, ptr %i.cp, align 8, !tbaa !85
  %i.cq = load double, ptr %i.ck, align 8, !tbaa !85
  %i.cr = load double, ptr %i.ak, align 8, !tbaa !85
  %i.cs = fsub double %i.cq, %i.cr
  %i.ct = fsub double %i.cs, %i.ah
  %i.cu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1920
  store double %i.ct, ptr %i.cu, align 8, !tbaa !85
  %indvars.iv.next1921.1 = add nuw nsw i64 %indvars.iv1920, 2 ; 2 uses
  %exitcond1924.not.1 = icmp eq i64 %indvars.iv.next1921.1, %wide.trip.count1923
  br i1 %exitcond1924.not.1, label %._crit_edge1775, label %scalar.ph2271, !llvm.loop !14

._crit_edge1775:                                  ; preds = %scalar.ph2271.prol.loopexit, %scalar.ph2271, %middle.block2308
  %.not16361776 = icmp samesign ult i32 %i.ai, 3
  br i1 %.not16361776, label %._crit_edge1781, label %.lr.ph1780.preheader

.lr.ph1780.preheader:                             ; preds = %._crit_edge1775
  %i.cv = zext nneg i32 %i.ai to i64
  %i.cw = add nsw i64 %i.cv, -2                   ; 2 uses
  %xtraiter2508 = and i64 %i.cw, 3                ; 3 uses
  %i.cx = add nsw i32 %i.ai, -3
  %i.cy = icmp ult i32 %i.cx, 3
  br i1 %i.cy, label %.lr.ph1780.epil.preheader, label %.lr.ph1780.preheader.new

.lr.ph1780.preheader.new:                         ; preds = %.lr.ph1780.preheader
  %unroll_iter2513 = and i64 %i.cw, -4
  br label %.lr.ph1780

.lr.ph1780:                                       ; preds = %.lr.ph1780, %.lr.ph1780.preheader.new
  %indvars.iv1925 = phi i64 [ 1, %.lr.ph1780.preheader.new ], [ %indvars.iv.next1926.3, %.lr.ph1780 ] ; 9 uses
  %.014751778 = phi double [ 0.000000e+00, %.lr.ph1780.preheader.new ], [ %i.em, %.lr.ph1780 ]
  %niter2514 = phi i64 [ 0, %.lr.ph1780.preheader.new ], [ %niter2514.next.3, %.lr.ph1780 ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1925
  %i.da = load double, ptr %i.cz, align 8, !tbaa !85 ; 2 uses
  %i.db = fmul double %i.da, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1925
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !85
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1925
  %i.df = load double, ptr %i.de, align 8, !tbaa !85
  %i.dg = fmul double %i.dd, %i.df
  %i.dh = fdiv double %i.db, %i.dg
  %i.di = fadd double %.014751778, %i.dh
  %i.dj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1925
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !85 ; 2 uses
  %i.dl = fmul double %i.dk, %i.dk
  %i.dm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1925
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !85
  %i.do = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1925
  %i.dp = load double, ptr %i.do, align 8, !tbaa !85
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = fdiv double %i.dl, %i.dq
  %i.ds = fadd double %i.di, %i.dr
  %indvars.iv.next1926.1 = add nuw nsw i64 %indvars.iv1925, 2 ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1926.1
  %i.du = load double, ptr %i.dt, align 8, !tbaa !85 ; 2 uses
  %i.dv = fmul double %i.du, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1926.1
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !85
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1926.1
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !85
  %i.ea = fmul double %i.dx, %i.dz
  %i.eb = fdiv double %i.dv, %i.ea
  %i.ec = fadd double %i.ds, %i.eb
  %indvars.iv.next1926.2 = add nuw nsw i64 %indvars.iv1925, 3 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1926.2
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !85 ; 2 uses
  %i.ef = fmul double %i.ee, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1926.2
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !85
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1926.2
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !85
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = fdiv double %i.ef, %i.ek
  %i.em = fadd double %i.ec, %i.el                ; 3 uses
  %indvars.iv.next1926.3 = add nuw nsw i64 %indvars.iv1925, 4 ; 2 uses
  %niter2514.next.3 = add i64 %niter2514, 4       ; 2 uses
  %niter2514.ncmp.3 = icmp eq i64 %niter2514.next.3, %unroll_iter2513
  br i1 %niter2514.ncmp.3, label %._crit_edge1781.loopexit.unr-lcssa, label %.lr.ph1780, !llvm.loop !15

._crit_edge1781.loopexit.unr-lcssa:               ; preds = %.lr.ph1780
  %lcmp.mod2510.not = icmp eq i64 %xtraiter2508, 0
  br i1 %lcmp.mod2510.not, label %._crit_edge1781, label %.lr.ph1780.epil.preheader

.lr.ph1780.epil.preheader:                        ; preds = %._crit_edge1781.loopexit.unr-lcssa, %.lr.ph1780.preheader
  %indvars.iv1925.epil.init = phi i64 [ 1, %.lr.ph1780.preheader ], [ %indvars.iv.next1926.3, %._crit_edge1781.loopexit.unr-lcssa ]
  %.014751778.epil.init = phi double [ 0.000000e+00, %.lr.ph1780.preheader ], [ %i.em, %._crit_edge1781.loopexit.unr-lcssa ]
  %lcmp.mod2512 = icmp ne i64 %xtraiter2508, 0
  tail call void @llvm.assume(i1 %lcmp.mod2512)
  br label %.lr.ph1780.epil

.lr.ph1780.epil:                                  ; preds = %.lr.ph1780.epil, %.lr.ph1780.epil.preheader
  %indvars.iv1925.epil = phi i64 [ %indvars.iv1925.epil.init, %.lr.ph1780.epil.preheader ], [ %indvars.iv.next1926.epil, %.lr.ph1780.epil ] ; 4 uses
  %.014751778.epil = phi double [ %.014751778.epil.init, %.lr.ph1780.epil.preheader ], [ %i.ew, %.lr.ph1780.epil ]
  %epil.iter2509 = phi i64 [ 0, %.lr.ph1780.epil.preheader ], [ %epil.iter2509.next, %.lr.ph1780.epil ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1925.epil
  %i.eo = load double, ptr %i.en, align 8, !tbaa !85 ; 2 uses
  %i.ep = fmul double %i.eo, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1925.epil
  %i.er = load double, ptr %i.eq, align 8, !tbaa !85
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1925.epil
  %i.et = load double, ptr %i.es, align 8, !tbaa !85
  %i.eu = fmul double %i.er, %i.et
  %i.ev = fdiv double %i.ep, %i.eu
  %i.ew = fadd double %.014751778.epil, %i.ev     ; 2 uses
  %indvars.iv.next1926.epil = add nuw nsw i64 %indvars.iv1925.epil, 1
  %epil.iter2509.next = add i64 %epil.iter2509, 1 ; 2 uses
  %epil.iter2509.cmp.not = icmp eq i64 %epil.iter2509.next, %xtraiter2508
  br i1 %epil.iter2509.cmp.not, label %._crit_edge1781, label %.lr.ph1780.epil, !llvm.loop !16

._crit_edge1781:                                  ; preds = %._crit_edge1781.loopexit.unr-lcssa, %.lr.ph1780.epil, %bb.e, %._crit_edge1775
  %.01475.lcssa = phi double [ 0.000000e+00, %._crit_edge1775 ], [ 0.000000e+00, %bb.e ], [ %i.em, %._crit_edge1781.loopexit.unr-lcssa ], [ %i.ew, %.lr.ph1780.epil ]
  %i.ex = fadd double %i.v, %.01475.lcssa         ; 10 uses
  %i.ey = sext i32 %i.z to i64                    ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !85 ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ey
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !85
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ey
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !85
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = fdiv double %i.fb, %i.fg
  %i.fi = fadd double %i.ex, %i.fh
  %i.fj = sext i32 %i.ai to i64                   ; 4 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !85 ; 4 uses
  %i.fm = fmul double %i.fl, %i.fl                ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fj
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !85
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fj
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !85
  %i.fr = fmul double %i.fo, %i.fq
  %i.fs = fdiv double %i.fm, %i.fr
  %i.ft = fadd double %i.fi, %i.fs
  %i.fu = fcmp ugt double %i.ft, 0.000000e+00
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fj
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !85 ; 4 uses
  br i1 %i.fu, label %bb.j, label %bb.f

bb.f:                                             ; preds = %._crit_edge1781
  %i.fx = load double, ptr %5, align 8, !tbaa !85 ; 4 uses
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.fw, double %i.fx)
  %i.fz = tail call double @sqrt(double noundef %i.fy) #6 ; 2 uses
  %i.ga = load i32, ptr %0, align 4, !tbaa !83    ; 2 uses
  %i.gb = add nsw i32 %i.ga, -1
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gc
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gc
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !85 ; 3 uses
  %i.gg = fadd double %i.fz, %i.gf
  %i.gh = sext i32 %i.ga to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !85 ; 3 uses
  %i.gk = fsub double %i.gj, %i.gf                ; 2 uses
  %i.gl = fadd double %i.fz, %i.gj
  %i.gm = fdiv double %i.fx, %i.gl
  %i.gn = fadd double %i.gk, %i.gm
  %i.go = fmul double %i.gg, %i.gn
  %i.gp = load <2 x double>, ptr %i.gd, align 8, !tbaa !85 ; 2 uses
  %i.gq = fmul <2 x double> %i.gp, %i.gp          ; 3 uses
  %i.gr = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.fx, i64 1
  %i.gt = fdiv <2 x double> %i.gq, %i.gs          ; 2 uses
  %shift = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.gt
  %i.gu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gv = fcmp ugt double %i.ex, %i.gu
  br i1 %i.gv, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gh
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !85 ; 2 uses
  %i.gy = fadd double %i.gf, %i.gj
  %i.gz = fmul double %i.gk, %i.gy                ; 2 uses
  %i.ha = fneg double %i.ex
  %i.hb = extractelement <2 x double> %i.gq, i64 0
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.gz, double %i.hb)
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gx, double %i.hc) ; 7 uses
  %i.he = extractelement <2 x double> %i.gq, i64 1
  %i.hf = fmul double %i.he, %i.gz                ; 3 uses
  %i.hg = fcmp olt double %i.hd, 0.000000e+00
  br i1 %i.hg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hh = fmul double %i.hf, 2.000000e+00
  %i.hi = fmul double %i.hf, 4.000000e+00
  %i.hj = fmul double %i.ex, %i.hi
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.hd, double %i.hj)
  %i.hl = tail call double @sqrt(double noundef %i.hk) #6
  %i.hm = fsub double %i.hl, %i.hd
  %i.hn = fdiv double %i.hh, %i.hm
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.ho = fmul double %i.hf, 4.000000e+00
  %i.hp = fmul double %i.ex, %i.ho
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.hd, double %i.hp)
  %i.hr = tail call double @sqrt(double noundef %i.hq) #6
  %i.hs = fadd double %i.hd, %i.hr
  %i.ht = fmul double %i.ex, 2.000000e+00
  %i.hu = fdiv double %i.hs, %i.ht
  br label %.sink.split

bb.j:                                             ; preds = %._crit_edge1781
  %i.hv = add nsw i32 %i.ai, -1
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !85 ; 2 uses
  %i.hz = fsub double %i.fw, %i.hy
  %i.ia = fadd double %i.fw, %i.hy
  %i.ib = fmul double %i.hz, %i.ia                ; 2 uses
  %i.ic = fneg double %i.ex
  %i.id = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hw
  %i.ie = load double, ptr %i.id, align 8, !tbaa !85 ; 2 uses
  %i.if = fmul double %i.ie, %i.ie
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ib, double %i.if)
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.ig) ; 7 uses
  %i.ii = fmul double %i.fm, %i.ib                ; 3 uses
  %i.ij = fcmp olt double %i.ih, 0.000000e+00
  br i1 %i.ij, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ik = fmul double %i.ii, 2.000000e+00
  %i.il = fmul double %i.ii, 4.000000e+00
  %i.im = fmul double %i.ex, %i.il
  %i.in = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ih, double %i.im)
  %i.io = tail call double @sqrt(double noundef %i.in) #6
  %i.ip = fsub double %i.io, %i.ih
  %i.iq = fdiv double %i.ik, %i.ip
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.ir = fmul double %i.ii, 4.000000e+00
  %i.is = fmul double %i.ex, %i.ir
  %i.it = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ih, double %i.is)
  %i.iu = tail call double @sqrt(double noundef %i.it) #6
  %i.iv = fadd double %i.ih, %i.iu
  %i.iw = fmul double %i.ex, 2.000000e+00
  %i.ix = fdiv double %i.iv, %i.iw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.h, %bb.i
  %.0.sink2054 = phi double [ %i.hu, %bb.i ], [ %i.hn, %bb.h ], [ %i.iq, %bb.k ], [ %i.ix, %bb.l ] ; 2 uses
  %i.iy = load i32, ptr %0, align 4, !tbaa !83
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !85 ; 3 uses
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.jb, double %.0.sink2054)
  %i.jd = tail call double @sqrt(double noundef %i.jc) #6
  %i.je = fadd double %i.jb, %i.jd
  %i.jf = fdiv double %.0.sink2054, %i.je
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.f
  %.01479 = phi double [ %i.fx, %bb.f ], [ %i.jf, %.sink.split ] ; 8 uses
  %i.jg = load i32, ptr %0, align 4, !tbaa !83    ; 8 uses
  %i.jh = sext i32 %i.jg to i64                   ; 5 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.jh ; 10 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !85
  %i.jk = fadd double %.01479, %i.jj
  store double %i.jk, ptr %6, align 8, !tbaa !85
  %.not16371783 = icmp slt i32 %i.jg, 1
  br i1 %.not16371783, label %.preheader1660, label %.lr.ph1786.preheader

.lr.ph1786.preheader:                             ; preds = %bb.m
  %i.jl = add nuw i32 %i.jg, 1
  %wide.trip.count1933 = zext i32 %i.jl to i64    ; 2 uses
  %i.jm = zext nneg i32 %i.jg to i64              ; 2 uses
  %min.iters.check2336 = icmp ult i32 %i.jg, 20
  br i1 %min.iters.check2336, label %.lr.ph1786.preheader2436, label %vector.memcheck2337

vector.memcheck2337:                              ; preds = %.lr.ph1786.preheader
  %i.jn = shl nuw nsw i64 %wide.trip.count1933, 3
  %i.jo = add nsw i64 %i.jn, -8                   ; 3 uses
  %i.jp = getelementptr i8, ptr %4, i64 %i.jo     ; 3 uses
  %i.jq = getelementptr i8, ptr %7, i64 %i.jo     ; 3 uses
  %i.jr = shl nuw nsw i64 %i.jh, 3
  %i.js = getelementptr i8, ptr %2, i64 %i.jr     ; 2 uses
  %i.jt = getelementptr i8, ptr %2, i64 %i.jo     ; 2 uses
  %bound02338 = icmp ult ptr %4, %i.jq
  %bound12339 = icmp ult ptr %7, %i.jp
  %found.conflict2340 = and i1 %bound02338, %bound12339
  %bound02341 = icmp ult ptr %4, %i.js
  %bound12342 = icmp ult ptr %i.ji, %i.jp
  %found.conflict2343 = and i1 %bound02341, %bound12342
  %conflict.rdx2344 = or i1 %found.conflict2340, %found.conflict2343
  %bound02345 = icmp ult ptr %4, %i.jt
  %bound12346 = icmp ult ptr %2, %i.jp
  %found.conflict2347 = and i1 %bound02345, %bound12346
  %conflict.rdx2348 = or i1 %conflict.rdx2344, %found.conflict2347
  %bound02349 = icmp ult ptr %7, %i.js
  %bound12350 = icmp ult ptr %i.ji, %i.jq
  %found.conflict2351 = and i1 %bound02349, %bound12350
  %conflict.rdx2352 = or i1 %conflict.rdx2348, %found.conflict2351
  %bound02353 = icmp ult ptr %7, %i.jt
  %bound12354 = icmp ult ptr %2, %i.jq
  %found.conflict2355 = and i1 %bound02353, %bound12354
  %conflict.rdx2356 = or i1 %conflict.rdx2352, %found.conflict2355
  br i1 %conflict.rdx2356, label %.lr.ph1786.preheader2436, label %vector.ph2357

vector.ph2357:                                    ; preds = %vector.memcheck2337
  %n.vec2358 = and i64 %i.jm, 2147483640          ; 3 uses
  %i.ju = or disjoint i64 %n.vec2358, 1
  %i.jv = load double, ptr %i.ji, align 8, !tbaa !85, !alias.scope !96
  %broadcast.splatinsert2369 = insertelement <4 x double> poison, double %i.jv, i64 0
  %broadcast.splat2370 = shufflevector <4 x double> %broadcast.splatinsert2369, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2359 = insertelement <4 x double> poison, double %.01479, i64 0
  %broadcast.splat2360 = shufflevector <4 x double> %broadcast.splatinsert2359, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2361

vector.body2361:                                  ; preds = %vector.body2361, %vector.ph2357
  %index2362 = phi i64 [ 0, %vector.ph2357 ], [ %index.next2371, %vector.body2361 ] ; 4 uses
  %i.jw = getelementptr [8 x i8], ptr %2, i64 %index2362 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 2 uses
  %wide.load2363 = load <4 x double>, ptr %i.jw, align 8, !tbaa !85, !alias.scope !97
  %wide.load2364 = load <4 x double>, ptr %i.jx, align 8, !tbaa !85, !alias.scope !97
  %i.jy = fsub <4 x double> %wide.load2363, %broadcast.splat2370
  %i.jz = fsub <4 x double> %wide.load2364, %broadcast.splat2370
  %i.ka = fsub <4 x double> %i.jy, %broadcast.splat2360
  %i.kb = fsub <4 x double> %i.jz, %broadcast.splat2360
  %i.kc = getelementptr [8 x i8], ptr %4, i64 %index2362 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store <4 x double> %i.ka, ptr %i.kc, align 8, !tbaa !85, !alias.scope !98, !noalias !99
  store <4 x double> %i.kb, ptr %i.kd, align 8, !tbaa !85, !alias.scope !98, !noalias !99
  %wide.load2367 = load <4 x double>, ptr %i.jw, align 8, !tbaa !85, !alias.scope !97
  %wide.load2368 = load <4 x double>, ptr %i.jx, align 8, !tbaa !85, !alias.scope !97
  %i.ke = fadd <4 x double> %wide.load2367, %broadcast.splat2370
  %i.kf = fadd <4 x double> %wide.load2368, %broadcast.splat2370
  %i.kg = fadd <4 x double> %broadcast.splat2360, %i.ke
  %i.kh = fadd <4 x double> %broadcast.splat2360, %i.kf
  %i.ki = getelementptr [8 x i8], ptr %7, i64 %index2362 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store <4 x double> %i.kg, ptr %i.ki, align 8, !tbaa !85, !alias.scope !100, !noalias !101
  store <4 x double> %i.kh, ptr %i.kj, align 8, !tbaa !85, !alias.scope !100, !noalias !101
  %index.next2371 = add nuw i64 %index2362, 8     ; 2 uses
  %i.kk = icmp eq i64 %index.next2371, %n.vec2358
  br i1 %i.kk, label %middle.block2372, label %vector.body2361, !llvm.loop !22

middle.block2372:                                 ; preds = %vector.body2361
  %cmp.n2373 = icmp eq i64 %n.vec2358, %i.jm
  br i1 %cmp.n2373, label %.preheader1660, label %.lr.ph1786.preheader2436

.lr.ph1786.preheader2436:                         ; preds = %vector.memcheck2337, %.lr.ph1786.preheader, %middle.block2372
  %indvars.iv1930.ph = phi i64 [ 1, %vector.memcheck2337 ], [ 1, %.lr.ph1786.preheader ], [ %i.ju, %middle.block2372 ] ; 6 uses
  %i.kl = zext nneg i32 %i.jg to i64
  %i.km = and i32 %i.jg, 1
  %lcmp.mod2516.not = icmp eq i32 %i.km, 0
  br i1 %lcmp.mod2516.not, label %.lr.ph1786.prol.loopexit, label %.lr.ph1786.prol

.lr.ph1786.prol:                                  ; preds = %.lr.ph1786.preheader2436
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1930.ph ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !85
  %i.kp = load double, ptr %i.ji, align 8, !tbaa !85
  %i.kq = fsub double %i.ko, %i.kp
  %i.kr = fsub double %i.kq, %.01479
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1930.ph
  store double %i.kr, ptr %i.ks, align 8, !tbaa !85
  %i.kt = load double, ptr %i.kn, align 8, !tbaa !85
  %i.ku = load double, ptr %i.ji, align 8, !tbaa !85
  %i.kv = fadd double %i.kt, %i.ku
  %i.kw = fadd double %.01479, %i.kv
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1930.ph
  store double %i.kw, ptr %i.kx, align 8, !tbaa !85
  %indvars.iv.next1931.prol = add nuw nsw i64 %indvars.iv1930.ph, 1
  br label %.lr.ph1786.prol.loopexit

.lr.ph1786.prol.loopexit:                         ; preds = %.lr.ph1786.prol, %.lr.ph1786.preheader2436
  %indvars.iv1930.unr = phi i64 [ %indvars.iv1930.ph, %.lr.ph1786.preheader2436 ], [ %indvars.iv.next1931.prol, %.lr.ph1786.prol ]
  %i.ky = icmp eq i64 %indvars.iv1930.ph, %i.kl
  br i1 %i.ky, label %.preheader1660, label %.lr.ph1786

.preheader1660:                                   ; preds = %.lr.ph1786.prol.loopexit, %.lr.ph1786, %middle.block2372, %bb.m
  %.not1638.not1787 = icmp sgt i32 %i.w, 1        ; 3 uses
  br i1 %.not1638.not1787, label %.lr.ph1792.preheader, label %._crit_edge1793

.lr.ph1792.preheader:                             ; preds = %.preheader1660
  %wide.trip.count1938 = zext nneg i32 %i.w to i64
  %i.kz = add nsw i64 %wide.trip.count1938, -1    ; 2 uses
  %xtraiter2518 = and i64 %i.kz, 3                ; 3 uses
  %i.la = add nsw i32 %i.w, -2
  %i.lb = icmp ult i32 %i.la, 3
  br i1 %i.lb, label %.lr.ph1792.epil.preheader, label %.lr.ph1792.preheader.new

.lr.ph1792.preheader.new:                         ; preds = %.lr.ph1792.preheader
  %unroll_iter2525 = and i64 %i.kz, -4
  br label %.lr.ph1792

.lr.ph1786:                                       ; preds = %.lr.ph1786.prol.loopexit, %.lr.ph1786
  %indvars.iv1930 = phi i64 [ %indvars.iv.next1931.1, %.lr.ph1786 ], [ %indvars.iv1930.unr, %.lr.ph1786.prol.loopexit ] ; 7 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1930 ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !85
  %i.le = load double, ptr %i.ji, align 8, !tbaa !85
  %i.lf = fsub double %i.ld, %i.le
  %i.lg = fsub double %i.lf, %.01479
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1930
  store double %i.lg, ptr %i.lh, align 8, !tbaa !85
  %i.li = load double, ptr %i.lc, align 8, !tbaa !85
  %i.lj = load double, ptr %i.ji, align 8, !tbaa !85
  %i.lk = fadd double %i.li, %i.lj
  %i.ll = fadd double %.01479, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1930
  store double %i.ll, ptr %i.lm, align 8, !tbaa !85
  %i.ln = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1930 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !85
  %i.lp = load double, ptr %i.ji, align 8, !tbaa !85
  %i.lq = fsub double %i.lo, %i.lp
  %i.lr = fsub double %i.lq, %.01479
  %i.ls = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1930
  store double %i.lr, ptr %i.ls, align 8, !tbaa !85
  %i.lt = load double, ptr %i.ln, align 8, !tbaa !85
  %i.lu = load double, ptr %i.ji, align 8, !tbaa !85
  %i.lv = fadd double %i.lt, %i.lu
  %i.lw = fadd double %.01479, %i.lv
  %i.lx = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1930
  store double %i.lw, ptr %i.lx, align 8, !tbaa !85
  %indvars.iv.next1931.1 = add nuw nsw i64 %indvars.iv1930, 2 ; 2 uses
  %exitcond1934.not.1 = icmp eq i64 %indvars.iv.next1931.1, %wide.trip.count1933
  br i1 %exitcond1934.not.1, label %.preheader1660, label %.lr.ph1786, !llvm.loop !23

.lr.ph1792:                                       ; preds = %.lr.ph1792, %.lr.ph1792.preheader.new
  %indvars.iv1935 = phi i64 [ 1, %.lr.ph1792.preheader.new ], [ %indvars.iv.next1936.3, %.lr.ph1792 ] ; 9 uses
  %.114761791 = phi double [ 0.000000e+00, %.lr.ph1792.preheader.new ], [ %i.nn, %.lr.ph1792 ]
  %.014881790 = phi double [ 0.000000e+00, %.lr.ph1792.preheader.new ], [ %i.np, %.lr.ph1792 ]
  %.015261788 = phi double [ 0.000000e+00, %.lr.ph1792.preheader.new ], [ %i.no, %.lr.ph1792 ]
  %niter2526 = phi i64 [ 0, %.lr.ph1792.preheader.new ], [ %niter2526.next.3, %.lr.ph1792 ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1935
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !85 ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1935
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !85
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1935
  %i.md = load double, ptr %i.mc, align 8, !tbaa !85
  %i.me = fmul double %i.mb, %i.md
  %i.mf = fdiv double %i.lz, %i.me                ; 3 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.mf, double %.114761791) ; 2 uses
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.mf, double %.015261788)
  %i.mi = fadd double %.014881790, %i.mg
  %i.mj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1935
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !85 ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1935
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !85
  %i.mn = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1935
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !85
  %i.mp = fmul double %i.mm, %i.mo
  %i.mq = fdiv double %i.mk, %i.mp                ; 3 uses
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.mq, double %i.mg) ; 2 uses
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.mq, double %i.mh)
  %i.mt = fadd double %i.mi, %i.mr
  %indvars.iv.next1936.1 = add nuw nsw i64 %indvars.iv1935, 2 ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1936.1
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !85 ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1936.1
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !85
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1936.1
  %i.mz = load double, ptr %i.my, align 8, !tbaa !85
  %i.na = fmul double %i.mx, %i.mz
  %i.nb = fdiv double %i.mv, %i.na                ; 3 uses
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.nb, double %i.mr) ; 2 uses
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.nb, double %i.ms)
  %i.ne = fadd double %i.mt, %i.nc
  %indvars.iv.next1936.2 = add nuw nsw i64 %indvars.iv1935, 3 ; 3 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1936.2
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !85 ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1936.2
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !85
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1936.2
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !85
  %i.nl = fmul double %i.ni, %i.nk
  %i.nm = fdiv double %i.ng, %i.nl                ; 3 uses
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.ng, double %i.nm, double %i.nc) ; 4 uses
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nm, double %i.nm, double %i.nd) ; 3 uses
  %i.np = fadd double %i.ne, %i.nn                ; 3 uses
  %indvars.iv.next1936.3 = add nuw nsw i64 %indvars.iv1935, 4 ; 2 uses
  %niter2526.next.3 = add i64 %niter2526, 4       ; 2 uses
  %niter2526.ncmp.3 = icmp eq i64 %niter2526.next.3, %unroll_iter2525
  br i1 %niter2526.ncmp.3, label %._crit_edge1793.loopexit.unr-lcssa, label %.lr.ph1792, !llvm.loop !24

._crit_edge1793.loopexit.unr-lcssa:               ; preds = %.lr.ph1792
  %lcmp.mod2520.not.a = icmp eq i64 %xtraiter2518, 0
  br i1 %lcmp.mod2520.not.a, label %._crit_edge1793, label %.lr.ph1792.epil.preheader

.lr.ph1792.epil.preheader:                        ; preds = %._crit_edge1793.loopexit.unr-lcssa, %.lr.ph1792.preheader
  %indvars.iv1935.epil.init = phi i64 [ 1, %.lr.ph1792.preheader ], [ %indvars.iv.next1936.3, %._crit_edge1793.loopexit.unr-lcssa ]
  %.114761791.epil.init = phi double [ 0.000000e+00, %.lr.ph1792.preheader ], [ %i.nn, %._crit_edge1793.loopexit.unr-lcssa ]
  %.014881790.epil.init = phi double [ 0.000000e+00, %.lr.ph1792.preheader ], [ %i.np, %._crit_edge1793.loopexit.unr-lcssa ]
  %.015261788.epil.init = phi double [ 0.000000e+00, %.lr.ph1792.preheader ], [ %i.no, %._crit_edge1793.loopexit.unr-lcssa ]
  %lcmp.mod2524 = icmp ne i64 %xtraiter2518, 0
  tail call void @llvm.assume(i1 %lcmp.mod2524)
  br label %.lr.ph1792.epil

.lr.ph1792.epil:                                  ; preds = %.lr.ph1792.epil, %.lr.ph1792.epil.preheader
  %indvars.iv1935.epil = phi i64 [ %indvars.iv1935.epil.init, %.lr.ph1792.epil.preheader ], [ %indvars.iv.next1936.epil, %.lr.ph1792.epil ] ; 4 uses
  %.114761791.epil = phi double [ %.114761791.epil.init, %.lr.ph1792.epil.preheader ], [ %i.ny, %.lr.ph1792.epil ]
  %.014881790.epil = phi double [ %.014881790.epil.init, %.lr.ph1792.epil.preheader ], [ %i.oa, %.lr.ph1792.epil ]
  %.015261788.epil = phi double [ %.015261788.epil.init, %.lr.ph1792.epil.preheader ], [ %i.nz, %.lr.ph1792.epil ]
  %epil.iter2519 = phi i64 [ 0, %.lr.ph1792.epil.preheader ], [ %epil.iter2519.next, %.lr.ph1792.epil ]
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1935.epil
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !85 ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1935.epil
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !85
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1935.epil
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !85
  %i.nw = fmul double %i.nt, %i.nv
  %i.nx = fdiv double %i.nr, %i.nw                ; 3 uses
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nx, double %.114761791.epil) ; 3 uses
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.nx, double %i.nx, double %.015261788.epil) ; 2 uses
  %i.oa = fadd double %.014881790.epil, %i.ny     ; 2 uses
  %indvars.iv.next1936.epil = add nuw nsw i64 %indvars.iv1935.epil, 1
  %epil.iter2519.next = add i64 %epil.iter2519, 1 ; 2 uses
  %epil.iter2519.cmp.not = icmp eq i64 %epil.iter2519.next, %xtraiter2518
  br i1 %epil.iter2519.cmp.not, label %._crit_edge1793, label %.lr.ph1792.epil, !llvm.loop !25

._crit_edge1793:                                  ; preds = %._crit_edge1793.loopexit.unr-lcssa, %.lr.ph1792.epil, %.preheader1660
  %.01526.lcssa = phi double [ 0.000000e+00, %.preheader1660 ], [ %i.no, %._crit_edge1793.loopexit.unr-lcssa ], [ %i.nz, %.lr.ph1792.epil ] ; 2 uses
  %.01488.lcssa = phi double [ 0.000000e+00, %.preheader1660 ], [ %i.np, %._crit_edge1793.loopexit.unr-lcssa ], [ %i.oa, %.lr.ph1792.epil ] ; 3 uses
  %.11476.lcssa = phi double [ 0.000000e+00, %.preheader1660 ], [ %i.nn, %._crit_edge1793.loopexit.unr-lcssa ], [ %i.ny, %.lr.ph1792.epil ] ; 2 uses
  %i.ob = fcmp oge double %.01488.lcssa, 0.000000e+00
  %i.oc = fneg double %.01488.lcssa
  %i.od = select i1 %i.ob, double %.01488.lcssa, double %i.oc
end_hunk_0
begin_hunk_1_@dlasd4_:bb.a
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1951.2 ; 2 uses
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !85
  %i.aao = fsub double %i.aan, %i.yu
  store double %i.aao, ptr %i.aam, align 8, !tbaa !85
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1951.2 ; 2 uses
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !85
  %i.aar = fadd double %i.yu, %i.aaq
  store double %i.aar, ptr %i.aap, align 8, !tbaa !85
  %indvars.iv.next1951.3 = add nuw nsw i64 %indvars.iv1950, 4 ; 2 uses
  %exitcond1954.not.3 = icmp eq i64 %indvars.iv.next1951.3, %wide.trip.count1953
  br i1 %exitcond1954.not.3, label %.preheader, label %.lr.ph1814, !llvm.loop !39

.lr.ph1820:                                       ; preds = %.lr.ph1820.preheader, %.lr.ph1820
  %indvars.iv1955 = phi i64 [ %indvars.iv.next1956.3, %.lr.ph1820 ], [ 1, %.lr.ph1820.preheader ] ; 9 uses
  %.314781819 = phi double [ %i.ach, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %.314911818 = phi double [ %i.acj, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %.315291816 = phi double [ %i.aci, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %niter2550 = phi i64 [ %niter2550.next.3, %.lr.ph1820 ], [ 0, %.lr.ph1820.preheader ]
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1955
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !85 ; 2 uses
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1955
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !85
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1955
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !85
  %i.aay = fmul double %i.aav, %i.aax
  %i.aaz = fdiv double %i.aat, %i.aay             ; 3 uses
  %i.aba = tail call double @llvm.fmuladd.f64(double %i.aat, double %i.aaz, double %.314781819) ; 2 uses
  %i.abb = tail call double @llvm.fmuladd.f64(double %i.aaz, double %i.aaz, double %.315291816)
  %i.abc = fadd double %.314911818, %i.aba
  %i.abd = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1955
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !85 ; 2 uses
  %i.abf = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1955
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !85
  %i.abh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1955
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !85
  %i.abj = fmul double %i.abg, %i.abi
  %i.abk = fdiv double %i.abe, %i.abj             ; 3 uses
  %i.abl = tail call double @llvm.fmuladd.f64(double %i.abe, double %i.abk, double %i.aba) ; 2 uses
  %i.abm = tail call double @llvm.fmuladd.f64(double %i.abk, double %i.abk, double %i.abb)
  %i.abn = fadd double %i.abc, %i.abl
  %indvars.iv.next1956.1 = add nuw nsw i64 %indvars.iv1955, 2 ; 3 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1956.1
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !85 ; 2 uses
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1956.1
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !85
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1956.1
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !85
  %i.abu = fmul double %i.abr, %i.abt
  %i.abv = fdiv double %i.abp, %i.abu             ; 3 uses
  %i.abw = tail call double @llvm.fmuladd.f64(double %i.abp, double %i.abv, double %i.abl) ; 2 uses
  %i.abx = tail call double @llvm.fmuladd.f64(double %i.abv, double %i.abv, double %i.abm)
  %i.aby = fadd double %i.abn, %i.abw
  %indvars.iv.next1956.2 = add nuw nsw i64 %indvars.iv1955, 3 ; 3 uses
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1956.2
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !85 ; 2 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1956.2
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !85
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1956.2
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !85
  %i.acf = fmul double %i.acc, %i.ace
  %i.acg = fdiv double %i.aca, %i.acf             ; 3 uses
  %i.ach = tail call double @llvm.fmuladd.f64(double %i.aca, double %i.acg, double %i.abw) ; 4 uses
  %i.aci = tail call double @llvm.fmuladd.f64(double %i.acg, double %i.acg, double %i.abx) ; 3 uses
  %i.acj = fadd double %i.aby, %i.ach             ; 3 uses
  %indvars.iv.next1956.3 = add nuw nsw i64 %indvars.iv1955, 4 ; 2 uses
  %niter2550.next.3 = add i64 %niter2550, 4       ; 2 uses
  %niter2550.ncmp.3 = icmp eq i64 %niter2550.next.3, %unroll_iter2549
  br i1 %niter2550.ncmp.3, label %._crit_edge1821.loopexit.unr-lcssa, label %.lr.ph1820, !llvm.loop !40

._crit_edge1821.loopexit.unr-lcssa:               ; preds = %.lr.ph1820
  br i1 %lcmp.mod2544.not, label %._crit_edge1821, label %.lr.ph1820.epil.preheader

.lr.ph1820.epil.preheader:                        ; preds = %._crit_edge1821.loopexit.unr-lcssa, %.lr.ph1820.preheader
  %indvars.iv1955.epil.init = phi i64 [ 1, %.lr.ph1820.preheader ], [ %indvars.iv.next1956.3, %._crit_edge1821.loopexit.unr-lcssa ]
  %.314781819.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.ach, %._crit_edge1821.loopexit.unr-lcssa ]
  %.314911818.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.acj, %._crit_edge1821.loopexit.unr-lcssa ]
  %.315291816.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.aci, %._crit_edge1821.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2548)
  br label %.lr.ph1820.epil

.lr.ph1820.epil:                                  ; preds = %.lr.ph1820.epil, %.lr.ph1820.epil.preheader
  %indvars.iv1955.epil = phi i64 [ %indvars.iv.next1956.epil, %.lr.ph1820.epil ], [ %indvars.iv1955.epil.init, %.lr.ph1820.epil.preheader ] ; 4 uses
  %.314781819.epil = phi double [ %i.acs, %.lr.ph1820.epil ], [ %.314781819.epil.init, %.lr.ph1820.epil.preheader ]
  %.314911818.epil = phi double [ %i.acu, %.lr.ph1820.epil ], [ %.314911818.epil.init, %.lr.ph1820.epil.preheader ]
  %.315291816.epil = phi double [ %i.act, %.lr.ph1820.epil ], [ %.315291816.epil.init, %.lr.ph1820.epil.preheader ]
  %epil.iter2543 = phi i64 [ %epil.iter2543.next, %.lr.ph1820.epil ], [ 0, %.lr.ph1820.epil.preheader ]
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1955.epil
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !85 ; 2 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1955.epil
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !85
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1955.epil
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !85
  %i.acq = fmul double %i.acn, %i.acp
  %i.acr = fdiv double %i.acl, %i.acq             ; 3 uses
  %i.acs = tail call double @llvm.fmuladd.f64(double %i.acl, double %i.acr, double %.314781819.epil) ; 3 uses
  %i.act = tail call double @llvm.fmuladd.f64(double %i.acr, double %i.acr, double %.315291816.epil) ; 2 uses
  %i.acu = fadd double %.314911818.epil, %i.acs   ; 2 uses
  %indvars.iv.next1956.epil = add nuw nsw i64 %indvars.iv1955.epil, 1
  %epil.iter2543.next = add i64 %epil.iter2543, 1 ; 2 uses
  %epil.iter2543.cmp.not = icmp eq i64 %epil.iter2543.next, %xtraiter2542
  br i1 %epil.iter2543.cmp.not, label %._crit_edge1821, label %.lr.ph1820.epil, !llvm.loop !41

._crit_edge1821:                                  ; preds = %._crit_edge1821.loopexit.unr-lcssa, %.lr.ph1820.epil, %.preheader
  %.31529.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.aci, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.act, %.lr.ph1820.epil ]
  %.31491.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.acj, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acu, %.lr.ph1820.epil ] ; 3 uses
  %.31478.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ach, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acs, %.lr.ph1820.epil ] ; 2 uses
  %i.acv = fcmp oge double %.31491.lcssa, 0.000000e+00
  %i.acw = fneg double %.31491.lcssa
  %i.acx = select i1 %i.acv, double %.31491.lcssa, double %i.acw
  %i.acy = sext i32 %i.yw to i64                  ; 3 uses
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.acy
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !85 ; 2 uses
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.acy
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !85 ; 2 uses
  %i.add = fmul double %i.ada, %i.adc
  %i.ade = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.acy
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !85 ; 2 uses
  %i.adg = fdiv double %i.adf, %i.add             ; 3 uses
  %i.adh = fmul double %i.adf, %i.adg             ; 3 uses
  %i.adi = fmul double %i.adg, %i.adg
  %i.adj = fneg double %i.adh
  %i.adk = fsub double %i.adj, %.31478.lcssa
  %i.adl = tail call double @llvm.fmuladd.f64(double %i.adk, double 8.000000e+00, double %i.acx)
  %i.adm = fsub double %i.adl, %i.adh
  %i.adn = fadd double %i.v, %i.adh
  %i.ado = fadd double %.31478.lcssa, %i.adn
  %storemerge1641 = add i32 %storemerge16411833, 1 ; 2 uses
  %exitcond1960.not = icmp eq i32 %storemerge1641, 401
  br i1 %exitcond1960.not, label %._crit_edge1836, label %bb.s, !llvm.loop !42

._crit_edge1836:                                  ; preds = %._crit_edge1821
  store i32 1, ptr %8, align 4, !tbaa !83
  br label %.loopexit1662

bb.x:                                             ; preds = %bb.d
  store i32 1, ptr %i.c, align 4, !tbaa !83
  %i.adp = add nsw i32 %i.w, 1                    ; 2 uses
  %i.adq = sext i32 %i.adp to i64                 ; 5 uses
  %i.adr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adq ; 3 uses
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !85 ; 4 uses
  %i.adt = sext i32 %i.w to i64
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adt
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !85 ; 4 uses
  %i.adw = fsub double %i.ads, %i.adv
  %i.adx = fadd double %i.ads, %i.adv
  %i.ady = fmul double %i.adw, %i.adx             ; 12 uses
  %i.adz = fmul double %i.ady, 5.000000e-01       ; 3 uses
  %i.aea = fmul double %i.ads, %i.ads
  %i.aeb = tail call double @llvm.fmuladd.f64(double %i.adv, double %i.adv, double %i.aea)
  %i.aec = fmul double %i.aeb, 5.000000e-01
  %i.aed = tail call double @sqrt(double noundef %i.aec) #6 ; 3 uses
  %i.aee = load i32, ptr %1, align 4, !tbaa !83   ; 8 uses
  %i.aef = sext i32 %i.aee to i64                 ; 8 uses
  %i.aeg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aef ; 11 uses
  %i.aeh = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.aei = fadd double %i.aed, %i.aeh
  %i.aej = fdiv double %i.adz, %i.aei             ; 7 uses
  %i.aek = load i32, ptr %0, align 4, !tbaa !83   ; 8 uses
  %.not1665 = icmp slt i32 %i.aek, 1
  br i1 %.not1665, label %.preheader1664, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.ael = add nuw i32 %i.aek, 1
  %wide.trip.count = zext i32 %i.ael to i64       ; 2 uses
  %i.aem = zext nneg i32 %i.aek to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.aek, 20
  br i1 %min.iters.check, label %.lr.ph.preheader2462, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aen = shl nuw nsw i64 %wide.trip.count, 3
  %i.aeo = add nsw i64 %i.aen, -8                 ; 3 uses
  %i.aep = getelementptr i8, ptr %7, i64 %i.aeo   ; 3 uses
  %i.aeq = getelementptr i8, ptr %4, i64 %i.aeo   ; 3 uses
  %i.aer = shl nsw i64 %i.aef, 3
  %i.aes = getelementptr i8, ptr %2, i64 %i.aer   ; 2 uses
  %i.aet = getelementptr i8, ptr %2, i64 %i.aeo   ; 2 uses
  %bound0 = icmp ult ptr %7, %i.aeq
  %bound1 = icmp ult ptr %4, %i.aep
  %found.conflict = and i1 %bound0, %bound1
  %bound02114 = icmp ult ptr %7, %i.aes
  %bound12115 = icmp ult ptr %i.aeg, %i.aep
  %found.conflict2116 = and i1 %bound02114, %bound12115
  %conflict.rdx = or i1 %found.conflict, %found.conflict2116
  %bound02117 = icmp ult ptr %7, %i.aet
  %bound12118 = icmp ult ptr %2, %i.aep
  %found.conflict2119 = and i1 %bound02117, %bound12118
  %conflict.rdx2120 = or i1 %conflict.rdx, %found.conflict2119
  %bound02121 = icmp ult ptr %4, %i.aes
  %bound12122 = icmp ult ptr %i.aeg, %i.aeq
  %found.conflict2123 = and i1 %bound02121, %bound12122
  %conflict.rdx2124 = or i1 %conflict.rdx2120, %found.conflict2123
  %bound02125 = icmp ult ptr %4, %i.aet
  %bound12126 = icmp ult ptr %2, %i.aeq
  %found.conflict2127 = and i1 %bound02125, %bound12126
  %conflict.rdx2128 = or i1 %conflict.rdx2124, %found.conflict2127
  br i1 %conflict.rdx2128, label %.lr.ph.preheader2462, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aem, 2147483640             ; 3 uses
  %i.aeu = or disjoint i64 %n.vec, 1
  %i.aev = load double, ptr %i.aeg, align 8, !tbaa !85, !alias.scope !106
  %broadcast.splatinsert2134 = insertelement <4 x double> poison, double %i.aev, i64 0
  %broadcast.splat2135 = shufflevector <4 x double> %broadcast.splatinsert2134, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aej, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aew = getelementptr [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aew, align 8, !tbaa !85, !alias.scope !107
  %wide.load2129 = load <4 x double>, ptr %i.aex, align 8, !tbaa !85, !alias.scope !107
  %i.aey = fadd <4 x double> %wide.load, %broadcast.splat2135
  %i.aez = fadd <4 x double> %wide.load2129, %broadcast.splat2135
  %i.afa = fadd <4 x double> %broadcast.splat, %i.aey
  %i.afb = fadd <4 x double> %broadcast.splat, %i.aez
  %i.afc = getelementptr [8 x i8], ptr %7, i64 %index ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 32
  store <4 x double> %i.afa, ptr %i.afc, align 8, !tbaa !85, !alias.scope !108, !noalias !109
  store <4 x double> %i.afb, ptr %i.afd, align 8, !tbaa !85, !alias.scope !108, !noalias !109
  %wide.load2132 = load <4 x double>, ptr %i.aew, align 8, !tbaa !85, !alias.scope !107
  %wide.load2133 = load <4 x double>, ptr %i.aex, align 8, !tbaa !85, !alias.scope !107
  %i.afe = fsub <4 x double> %wide.load2132, %broadcast.splat2135
  %i.aff = fsub <4 x double> %wide.load2133, %broadcast.splat2135
  %i.afg = fsub <4 x double> %i.afe, %broadcast.splat
  %i.afh = fsub <4 x double> %i.aff, %broadcast.splat
  %i.afi = getelementptr [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  store <4 x double> %i.afg, ptr %i.afi, align 8, !tbaa !85, !alias.scope !110, !noalias !111
  store <4 x double> %i.afh, ptr %i.afj, align 8, !tbaa !85, !alias.scope !110, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afk = icmp eq i64 %index.next, %n.vec
  br i1 %i.afk, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aem
  br i1 %cmp.n, label %.preheader1664, label %.lr.ph.preheader2462

.lr.ph.preheader2462:                             ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aeu, %middle.block ] ; 6 uses
  %i.afl = zext nneg i32 %i.aek to i64
  %i.afm = and i32 %i.aek, 1
  %lcmp.mod.not = icmp eq i32 %i.afm, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader2462
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !85
  %i.afp = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.afq = fadd double %i.afo, %i.afp
  %i.afr = fadd double %i.aej, %i.afq
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.afr, ptr %i.afs, align 8, !tbaa !85
  %i.aft = load double, ptr %i.afn, align 8, !tbaa !85
  %i.afu = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.afv = fsub double %i.aft, %i.afu
  %i.afw = fsub double %i.afv, %i.aej
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double %i.afw, ptr %i.afx, align 8, !tbaa !85
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader2462
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader2462 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.afy = icmp eq i64 %indvars.iv.ph, %i.afl
  br i1 %i.afy, label %.preheader1664, label %.lr.ph

.preheader1664:                                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.x
  %.not1595.not1667 = icmp sgt i32 %i.aee, 1
  br i1 %.not1595.not1667, label %.lr.ph1670.preheader, label %._crit_edge

.lr.ph1670.preheader:                             ; preds = %.preheader1664
  %wide.trip.count1876 = zext nneg i32 %i.aee to i64
  %i.afz = add nsw i64 %wide.trip.count1876, -1   ; 2 uses
  %xtraiter2463 = and i64 %i.afz, 3               ; 3 uses
  %i.aga = add nsw i32 %i.aee, -2
  %i.agb = icmp ult i32 %i.aga, 3
  br i1 %i.agb, label %.lr.ph1670.epil.preheader, label %.lr.ph1670.preheader.new

.lr.ph1670.preheader.new:                         ; preds = %.lr.ph1670.preheader
  %unroll_iter = and i64 %i.afz, -4
  br label %.lr.ph1670

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !85
  %i.age = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.agf = fadd double %i.agd, %i.age
  %i.agg = fadd double %i.aej, %i.agf
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.agg, ptr %i.agh, align 8, !tbaa !85
  %i.agi = load double, ptr %i.agc, align 8, !tbaa !85
  %i.agj = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.agk = fsub double %i.agi, %i.agj
  %i.agl = fsub double %i.agk, %i.aej
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.agl, ptr %i.agm, align 8, !tbaa !85
  %i.agn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !85
  %i.agp = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.agq = fadd double %i.ago, %i.agp
  %i.agr = fadd double %i.aej, %i.agq
  %i.ags = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  store double %i.agr, ptr %i.ags, align 8, !tbaa !85
  %i.agt = load double, ptr %i.agn, align 8, !tbaa !85
  %i.agu = load double, ptr %i.aeg, align 8, !tbaa !85
  %i.agv = fsub double %i.agt, %i.agu
  %i.agw = fsub double %i.agv, %i.aej
  %i.agx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.agw, ptr %i.agx, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader1664, label %.lr.ph, !llvm.loop !49

.lr.ph1670:                                       ; preds = %.lr.ph1670, %.lr.ph1670.preheader.new
  %indvars.iv1873 = phi i64 [ 1, %.lr.ph1670.preheader.new ], [ %indvars.iv.next1874.3, %.lr.ph1670 ] ; 9 uses
  %.41669 = phi double [ 0.000000e+00, %.lr.ph1670.preheader.new ], [ %i.ail, %.lr.ph1670 ]
  %niter = phi i64 [ 0, %.lr.ph1670.preheader.new ], [ %niter.next.3, %.lr.ph1670 ]
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1873
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !85 ; 2 uses
  %i.aha = fmul double %i.agz, %i.agz
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1873
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !85
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1873
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !85
  %i.ahf = fmul double %i.ahc, %i.ahe
  %i.ahg = fdiv double %i.aha, %i.ahf
  %i.ahh = fadd double %.41669, %i.ahg
  %i.ahi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1873
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !85 ; 2 uses
  %i.ahk = fmul double %i.ahj, %i.ahj
  %i.ahl = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1873
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !85
  %i.ahn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1873
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !85
  %i.ahp = fmul double %i.ahm, %i.aho
  %i.ahq = fdiv double %i.ahk, %i.ahp
  %i.ahr = fadd double %i.ahh, %i.ahq
  %indvars.iv.next1874.1 = add nuw nsw i64 %indvars.iv1873, 2 ; 3 uses
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1874.1
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !85 ; 2 uses
  %i.ahu = fmul double %i.aht, %i.aht
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1874.1
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !85
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1874.1
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !85
  %i.ahz = fmul double %i.ahw, %i.ahy
  %i.aia = fdiv double %i.ahu, %i.ahz
  %i.aib = fadd double %i.ahr, %i.aia
  %indvars.iv.next1874.2 = add nuw nsw i64 %indvars.iv1873, 3 ; 3 uses
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1874.2
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !85 ; 2 uses
  %i.aie = fmul double %i.aid, %i.aid
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1874.2
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !85
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1874.2
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !85
  %i.aij = fmul double %i.aig, %i.aii
  %i.aik = fdiv double %i.aie, %i.aij
  %i.ail = fadd double %i.aib, %i.aik             ; 3 uses
  %indvars.iv.next1874.3 = add nuw nsw i64 %indvars.iv1873, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1670, !llvm.loop !50

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1670
  %lcmp.mod2464.not = icmp eq i64 %xtraiter2463, 0
  br i1 %lcmp.mod2464.not, label %._crit_edge, label %.lr.ph1670.epil.preheader

.lr.ph1670.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1670.preheader
  %indvars.iv1873.epil.init = phi i64 [ 1, %.lr.ph1670.preheader ], [ %indvars.iv.next1874.3, %._crit_edge.loopexit.unr-lcssa ]
  %.41669.epil.init = phi double [ 0.000000e+00, %.lr.ph1670.preheader ], [ %i.ail, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2466 = icmp ne i64 %xtraiter2463, 0
  tail call void @llvm.assume(i1 %lcmp.mod2466)
  br label %.lr.ph1670.epil

.lr.ph1670.epil:                                  ; preds = %.lr.ph1670.epil, %.lr.ph1670.epil.preheader
  %indvars.iv1873.epil = phi i64 [ %indvars.iv1873.epil.init, %.lr.ph1670.epil.preheader ], [ %indvars.iv.next1874.epil, %.lr.ph1670.epil ] ; 4 uses
  %.41669.epil = phi double [ %.41669.epil.init, %.lr.ph1670.epil.preheader ], [ %i.aiv, %.lr.ph1670.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph1670.epil.preheader ], [ %epil.iter.next, %.lr.ph1670.epil ]
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1873.epil
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !85 ; 2 uses
  %i.aio = fmul double %i.ain, %i.ain
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1873.epil
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !85
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1873.epil
  %i.ais = load double, ptr %i.air, align 8, !tbaa !85
  %i.ait = fmul double %i.aiq, %i.ais
  %i.aiu = fdiv double %i.aio, %i.ait
  %i.aiv = fadd double %.41669.epil, %i.aiu       ; 2 uses
  %indvars.iv.next1874.epil = add nuw nsw i64 %indvars.iv1873.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2463
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph1670.epil, !llvm.loop !51

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1670.epil, %.preheader1664
  %.4.lcssa = phi double [ 0.000000e+00, %.preheader1664 ], [ %i.ail, %._crit_edge.loopexit.unr-lcssa ], [ %i.aiv, %.lr.ph1670.epil ]
  %i.aiw = add nsw i32 %i.aee, 2                  ; 2 uses
  %.not15961671 = icmp slt i32 %i.aek, %i.aiw
  br i1 %.not15961671, label %._crit_edge1676, label %.lr.ph1675.preheader

.lr.ph1675.preheader:                             ; preds = %._crit_edge
  %i.aix = sext i32 %i.aek to i64                 ; 4 uses
  %i.aiy = sext i32 %i.aiw to i64                 ; 3 uses
  %i.aiz = add nsw i64 %i.aix, 1
  %i.aja = sub nsw i64 %i.aiz, %i.aiy
  %i.ajb = sub nsw i64 %i.aix, %i.aiy
  %xtraiter2467 = and i64 %i.aja, 3               ; 2 uses
  %lcmp.mod2468.not = icmp eq i64 %xtraiter2467, 0
  br i1 %lcmp.mod2468.not, label %.lr.ph1675.prol.loopexit, label %.lr.ph1675.prol

.lr.ph1675.prol:                                  ; preds = %.lr.ph1675.preheader, %.lr.ph1675.prol
  %indvars.iv1878.prol = phi i64 [ %indvars.iv.next1879.prol, %.lr.ph1675.prol ], [ %i.aix, %.lr.ph1675.preheader ] ; 4 uses
end_hunk_1
begin_hunk_2_@dlasd4_:bb.a
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !85
  %i.ali = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aef
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !85
  %i.alk = fmul double %i.alh, %i.alj
  %i.all = fdiv double %i.alf, %i.alk
  %i.alm = fadd double %i.alc, %i.all
  %i.aln = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.adq ; 9 uses
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !85 ; 6 uses
  %i.alp = fmul double %i.alo, %i.alo             ; 2 uses
  %i.alq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adq ; 5 uses
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !85
  %i.als = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.adq ; 5 uses
  %i.alt = load double, ptr %i.als, align 8, !tbaa !85
  %i.alu = fmul double %i.alr, %i.alt
  %i.alv = fdiv double %i.alp, %i.alu
  %i.alw = fadd double %i.alm, %i.alv
  %i.alx = fcmp ule double %i.alw, 0.000000e+00   ; 5 uses
  br i1 %i.alx, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %._crit_edge1676
  store i32 1, ptr %i.f, align 4, !tbaa !83
  %i.aly = load double, ptr %i.aeg, align 8, !tbaa !85 ; 4 uses
  %i.alz = fadd double %i.aed, %i.aly
  %i.ama = fdiv double %i.adz, %i.alz             ; 5 uses
  %i.amb = tail call double @llvm.fmuladd.f64(double %i.alc, double %i.ady, double %i.alf)
  %i.amc = tail call double @llvm.fmuladd.f64(double %i.alo, double %i.alo, double %i.amb) ; 7 uses
  %i.amd = fmul double %i.ady, %i.alf             ; 3 uses
  %i.ame = fcmp ogt double %i.amc, 0.000000e+00
  br i1 %i.ame, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.amf = fmul double %i.amd, 2.000000e+00
  %i.amg = fmul double %i.amd, 4.000000e+00
  %i.amh = fneg double %i.alc
  %i.ami = fmul double %i.amg, %i.amh
  %i.amj = tail call double @llvm.fmuladd.f64(double %i.amc, double %i.amc, double %i.ami) ; 3 uses
  %i.amk = fcmp oge double %i.amj, 0.000000e+00
  %i.aml = fneg double %i.amj
  %i.amm = select i1 %i.amk, double %i.amj, double %i.aml
  %i.amn = tail call double @sqrt(double noundef %i.amm) #6
  %i.amo = fadd double %i.amc, %i.amn
  %i.amp = fdiv double %i.amf, %i.amo
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.amq = fmul double %i.amd, 4.000000e+00
  %i.amr = fneg double %i.alc
  %i.ams = fmul double %i.amq, %i.amr
  %i.amt = tail call double @llvm.fmuladd.f64(double %i.amc, double %i.amc, double %i.ams) ; 3 uses
  %i.amu = fcmp oge double %i.amt, 0.000000e+00
  %i.amv = fneg double %i.amt
  %i.amw = select i1 %i.amu, double %i.amt, double %i.amv
  %i.amx = tail call double @sqrt(double noundef %i.amw) #6
  %i.amy = fsub double %i.amc, %i.amx
  %i.amz = fmul double %i.alc, 2.000000e+00
  %i.ana = fdiv double %i.amy, %i.amz
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2 = phi double [ %i.amp, %bb.z ], [ %i.ana, %bb.aa ] ; 2 uses
  %i.anb = load i32, ptr %1, align 4, !tbaa !83
  %i.anc = sext i32 %i.anb to i64
  %i.and = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.anc
  %i.ane = load double, ptr %i.and, align 8, !tbaa !85 ; 3 uses
  %i.anf = tail call double @llvm.fmuladd.f64(double %i.ane, double %i.ane, double %.2)
  %i.ang = tail call double @sqrt(double noundef %i.anf) #6
  %i.anh = fadd double %i.ane, %i.ang
  %i.ani = fdiv double %.2, %i.anh                ; 2 uses
  %i.anj = tail call double @sqrt(double noundef %i.t) #6 ; 2 uses
  %i.ank = load i32, ptr %1, align 4, !tbaa !83
  %i.anl = sext i32 %i.ank to i64                 ; 2 uses
  %i.anm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.anl
  %i.ann = load double, ptr %i.anm, align 8, !tbaa !85 ; 3 uses
  %i.ano = load double, ptr %i.adr, align 8, !tbaa !85
  %i.anp = fmul double %i.anj, %i.ano
  %i.anq = fcmp ugt double %i.ann, %i.anp
  br i1 %i.anq, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.anr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.anl
  %i.ans = load double, ptr %i.anr, align 8, !tbaa !85
  %i.ant = tail call double @llvm.fabs.f64(double %i.ans)
  %i.anu = fcmp ole double %i.ant, %i.anj
  %i.anv = fcmp ogt double %i.ann, 0.000000e+00
  %or.cond = and i1 %i.anv, %i.anu
  br i1 %or.cond, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.anw = fmul nnan double %i.ann, 1.000000e+01  ; 2 uses
  %i.anx = fcmp ole double %i.anw, %i.ama
  %i.any = select i1 %i.anx, double %i.anw, double %i.ama
  br label %bb.ai

bb.ae:                                            ; preds = %._crit_edge1676
  store i32 0, ptr %i.f, align 4, !tbaa !83
  %i.anz = fneg double %i.adz
  %i.aoa = load double, ptr %i.adr, align 8, !tbaa !85 ; 5 uses
  %i.aob = fadd double %i.aed, %i.aoa
  %i.aoc = fdiv double %i.anz, %i.aob
  %i.aod = fneg double %i.ale
  %i.aoe = fmul double %i.ale, %i.aod
  %i.aof = tail call double @llvm.fmuladd.f64(double %i.alc, double %i.ady, double %i.aoe)
  %i.aog = fneg double %i.alo
  %i.aoh = tail call double @llvm.fmuladd.f64(double %i.aog, double %i.alo, double %i.aof) ; 7 uses
  %i.aoi = fmul double %i.ady, %i.alp             ; 3 uses
  %i.aoj = fcmp olt double %i.aoh, 0.000000e+00
  br i1 %i.aoj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.aok = fmul double %i.aoi, 2.000000e+00
  %i.aol = fmul double %i.aoi, 4.000000e+00
  %i.aom = fmul double %i.alc, %i.aol
  %i.aon = tail call double @llvm.fmuladd.f64(double %i.aoh, double %i.aoh, double %i.aom) ; 3 uses
  %i.aoo = fcmp oge double %i.aon, 0.000000e+00
  %i.aop = fneg double %i.aon
  %i.aoq = select i1 %i.aoo, double %i.aon, double %i.aop
  %i.aor = tail call double @sqrt(double noundef %i.aoq) #6
  %i.aos = fsub double %i.aoh, %i.aor
  %i.aot = fdiv double %i.aok, %i.aos
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.aou = fmul double %i.aoi, 4.000000e+00
  %i.aov = fmul double %i.alc, %i.aou
  %i.aow = tail call double @llvm.fmuladd.f64(double %i.aoh, double %i.aoh, double %i.aov) ; 3 uses
  %i.aox = fcmp oge double %i.aow, 0.000000e+00
  %i.aoy = fneg double %i.aow
  %i.aoz = select i1 %i.aox, double %i.aow, double %i.aoy
  %i.apa = tail call double @sqrt(double noundef %i.aoz) #6
  %i.apb = fadd double %i.aoh, %i.apa
  %i.apc = fneg double %i.apb
  %i.apd = fmul double %i.alc, 2.000000e+00
  %i.ape = fdiv double %i.apc, %i.apd
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3 = phi double [ %i.aot, %bb.af ], [ %i.ape, %bb.ag ] ; 2 uses
  %i.apf = tail call double @llvm.fmuladd.f64(double %i.aoa, double %i.aoa, double %.3) ; 3 uses
  %i.apg = fcmp oge double %i.apf, 0.000000e+00
  %i.aph = fneg double %i.apf
  %i.api = select i1 %i.apg, double %i.apf, double %i.aph
  %i.apj = tail call double @sqrt(double noundef %i.api) #6
  %i.apk = fadd double %i.aoa, %i.apj
  %i.apl = fdiv double %.3, %i.apk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ah
  %i.apm = phi double [ %i.aly, %bb.ab ], [ %i.aly, %bb.ac ], [ %i.aly, %bb.ad ], [ %i.aoa, %bb.ah ]
  %.pre-phi = phi i64 [ %i.aef, %bb.ab ], [ %i.aef, %bb.ac ], [ %i.aef, %bb.ad ], [ %i.adq, %bb.ah ] ; 8 uses
  %.01538 = phi double [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ad ], [ %i.aoc, %bb.ah ] ; 2 uses
  %.01522 = phi double [ %i.ama, %bb.ab ], [ %i.ama, %bb.ac ], [ %i.ama, %bb.ad ], [ 0.000000e+00, %bb.ah ] ; 2 uses
  %.01498 = phi i32 [ %i.aee, %bb.ab ], [ %i.aee, %bb.ac ], [ %i.aee, %bb.ad ], [ %i.adp, %bb.ah ] ; 14 uses
  %.21481 = phi double [ %i.ani, %bb.ab ], [ %i.ani, %bb.ac ], [ %i.any, %bb.ad ], [ %i.apl, %bb.ah ] ; 18 uses
  %.not1611 = phi i1 [ true, %bb.ab ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ah ] ; 2 uses
  %i.apn = getelementptr [8 x i8], ptr %i.k, i64 %.pre-phi ; 9 uses
  %i.apo = fadd double %.21481, %i.apm
  store double %i.apo, ptr %6, align 8, !tbaa !85
  %i.app = load i32, ptr %0, align 4, !tbaa !83   ; 9 uses
  %.not15971678 = icmp slt i32 %i.app, 1
  br i1 %.not15971678, label %._crit_edge1682, label %.lr.ph1681.preheader

.lr.ph1681.preheader:                             ; preds = %bb.ai
  %i.apq = add nuw i32 %i.app, 1
  %wide.trip.count1884 = zext i32 %i.apq to i64   ; 2 uses
  %i.apr = zext nneg i32 %i.app to i64            ; 2 uses
  %min.iters.check2160 = icmp ult i32 %i.app, 20
  br i1 %min.iters.check2160, label %.lr.ph1681.preheader2459, label %vector.memcheck2161

vector.memcheck2161:                              ; preds = %.lr.ph1681.preheader
  %i.aps = shl nuw nsw i64 %wide.trip.count1884, 3
  %i.apt = add nsw i64 %i.aps, -8                 ; 3 uses
  %i.apu = getelementptr i8, ptr %7, i64 %i.apt   ; 3 uses
  %i.apv = getelementptr i8, ptr %4, i64 %i.apt   ; 3 uses
  %i.apw = shl nsw i64 %.pre-phi, 3
  %i.apx = getelementptr i8, ptr %2, i64 %i.apw   ; 2 uses
  %i.apy = getelementptr i8, ptr %2, i64 %i.apt   ; 2 uses
  %bound02162 = icmp ult ptr %7, %i.apv
  %bound12163 = icmp ult ptr %4, %i.apu
  %found.conflict2164 = and i1 %bound02162, %bound12163
  %bound02165 = icmp ult ptr %7, %i.apx
  %bound12166 = icmp ult ptr %i.apn, %i.apu
  %found.conflict2167 = and i1 %bound02165, %bound12166
  %conflict.rdx2168 = or i1 %found.conflict2164, %found.conflict2167
  %bound02169 = icmp ult ptr %7, %i.apy
  %bound12170 = icmp ult ptr %2, %i.apu
  %found.conflict2171 = and i1 %bound02169, %bound12170
  %conflict.rdx2172 = or i1 %conflict.rdx2168, %found.conflict2171
  %bound02173 = icmp ult ptr %4, %i.apx
  %bound12174 = icmp ult ptr %i.apn, %i.apv
  %found.conflict2175 = and i1 %bound02173, %bound12174
  %conflict.rdx2176 = or i1 %conflict.rdx2172, %found.conflict2175
  %bound02177 = icmp ult ptr %4, %i.apy
  %bound12178 = icmp ult ptr %2, %i.apv
  %found.conflict2179 = and i1 %bound02177, %bound12178
  %conflict.rdx2180 = or i1 %conflict.rdx2176, %found.conflict2179
  br i1 %conflict.rdx2180, label %.lr.ph1681.preheader2459, label %vector.ph2181

vector.ph2181:                                    ; preds = %vector.memcheck2161
  %n.vec2182 = and i64 %i.apr, 2147483640         ; 3 uses
  %i.apz = or disjoint i64 %n.vec2182, 1
  %i.aqa = load double, ptr %i.apn, align 8, !tbaa !85, !alias.scope !112
  %broadcast.splatinsert2193 = insertelement <4 x double> poison, double %i.aqa, i64 0
  %broadcast.splat2194 = shufflevector <4 x double> %broadcast.splatinsert2193, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2183 = insertelement <4 x double> poison, double %.21481, i64 0
  %broadcast.splat2184 = shufflevector <4 x double> %broadcast.splatinsert2183, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2185

vector.body2185:                                  ; preds = %vector.body2185, %vector.ph2181
  %index2186 = phi i64 [ 0, %vector.ph2181 ], [ %index.next2195, %vector.body2185 ] ; 4 uses
  %i.aqb = getelementptr [8 x i8], ptr %2, i64 %index2186 ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 32 ; 2 uses
  %wide.load2187 = load <4 x double>, ptr %i.aqb, align 8, !tbaa !85, !alias.scope !113
  %wide.load2188 = load <4 x double>, ptr %i.aqc, align 8, !tbaa !85, !alias.scope !113
  %i.aqd = fadd <4 x double> %wide.load2187, %broadcast.splat2194
  %i.aqe = fadd <4 x double> %wide.load2188, %broadcast.splat2194
  %i.aqf = fadd <4 x double> %broadcast.splat2184, %i.aqd
  %i.aqg = fadd <4 x double> %broadcast.splat2184, %i.aqe
  %i.aqh = getelementptr [8 x i8], ptr %7, i64 %index2186 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 32
  store <4 x double> %i.aqf, ptr %i.aqh, align 8, !tbaa !85, !alias.scope !114, !noalias !115
  store <4 x double> %i.aqg, ptr %i.aqi, align 8, !tbaa !85, !alias.scope !114, !noalias !115
  %wide.load2191 = load <4 x double>, ptr %i.aqb, align 8, !tbaa !85, !alias.scope !113
  %wide.load2192 = load <4 x double>, ptr %i.aqc, align 8, !tbaa !85, !alias.scope !113
  %i.aqj = fsub <4 x double> %wide.load2191, %broadcast.splat2194
  %i.aqk = fsub <4 x double> %wide.load2192, %broadcast.splat2194
  %i.aql = fsub <4 x double> %i.aqj, %broadcast.splat2184
  %i.aqm = fsub <4 x double> %i.aqk, %broadcast.splat2184
  %i.aqn = getelementptr [8 x i8], ptr %4, i64 %index2186 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 32
  store <4 x double> %i.aql, ptr %i.aqn, align 8, !tbaa !85, !alias.scope !116, !noalias !117
  store <4 x double> %i.aqm, ptr %i.aqo, align 8, !tbaa !85, !alias.scope !116, !noalias !117
  %index.next2195 = add nuw i64 %index2186, 8     ; 2 uses
  %i.aqp = icmp eq i64 %index.next2195, %n.vec2182
  br i1 %i.aqp, label %middle.block2196, label %vector.body2185, !llvm.loop !59

middle.block2196:                                 ; preds = %vector.body2185
  %cmp.n2197 = icmp eq i64 %n.vec2182, %i.apr
  br i1 %cmp.n2197, label %._crit_edge1682, label %.lr.ph1681.preheader2459

.lr.ph1681.preheader2459:                         ; preds = %vector.memcheck2161, %.lr.ph1681.preheader, %middle.block2196
  %indvars.iv1881.ph = phi i64 [ 1, %vector.memcheck2161 ], [ 1, %.lr.ph1681.preheader ], [ %i.apz, %middle.block2196 ] ; 6 uses
  %i.aqq = zext nneg i32 %i.app to i64
  %i.aqr = and i32 %i.app, 1
  %lcmp.mod2470.not = icmp eq i32 %i.aqr, 0
  br i1 %lcmp.mod2470.not, label %.lr.ph1681.prol.loopexit, label %.lr.ph1681.prol

.lr.ph1681.prol:                                  ; preds = %.lr.ph1681.preheader2459
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1881.ph ; 2 uses
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !85
  %i.aqu = load double, ptr %i.apn, align 8, !tbaa !85
  %i.aqv = fadd double %i.aqt, %i.aqu
  %i.aqw = fadd double %.21481, %i.aqv
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1881.ph
  store double %i.aqw, ptr %i.aqx, align 8, !tbaa !85
  %i.aqy = load double, ptr %i.aqs, align 8, !tbaa !85
  %i.aqz = load double, ptr %i.apn, align 8, !tbaa !85
  %i.ara = fsub double %i.aqy, %i.aqz
  %i.arb = fsub double %i.ara, %.21481
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1881.ph
  store double %i.arb, ptr %i.arc, align 8, !tbaa !85
  %indvars.iv.next1882.prol = add nuw nsw i64 %indvars.iv1881.ph, 1
  br label %.lr.ph1681.prol.loopexit

.lr.ph1681.prol.loopexit:                         ; preds = %.lr.ph1681.prol, %.lr.ph1681.preheader2459
  %indvars.iv1881.unr = phi i64 [ %indvars.iv1881.ph, %.lr.ph1681.preheader2459 ], [ %indvars.iv.next1882.prol, %.lr.ph1681.prol ]
  %i.ard = icmp eq i64 %indvars.iv1881.ph, %i.aqq
  br i1 %i.ard, label %._crit_edge1682, label %.lr.ph1681

.lr.ph1681:                                       ; preds = %.lr.ph1681.prol.loopexit, %.lr.ph1681
  %indvars.iv1881 = phi i64 [ %indvars.iv.next1882.1, %.lr.ph1681 ], [ %indvars.iv1881.unr, %.lr.ph1681.prol.loopexit ] ; 7 uses
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1881 ; 2 uses
  %i.arf = load double, ptr %i.are, align 8, !tbaa !85
  %i.arg = load double, ptr %i.apn, align 8, !tbaa !85
  %i.arh = fadd double %i.arf, %i.arg
  %i.ari = fadd double %.21481, %i.arh
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1881
  store double %i.ari, ptr %i.arj, align 8, !tbaa !85
  %i.ark = load double, ptr %i.are, align 8, !tbaa !85
  %i.arl = load double, ptr %i.apn, align 8, !tbaa !85
  %i.arm = fsub double %i.ark, %i.arl
  %i.arn = fsub double %i.arm, %.21481
  %i.aro = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1881
  store double %i.arn, ptr %i.aro, align 8, !tbaa !85
  %i.arp = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1881 ; 2 uses
  %i.arq = load double, ptr %i.arp, align 8, !tbaa !85
  %i.arr = load double, ptr %i.apn, align 8, !tbaa !85
  %i.ars = fadd double %i.arq, %i.arr
  %i.art = fadd double %.21481, %i.ars
  %i.aru = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1881
  store double %i.art, ptr %i.aru, align 8, !tbaa !85
  %i.arv = load double, ptr %i.arp, align 8, !tbaa !85
  %i.arw = load double, ptr %i.apn, align 8, !tbaa !85
  %i.arx = fsub double %i.arv, %i.arw
  %i.ary = fsub double %i.arx, %.21481
  %i.arz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1881
  store double %i.ary, ptr %i.arz, align 8, !tbaa !85
  %indvars.iv.next1882.1 = add nuw nsw i64 %indvars.iv1881, 2 ; 2 uses
  %exitcond1885.not.1 = icmp eq i64 %indvars.iv.next1882.1, %wide.trip.count1884
  br i1 %exitcond1885.not.1, label %._crit_edge1682, label %.lr.ph1681, !llvm.loop !60

._crit_edge1682:                                  ; preds = %.lr.ph1681.prol.loopexit, %.lr.ph1681, %middle.block2196, %bb.ai
  %i.asa = add nsw i32 %.01498, -1                ; 2 uses
  %i.asb = add nsw i32 %.01498, 1                 ; 2 uses
  %.not1598.not1683 = icmp sgt i32 %.01498, 1     ; 3 uses
  br i1 %.not1598.not1683, label %.lr.ph1689.preheader, label %._crit_edge1690

.lr.ph1689.preheader:                             ; preds = %._crit_edge1682
  %wide.trip.count1889 = zext nneg i32 %.01498 to i64
  %i.asc = add nsw i64 %wide.trip.count1889, -1   ; 2 uses
  %xtraiter2472 = and i64 %i.asc, 3               ; 3 uses
  %i.asd = add nsw i32 %.01498, -2
  %i.ase = icmp ult i32 %i.asd, 3
  br i1 %i.ase, label %.lr.ph1689.epil.preheader, label %.lr.ph1689.preheader.new

.lr.ph1689.preheader.new:                         ; preds = %.lr.ph1689.preheader
  %unroll_iter2479 = and i64 %i.asc, -4
  br label %.lr.ph1689

.lr.ph1689:                                       ; preds = %.lr.ph1689, %.lr.ph1689.preheader.new
  %indvars.iv1886 = phi i64 [ 1, %.lr.ph1689.preheader.new ], [ %indvars.iv.next1887.3, %.lr.ph1689 ] ; 9 uses
  %.51687 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.atu, %.lr.ph1689 ]
  %.414921686 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.atw, %.lr.ph1689 ]
  %.415301684 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.atv, %.lr.ph1689 ]
  %niter2480 = phi i64 [ 0, %.lr.ph1689.preheader.new ], [ %niter2480.next.3, %.lr.ph1689 ]
  %i.asf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1886
  %i.asg = load double, ptr %i.asf, align 8, !tbaa !85 ; 2 uses
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1886
  %i.asi = load double, ptr %i.ash, align 8, !tbaa !85
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1886
  %i.ask = load double, ptr %i.asj, align 8, !tbaa !85
  %i.asl = fmul double %i.asi, %i.ask
  %i.asm = fdiv double %i.asg, %i.asl             ; 3 uses
  %i.asn = tail call double @llvm.fmuladd.f64(double %i.asg, double %i.asm, double %.51687) ; 2 uses
  %i.aso = tail call double @llvm.fmuladd.f64(double %i.asm, double %i.asm, double %.415301684)
  %i.asp = fadd double %.414921686, %i.asn
  %i.asq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1886
  %i.asr = load double, ptr %i.asq, align 8, !tbaa !85 ; 2 uses
  %i.ass = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1886
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !85
  %i.asu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1886
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !85
  %i.asw = fmul double %i.ast, %i.asv
  %i.asx = fdiv double %i.asr, %i.asw             ; 3 uses
  %i.asy = tail call double @llvm.fmuladd.f64(double %i.asr, double %i.asx, double %i.asn) ; 2 uses
  %i.asz = tail call double @llvm.fmuladd.f64(double %i.asx, double %i.asx, double %i.aso)
  %i.ata = fadd double %i.asp, %i.asy
  %indvars.iv.next1887.1 = add nuw nsw i64 %indvars.iv1886, 2 ; 3 uses
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1887.1
  %i.atc = load double, ptr %i.atb, align 8, !tbaa !85 ; 2 uses
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1887.1
  %i.ate = load double, ptr %i.atd, align 8, !tbaa !85
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1887.1
  %i.atg = load double, ptr %i.atf, align 8, !tbaa !85
  %i.ath = fmul double %i.ate, %i.atg
  %i.ati = fdiv double %i.atc, %i.ath             ; 3 uses
  %i.atj = tail call double @llvm.fmuladd.f64(double %i.atc, double %i.ati, double %i.asy) ; 2 uses
  %i.atk = tail call double @llvm.fmuladd.f64(double %i.ati, double %i.ati, double %i.asz)
  %i.atl = fadd double %i.ata, %i.atj
  %indvars.iv.next1887.2 = add nuw nsw i64 %indvars.iv1886, 3 ; 3 uses
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1887.2
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !85 ; 2 uses
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1887.2
  %i.atp = load double, ptr %i.ato, align 8, !tbaa !85
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1887.2
  %i.atr = load double, ptr %i.atq, align 8, !tbaa !85
  %i.ats = fmul double %i.atp, %i.atr
  %i.att = fdiv double %i.atn, %i.ats             ; 3 uses
  %i.atu = tail call double @llvm.fmuladd.f64(double %i.atn, double %i.att, double %i.atj) ; 4 uses
  %i.atv = tail call double @llvm.fmuladd.f64(double %i.att, double %i.att, double %i.atk) ; 3 uses
  %i.atw = fadd double %i.atl, %i.atu             ; 3 uses
  %indvars.iv.next1887.3 = add nuw nsw i64 %indvars.iv1886, 4 ; 2 uses
  %niter2480.next.3 = add i64 %niter2480, 4       ; 2 uses
  %niter2480.ncmp.3 = icmp eq i64 %niter2480.next.3, %unroll_iter2479
  br i1 %niter2480.ncmp.3, label %._crit_edge1690.loopexit.unr-lcssa, label %.lr.ph1689, !llvm.loop !61

._crit_edge1690.loopexit.unr-lcssa:               ; preds = %.lr.ph1689
  %lcmp.mod2474.not.a = icmp eq i64 %xtraiter2472, 0
  br i1 %lcmp.mod2474.not.a, label %._crit_edge1690, label %.lr.ph1689.epil.preheader

.lr.ph1689.epil.preheader:                        ; preds = %._crit_edge1690.loopexit.unr-lcssa, %.lr.ph1689.preheader
  %indvars.iv1886.epil.init = phi i64 [ 1, %.lr.ph1689.preheader ], [ %indvars.iv.next1887.3, %._crit_edge1690.loopexit.unr-lcssa ]
  %.51687.epil.init = phi double [ 0.000000e+00, %.lr.ph1689.preheader ], [ %i.atu, %._crit_edge1690.loopexit.unr-lcssa ]
  %.414921686.epil.init = phi double [ 0.000000e+00, %.lr.ph1689.preheader ], [ %i.atw, %._crit_edge1690.loopexit.unr-lcssa ]
  %.415301684.epil.init = phi double [ 0.000000e+00, %.lr.ph1689.preheader ], [ %i.atv, %._crit_edge1690.loopexit.unr-lcssa ]
  %lcmp.mod2478 = icmp ne i64 %xtraiter2472, 0
  tail call void @llvm.assume(i1 %lcmp.mod2478)
  br label %.lr.ph1689.epil

.lr.ph1689.epil:                                  ; preds = %.lr.ph1689.epil, %.lr.ph1689.epil.preheader
  %indvars.iv1886.epil = phi i64 [ %indvars.iv1886.epil.init, %.lr.ph1689.epil.preheader ], [ %indvars.iv.next1887.epil, %.lr.ph1689.epil ] ; 4 uses
  %.51687.epil = phi double [ %.51687.epil.init, %.lr.ph1689.epil.preheader ], [ %i.auf, %.lr.ph1689.epil ]
  %.414921686.epil = phi double [ %.414921686.epil.init, %.lr.ph1689.epil.preheader ], [ %i.auh, %.lr.ph1689.epil ]
  %.415301684.epil = phi double [ %.415301684.epil.init, %.lr.ph1689.epil.preheader ], [ %i.aug, %.lr.ph1689.epil ]
  %epil.iter2473 = phi i64 [ 0, %.lr.ph1689.epil.preheader ], [ %epil.iter2473.next, %.lr.ph1689.epil ]
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1886.epil
  %i.aty = load double, ptr %i.atx, align 8, !tbaa !85 ; 2 uses
  %i.atz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1886.epil
  %i.aua = load double, ptr %i.atz, align 8, !tbaa !85
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1886.epil
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !85
  %i.aud = fmul double %i.aua, %i.auc
  %i.aue = fdiv double %i.aty, %i.aud             ; 3 uses
  %i.auf = tail call double @llvm.fmuladd.f64(double %i.aty, double %i.aue, double %.51687.epil) ; 3 uses
  %i.aug = tail call double @llvm.fmuladd.f64(double %i.aue, double %i.aue, double %.415301684.epil) ; 2 uses
  %i.auh = fadd double %.414921686.epil, %i.auf   ; 2 uses
  %indvars.iv.next1887.epil = add nuw nsw i64 %indvars.iv1886.epil, 1
  %epil.iter2473.next = add i64 %epil.iter2473, 1 ; 2 uses
  %epil.iter2473.cmp.not = icmp eq i64 %epil.iter2473.next, %xtraiter2472
  br i1 %epil.iter2473.cmp.not, label %._crit_edge1690, label %.lr.ph1689.epil, !llvm.loop !62

._crit_edge1690:                                  ; preds = %._crit_edge1690.loopexit.unr-lcssa, %.lr.ph1689.epil, %._crit_edge1682
  %.41530.lcssa = phi double [ 0.000000e+00, %._crit_edge1682 ], [ %i.atv, %._crit_edge1690.loopexit.unr-lcssa ], [ %i.aug, %.lr.ph1689.epil ] ; 5 uses
  %.41492.lcssa = phi double [ 0.000000e+00, %._crit_edge1682 ], [ %i.atw, %._crit_edge1690.loopexit.unr-lcssa ], [ %i.auh, %.lr.ph1689.epil ] ; 3 uses
  %.5.lcssa = phi double [ 0.000000e+00, %._crit_edge1682 ], [ %i.atu, %._crit_edge1690.loopexit.unr-lcssa ], [ %i.auf, %.lr.ph1689.epil ] ; 3 uses
  %i.aui = fcmp oge double %.41492.lcssa, 0.000000e+00
end_hunk_2
