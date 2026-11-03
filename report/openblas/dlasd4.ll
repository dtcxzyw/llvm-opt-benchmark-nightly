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
  %i.k = getelementptr i8, ptr %2, i64 -8         ; 27 uses
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
  %i.w = load i32, ptr %1, align 4, !tbaa !83     ; 19 uses
  %i.x = load i32, ptr %0, align 4, !tbaa !83     ; 9 uses
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
  %min.iters.check2271 = icmp ult i32 %i.ai, 20
  br i1 %min.iters.check2271, label %scalar.ph2270.preheader, label %vector.memcheck2272

vector.memcheck2272:                              ; preds = %.lr.ph1774
  %i.an = shl nuw nsw i64 %wide.trip.count1923, 3
  %i.ao = add nsw i64 %i.an, -8                   ; 3 uses
  %i.ap = getelementptr i8, ptr %7, i64 %i.ao     ; 3 uses
  %i.aq = getelementptr i8, ptr %4, i64 %i.ao     ; 3 uses
  %i.ar = shl nuw nsw i64 %i.aj, 3
  %i.as = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ao     ; 2 uses
  %bound02273 = icmp ult ptr %7, %i.aq
  %bound12274 = icmp ult ptr %4, %i.ap
  %found.conflict2275 = and i1 %bound02273, %bound12274
  %bound02276 = icmp ult ptr %7, %i.as
  %bound12277 = icmp ult ptr %i.ak, %i.ap
  %found.conflict2278 = and i1 %bound02276, %bound12277
  %conflict.rdx2279 = or i1 %found.conflict2275, %found.conflict2278
  %bound02280 = icmp ult ptr %7, %i.at
  %bound12281 = icmp ult ptr %2, %i.ap
  %found.conflict2282 = and i1 %bound02280, %bound12281
  %conflict.rdx2283 = or i1 %conflict.rdx2279, %found.conflict2282
  %bound02284 = icmp ult ptr %4, %i.as
  %bound12285 = icmp ult ptr %i.ak, %i.aq
  %found.conflict2286 = and i1 %bound02284, %bound12285
  %conflict.rdx2287 = or i1 %conflict.rdx2283, %found.conflict2286
  %bound02288 = icmp ult ptr %4, %i.at
  %bound12289 = icmp ult ptr %2, %i.aq
  %found.conflict2290 = and i1 %bound02288, %bound12289
  %conflict.rdx2291 = or i1 %conflict.rdx2287, %found.conflict2290
  br i1 %conflict.rdx2291, label %scalar.ph2270.preheader, label %vector.ph2292

vector.ph2292:                                    ; preds = %vector.memcheck2272
  %n.vec2293 = and i64 %i.am, 2147483640          ; 3 uses
  %i.au = or disjoint i64 %n.vec2293, 1
  %i.av = load double, ptr %i.ak, align 8, !tbaa !85, !alias.scope !86
  %broadcast.splatinsert2300 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat2301 = shufflevector <4 x double> %broadcast.splatinsert2300, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2294 = insertelement <4 x double> poison, double %i.ah, i64 0
  %broadcast.splat2295 = shufflevector <4 x double> %broadcast.splatinsert2294, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2296

vector.body2296:                                  ; preds = %vector.body2296, %vector.ph2292
  %index2297 = phi i64 [ 0, %vector.ph2292 ], [ %index.next2304, %vector.body2296 ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %index2297 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %wide.load2298 = load <4 x double>, ptr %i.aw, align 8, !tbaa !85, !alias.scope !87
  %wide.load2299 = load <4 x double>, ptr %i.ax, align 8, !tbaa !85, !alias.scope !87
  %i.ay = fadd <4 x double> %wide.load2298, %broadcast.splat2301
  %i.az = fadd <4 x double> %wide.load2299, %broadcast.splat2301
  %i.ba = fadd <4 x double> %broadcast.splat2295, %i.ay
  %i.bb = fadd <4 x double> %broadcast.splat2295, %i.az
  %i.bc = getelementptr [8 x i8], ptr %7, i64 %index2297 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <4 x double> %i.ba, ptr %i.bc, align 8, !tbaa !85, !alias.scope !88, !noalias !89
  store <4 x double> %i.bb, ptr %i.bd, align 8, !tbaa !85, !alias.scope !88, !noalias !89
  %wide.load2302 = load <4 x double>, ptr %i.aw, align 8, !tbaa !85, !alias.scope !87
  %wide.load2303 = load <4 x double>, ptr %i.ax, align 8, !tbaa !85, !alias.scope !87
  %i.be = fsub <4 x double> %wide.load2302, %broadcast.splat2301
  %i.bf = fsub <4 x double> %wide.load2303, %broadcast.splat2301
  %i.bg = fsub <4 x double> %i.be, %broadcast.splat2295
  %i.bh = fsub <4 x double> %i.bf, %broadcast.splat2295
  %i.bi = getelementptr [8 x i8], ptr %4, i64 %index2297 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store <4 x double> %i.bg, ptr %i.bi, align 8, !tbaa !85, !alias.scope !90, !noalias !91
  store <4 x double> %i.bh, ptr %i.bj, align 8, !tbaa !85, !alias.scope !90, !noalias !91
  %index.next2304 = add nuw i64 %index2297, 8     ; 2 uses
  %i.bk = icmp eq i64 %index.next2304, %n.vec2293
  br i1 %i.bk, label %middle.block2305, label %vector.body2296, !llvm.loop !13

middle.block2305:                                 ; preds = %vector.body2296
  %cmp.n2306 = icmp eq i64 %n.vec2293, %i.am
  br i1 %cmp.n2306, label %._crit_edge1775, label %scalar.ph2270.preheader

scalar.ph2270.preheader:                          ; preds = %vector.memcheck2272, %.lr.ph1774, %middle.block2305
  %indvars.iv1920.ph = phi i64 [ 1, %vector.memcheck2272 ], [ 1, %.lr.ph1774 ], [ %i.au, %middle.block2305 ] ; 6 uses
  %i.bl = zext nneg i32 %i.ai to i64
  %i.bm = and i32 %i.ai, 1
  %lcmp.mod2502.not = icmp eq i32 %i.bm, 0
  br i1 %lcmp.mod2502.not, label %scalar.ph2270.prol.loopexit, label %scalar.ph2270.prol

scalar.ph2270.prol:                               ; preds = %scalar.ph2270.preheader
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
  br label %scalar.ph2270.prol.loopexit

scalar.ph2270.prol.loopexit:                      ; preds = %scalar.ph2270.prol, %scalar.ph2270.preheader
  %indvars.iv1920.unr = phi i64 [ %indvars.iv1920.ph, %scalar.ph2270.preheader ], [ %indvars.iv.next1921.prol, %scalar.ph2270.prol ]
  %i.by = icmp eq i64 %indvars.iv1920.ph, %i.bl
  br i1 %i.by, label %._crit_edge1775, label %scalar.ph2270

scalar.ph2270:                                    ; preds = %scalar.ph2270.prol.loopexit, %scalar.ph2270
  %indvars.iv1920 = phi i64 [ %indvars.iv.next1921.1, %scalar.ph2270 ], [ %indvars.iv1920.unr, %scalar.ph2270.prol.loopexit ] ; 7 uses
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
  br i1 %exitcond1924.not.1, label %._crit_edge1775, label %scalar.ph2270, !llvm.loop !14

._crit_edge1775:                                  ; preds = %scalar.ph2270.prol.loopexit, %scalar.ph2270, %middle.block2305
  %.not16361776 = icmp samesign ult i32 %i.ai, 3
  br i1 %.not16361776, label %._crit_edge1781, label %.lr.ph1780.preheader

.lr.ph1780.preheader:                             ; preds = %._crit_edge1775
  %i.cv = zext nneg i32 %i.ai to i64
  %i.cw = add nsw i64 %i.cv, -2                   ; 2 uses
  %xtraiter2504 = and i64 %i.cw, 3                ; 3 uses
  %i.cx = add nsw i32 %i.ai, -3
  %i.cy = icmp ult i32 %i.cx, 3
  br i1 %i.cy, label %.lr.ph1780.epil.preheader, label %.lr.ph1780.preheader.new

.lr.ph1780.preheader.new:                         ; preds = %.lr.ph1780.preheader
  %unroll_iter2509 = and i64 %i.cw, -4
  br label %.lr.ph1780

.lr.ph1780:                                       ; preds = %.lr.ph1780, %.lr.ph1780.preheader.new
  %indvars.iv1925 = phi i64 [ 1, %.lr.ph1780.preheader.new ], [ %indvars.iv.next1926.3, %.lr.ph1780 ] ; 9 uses
  %.014751778 = phi double [ 0.000000e+00, %.lr.ph1780.preheader.new ], [ %i.em, %.lr.ph1780 ]
  %niter2510 = phi i64 [ 0, %.lr.ph1780.preheader.new ], [ %niter2510.next.3, %.lr.ph1780 ]
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
end_hunk_0
begin_hunk_1_@dlasd4_:bb.a
  %i.zp = sub nsw i64 %i.zo, %indvars.iv1950.ph
  %xtraiter2535 = and i64 %i.zn, 3                ; 2 uses
  %lcmp.mod2536.not = icmp eq i64 %xtraiter2535, 0
  br i1 %lcmp.mod2536.not, label %.lr.ph1814.prol.loopexit, label %.lr.ph1814.prol

.lr.ph1814.prol:                                  ; preds = %.lr.ph1814.preheader2422, %.lr.ph1814.prol
  %indvars.iv1950.prol = phi i64 [ %indvars.iv.next1951.prol, %.lr.ph1814.prol ], [ %indvars.iv1950.ph, %.lr.ph1814.preheader2422 ] ; 3 uses
  %prol.iter2537 = phi i64 [ %prol.iter2537.next, %.lr.ph1814.prol ], [ 0, %.lr.ph1814.preheader2422 ]
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1950.prol ; 2 uses
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !85
  %i.zs = fsub double %i.zr, %i.yu
  store double %i.zs, ptr %i.zq, align 8, !tbaa !85
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1950.prol ; 2 uses
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !85
  %i.zv = fadd double %i.yu, %i.zu
  store double %i.zv, ptr %i.zt, align 8, !tbaa !85
  %indvars.iv.next1951.prol = add nuw nsw i64 %indvars.iv1950.prol, 1 ; 2 uses
  %prol.iter2537.next = add i64 %prol.iter2537, 1 ; 2 uses
  %prol.iter2537.cmp.not = icmp eq i64 %prol.iter2537.next, %xtraiter2535
  br i1 %prol.iter2537.cmp.not, label %.lr.ph1814.prol.loopexit, label %.lr.ph1814.prol, !llvm.loop !38

.lr.ph1814.prol.loopexit:                         ; preds = %.lr.ph1814.prol, %.lr.ph1814.preheader2422
  %indvars.iv1950.unr = phi i64 [ %indvars.iv1950.ph, %.lr.ph1814.preheader2422 ], [ %indvars.iv.next1951.prol, %.lr.ph1814.prol ]
  %i.zw = icmp ult i64 %i.zp, 3
  br i1 %i.zw, label %.preheader, label %.lr.ph1814

.preheader:                                       ; preds = %.lr.ph1814.prol.loopexit, %.lr.ph1814, %middle.block2418, %bb.w
  br i1 %.not1638.not1787, label %.lr.ph1820.preheader, label %._crit_edge1821

.lr.ph1820.preheader:                             ; preds = %.preheader
  br i1 %i.wm, label %.lr.ph1820.epil.preheader, label %.lr.ph1820

.lr.ph1814:                                       ; preds = %.lr.ph1814.prol.loopexit, %.lr.ph1814
  %indvars.iv1950 = phi i64 [ %indvars.iv.next1951.3, %.lr.ph1814 ], [ %indvars.iv1950.unr, %.lr.ph1814.prol.loopexit ] ; 7 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1950 ; 2 uses
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !85
  %i.zz = fsub double %i.zy, %i.yu
  store double %i.zz, ptr %i.zx, align 8, !tbaa !85
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1950 ; 2 uses
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !85
  %i.aac = fadd double %i.yu, %i.aab
  store double %i.aac, ptr %i.aaa, align 8, !tbaa !85
  %i.aad = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1950 ; 2 uses
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !85
  %i.aaf = fsub double %i.aae, %i.yu
  store double %i.aaf, ptr %i.aad, align 8, !tbaa !85
  %i.aag = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1950 ; 2 uses
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !85
  %i.aai = fadd double %i.yu, %i.aah
  store double %i.aai, ptr %i.aag, align 8, !tbaa !85
  %indvars.iv.next1951.1 = add nuw nsw i64 %indvars.iv1950, 2 ; 2 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1951.1 ; 2 uses
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !85
  %i.aal = fsub double %i.aak, %i.yu
  store double %i.aal, ptr %i.aaj, align 8, !tbaa !85
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1951.1 ; 2 uses
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !85
  %i.aao = fadd double %i.yu, %i.aan
  store double %i.aao, ptr %i.aam, align 8, !tbaa !85
  %indvars.iv.next1951.2 = add nuw nsw i64 %indvars.iv1950, 3 ; 2 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1951.2 ; 2 uses
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !85
  %i.aar = fsub double %i.aaq, %i.yu
  store double %i.aar, ptr %i.aap, align 8, !tbaa !85
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1951.2 ; 2 uses
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !85
  %i.aau = fadd double %i.yu, %i.aat
  store double %i.aau, ptr %i.aas, align 8, !tbaa !85
  %indvars.iv.next1951.3 = add nuw nsw i64 %indvars.iv1950, 4 ; 2 uses
  %exitcond1954.not.3 = icmp eq i64 %indvars.iv.next1951.3, %wide.trip.count1953
  br i1 %exitcond1954.not.3, label %.preheader, label %.lr.ph1814, !llvm.loop !39

.lr.ph1820:                                       ; preds = %.lr.ph1820.preheader, %.lr.ph1820
  %indvars.iv1955 = phi i64 [ %indvars.iv.next1956.3, %.lr.ph1820 ], [ 1, %.lr.ph1820.preheader ] ; 9 uses
  %.314781819 = phi double [ %i.ack, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %.314911818 = phi double [ %i.acm, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %.315291816 = phi double [ %i.acl, %.lr.ph1820 ], [ 0.000000e+00, %.lr.ph1820.preheader ]
  %niter2546 = phi i64 [ %niter2546.next.3, %.lr.ph1820 ], [ 0, %.lr.ph1820.preheader ]
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1955
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !85 ; 2 uses
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1955
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !85
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1955
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !85
  %i.abb = fmul double %i.aay, %i.aba
  %i.abc = fdiv double %i.aaw, %i.abb             ; 3 uses
  %i.abd = tail call double @llvm.fmuladd.f64(double %i.aaw, double %i.abc, double %.314781819) ; 2 uses
  %i.abe = tail call double @llvm.fmuladd.f64(double %i.abc, double %i.abc, double %.315291816)
  %i.abf = fadd double %.314911818, %i.abd
  %i.abg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1955
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !85 ; 2 uses
  %i.abi = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1955
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !85
  %i.abk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1955
  %i.abl = load double, ptr %i.abk, align 8, !tbaa !85
  %i.abm = fmul double %i.abj, %i.abl
  %i.abn = fdiv double %i.abh, %i.abm             ; 3 uses
  %i.abo = tail call double @llvm.fmuladd.f64(double %i.abh, double %i.abn, double %i.abd) ; 2 uses
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.abn, double %i.abn, double %i.abe)
  %i.abq = fadd double %i.abf, %i.abo
  %indvars.iv.next1956.1 = add nuw nsw i64 %indvars.iv1955, 2 ; 3 uses
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1956.1
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !85 ; 2 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1956.1
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !85
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1956.1
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !85
  %i.abx = fmul double %i.abu, %i.abw
  %i.aby = fdiv double %i.abs, %i.abx             ; 3 uses
  %i.abz = tail call double @llvm.fmuladd.f64(double %i.abs, double %i.aby, double %i.abo) ; 2 uses
  %i.aca = tail call double @llvm.fmuladd.f64(double %i.aby, double %i.aby, double %i.abp)
  %i.acb = fadd double %i.abq, %i.abz
  %indvars.iv.next1956.2 = add nuw nsw i64 %indvars.iv1955, 3 ; 3 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1956.2
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !85 ; 2 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1956.2
  %i.acf = load double, ptr %i.ace, align 8, !tbaa !85
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1956.2
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !85
  %i.aci = fmul double %i.acf, %i.ach
  %i.acj = fdiv double %i.acd, %i.aci             ; 3 uses
  %i.ack = tail call double @llvm.fmuladd.f64(double %i.acd, double %i.acj, double %i.abz) ; 4 uses
  %i.acl = tail call double @llvm.fmuladd.f64(double %i.acj, double %i.acj, double %i.aca) ; 3 uses
  %i.acm = fadd double %i.acb, %i.ack             ; 3 uses
  %indvars.iv.next1956.3 = add nuw nsw i64 %indvars.iv1955, 4 ; 2 uses
  %niter2546.next.3 = add i64 %niter2546, 4       ; 2 uses
  %niter2546.ncmp.3 = icmp eq i64 %niter2546.next.3, %unroll_iter2545
  br i1 %niter2546.ncmp.3, label %._crit_edge1821.loopexit.unr-lcssa, label %.lr.ph1820, !llvm.loop !40

._crit_edge1821.loopexit.unr-lcssa:               ; preds = %.lr.ph1820
  br i1 %lcmp.mod2540.not, label %._crit_edge1821, label %.lr.ph1820.epil.preheader

.lr.ph1820.epil.preheader:                        ; preds = %._crit_edge1821.loopexit.unr-lcssa, %.lr.ph1820.preheader
  %indvars.iv1955.epil.init = phi i64 [ 1, %.lr.ph1820.preheader ], [ %indvars.iv.next1956.3, %._crit_edge1821.loopexit.unr-lcssa ]
  %.314781819.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.ack, %._crit_edge1821.loopexit.unr-lcssa ]
  %.314911818.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.acm, %._crit_edge1821.loopexit.unr-lcssa ]
  %.315291816.epil.init = phi double [ 0.000000e+00, %.lr.ph1820.preheader ], [ %i.acl, %._crit_edge1821.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2544)
  br label %.lr.ph1820.epil

.lr.ph1820.epil:                                  ; preds = %.lr.ph1820.epil, %.lr.ph1820.epil.preheader
  %indvars.iv1955.epil = phi i64 [ %indvars.iv.next1956.epil, %.lr.ph1820.epil ], [ %indvars.iv1955.epil.init, %.lr.ph1820.epil.preheader ] ; 4 uses
  %.314781819.epil = phi double [ %i.acv, %.lr.ph1820.epil ], [ %.314781819.epil.init, %.lr.ph1820.epil.preheader ]
  %.314911818.epil = phi double [ %i.acx, %.lr.ph1820.epil ], [ %.314911818.epil.init, %.lr.ph1820.epil.preheader ]
  %.315291816.epil = phi double [ %i.acw, %.lr.ph1820.epil ], [ %.315291816.epil.init, %.lr.ph1820.epil.preheader ]
  %epil.iter2539 = phi i64 [ %epil.iter2539.next, %.lr.ph1820.epil ], [ 0, %.lr.ph1820.epil.preheader ]
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1955.epil
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !85 ; 2 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1955.epil
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !85
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1955.epil
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !85
  %i.act = fmul double %i.acq, %i.acs
  %i.acu = fdiv double %i.aco, %i.act             ; 3 uses
  %i.acv = tail call double @llvm.fmuladd.f64(double %i.aco, double %i.acu, double %.314781819.epil) ; 3 uses
  %i.acw = tail call double @llvm.fmuladd.f64(double %i.acu, double %i.acu, double %.315291816.epil) ; 2 uses
  %i.acx = fadd double %.314911818.epil, %i.acv   ; 2 uses
  %indvars.iv.next1956.epil = add nuw nsw i64 %indvars.iv1955.epil, 1
  %epil.iter2539.next = add i64 %epil.iter2539, 1 ; 2 uses
  %epil.iter2539.cmp.not = icmp eq i64 %epil.iter2539.next, %xtraiter2538
  br i1 %epil.iter2539.cmp.not, label %._crit_edge1821, label %.lr.ph1820.epil, !llvm.loop !41

._crit_edge1821:                                  ; preds = %._crit_edge1821.loopexit.unr-lcssa, %.lr.ph1820.epil, %.preheader
  %.31529.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.acl, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acw, %.lr.ph1820.epil ]
  %.31491.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.acm, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acx, %.lr.ph1820.epil ] ; 3 uses
  %.31478.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ack, %._crit_edge1821.loopexit.unr-lcssa ], [ %i.acv, %.lr.ph1820.epil ] ; 2 uses
  %i.acy = fcmp oge double %.31491.lcssa, 0.000000e+00
  %i.acz = fneg double %.31491.lcssa
  %i.ada = select i1 %i.acy, double %.31491.lcssa, double %i.acz
  %i.adb = sext i32 %i.yw to i64                  ; 3 uses
  %i.adc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adb
  %i.add = load double, ptr %i.adc, align 8, !tbaa !85 ; 2 uses
  %i.ade = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.adb
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !85 ; 2 uses
  %i.adg = fmul double %i.add, %i.adf
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.adb
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !85 ; 2 uses
  %i.adj = fdiv double %i.adi, %i.adg             ; 3 uses
  %i.adk = fmul double %i.adi, %i.adj             ; 3 uses
  %i.adl = fmul double %i.adj, %i.adj
  %i.adm = fneg double %i.adk
  %i.adn = fsub double %i.adm, %.31478.lcssa
  %i.ado = tail call double @llvm.fmuladd.f64(double %i.adn, double 8.000000e+00, double %i.ada)
  %i.adp = fsub double %i.ado, %i.adk
  %i.adq = fadd double %i.v, %i.adk
  %i.adr = fadd double %.31478.lcssa, %i.adq
  %storemerge1641 = add i32 %storemerge16411833, 1 ; 2 uses
  %exitcond1960.not = icmp eq i32 %storemerge1641, 401
  br i1 %exitcond1960.not, label %._crit_edge1836, label %bb.s, !llvm.loop !42

._crit_edge1836:                                  ; preds = %._crit_edge1821
  store i32 1, ptr %8, align 4, !tbaa !83
  br label %.loopexit1662

bb.x:                                             ; preds = %bb.d
  store i32 1, ptr %i.c, align 4, !tbaa !83
  %i.ads = add nsw i32 %i.w, 1                    ; 2 uses
  %i.adt = sext i32 %i.ads to i64                 ; 5 uses
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adt ; 3 uses
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !85 ; 4 uses
  %i.adw = sext i32 %i.w to i64                   ; 8 uses
  %i.adx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.adw ; 11 uses
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !85 ; 5 uses
  %i.adz = fsub double %i.adv, %i.ady
  %i.aea = fadd double %i.adv, %i.ady
  %i.aeb = fmul double %i.adz, %i.aea             ; 12 uses
  %i.aec = fmul double %i.aeb, 5.000000e-01       ; 3 uses
  %i.aed = fmul double %i.adv, %i.adv
  %i.aee = tail call double @llvm.fmuladd.f64(double %i.ady, double %i.ady, double %i.aed)
  %i.aef = fmul double %i.aee, 5.000000e-01
  %i.aeg = tail call double @llvm.sqrt.f64(double %i.aef) ; 3 uses
  %i.aeh = fadd double %i.ady, %i.aeg
  %i.aei = fdiv double %i.aec, %i.aeh             ; 7 uses
  %.not1665 = icmp slt i32 %i.x, 1
  br i1 %.not1665, label %.preheader1664, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.aej = add nuw i32 %i.x, 1
  %wide.trip.count = zext i32 %i.aej to i64       ; 2 uses
  %i.aek = zext nneg i32 %i.x to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.x, 20
  br i1 %min.iters.check, label %.lr.ph.preheader2458, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ael = shl nuw nsw i64 %wide.trip.count, 3
  %i.aem = add nsw i64 %i.ael, -8                 ; 3 uses
  %i.aen = getelementptr i8, ptr %7, i64 %i.aem   ; 3 uses
  %i.aeo = getelementptr i8, ptr %4, i64 %i.aem   ; 3 uses
  %i.aep = shl nsw i64 %i.adw, 3
  %i.aeq = getelementptr i8, ptr %2, i64 %i.aep   ; 2 uses
  %i.aer = getelementptr i8, ptr %2, i64 %i.aem   ; 2 uses
  %bound0 = icmp ult ptr %7, %i.aeo
  %bound1 = icmp ult ptr %4, %i.aen
  %found.conflict = and i1 %bound0, %bound1
  %bound02114 = icmp ult ptr %7, %i.aeq
  %bound12115 = icmp ult ptr %i.adx, %i.aen
  %found.conflict2116 = and i1 %bound02114, %bound12115
  %conflict.rdx = or i1 %found.conflict, %found.conflict2116
  %bound02117 = icmp ult ptr %7, %i.aer
  %bound12118 = icmp ult ptr %2, %i.aen
  %found.conflict2119 = and i1 %bound02117, %bound12118
  %conflict.rdx2120 = or i1 %conflict.rdx, %found.conflict2119
  %bound02121 = icmp ult ptr %4, %i.aeq
  %bound12122 = icmp ult ptr %i.adx, %i.aeo
  %found.conflict2123 = and i1 %bound02121, %bound12122
  %conflict.rdx2124 = or i1 %conflict.rdx2120, %found.conflict2123
  %bound02125 = icmp ult ptr %4, %i.aer
  %bound12126 = icmp ult ptr %2, %i.aeo
  %found.conflict2127 = and i1 %bound02125, %bound12126
  %conflict.rdx2128 = or i1 %conflict.rdx2124, %found.conflict2127
  br i1 %conflict.rdx2128, label %.lr.ph.preheader2458, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aek, 2147483640             ; 3 uses
  %i.aes = or disjoint i64 %n.vec, 1
  %i.aet = load double, ptr %i.adx, align 8, !tbaa !85, !alias.scope !106
  %broadcast.splatinsert2130 = insertelement <4 x double> poison, double %i.aet, i64 0
  %broadcast.splat2131 = shufflevector <4 x double> %broadcast.splatinsert2130, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aei, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aeu = getelementptr [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aeu, align 8, !tbaa !85, !alias.scope !107
  %wide.load2129 = load <4 x double>, ptr %i.aev, align 8, !tbaa !85, !alias.scope !107
  %i.aew = fadd <4 x double> %wide.load, %broadcast.splat2131
  %i.aex = fadd <4 x double> %wide.load2129, %broadcast.splat2131
  %i.aey = fadd <4 x double> %broadcast.splat, %i.aew
  %i.aez = fadd <4 x double> %broadcast.splat, %i.aex
  %i.afa = getelementptr [8 x i8], ptr %7, i64 %index ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 32
  store <4 x double> %i.aey, ptr %i.afa, align 8, !tbaa !85, !alias.scope !108, !noalias !109
  store <4 x double> %i.aez, ptr %i.afb, align 8, !tbaa !85, !alias.scope !108, !noalias !109
  %wide.load2132 = load <4 x double>, ptr %i.aeu, align 8, !tbaa !85, !alias.scope !107
  %wide.load2133 = load <4 x double>, ptr %i.aev, align 8, !tbaa !85, !alias.scope !107
  %i.afc = fsub <4 x double> %wide.load2132, %broadcast.splat2131
  %i.afd = fsub <4 x double> %wide.load2133, %broadcast.splat2131
  %i.afe = fsub <4 x double> %i.afc, %broadcast.splat
  %i.aff = fsub <4 x double> %i.afd, %broadcast.splat
  %i.afg = getelementptr [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  store <4 x double> %i.afe, ptr %i.afg, align 8, !tbaa !85, !alias.scope !110, !noalias !111
  store <4 x double> %i.aff, ptr %i.afh, align 8, !tbaa !85, !alias.scope !110, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afi = icmp eq i64 %index.next, %n.vec
  br i1 %i.afi, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aek
  br i1 %cmp.n, label %.preheader1664, label %.lr.ph.preheader2458

.lr.ph.preheader2458:                             ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aes, %middle.block ] ; 6 uses
  %i.afj = zext nneg i32 %i.x to i64
  %i.afk = and i32 %i.x, 1
  %lcmp.mod.not = icmp eq i32 %i.afk, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader2458
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph ; 2 uses
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !85
  %i.afn = load double, ptr %i.adx, align 8, !tbaa !85
  %i.afo = fadd double %i.afm, %i.afn
  %i.afp = fadd double %i.aei, %i.afo
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.afp, ptr %i.afq, align 8, !tbaa !85
  %i.afr = load double, ptr %i.afl, align 8, !tbaa !85
  %i.afs = load double, ptr %i.adx, align 8, !tbaa !85
  %i.aft = fsub double %i.afr, %i.afs
  %i.afu = fsub double %i.aft, %i.aei
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double %i.afu, ptr %i.afv, align 8, !tbaa !85
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader2458
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader2458 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.afw = icmp eq i64 %indvars.iv.ph, %i.afj
  br i1 %i.afw, label %.preheader1664, label %.lr.ph

.preheader1664:                                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.x
  %.not1595.not1667 = icmp sgt i32 %i.w, 1
  br i1 %.not1595.not1667, label %.lr.ph1670.preheader, label %._crit_edge

.lr.ph1670.preheader:                             ; preds = %.preheader1664
  %wide.trip.count1876 = zext nneg i32 %i.w to i64
  %i.afx = add nsw i64 %wide.trip.count1876, -1   ; 2 uses
  %xtraiter2459 = and i64 %i.afx, 3               ; 3 uses
  %i.afy = add nsw i32 %i.w, -2
  %i.afz = icmp ult i32 %i.afy, 3
  br i1 %i.afz, label %.lr.ph1670.epil.preheader, label %.lr.ph1670.preheader.new

.lr.ph1670.preheader.new:                         ; preds = %.lr.ph1670.preheader
  %unroll_iter = and i64 %i.afx, -4
  br label %.lr.ph1670

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !85
  %i.agc = load double, ptr %i.adx, align 8, !tbaa !85
  %i.agd = fadd double %i.agb, %i.agc
  %i.age = fadd double %i.aei, %i.agd
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.age, ptr %i.agf, align 8, !tbaa !85
  %i.agg = load double, ptr %i.aga, align 8, !tbaa !85
  %i.agh = load double, ptr %i.adx, align 8, !tbaa !85
  %i.agi = fsub double %i.agg, %i.agh
  %i.agj = fsub double %i.agi, %i.aei
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.agj, ptr %i.agk, align 8, !tbaa !85
  %i.agl = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !85
  %i.agn = load double, ptr %i.adx, align 8, !tbaa !85
  %i.ago = fadd double %i.agm, %i.agn
  %i.agp = fadd double %i.aei, %i.ago
  %i.agq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  store double %i.agp, ptr %i.agq, align 8, !tbaa !85
  %i.agr = load double, ptr %i.agl, align 8, !tbaa !85
  %i.ags = load double, ptr %i.adx, align 8, !tbaa !85
  %i.agt = fsub double %i.agr, %i.ags
  %i.agu = fsub double %i.agt, %i.aei
  %i.agv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.agu, ptr %i.agv, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader1664, label %.lr.ph, !llvm.loop !49

.lr.ph1670:                                       ; preds = %.lr.ph1670, %.lr.ph1670.preheader.new
  %indvars.iv1873 = phi i64 [ 1, %.lr.ph1670.preheader.new ], [ %indvars.iv.next1874.3, %.lr.ph1670 ] ; 9 uses
  %.41669 = phi double [ 0.000000e+00, %.lr.ph1670.preheader.new ], [ %i.aij, %.lr.ph1670 ]
  %niter = phi i64 [ 0, %.lr.ph1670.preheader.new ], [ %niter.next.3, %.lr.ph1670 ]
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1873
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !85 ; 2 uses
  %i.agy = fmul double %i.agx, %i.agx
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1873
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !85
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1873
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !85
  %i.ahd = fmul double %i.aha, %i.ahc
  %i.ahe = fdiv double %i.agy, %i.ahd
  %i.ahf = fadd double %.41669, %i.ahe
  %i.ahg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1873
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !85 ; 2 uses
  %i.ahi = fmul double %i.ahh, %i.ahh
  %i.ahj = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1873
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !85
  %i.ahl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1873
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !85
  %i.ahn = fmul double %i.ahk, %i.ahm
  %i.aho = fdiv double %i.ahi, %i.ahn
  %i.ahp = fadd double %i.ahf, %i.aho
  %indvars.iv.next1874.1 = add nuw nsw i64 %indvars.iv1873, 2 ; 3 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1874.1
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !85 ; 2 uses
  %i.ahs = fmul double %i.ahr, %i.ahr
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1874.1
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !85
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1874.1
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !85
  %i.ahx = fmul double %i.ahu, %i.ahw
  %i.ahy = fdiv double %i.ahs, %i.ahx
  %i.ahz = fadd double %i.ahp, %i.ahy
  %indvars.iv.next1874.2 = add nuw nsw i64 %indvars.iv1873, 3 ; 3 uses
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1874.2
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !85 ; 2 uses
  %i.aic = fmul double %i.aib, %i.aib
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1874.2
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !85
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1874.2
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !85
  %i.aih = fmul double %i.aie, %i.aig
  %i.aii = fdiv double %i.aic, %i.aih
  %i.aij = fadd double %i.ahz, %i.aii             ; 3 uses
  %indvars.iv.next1874.3 = add nuw nsw i64 %indvars.iv1873, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1670, !llvm.loop !50

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1670
  %lcmp.mod2460.not = icmp eq i64 %xtraiter2459, 0
  br i1 %lcmp.mod2460.not, label %._crit_edge, label %.lr.ph1670.epil.preheader

.lr.ph1670.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1670.preheader
  %indvars.iv1873.epil.init = phi i64 [ 1, %.lr.ph1670.preheader ], [ %indvars.iv.next1874.3, %._crit_edge.loopexit.unr-lcssa ]
  %.41669.epil.init = phi double [ 0.000000e+00, %.lr.ph1670.preheader ], [ %i.aij, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2462 = icmp ne i64 %xtraiter2459, 0
  tail call void @llvm.assume(i1 %lcmp.mod2462)
  br label %.lr.ph1670.epil

.lr.ph1670.epil:                                  ; preds = %.lr.ph1670.epil, %.lr.ph1670.epil.preheader
  %indvars.iv1873.epil = phi i64 [ %indvars.iv1873.epil.init, %.lr.ph1670.epil.preheader ], [ %indvars.iv.next1874.epil, %.lr.ph1670.epil ] ; 4 uses
  %.41669.epil = phi double [ %.41669.epil.init, %.lr.ph1670.epil.preheader ], [ %i.ait, %.lr.ph1670.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph1670.epil.preheader ], [ %epil.iter.next, %.lr.ph1670.epil ]
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1873.epil
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !85 ; 2 uses
  %i.aim = fmul double %i.ail, %i.ail
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1873.epil
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !85
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1873.epil
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !85
  %i.air = fmul double %i.aio, %i.aiq
  %i.ais = fdiv double %i.aim, %i.air
  %i.ait = fadd double %.41669.epil, %i.ais       ; 2 uses
  %indvars.iv.next1874.epil = add nuw nsw i64 %indvars.iv1873.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2459
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph1670.epil, !llvm.loop !51

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1670.epil, %.preheader1664
  %.4.lcssa = phi double [ 0.000000e+00, %.preheader1664 ], [ %i.aij, %._crit_edge.loopexit.unr-lcssa ], [ %i.ait, %.lr.ph1670.epil ]
  %i.aiu = add nsw i32 %i.w, 2                    ; 2 uses
  %.not15961671 = icmp slt i32 %i.x, %i.aiu
  br i1 %.not15961671, label %._crit_edge1676, label %.lr.ph1675.preheader

.lr.ph1675.preheader:                             ; preds = %._crit_edge
  %i.aiv = sext i32 %i.x to i64                   ; 4 uses
  %i.aiw = sext i32 %i.aiu to i64                 ; 3 uses
  %i.aix = add nsw i64 %i.aiv, 1
  %i.aiy = sub nsw i64 %i.aix, %i.aiw
  %i.aiz = sub nsw i64 %i.aiv, %i.aiw
  %xtraiter2463 = and i64 %i.aiy, 3               ; 2 uses
  %lcmp.mod2464.not.a = icmp eq i64 %xtraiter2463, 0
  br i1 %lcmp.mod2464.not.a, label %.lr.ph1675.prol.loopexit, label %.lr.ph1675.prol

.lr.ph1675.prol:                                  ; preds = %.lr.ph1675.preheader, %.lr.ph1675.prol
  %indvars.iv1878.prol = phi i64 [ %indvars.iv.next1879.prol, %.lr.ph1675.prol ], [ %i.aiv, %.lr.ph1675.preheader ] ; 4 uses
  %.014831673.prol = phi double [ %i.ajj, %.lr.ph1675.prol ], [ 0.000000e+00, %.lr.ph1675.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1675.prol ], [ 0, %.lr.ph1675.preheader ]
  %i.aja = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv1878.prol
  %i.ajb = load double, ptr %i.aja, align 8, !tbaa !85 ; 2 uses
  %i.ajc = fmul double %i.ajb, %i.ajb
  %i.ajd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1878.prol
  %i.aje = load double, ptr %i.ajd, align 8, !tbaa !85
  %i.ajf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv1878.prol
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !85
  %i.ajh = fmul double %i.aje, %i.ajg
  %i.aji = fdiv double %i.ajc, %i.ajh
  %i.ajj = fadd double %.014831673.prol, %i.aji   ; 3 uses
  %indvars.iv.next1879.prol = add nsw i64 %indvars.iv1878.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2463
  br i1 %prol.iter.cmp.not, label %.lr.ph1675.prol.loopexit, label %.lr.ph1675.prol, !llvm.loop !52

.lr.ph1675.prol.loopexit:                         ; preds = %.lr.ph1675.prol, %.lr.ph1675.preheader
  %indvars.iv1878.unr = phi i64 [ %i.aiv, %.lr.ph1675.preheader ], [ %indvars.iv.next1879.prol, %.lr.ph1675.prol ]
  %.014831673.unr = phi double [ 0.000000e+00, %.lr.ph1675.preheader ], [ %i.ajj, %.lr.ph1675.prol ]
  %.lcssa2456.unr = phi double [ poison, %.lr.ph1675.preheader ], [ %i.ajj, %.lr.ph1675.prol ]
  %i.ajk = icmp ult i64 %i.aiz, 3
  br i1 %i.ajk, label %._crit_edge1676, label %.lr.ph1675

.lr.ph1675:                                       ; preds = %.lr.ph1675.prol.loopexit, %.lr.ph1675
  %indvars.iv1878 = phi i64 [ %indvars.iv.next1879.3, %.lr.ph1675 ], [ %indvars.iv1878.unr, %.lr.ph1675.prol.loopexit ] ; 7 uses
  %.014831673 = phi double [ %i.aky, %.lr.ph1675 ], [ %.014831673.unr, %.lr.ph1675.prol.loopexit ]
  %i.ajl = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv1878
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !85 ; 2 uses
  %i.ajn = fmul double %i.ajm, %i.ajm
  %i.ajo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1878
  %i.ajp = load double, ptr %i.ajo, align 8, !tbaa !85
  %i.ajq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv1878
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !85
  %i.ajs = fmul double %i.ajp, %i.ajr
  %i.ajt = fdiv double %i.ajn, %i.ajs
  %i.aju = fadd double %.014831673, %i.ajt
  %indvars.iv.next1879 = add nsw i64 %indvars.iv1878, -1 ; 3 uses
  %i.ajv = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next1879
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !85 ; 2 uses
  %i.ajx = fmul double %i.ajw, %i.ajw
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next1879
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !85
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next1879
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !85
  %i.akc = fmul double %i.ajz, %i.akb
  %i.akd = fdiv double %i.ajx, %i.akc
  %i.ake = fadd double %i.aju, %i.akd
  %indvars.iv.next1879.1 = add nsw i64 %indvars.iv1878, -2 ; 3 uses
  %i.akf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next1879.1
  %i.akg = load double, ptr %i.akf, align 8, !tbaa !85 ; 2 uses
  %i.akh = fmul double %i.akg, %i.akg
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next1879.1
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !85
  %i.akk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next1879.1
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !85
  %i.akm = fmul double %i.akj, %i.akl
  %i.akn = fdiv double %i.akh, %i.akm
  %i.ako = fadd double %i.ake, %i.akn
  %indvars.iv.next1879.2 = add nsw i64 %indvars.iv1878, -3 ; 4 uses
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next1879.2
  %i.akq = load double, ptr %i.akp, align 8, !tbaa !85 ; 2 uses
  %i.akr = fmul double %i.akq, %i.akq
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next1879.2
  %i.akt = load double, ptr %i.aks, align 8, !tbaa !85
  %i.aku = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next1879.2
  %i.akv = load double, ptr %i.aku, align 8, !tbaa !85
  %i.akw = fmul double %i.akt, %i.akv
  %i.akx = fdiv double %i.akr, %i.akw
  %i.aky = fadd double %i.ako, %i.akx             ; 2 uses
  %indvars.iv.next1879.3 = add nsw i64 %indvars.iv1878, -4
  %.not1596.not.3 = icmp sgt i64 %indvars.iv.next1879.2, %i.aiw
  br i1 %.not1596.not.3, label %.lr.ph1675, label %._crit_edge1676, !llvm.loop !53

._crit_edge1676:                                  ; preds = %.lr.ph1675.prol.loopexit, %.lr.ph1675, %._crit_edge
  %.01483.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %.lcssa2456.unr, %.lr.ph1675.prol.loopexit ], [ %i.aky, %.lr.ph1675 ]
  %i.akz = fadd double %i.v, %.4.lcssa
  %i.ala = fadd double %i.akz, %.01483.lcssa      ; 10 uses
  store double %i.ala, ptr %i.a, align 8, !tbaa !85
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.adw
  %i.alc = load double, ptr %i.alb, align 8, !tbaa !85 ; 4 uses
  %i.ald = fmul double %i.alc, %i.alc             ; 3 uses
  %i.ale = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adw
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !85
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.adw
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !85
  %i.ali = fmul double %i.alf, %i.alh
  %i.alj = fdiv double %i.ald, %i.ali
  %i.alk = fadd double %i.ala, %i.alj
  %i.all = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.adt ; 9 uses
  %i.alm = load double, ptr %i.all, align 8, !tbaa !85 ; 6 uses
  %i.aln = fmul double %i.alm, %i.alm             ; 2 uses
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adt ; 5 uses
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !85
  %i.alq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.adt ; 5 uses
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !85
  %i.als = fmul double %i.alp, %i.alr
  %i.alt = fdiv double %i.aln, %i.als
  %i.alu = fadd double %i.alk, %i.alt
  %i.alv = fcmp ule double %i.alu, 0.000000e+00   ; 5 uses
  br i1 %i.alv, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %._crit_edge1676
  store i32 1, ptr %i.f, align 4, !tbaa !83
  %i.alw = load double, ptr %i.adx, align 8, !tbaa !85 ; 4 uses
  %i.alx = fadd double %i.aeg, %i.alw
  %i.aly = fdiv double %i.aec, %i.alx             ; 5 uses
  %i.alz = tail call double @llvm.fmuladd.f64(double %i.ala, double %i.aeb, double %i.ald)
  %i.ama = tail call double @llvm.fmuladd.f64(double %i.alm, double %i.alm, double %i.alz) ; 7 uses
  %i.amb = fmul double %i.aeb, %i.ald             ; 3 uses
  %i.amc = fcmp ogt double %i.ama, 0.000000e+00
  br i1 %i.amc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.amd = fmul double %i.amb, 2.000000e+00
  %i.ame = fmul double %i.amb, 4.000000e+00
  %i.amf = fneg double %i.ala
  %i.amg = fmul double %i.ame, %i.amf
  %i.amh = tail call double @llvm.fmuladd.f64(double %i.ama, double %i.ama, double %i.amg) ; 3 uses
  %i.ami = fcmp oge double %i.amh, 0.000000e+00
  %i.amj = fneg double %i.amh
  %i.amk = select i1 %i.ami, double %i.amh, double %i.amj
  %i.aml = tail call double @sqrt(double noundef %i.amk) #6
  %i.amm = fadd double %i.ama, %i.aml
  %i.amn = fdiv double %i.amd, %i.amm
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.amo = fmul double %i.amb, 4.000000e+00
  %i.amp = fneg double %i.ala
  %i.amq = fmul double %i.amo, %i.amp
  %i.amr = tail call double @llvm.fmuladd.f64(double %i.ama, double %i.ama, double %i.amq) ; 3 uses
  %i.ams = fcmp oge double %i.amr, 0.000000e+00
  %i.amt = fneg double %i.amr
  %i.amu = select i1 %i.ams, double %i.amr, double %i.amt
  %i.amv = tail call double @sqrt(double noundef %i.amu) #6
  %i.amw = fsub double %i.ama, %i.amv
  %i.amx = fmul double %i.ala, 2.000000e+00
  %i.amy = fdiv double %i.amw, %i.amx
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2 = phi double [ %i.amn, %bb.z ], [ %i.amy, %bb.aa ] ; 2 uses
  %i.amz = load i32, ptr %1, align 4, !tbaa !83
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ana
  %i.anc = load double, ptr %i.anb, align 8, !tbaa !85 ; 3 uses
  %i.and = tail call double @llvm.fmuladd.f64(double %i.anc, double %i.anc, double %.2)
  %i.ane = tail call double @sqrt(double noundef %i.and) #6
  %i.anf = fadd double %i.anc, %i.ane
  %i.ang = fdiv double %.2, %i.anf                ; 2 uses
  %i.anh = tail call double @sqrt(double noundef %i.t) #6 ; 2 uses
  %i.ani = load i32, ptr %1, align 4, !tbaa !83
  %i.anj = sext i32 %i.ani to i64                 ; 2 uses
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.anj
  %i.anl = load double, ptr %i.ank, align 8, !tbaa !85 ; 3 uses
  %i.anm = load double, ptr %i.adu, align 8, !tbaa !85
  %i.ann = fmul double %i.anh, %i.anm
  %i.ano = fcmp ugt double %i.anl, %i.ann
  br i1 %i.ano, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.anp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.anj
  %i.anq = load double, ptr %i.anp, align 8, !tbaa !85
  %i.anr = tail call double @llvm.fabs.f64(double %i.anq)
  %i.ans = fcmp ole double %i.anr, %i.anh
  %i.ant = fcmp ogt double %i.anl, 0.000000e+00
  %or.cond = and i1 %i.ant, %i.ans
  br i1 %or.cond, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.anu = fmul nnan double %i.anl, 1.000000e+01  ; 2 uses
  %i.anv = fcmp ole double %i.anu, %i.aly
  %i.anw = select i1 %i.anv, double %i.anu, double %i.aly
  br label %bb.ai

bb.ae:                                            ; preds = %._crit_edge1676
  store i32 0, ptr %i.f, align 4, !tbaa !83
  %i.anx = fneg double %i.aec
  %i.any = load double, ptr %i.adu, align 8, !tbaa !85 ; 5 uses
  %i.anz = fadd double %i.aeg, %i.any
  %i.aoa = fdiv double %i.anx, %i.anz
  %i.aob = fneg double %i.alc
  %i.aoc = fmul double %i.alc, %i.aob
  %i.aod = tail call double @llvm.fmuladd.f64(double %i.ala, double %i.aeb, double %i.aoc)
  %i.aoe = fneg double %i.alm
  %i.aof = tail call double @llvm.fmuladd.f64(double %i.aoe, double %i.alm, double %i.aod) ; 7 uses
  %i.aog = fmul double %i.aeb, %i.aln             ; 3 uses
  %i.aoh = fcmp olt double %i.aof, 0.000000e+00
  br i1 %i.aoh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.aoi = fmul double %i.aog, 2.000000e+00
  %i.aoj = fmul double %i.aog, 4.000000e+00
  %i.aok = fmul double %i.ala, %i.aoj
  %i.aol = tail call double @llvm.fmuladd.f64(double %i.aof, double %i.aof, double %i.aok) ; 3 uses
  %i.aom = fcmp oge double %i.aol, 0.000000e+00
  %i.aon = fneg double %i.aol
  %i.aoo = select i1 %i.aom, double %i.aol, double %i.aon
  %i.aop = tail call double @sqrt(double noundef %i.aoo) #6
  %i.aoq = fsub double %i.aof, %i.aop
  %i.aor = fdiv double %i.aoi, %i.aoq
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.aos = fmul double %i.aog, 4.000000e+00
  %i.aot = fmul double %i.ala, %i.aos
  %i.aou = tail call double @llvm.fmuladd.f64(double %i.aof, double %i.aof, double %i.aot) ; 3 uses
  %i.aov = fcmp oge double %i.aou, 0.000000e+00
  %i.aow = fneg double %i.aou
  %i.aox = select i1 %i.aov, double %i.aou, double %i.aow
  %i.aoy = tail call double @sqrt(double noundef %i.aox) #6
  %i.aoz = fadd double %i.aof, %i.aoy
  %i.apa = fneg double %i.aoz
  %i.apb = fmul double %i.ala, 2.000000e+00
  %i.apc = fdiv double %i.apa, %i.apb
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3 = phi double [ %i.aor, %bb.af ], [ %i.apc, %bb.ag ] ; 2 uses
  %i.apd = tail call double @llvm.fmuladd.f64(double %i.any, double %i.any, double %.3) ; 3 uses
  %i.ape = fcmp oge double %i.apd, 0.000000e+00
  %i.apf = fneg double %i.apd
  %i.apg = select i1 %i.ape, double %i.apd, double %i.apf
  %i.aph = tail call double @sqrt(double noundef %i.apg) #6
  %i.api = fadd double %i.any, %i.aph
  %i.apj = fdiv double %.3, %i.api
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ah
  %i.apk = phi double [ %i.alw, %bb.ab ], [ %i.alw, %bb.ac ], [ %i.alw, %bb.ad ], [ %i.any, %bb.ah ]
  %.pre-phi = phi i64 [ %i.adw, %bb.ab ], [ %i.adw, %bb.ac ], [ %i.adw, %bb.ad ], [ %i.adt, %bb.ah ] ; 8 uses
  %.01538 = phi double [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ad ], [ %i.aoa, %bb.ah ] ; 2 uses
  %.01522 = phi double [ %i.aly, %bb.ab ], [ %i.aly, %bb.ac ], [ %i.aly, %bb.ad ], [ 0.000000e+00, %bb.ah ] ; 2 uses
  %.01498 = phi i32 [ %i.w, %bb.ab ], [ %i.w, %bb.ac ], [ %i.w, %bb.ad ], [ %i.ads, %bb.ah ] ; 14 uses
  %.21481 = phi double [ %i.ang, %bb.ab ], [ %i.ang, %bb.ac ], [ %i.anw, %bb.ad ], [ %i.apj, %bb.ah ] ; 18 uses
  %.not1611 = phi i1 [ true, %bb.ab ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ah ] ; 2 uses
  %i.apl = getelementptr [8 x i8], ptr %i.k, i64 %.pre-phi ; 9 uses
  %i.apm = fadd double %.21481, %i.apk
  store double %i.apm, ptr %6, align 8, !tbaa !85
  %i.apn = load i32, ptr %0, align 4, !tbaa !83   ; 9 uses
  %.not15971678 = icmp slt i32 %i.apn, 1
  br i1 %.not15971678, label %._crit_edge1682, label %.lr.ph1681.preheader

.lr.ph1681.preheader:                             ; preds = %bb.ai
  %i.apo = add nuw i32 %i.apn, 1
  %wide.trip.count1884 = zext i32 %i.apo to i64   ; 2 uses
  %i.app = zext nneg i32 %i.apn to i64            ; 2 uses
  %min.iters.check2158 = icmp ult i32 %i.apn, 20
  br i1 %min.iters.check2158, label %.lr.ph1681.preheader2455, label %vector.memcheck2159

vector.memcheck2159:                              ; preds = %.lr.ph1681.preheader
  %i.apq = shl nuw nsw i64 %wide.trip.count1884, 3
  %i.apr = add nsw i64 %i.apq, -8                 ; 3 uses
  %i.aps = getelementptr i8, ptr %7, i64 %i.apr   ; 3 uses
  %i.apt = getelementptr i8, ptr %4, i64 %i.apr   ; 3 uses
  %i.apu = shl nsw i64 %.pre-phi, 3
  %i.apv = getelementptr i8, ptr %2, i64 %i.apu   ; 2 uses
  %i.apw = getelementptr i8, ptr %2, i64 %i.apr   ; 2 uses
  %bound02160 = icmp ult ptr %7, %i.apt
  %bound12161 = icmp ult ptr %4, %i.aps
  %found.conflict2162 = and i1 %bound02160, %bound12161
  %bound02163 = icmp ult ptr %7, %i.apv
  %bound12164 = icmp ult ptr %i.apl, %i.aps
  %found.conflict2165 = and i1 %bound02163, %bound12164
  %conflict.rdx2166 = or i1 %found.conflict2162, %found.conflict2165
  %bound02167 = icmp ult ptr %7, %i.apw
  %bound12168 = icmp ult ptr %2, %i.aps
  %found.conflict2169 = and i1 %bound02167, %bound12168
  %conflict.rdx2170 = or i1 %conflict.rdx2166, %found.conflict2169
  %bound02171 = icmp ult ptr %4, %i.apv
  %bound12172 = icmp ult ptr %i.apl, %i.apt
  %found.conflict2173 = and i1 %bound02171, %bound12172
  %conflict.rdx2174 = or i1 %conflict.rdx2170, %found.conflict2173
  %bound02175 = icmp ult ptr %4, %i.apw
  %bound12176 = icmp ult ptr %2, %i.apt
  %found.conflict2177 = and i1 %bound02175, %bound12176
  %conflict.rdx2178 = or i1 %conflict.rdx2174, %found.conflict2177
  br i1 %conflict.rdx2178, label %.lr.ph1681.preheader2455, label %vector.ph2179

vector.ph2179:                                    ; preds = %vector.memcheck2159
  %n.vec2180 = and i64 %i.app, 2147483640         ; 3 uses
  %i.apx = or disjoint i64 %n.vec2180, 1
  %i.apy = load double, ptr %i.apl, align 8, !tbaa !85, !alias.scope !112
  %broadcast.splatinsert2187 = insertelement <4 x double> poison, double %i.apy, i64 0
  %broadcast.splat2188 = shufflevector <4 x double> %broadcast.splatinsert2187, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2181 = insertelement <4 x double> poison, double %.21481, i64 0
  %broadcast.splat2182 = shufflevector <4 x double> %broadcast.splatinsert2181, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2183

vector.body2183:                                  ; preds = %vector.body2183, %vector.ph2179
  %index2184 = phi i64 [ 0, %vector.ph2179 ], [ %index.next2191, %vector.body2183 ] ; 4 uses
  %i.apz = getelementptr [8 x i8], ptr %2, i64 %index2184 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 32 ; 2 uses
  %wide.load2185 = load <4 x double>, ptr %i.apz, align 8, !tbaa !85, !alias.scope !113
  %wide.load2186 = load <4 x double>, ptr %i.aqa, align 8, !tbaa !85, !alias.scope !113
  %i.aqb = fadd <4 x double> %wide.load2185, %broadcast.splat2188
  %i.aqc = fadd <4 x double> %wide.load2186, %broadcast.splat2188
  %i.aqd = fadd <4 x double> %broadcast.splat2182, %i.aqb
  %i.aqe = fadd <4 x double> %broadcast.splat2182, %i.aqc
  %i.aqf = getelementptr [8 x i8], ptr %7, i64 %index2184 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 32
  store <4 x double> %i.aqd, ptr %i.aqf, align 8, !tbaa !85, !alias.scope !114, !noalias !115
  store <4 x double> %i.aqe, ptr %i.aqg, align 8, !tbaa !85, !alias.scope !114, !noalias !115
  %wide.load2189 = load <4 x double>, ptr %i.apz, align 8, !tbaa !85, !alias.scope !113
  %wide.load2190 = load <4 x double>, ptr %i.aqa, align 8, !tbaa !85, !alias.scope !113
  %i.aqh = fsub <4 x double> %wide.load2189, %broadcast.splat2188
  %i.aqi = fsub <4 x double> %wide.load2190, %broadcast.splat2188
  %i.aqj = fsub <4 x double> %i.aqh, %broadcast.splat2182
  %i.aqk = fsub <4 x double> %i.aqi, %broadcast.splat2182
  %i.aql = getelementptr [8 x i8], ptr %4, i64 %index2184 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 32
  store <4 x double> %i.aqj, ptr %i.aql, align 8, !tbaa !85, !alias.scope !116, !noalias !117
  store <4 x double> %i.aqk, ptr %i.aqm, align 8, !tbaa !85, !alias.scope !116, !noalias !117
  %index.next2191 = add nuw i64 %index2184, 8     ; 2 uses
  %i.aqn = icmp eq i64 %index.next2191, %n.vec2180
  br i1 %i.aqn, label %middle.block2192, label %vector.body2183, !llvm.loop !59

middle.block2192:                                 ; preds = %vector.body2183
  %cmp.n2193 = icmp eq i64 %n.vec2180, %i.app
  br i1 %cmp.n2193, label %._crit_edge1682, label %.lr.ph1681.preheader2455

.lr.ph1681.preheader2455:                         ; preds = %vector.memcheck2159, %.lr.ph1681.preheader, %middle.block2192
  %indvars.iv1881.ph = phi i64 [ 1, %vector.memcheck2159 ], [ 1, %.lr.ph1681.preheader ], [ %i.apx, %middle.block2192 ] ; 6 uses
  %i.aqo = zext nneg i32 %i.apn to i64
  %i.aqp = and i32 %i.apn, 1
  %lcmp.mod2466.not = icmp eq i32 %i.aqp, 0
  br i1 %lcmp.mod2466.not, label %.lr.ph1681.prol.loopexit, label %.lr.ph1681.prol

.lr.ph1681.prol:                                  ; preds = %.lr.ph1681.preheader2455
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1881.ph ; 2 uses
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !85
  %i.aqs = load double, ptr %i.apl, align 8, !tbaa !85
  %i.aqt = fadd double %i.aqr, %i.aqs
  %i.aqu = fadd double %.21481, %i.aqt
  %i.aqv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1881.ph
  store double %i.aqu, ptr %i.aqv, align 8, !tbaa !85
  %i.aqw = load double, ptr %i.aqq, align 8, !tbaa !85
  %i.aqx = load double, ptr %i.apl, align 8, !tbaa !85
  %i.aqy = fsub double %i.aqw, %i.aqx
  %i.aqz = fsub double %i.aqy, %.21481
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1881.ph
  store double %i.aqz, ptr %i.ara, align 8, !tbaa !85
  %indvars.iv.next1882.prol = add nuw nsw i64 %indvars.iv1881.ph, 1
  br label %.lr.ph1681.prol.loopexit

.lr.ph1681.prol.loopexit:                         ; preds = %.lr.ph1681.prol, %.lr.ph1681.preheader2455
  %indvars.iv1881.unr = phi i64 [ %indvars.iv1881.ph, %.lr.ph1681.preheader2455 ], [ %indvars.iv.next1882.prol, %.lr.ph1681.prol ]
  %i.arb = icmp eq i64 %indvars.iv1881.ph, %i.aqo
  br i1 %i.arb, label %._crit_edge1682, label %.lr.ph1681

.lr.ph1681:                                       ; preds = %.lr.ph1681.prol.loopexit, %.lr.ph1681
  %indvars.iv1881 = phi i64 [ %indvars.iv.next1882.1, %.lr.ph1681 ], [ %indvars.iv1881.unr, %.lr.ph1681.prol.loopexit ] ; 7 uses
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv1881 ; 2 uses
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !85
  %i.are = load double, ptr %i.apl, align 8, !tbaa !85
  %i.arf = fadd double %i.ard, %i.are
  %i.arg = fadd double %.21481, %i.arf
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1881
  store double %i.arg, ptr %i.arh, align 8, !tbaa !85
  %i.ari = load double, ptr %i.arc, align 8, !tbaa !85
  %i.arj = load double, ptr %i.apl, align 8, !tbaa !85
  %i.ark = fsub double %i.ari, %i.arj
  %i.arl = fsub double %i.ark, %.21481
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1881
  store double %i.arl, ptr %i.arm, align 8, !tbaa !85
  %i.arn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1881 ; 2 uses
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !85
  %i.arp = load double, ptr %i.apl, align 8, !tbaa !85
  %i.arq = fadd double %i.aro, %i.arp
  %i.arr = fadd double %.21481, %i.arq
  %i.ars = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1881
  store double %i.arr, ptr %i.ars, align 8, !tbaa !85
  %i.art = load double, ptr %i.arn, align 8, !tbaa !85
  %i.aru = load double, ptr %i.apl, align 8, !tbaa !85
  %i.arv = fsub double %i.art, %i.aru
  %i.arw = fsub double %i.arv, %.21481
  %i.arx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1881
  store double %i.arw, ptr %i.arx, align 8, !tbaa !85
  %indvars.iv.next1882.1 = add nuw nsw i64 %indvars.iv1881, 2 ; 2 uses
  %exitcond1885.not.1 = icmp eq i64 %indvars.iv.next1882.1, %wide.trip.count1884
  br i1 %exitcond1885.not.1, label %._crit_edge1682, label %.lr.ph1681, !llvm.loop !60

._crit_edge1682:                                  ; preds = %.lr.ph1681.prol.loopexit, %.lr.ph1681, %middle.block2192, %bb.ai
  %i.ary = add nsw i32 %.01498, -1                ; 2 uses
  %i.arz = add nsw i32 %.01498, 1                 ; 2 uses
  %.not1598.not1683 = icmp sgt i32 %.01498, 1     ; 3 uses
  br i1 %.not1598.not1683, label %.lr.ph1689.preheader, label %._crit_edge1690

.lr.ph1689.preheader:                             ; preds = %._crit_edge1682
  %wide.trip.count1889 = zext nneg i32 %.01498 to i64
  %i.asa = add nsw i64 %wide.trip.count1889, -1   ; 2 uses
  %xtraiter2468 = and i64 %i.asa, 3               ; 3 uses
  %i.asb = add nsw i32 %.01498, -2
  %i.asc = icmp ult i32 %i.asb, 3
  br i1 %i.asc, label %.lr.ph1689.epil.preheader, label %.lr.ph1689.preheader.new

.lr.ph1689.preheader.new:                         ; preds = %.lr.ph1689.preheader
  %unroll_iter2475 = and i64 %i.asa, -4
  br label %.lr.ph1689

.lr.ph1689:                                       ; preds = %.lr.ph1689, %.lr.ph1689.preheader.new
  %indvars.iv1886 = phi i64 [ 1, %.lr.ph1689.preheader.new ], [ %indvars.iv.next1887.3, %.lr.ph1689 ] ; 9 uses
  %.51687 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.ats, %.lr.ph1689 ]
  %.414921686 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.atu, %.lr.ph1689 ]
  %.415301684 = phi double [ 0.000000e+00, %.lr.ph1689.preheader.new ], [ %i.att, %.lr.ph1689 ]
  %niter2476 = phi i64 [ 0, %.lr.ph1689.preheader.new ], [ %niter2476.next.3, %.lr.ph1689 ]
  %i.asd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1886
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !85 ; 2 uses
  %i.asf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1886
  %i.asg = load double, ptr %i.asf, align 8, !tbaa !85
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1886
  %i.asi = load double, ptr %i.ash, align 8, !tbaa !85
  %i.asj = fmul double %i.asg, %i.asi
  %i.ask = fdiv double %i.ase, %i.asj             ; 3 uses
  %i.asl = tail call double @llvm.fmuladd.f64(double %i.ase, double %i.ask, double %.51687) ; 2 uses
  %i.asm = tail call double @llvm.fmuladd.f64(double %i.ask, double %i.ask, double %.415301684)
  %i.asn = fadd double %.414921686, %i.asl
  %i.aso = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1886
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !85 ; 2 uses
  %i.asq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1886
  %i.asr = load double, ptr %i.asq, align 8, !tbaa !85
  %i.ass = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1886
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !85
  %i.asu = fmul double %i.asr, %i.ast
  %i.asv = fdiv double %i.asp, %i.asu             ; 3 uses
  %i.asw = tail call double @llvm.fmuladd.f64(double %i.asp, double %i.asv, double %i.asl) ; 2 uses
  %i.asx = tail call double @llvm.fmuladd.f64(double %i.asv, double %i.asv, double %i.asm)
  %i.asy = fadd double %i.asn, %i.asw
  %indvars.iv.next1887.1 = add nuw nsw i64 %indvars.iv1886, 2 ; 3 uses
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1887.1
  %i.ata = load double, ptr %i.asz, align 8, !tbaa !85 ; 2 uses
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1887.1
  %i.atc = load double, ptr %i.atb, align 8, !tbaa !85
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1887.1
end_hunk_1
begin_hunk_2_@dlasd4_:bb.a
  %i.bxj = load double, ptr %i.bxi, align 8, !tbaa !85
  %i.bxk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1912
  %i.bxl = load double, ptr %i.bxk, align 8, !tbaa !85
  %i.bxm = fmul double %i.bxj, %i.bxl
  %i.bxn = fdiv double %i.bxh, %i.bxm             ; 3 uses
  %i.bxo = call double @llvm.fmuladd.f64(double %i.bxh, double %i.bxn, double %.81738) ; 2 uses
  %i.bxp = call double @llvm.fmuladd.f64(double %i.bxn, double %i.bxn, double %.1115371735)
  %i.bxq = fadd double %.91737, %i.bxo
  %i.bxr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv1912
  %i.bxs = load double, ptr %i.bxr, align 8, !tbaa !85 ; 2 uses
  %i.bxt = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1912
  %i.bxu = load double, ptr %i.bxt, align 8, !tbaa !85
  %i.bxv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv1912
  %i.bxw = load double, ptr %i.bxv, align 8, !tbaa !85
  %i.bxx = fmul double %i.bxu, %i.bxw
  %i.bxy = fdiv double %i.bxs, %i.bxx             ; 3 uses
  %i.bxz = call double @llvm.fmuladd.f64(double %i.bxs, double %i.bxy, double %i.bxo) ; 2 uses
  %i.bya = call double @llvm.fmuladd.f64(double %i.bxy, double %i.bxy, double %i.bxp)
  %i.byb = fadd double %i.bxq, %i.bxz
  %indvars.iv.next1913.1 = add nuw nsw i64 %indvars.iv1912, 2 ; 3 uses
  %i.byc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1913.1
  %i.byd = load double, ptr %i.byc, align 8, !tbaa !85 ; 2 uses
  %i.bye = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1913.1
  %i.byf = load double, ptr %i.bye, align 8, !tbaa !85
  %i.byg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1913.1
  %i.byh = load double, ptr %i.byg, align 8, !tbaa !85
  %i.byi = fmul double %i.byf, %i.byh
  %i.byj = fdiv double %i.byd, %i.byi             ; 3 uses
  %i.byk = call double @llvm.fmuladd.f64(double %i.byd, double %i.byj, double %i.bxz) ; 2 uses
  %i.byl = call double @llvm.fmuladd.f64(double %i.byj, double %i.byj, double %i.bya)
  %i.bym = fadd double %i.byb, %i.byk
  %indvars.iv.next1913.2 = add nuw nsw i64 %indvars.iv1912, 3 ; 3 uses
  %i.byn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next1913.2
  %i.byo = load double, ptr %i.byn, align 8, !tbaa !85 ; 2 uses
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next1913.2
  %i.byq = load double, ptr %i.byp, align 8, !tbaa !85
  %i.byr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next1913.2
  %i.bys = load double, ptr %i.byr, align 8, !tbaa !85
  %i.byt = fmul double %i.byq, %i.bys
  %i.byu = fdiv double %i.byo, %i.byt             ; 3 uses
  %i.byv = call double @llvm.fmuladd.f64(double %i.byo, double %i.byu, double %i.byk) ; 4 uses
  %i.byw = call double @llvm.fmuladd.f64(double %i.byu, double %i.byu, double %i.byl) ; 3 uses
  %i.byx = fadd double %i.bym, %i.byv             ; 3 uses
  %indvars.iv.next1913.3 = add nuw nsw i64 %indvars.iv1912, 4 ; 2 uses
  %niter2500.next.3 = add i64 %niter2500, 4       ; 2 uses
  %niter2500.ncmp.3 = icmp eq i64 %niter2500.next.3, %unroll_iter2499
  br i1 %niter2500.ncmp.3, label %._crit_edge1740.loopexit.unr-lcssa, label %.lr.ph1739, !llvm.loop !79

._crit_edge1740.loopexit.unr-lcssa:               ; preds = %.lr.ph1739
  br i1 %lcmp.mod2494.not, label %._crit_edge1740, label %.lr.ph1739.epil.preheader

.lr.ph1739.epil.preheader:                        ; preds = %._crit_edge1740.loopexit.unr-lcssa, %.lr.ph1739.preheader
  %indvars.iv1912.epil.init = phi i64 [ 1, %.lr.ph1739.preheader ], [ %indvars.iv.next1913.3, %._crit_edge1740.loopexit.unr-lcssa ]
  %.81738.epil.init = phi double [ 0.000000e+00, %.lr.ph1739.preheader ], [ %i.byv, %._crit_edge1740.loopexit.unr-lcssa ]
  %.91737.epil.init = phi double [ 0.000000e+00, %.lr.ph1739.preheader ], [ %i.byx, %._crit_edge1740.loopexit.unr-lcssa ]
  %.1115371735.epil.init = phi double [ 0.000000e+00, %.lr.ph1739.preheader ], [ %i.byw, %._crit_edge1740.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2498)
  br label %.lr.ph1739.epil

.lr.ph1739.epil:                                  ; preds = %.lr.ph1739.epil, %.lr.ph1739.epil.preheader
  %indvars.iv1912.epil = phi i64 [ %indvars.iv.next1913.epil, %.lr.ph1739.epil ], [ %indvars.iv1912.epil.init, %.lr.ph1739.epil.preheader ] ; 4 uses
  %.81738.epil = phi double [ %i.bzg, %.lr.ph1739.epil ], [ %.81738.epil.init, %.lr.ph1739.epil.preheader ]
  %.91737.epil = phi double [ %i.bzi, %.lr.ph1739.epil ], [ %.91737.epil.init, %.lr.ph1739.epil.preheader ]
  %.1115371735.epil = phi double [ %i.bzh, %.lr.ph1739.epil ], [ %.1115371735.epil.init, %.lr.ph1739.epil.preheader ]
  %epil.iter2493 = phi i64 [ %epil.iter2493.next, %.lr.ph1739.epil ], [ 0, %.lr.ph1739.epil.preheader ]
  %i.byy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv1912.epil
  %i.byz = load double, ptr %i.byy, align 8, !tbaa !85 ; 2 uses
  %i.bza = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1912.epil
  %i.bzb = load double, ptr %i.bza, align 8, !tbaa !85
  %i.bzc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv1912.epil
  %i.bzd = load double, ptr %i.bzc, align 8, !tbaa !85
  %i.bze = fmul double %i.bzb, %i.bzd
  %i.bzf = fdiv double %i.byz, %i.bze             ; 3 uses
  %i.bzg = call double @llvm.fmuladd.f64(double %i.byz, double %i.bzf, double %.81738.epil) ; 3 uses
  %i.bzh = call double @llvm.fmuladd.f64(double %i.bzf, double %i.bzf, double %.1115371735.epil) ; 2 uses
  %i.bzi = fadd double %.91737.epil, %i.bzg       ; 2 uses
  %indvars.iv.next1913.epil = add nuw nsw i64 %indvars.iv1912.epil, 1
  %epil.iter2493.next = add i64 %epil.iter2493, 1 ; 2 uses
  %epil.iter2493.cmp.not = icmp eq i64 %epil.iter2493.next, %xtraiter2492
  br i1 %epil.iter2493.cmp.not, label %._crit_edge1740, label %.lr.ph1739.epil, !llvm.loop !80

._crit_edge1740:                                  ; preds = %._crit_edge1740.loopexit.unr-lcssa, %.lr.ph1739.epil, %.preheader1661
  %.111537.lcssa = phi double [ 0.000000e+00, %.preheader1661 ], [ %i.byw, %._crit_edge1740.loopexit.unr-lcssa ], [ %i.bzh, %.lr.ph1739.epil ] ; 2 uses
  %.9.lcssa = phi double [ 0.000000e+00, %.preheader1661 ], [ %i.byx, %._crit_edge1740.loopexit.unr-lcssa ], [ %i.bzi, %.lr.ph1739.epil ] ; 3 uses
  %.8.lcssa = phi double [ 0.000000e+00, %.preheader1661 ], [ %i.byv, %._crit_edge1740.loopexit.unr-lcssa ], [ %i.bzg, %.lr.ph1739.epil ] ; 3 uses
  %i.bzj = fcmp oge double %.9.lcssa, 0.000000e+00
  %i.bzk = fneg double %.9.lcssa
  %i.bzl = select i1 %i.bzj, double %.9.lcssa, double %i.bzk ; 2 uses
  %.not1633.not1744 = icmp sgt i32 %i.bvh, %.01498
  br i1 %.not1633.not1744, label %.lr.ph1750.preheader, label %._crit_edge1751

.lr.ph1750.preheader:                             ; preds = %._crit_edge1740
  %i.bzm = sext i32 %i.bvh to i64
  br label %.lr.ph1750

.lr.ph1750:                                       ; preds = %.lr.ph1750.preheader, %.lr.ph1750
  %indvars.iv1917 = phi i64 [ %i.bzm, %.lr.ph1750.preheader ], [ %indvars.iv.next1918, %.lr.ph1750 ] ; 4 uses
  %.414871748 = phi double [ 0.000000e+00, %.lr.ph1750.preheader ], [ %i.bzv, %.lr.ph1750 ]
  %.101747 = phi double [ %i.bzl, %.lr.ph1750.preheader ], [ %i.bzx, %.lr.ph1750 ]
  %.815501745 = phi double [ 0.000000e+00, %.lr.ph1750.preheader ], [ %i.bzw, %.lr.ph1750 ]
  %i.bzn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv1917
  %i.bzo = load double, ptr %i.bzn, align 8, !tbaa !85 ; 2 uses
  %i.bzp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv1917
  %i.bzq = load double, ptr %i.bzp, align 8, !tbaa !85
  %i.bzr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv1917
  %i.bzs = load double, ptr %i.bzr, align 8, !tbaa !85
  %i.bzt = fmul double %i.bzq, %i.bzs
  %i.bzu = fdiv double %i.bzo, %i.bzt             ; 3 uses
  %i.bzv = call double @llvm.fmuladd.f64(double %i.bzo, double %i.bzu, double %.414871748) ; 3 uses
  %i.bzw = call double @llvm.fmuladd.f64(double %i.bzu, double %i.bzu, double %.815501745) ; 2 uses
  %i.bzx = fadd double %.101747, %i.bzv           ; 2 uses
  %indvars.iv.next1918 = add nsw i64 %indvars.iv1917, -1 ; 2 uses
  %.not1633.not = icmp sgt i64 %indvars.iv.next1918, %.pre-phi
  br i1 %.not1633.not, label %.lr.ph1750, label %._crit_edge1751, !llvm.loop !81

._crit_edge1751:                                  ; preds = %.lr.ph1750, %._crit_edge1740
  %.81550.lcssa = phi double [ 0.000000e+00, %._crit_edge1740 ], [ %i.bzw, %.lr.ph1750 ] ; 2 uses
  %.10.lcssa = phi double [ %i.bzl, %._crit_edge1740 ], [ %i.bzx, %.lr.ph1750 ]
  %.41487.lcssa = phi double [ 0.000000e+00, %._crit_edge1740 ], [ %i.bzv, %.lr.ph1750 ] ; 3 uses
  %i.bzy = load double, ptr %i.auz, align 8, !tbaa !85 ; 2 uses
  %i.bzz = load double, ptr %i.avb, align 8, !tbaa !85 ; 2 uses
  %i.caa = fmul double %i.bzy, %i.bzz
  %i.cab = load double, ptr %i.aux, align 8, !tbaa !85 ; 3 uses
  %i.cac = fdiv double %i.cab, %i.caa             ; 3 uses
  %i.cad = fadd double %.111537.lcssa, %.81550.lcssa
  %i.cae = call double @llvm.fmuladd.f64(double %i.cac, double %i.cac, double %i.cad)
  %i.caf = fmul double %i.cab, %i.cac             ; 4 uses
  %i.cag = fadd double %i.v, %.41487.lcssa
  %i.cah = fadd double %.8.lcssa, %i.cag
  %i.cai = fadd double %i.cah, %i.caf             ; 4 uses
  store double %i.cai, ptr %i.b, align 8, !tbaa !85
  %i.caj = fsub double %.41487.lcssa, %.8.lcssa
  %i.cak = call double @llvm.fmuladd.f64(double %i.caj, double 8.000000e+00, double %.10.lcssa)
  %i.cal = call double @llvm.fmuladd.f64(double %i.v, double 2.000000e+00, double %i.cak)
  %i.cam = fcmp oge double %i.caf, 0.000000e+00
  %i.can = fneg double %i.caf
  %i.cao = select i1 %i.cam, double %i.caf, double %i.can
  %i.cap = call double @llvm.fmuladd.f64(double %i.cao, double 3.000000e+00, double %i.cal)
  %i.caq = fmul double %i.buk, %i.cai
  %i.car = fcmp ogt double %i.caq, 0.000000e+00
  br i1 %i.car, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %._crit_edge1751
  %i.cas = call double @llvm.fabs.f64(double %i.cai)
  %i.cat = fcmp oge double %i.buk, 0.000000e+00
  %i.cau = fneg double %i.buk
  %i.cav = select i1 %i.cat, double %i.buk, double %i.cau
  %i.caw = fdiv double %i.cav, 1.000000e+01
  %i.cax = fcmp ogt double %i.cas, %i.caw
  br i1 %i.cax, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %.not1634 = icmp eq i32 %.115051761, 0
  %i.cay = zext i1 %.not1634 to i32
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge1751, %bb.dt, %bb.du
  %.21506 = phi i32 [ %i.cay, %bb.du ], [ %.115051761, %bb.dt ], [ %.115051761, %._crit_edge1751 ]
  %storemerge1616.in = load i32, ptr %i.c, align 4, !tbaa !83 ; 2 uses
  %storemerge1616 = add nsw i32 %storemerge1616.in, 1
  store i32 %storemerge1616, ptr %i.c, align 4, !tbaa !83
  %i.caz = icmp slt i32 %storemerge1616.in, 400
  br i1 %i.caz, label %bb.bx, label %._crit_edge1770, !llvm.loop !82

._crit_edge1770:                                  ; preds = %bb.dv, %bb.bw
  store i32 1, ptr %8, align 4, !tbaa !83
  br label %.loopexit1662

.loopexit1662:                                    ; preds = %bb.bx, %bb.s, %._crit_edge1836, %._crit_edge1770, %._crit_edge1793, %._crit_edge1701, %bb.c, %bb.b
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dlasd5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @dlamch_(ptr noundef) local_unnamed_addr #4

declare void @dlaed6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !92, !93, !94}
!14 = distinct !{!14, !92, !93}
!15 = distinct !{!15, !92}
!16 = distinct !{!16, !95}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !92, !93, !94}
!23 = distinct !{!23, !92, !93}
!24 = distinct !{!24, !92}
!25 = distinct !{!25, !95}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !92, !93, !94}
!30 = distinct !{!30, !95}
!31 = distinct !{!31, !92, !93}
!32 = distinct !{!32, !92}
!33 = distinct !{!33, !95}
!34 = distinct !{!34, i1 false, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !92, !93, !94}
!38 = distinct !{!38, !95}
!39 = distinct !{!39, !92, !93}
!40 = distinct !{!40, !92}
!41 = distinct !{!41, !95}
!42 = distinct !{!42, !92}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !92, !93, !94}
!49 = distinct !{!49, !92, !93}
!50 = distinct !{!50, !92}
!51 = distinct !{!51, !95}
!52 = distinct !{!52, !95}
!53 = distinct !{!53, !92}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
!59 = distinct !{!59, !92, !93, !94}
!60 = distinct !{!60, !92, !93}
!61 = distinct !{!61, !92}
!62 = distinct !{!62, !95}
!63 = distinct !{!63, !92}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !92, !93, !94}
!68 = distinct !{!68, !95}
!69 = distinct !{!69, !92, !93}
!70 = distinct !{!70, !92}
!71 = distinct !{!71, !95}
!72 = distinct !{!72, !92}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !92, !93, !94}
!77 = distinct !{!77, !95}
!78 = distinct !{!78, !92, !93}
!79 = distinct !{!79, !92}
!80 = distinct !{!80, !95}
!81 = distinct !{!81, !92}
!82 = distinct !{!82, !92}
!83 = !{!5, !5, i64 0}
!84 = !{!"double", !4, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!9}
!87 = !{!10}
!88 = !{!11}
!89 = !{!12, !9, !10}
!90 = !{!12}
!91 = !{!9, !10}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!18}
!97 = !{!19}
!98 = !{!20}
!99 = !{!21, !18, !19}
!100 = !{!21}
!101 = !{!18, !19}
!102 = !{!27}
!103 = !{!28}
!104 = !{!35}
!105 = !{!36}
!106 = !{!44}
!107 = !{!45}
!108 = !{!46}
!109 = !{!47, !44, !45}
!110 = !{!47}
!111 = !{!44, !45}
!112 = !{!55}
!113 = !{!56}
!114 = !{!57}
!115 = !{!58, !55, !56}
!116 = !{!58}
!117 = !{!55, !56}
!118 = !{!65}
!119 = !{!66}
!120 = !{!74}
!121 = !{!75}
end_hunk_2
