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
  %min.iters.check2268 = icmp ult i32 %i.ai, 20
  br i1 %min.iters.check2268, label %scalar.ph2267.preheader, label %vector.memcheck2269

vector.memcheck2269:                              ; preds = %.lr.ph1774
  %i.an = shl nuw nsw i64 %wide.trip.count1923, 3
  %i.ao = add nsw i64 %i.an, -8                   ; 3 uses
  %i.ap = getelementptr i8, ptr %7, i64 %i.ao     ; 3 uses
  %i.aq = getelementptr i8, ptr %4, i64 %i.ao     ; 3 uses
  %i.ar = shl nuw nsw i64 %i.aj, 3
  %i.as = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ao     ; 2 uses
  %bound02270 = icmp ult ptr %7, %i.aq
  %bound12271 = icmp ult ptr %4, %i.ap
  %found.conflict2272 = and i1 %bound02270, %bound12271
  %bound02273 = icmp ult ptr %7, %i.as
  %bound12274 = icmp ult ptr %i.ak, %i.ap
  %found.conflict2275 = and i1 %bound02273, %bound12274
  %conflict.rdx2276 = or i1 %found.conflict2272, %found.conflict2275
  %bound02277 = icmp ult ptr %7, %i.at
  %bound12278 = icmp ult ptr %2, %i.ap
  %found.conflict2279 = and i1 %bound02277, %bound12278
  %conflict.rdx2280 = or i1 %conflict.rdx2276, %found.conflict2279
  %bound02281 = icmp ult ptr %4, %i.as
  %bound12282 = icmp ult ptr %i.ak, %i.aq
  %found.conflict2283 = and i1 %bound02281, %bound12282
  %conflict.rdx2284 = or i1 %conflict.rdx2280, %found.conflict2283
  %bound02285 = icmp ult ptr %4, %i.at
  %bound12286 = icmp ult ptr %2, %i.aq
  %found.conflict2287 = and i1 %bound02285, %bound12286
  %conflict.rdx2288 = or i1 %conflict.rdx2284, %found.conflict2287
  br i1 %conflict.rdx2288, label %scalar.ph2267.preheader, label %vector.ph2289

vector.ph2289:                                    ; preds = %vector.memcheck2269
  %n.vec2290 = and i64 %i.am, 2147483644          ; 3 uses
  %i.au = or disjoint i64 %n.vec2290, 1
  %i.av = load double, ptr %i.ak, align 8, !tbaa !85, !alias.scope !86 ; 2 uses
  %broadcast.splatinsert2296 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat2297 = shufflevector <4 x double> %broadcast.splatinsert2296, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2299 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat2300 = shufflevector <4 x double> %broadcast.splatinsert2299, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2291 = insertelement <4 x double> poison, double %i.ah, i64 0
  %broadcast.splat2292 = shufflevector <4 x double> %broadcast.splatinsert2291, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2293

vector.body2293:                                  ; preds = %vector.body2293, %vector.ph2289
  %index2294 = phi i64 [ 0, %vector.ph2289 ], [ %index.next2301, %vector.body2293 ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %index2294
  %wide.load2295 = load <4 x double>, ptr %i.aw, align 8, !tbaa !85, !alias.scope !87 ; 2 uses
  %i.ax = fadd <4 x double> %wide.load2295, %broadcast.splat2297
  %i.ay = fadd <4 x double> %broadcast.splat2292, %i.ax
  %i.az = getelementptr [8 x i8], ptr %7, i64 %index2294
  store <4 x double> %i.ay, ptr %i.az, align 8, !tbaa !85, !alias.scope !88, !noalias !89
  %i.ba = fsub <4 x double> %wide.load2295, %broadcast.splat2300
  %i.bb = fsub <4 x double> %i.ba, %broadcast.splat2292
  %i.bc = getelementptr [8 x i8], ptr %4, i64 %index2294
  store <4 x double> %i.bb, ptr %i.bc, align 8, !tbaa !85, !alias.scope !90, !noalias !91
  %index.next2301 = add nuw i64 %index2294, 4     ; 2 uses
  %i.bd = icmp eq i64 %index.next2301, %n.vec2290
  br i1 %i.bd, label %middle.block2302, label %vector.body2293, !llvm.loop !13

middle.block2302:                                 ; preds = %vector.body2293
  %cmp.n2303 = icmp eq i64 %n.vec2290, %i.am
  br i1 %cmp.n2303, label %._crit_edge1775, label %scalar.ph2267.preheader

scalar.ph2267.preheader:                          ; preds = %vector.memcheck2269, %.lr.ph1774, %middle.block2302
  %indvars.iv1920.ph = phi i64 [ 1, %vector.memcheck2269 ], [ 1, %.lr.ph1774 ], [ %i.au, %middle.block2302 ] ; 6 uses
  %i.be = zext nneg i32 %i.ai to i64
  %i.bf = and i32 %i.ai, 1
  %lcmp.mod2498.not.a = icmp eq i32 %i.bf, 0
  br i1 %lcmp.mod2498.not.a, label %scalar.ph2267.prol.loopexit, label %scalar.ph2267.prol

scalar.ph2267.prol:                               ; preds = %scalar.ph2267.preheader
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1920.ph ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !85
  %i.bi = load double, ptr %i.ak, align 8, !tbaa !85
  %i.bj = fadd double %i.bh, %i.bi
  %i.bk = fadd double %i.ah, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1920.ph
  store double %i.bk, ptr %i.bl, align 8, !tbaa !85
  %i.bm = load double, ptr %i.bg, align 8, !tbaa !85
  %i.bn = load double, ptr %i.ak, align 8, !tbaa !85
  %i.bo = fsub double %i.bm, %i.bn
  %i.bp = fsub double %i.bo, %i.ah
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1920.ph
  store double %i.bp, ptr %i.bq, align 8, !tbaa !85
  %indvars.iv.next1921.prol = add nuw nsw i64 %indvars.iv1920.ph, 1
  br label %scalar.ph2267.prol.loopexit

scalar.ph2267.prol.loopexit:                      ; preds = %scalar.ph2267.prol, %scalar.ph2267.preheader
  %indvars.iv1920.unr = phi i64 [ %indvars.iv1920.ph, %scalar.ph2267.preheader ], [ %indvars.iv.next1921.prol, %scalar.ph2267.prol ]
  %i.br = icmp eq i64 %indvars.iv1920.ph, %i.be
  br i1 %i.br, label %._crit_edge1775, label %scalar.ph2267

scalar.ph2267:                                    ; preds = %scalar.ph2267.prol.loopexit, %scalar.ph2267
  %indvars.iv1920 = phi i64 [ %indvars.iv.next1921.1, %scalar.ph2267 ], [ %indvars.iv1920.unr, %scalar.ph2267.prol.loopexit ] ; 7 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1920 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !85
  %i.bu = load double, ptr %i.ak, align 8, !tbaa !85
  %i.bv = fadd double %i.bt, %i.bu
  %i.bw = fadd double %i.ah, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1920
  store double %i.bw, ptr %i.bx, align 8, !tbaa !85
  %i.by = load double, ptr %i.bs, align 8, !tbaa !85
  %i.bz = load double, ptr %i.ak, align 8, !tbaa !85
  %i.ca = fsub double %i.by, %i.bz
  %i.cb = fsub double %i.ca, %i.ah
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1920
  store double %i.cb, ptr %i.cc, align 8, !tbaa !85
  %i.cd = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1920 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !85
  %i.cf = load double, ptr %i.ak, align 8, !tbaa !85
  %i.cg = fadd double %i.ce, %i.cf
  %i.ch = fadd double %i.ah, %i.cg
  %i.ci = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1920
  store double %i.ch, ptr %i.ci, align 8, !tbaa !85
  %i.cj = load double, ptr %i.cd, align 8, !tbaa !85
  %i.ck = load double, ptr %i.ak, align 8, !tbaa !85
  %i.cl = fsub double %i.cj, %i.ck
  %i.cm = fsub double %i.cl, %i.ah
  %i.cn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1920
  store double %i.cm, ptr %i.cn, align 8, !tbaa !85
  %indvars.iv.next1921.1 = add nuw nsw i64 %indvars.iv1920, 2 ; 2 uses
  %exitcond1924.not.1 = icmp eq i64 %indvars.iv.next1921.1, %wide.trip.count1923
  br i1 %exitcond1924.not.1, label %._crit_edge1775, label %scalar.ph2267, !llvm.loop !14

._crit_edge1775:                                  ; preds = %scalar.ph2267.prol.loopexit, %scalar.ph2267, %middle.block2302
  %.not16361776 = icmp samesign ult i32 %i.ai, 3
  br i1 %.not16361776, label %._crit_edge1781, label %.lr.ph1780.preheader

.lr.ph1780.preheader:                             ; preds = %._crit_edge1775
  %i.co = zext nneg i32 %i.ai to i64
  %i.cp = add nsw i64 %i.co, -2                   ; 2 uses
  %xtraiter2500 = and i64 %i.cp, 3                ; 3 uses
  %i.cq = add nsw i32 %i.ai, -3
  %i.cr = icmp ult i32 %i.cq, 3
  br i1 %i.cr, label %.lr.ph1780.epil.preheader, label %.lr.ph1780.preheader.new

.lr.ph1780.preheader.new:                         ; preds = %.lr.ph1780.preheader
  %unroll_iter2505 = and i64 %i.cp, -4
  br label %.lr.ph1780

.lr.ph1780:                                       ; preds = %.lr.ph1780, %.lr.ph1780.preheader.new
  %indvars.iv1925 = phi i64 [ 1, %.lr.ph1780.preheader.new ], [ %indvars.iv.next1926.3, %.lr.ph1780 ] ; 9 uses
  %.014751778 = phi double [ 0.000000e+00, %.lr.ph1780.preheader.new ], [ %i.ef, %.lr.ph1780 ]
  %niter2506 = phi i64 [ 0, %.lr.ph1780.preheader.new ], [ %niter2506.next.3, %.lr.ph1780 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1925
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !85 ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1925
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !85
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1925
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !85
  %i.cz = fmul double %i.cw, %i.cy
  %i.da = fdiv double %i.cu, %i.cz
  %i.db = fadd double %.014751778, %i.da
  %i.dc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1925
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !85 ; 2 uses
  %i.de = fmul double %i.dd, %i.dd
  %i.df = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1925
  %i.dg = load double, ptr %i.df, align 8, !tbaa !85
  %i.dh = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1925
  %i.di = load double, ptr %i.dh, align 8, !tbaa !85
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fdiv double %i.de, %i.dj
  %i.dl = fadd double %i.db, %i.dk
  %indvars.iv.next1926.1 = add nuw nsw i64 %indvars.iv1925, 2 ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1926.1
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !85 ; 2 uses
  %i.do = fmul double %i.dn, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1926.1
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !85
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1926.1
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !85
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = fdiv double %i.do, %i.dt
  %i.dv = fadd double %i.dl, %i.du
  %indvars.iv.next1926.2 = add nuw nsw i64 %indvars.iv1925, 3 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1926.2
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !85 ; 2 uses
  %i.dy = fmul double %i.dx, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1926.2
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !85
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1926.2
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !85
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fdiv double %i.dy, %i.ed
  %i.ef = fadd double %i.dv, %i.ee                ; 3 uses
  %indvars.iv.next1926.3 = add nuw nsw i64 %indvars.iv1925, 4 ; 2 uses
  %niter2506.next.3 = add i64 %niter2506, 4       ; 2 uses
  %niter2506.ncmp.3 = icmp eq i64 %niter2506.next.3, %unroll_iter2505
  br i1 %niter2506.ncmp.3, label %._crit_edge1781.loopexit.unr-lcssa, label %.lr.ph1780, !llvm.loop !15

._crit_edge1781.loopexit.unr-lcssa:               ; preds = %.lr.ph1780
  %lcmp.mod2502.not = icmp eq i64 %xtraiter2500, 0
  br i1 %lcmp.mod2502.not, label %._crit_edge1781, label %.lr.ph1780.epil.preheader

.lr.ph1780.epil.preheader:                        ; preds = %._crit_edge1781.loopexit.unr-lcssa, %.lr.ph1780.preheader
  %indvars.iv1925.epil.init = phi i64 [ 1, %.lr.ph1780.preheader ], [ %indvars.iv.next1926.3, %._crit_edge1781.loopexit.unr-lcssa ]
  %.014751778.epil.init = phi double [ 0.000000e+00, %.lr.ph1780.preheader ], [ %i.ef, %._crit_edge1781.loopexit.unr-lcssa ]
  %lcmp.mod2504 = icmp ne i64 %xtraiter2500, 0
  tail call void @llvm.assume(i1 %lcmp.mod2504)
  br label %.lr.ph1780.epil

.lr.ph1780.epil:                                  ; preds = %.lr.ph1780.epil, %.lr.ph1780.epil.preheader
  %indvars.iv1925.epil = phi i64 [ %indvars.iv1925.epil.init, %.lr.ph1780.epil.preheader ], [ %indvars.iv.next1926.epil, %.lr.ph1780.epil ] ; 4 uses
  %.014751778.epil = phi double [ %.014751778.epil.init, %.lr.ph1780.epil.preheader ], [ %i.ep, %.lr.ph1780.epil ]
  %epil.iter2501 = phi i64 [ 0, %.lr.ph1780.epil.preheader ], [ %epil.iter2501.next, %.lr.ph1780.epil ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1925.epil
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !85 ; 2 uses
  %i.ei = fmul double %i.eh, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1925.epil
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !85
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1925.epil
  %i.em = load double, ptr %i.el, align 8, !tbaa !85
  %i.en = fmul double %i.ek, %i.em
  %i.eo = fdiv double %i.ei, %i.en
  %i.ep = fadd double %.014751778.epil, %i.eo     ; 2 uses
  %indvars.iv.next1926.epil = add nuw nsw i64 %indvars.iv1925.epil, 1
  %epil.iter2501.next = add i64 %epil.iter2501, 1 ; 2 uses
  %epil.iter2501.cmp.not = icmp eq i64 %epil.iter2501.next, %xtraiter2500
  br i1 %epil.iter2501.cmp.not, label %._crit_edge1781, label %.lr.ph1780.epil, !llvm.loop !16

._crit_edge1781:                                  ; preds = %._crit_edge1781.loopexit.unr-lcssa, %.lr.ph1780.epil, %bb.e, %._crit_edge1775
  %.01475.lcssa = phi double [ 0.000000e+00, %._crit_edge1775 ], [ 0.000000e+00, %bb.e ], [ %i.ef, %._crit_edge1781.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph1780.epil ]
  %i.eq = fadd double %i.v, %.01475.lcssa         ; 10 uses
  %i.er = sext i32 %i.z to i64                    ; 3 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !85 ; 2 uses
  %i.eu = fmul double %i.et, %i.et
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.er
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !85
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.er
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !85
  %i.ez = fmul double %i.ew, %i.ey
  %i.fa = fdiv double %i.eu, %i.ez
  %i.fb = fadd double %i.eq, %i.fa
  %i.fc = sext i32 %i.ai to i64                   ; 4 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !85 ; 4 uses
  %i.ff = fmul double %i.fe, %i.fe                ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fc
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !85
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fc
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !85
  %i.fk = fmul double %i.fh, %i.fj
  %i.fl = fdiv double %i.ff, %i.fk
  %i.fm = fadd double %i.fb, %i.fl
  %i.fn = fcmp ugt double %i.fm, 0.000000e+00
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fc
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !85 ; 4 uses
  br i1 %i.fn, label %bb.j, label %bb.f

bb.f:                                             ; preds = %._crit_edge1781
  %i.fq = load double, ptr %5, align 8, !tbaa !85 ; 4 uses
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fp, double %i.fq)
  %i.fs = tail call double @sqrt(double noundef %i.fr) #6 ; 2 uses
  %i.ft = load i32, ptr %0, align 4, !tbaa !83    ; 2 uses
  %i.fu = add nsw i32 %i.ft, -1
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fv
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fv
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !85 ; 3 uses
  %i.fz = fadd double %i.fs, %i.fy
  %i.ga = sext i32 %i.ft to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !85 ; 3 uses
  %i.gd = fsub double %i.gc, %i.fy                ; 2 uses
  %i.ge = fadd double %i.fs, %i.gc
  %i.gf = fdiv double %i.fq, %i.ge
  %i.gg = fadd double %i.gd, %i.gf
  %i.gh = fmul double %i.fz, %i.gg
  %i.gi = load <2 x double>, ptr %i.fw, align 8, !tbaa !85 ; 2 uses
  %i.gj = fmul <2 x double> %i.gi, %i.gi          ; 3 uses
  %i.gk = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fq, i64 1
  %i.gm = fdiv <2 x double> %i.gj, %i.gl          ; 2 uses
  %shift = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.gm
  %i.gn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.go = fcmp ugt double %i.eq, %i.gn
  br i1 %i.go, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ga
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !85 ; 2 uses
  %i.gr = fadd double %i.fy, %i.gc
  %i.gs = fmul double %i.gd, %i.gr                ; 2 uses
  %i.gt = fneg double %i.eq
  %i.gu = extractelement <2 x double> %i.gj, i64 0
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.gs, double %i.gu)
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double %i.gv) ; 7 uses
  %i.gx = extractelement <2 x double> %i.gj, i64 1
  %i.gy = fmul double %i.gx, %i.gs                ; 3 uses
  %i.gz = fcmp olt double %i.gw, 0.000000e+00
  br i1 %i.gz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ha = fmul double %i.gy, 2.000000e+00
  %i.hb = fmul double %i.gy, 4.000000e+00
  %i.hc = fmul double %i.eq, %i.hb
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double %i.hc)
  %i.he = tail call double @sqrt(double noundef %i.hd) #6
  %i.hf = fsub double %i.he, %i.gw
  %i.hg = fdiv double %i.ha, %i.hf
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.hh = fmul double %i.gy, 4.000000e+00
  %i.hi = fmul double %i.eq, %i.hh
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double %i.hi)
  %i.hk = tail call double @sqrt(double noundef %i.hj) #6
  %i.hl = fadd double %i.gw, %i.hk
  %i.hm = fmul double %i.eq, 2.000000e+00
  %i.hn = fdiv double %i.hl, %i.hm
  br label %.sink.split

bb.j:                                             ; preds = %._crit_edge1781
  %i.ho = add nsw i32 %i.ai, -1
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !85 ; 2 uses
  %i.hs = fsub double %i.fp, %i.hr
  %i.ht = fadd double %i.fp, %i.hr
  %i.hu = fmul double %i.hs, %i.ht                ; 2 uses
  %i.hv = fneg double %i.eq
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hp
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !85 ; 2 uses
  %i.hy = fmul double %i.hx, %i.hx
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.hu, double %i.hy)
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fe, double %i.hz) ; 7 uses
  %i.ib = fmul double %i.ff, %i.hu                ; 3 uses
  %i.ic = fcmp olt double %i.ia, 0.000000e+00
  br i1 %i.ic, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.id = fmul double %i.ib, 2.000000e+00
  %i.ie = fmul double %i.ib, 4.000000e+00
  %i.if = fmul double %i.eq, %i.ie
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %i.if)
  %i.ih = tail call double @sqrt(double noundef %i.ig) #6
  %i.ii = fsub double %i.ih, %i.ia
  %i.ij = fdiv double %i.id, %i.ii
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.ik = fmul double %i.ib, 4.000000e+00
  %i.il = fmul double %i.eq, %i.ik
  %i.im = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %i.il)
  %i.in = tail call double @sqrt(double noundef %i.im) #6
  %i.io = fadd double %i.ia, %i.in
  %i.ip = fmul double %i.eq, 2.000000e+00
  %i.iq = fdiv double %i.io, %i.ip
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.h, %bb.i
  %.0.sink2054 = phi double [ %i.hn, %bb.i ], [ %i.hg, %bb.h ], [ %i.ij, %bb.k ], [ %i.iq, %bb.l ] ; 2 uses
  %i.ir = load i32, ptr %0, align 4, !tbaa !83
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !85 ; 3 uses
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iu, double %.0.sink2054)
  %i.iw = tail call double @sqrt(double noundef %i.iv) #6
  %i.ix = fadd double %i.iu, %i.iw
  %i.iy = fdiv double %.0.sink2054, %i.ix
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.f
  %.01479 = phi double [ %i.fq, %bb.f ], [ %i.iy, %.sink.split ] ; 8 uses
  %i.iz = load i32, ptr %0, align 4, !tbaa !83    ; 8 uses
  %i.ja = sext i32 %i.iz to i64                   ; 5 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ja ; 10 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !85
  %i.jd = fadd double %.01479, %i.jc
  store double %i.jd, ptr %6, align 8, !tbaa !85
  %.not16371783 = icmp slt i32 %i.iz, 1
  br i1 %.not16371783, label %.preheader1660, label %.lr.ph1786.preheader

.lr.ph1786.preheader:                             ; preds = %bb.m
  %i.je = add nuw i32 %i.iz, 1
  %wide.trip.count1933 = zext i32 %i.je to i64    ; 2 uses
  %i.jf = zext nneg i32 %i.iz to i64              ; 2 uses
  %min.iters.check2330 = icmp ult i32 %i.iz, 20
  br i1 %min.iters.check2330, label %.lr.ph1786.preheader2428, label %vector.memcheck2331

vector.memcheck2331:                              ; preds = %.lr.ph1786.preheader
  %i.jg = shl nuw nsw i64 %wide.trip.count1933, 3
  %i.jh = add nsw i64 %i.jg, -8                   ; 3 uses
  %i.ji = getelementptr i8, ptr %4, i64 %i.jh     ; 3 uses
  %i.jj = getelementptr i8, ptr %7, i64 %i.jh     ; 3 uses
  %i.jk = shl nuw nsw i64 %i.ja, 3
  %i.jl = getelementptr i8, ptr %2, i64 %i.jk     ; 2 uses
  %i.jm = getelementptr i8, ptr %2, i64 %i.jh     ; 2 uses
  %bound02332 = icmp ult ptr %4, %i.jj
  %bound12333 = icmp ult ptr %7, %i.ji
  %found.conflict2334 = and i1 %bound02332, %bound12333
  %bound02335 = icmp ult ptr %4, %i.jl
  %bound12336 = icmp ult ptr %i.jb, %i.ji
  %found.conflict2337 = and i1 %bound02335, %bound12336
  %conflict.rdx2338 = or i1 %found.conflict2334, %found.conflict2337
  %bound02339 = icmp ult ptr %4, %i.jm
  %bound12340 = icmp ult ptr %2, %i.ji
  %found.conflict2341 = and i1 %bound02339, %bound12340
  %conflict.rdx2342 = or i1 %conflict.rdx2338, %found.conflict2341
  %bound02343 = icmp ult ptr %7, %i.jl
  %bound12344 = icmp ult ptr %i.jb, %i.jj
  %found.conflict2345 = and i1 %bound02343, %bound12344
  %conflict.rdx2346 = or i1 %conflict.rdx2342, %found.conflict2345
  %bound02347 = icmp ult ptr %7, %i.jm
  %bound12348 = icmp ult ptr %2, %i.jj
  %found.conflict2349 = and i1 %bound02347, %bound12348
  %conflict.rdx2350 = or i1 %conflict.rdx2346, %found.conflict2349
  br i1 %conflict.rdx2350, label %.lr.ph1786.preheader2428, label %vector.ph2351

vector.ph2351:                                    ; preds = %vector.memcheck2331
  %n.vec2352 = and i64 %i.jf, 2147483644          ; 3 uses
  %i.jn = or disjoint i64 %n.vec2352, 1
  %i.jo = load double, ptr %i.jb, align 8, !tbaa !85, !alias.scope !96 ; 2 uses
  %broadcast.splatinsert2358 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat2359 = shufflevector <4 x double> %broadcast.splatinsert2358, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2361 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat2362 = shufflevector <4 x double> %broadcast.splatinsert2361, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2353 = insertelement <4 x double> poison, double %.01479, i64 0
  %broadcast.splat2354 = shufflevector <4 x double> %broadcast.splatinsert2353, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2355

vector.body2355:                                  ; preds = %vector.body2355, %vector.ph2351
  %index2356 = phi i64 [ 0, %vector.ph2351 ], [ %index.next2363, %vector.body2355 ] ; 4 uses
  %i.jp = getelementptr [8 x i8], ptr %2, i64 %index2356
  %wide.load2357 = load <4 x double>, ptr %i.jp, align 8, !tbaa !85, !alias.scope !97 ; 2 uses
  %i.jq = fsub <4 x double> %wide.load2357, %broadcast.splat2359
  %i.jr = fsub <4 x double> %i.jq, %broadcast.splat2354
  %i.js = getelementptr [8 x i8], ptr %4, i64 %index2356
  store <4 x double> %i.jr, ptr %i.js, align 8, !tbaa !85, !alias.scope !98, !noalias !99
  %i.jt = fadd <4 x double> %wide.load2357, %broadcast.splat2362
  %i.ju = fadd <4 x double> %broadcast.splat2354, %i.jt
  %i.jv = getelementptr [8 x i8], ptr %7, i64 %index2356
  store <4 x double> %i.ju, ptr %i.jv, align 8, !tbaa !85, !alias.scope !100, !noalias !101
  %index.next2363 = add nuw i64 %index2356, 4     ; 2 uses
  %i.jw = icmp eq i64 %index.next2363, %n.vec2352
  br i1 %i.jw, label %middle.block2364, label %vector.body2355, !llvm.loop !22

middle.block2364:                                 ; preds = %vector.body2355
  %cmp.n2365 = icmp eq i64 %n.vec2352, %i.jf
  br i1 %cmp.n2365, label %.preheader1660, label %.lr.ph1786.preheader2428

.lr.ph1786.preheader2428:                         ; preds = %vector.memcheck2331, %.lr.ph1786.preheader, %middle.block2364
  %indvars.iv1930.ph = phi i64 [ 1, %vector.memcheck2331 ], [ 1, %.lr.ph1786.preheader ], [ %i.jn, %middle.block2364 ] ; 6 uses
  %i.jx = zext nneg i32 %i.iz to i64
  %i.jy = and i32 %i.iz, 1
  %lcmp.mod2508.not = icmp eq i32 %i.jy, 0
  br i1 %lcmp.mod2508.not, label %.lr.ph1786.prol.loopexit, label %.lr.ph1786.prol

.lr.ph1786.prol:                                  ; preds = %.lr.ph1786.preheader2428
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1930.ph ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !85
  %i.kb = load double, ptr %i.jb, align 8, !tbaa !85
  %i.kc = fsub double %i.ka, %i.kb
  %i.kd = fsub double %i.kc, %.01479
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1930.ph
  store double %i.kd, ptr %i.ke, align 8, !tbaa !85
  %i.kf = load double, ptr %i.jz, align 8, !tbaa !85
  %i.kg = load double, ptr %i.jb, align 8, !tbaa !85
  %i.kh = fadd double %i.kf, %i.kg
  %i.ki = fadd double %.01479, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1930.ph
  store double %i.ki, ptr %i.kj, align 8, !tbaa !85
  %indvars.iv.next1931.prol = add nuw nsw i64 %indvars.iv1930.ph, 1
  br label %.lr.ph1786.prol.loopexit

.lr.ph1786.prol.loopexit:                         ; preds = %.lr.ph1786.prol, %.lr.ph1786.preheader2428
  %indvars.iv1930.unr = phi i64 [ %indvars.iv1930.ph, %.lr.ph1786.preheader2428 ], [ %indvars.iv.next1931.prol, %.lr.ph1786.prol ]
  %i.kk = icmp eq i64 %indvars.iv1930.ph, %i.jx
  br i1 %i.kk, label %.preheader1660, label %.lr.ph1786

.preheader1660:                                   ; preds = %.lr.ph1786.prol.loopexit, %.lr.ph1786, %middle.block2364, %bb.m
  %.not1638.not1787 = icmp sgt i32 %i.w, 1        ; 3 uses
  br i1 %.not1638.not1787, label %.lr.ph1792.preheader, label %._crit_edge1793

.lr.ph1792.preheader:                             ; preds = %.preheader1660
  %wide.trip.count1938 = zext nneg i32 %i.w to i64
  %i.kl = add nsw i64 %wide.trip.count1938, -1    ; 2 uses
  %xtraiter2510 = and i64 %i.kl, 3                ; 3 uses
  %i.km = add nsw i32 %i.w, -2
  %i.kn = icmp ult i32 %i.km, 3
  br i1 %i.kn, label %.lr.ph1792.epil.preheader, label %.lr.ph1792.preheader.new

.lr.ph1792.preheader.new:                         ; preds = %.lr.ph1792.preheader
  %unroll_iter2517 = and i64 %i.kl, -4
  br label %.lr.ph1792

.lr.ph1786:                                       ; preds = %.lr.ph1786.prol.loopexit, %.lr.ph1786
  %indvars.iv1930 = phi i64 [ %indvars.iv.next1931.1, %.lr.ph1786 ], [ %indvars.iv1930.unr, %.lr.ph1786.prol.loopexit ] ; 7 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1930 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !85
  %i.kq = load double, ptr %i.jb, align 8, !tbaa !85
  %i.kr = fsub double %i.kp, %i.kq
  %i.ks = fsub double %i.kr, %.01479
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1930
  store double %i.ks, ptr %i.kt, align 8, !tbaa !85
  %i.ku = load double, ptr %i.ko, align 8, !tbaa !85
  %i.kv = load double, ptr %i.jb, align 8, !tbaa !85
  %i.kw = fadd double %i.ku, %i.kv
  %i.kx = fadd double %.01479, %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1930
  store double %i.kx, ptr %i.ky, align 8, !tbaa !85
  %i.kz = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1930 ; 2 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !85
  %i.lb = load double, ptr %i.jb, align 8, !tbaa !85
  %i.lc = fsub double %i.la, %i.lb
  %i.ld = fsub double %i.lc, %.01479
  %i.le = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1930
  store double %i.ld, ptr %i.le, align 8, !tbaa !85
  %i.lf = load double, ptr %i.kz, align 8, !tbaa !85
  %i.lg = load double, ptr %i.jb, align 8, !tbaa !85
  %i.lh = fadd double %i.lf, %i.lg
  %i.li = fadd double %.01479, %i.lh
  %i.lj = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1930
  store double %i.li, ptr %i.lj, align 8, !tbaa !85
  %indvars.iv.next1931.1 = add nuw nsw i64 %indvars.iv1930, 2 ; 2 uses
  %exitcond1934.not.1 = icmp eq i64 %indvars.iv.next1931.1, %wide.trip.count1933
  br i1 %exitcond1934.not.1, label %.preheader1660, label %.lr.ph1786, !llvm.loop !23

.lr.ph1792:                                       ; preds = %.lr.ph1792, %.lr.ph1792.preheader.new
  %indvars.iv1935 = phi i64 [ 1, %.lr.ph1792.preheader.new ], [ %indvars.iv.next1936.3, %.lr.ph1792 ] ; 9 uses
  %.114761791 = phi double [ 0.000000e+00, %.lr.ph1792.preheader.new ], [ %i.mz, %.lr.ph1792 ]
  %.014881790 = phi double [ 0.000000e+00, %.lr.ph1792.preheader.new ], [ %i.nb, %.lr.ph1792 ]
  %.015261788 = phi double [ 0.000000e+00, %.lr.ph1792.preheader.new ], [ %i.na, %.lr.ph1792 ]
  %niter2518 = phi i64 [ 0, %.lr.ph1792.preheader.new ], [ %niter2518.next.3, %.lr.ph1792 ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1935
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !85 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1935
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !85
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1935
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !85
  %i.lq = fmul double %i.ln, %i.lp
  %i.lr = fdiv double %i.ll, %i.lq                ; 3 uses
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.ll, double %i.lr, double %.114761791) ; 2 uses
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.lr, double %.015261788)
  %i.lu = fadd double %.014881790, %i.ls
  %i.lv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1935
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !85 ; 2 uses
  %i.lx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1935
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !85
  %i.lz = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1935
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !85
  %i.mb = fmul double %i.ly, %i.ma
  %i.mc = fdiv double %i.lw, %i.mb                ; 3 uses
  %i.md = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.mc, double %i.ls) ; 2 uses
  %i.me = tail call double @llvm.fmuladd.f64(double %i.mc, double %i.mc, double %i.lt)
  %i.mf = fadd double %i.lu, %i.md
  %indvars.iv.next1936.1 = add nuw nsw i64 %indvars.iv1935, 2 ; 3 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1936.1
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !85 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1936.1
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !85
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1936.1
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !85
  %i.mm = fmul double %i.mj, %i.ml
  %i.mn = fdiv double %i.mh, %i.mm                ; 3 uses
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.mn, double %i.md) ; 2 uses
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.mn, double %i.me)
  %i.mq = fadd double %i.mf, %i.mo
  %indvars.iv.next1936.2 = add nuw nsw i64 %indvars.iv1935, 3 ; 3 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1936.2
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !85 ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1936.2
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !85
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1936.2
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !85
  %i.mx = fmul double %i.mu, %i.mw
  %i.my = fdiv double %i.ms, %i.mx                ; 3 uses
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.ms, double %i.my, double %i.mo) ; 4 uses
  %i.na = tail call double @llvm.fmuladd.f64(double %i.my, double %i.my, double %i.mp) ; 3 uses
  %i.nb = fadd double %i.mq, %i.mz                ; 3 uses
  %indvars.iv.next1936.3 = add nuw nsw i64 %indvars.iv1935, 4 ; 2 uses
  %niter2518.next.3 = add i64 %niter2518, 4       ; 2 uses
  %niter2518.ncmp.3 = icmp eq i64 %niter2518.next.3, %unroll_iter2517
  br i1 %niter2518.ncmp.3, label %._crit_edge1793.loopexit.unr-lcssa, label %.lr.ph1792, !llvm.loop !24

._crit_edge1793.loopexit.unr-lcssa:               ; preds = %.lr.ph1792
  %lcmp.mod2512.not = icmp eq i64 %xtraiter2510, 0
  br i1 %lcmp.mod2512.not, label %._crit_edge1793, label %.lr.ph1792.epil.preheader

.lr.ph1792.epil.preheader:                        ; preds = %._crit_edge1793.loopexit.unr-lcssa, %.lr.ph1792.preheader
  %indvars.iv1935.epil.init = phi i64 [ 1, %.lr.ph1792.preheader ], [ %indvars.iv.next1936.3, %._crit_edge1793.loopexit.unr-lcssa ]
  %.114761791.epil.init = phi double [ 0.000000e+00, %.lr.ph1792.preheader ], [ %i.mz, %._crit_edge1793.loopexit.unr-lcssa ]
  %.014881790.epil.init = phi double [ 0.000000e+00, %.lr.ph1792.preheader ], [ %i.nb, %._crit_edge1793.loopexit.unr-lcssa ]
  %.015261788.epil.init = phi double [ 0.000000e+00, %.lr.ph1792.preheader ], [ %i.na, %._crit_edge1793.loopexit.unr-lcssa ]
  %lcmp.mod2516 = icmp ne i64 %xtraiter2510, 0
  tail call void @llvm.assume(i1 %lcmp.mod2516)
  br label %.lr.ph1792.epil

.lr.ph1792.epil:                                  ; preds = %.lr.ph1792.epil, %.lr.ph1792.epil.preheader
  %indvars.iv1935.epil = phi i64 [ %indvars.iv1935.epil.init, %.lr.ph1792.epil.preheader ], [ %indvars.iv.next1936.epil, %.lr.ph1792.epil ] ; 4 uses
  %.114761791.epil = phi double [ %.114761791.epil.init, %.lr.ph1792.epil.preheader ], [ %i.nk, %.lr.ph1792.epil ]
  %.014881790.epil = phi double [ %.014881790.epil.init, %.lr.ph1792.epil.preheader ], [ %i.nm, %.lr.ph1792.epil ]
  %.015261788.epil = phi double [ %.015261788.epil.init, %.lr.ph1792.epil.preheader ], [ %i.nl, %.lr.ph1792.epil ]
  %epil.iter2511 = phi i64 [ 0, %.lr.ph1792.epil.preheader ], [ %epil.iter2511.next, %.lr.ph1792.epil ]
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1935.epil
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !85 ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1935.epil
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !85
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1935.epil
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !85
  %i.ni = fmul double %i.nf, %i.nh
  %i.nj = fdiv double %i.nd, %i.ni                ; 3 uses
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nd, double %i.nj, double %.114761791.epil) ; 3 uses
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.nj, double %.015261788.epil) ; 2 uses
  %i.nm = fadd double %.014881790.epil, %i.nk     ; 2 uses
  %indvars.iv.next1936.epil = add nuw nsw i64 %indvars.iv1935.epil, 1
  %epil.iter2511.next = add i64 %epil.iter2511, 1 ; 2 uses
  %epil.iter2511.cmp.not = icmp eq i64 %epil.iter2511.next, %xtraiter2510
  br i1 %epil.iter2511.cmp.not, label %._crit_edge1793, label %.lr.ph1792.epil, !llvm.loop !25

._crit_edge1793:                                  ; preds = %._crit_edge1793.loopexit.unr-lcssa, %.lr.ph1792.epil, %.preheader1660
  %.01526.lcssa = phi double [ 0.000000e+00, %.preheader1660 ], [ %i.na, %._crit_edge1793.loopexit.unr-lcssa ], [ %i.nl, %.lr.ph1792.epil ] ; 2 uses
  %.01488.lcssa = phi double [ 0.000000e+00, %.preheader1660 ], [ %i.nb, %._crit_edge1793.loopexit.unr-lcssa ], [ %i.nm, %.lr.ph1792.epil ] ; 3 uses
  %.11476.lcssa = phi double [ 0.000000e+00, %.preheader1660 ], [ %i.mz, %._crit_edge1793.loopexit.unr-lcssa ], [ %i.nk, %.lr.ph1792.epil ] ; 2 uses
  %i.nn = fcmp oge double %.01488.lcssa, 0.000000e+00
  %i.no = fneg double %.01488.lcssa
  %i.np = select i1 %i.nn, double %.01488.lcssa, double %i.no
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ja
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !85 ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ja
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !85
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ja
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !85
  %i.nw = fmul double %i.nt, %i.nv                ; 6 uses
  %i.nx = fdiv double %i.nr, %i.nw                ; 3 uses
  %i.ny = fmul double %i.nr, %i.nx                ; 3 uses
  %i.nz = fneg double %i.ny
  %i.oa = fsub double %i.nz, %.11476.lcssa
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.oa, double 8.000000e+00, double %i.np)
  %i.oc = fsub double %i.ob, %i.ny
  %i.od = fadd double %i.v, %i.oc
  %i.oe = fadd double %i.v, %i.ny
  %i.of = fadd double %.11476.lcssa, %i.oe        ; 6 uses
  %i.og = tail call double @llvm.fabs.f64(double %i.of)
end_hunk_0
begin_hunk_1_@dlasd4_:bb.a
  store double %i.zx, ptr %i.zv, align 8, !tbaa !85
  %indvars.iv.next1951.2 = add nuw nsw i64 %indvars.iv1950, 3 ; 2 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1951.2 ; 2 uses
  %i.zz = load double, ptr %i.zy, align 8, !tbaa !85
  %i.aaa = fsub double %i.zz, %i.yg
  store double %i.aaa, ptr %i.zy, align 8, !tbaa !85
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1951.2 ; 2 uses
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !85
  %i.aad = fadd double %i.yg, %i.aac
  store double %i.aad, ptr %i.aab, align 8, !tbaa !85
  %indvars.iv.next1951.3 = add nuw nsw i64 %indvars.iv1950, 4 ; 2 uses
  %exitcond1954.not.3 = icmp eq i64 %indvars.iv.next1951.3, %wide.trip.count1953
  br i1 %exitcond1954.not.3, label %.preheader, label %.lr.ph1814, !llvm.loop !39

.lr.ph1820:                                       ; preds = %.lr.ph1820.preheader, %.lr.ph1820
  %indvars.iv1955 = phi i64 [ %indvars.iv.next1956.3, %.lr.ph1820 ], [ 1, %.lr.ph1820.preheader ] ; 9 uses
  %.314781819 = phi double [ %i.abt, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %.314911818 = phi double [ %i.abv, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %.315291816 = phi double [ %i.abu, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %niter2542 = phi i64 [ %niter2542.next.3, %.lr.ph1820 ], [ 0, %.lr.ph1820.preheader ]
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1955
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !85 ; 2 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1955
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !85
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1955
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !85
  %i.aak = fmul double %i.aah, %i.aaj
  %i.aal = fdiv double %i.aaf, %i.aak             ; 3 uses
  %i.aam = tail call double @llvm.fmuladd.f64(double %i.aaf, double %i.aal, double %.314781819) ; 2 uses
  %i.aan = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.aal, double %.315291816)
  %i.aao = fadd double %.314911818, %i.aam
  %i.aap = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1955
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !85 ; 2 uses
  %i.aar = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1955
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !85
  %i.aat = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1955
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !85
  %i.aav = fmul double %i.aas, %i.aau
  %i.aaw = fdiv double %i.aaq, %i.aav             ; 3 uses
  %i.aax = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.aaw, double %i.aam) ; 2 uses
  %i.aay = tail call double @llvm.fmuladd.f64(double %i.aaw, double %i.aaw, double %i.aan)
  %i.aaz = fadd double %i.aao, %i.aax
  %indvars.iv.next1956.1 = add nuw nsw i64 %indvars.iv1955, 2 ; 3 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1956.1
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !85 ; 2 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1956.1
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !85
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1956.1
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !85
  %i.abg = fmul double %i.abd, %i.abf
  %i.abh = fdiv double %i.abb, %i.abg             ; 3 uses
  %i.abi = tail call double @llvm.fmuladd.f64(double %i.abb, double %i.abh, double %i.aax) ; 2 uses
  %i.abj = tail call double @llvm.fmuladd.f64(double %i.abh, double %i.abh, double %i.aay)
  %i.abk = fadd double %i.aaz, %i.abi
  %indvars.iv.next1956.2 = add nuw nsw i64 %indvars.iv1955, 3 ; 3 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1956.2
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !85 ; 2 uses
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1956.2
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !85
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1956.2
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !85
  %i.abr = fmul double %i.abo, %i.abq
  %i.abs = fdiv double %i.abm, %i.abr             ; 3 uses
  %i.abt = tail call double @llvm.fmuladd.f64(double %i.abm, double %i.abs, double %i.abi) ; 4 uses
  %i.abu = tail call double @llvm.fmuladd.f64(double %i.abs, double %i.abs, double %i.abj) ; 3 uses
  %i.abv = fadd double %i.abk, %i.abt             ; 3 uses
  %indvars.iv.next1956.3 = add nuw nsw i64 %indvars.iv1955, 4 ; 2 uses
  %niter2542.next.3 = add i64 %niter2542, 4       ; 2 uses
  %niter2542.ncmp.3 = icmp eq i64 %niter2542.next.3, %unroll_iter2541
  br i1 %niter2542.ncmp.3, label %._crit_edge1821.loopexit.unr-lcssa, label %.lr.ph1820, !llvm.loop !40

._crit_edge1821.loopexit.unr-lcssa:               ; preds = %.lr.ph1820
  br i1 %lcmp.mod2536.not, label %._crit_edge1821, label %.lr.ph1820.epil.preheader

.lr.ph1820.epil.preheader:                        ; preds = %._crit_edge1821.loopexit.unr-lcssa, %.lr.ph1820.preheader
  %indvars.iv1955.epil.init = phi i64 [ 1, %.lr.ph1820.preheader ], [ %indvars.iv.next1956.3, %._crit_edge1821.loopexit.unr-lcssa ]
  %.314781819.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.abt, %._crit_edge1821.loopexit.unr-lcssa ]
  %.314911818.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.abv, %._crit_edge1821.loopexit.unr-lcssa ]
  %.315291816.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.abu, %._crit_edge1821.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2540)
  br label %.lr.ph1820.epil

.lr.ph1820.epil:                                  ; preds = %.lr.ph1820.epil, %.lr.ph1820.epil.preheader
  %indvars.iv1955.epil = phi i64 [ %indvars.iv.next1956.epil, %.lr.ph1820.epil ], [ %indvars.iv1955.epil.init, %.lr.ph1820.epil.preheader ] ; 4 uses
  %.314781819.epil = phi double [ %i.ace, %.lr.ph1820.epil ], [ %.314781819.epil.init, %.lr.ph1820.epil.preheader ]
  %.314911818.epil = phi double [ %i.acg, %.lr.ph1820.epil ], [ %.314911818.epil.init, %.lr.ph1820.epil.preheader ]
  %.315291816.epil = phi double [ %i.acf, %.lr.ph1820.epil ], [ %.315291816.epil.init, %.lr.ph1820.epil.preheader ]
  %epil.iter2535 = phi i64 [ %epil.iter2535.next, %.lr.ph1820.epil ], [ 0, %.lr.ph1820.epil.preheader ]
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1955.epil
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !85 ; 2 uses
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1955.epil
  %i.abz = load double, ptr %i.aby, align 8, !tbaa !85
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1955.epil
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !85
  %i.acc = fmul double %i.abz, %i.acb
  %i.acd = fdiv double %i.abx, %i.acc             ; 3 uses
  %i.ace = tail call double @llvm.fmuladd.f64(double %i.abx, double %i.acd, double %.314781819.epil) ; 3 uses
  %i.acf = tail call double @llvm.fmuladd.f64(double %i.acd, double %i.acd, double %.315291816.epil) ; 2 uses
  %i.acg = fadd double %.314911818.epil, %i.ace   ; 2 uses
  %indvars.iv.next1956.epil = add nuw nsw i64 %indvars.iv1955.epil, 1
  %epil.iter2535.next = add i64 %epil.iter2535, 1 ; 2 uses
  %epil.iter2535.cmp.not = icmp eq i64 %epil.iter2535.next, %xtraiter2534
  br i1 %epil.iter2535.cmp.not, label %._crit_edge1821, label %.lr.ph1820.epil, !llvm.loop !41

._crit_edge1821:                                  ; preds = %._crit_edge1821.loopexit.unr-lcssa, %.lr.ph1820.epil, %.preheader
  %.31529.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.abu, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acf, %.lr.ph1820.epil ]
  %.31491.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.abv, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acg, %.lr.ph1820.epil ] ; 3 uses
  %.31478.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.abt, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.ace, %.lr.ph1820.epil ] ; 2 uses
  %i.ach = fcmp oge double %.31491.lcssa, 0.000000e+00
  %i.aci = fneg double %.31491.lcssa
  %i.acj = select i1 %i.ach, double %.31491.lcssa, double %i.aci
  %i.ack = sext i32 %i.yi to i64                  ; 3 uses
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ack
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !85 ; 2 uses
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ack
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !85 ; 2 uses
  %i.acp = fmul double %i.acm, %i.aco
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ack
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !85 ; 2 uses
  %i.acs = fdiv double %i.acr, %i.acp             ; 3 uses
  %i.act = fmul double %i.acr, %i.acs             ; 3 uses
  %i.acu = fmul double %i.acs, %i.acs
  %i.acv = fneg double %i.act
  %i.acw = fsub double %i.acv, %.31478.lcssa
  %i.acx = tail call double @llvm.fmuladd.f64(double %i.acw, double 8.000000e+00, double %i.acj)
  %i.acy = fsub double %i.acx, %i.act
  %i.acz = fadd double %i.v, %i.act
  %i.ada = fadd double %.31478.lcssa, %i.acz
  %storemerge1641 = add i32 %storemerge16411833, 1 ; 2 uses
  %exitcond1960.not = icmp eq i32 %storemerge1641, 401
  br i1 %exitcond1960.not, label %._crit_edge1836, label %bb.s, !llvm.loop !42

._crit_edge1836:                                  ; preds = %._crit_edge1821
  store i32 1, ptr %8, align 4, !tbaa !83
  br label %.loopexit1662

bb.x:                                             ; preds = %bb.d
  store i32 1, ptr %i.c, align 4, !tbaa !83
  %i.adb = add nsw i32 %i.w, 1                    ; 2 uses
  %i.adc = sext i32 %i.adb to i64                 ; 5 uses
  %i.add = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adc ; 3 uses
  %i.ade = load double, ptr %i.add, align 8, !tbaa !85 ; 4 uses
  %i.adf = sext i32 %i.w to i64
  %i.adg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adf
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !85 ; 4 uses
  %i.adi = fsub double %i.ade, %i.adh
  %i.adj = fadd double %i.ade, %i.adh
  %i.adk = fmul double %i.adi, %i.adj             ; 12 uses
  %i.adl = fmul double %i.adk, 5.000000e-01       ; 3 uses
  %i.adm = fmul double %i.ade, %i.ade
  %i.adn = tail call double @llvm.fmuladd.f64(double %i.adh, double %i.adh, double %i.adm)
  %i.ado = fmul double %i.adn, 5.000000e-01
  %i.adp = tail call double @sqrt(double noundef %i.ado) #6 ; 3 uses
  %i.adq = load i32, ptr %1, align 4, !tbaa !83   ; 8 uses
  %i.adr = sext i32 %i.adq to i64                 ; 8 uses
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adr ; 11 uses
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !85
  %i.adu = fadd double %i.adp, %i.adt
  %i.adv = fdiv double %i.adl, %i.adu             ; 7 uses
  %i.adw = load i32, ptr %0, align 4, !tbaa !83   ; 8 uses
  %.not1665 = icmp slt i32 %i.adw, 1
  br i1 %.not1665, label %.preheader1664, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.adx = add nuw i32 %i.adw, 1
  %wide.trip.count = zext i32 %i.adx to i64       ; 2 uses
  %i.ady = zext nneg i32 %i.adw to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.adw, 20
  br i1 %min.iters.check, label %.lr.ph.preheader2454, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.adz = shl nuw nsw i64 %wide.trip.count, 3
  %i.aea = add nsw i64 %i.adz, -8                 ; 3 uses
  %i.aeb = getelementptr i8, ptr %7, i64 %i.aea   ; 3 uses
  %i.aec = getelementptr i8, ptr %4, i64 %i.aea   ; 3 uses
  %i.aed = shl nsw i64 %i.adr, 3
  %i.aee = getelementptr i8, ptr %2, i64 %i.aed   ; 2 uses
  %i.aef = getelementptr i8, ptr %2, i64 %i.aea   ; 2 uses
  %bound0 = icmp ult ptr %7, %i.aec
  %bound1 = icmp ult ptr %4, %i.aeb
  %found.conflict = and i1 %bound0, %bound1
  %bound02114 = icmp ult ptr %7, %i.aee
  %bound12115 = icmp ult ptr %i.ads, %i.aeb
  %found.conflict2116 = and i1 %bound02114, %bound12115
  %conflict.rdx = or i1 %found.conflict, %found.conflict2116
  %bound02117 = icmp ult ptr %7, %i.aef
  %bound12118 = icmp ult ptr %2, %i.aeb
  %found.conflict2119 = and i1 %bound02117, %bound12118
  %conflict.rdx2120 = or i1 %conflict.rdx, %found.conflict2119
  %bound02121 = icmp ult ptr %4, %i.aee
  %bound12122 = icmp ult ptr %i.ads, %i.aec
  %found.conflict2123 = and i1 %bound02121, %bound12122
  %conflict.rdx2124 = or i1 %conflict.rdx2120, %found.conflict2123
  %bound02125 = icmp ult ptr %4, %i.aef
  %bound12126 = icmp ult ptr %2, %i.aec
  %found.conflict2127 = and i1 %bound02125, %bound12126
  %conflict.rdx2128 = or i1 %conflict.rdx2124, %found.conflict2127
  br i1 %conflict.rdx2128, label %.lr.ph.preheader2454, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ady, 2147483644             ; 3 uses
  %i.aeg = or disjoint i64 %n.vec, 1
  %i.aeh = load double, ptr %i.ads, align 8, !tbaa !85, !alias.scope !106 ; 2 uses
  %broadcast.splatinsert2129 = insertelement <4 x double> poison, double %i.aeh, i64 0
  %broadcast.splat2130 = shufflevector <4 x double> %broadcast.splatinsert2129, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2132 = insertelement <4 x double> poison, double %i.aeh, i64 0
  %broadcast.splat2133 = shufflevector <4 x double> %broadcast.splatinsert2132, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.adv, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aei = getelementptr [8 x i8], ptr %2, i64 %index
  %wide.load.a = load <4 x double>, ptr %i.aei, align 8, !tbaa !85, !alias.scope !107 ; 2 uses
  %i.aej = fadd <4 x double> %wide.load.a, %broadcast.splat2130
  %i.aek = fadd <4 x double> %broadcast.splat, %i.aej
  %i.ael = getelementptr [8 x i8], ptr %7, i64 %index
  store <4 x double> %i.aek, ptr %i.ael, align 8, !tbaa !85, !alias.scope !108, !noalias !109
  %i.aem = fsub <4 x double> %wide.load.a, %broadcast.splat2133
  %i.aen = fsub <4 x double> %i.aem, %broadcast.splat
  %i.aeo = getelementptr [8 x i8], ptr %4, i64 %index
  store <4 x double> %i.aen, ptr %i.aeo, align 8, !tbaa !85, !alias.scope !110, !noalias !111
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aep = icmp eq i64 %index.next, %n.vec
  br i1 %i.aep, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ady
  br i1 %cmp.n, label %.preheader1664, label %.lr.ph.preheader2454

.lr.ph.preheader2454:                             ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aeg, %middle.block ] ; 6 uses
  %i.aeq = zext nneg i32 %i.adw to i64
  %i.aer = and i32 %i.adw, 1
  %lcmp.mod.not = icmp eq i32 %i.aer, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader2454
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !85
  %i.aeu = load double, ptr %i.ads, align 8, !tbaa !85
  %i.aev = fadd double %i.aet, %i.aeu
  %i.aew = fadd double %i.adv, %i.aev
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.aew, ptr %i.aex, align 8, !tbaa !85
  %i.aey = load double, ptr %i.aes, align 8, !tbaa !85
  %i.aez = load double, ptr %i.ads, align 8, !tbaa !85
  %i.afa = fsub double %i.aey, %i.aez
  %i.afb = fsub double %i.afa, %i.adv
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double %i.afb, ptr %i.afc, align 8, !tbaa !85
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader2454
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader2454 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.afd = icmp eq i64 %indvars.iv.ph, %i.aeq
  br i1 %i.afd, label %.preheader1664, label %.lr.ph

.preheader1664:                                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.x
  %.not1595.not1667 = icmp sgt i32 %i.adq, 1
  br i1 %.not1595.not1667, label %.lr.ph1670.preheader, label %._crit_edge

.lr.ph1670.preheader:                             ; preds = %.preheader1664
  %wide.trip.count1876 = zext nneg i32 %i.adq to i64
  %i.afe = add nsw i64 %wide.trip.count1876, -1   ; 2 uses
  %xtraiter2455 = and i64 %i.afe, 3               ; 3 uses
  %i.aff = add nsw i32 %i.adq, -2
  %i.afg = icmp ult i32 %i.aff, 3
  br i1 %i.afg, label %.lr.ph1670.epil.preheader, label %.lr.ph1670.preheader.new

.lr.ph1670.preheader.new:                         ; preds = %.lr.ph1670.preheader
  %unroll_iter = and i64 %i.afe, -4
  br label %.lr.ph1670

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !85
  %i.afj = load double, ptr %i.ads, align 8, !tbaa !85
  %i.afk = fadd double %i.afi, %i.afj
  %i.afl = fadd double %i.adv, %i.afk
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.afl, ptr %i.afm, align 8, !tbaa !85
  %i.afn = load double, ptr %i.afh, align 8, !tbaa !85
  %i.afo = load double, ptr %i.ads, align 8, !tbaa !85
  %i.afp = fsub double %i.afn, %i.afo
  %i.afq = fsub double %i.afp, %i.adv
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.afq, ptr %i.afr, align 8, !tbaa !85
  %i.afs = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !85
  %i.afu = load double, ptr %i.ads, align 8, !tbaa !85
  %i.afv = fadd double %i.aft, %i.afu
  %i.afw = fadd double %i.adv, %i.afv
  %i.afx = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  store double %i.afw, ptr %i.afx, align 8, !tbaa !85
  %i.afy = load double, ptr %i.afs, align 8, !tbaa !85
  %i.afz = load double, ptr %i.ads, align 8, !tbaa !85
  %i.aga = fsub double %i.afy, %i.afz
  %i.agb = fsub double %i.aga, %i.adv
  %i.agc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.agb, ptr %i.agc, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader1664, label %.lr.ph, !llvm.loop !49

.lr.ph1670:                                       ; preds = %.lr.ph1670, %.lr.ph1670.preheader.new
  %indvars.iv1873 = phi i64 [ 1, %.lr.ph1670.preheader.new ], [ %indvars.iv.next1874.3, %.lr.ph1670 ] ; 9 uses
  %.41669 = phi double [ 0.000000e+00, %.lr.ph1670.preheader.new ], [ %i.ahq, %.lr.ph1670 ]
  %niter = phi i64 [ 0, %.lr.ph1670.preheader.new ], [ %niter.next.3, %.lr.ph1670 ]
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1873
  %i.age = load double, ptr %i.agd, align 8, !tbaa !85 ; 2 uses
  %i.agf = fmul double %i.age, %i.age
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1873
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !85
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1873
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !85
  %i.agk = fmul double %i.agh, %i.agj
  %i.agl = fdiv double %i.agf, %i.agk
  %i.agm = fadd double %.41669, %i.agl
  %i.agn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1873
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !85 ; 2 uses
  %i.agp = fmul double %i.ago, %i.ago
  %i.agq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1873
  %i.agr = load double, ptr %i.agq, align 8, !tbaa !85
  %i.ags = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1873
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !85
  %i.agu = fmul double %i.agr, %i.agt
  %i.agv = fdiv double %i.agp, %i.agu
  %i.agw = fadd double %i.agm, %i.agv
  %indvars.iv.next1874.1 = add nuw nsw i64 %indvars.iv1873, 2 ; 3 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1874.1
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !85 ; 2 uses
  %i.agz = fmul double %i.agy, %i.agy
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1874.1
  %i.ahb = load double, ptr %i.aha, align 8, !tbaa !85
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1874.1
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !85
  %i.ahe = fmul double %i.ahb, %i.ahd
  %i.ahf = fdiv double %i.agz, %i.ahe
  %i.ahg = fadd double %i.agw, %i.ahf
  %indvars.iv.next1874.2 = add nuw nsw i64 %indvars.iv1873, 3 ; 3 uses
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1874.2
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !85 ; 2 uses
  %i.ahj = fmul double %i.ahi, %i.ahi
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1874.2
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !85
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1874.2
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !85
  %i.aho = fmul double %i.ahl, %i.ahn
  %i.ahp = fdiv double %i.ahj, %i.aho
  %i.ahq = fadd double %i.ahg, %i.ahp             ; 3 uses
  %indvars.iv.next1874.3 = add nuw nsw i64 %indvars.iv1873, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1670, !llvm.loop !50

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1670
  %lcmp.mod2456.not = icmp eq i64 %xtraiter2455, 0
  br i1 %lcmp.mod2456.not, label %._crit_edge, label %.lr.ph1670.epil.preheader

.lr.ph1670.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1670.preheader
  %indvars.iv1873.epil.init = phi i64 [ 1, %.lr.ph1670.preheader ], [ %indvars.iv.next1874.3, %._crit_edge.loopexit.unr-lcssa ]
  %.41669.epil.init = phi double [ 0.000000e+00, %.lr.ph1670.preheader ], [ %i.ahq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2458 = icmp ne i64 %xtraiter2455, 0
  tail call void @llvm.assume(i1 %lcmp.mod2458)
  br label %.lr.ph1670.epil

.lr.ph1670.epil:                                  ; preds = %.lr.ph1670.epil, %.lr.ph1670.epil.preheader
  %indvars.iv1873.epil = phi i64 [ %indvars.iv1873.epil.init, %.lr.ph1670.epil.preheader ], [ %indvars.iv.next1874.epil, %.lr.ph1670.epil ] ; 4 uses
  %.41669.epil = phi double [ %.41669.epil.init, %.lr.ph1670.epil.preheader ], [ %i.aia, %.lr.ph1670.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph1670.epil.preheader ], [ %epil.iter.next, %.lr.ph1670.epil ]
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1873.epil
  %i.ahs = load double, ptr %i.ahr, align 8, !tbaa !85 ; 2 uses
  %i.aht = fmul double %i.ahs, %i.ahs
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1873.epil
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !85
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1873.epil
  %i.ahx = load double, ptr %i.ahw, align 8, !tbaa !85
  %i.ahy = fmul double %i.ahv, %i.ahx
  %i.ahz = fdiv double %i.aht, %i.ahy
  %i.aia = fadd double %.41669.epil, %i.ahz       ; 2 uses
  %indvars.iv.next1874.epil = add nuw nsw i64 %indvars.iv1873.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2455
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph1670.epil, !llvm.loop !51

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1670.epil, %.preheader1664
  %.4.lcssa = phi double [ 0.000000e+00, %.preheader1664 ], [ %i.ahq, %._crit_edge.loopexit.unr-lcssa ], [ %i.aia, %.lr.ph1670.epil ]
  %i.aib = add nsw i32 %i.adq, 2                  ; 2 uses
  %.not15961671 = icmp slt i32 %i.adw, %i.aib
  br i1 %.not15961671, label %._crit_edge1676, label %.lr.ph1675.preheader

.lr.ph1675.preheader:                             ; preds = %._crit_edge
  %i.aic = sext i32 %i.adw to i64                 ; 4 uses
  %i.aid = sext i32 %i.aib to i64                 ; 3 uses
  %i.aie = add nsw i64 %i.aic, 1
  %i.aif = sub nsw i64 %i.aie, %i.aid
  %i.aig = sub nsw i64 %i.aic, %i.aid
  %xtraiter2459 = and i64 %i.aif, 3               ; 2 uses
  %lcmp.mod2460.not = icmp eq i64 %xtraiter2459, 0
  br i1 %lcmp.mod2460.not, label %.lr.ph1675.prol.loopexit, label %.lr.ph1675.prol

.lr.ph1675.prol:                                  ; preds = %.lr.ph1675.preheader, %.lr.ph1675.prol
  %indvars.iv1878.prol = phi i64 [ %indvars.iv.next1879.prol, %.lr.ph1675.prol ], [ %i.aic, %.lr.ph1675.preheader ] ; 4 uses
  %.014831673.prol = phi double [ %i.aiq, %.lr.ph1675.prol ], [ 0.000000e+00, %.lr.ph1675.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1675.prol ], [ 0, %.lr.ph1675.preheader ]
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv1878.prol
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !85 ; 2 uses
  %i.aij = fmul double %i.aii, %i.aii
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1878.prol
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !85
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv1878.prol
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !85
  %i.aio = fmul double %i.ail, %i.ain
  %i.aip = fdiv double %i.aij, %i.aio
  %i.aiq = fadd double %.014831673.prol, %i.aip   ; 3 uses
  %indvars.iv.next1879.prol = add nsw i64 %indvars.iv1878.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2459
  br i1 %prol.iter.cmp.not, label %.lr.ph1675.prol.loopexit, label %.lr.ph1675.prol, !llvm.loop !52

end_hunk_1
begin_hunk_2_@dlasd4_:bb.a
  %i.akk = fmul double %i.akj, %i.akj             ; 3 uses
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adr
  %i.akm = load double, ptr %i.akl, align 8, !tbaa !85
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.adr
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !85
  %i.akp = fmul double %i.akm, %i.ako
  %i.akq = fdiv double %i.akk, %i.akp
  %i.akr = fadd double %i.akh, %i.akq
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.adc ; 9 uses
  %i.akt = load double, ptr %i.aks, align 8, !tbaa !85 ; 6 uses
  %i.aku = fmul double %i.akt, %i.akt             ; 2 uses
  %i.akv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adc ; 5 uses
  %i.akw = load double, ptr %i.akv, align 8, !tbaa !85
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.adc ; 5 uses
  %i.aky = load double, ptr %i.akx, align 8, !tbaa !85
  %i.akz = fmul double %i.akw, %i.aky
  %i.ala = fdiv double %i.aku, %i.akz
  %i.alb = fadd double %i.akr, %i.ala
  %i.alc = fcmp ule double %i.alb, 0.000000e+00   ; 5 uses
  br i1 %i.alc, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %._crit_edge1676
  store i32 1, ptr %i.f, align 4, !tbaa !83
  %i.ald = load double, ptr %i.ads, align 8, !tbaa !85 ; 4 uses
  %i.ale = fadd double %i.adp, %i.ald
  %i.alf = fdiv double %i.adl, %i.ale             ; 5 uses
  %i.alg = tail call double @llvm.fmuladd.f64(double %i.akh, double %i.adk, double %i.akk)
  %i.alh = tail call double @llvm.fmuladd.f64(double %i.akt, double %i.akt, double %i.alg) ; 7 uses
  %i.ali = fmul double %i.adk, %i.akk             ; 3 uses
  %i.alj = fcmp ogt double %i.alh, 0.000000e+00
  br i1 %i.alj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.alk = fmul double %i.ali, 2.000000e+00
  %i.all = fmul double %i.ali, 4.000000e+00
  %i.alm = fneg double %i.akh
  %i.aln = fmul double %i.all, %i.alm
  %i.alo = tail call double @llvm.fmuladd.f64(double %i.alh, double %i.alh, double %i.aln) ; 3 uses
  %i.alp = fcmp oge double %i.alo, 0.000000e+00
  %i.alq = fneg double %i.alo
  %i.alr = select i1 %i.alp, double %i.alo, double %i.alq
  %i.als = tail call double @sqrt(double noundef %i.alr) #6
  %i.alt = fadd double %i.alh, %i.als
  %i.alu = fdiv double %i.alk, %i.alt
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.alv = fmul double %i.ali, 4.000000e+00
  %i.alw = fneg double %i.akh
  %i.alx = fmul double %i.alv, %i.alw
  %i.aly = tail call double @llvm.fmuladd.f64(double %i.alh, double %i.alh, double %i.alx) ; 3 uses
  %i.alz = fcmp oge double %i.aly, 0.000000e+00
  %i.ama = fneg double %i.aly
  %i.amb = select i1 %i.alz, double %i.aly, double %i.ama
  %i.amc = tail call double @sqrt(double noundef %i.amb) #6
  %i.amd = fsub double %i.alh, %i.amc
  %i.ame = fmul double %i.akh, 2.000000e+00
  %i.amf = fdiv double %i.amd, %i.ame
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2 = phi double [ %i.alu, %bb.z ], [ %i.amf, %bb.aa ] ; 2 uses
  %i.amg = load i32, ptr %1, align 4, !tbaa !83
  %i.amh = sext i32 %i.amg to i64
  %i.ami = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.amh
  %i.amj = load double, ptr %i.ami, align 8, !tbaa !85 ; 3 uses
  %i.amk = tail call double @llvm.fmuladd.f64(double %i.amj, double %i.amj, double %.2)
  %i.aml = tail call double @sqrt(double noundef %i.amk) #6
  %i.amm = fadd double %i.amj, %i.aml
  %i.amn = fdiv double %.2, %i.amm                ; 2 uses
  %i.amo = tail call double @sqrt(double noundef %i.t) #6 ; 2 uses
  %i.amp = load i32, ptr %1, align 4, !tbaa !83
  %i.amq = sext i32 %i.amp to i64                 ; 2 uses
  %i.amr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.amq
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !85 ; 3 uses
  %i.amt = load double, ptr %i.add, align 8, !tbaa !85
  %i.amu = fmul double %i.amo, %i.amt
  %i.amv = fcmp ugt double %i.ams, %i.amu
  br i1 %i.amv, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.amw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.amq
  %i.amx = load double, ptr %i.amw, align 8, !tbaa !85
  %i.amy = tail call double @llvm.fabs.f64(double %i.amx)
  %i.amz = fcmp ole double %i.amy, %i.amo
  %i.ana = fcmp ogt double %i.ams, 0.000000e+00
  %or.cond = and i1 %i.ana, %i.amz
  br i1 %or.cond, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.anb = fmul nnan double %i.ams, 1.000000e+01  ; 2 uses
  %i.anc = fcmp ole double %i.anb, %i.alf
  %i.and = select i1 %i.anc, double %i.anb, double %i.alf
  br label %bb.ai

bb.ae:                                            ; preds = %._crit_edge1676
  store i32 0, ptr %i.f, align 4, !tbaa !83
  %i.ane = fneg double %i.adl
  %i.anf = load double, ptr %i.add, align 8, !tbaa !85 ; 5 uses
  %i.ang = fadd double %i.adp, %i.anf
  %i.anh = fdiv double %i.ane, %i.ang
  %i.ani = fneg double %i.akj
  %i.anj = fmul double %i.akj, %i.ani
  %i.ank = tail call double @llvm.fmuladd.f64(double %i.akh, double %i.adk, double %i.anj)
  %i.anl = fneg double %i.akt
  %i.anm = tail call double @llvm.fmuladd.f64(double %i.anl, double %i.akt, double %i.ank) ; 7 uses
  %i.ann = fmul double %i.adk, %i.aku             ; 3 uses
  %i.ano = fcmp olt double %i.anm, 0.000000e+00
  br i1 %i.ano, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.anp = fmul double %i.ann, 2.000000e+00
  %i.anq = fmul double %i.ann, 4.000000e+00
  %i.anr = fmul double %i.akh, %i.anq
  %i.ans = tail call double @llvm.fmuladd.f64(double %i.anm, double %i.anm, double %i.anr) ; 3 uses
  %i.ant = fcmp oge double %i.ans, 0.000000e+00
  %i.anu = fneg double %i.ans
  %i.anv = select i1 %i.ant, double %i.ans, double %i.anu
  %i.anw = tail call double @sqrt(double noundef %i.anv) #6
  %i.anx = fsub double %i.anm, %i.anw
  %i.any = fdiv double %i.anp, %i.anx
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.anz = fmul double %i.ann, 4.000000e+00
  %i.aoa = fmul double %i.akh, %i.anz
  %i.aob = tail call double @llvm.fmuladd.f64(double %i.anm, double %i.anm, double %i.aoa) ; 3 uses
  %i.aoc = fcmp oge double %i.aob, 0.000000e+00
  %i.aod = fneg double %i.aob
  %i.aoe = select i1 %i.aoc, double %i.aob, double %i.aod
  %i.aof = tail call double @sqrt(double noundef %i.aoe) #6
  %i.aog = fadd double %i.anm, %i.aof
  %i.aoh = fneg double %i.aog
  %i.aoi = fmul double %i.akh, 2.000000e+00
  %i.aoj = fdiv double %i.aoh, %i.aoi
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3 = phi double [ %i.any, %bb.af ], [ %i.aoj, %bb.ag ] ; 2 uses
  %i.aok = tail call double @llvm.fmuladd.f64(double %i.anf, double %i.anf, double %.3) ; 3 uses
  %i.aol = fcmp oge double %i.aok, 0.000000e+00
  %i.aom = fneg double %i.aok
  %i.aon = select i1 %i.aol, double %i.aok, double %i.aom
  %i.aoo = tail call double @sqrt(double noundef %i.aon) #6
  %i.aop = fadd double %i.anf, %i.aoo
  %i.aoq = fdiv double %.3, %i.aop
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ah
  %i.aor = phi double [ %i.ald, %bb.ab ], [ %i.ald, %bb.ac ], [ %i.ald, %bb.ad ], [ %i.anf, %bb.ah ]
  %.pre-phi = phi i64 [ %i.adr, %bb.ab ], [ %i.adr, %bb.ac ], [ %i.adr, %bb.ad ], [ %i.adc, %bb.ah ] ; 8 uses
  %.01538 = phi double [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ad ], [ %i.anh, %bb.ah ] ; 2 uses
  %.01522 = phi double [ %i.alf, %bb.ab ], [ %i.alf, %bb.ac ], [ %i.alf, %bb.ad ], [ 0.000000e+00, %bb.ah ] ; 2 uses
  %.01498 = phi i32 [ %i.adq, %bb.ab ], [ %i.adq, %bb.ac ], [ %i.adq, %bb.ad ], [ %i.adb, %bb.ah ] ; 14 uses
  %.21481 = phi double [ %i.amn, %bb.ab ], [ %i.amn, %bb.ac ], [ %i.and, %bb.ad ], [ %i.aoq, %bb.ah ] ; 18 uses
  %.not1611 = phi i1 [ true, %bb.ab ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ah ] ; 2 uses
  %i.aos = getelementptr [8 x i8], ptr %i.k, i64 %.pre-phi ; 9 uses
  %i.aot = fadd double %.21481, %i.aor
  store double %i.aot, ptr %6, align 8, !tbaa !85
  %i.aou = load i32, ptr %0, align 4, !tbaa !83   ; 9 uses
  %.not15971678 = icmp slt i32 %i.aou, 1
  br i1 %.not15971678, label %._crit_edge1682, label %.lr.ph1681.preheader

.lr.ph1681.preheader:                             ; preds = %bb.ai
  %i.aov = add nuw i32 %i.aou, 1
  %wide.trip.count1884 = zext i32 %i.aov to i64   ; 2 uses
  %i.aow = zext nneg i32 %i.aou to i64            ; 2 uses
  %min.iters.check2158 = icmp ult i32 %i.aou, 20
  br i1 %min.iters.check2158, label %.lr.ph1681.preheader2451, label %vector.memcheck2159

vector.memcheck2159:                              ; preds = %.lr.ph1681.preheader
  %i.aox = shl nuw nsw i64 %wide.trip.count1884, 3
  %i.aoy = add nsw i64 %i.aox, -8                 ; 3 uses
  %i.aoz = getelementptr i8, ptr %7, i64 %i.aoy   ; 3 uses
  %i.apa = getelementptr i8, ptr %4, i64 %i.aoy   ; 3 uses
  %i.apb = shl nsw i64 %.pre-phi, 3
  %i.apc = getelementptr i8, ptr %2, i64 %i.apb   ; 2 uses
  %i.apd = getelementptr i8, ptr %2, i64 %i.aoy   ; 2 uses
  %bound02160 = icmp ult ptr %7, %i.apa
  %bound12161 = icmp ult ptr %4, %i.aoz
  %found.conflict2162 = and i1 %bound02160, %bound12161
  %bound02163 = icmp ult ptr %7, %i.apc
  %bound12164 = icmp ult ptr %i.aos, %i.aoz
  %found.conflict2165 = and i1 %bound02163, %bound12164
  %conflict.rdx2166 = or i1 %found.conflict2162, %found.conflict2165
  %bound02167 = icmp ult ptr %7, %i.apd
  %bound12168 = icmp ult ptr %2, %i.aoz
  %found.conflict2169 = and i1 %bound02167, %bound12168
  %conflict.rdx2170 = or i1 %conflict.rdx2166, %found.conflict2169
  %bound02171 = icmp ult ptr %4, %i.apc
  %bound12172 = icmp ult ptr %i.aos, %i.apa
  %found.conflict2173 = and i1 %bound02171, %bound12172
  %conflict.rdx2174 = or i1 %conflict.rdx2170, %found.conflict2173
  %bound02175 = icmp ult ptr %4, %i.apd
  %bound12176 = icmp ult ptr %2, %i.apa
  %found.conflict2177 = and i1 %bound02175, %bound12176
  %conflict.rdx2178 = or i1 %conflict.rdx2174, %found.conflict2177
  br i1 %conflict.rdx2178, label %.lr.ph1681.preheader2451, label %vector.ph2179

vector.ph2179:                                    ; preds = %vector.memcheck2159
  %n.vec2180 = and i64 %i.aow, 2147483644         ; 3 uses
  %i.ape = or disjoint i64 %n.vec2180, 1
  %i.apf = load double, ptr %i.aos, align 8, !tbaa !85, !alias.scope !112 ; 2 uses
  %broadcast.splatinsert2186 = insertelement <4 x double> poison, double %i.apf, i64 0
  %broadcast.splat2187 = shufflevector <4 x double> %broadcast.splatinsert2186, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2189 = insertelement <4 x double> poison, double %i.apf, i64 0
  %broadcast.splat2190 = shufflevector <4 x double> %broadcast.splatinsert2189, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2181 = insertelement <4 x double> poison, double %.21481, i64 0
  %broadcast.splat2182 = shufflevector <4 x double> %broadcast.splatinsert2181, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2183

vector.body2183:                                  ; preds = %vector.body2183, %vector.ph2179
  %index2184 = phi i64 [ 0, %vector.ph2179 ], [ %index.next2191, %vector.body2183 ] ; 4 uses
  %i.apg = getelementptr [8 x i8], ptr %2, i64 %index2184
  %wide.load2185 = load <4 x double>, ptr %i.apg, align 8, !tbaa !85, !alias.scope !113 ; 2 uses
  %i.aph = fadd <4 x double> %wide.load2185, %broadcast.splat2187
  %i.api = fadd <4 x double> %broadcast.splat2182, %i.aph
  %i.apj = getelementptr [8 x i8], ptr %7, i64 %index2184
  store <4 x double> %i.api, ptr %i.apj, align 8, !tbaa !85, !alias.scope !114, !noalias !115
  %i.apk = fsub <4 x double> %wide.load2185, %broadcast.splat2190
  %i.apl = fsub <4 x double> %i.apk, %broadcast.splat2182
  %i.apm = getelementptr [8 x i8], ptr %4, i64 %index2184
  store <4 x double> %i.apl, ptr %i.apm, align 8, !tbaa !85, !alias.scope !116, !noalias !117
  %index.next2191 = add nuw i64 %index2184, 4     ; 2 uses
  %i.apn = icmp eq i64 %index.next2191, %n.vec2180
  br i1 %i.apn, label %middle.block2192, label %vector.body2183, !llvm.loop !59

middle.block2192:                                 ; preds = %vector.body2183
  %cmp.n2193 = icmp eq i64 %n.vec2180, %i.aow
  br i1 %cmp.n2193, label %._crit_edge1682, label %.lr.ph1681.preheader2451

.lr.ph1681.preheader2451:                         ; preds = %vector.memcheck2159, %.lr.ph1681.preheader, %middle.block2192
  %indvars.iv1881.ph = phi i64 [ 1, %vector.memcheck2159 ], [ 1, %.lr.ph1681.preheader ], [ %i.ape, %middle.block2192 ] ; 6 uses
  %i.apo = zext nneg i32 %i.aou to i64
  %i.app = and i32 %i.aou, 1
  %lcmp.mod2462.not = icmp eq i32 %i.app, 0
  br i1 %lcmp.mod2462.not, label %.lr.ph1681.prol.loopexit, label %.lr.ph1681.prol

.lr.ph1681.prol:                                  ; preds = %.lr.ph1681.preheader2451
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1881.ph ; 2 uses
  %i.apr = load double, ptr %i.apq, align 8, !tbaa !85
  %i.aps = load double, ptr %i.aos, align 8, !tbaa !85
  %i.apt = fadd double %i.apr, %i.aps
  %i.apu = fadd double %.21481, %i.apt
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1881.ph
  store double %i.apu, ptr %i.apv, align 8, !tbaa !85
  %i.apw = load double, ptr %i.apq, align 8, !tbaa !85
  %i.apx = load double, ptr %i.aos, align 8, !tbaa !85
  %i.apy = fsub double %i.apw, %i.apx
  %i.apz = fsub double %i.apy, %.21481
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1881.ph
  store double %i.apz, ptr %i.aqa, align 8, !tbaa !85
  %indvars.iv.next1882.prol = add nuw nsw i64 %indvars.iv1881.ph, 1
  br label %.lr.ph1681.prol.loopexit

.lr.ph1681.prol.loopexit:                         ; preds = %.lr.ph1681.prol, %.lr.ph1681.preheader2451
  %indvars.iv1881.unr = phi i64 [ %indvars.iv1881.ph, %.lr.ph1681.preheader2451 ], [ %indvars.iv.next1882.prol, %.lr.ph1681.prol ]
  %i.aqb = icmp eq i64 %indvars.iv1881.ph, %i.apo
  br i1 %i.aqb, label %._crit_edge1682, label %.lr.ph1681

.lr.ph1681:                                       ; preds = %.lr.ph1681.prol.loopexit, %.lr.ph1681
  %indvars.iv1881 = phi i64 [ %indvars.iv.next1882.1, %.lr.ph1681 ], [ %indvars.iv1881.unr, %.lr.ph1681.prol.loopexit ] ; 7 uses
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1881 ; 2 uses
  %i.aqd = load double, ptr %i.aqc, align 8, !tbaa !85
  %i.aqe = load double, ptr %i.aos, align 8, !tbaa !85
  %i.aqf = fadd double %i.aqd, %i.aqe
  %i.aqg = fadd double %.21481, %i.aqf
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1881
  store double %i.aqg, ptr %i.aqh, align 8, !tbaa !85
  %i.aqi = load double, ptr %i.aqc, align 8, !tbaa !85
  %i.aqj = load double, ptr %i.aos, align 8, !tbaa !85
  %i.aqk = fsub double %i.aqi, %i.aqj
  %i.aql = fsub double %i.aqk, %.21481
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1881
  store double %i.aql, ptr %i.aqm, align 8, !tbaa !85
  %i.aqn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1881 ; 2 uses
  %i.aqo = load double, ptr %i.aqn, align 8, !tbaa !85
  %i.aqp = load double, ptr %i.aos, align 8, !tbaa !85
  %i.aqq = fadd double %i.aqo, %i.aqp
  %i.aqr = fadd double %.21481, %i.aqq
  %i.aqs = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1881
  store double %i.aqr, ptr %i.aqs, align 8, !tbaa !85
  %i.aqt = load double, ptr %i.aqn, align 8, !tbaa !85
  %i.aqu = load double, ptr %i.aos, align 8, !tbaa !85
  %i.aqv = fsub double %i.aqt, %i.aqu
  %i.aqw = fsub double %i.aqv, %.21481
  %i.aqx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1881
  store double %i.aqw, ptr %i.aqx, align 8, !tbaa !85
  %indvars.iv.next1882.1 = add nuw nsw i64 %indvars.iv1881, 2 ; 2 uses
  %exitcond1885.not.1 = icmp eq i64 %indvars.iv.next1882.1, %wide.trip.count1884
  br i1 %exitcond1885.not.1, label %._crit_edge1682, label %.lr.ph1681, !llvm.loop !60

._crit_edge1682:                                  ; preds = %.lr.ph1681.prol.loopexit, %.lr.ph1681, %middle.block2192, %bb.ai
  %i.aqy = add nsw i32 %.01498, -1                ; 2 uses
  %i.aqz = add nsw i32 %.01498, 1                 ; 2 uses
  %.not1598.not1683 = icmp sgt i32 %.01498, 1     ; 3 uses
  br i1 %.not1598.not1683, label %.lr.ph1689.preheader, label %._crit_edge1690

.lr.ph1689.preheader:                             ; preds = %._crit_edge1682
  %wide.trip.count1889 = zext nneg i32 %.01498 to i64
  %i.ara = add nsw i64 %wide.trip.count1889, -1   ; 2 uses
  %xtraiter2464 = and i64 %i.ara, 3               ; 3 uses
  %i.arb = add nsw i32 %.01498, -2
  %i.arc = icmp ult i32 %i.arb, 3
  br i1 %i.arc, label %.lr.ph1689.epil.preheader, label %.lr.ph1689.preheader.new

.lr.ph1689.preheader.new:                         ; preds = %.lr.ph1689.preheader
  %unroll_iter2471 = and i64 %i.ara, -4
  br label %.lr.ph1689

.lr.ph1689:                                       ; preds = %.lr.ph1689, %.lr.ph1689.preheader.new
  %indvars.iv1886 = phi i64 [ 1, %.lr.ph1689.preheader.new ], [ %indvars.iv.next1887.3, %.lr.ph1689 ] ; 9 uses
  %.51687 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.ass, %.lr.ph1689 ]
  %.414921686 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.asu, %.lr.ph1689 ]
  %.415301684 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.ast, %.lr.ph1689 ]
  %niter2472 = phi i64 [ 0, %.lr.ph1689.preheader.new ], [ %niter2472.next.3, %.lr.ph1689 ]
  %i.ard = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1886
  %i.are = load double, ptr %i.ard, align 8, !tbaa !85 ; 2 uses
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1886
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !85
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1886
  %i.ari = load double, ptr %i.arh, align 8, !tbaa !85
  %i.arj = fmul double %i.arg, %i.ari
  %i.ark = fdiv double %i.are, %i.arj             ; 3 uses
  %i.arl = tail call double @llvm.fmuladd.f64(double %i.are, double %i.ark, double %.51687) ; 2 uses
  %i.arm = tail call double @llvm.fmuladd.f64(double %i.ark, double %i.ark, double %.415301684)
  %i.arn = fadd double %.414921686, %i.arl
  %i.aro = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1886
  %i.arp = load double, ptr %i.aro, align 8, !tbaa !85 ; 2 uses
  %i.arq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1886
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !85
  %i.ars = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1886
  %i.art = load double, ptr %i.ars, align 8, !tbaa !85
  %i.aru = fmul double %i.arr, %i.art
  %i.arv = fdiv double %i.arp, %i.aru             ; 3 uses
  %i.arw = tail call double @llvm.fmuladd.f64(double %i.arp, double %i.arv, double %i.arl) ; 2 uses
  %i.arx = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.arv, double %i.arm)
  %i.ary = fadd double %i.arn, %i.arw
  %indvars.iv.next1887.1 = add nuw nsw i64 %indvars.iv1886, 2 ; 3 uses
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1887.1
  %i.asa = load double, ptr %i.arz, align 8, !tbaa !85 ; 2 uses
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1887.1
  %i.asc = load double, ptr %i.asb, align 8, !tbaa !85
  %i.asd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1887.1
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !85
  %i.asf = fmul double %i.asc, %i.ase
  %i.asg = fdiv double %i.asa, %i.asf             ; 3 uses
  %i.ash = tail call double @llvm.fmuladd.f64(double %i.asa, double %i.asg, double %i.arw) ; 2 uses
  %i.asi = tail call double @llvm.fmuladd.f64(double %i.asg, double %i.asg, double %i.arx)
  %i.asj = fadd double %i.ary, %i.ash
  %indvars.iv.next1887.2 = add nuw nsw i64 %indvars.iv1886, 3 ; 3 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1887.2
  %i.asl = load double, ptr %i.ask, align 8, !tbaa !85 ; 2 uses
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1887.2
  %i.asn = load double, ptr %i.asm, align 8, !tbaa !85
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1887.2
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !85
  %i.asq = fmul double %i.asn, %i.asp
  %i.asr = fdiv double %i.asl, %i.asq             ; 3 uses
  %i.ass = tail call double @llvm.fmuladd.f64(double %i.asl, double %i.asr, double %i.ash) ; 4 uses
  %i.ast = tail call double @llvm.fmuladd.f64(double %i.asr, double %i.asr, double %i.asi) ; 3 uses
  %i.asu = fadd double %i.asj, %i.ass             ; 3 uses
  %indvars.iv.next1887.3 = add nuw nsw i64 %indvars.iv1886, 4 ; 2 uses
  %niter2472.next.3 = add i64 %niter2472, 4       ; 2 uses
  %niter2472.ncmp.3 = icmp eq i64 %niter2472.next.3, %unroll_iter2471
  br i1 %niter2472.ncmp.3, label %._crit_edge1690.loopexit.unr-lcssa, label %.lr.ph1689, !llvm.loop !61

._crit_edge1690.loopexit.unr-lcssa:               ; preds = %.lr.ph1689
  %lcmp.mod2466.not = icmp eq i64 %xtraiter2464, 0
  br i1 %lcmp.mod2466.not, label %._crit_edge1690, label %.lr.ph1689.epil.preheader

.lr.ph1689.epil.preheader:                        ; preds = %._crit_edge1690.loopexit.unr-lcssa, %.lr.ph1689.preheader
  %indvars.iv1886.epil.init = phi i64 [ 1, %.lr.ph1689.preheader ], [ %indvars.iv.next1887.3, %._crit_edge1690.loopexit.unr-lcssa ]
  %.51687.epil.init = phi double [ 0.000000e+00, %.lr.ph1689.preheader ], [ %i.ass, %._crit_edge1690.loopexit.unr-lcssa ]
  %.414921686.epil.init = phi double [ 0.000000e+00, %.lr.ph1689.preheader ], [ %i.asu, %._crit_edge1690.loopexit.unr-lcssa ]
  %.415301684.epil.init = phi double [ 0.000000e+00, %.lr.ph1689.preheader ], [ %i.ast, %._crit_edge1690.loopexit.unr-lcssa ]
  %lcmp.mod2470 = icmp ne i64 %xtraiter2464, 0
  tail call void @llvm.assume(i1 %lcmp.mod2470)
  br label %.lr.ph1689.epil

.lr.ph1689.epil:                                  ; preds = %.lr.ph1689.epil, %.lr.ph1689.epil.preheader
  %indvars.iv1886.epil = phi i64 [ %indvars.iv1886.epil.init, %.lr.ph1689.epil.preheader ], [ %indvars.iv.next1887.epil, %.lr.ph1689.epil ] ; 4 uses
  %.51687.epil = phi double [ %.51687.epil.init, %.lr.ph1689.epil.preheader ], [ %i.atd, %.lr.ph1689.epil ]
  %.414921686.epil = phi double [ %.414921686.epil.init, %.lr.ph1689.epil.preheader ], [ %i.atf, %.lr.ph1689.epil ]
  %.415301684.epil = phi double [ %.415301684.epil.init, %.lr.ph1689.epil.preheader ], [ %i.ate, %.lr.ph1689.epil ]
  %epil.iter2465 = phi i64 [ 0, %.lr.ph1689.epil.preheader ], [ %epil.iter2465.next, %.lr.ph1689.epil ]
  %i.asv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1886.epil
  %i.asw = load double, ptr %i.asv, align 8, !tbaa !85 ; 2 uses
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1886.epil
  %i.asy = load double, ptr %i.asx, align 8, !tbaa !85
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1886.epil
  %i.ata = load double, ptr %i.asz, align 8, !tbaa !85
  %i.atb = fmul double %i.asy, %i.ata
  %i.atc = fdiv double %i.asw, %i.atb             ; 3 uses
  %i.atd = tail call double @llvm.fmuladd.f64(double %i.asw, double %i.atc, double %.51687.epil) ; 3 uses
  %i.ate = tail call double @llvm.fmuladd.f64(double %i.atc, double %i.atc, double %.415301684.epil) ; 2 uses
  %i.atf = fadd double %.414921686.epil, %i.atd   ; 2 uses
  %indvars.iv.next1887.epil = add nuw nsw i64 %indvars.iv1886.epil, 1
  %epil.iter2465.next = add i64 %epil.iter2465, 1 ; 2 uses
  %epil.iter2465.cmp.not = icmp eq i64 %epil.iter2465.next, %xtraiter2464
  br i1 %epil.iter2465.cmp.not, label %._crit_edge1690, label %.lr.ph1689.epil, !llvm.loop !62

._crit_edge1690:                                  ; preds = %._crit_edge1690.loopexit.unr-lcssa, %.lr.ph1689.epil, %._crit_edge1682
  %.41530.lcssa = phi double [ 0.000000e+00, %._crit_edge1682 ], [ %i.ast, %._crit_edge1690.loopexit.unr-lcssa ], [ %i.ate, %.lr.ph1689.epil ] ; 5 uses
  %.41492.lcssa = phi double [ 0.000000e+00, %._crit_edge1682 ], [ %i.asu, %._crit_edge1690.loopexit.unr-lcssa ], [ %i.atf, %.lr.ph1689.epil ] ; 3 uses
  %.5.lcssa = phi double [ 0.000000e+00, %._crit_edge1682 ], [ %i.ass, %._crit_edge1690.loopexit.unr-lcssa ], [ %i.atd, %.lr.ph1689.epil ] ; 3 uses
  %i.atg = fcmp oge double %.41492.lcssa, 0.000000e+00
  %i.ath = fneg double %.41492.lcssa
  %i.ati = select i1 %i.atg, double %.41492.lcssa, double %i.ath ; 2 uses
  %.not1599.not1694 = icmp sgt i32 %i.aou, %.01498
  br i1 %.not1599.not1694, label %.lr.ph1700.preheader, label %._crit_edge1701

.lr.ph1700.preheader:                             ; preds = %._crit_edge1690
  %i.atj = sext i32 %i.aou to i64
  br label %.lr.ph1700

.lr.ph1700:                                       ; preds = %.lr.ph1700.preheader, %.lr.ph1700
  %indvars.iv1891 = phi i64 [ %i.atj, %.lr.ph1700.preheader ], [ %indvars.iv.next1892, %.lr.ph1700 ] ; 4 uses
  %.114841698 = phi double [ 0.000000e+00, %.lr.ph1700.preheader ], [ %i.ats, %.lr.ph1700 ]
  %.514931697 = phi double [ %i.ati, %.lr.ph1700.preheader ], [ %i.atu, %.lr.ph1700 ]
  %.115431695 = phi double [ 0.000000e+00, %.lr.ph1700.preheader ], [ %i.att, %.lr.ph1700 ]
  %i.atk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv1891
  %i.atl = load double, ptr %i.atk, align 8, !tbaa !85 ; 2 uses
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1891
end_hunk_2
