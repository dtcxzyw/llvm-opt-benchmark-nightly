Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarfx?download=true
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dlarfx_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !107    ; 74 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64                  ; 55 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %5, i64 %i.b ; 104 uses
  %i.d = load double, ptr %4, align 8, !tbaa !109
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !107
  switch i32 %i.g, label %.loopexit.sink.split [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %4, align 8, !tbaa !109
  %i.i = load double, ptr %3, align 8, !tbaa !109 ; 2 uses
  %i.j = fneg double %i.i
  %i.k = fmul double %i.h, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.i, double 1.000000e+00) ; 11 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !107    ; 6 uses
  %.not14421488 = icmp slt i32 %i.m, 1
  br i1 %.not14421488, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.n = sext i32 %i.a to i64                     ; 9 uses
  %i.o = add nuw i32 %i.m, 1
  %wide.trip.count1584 = zext i32 %i.o to i64     ; 2 uses
  %i.p = zext nneg i32 %i.m to i64                ; 5 uses
  %min.iters.check = icmp ugt i32 %i.m, 3
  %ident.check.not = icmp eq i32 %i.a, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.main.loop.iter.check, label %.lr.ph1490.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1801 = icmp ult i32 %i.m, 16
  br i1 %min.iters.check1801, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 2147483632               ; 4 uses
  %i.r = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.c, i64 %index ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16       ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 48       ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 80       ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 112      ; 2 uses
  %wide.load = load <4 x double>, ptr %i.t, align 8, !tbaa !109
  %wide.load1802 = load <4 x double>, ptr %i.u, align 8, !tbaa !109
  %wide.load1803 = load <4 x double>, ptr %i.v, align 8, !tbaa !109
  %wide.load1804 = load <4 x double>, ptr %i.w, align 8, !tbaa !109
  %i.x = fmul <4 x double> %broadcast.splat, %wide.load
  %i.y = fmul <4 x double> %broadcast.splat, %wide.load1802
  %i.z = fmul <4 x double> %broadcast.splat, %wide.load1803
  %i.aa = fmul <4 x double> %broadcast.splat, %wide.load1804
  store <4 x double> %i.x, ptr %i.t, align 8, !tbaa !109
  store <4 x double> %i.y, ptr %i.u, align 8, !tbaa !109
  store <4 x double> %i.z, ptr %i.v, align 8, !tbaa !109
  store <4 x double> %i.aa, ptr %i.w, align 8, !tbaa !109
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1490.preheader, label %vec.epilog.ph, !prof !113

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1805 = and i64 %i.p, 2147483644           ; 3 uses
  %i.ac = or disjoint i64 %n.vec1805, 1
  %broadcast.splatinsert1806 = insertelement <4 x double> poison, double %i.l, i64 0
  %broadcast.splat1807 = shufflevector <4 x double> %broadcast.splatinsert1806, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1808 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1810, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.c, i64 %index1808
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %wide.load1809 = load <4 x double>, ptr %i.ae, align 8, !tbaa !109
  %i.af = fmul <4 x double> %broadcast.splat1807, %wide.load1809
  store <4 x double> %i.af, ptr %i.ae, align 8, !tbaa !109
  %index.next1810 = add nuw i64 %index1808, 4     ; 2 uses
  %i.ag = icmp eq i64 %index.next1810, %n.vec1805
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1811 = icmp eq i64 %n.vec1805, %i.p
  br i1 %cmp.n1811, label %.loopexit, label %.lr.ph1490.preheader

.lr.ph1490.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1581.ph = phi i64 [ 1, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 4 uses
  %i.ah = sub nsw i64 %wide.trip.count1584, %indvars.iv1581.ph
  %i.ai = zext nneg i32 %i.m to i64
  %i.aj = sub nsw i64 %i.ai, %indvars.iv1581.ph
  %xtraiter3779 = and i64 %i.ah, 7                ; 2 uses
  %lcmp.mod3780.not = icmp eq i64 %xtraiter3779, 0
  br i1 %lcmp.mod3780.not, label %.lr.ph1490.prol.loopexit, label %.lr.ph1490.prol

.lr.ph1490.prol:                                  ; preds = %.lr.ph1490.preheader, %.lr.ph1490.prol
  %indvars.iv1581.prol = phi i64 [ %indvars.iv.next1582.prol, %.lr.ph1490.prol ], [ %indvars.iv1581.ph, %.lr.ph1490.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1490.prol ], [ 0, %.lr.ph1490.preheader ]
  %i.ak = mul nsw i64 %indvars.iv1581.prol, %i.n
  %i.al = getelementptr [8 x i8], ptr %i.c, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !109
  %i.ao = fmul double %i.l, %i.an
  store double %i.ao, ptr %i.am, align 8, !tbaa !109
  %indvars.iv.next1582.prol = add nuw nsw i64 %indvars.iv1581.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3779
  br i1 %prol.iter.cmp.not, label %.lr.ph1490.prol.loopexit, label %.lr.ph1490.prol, !llvm.loop !10

.lr.ph1490.prol.loopexit:                         ; preds = %.lr.ph1490.prol, %.lr.ph1490.preheader
  %indvars.iv1581.unr = phi i64 [ %indvars.iv1581.ph, %.lr.ph1490.preheader ], [ %indvars.iv.next1582.prol, %.lr.ph1490.prol ]
  %i.ap = icmp ult i64 %i.aj, 7
  br i1 %i.ap, label %.loopexit, label %.lr.ph1490

.lr.ph1490:                                       ; preds = %.lr.ph1490.prol.loopexit, %.lr.ph1490
  %indvars.iv1581 = phi i64 [ %indvars.iv.next1582.7, %.lr.ph1490 ], [ %indvars.iv1581.unr, %.lr.ph1490.prol.loopexit ] ; 9 uses
  %i.aq = mul nsw i64 %indvars.iv1581, %i.n
  %i.ar = getelementptr [8 x i8], ptr %i.c, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !109
  %i.au = fmul double %i.l, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !109
  %indvars.iv.next1582 = add nuw nsw i64 %indvars.iv1581, 1
  %i.av = mul nsw i64 %indvars.iv.next1582, %i.n
  %i.aw = getelementptr [8 x i8], ptr %i.c, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 8      ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !109
  %i.az = fmul double %i.l, %i.ay
  store double %i.az, ptr %i.ax, align 8, !tbaa !109
  %indvars.iv.next1582.1 = add nuw nsw i64 %indvars.iv1581, 2
  %i.ba = mul nsw i64 %indvars.iv.next1582.1, %i.n
  %i.bb = getelementptr [8 x i8], ptr %i.c, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !109
  %i.be = fmul double %i.l, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !109
  %indvars.iv.next1582.2 = add nuw nsw i64 %indvars.iv1581, 3
  %i.bf = mul nsw i64 %indvars.iv.next1582.2, %i.n
  %i.bg = getelementptr [8 x i8], ptr %i.c, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !109
  %i.bj = fmul double %i.l, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !109
  %indvars.iv.next1582.3 = add nuw nsw i64 %indvars.iv1581, 4
  %i.bk = mul nsw i64 %indvars.iv.next1582.3, %i.n
  %i.bl = getelementptr [8 x i8], ptr %i.c, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8      ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !109
  %i.bo = fmul double %i.l, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !109
  %indvars.iv.next1582.4 = add nuw nsw i64 %indvars.iv1581, 5
  %i.bp = mul nsw i64 %indvars.iv.next1582.4, %i.n
  %i.bq = getelementptr [8 x i8], ptr %i.c, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8      ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !109
  %i.bt = fmul double %i.l, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !109
  %indvars.iv.next1582.5 = add nuw nsw i64 %indvars.iv1581, 6
  %i.bu = mul nsw i64 %indvars.iv.next1582.5, %i.n
  %i.bv = getelementptr [8 x i8], ptr %i.c, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 8      ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !109
  %i.by = fmul double %i.l, %i.bx
  store double %i.by, ptr %i.bw, align 8, !tbaa !109
  %indvars.iv.next1582.6 = add nuw nsw i64 %indvars.iv1581, 7
  %i.bz = mul nsw i64 %indvars.iv.next1582.6, %i.n
  %i.ca = getelementptr [8 x i8], ptr %i.c, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 8      ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !109
  %i.cd = fmul double %i.l, %i.cc
  store double %i.cd, ptr %i.cb, align 8, !tbaa !109
  %indvars.iv.next1582.7 = add nuw nsw i64 %indvars.iv1581, 8 ; 2 uses
  %exitcond1585.not.7 = icmp eq i64 %indvars.iv.next1582.7, %wide.trip.count1584
  br i1 %exitcond1585.not.7, label %.loopexit, label %.lr.ph1490, !llvm.loop !11

bb.e:                                             ; preds = %bb.c
  %i.ce = load double, ptr %3, align 8, !tbaa !109 ; 11 uses
  %i.cf = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.cg = fmul double %i.ce, %i.cf                ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !109 ; 11 uses
  %i.cj = fmul double %i.cf, %i.ci                ; 10 uses
  %i.ck = load i32, ptr %2, align 4, !tbaa !107   ; 5 uses
  %.not14411485 = icmp slt i32 %i.ck, 1
  br i1 %.not14411485, label %.loopexit, label %.lr.ph1487.lver.check

.lr.ph1487.lver.check:                            ; preds = %bb.e
  %i.cl = sext i32 %i.a to i64                    ; 10 uses
  %ident.check3661.not = icmp eq i32 %i.a, 1
  br i1 %ident.check3661.not, label %.lr.ph1487.ph, label %.lr.ph1487.lver.orig.preheader

.lr.ph1487.lver.orig.preheader:                   ; preds = %.lr.ph1487.lver.check
  %i.cm = zext nneg i32 %i.ck to i64              ; 2 uses
  %xtraiter3768 = and i64 %i.cm, 3                ; 3 uses
  %i.cn = icmp ult i32 %i.ck, 4
  br i1 %i.cn, label %.lr.ph1487.lver.orig.epil.preheader, label %.lr.ph1487.lver.orig.preheader.new

.lr.ph1487.lver.orig.preheader.new:               ; preds = %.lr.ph1487.lver.orig.preheader
  %unroll_iter3771 = and i64 %i.cm, 2147483644
  br label %.lr.ph1487.lver.orig

.lr.ph1487.lver.orig:                             ; preds = %.lr.ph1487.lver.orig, %.lr.ph1487.lver.orig.preheader.new
  %indvars.iv1576.lver.orig = phi i64 [ 1, %.lr.ph1487.lver.orig.preheader.new ], [ %indvars.iv.next1577.lver.orig.3, %.lr.ph1487.lver.orig ] ; 5 uses
  %niter3772 = phi i64 [ 0, %.lr.ph1487.lver.orig.preheader.new ], [ %niter3772.next.3, %.lr.ph1487.lver.orig ]
  %i.co = mul nsw i64 %indvars.iv1576.lver.orig, %i.cl
  %i.cp = getelementptr [8 x i8], ptr %i.c, i64 %i.co ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !109 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cp, i64 16     ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !109 ; 2 uses
  %i.cu = fmul double %i.ci, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cr, double %i.cu)
  %i.cw = fneg double %i.cv                       ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cg, double %i.cr)
  store double %i.cx, ptr %i.cq, align 8, !tbaa !109
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cj, double %i.ct)
  store double %i.cy, ptr %i.cs, align 8, !tbaa !109
  %indvars.iv.next1577.lver.orig = add nuw nsw i64 %indvars.iv1576.lver.orig, 1
  %i.cz = mul nsw i64 %indvars.iv.next1577.lver.orig, %i.cl
  %i.da = getelementptr [8 x i8], ptr %i.c, i64 %i.cz ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8      ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !109 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.da, i64 16     ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !109 ; 2 uses
  %i.df = fmul double %i.ci, %i.de
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.dc, double %i.df)
  %i.dh = fneg double %i.dg                       ; 2 uses
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cg, double %i.dc)
  store double %i.di, ptr %i.db, align 8, !tbaa !109
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cj, double %i.de)
  store double %i.dj, ptr %i.dd, align 8, !tbaa !109
  %indvars.iv.next1577.lver.orig.1 = add nuw nsw i64 %indvars.iv1576.lver.orig, 2
  %i.dk = mul nsw i64 %indvars.iv.next1577.lver.orig.1, %i.cl
  %i.dl = getelementptr [8 x i8], ptr %i.c, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8      ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !109 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 16     ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !109 ; 2 uses
  %i.dq = fmul double %i.ci, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.dn, double %i.dq)
  %i.ds = fneg double %i.dr                       ; 2 uses
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.cg, double %i.dn)
  store double %i.dt, ptr %i.dm, align 8, !tbaa !109
  %i.du = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.cj, double %i.dp)
  store double %i.du, ptr %i.do, align 8, !tbaa !109
  %indvars.iv.next1577.lver.orig.2 = add nuw nsw i64 %indvars.iv1576.lver.orig, 3
  %i.dv = mul nsw i64 %indvars.iv.next1577.lver.orig.2, %i.cl
  %i.dw = getelementptr [8 x i8], ptr %i.c, i64 %i.dv ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8      ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !109 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 16     ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !109 ; 2 uses
  %i.eb = fmul double %i.ci, %i.ea
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.dy, double %i.eb)
  %i.ed = fneg double %i.ec                       ; 2 uses
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.cg, double %i.dy)
  store double %i.ee, ptr %i.dx, align 8, !tbaa !109
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.cj, double %i.ea)
  store double %i.ef, ptr %i.dz, align 8, !tbaa !109
  %indvars.iv.next1577.lver.orig.3 = add nuw nsw i64 %indvars.iv1576.lver.orig, 4 ; 2 uses
  %niter3772.next.3 = add i64 %niter3772, 4       ; 2 uses
  %niter3772.ncmp.3 = icmp eq i64 %niter3772.next.3, %unroll_iter3771
  br i1 %niter3772.ncmp.3, label %.loopexit.loopexit3722.unr-lcssa, label %.lr.ph1487.lver.orig, !llvm.loop !12

.lr.ph1487.ph:                                    ; preds = %.lr.ph1487.lver.check
  %load_initial = load double, ptr %5, align 8    ; 2 uses
  %i.eg = zext nneg i32 %i.ck to i64              ; 2 uses
  %xtraiter3773 = and i64 %i.eg, 3                ; 3 uses
  %i.eh = icmp ult i32 %i.ck, 4
  br i1 %i.eh, label %.lr.ph1487.epil.preheader, label %.lr.ph1487.ph.new

.lr.ph1487.ph.new:                                ; preds = %.lr.ph1487.ph
  %unroll_iter3777 = and i64 %i.eg, 2147483644
  br label %.lr.ph1487

.lr.ph1487:                                       ; preds = %.lr.ph1487, %.lr.ph1487.ph.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph1487.ph.new ], [ %i.fv, %.lr.ph1487 ] ; 2 uses
  %indvars.iv1576 = phi i64 [ 1, %.lr.ph1487.ph.new ], [ %indvars.iv.next1577.3, %.lr.ph1487 ] ; 5 uses
  %niter3778 = phi i64 [ 0, %.lr.ph1487.ph.new ], [ %niter3778.next.3, %.lr.ph1487 ]
  %i.ei = mul nuw nsw i64 %indvars.iv1576, %i.cl
  %i.ej = getelementptr [8 x i8], ptr %i.c, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = getelementptr i8, ptr %i.ej, i64 16     ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !109 ; 2 uses
  %i.en = fmul double %i.ci, %i.em
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.ce, double %store_forwarded, double %i.en)
  %i.ep = fneg double %i.eo                       ; 2 uses
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.cg, double %store_forwarded)
  store double %i.eq, ptr %i.ek, align 8, !tbaa !109
  %i.er = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.cj, double %i.em) ; 3 uses
  store double %i.er, ptr %i.el, align 8, !tbaa !109
  %indvars.iv.next1577 = add nuw nsw i64 %indvars.iv1576, 1
  %i.es = mul nuw nsw i64 %indvars.iv.next1577, %i.cl
  %i.et = getelementptr [8 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = getelementptr i8, ptr %i.et, i64 16     ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !109 ; 2 uses
  %i.ex = fmul double %i.ci, %i.ew
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.er, double %i.ex)
  %i.ez = fneg double %i.ey                       ; 2 uses
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.cg, double %i.er)
  store double %i.fa, ptr %i.eu, align 8, !tbaa !109
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.cj, double %i.ew) ; 3 uses
  store double %i.fb, ptr %i.ev, align 8, !tbaa !109
  %indvars.iv.next1577.1 = add nuw nsw i64 %indvars.iv1576, 2
  %i.fc = mul nuw nsw i64 %indvars.iv.next1577.1, %i.cl
  %i.fd = getelementptr [8 x i8], ptr %i.c, i64 %i.fc ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  %i.ff = getelementptr i8, ptr %i.fd, i64 16     ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !109 ; 2 uses
  %i.fh = fmul double %i.ci, %i.fg
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.fb, double %i.fh)
  %i.fj = fneg double %i.fi                       ; 2 uses
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.cg, double %i.fb)
  store double %i.fk, ptr %i.fe, align 8, !tbaa !109
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.cj, double %i.fg) ; 3 uses
  store double %i.fl, ptr %i.ff, align 8, !tbaa !109
  %indvars.iv.next1577.2 = add nuw nsw i64 %indvars.iv1576, 3
  %i.fm = mul nuw nsw i64 %indvars.iv.next1577.2, %i.cl
  %i.fn = getelementptr [8 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = getelementptr i8, ptr %i.fn, i64 16     ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !109 ; 2 uses
  %i.fr = fmul double %i.ci, %i.fq
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.fl, double %i.fr)
  %i.ft = fneg double %i.fs                       ; 2 uses
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.cg, double %i.fl)
  store double %i.fu, ptr %i.fo, align 8, !tbaa !109
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.cj, double %i.fq) ; 3 uses
  store double %i.fv, ptr %i.fp, align 8, !tbaa !109
  %indvars.iv.next1577.3 = add nuw nsw i64 %indvars.iv1576, 4 ; 2 uses
  %niter3778.next.3 = add i64 %niter3778, 4       ; 2 uses
  %niter3778.ncmp.3 = icmp eq i64 %niter3778.next.3, %unroll_iter3777
  br i1 %niter3778.ncmp.3, label %.loopexit.loopexit3721.unr-lcssa, label %.lr.ph1487, !llvm.loop !12

bb.f:                                             ; preds = %bb.c
  %i.fw = load double, ptr %3, align 8, !tbaa !109 ; 7 uses
  %i.fx = load double, ptr %4, align 8, !tbaa !109 ; 3 uses
  %i.fy = fmul double %i.fw, %i.fx                ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !109 ; 7 uses
  %i.gb = fmul double %i.fx, %i.ga                ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !109 ; 7 uses
  %i.ge = fmul double %i.fx, %i.gd                ; 6 uses
  %i.gf = load i32, ptr %2, align 4, !tbaa !107   ; 7 uses
  %.not14401482 = icmp slt i32 %i.gf, 1
  br i1 %.not14401482, label %.loopexit, label %.lr.ph1484.lver.check

.lr.ph1484.lver.check:                            ; preds = %bb.f
  %i.gg = sext i32 %i.a to i64                    ; 6 uses
  %ident.check3663.not = icmp eq i32 %i.a, 1
  br i1 %ident.check3663.not, label %.lr.ph1484.ph, label %.lr.ph1484.lver.orig.preheader

.lr.ph1484.lver.orig.preheader:                   ; preds = %.lr.ph1484.lver.check
  %i.gh = zext nneg i32 %i.gf to i64              ; 2 uses
  %xtraiter3758 = and i64 %i.gh, 1
  %i.gi = icmp eq i32 %i.gf, 1
  br i1 %i.gi, label %.lr.ph1484.lver.orig.epil.preheader, label %.lr.ph1484.lver.orig.preheader.new

.lr.ph1484.lver.orig.preheader.new:               ; preds = %.lr.ph1484.lver.orig.preheader
  %unroll_iter3761 = and i64 %i.gh, 2147483646
  br label %.lr.ph1484.lver.orig

.lr.ph1484.lver.orig:                             ; preds = %.lr.ph1484.lver.orig, %.lr.ph1484.lver.orig.preheader.new
  %indvars.iv1571.lver.orig = phi i64 [ 1, %.lr.ph1484.lver.orig.preheader.new ], [ %indvars.iv.next1572.lver.orig.1, %.lr.ph1484.lver.orig ] ; 3 uses
  %niter3762 = phi i64 [ 0, %.lr.ph1484.lver.orig.preheader.new ], [ %niter3762.next.1, %.lr.ph1484.lver.orig ]
  %i.gj = mul nsw i64 %indvars.iv1571.lver.orig, %i.gg
  %i.gk = getelementptr [8 x i8], ptr %i.c, i64 %i.gj ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 8      ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !109 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gk, i64 16     ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !109 ; 2 uses
  %i.gp = fmul double %i.ga, %i.go
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.gm, double %i.gp)
  %i.gr = getelementptr i8, ptr %i.gk, i64 24     ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !109 ; 2 uses
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.gs, double %i.gq)
  %i.gu = fneg double %i.gt                       ; 3 uses
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.fy, double %i.gm)
  store double %i.gv, ptr %i.gl, align 8, !tbaa !109
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gb, double %i.go)
  store double %i.gw, ptr %i.gn, align 8, !tbaa !109
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.ge, double %i.gs)
  store double %i.gx, ptr %i.gr, align 8, !tbaa !109
  %indvars.iv.next1572.lver.orig = add nuw nsw i64 %indvars.iv1571.lver.orig, 1
  %i.gy = mul nsw i64 %indvars.iv.next1572.lver.orig, %i.gg
  %i.gz = getelementptr [8 x i8], ptr %i.c, i64 %i.gy ; 3 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 8      ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !109 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gz, i64 16     ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !109 ; 2 uses
  %i.he = fmul double %i.ga, %i.hd
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.hb, double %i.he)
  %i.hg = getelementptr i8, ptr %i.gz, i64 24     ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !109 ; 2 uses
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.hh, double %i.hf)
  %i.hj = fneg double %i.hi                       ; 3 uses
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.fy, double %i.hb)
  store double %i.hk, ptr %i.ha, align 8, !tbaa !109
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.gb, double %i.hd)
  store double %i.hl, ptr %i.hc, align 8, !tbaa !109
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.ge, double %i.hh)
  store double %i.hm, ptr %i.hg, align 8, !tbaa !109
  %indvars.iv.next1572.lver.orig.1 = add nuw nsw i64 %indvars.iv1571.lver.orig, 2 ; 2 uses
  %niter3762.next.1 = add nuw i64 %niter3762, 2   ; 2 uses
  %niter3762.ncmp.1 = icmp eq i64 %niter3762.next.1, %unroll_iter3761
  br i1 %niter3762.ncmp.1, label %.loopexit.loopexit3724.unr-lcssa, label %.lr.ph1484.lver.orig, !llvm.loop !13

.lr.ph1484.ph:                                    ; preds = %.lr.ph1484.lver.check
  %scevgep = getelementptr i8, ptr %5, i64 8
  %load_initial3665 = load double, ptr %scevgep, align 8 ; 2 uses
  %i.hn = zext nneg i32 %i.gf to i64              ; 2 uses
  %xtraiter3763 = and i64 %i.hn, 1
  %i.ho = icmp eq i32 %i.gf, 1
  br i1 %i.ho, label %.lr.ph1484.epil.preheader, label %.lr.ph1484.ph.new

.lr.ph1484.ph.new:                                ; preds = %.lr.ph1484.ph
  %unroll_iter3766 = and i64 %i.hn, 2147483646
  br label %.lr.ph1484

.lr.ph1484:                                       ; preds = %.lr.ph1484, %.lr.ph1484.ph.new
  %store_forwarded3666 = phi double [ %load_initial3665, %.lr.ph1484.ph.new ], [ %i.iq, %.lr.ph1484 ] ; 2 uses
  %indvars.iv1571 = phi i64 [ 1, %.lr.ph1484.ph.new ], [ %indvars.iv.next1572.1, %.lr.ph1484 ] ; 3 uses
  %niter3767 = phi i64 [ 0, %.lr.ph1484.ph.new ], [ %niter3767.next.1, %.lr.ph1484 ]
  %i.hp = mul nuw nsw i64 %indvars.iv1571, %i.gg
  %i.hq = getelementptr [8 x i8], ptr %i.c, i64 %i.hp ; 3 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 8      ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !109 ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hq, i64 16
  %i.hu = fmul double %i.ga, %store_forwarded3666
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.hs, double %i.hu)
  %i.hw = getelementptr i8, ptr %i.hq, i64 24     ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !109 ; 2 uses
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.hx, double %i.hv)
  %i.hz = fneg double %i.hy                       ; 3 uses
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.fy, double %i.hs)
  store double %i.ia, ptr %i.hr, align 8, !tbaa !109
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.gb, double %store_forwarded3666)
  store double %i.ib, ptr %i.ht, align 8, !tbaa !109
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ge, double %i.hx) ; 3 uses
  store double %i.ic, ptr %i.hw, align 8, !tbaa !109
  %indvars.iv.next1572 = add nuw nsw i64 %indvars.iv1571, 1
  %i.id = mul nuw nsw i64 %indvars.iv.next1572, %i.gg
  %i.ie = getelementptr [8 x i8], ptr %i.c, i64 %i.id ; 3 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 8      ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !109 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ie, i64 16
  %i.ii = fmul double %i.ga, %i.ic
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.ig, double %i.ii)
  %i.ik = getelementptr i8, ptr %i.ie, i64 24     ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !109 ; 2 uses
  %i.im = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.il, double %i.ij)
  %i.in = fneg double %i.im                       ; 3 uses
  %i.io = tail call double @llvm.fmuladd.f64(double %i.in, double %i.fy, double %i.ig)
  store double %i.io, ptr %i.if, align 8, !tbaa !109
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.in, double %i.gb, double %i.ic)
  store double %i.ip, ptr %i.ih, align 8, !tbaa !109
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.in, double %i.ge, double %i.il) ; 3 uses
  store double %i.iq, ptr %i.ik, align 8, !tbaa !109
  %indvars.iv.next1572.1 = add nuw nsw i64 %indvars.iv1571, 2 ; 2 uses
  %niter3767.next.1 = add nuw i64 %niter3767, 2   ; 2 uses
  %niter3767.ncmp.1 = icmp eq i64 %niter3767.next.1, %unroll_iter3766
  br i1 %niter3767.ncmp.1, label %.loopexit.loopexit3723.unr-lcssa, label %.lr.ph1484, !llvm.loop !13

bb.g:                                             ; preds = %bb.c
  %i.ir = load double, ptr %4, align 8, !tbaa !109
  %i.is = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 17 uses
  %i.it = insertelement <4 x double> poison, double %i.ir, i64 0
  %i.iu = shufflevector <4 x double> %i.it, <4 x double> poison, <4 x i32> zeroinitializer
  %i.iv = fmul <4 x double> %i.iu, %i.is          ; 7 uses
  %i.iw = load i32, ptr %2, align 4, !tbaa !107   ; 7 uses
  %.not14391479 = icmp slt i32 %i.iw, 1
  br i1 %.not14391479, label %.loopexit, label %.lr.ph1481.lver.check

.lr.ph1481.lver.check:                            ; preds = %bb.g
  %i.ix = sext i32 %i.a to i64                    ; 6 uses
  %ident.check3667.not = icmp eq i32 %i.a, 1
  br i1 %ident.check3667.not, label %.lr.ph1481.ph, label %.lr.ph1481.lver.orig.preheader

.lr.ph1481.lver.orig.preheader:                   ; preds = %.lr.ph1481.lver.check
  %i.iy = zext nneg i32 %i.iw to i64              ; 2 uses
  %xtraiter3748 = and i64 %i.iy, 1
  %i.iz = icmp eq i32 %i.iw, 1
  br i1 %i.iz, label %.lr.ph1481.lver.orig.epil.preheader, label %.lr.ph1481.lver.orig.preheader.new

.lr.ph1481.lver.orig.preheader.new:               ; preds = %.lr.ph1481.lver.orig.preheader
  %unroll_iter3751 = and i64 %i.iy, 2147483646
  %i.ja = extractelement <4 x double> %i.is, i64 0
  %i.jb = extractelement <4 x double> %i.is, i64 2
  %i.jc = extractelement <4 x double> %i.is, i64 3
  %i.jd = extractelement <4 x double> %i.is, i64 0
  %i.je = extractelement <4 x double> %i.is, i64 2
  %i.jf = extractelement <4 x double> %i.is, i64 3
  br label %.lr.ph1481.lver.orig

.lr.ph1481.lver.orig:                             ; preds = %.lr.ph1481.lver.orig, %.lr.ph1481.lver.orig.preheader.new
  %indvars.iv1566.lver.orig = phi i64 [ 1, %.lr.ph1481.lver.orig.preheader.new ], [ %indvars.iv.next1567.lver.orig.1, %.lr.ph1481.lver.orig ] ; 3 uses
  %niter3752 = phi i64 [ 0, %.lr.ph1481.lver.orig.preheader.new ], [ %niter3752.next.1, %.lr.ph1481.lver.orig ]
  %i.jg = mul nsw i64 %indvars.iv1566.lver.orig, %i.ix
  %i.jh = getelementptr [8 x i8], ptr %i.c, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 8      ; 2 uses
  %i.jj = load <4 x double>, ptr %i.ji, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop = fmul <4 x double> %i.is, %i.jj
  %i.jk = extractelement <4 x double> %foldExtExtBinop, i64 1
  %i.jl = extractelement <4 x double> %i.jj, i64 0
  %i.jm = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.jl, double %i.jk)
  %i.jn = extractelement <4 x double> %i.jj, i64 2
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.jn, double %i.jm)
  %i.jp = extractelement <4 x double> %i.jj, i64 3
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jp, double %i.jo)
  %i.jr = fneg double %i.jq
  %i.js = insertelement <4 x double> poison, double %i.jr, i64 0
  %i.jt = shufflevector <4 x double> %i.js, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ju = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jt, <4 x double> %i.iv, <4 x double> %i.jj)
  store <4 x double> %i.ju, ptr %i.ji, align 8, !tbaa !109
  %indvars.iv.next1567.lver.orig = add nuw nsw i64 %indvars.iv1566.lver.orig, 1
  %i.jv = mul nsw i64 %indvars.iv.next1567.lver.orig, %i.ix
  %i.jw = getelementptr [8 x i8], ptr %i.c, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 8      ; 2 uses
  %i.jy = load <4 x double>, ptr %i.jx, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop.1 = fmul <4 x double> %i.is, %i.jy
  %i.jz = extractelement <4 x double> %foldExtExtBinop.1, i64 1
  %i.ka = extractelement <4 x double> %i.jy, i64 0
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.ka, double %i.jz)
  %i.kc = extractelement <4 x double> %i.jy, i64 2
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.je, double %i.kc, double %i.kb)
  %i.ke = extractelement <4 x double> %i.jy, i64 3
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.ke, double %i.kd)
  %i.kg = fneg double %i.kf
  %i.kh = insertelement <4 x double> poison, double %i.kg, i64 0
  %i.ki = shufflevector <4 x double> %i.kh, <4 x double> poison, <4 x i32> zeroinitializer
  %i.kj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ki, <4 x double> %i.iv, <4 x double> %i.jy)
  store <4 x double> %i.kj, ptr %i.jx, align 8, !tbaa !109
  %indvars.iv.next1567.lver.orig.1 = add nuw nsw i64 %indvars.iv1566.lver.orig, 2 ; 2 uses
  %niter3752.next.1 = add nuw i64 %niter3752, 2   ; 2 uses
  %niter3752.ncmp.1 = icmp eq i64 %niter3752.next.1, %unroll_iter3751
  br i1 %niter3752.ncmp.1, label %.loopexit.loopexit3726.unr-lcssa, label %.lr.ph1481.lver.orig, !llvm.loop !14

.lr.ph1481.ph:                                    ; preds = %.lr.ph1481.lver.check
  %scevgep3669 = getelementptr i8, ptr %5, i64 16
  %load_initial3670 = load double, ptr %scevgep3669, align 8 ; 2 uses
  %i.kk = extractelement <4 x double> %i.iv, i64 0 ; 3 uses
  %i.kl = extractelement <4 x double> %i.iv, i64 1 ; 3 uses
  %i.km = extractelement <4 x double> %i.iv, i64 2 ; 3 uses
  %i.kn = extractelement <4 x double> %i.iv, i64 3 ; 3 uses
  %i.ko = extractelement <4 x double> %i.is, i64 0 ; 3 uses
  %i.kp = extractelement <4 x double> %i.is, i64 1 ; 3 uses
  %i.kq = extractelement <4 x double> %i.is, i64 2 ; 3 uses
  %i.kr = extractelement <4 x double> %i.is, i64 3 ; 3 uses
  %i.ks = zext nneg i32 %i.iw to i64              ; 2 uses
  %xtraiter3753 = and i64 %i.ks, 1
  %i.kt = icmp eq i32 %i.iw, 1
  br i1 %i.kt, label %.lr.ph1481.epil.preheader, label %.lr.ph1481.ph.new

.lr.ph1481.ph.new:                                ; preds = %.lr.ph1481.ph
  %unroll_iter3756 = and i64 %i.ks, 2147483646
  br label %.lr.ph1481

.lr.ph1481:                                       ; preds = %.lr.ph1481, %.lr.ph1481.ph.new
  %store_forwarded3671 = phi double [ %load_initial3670, %.lr.ph1481.ph.new ], [ %i.md, %.lr.ph1481 ] ; 2 uses
  %indvars.iv1566 = phi i64 [ 1, %.lr.ph1481.ph.new ], [ %indvars.iv.next1567.1, %.lr.ph1481 ] ; 3 uses
  %niter3757 = phi i64 [ 0, %.lr.ph1481.ph.new ], [ %niter3757.next.1, %.lr.ph1481 ]
  %i.ku = mul nuw nsw i64 %indvars.iv1566, %i.ix
  %i.kv = getelementptr [8 x i8], ptr %i.c, i64 %i.ku ; 4 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 8      ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !109 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kv, i64 16     ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !109 ; 2 uses
  %i.la = fmul double %i.kp, %i.kz
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.ko, double %i.kx, double %i.la)
  %i.lc = getelementptr i8, ptr %i.kv, i64 24
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.kq, double %store_forwarded3671, double %i.lb)
  %i.le = getelementptr i8, ptr %i.kv, i64 32     ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !109 ; 2 uses
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.lf, double %i.ld)
  %i.lh = fneg double %i.lg                       ; 4 uses
  %i.li = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.kk, double %i.kx)
  store double %i.li, ptr %i.kw, align 8, !tbaa !109
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.kl, double %i.kz)
  store double %i.lj, ptr %i.ky, align 8, !tbaa !109
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.km, double %store_forwarded3671)
  store double %i.lk, ptr %i.lc, align 8, !tbaa !109
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.kn, double %i.lf) ; 3 uses
  store double %i.ll, ptr %i.le, align 8, !tbaa !109
  %indvars.iv.next1567 = add nuw nsw i64 %indvars.iv1566, 1
  %i.lm = mul nuw nsw i64 %indvars.iv.next1567, %i.ix
  %i.ln = getelementptr [8 x i8], ptr %i.c, i64 %i.lm ; 4 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 8      ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !109 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.ln, i64 16     ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !109 ; 2 uses
  %i.ls = fmul double %i.kp, %i.lr
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ko, double %i.lp, double %i.ls)
  %i.lu = getelementptr i8, ptr %i.ln, i64 24
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.kq, double %i.ll, double %i.lt)
  %i.lw = getelementptr i8, ptr %i.ln, i64 32     ; 2 uses
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !109 ; 2 uses
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.lx, double %i.lv)
  %i.lz = fneg double %i.ly                       ; 4 uses
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.kk, double %i.lp)
  store double %i.ma, ptr %i.lo, align 8, !tbaa !109
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.kl, double %i.lr)
  store double %i.mb, ptr %i.lq, align 8, !tbaa !109
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.km, double %i.ll)
  store double %i.mc, ptr %i.lu, align 8, !tbaa !109
  %i.md = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.kn, double %i.lx) ; 3 uses
  store double %i.md, ptr %i.lw, align 8, !tbaa !109
  %indvars.iv.next1567.1 = add nuw nsw i64 %indvars.iv1566, 2 ; 2 uses
  %niter3757.next.1 = add nuw i64 %niter3757, 2   ; 2 uses
  %niter3757.ncmp.1 = icmp eq i64 %niter3757.next.1, %unroll_iter3756
  br i1 %niter3757.ncmp.1, label %.loopexit.loopexit3725.unr-lcssa, label %.lr.ph1481, !llvm.loop !14

bb.h:                                             ; preds = %bb.c
  %i.me = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.mf = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 17 uses
  %i.mg = insertelement <4 x double> poison, double %i.me, i64 0
  %i.mh = shufflevector <4 x double> %i.mg, <4 x double> poison, <4 x i32> zeroinitializer
  %i.mi = fmul <4 x double> %i.mh, %i.mf          ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !109 ; 7 uses
  %i.ml = fmul double %i.me, %i.mk                ; 6 uses
  %i.mm = load i32, ptr %2, align 4, !tbaa !107   ; 7 uses
  %.not14381476 = icmp slt i32 %i.mm, 1
  br i1 %.not14381476, label %.loopexit, label %.lr.ph1478.lver.check

.lr.ph1478.lver.check:                            ; preds = %bb.h
  %i.mn = sext i32 %i.a to i64                    ; 6 uses
  %ident.check3672.not = icmp eq i32 %i.a, 1
  br i1 %ident.check3672.not, label %.lr.ph1478.ph, label %.lr.ph1478.lver.orig.preheader

.lr.ph1478.lver.orig.preheader:                   ; preds = %.lr.ph1478.lver.check
  %i.mo = zext nneg i32 %i.mm to i64              ; 2 uses
  %xtraiter3738 = and i64 %i.mo, 1
  %i.mp = icmp eq i32 %i.mm, 1
  br i1 %i.mp, label %.lr.ph1478.lver.orig.epil.preheader, label %.lr.ph1478.lver.orig.preheader.new

.lr.ph1478.lver.orig.preheader.new:               ; preds = %.lr.ph1478.lver.orig.preheader
  %unroll_iter3741 = and i64 %i.mo, 2147483646
  %i.mq = extractelement <4 x double> %i.mf, i64 0
  %i.mr = extractelement <4 x double> %i.mf, i64 2
  %i.ms = extractelement <4 x double> %i.mf, i64 3
  %i.mt = extractelement <4 x double> %i.mf, i64 0
  %i.mu = extractelement <4 x double> %i.mf, i64 2
  %i.mv = extractelement <4 x double> %i.mf, i64 3
  br label %.lr.ph1478.lver.orig

.lr.ph1478.lver.orig:                             ; preds = %.lr.ph1478.lver.orig, %.lr.ph1478.lver.orig.preheader.new
  %indvars.iv1561.lver.orig = phi i64 [ 1, %.lr.ph1478.lver.orig.preheader.new ], [ %indvars.iv.next1562.lver.orig.1, %.lr.ph1478.lver.orig ] ; 3 uses
  %niter3742 = phi i64 [ 0, %.lr.ph1478.lver.orig.preheader.new ], [ %niter3742.next.1, %.lr.ph1478.lver.orig ]
  %i.mw = mul nsw i64 %indvars.iv1561.lver.orig, %i.mn
  %i.mx = getelementptr [8 x i8], ptr %i.c, i64 %i.mw ; 2 uses
  %i.my = getelementptr i8, ptr %i.mx, i64 8      ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mx, i64 40     ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !109 ; 2 uses
  %i.nb = load <4 x double>, ptr %i.my, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3693 = fmul <4 x double> %i.mf, %i.nb
  %i.nc = extractelement <4 x double> %foldExtExtBinop3693, i64 1
  %i.nd = extractelement <4 x double> %i.nb, i64 0
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.nd, double %i.nc)
  %i.nf = extractelement <4 x double> %i.nb, i64 2
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.nf, double %i.ne)
  %i.nh = extractelement <4 x double> %i.nb, i64 3
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.ms, double %i.nh, double %i.ng)
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.na, double %i.ni)
  %i.nk = fneg double %i.nj                       ; 2 uses
  %i.nl = insertelement <4 x double> poison, double %i.nk, i64 0
  %i.nm = shufflevector <4 x double> %i.nl, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nm, <4 x double> %i.mi, <4 x double> %i.nb)
  store <4 x double> %i.nn, ptr %i.my, align 8, !tbaa !109
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nk, double %i.ml, double %i.na)
  store double %i.no, ptr %i.mz, align 8, !tbaa !109
  %indvars.iv.next1562.lver.orig = add nuw nsw i64 %indvars.iv1561.lver.orig, 1
  %i.np = mul nsw i64 %indvars.iv.next1562.lver.orig, %i.mn
  %i.nq = getelementptr [8 x i8], ptr %i.c, i64 %i.np ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 8      ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nq, i64 40     ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !109 ; 2 uses
  %i.nu = load <4 x double>, ptr %i.nr, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3693.1 = fmul <4 x double> %i.mf, %i.nu
  %i.nv = extractelement <4 x double> %foldExtExtBinop3693.1, i64 1
  %i.nw = extractelement <4 x double> %i.nu, i64 0
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.mt, double %i.nw, double %i.nv)
  %i.ny = extractelement <4 x double> %i.nu, i64 2
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.ny, double %i.nx)
  %i.oa = extractelement <4 x double> %i.nu, i64 3
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.oa, double %i.nz)
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.nt, double %i.ob)
  %i.od = fneg double %i.oc                       ; 2 uses
  %i.oe = insertelement <4 x double> poison, double %i.od, i64 0
  %i.of = shufflevector <4 x double> %i.oe, <4 x double> poison, <4 x i32> zeroinitializer
  %i.og = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.of, <4 x double> %i.mi, <4 x double> %i.nu)
  store <4 x double> %i.og, ptr %i.nr, align 8, !tbaa !109
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.od, double %i.ml, double %i.nt)
  store double %i.oh, ptr %i.ns, align 8, !tbaa !109
  %indvars.iv.next1562.lver.orig.1 = add nuw nsw i64 %indvars.iv1561.lver.orig, 2 ; 2 uses
  %niter3742.next.1 = add nuw i64 %niter3742, 2   ; 2 uses
  %niter3742.ncmp.1 = icmp eq i64 %niter3742.next.1, %unroll_iter3741
  br i1 %niter3742.ncmp.1, label %.loopexit.loopexit3728.unr-lcssa, label %.lr.ph1478.lver.orig, !llvm.loop !15

.lr.ph1478.ph:                                    ; preds = %.lr.ph1478.lver.check
  %scevgep3674 = getelementptr i8, ptr %5, i64 24
  %load_initial3675 = load double, ptr %scevgep3674, align 8 ; 2 uses
  %i.oi = extractelement <4 x double> %i.mi, i64 0 ; 3 uses
  %i.oj = extractelement <4 x double> %i.mi, i64 1 ; 3 uses
  %i.ok = extractelement <4 x double> %i.mi, i64 2 ; 3 uses
  %i.ol = extractelement <4 x double> %i.mi, i64 3 ; 3 uses
  %i.om = extractelement <4 x double> %i.mf, i64 0 ; 3 uses
  %i.on = extractelement <4 x double> %i.mf, i64 1 ; 3 uses
  %i.oo = extractelement <4 x double> %i.mf, i64 2 ; 3 uses
  %i.op = extractelement <4 x double> %i.mf, i64 3 ; 3 uses
  %i.oq = zext nneg i32 %i.mm to i64              ; 2 uses
  %xtraiter3743 = and i64 %i.oq, 1
  %i.or = icmp eq i32 %i.mm, 1
  br i1 %i.or, label %.lr.ph1478.epil.preheader, label %.lr.ph1478.ph.new

.lr.ph1478.ph.new:                                ; preds = %.lr.ph1478.ph
  %unroll_iter3746 = and i64 %i.oq, 2147483646
  br label %.lr.ph1478

.lr.ph1478:                                       ; preds = %.lr.ph1478, %.lr.ph1478.ph.new
  %store_forwarded3676 = phi double [ %load_initial3675, %.lr.ph1478.ph.new ], [ %i.qj, %.lr.ph1478 ] ; 2 uses
  %indvars.iv1561 = phi i64 [ 1, %.lr.ph1478.ph.new ], [ %indvars.iv.next1562.1, %.lr.ph1478 ] ; 3 uses
  %niter3747 = phi i64 [ 0, %.lr.ph1478.ph.new ], [ %niter3747.next.1, %.lr.ph1478 ]
  %i.os = mul nuw nsw i64 %indvars.iv1561, %i.mn
  %i.ot = getelementptr [8 x i8], ptr %i.c, i64 %i.os ; 5 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 8      ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !109 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ot, i64 16     ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !109 ; 2 uses
  %i.oy = fmul double %i.on, %i.ox
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.om, double %i.ov, double %i.oy)
  %i.pa = getelementptr i8, ptr %i.ot, i64 24     ; 2 uses
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !109 ; 2 uses
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.oo, double %i.pb, double %i.oz)
  %i.pd = getelementptr i8, ptr %i.ot, i64 32
  %i.pe = tail call double @llvm.fmuladd.f64(double %i.op, double %store_forwarded3676, double %i.pc)
  %i.pf = getelementptr i8, ptr %i.ot, i64 40     ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !109 ; 2 uses
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.pg, double %i.pe)
  %i.pi = fneg double %i.ph                       ; 5 uses
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.oi, double %i.ov)
  store double %i.pj, ptr %i.ou, align 8, !tbaa !109
  %i.pk = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.oj, double %i.ox)
  store double %i.pk, ptr %i.ow, align 8, !tbaa !109
  %i.pl = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.ok, double %i.pb)
  store double %i.pl, ptr %i.pa, align 8, !tbaa !109
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.ol, double %store_forwarded3676)
  store double %i.pm, ptr %i.pd, align 8, !tbaa !109
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.ml, double %i.pg) ; 3 uses
  store double %i.pn, ptr %i.pf, align 8, !tbaa !109
  %indvars.iv.next1562 = add nuw nsw i64 %indvars.iv1561, 1
  %i.po = mul nuw nsw i64 %indvars.iv.next1562, %i.mn
  %i.pp = getelementptr [8 x i8], ptr %i.c, i64 %i.po ; 5 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 8      ; 2 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !109 ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pp, i64 16     ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !109 ; 2 uses
  %i.pu = fmul double %i.on, %i.pt
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.om, double %i.pr, double %i.pu)
  %i.pw = getelementptr i8, ptr %i.pp, i64 24     ; 2 uses
  %i.px = load double, ptr %i.pw, align 8, !tbaa !109 ; 2 uses
  %i.py = tail call double @llvm.fmuladd.f64(double %i.oo, double %i.px, double %i.pv)
  %i.pz = getelementptr i8, ptr %i.pp, i64 32
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.op, double %i.pn, double %i.py)
  %i.qb = getelementptr i8, ptr %i.pp, i64 40     ; 2 uses
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !109 ; 2 uses
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.qc, double %i.qa)
  %i.qe = fneg double %i.qd                       ; 5 uses
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.oi, double %i.pr)
  store double %i.qf, ptr %i.pq, align 8, !tbaa !109
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.oj, double %i.pt)
  store double %i.qg, ptr %i.ps, align 8, !tbaa !109
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.ok, double %i.px)
  store double %i.qh, ptr %i.pw, align 8, !tbaa !109
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.ol, double %i.pn)
  store double %i.qi, ptr %i.pz, align 8, !tbaa !109
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.ml, double %i.qc) ; 3 uses
  store double %i.qj, ptr %i.qb, align 8, !tbaa !109
  %indvars.iv.next1562.1 = add nuw nsw i64 %indvars.iv1561, 2 ; 2 uses
  %niter3747.next.1 = add nuw i64 %niter3747, 2   ; 2 uses
  %niter3747.ncmp.1 = icmp eq i64 %niter3747.next.1, %unroll_iter3746
  br i1 %niter3747.ncmp.1, label %.loopexit.loopexit3727.unr-lcssa, label %.lr.ph1478, !llvm.loop !15

bb.i:                                             ; preds = %bb.c
  %i.qk = load double, ptr %4, align 8, !tbaa !109 ; 3 uses
  %i.ql = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 11 uses
  %i.qm = insertelement <4 x double> poison, double %i.qk, i64 0
  %i.qn = shufflevector <4 x double> %i.qm, <4 x double> poison, <4 x i32> zeroinitializer
  %i.qo = fmul <4 x double> %i.qn, %i.ql          ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !109 ; 5 uses
  %i.qr = fmul double %i.qk, %i.qq                ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !109 ; 5 uses
  %i.qu = fmul double %i.qk, %i.qt                ; 4 uses
  %i.qv = load i32, ptr %2, align 4, !tbaa !107   ; 4 uses
  %.not14371473 = icmp slt i32 %i.qv, 1
  br i1 %.not14371473, label %.loopexit, label %.lr.ph1475.lver.check

.lr.ph1475.lver.check:                            ; preds = %bb.i
  %i.qw = sext i32 %i.a to i64                    ; 4 uses
  %i.qx = add nuw i32 %i.qv, 1                    ; 2 uses
  %wide.trip.count1559 = zext i32 %i.qx to i64
  %ident.check3677.not = icmp eq i32 %i.a, 1
  br i1 %ident.check3677.not, label %.lr.ph1475.ph, label %.lr.ph1475.lver.orig.preheader

.lr.ph1475.lver.orig.preheader:                   ; preds = %.lr.ph1475.lver.check
  %i.qy = extractelement <4 x double> %i.ql, i64 0
  %i.qz = extractelement <4 x double> %i.ql, i64 2
  %i.ra = extractelement <4 x double> %i.ql, i64 3
  br label %.lr.ph1475.lver.orig

.lr.ph1475.lver.orig:                             ; preds = %.lr.ph1475.lver.orig.preheader, %.lr.ph1475.lver.orig
  %indvars.iv1556.lver.orig = phi i64 [ %indvars.iv.next1557.lver.orig, %.lr.ph1475.lver.orig ], [ 1, %.lr.ph1475.lver.orig.preheader ] ; 2 uses
  %i.rb = mul nsw i64 %indvars.iv1556.lver.orig, %i.qw
  %i.rc = getelementptr [8 x i8], ptr %i.c, i64 %i.rb ; 3 uses
  %i.rd = getelementptr i8, ptr %i.rc, i64 8      ; 2 uses
  %i.re = getelementptr i8, ptr %i.rc, i64 40     ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !109 ; 2 uses
  %i.rg = getelementptr i8, ptr %i.rc, i64 48     ; 2 uses
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !109 ; 2 uses
  %i.ri = load <4 x double>, ptr %i.rd, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3695 = fmul <4 x double> %i.ql, %i.ri
  %i.rj = extractelement <4 x double> %foldExtExtBinop3695, i64 1
  %i.rk = extractelement <4 x double> %i.ri, i64 0
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.qy, double %i.rk, double %i.rj)
  %i.rm = extractelement <4 x double> %i.ri, i64 2
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.qz, double %i.rm, double %i.rl)
  %i.ro = extractelement <4 x double> %i.ri, i64 3
  %i.rp = tail call double @llvm.fmuladd.f64(double %i.ra, double %i.ro, double %i.rn)
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.qq, double %i.rf, double %i.rp)
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.rh, double %i.rq)
  %i.rs = fneg double %i.rr                       ; 3 uses
  %i.rt = insertelement <4 x double> poison, double %i.rs, i64 0
  %i.ru = shufflevector <4 x double> %i.rt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.rv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ru, <4 x double> %i.qo, <4 x double> %i.ri)
  store <4 x double> %i.rv, ptr %i.rd, align 8, !tbaa !109
  %i.rw = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.qr, double %i.rf)
  store double %i.rw, ptr %i.re, align 8, !tbaa !109
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.qu, double %i.rh)
  store double %i.rx, ptr %i.rg, align 8, !tbaa !109
  %indvars.iv.next1557.lver.orig = add nuw nsw i64 %indvars.iv1556.lver.orig, 1 ; 2 uses
  %exitcond1560.not.lver.orig = icmp eq i64 %indvars.iv.next1557.lver.orig, %wide.trip.count1559
  br i1 %exitcond1560.not.lver.orig, label %.loopexit, label %.lr.ph1475.lver.orig, !llvm.loop !16

.lr.ph1475.ph:                                    ; preds = %.lr.ph1475.lver.check
  %scevgep3679 = getelementptr i8, ptr %5, i64 32
  %load_initial3680 = load double, ptr %scevgep3679, align 8 ; 2 uses
  %i.ry = extractelement <4 x double> %i.ql, i64 0 ; 3 uses
  %i.rz = extractelement <4 x double> %i.ql, i64 2 ; 3 uses
  %i.sa = extractelement <4 x double> %i.ql, i64 3 ; 3 uses
  %i.sb = zext nneg i32 %i.qv to i64              ; 2 uses
  %xtraiter = and i64 %i.sb, 1
  %i.sc = icmp eq i32 %i.qx, 2
  br i1 %i.sc, label %.lr.ph1475.epil.preheader, label %.lr.ph1475.ph.new

.lr.ph1475.ph.new:                                ; preds = %.lr.ph1475.ph
  %unroll_iter = and i64 %i.sb, 2147483646
  br label %.lr.ph1475

.lr.ph1475:                                       ; preds = %.lr.ph1475, %.lr.ph1475.ph.new
  %store_forwarded3681 = phi double [ %load_initial3680, %.lr.ph1475.ph.new ], [ %i.tu, %.lr.ph1475 ] ; 2 uses
  %indvars.iv1556 = phi i64 [ 1, %.lr.ph1475.ph.new ], [ %indvars.iv.next1557.1, %.lr.ph1475 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1475.ph.new ], [ %niter.next.1, %.lr.ph1475 ]
  %i.sd = mul nuw nsw i64 %indvars.iv1556, %i.qw
  %i.se = getelementptr [8 x i8], ptr %i.c, i64 %i.sd ; 3 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 8      ; 2 uses
  %i.sg = getelementptr i8, ptr %i.se, i64 40
  %i.sh = getelementptr i8, ptr %i.se, i64 48     ; 2 uses
  %i.si = load double, ptr %i.sh, align 8, !tbaa !109 ; 2 uses
  %i.sj = load <4 x double>, ptr %i.sf, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3697 = fmul <4 x double> %i.ql, %i.sj
  %i.sk = extractelement <4 x double> %foldExtExtBinop3697, i64 1
  %i.sl = extractelement <4 x double> %i.sj, i64 0
  %i.sm = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.sl, double %i.sk)
  %i.sn = extractelement <4 x double> %i.sj, i64 2
  %i.so = tail call double @llvm.fmuladd.f64(double %i.rz, double %i.sn, double %i.sm)
  %i.sp = extractelement <4 x double> %i.sj, i64 3
  %i.sq = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sp, double %i.so)
  %i.sr = tail call double @llvm.fmuladd.f64(double %i.qq, double %store_forwarded3681, double %i.sq)
  %i.ss = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.si, double %i.sr)
  %i.st = fneg double %i.ss                       ; 3 uses
  %i.su = insertelement <4 x double> poison, double %i.st, i64 0
  %i.sv = shufflevector <4 x double> %i.su, <4 x double> poison, <4 x i32> zeroinitializer
  %i.sw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sv, <4 x double> %i.qo, <4 x double> %i.sj)
  store <4 x double> %i.sw, ptr %i.sf, align 8, !tbaa !109
  %i.sx = tail call double @llvm.fmuladd.f64(double %i.st, double %i.qr, double %store_forwarded3681)
  store double %i.sx, ptr %i.sg, align 8, !tbaa !109
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.st, double %i.qu, double %i.si) ; 3 uses
  store double %i.sy, ptr %i.sh, align 8, !tbaa !109
  %indvars.iv.next1557 = add nuw nsw i64 %indvars.iv1556, 1
  %i.sz = mul nuw nsw i64 %indvars.iv.next1557, %i.qw
  %i.ta = getelementptr [8 x i8], ptr %i.c, i64 %i.sz ; 3 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 8      ; 2 uses
  %i.tc = getelementptr i8, ptr %i.ta, i64 40
  %i.td = getelementptr i8, ptr %i.ta, i64 48     ; 2 uses
  %i.te = load double, ptr %i.td, align 8, !tbaa !109 ; 2 uses
  %i.tf = load <4 x double>, ptr %i.tb, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3697.1 = fmul <4 x double> %i.ql, %i.tf
  %i.tg = extractelement <4 x double> %foldExtExtBinop3697.1, i64 1
  %i.th = extractelement <4 x double> %i.tf, i64 0
  %i.ti = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.th, double %i.tg)
  %i.tj = extractelement <4 x double> %i.tf, i64 2
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.rz, double %i.tj, double %i.ti)
  %i.tl = extractelement <4 x double> %i.tf, i64 3
  %i.tm = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.tl, double %i.tk)
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.qq, double %i.sy, double %i.tm)
  %i.to = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.te, double %i.tn)
  %i.tp = fneg double %i.to                       ; 3 uses
  %i.tq = insertelement <4 x double> poison, double %i.tp, i64 0
  %i.tr = shufflevector <4 x double> %i.tq, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ts = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tr, <4 x double> %i.qo, <4 x double> %i.tf)
  store <4 x double> %i.ts, ptr %i.tb, align 8, !tbaa !109
end_hunk_0
begin_hunk_1_@dlarfx_:bb.a
  %i.zn = tail call double @llvm.fmuladd.f64(double %i.yn, double %i.zm, double %i.zl)
  %i.zo = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.za, double %i.zn)
  %i.zp = tail call double @llvm.fmuladd.f64(double %i.yt, double %i.zc, double %i.zo)
  %i.zq = tail call double @llvm.fmuladd.f64(double %i.yu, double %store_forwarded3691, double %i.zp)
  %i.zr = tail call double @llvm.fmuladd.f64(double %i.yv, double %i.zf, double %i.zq)
  %i.zs = fneg double %i.zr                       ; 5 uses
  %i.zt = insertelement <4 x double> poison, double %i.zs, i64 0
  %i.zu = shufflevector <4 x double> %i.zt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.zv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.zu, <4 x double> %i.wx, <4 x double> %i.zg)
  store <4 x double> %i.zv, ptr %i.yy, align 8, !tbaa !109
  %i.zw = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yo, double %i.za)
  store double %i.zw, ptr %i.yz, align 8, !tbaa !109
  %i.zx = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yp, double %i.zc)
  store double %i.zx, ptr %i.zb, align 8, !tbaa !109
  %i.zy = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yq, double %store_forwarded3691)
  store double %i.zy, ptr %i.zd, align 8, !tbaa !109
  %i.zz = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yr, double %i.zf) ; 2 uses
  store double %i.zz, ptr %i.ze, align 8, !tbaa !109
  %indvars.iv.next1547 = add nuw nsw i64 %indvars.iv1546, 1 ; 2 uses
  %exitcond1550.not = icmp eq i64 %indvars.iv.next1547, %wide.trip.count1549
  br i1 %exitcond1550.not, label %.loopexit, label %.lr.ph1469, !llvm.loop !18

bb.l:                                             ; preds = %bb.c
  %i.aaa = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.aab = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.aac = insertelement <4 x double> poison, double %i.aaa, i64 0
  %i.aad = shufflevector <4 x double> %i.aac, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aae = fmul <4 x double> %i.aad, %i.aab
  %i.aaf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aag = load <4 x double>, ptr %i.aaf, align 8, !tbaa !109 ; 5 uses
  %i.aah = fmul <4 x double> %i.aad, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !109 ; 2 uses
  %i.aak = fmul double %i.aaa, %i.aaj
  %i.aal = load i32, ptr %2, align 4, !tbaa !107  ; 2 uses
  %.not14341464 = icmp slt i32 %i.aal, 1
  br i1 %.not14341464, label %.loopexit, label %.lr.ph1466.preheader

.lr.ph1466.preheader:                             ; preds = %bb.l
  %i.aam = sext i32 %i.a to i64
  %i.aan = add nuw i32 %i.aal, 1
  %wide.trip.count1544 = zext i32 %i.aan to i64
  %i.aao = extractelement <4 x double> %i.aab, i64 0
  %i.aap = extractelement <4 x double> %i.aab, i64 2
  %i.aaq = extractelement <4 x double> %i.aab, i64 3
  %i.aar = extractelement <4 x double> %i.aag, i64 0
  %i.aas = extractelement <4 x double> %i.aag, i64 1
  %i.aat = extractelement <4 x double> %i.aag, i64 2
  %i.aau = extractelement <4 x double> %i.aag, i64 3
  br label %.lr.ph1466

.lr.ph1466:                                       ; preds = %.lr.ph1466.preheader, %.lr.ph1466
  %indvars.iv1541 = phi i64 [ 1, %.lr.ph1466.preheader ], [ %indvars.iv.next1542, %.lr.ph1466 ] ; 2 uses
  %i.aav = mul nsw i64 %indvars.iv1541, %i.aam
  %i.aaw = getelementptr [8 x i8], ptr %i.c, i64 %i.aav ; 3 uses
  %i.aax = getelementptr i8, ptr %i.aaw, i64 8    ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aaw, i64 40   ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aaw, i64 72   ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !109 ; 2 uses
  %i.abb = load <4 x double>, ptr %i.aax, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3707 = fmul <4 x double> %i.aab, %i.abb
  %i.abc = extractelement <4 x double> %foldExtExtBinop3707, i64 1
  %i.abd = extractelement <4 x double> %i.abb, i64 0
  %i.abe = tail call double @llvm.fmuladd.f64(double %i.aao, double %i.abd, double %i.abc)
  %i.abf = extractelement <4 x double> %i.abb, i64 2
  %i.abg = tail call double @llvm.fmuladd.f64(double %i.aap, double %i.abf, double %i.abe)
  %i.abh = extractelement <4 x double> %i.abb, i64 3
  %i.abi = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.abh, double %i.abg)
  %i.abj = load <4 x double>, ptr %i.aay, align 8, !tbaa !109 ; 5 uses
  %i.abk = extractelement <4 x double> %i.abj, i64 0
  %i.abl = tail call double @llvm.fmuladd.f64(double %i.aar, double %i.abk, double %i.abi)
  %i.abm = extractelement <4 x double> %i.abj, i64 1
  %i.abn = tail call double @llvm.fmuladd.f64(double %i.aas, double %i.abm, double %i.abl)
  %i.abo = extractelement <4 x double> %i.abj, i64 2
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.aat, double %i.abo, double %i.abn)
  %i.abq = extractelement <4 x double> %i.abj, i64 3
  %i.abr = tail call double @llvm.fmuladd.f64(double %i.aau, double %i.abq, double %i.abp)
  %i.abs = tail call double @llvm.fmuladd.f64(double %i.aaj, double %i.aba, double %i.abr)
  %i.abt = fneg double %i.abs                     ; 2 uses
  %i.abu = insertelement <4 x double> poison, double %i.abt, i64 0
  %i.abv = shufflevector <4 x double> %i.abu, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abv, <4 x double> %i.aae, <4 x double> %i.abb)
  store <4 x double> %i.abw, ptr %i.aax, align 8, !tbaa !109
  %i.abx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abv, <4 x double> %i.aah, <4 x double> %i.abj)
  store <4 x double> %i.abx, ptr %i.aay, align 8, !tbaa !109
  %i.aby = tail call double @llvm.fmuladd.f64(double %i.abt, double %i.aak, double %i.aba)
  store double %i.aby, ptr %i.aaz, align 8, !tbaa !109
  %indvars.iv.next1542 = add nuw nsw i64 %indvars.iv1541, 1 ; 2 uses
  %exitcond1545.not = icmp eq i64 %indvars.iv.next1542, %wide.trip.count1544
  br i1 %exitcond1545.not, label %.loopexit, label %.lr.ph1466, !llvm.loop !19

bb.m:                                             ; preds = %bb.c
  %i.abz = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.aca = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.acb = insertelement <4 x double> poison, double %i.abz, i64 0
  %i.acc = shufflevector <4 x double> %i.acb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acd = fmul <4 x double> %i.acc, %i.aca
  %i.ace = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.acf = load <4 x double>, ptr %i.ace, align 8, !tbaa !109 ; 5 uses
  %i.acg = fmul <4 x double> %i.acc, %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aci = load <2 x double>, ptr %i.ach, align 8, !tbaa !109 ; 3 uses
  %i.acj = insertelement <2 x double> poison, double %i.abz, i64 0
  %i.ack = shufflevector <2 x double> %i.acj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acl = fmul <2 x double> %i.ack, %i.aci
  %i.acm = load i32, ptr %2, align 4, !tbaa !107  ; 2 uses
  %.not14331462 = icmp slt i32 %i.acm, 1
  br i1 %.not14331462, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.acn = sext i32 %i.a to i64
  %i.aco = add nuw i32 %i.acm, 1
  %wide.trip.count = zext i32 %i.aco to i64
  %i.acp = extractelement <4 x double> %i.aca, i64 0
  %i.acq = extractelement <4 x double> %i.aca, i64 2
  %i.acr = extractelement <4 x double> %i.aca, i64 3
  %i.acs = extractelement <4 x double> %i.acf, i64 0
  %i.act = extractelement <4 x double> %i.acf, i64 1
  %i.acu = extractelement <4 x double> %i.acf, i64 2
  %i.acv = extractelement <4 x double> %i.acf, i64 3
  %i.acw = extractelement <2 x double> %i.aci, i64 0
  %i.acx = extractelement <2 x double> %i.aci, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.acy = mul nsw i64 %indvars.iv, %i.acn
  %i.acz = getelementptr [8 x i8], ptr %i.c, i64 %i.acy ; 3 uses
  %i.ada = getelementptr i8, ptr %i.acz, i64 8    ; 2 uses
  %i.adb = getelementptr i8, ptr %i.acz, i64 40   ; 2 uses
  %i.adc = getelementptr i8, ptr %i.acz, i64 72   ; 2 uses
  %i.add = load <4 x double>, ptr %i.ada, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3709 = fmul <4 x double> %i.aca, %i.add
  %i.ade = extractelement <4 x double> %foldExtExtBinop3709, i64 1
  %i.adf = extractelement <4 x double> %i.add, i64 0
  %i.adg = tail call double @llvm.fmuladd.f64(double %i.acp, double %i.adf, double %i.ade)
  %i.adh = extractelement <4 x double> %i.add, i64 2
  %i.adi = tail call double @llvm.fmuladd.f64(double %i.acq, double %i.adh, double %i.adg)
  %i.adj = extractelement <4 x double> %i.add, i64 3
  %i.adk = tail call double @llvm.fmuladd.f64(double %i.acr, double %i.adj, double %i.adi)
  %i.adl = load <4 x double>, ptr %i.adb, align 8, !tbaa !109 ; 5 uses
  %i.adm = extractelement <4 x double> %i.adl, i64 0
  %i.adn = tail call double @llvm.fmuladd.f64(double %i.acs, double %i.adm, double %i.adk)
  %i.ado = extractelement <4 x double> %i.adl, i64 1
  %i.adp = tail call double @llvm.fmuladd.f64(double %i.act, double %i.ado, double %i.adn)
  %i.adq = extractelement <4 x double> %i.adl, i64 2
  %i.adr = tail call double @llvm.fmuladd.f64(double %i.acu, double %i.adq, double %i.adp)
  %i.ads = extractelement <4 x double> %i.adl, i64 3
  %i.adt = tail call double @llvm.fmuladd.f64(double %i.acv, double %i.ads, double %i.adr)
  %i.adu = load <2 x double>, ptr %i.adc, align 8, !tbaa !109 ; 3 uses
  %i.adv = extractelement <2 x double> %i.adu, i64 0
  %i.adw = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.adv, double %i.adt)
  %i.adx = extractelement <2 x double> %i.adu, i64 1
  %i.ady = tail call double @llvm.fmuladd.f64(double %i.acx, double %i.adx, double %i.adw)
  %i.adz = fneg double %i.ady                     ; 2 uses
  %i.aea = insertelement <4 x double> poison, double %i.adz, i64 0
  %i.aeb = shufflevector <4 x double> %i.aea, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aec = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeb, <4 x double> %i.acd, <4 x double> %i.add)
  store <4 x double> %i.aec, ptr %i.ada, align 8, !tbaa !109
  %i.aed = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeb, <4 x double> %i.acg, <4 x double> %i.adl)
  store <4 x double> %i.aed, ptr %i.adb, align 8, !tbaa !109
  %i.aee = insertelement <2 x double> poison, double %i.adz, i64 0
  %i.aef = shufflevector <2 x double> %i.aee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aef, <2 x double> %i.acl, <2 x double> %i.adu)
  store <2 x double> %i.aeg, ptr %i.adc, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

bb.n:                                             ; preds = %bb.b
  %i.aeh = load i32, ptr %2, align 4, !tbaa !107
  switch i32 %i.aeh, label %.loopexit.sink.split [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 10, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n
  %i.aei = load double, ptr %4, align 8, !tbaa !109
  %i.aej = load double, ptr %3, align 8, !tbaa !109 ; 2 uses
  %i.aek = fneg double %i.aej
  %i.ael = fmul double %i.aei, %i.aek
  %i.aem = tail call double @llvm.fmuladd.f64(double %i.ael, double %i.aej, double 1.000000e+00) ; 3 uses
  %i.aen = load i32, ptr %1, align 4, !tbaa !107  ; 5 uses
  %.not14321518 = icmp slt i32 %i.aen, 1
  br i1 %.not14321518, label %.loopexit, label %iter.check3645

iter.check3645:                                   ; preds = %bb.o
  %i.aeo = sext i32 %i.a to i64
  %i.aep = add nuw i32 %i.aen, 1
  %wide.trip.count1634 = zext i32 %i.aep to i64
  %invariant.gep1780 = getelementptr [8 x i8], ptr %i.c, i64 %i.aeo ; 3 uses
  %i.aeq = zext nneg i32 %i.aen to i64            ; 5 uses
  %min.iters.check3629 = icmp ult i32 %i.aen, 4
  br i1 %min.iters.check3629, label %.lr.ph1520.preheader, label %vector.main.loop.iter.check3630

vector.main.loop.iter.check3630:                  ; preds = %iter.check3645
  %min.iters.check3631 = icmp ult i32 %i.aen, 16
  br i1 %min.iters.check3631, label %vec.epilog.ph3649, label %vector.ph3632

vector.ph3632:                                    ; preds = %vector.main.loop.iter.check3630
  %i.aer = and i64 %i.aeq, 12
  %n.vec3633 = and i64 %i.aeq, 2147483632         ; 4 uses
  %i.aes = or disjoint i64 %n.vec3633, 1
  %broadcast.splatinsert3634 = insertelement <4 x double> poison, double %i.aem, i64 0
  %broadcast.splat3635 = shufflevector <4 x double> %broadcast.splatinsert3634, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3636

vector.body3636:                                  ; preds = %vector.ph3632, %vector.body3636
  %index3637 = phi i64 [ 0, %vector.ph3632 ], [ %index.next3642, %vector.body3636 ] ; 2 uses
  %i.aet = getelementptr [8 x i8], ptr %invariant.gep1780, i64 %index3637 ; 4 uses
  %i.aeu = getelementptr i8, ptr %i.aet, i64 8    ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aet, i64 40   ; 2 uses
  %i.aew = getelementptr i8, ptr %i.aet, i64 72   ; 2 uses
  %i.aex = getelementptr i8, ptr %i.aet, i64 104  ; 2 uses
  %wide.load3638 = load <4 x double>, ptr %i.aeu, align 8, !tbaa !109
  %wide.load3639 = load <4 x double>, ptr %i.aev, align 8, !tbaa !109
  %wide.load3640 = load <4 x double>, ptr %i.aew, align 8, !tbaa !109
  %wide.load3641 = load <4 x double>, ptr %i.aex, align 8, !tbaa !109
  %i.aey = fmul <4 x double> %broadcast.splat3635, %wide.load3638
  %i.aez = fmul <4 x double> %broadcast.splat3635, %wide.load3639
  %i.afa = fmul <4 x double> %broadcast.splat3635, %wide.load3640
  %i.afb = fmul <4 x double> %broadcast.splat3635, %wide.load3641
  store <4 x double> %i.aey, ptr %i.aeu, align 8, !tbaa !109
  store <4 x double> %i.aez, ptr %i.aev, align 8, !tbaa !109
  store <4 x double> %i.afa, ptr %i.aew, align 8, !tbaa !109
  store <4 x double> %i.afb, ptr %i.aex, align 8, !tbaa !109
  %index.next3642 = add nuw i64 %index3637, 16    ; 2 uses
  %i.afc = icmp eq i64 %index.next3642, %n.vec3633
  br i1 %i.afc, label %middle.block3643, label %vector.body3636, !llvm.loop !21

middle.block3643:                                 ; preds = %vector.body3636
  %cmp.n3644 = icmp eq i64 %n.vec3633, %i.aeq
  br i1 %cmp.n3644, label %.loopexit, label %vec.epilog.iter.check3646

vec.epilog.iter.check3646:                        ; preds = %middle.block3643
  %min.epilog.iters.check3648 = icmp eq i64 %i.aer, 0
  br i1 %min.epilog.iters.check3648, label %.lr.ph1520.preheader, label %vec.epilog.ph3649, !prof !113

vec.epilog.ph3649:                                ; preds = %vector.main.loop.iter.check3630, %vec.epilog.iter.check3646
  %vec.epilog.resume.val3650 = phi i64 [ %n.vec3633, %vec.epilog.iter.check3646 ], [ 0, %vector.main.loop.iter.check3630 ]
  %n.vec3651 = and i64 %i.aeq, 2147483644         ; 3 uses
  %i.afd = or disjoint i64 %n.vec3651, 1
  %broadcast.splatinsert3652 = insertelement <4 x double> poison, double %i.aem, i64 0
  %broadcast.splat3653 = shufflevector <4 x double> %broadcast.splatinsert3652, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3654

vec.epilog.vector.body3654:                       ; preds = %vec.epilog.vector.body3654, %vec.epilog.ph3649
  %index3655 = phi i64 [ %vec.epilog.resume.val3650, %vec.epilog.ph3649 ], [ %index.next3657, %vec.epilog.vector.body3654 ] ; 2 uses
  %i.afe = getelementptr [8 x i8], ptr %invariant.gep1780, i64 %index3655
  %i.aff = getelementptr i8, ptr %i.afe, i64 8    ; 2 uses
  %wide.load3656 = load <4 x double>, ptr %i.aff, align 8, !tbaa !109
  %i.afg = fmul <4 x double> %broadcast.splat3653, %wide.load3656
  store <4 x double> %i.afg, ptr %i.aff, align 8, !tbaa !109
  %index.next3657 = add nuw i64 %index3655, 4     ; 2 uses
  %i.afh = icmp eq i64 %index.next3657, %n.vec3651
  br i1 %i.afh, label %vec.epilog.middle.block3658, label %vec.epilog.vector.body3654, !llvm.loop !22

vec.epilog.middle.block3658:                      ; preds = %vec.epilog.vector.body3654
  %cmp.n3659 = icmp eq i64 %n.vec3651, %i.aeq
  br i1 %cmp.n3659, label %.loopexit, label %.lr.ph1520.preheader

.lr.ph1520.preheader:                             ; preds = %iter.check3645, %vec.epilog.iter.check3646, %vec.epilog.middle.block3658
  %indvars.iv1631.ph = phi i64 [ 1, %iter.check3645 ], [ %i.aes, %vec.epilog.iter.check3646 ], [ %i.afd, %vec.epilog.middle.block3658 ]
  br label %.lr.ph1520

.lr.ph1520:                                       ; preds = %.lr.ph1520.preheader, %.lr.ph1520
  %indvars.iv1631 = phi i64 [ %indvars.iv.next1632, %.lr.ph1520 ], [ %indvars.iv1631.ph, %.lr.ph1520.preheader ] ; 2 uses
  %gep1781 = getelementptr [8 x i8], ptr %invariant.gep1780, i64 %indvars.iv1631 ; 2 uses
  %i.afi = load double, ptr %gep1781, align 8, !tbaa !109
  %i.afj = fmul double %i.aem, %i.afi
  store double %i.afj, ptr %gep1781, align 8, !tbaa !109
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv1631, 1 ; 2 uses
  %exitcond1635.not = icmp eq i64 %indvars.iv.next1632, %wide.trip.count1634
  br i1 %exitcond1635.not, label %.loopexit, label %.lr.ph1520, !llvm.loop !23

bb.p:                                             ; preds = %bb.n
  %i.afk = load double, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.afl = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.afm = fmul double %i.afk, %i.afl             ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !109 ; 5 uses
  %i.afp = fmul double %i.afl, %i.afo             ; 4 uses
  %i.afq = load i32, ptr %1, align 4, !tbaa !107  ; 6 uses
  %.not14311515 = icmp slt i32 %i.afq, 1
  br i1 %.not14311515, label %.loopexit, label %.lr.ph1517

.lr.ph1517:                                       ; preds = %bb.p
  %i.afr = shl i32 %i.a, 1
  %i.afs = sext i32 %i.a to i64                   ; 2 uses
  %i.aft = sext i32 %i.afr to i64                 ; 2 uses
  %i.afu = add nuw i32 %i.afq, 1
  %wide.trip.count1629 = zext i32 %i.afu to i64   ; 2 uses
  %invariant.gep1776 = getelementptr [8 x i8], ptr %i.c, i64 %i.afs ; 4 uses
  %invariant.gep1778 = getelementptr [8 x i8], ptr %i.c, i64 %i.aft ; 4 uses
  %i.afv = zext nneg i32 %i.afq to i64            ; 2 uses
  %min.iters.check3601 = icmp ult i32 %i.afq, 12
  br i1 %min.iters.check3601, label %scalar.ph3600.preheader, label %vector.memcheck3602

vector.memcheck3602:                              ; preds = %.lr.ph1517
  %i.afw = or i64 %i.afs, %i.b
  %i.afx = shl nsw i64 %i.afw, 3                  ; 2 uses
  %i.afy = getelementptr i8, ptr %5, i64 %i.afx
  %i.afz = getelementptr i8, ptr %i.afy, i64 8
  %i.aga = shl nuw nsw i64 %wide.trip.count1629, 3 ; 2 uses
  %i.agb = getelementptr i8, ptr %5, i64 %i.afx
  %i.agc = getelementptr i8, ptr %i.agb, i64 %i.aga
  %i.agd = add nsw i64 %i.aft, %i.b
  %i.age = shl nsw i64 %i.agd, 3                  ; 2 uses
  %i.agf = getelementptr i8, ptr %5, i64 %i.age
  %i.agg = getelementptr i8, ptr %i.agf, i64 8
  %i.agh = getelementptr i8, ptr %5, i64 %i.age
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.aga
  %bound03603 = icmp ult ptr %i.afz, %i.agi
  %bound13604 = icmp ult ptr %i.agg, %i.agc
  %found.conflict3605 = and i1 %bound03603, %bound13604
  br i1 %found.conflict3605, label %scalar.ph3600.preheader, label %vector.ph3606

vector.ph3606:                                    ; preds = %vector.memcheck3602
  %n.vec3607 = and i64 %i.afv, 2147483640         ; 3 uses
  %i.agj = or disjoint i64 %n.vec3607, 1
  %broadcast.splatinsert3608 = insertelement <4 x double> poison, double %i.afo, i64 0
  %broadcast.splat3609 = shufflevector <4 x double> %broadcast.splatinsert3608, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3610 = insertelement <4 x double> poison, double %i.afk, i64 0
  %broadcast.splat3611 = shufflevector <4 x double> %broadcast.splatinsert3610, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3612 = insertelement <4 x double> poison, double %i.afm, i64 0
  %broadcast.splat3613 = shufflevector <4 x double> %broadcast.splatinsert3612, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3614 = insertelement <4 x double> poison, double %i.afp, i64 0
  %broadcast.splat3615 = shufflevector <4 x double> %broadcast.splatinsert3614, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body3616

vector.body3616:                                  ; preds = %vector.body3616, %vector.ph3606
  %index3617 = phi i64 [ 0, %vector.ph3606 ], [ %index.next3624, %vector.body3616 ] ; 2 uses
  %i.agk = or disjoint i64 %index3617, 1          ; 2 uses
  %i.agl = getelementptr [8 x i8], ptr %invariant.gep1776, i64 %i.agk ; 3 uses
  %i.agm = getelementptr i8, ptr %i.agl, i64 32   ; 2 uses
  %wide.load3618 = load <4 x double>, ptr %i.agl, align 8, !tbaa !109, !alias.scope !115, !noalias !116 ; 2 uses
  %wide.load3619 = load <4 x double>, ptr %i.agm, align 8, !tbaa !109, !alias.scope !115, !noalias !116 ; 2 uses
  %i.agn = getelementptr [8 x i8], ptr %invariant.gep1778, i64 %i.agk ; 4 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 32   ; 3 uses
  %wide.load3620 = load <4 x double>, ptr %i.agn, align 8, !tbaa !109, !alias.scope !116
  %wide.load3621 = load <4 x double>, ptr %i.ago, align 8, !tbaa !109, !alias.scope !116
  %i.agp = fmul <4 x double> %broadcast.splat3609, %wide.load3620
  %i.agq = fmul <4 x double> %broadcast.splat3609, %wide.load3621
  %i.agr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3611, <4 x double> %wide.load3618, <4 x double> %i.agp)
  %i.ags = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3611, <4 x double> %wide.load3619, <4 x double> %i.agq)
  %i.agt = fneg <4 x double> %i.agr               ; 2 uses
  %i.agu = fneg <4 x double> %i.ags               ; 2 uses
  %i.agv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agt, <4 x double> %broadcast.splat3613, <4 x double> %wide.load3618)
  %i.agw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agu, <4 x double> %broadcast.splat3613, <4 x double> %wide.load3619)
  store <4 x double> %i.agv, ptr %i.agl, align 8, !tbaa !109, !alias.scope !115, !noalias !116
  store <4 x double> %i.agw, ptr %i.agm, align 8, !tbaa !109, !alias.scope !115, !noalias !116
  %wide.load3622 = load <4 x double>, ptr %i.agn, align 8, !tbaa !109, !alias.scope !116
  %wide.load3623 = load <4 x double>, ptr %i.ago, align 8, !tbaa !109, !alias.scope !116
  %i.agx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agt, <4 x double> %broadcast.splat3615, <4 x double> %wide.load3622)
  %i.agy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agu, <4 x double> %broadcast.splat3615, <4 x double> %wide.load3623)
  store <4 x double> %i.agx, ptr %i.agn, align 8, !tbaa !109, !alias.scope !116
  store <4 x double> %i.agy, ptr %i.ago, align 8, !tbaa !109, !alias.scope !116
  %index.next3624 = add nuw i64 %index3617, 8     ; 2 uses
  %i.agz = icmp eq i64 %index.next3624, %n.vec3607
  br i1 %i.agz, label %middle.block3625, label %vector.body3616, !llvm.loop !27

middle.block3625:                                 ; preds = %vector.body3616
  %cmp.n3626 = icmp eq i64 %n.vec3607, %i.afv
  br i1 %cmp.n3626, label %.loopexit, label %scalar.ph3600.preheader

scalar.ph3600.preheader:                          ; preds = %vector.memcheck3602, %.lr.ph1517, %middle.block3625
  %indvars.iv1626.ph = phi i64 [ 1, %vector.memcheck3602 ], [ 1, %.lr.ph1517 ], [ %i.agj, %middle.block3625 ] ; 5 uses
  %i.aha = zext nneg i32 %i.afq to i64
  %i.ahb = and i32 %i.afq, 1
  %lcmp.mod3785.not = icmp eq i32 %i.ahb, 0
  br i1 %lcmp.mod3785.not, label %scalar.ph3600.prol.loopexit, label %scalar.ph3600.prol

scalar.ph3600.prol:                               ; preds = %scalar.ph3600.preheader
  %gep1777.prol = getelementptr [8 x i8], ptr %invariant.gep1776, i64 %indvars.iv1626.ph ; 2 uses
  %i.ahc = load double, ptr %gep1777.prol, align 8, !tbaa !109 ; 2 uses
  %gep1779.prol = getelementptr [8 x i8], ptr %invariant.gep1778, i64 %indvars.iv1626.ph ; 3 uses
  %i.ahd = load double, ptr %gep1779.prol, align 8, !tbaa !109
  %i.ahe = fmul double %i.afo, %i.ahd
  %i.ahf = tail call double @llvm.fmuladd.f64(double %i.afk, double %i.ahc, double %i.ahe)
  %i.ahg = fneg double %i.ahf                     ; 2 uses
  %i.ahh = tail call double @llvm.fmuladd.f64(double %i.ahg, double %i.afm, double %i.ahc)
  store double %i.ahh, ptr %gep1777.prol, align 8, !tbaa !109
  %i.ahi = load double, ptr %gep1779.prol, align 8, !tbaa !109
  %i.ahj = tail call double @llvm.fmuladd.f64(double %i.ahg, double %i.afp, double %i.ahi)
  store double %i.ahj, ptr %gep1779.prol, align 8, !tbaa !109
  %indvars.iv.next1627.prol = add nuw nsw i64 %indvars.iv1626.ph, 1
  br label %scalar.ph3600.prol.loopexit

scalar.ph3600.prol.loopexit:                      ; preds = %scalar.ph3600.prol, %scalar.ph3600.preheader
  %indvars.iv1626.unr = phi i64 [ %indvars.iv1626.ph, %scalar.ph3600.preheader ], [ %indvars.iv.next1627.prol, %scalar.ph3600.prol ]
  %i.ahk = icmp eq i64 %indvars.iv1626.ph, %i.aha
  br i1 %i.ahk, label %.loopexit, label %scalar.ph3600

scalar.ph3600:                                    ; preds = %scalar.ph3600.prol.loopexit, %scalar.ph3600
  %indvars.iv1626 = phi i64 [ %indvars.iv.next1627.1, %scalar.ph3600 ], [ %indvars.iv1626.unr, %scalar.ph3600.prol.loopexit ] ; 4 uses
  %gep1777 = getelementptr [8 x i8], ptr %invariant.gep1776, i64 %indvars.iv1626 ; 2 uses
  %i.ahl = load double, ptr %gep1777, align 8, !tbaa !109 ; 2 uses
  %gep1779 = getelementptr [8 x i8], ptr %invariant.gep1778, i64 %indvars.iv1626 ; 3 uses
  %i.ahm = load double, ptr %gep1779, align 8, !tbaa !109
  %i.ahn = fmul double %i.afo, %i.ahm
  %i.aho = tail call double @llvm.fmuladd.f64(double %i.afk, double %i.ahl, double %i.ahn)
  %i.ahp = fneg double %i.aho                     ; 2 uses
  %i.ahq = tail call double @llvm.fmuladd.f64(double %i.ahp, double %i.afm, double %i.ahl)
  store double %i.ahq, ptr %gep1777, align 8, !tbaa !109
  %i.ahr = load double, ptr %gep1779, align 8, !tbaa !109
  %i.ahs = tail call double @llvm.fmuladd.f64(double %i.ahp, double %i.afp, double %i.ahr)
  store double %i.ahs, ptr %gep1779, align 8, !tbaa !109
  %indvars.iv.next1627 = add nuw nsw i64 %indvars.iv1626, 1 ; 2 uses
  %gep1777.1 = getelementptr [8 x i8], ptr %invariant.gep1776, i64 %indvars.iv.next1627 ; 2 uses
  %i.aht = load double, ptr %gep1777.1, align 8, !tbaa !109 ; 2 uses
  %gep1779.1 = getelementptr [8 x i8], ptr %invariant.gep1778, i64 %indvars.iv.next1627 ; 3 uses
  %i.ahu = load double, ptr %gep1779.1, align 8, !tbaa !109
  %i.ahv = fmul double %i.afo, %i.ahu
  %i.ahw = tail call double @llvm.fmuladd.f64(double %i.afk, double %i.aht, double %i.ahv)
  %i.ahx = fneg double %i.ahw                     ; 2 uses
  %i.ahy = tail call double @llvm.fmuladd.f64(double %i.ahx, double %i.afm, double %i.aht)
  store double %i.ahy, ptr %gep1777.1, align 8, !tbaa !109
  %i.ahz = load double, ptr %gep1779.1, align 8, !tbaa !109
  %i.aia = tail call double @llvm.fmuladd.f64(double %i.ahx, double %i.afp, double %i.ahz)
  store double %i.aia, ptr %gep1779.1, align 8, !tbaa !109
  %indvars.iv.next1627.1 = add nuw nsw i64 %indvars.iv1626, 2 ; 2 uses
  %exitcond1630.not.1 = icmp eq i64 %indvars.iv.next1627.1, %wide.trip.count1629
  br i1 %exitcond1630.not.1, label %.loopexit, label %scalar.ph3600, !llvm.loop !28

bb.q:                                             ; preds = %bb.n
  %i.aib = load double, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.aic = load double, ptr %4, align 8, !tbaa !109 ; 3 uses
  %i.aid = fmul double %i.aib, %i.aic             ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !109 ; 5 uses
  %i.aig = fmul double %i.aic, %i.aif             ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !109 ; 5 uses
  %i.aij = fmul double %i.aic, %i.aii             ; 4 uses
  %i.aik = load i32, ptr %1, align 4, !tbaa !107  ; 6 uses
  %.not14301512 = icmp slt i32 %i.aik, 1
  br i1 %.not14301512, label %.loopexit, label %.lr.ph1514

.lr.ph1514:                                       ; preds = %bb.q
  %i.ail = shl i32 %i.a, 1
  %i.aim = mul nsw i32 %i.a, 3
  %i.ain = sext i32 %i.a to i64                   ; 2 uses
  %i.aio = sext i32 %i.ail to i64                 ; 2 uses
  %i.aip = sext i32 %i.aim to i64                 ; 2 uses
  %i.aiq = add nuw i32 %i.aik, 1
  %wide.trip.count1624 = zext i32 %i.aiq to i64   ; 2 uses
  %invariant.gep1770 = getelementptr [8 x i8], ptr %i.c, i64 %i.ain ; 4 uses
  %invariant.gep1772 = getelementptr [8 x i8], ptr %i.c, i64 %i.aio ; 4 uses
  %invariant.gep1774 = getelementptr [8 x i8], ptr %i.c, i64 %i.aip ; 4 uses
  %i.air = zext nneg i32 %i.aik to i64            ; 2 uses
  %min.iters.check3555 = icmp ult i32 %i.aik, 16
  br i1 %min.iters.check3555, label %scalar.ph3554.preheader, label %vector.memcheck3556

vector.memcheck3556:                              ; preds = %.lr.ph1514
  %i.ais = or i64 %i.ain, %i.b
  %i.ait = shl nsw i64 %i.ais, 3                  ; 2 uses
  %i.aiu = getelementptr i8, ptr %5, i64 %i.ait
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 8    ; 2 uses
  %i.aiw = shl nuw nsw i64 %wide.trip.count1624, 3 ; 3 uses
  %i.aix = getelementptr i8, ptr %5, i64 %i.ait
  %i.aiy = getelementptr i8, ptr %i.aix, i64 %i.aiw ; 2 uses
  %i.aiz = add nsw i64 %i.aio, %i.b
  %i.aja = shl nsw i64 %i.aiz, 3                  ; 2 uses
  %i.ajb = getelementptr i8, ptr %5, i64 %i.aja
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 8    ; 2 uses
  %i.ajd = getelementptr i8, ptr %5, i64 %i.aja
  %i.aje = getelementptr i8, ptr %i.ajd, i64 %i.aiw ; 2 uses
  %i.ajf = add nsw i64 %i.aip, %i.b
  %i.ajg = shl nsw i64 %i.ajf, 3                  ; 2 uses
  %i.ajh = getelementptr i8, ptr %5, i64 %i.ajg
  %i.aji = getelementptr i8, ptr %i.ajh, i64 8    ; 2 uses
  %i.ajj = getelementptr i8, ptr %5, i64 %i.ajg
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 %i.aiw ; 2 uses
  %bound03557 = icmp ult ptr %i.aiv, %i.aje
  %bound13558 = icmp ult ptr %i.ajc, %i.aiy
  %found.conflict3559 = and i1 %bound03557, %bound13558
  %bound03560 = icmp ult ptr %i.aiv, %i.ajk
  %bound13561 = icmp ult ptr %i.aji, %i.aiy
  %found.conflict3562 = and i1 %bound03560, %bound13561
  %conflict.rdx3563 = or i1 %found.conflict3559, %found.conflict3562
  %bound03564 = icmp ult ptr %i.ajc, %i.ajk
  %bound13565 = icmp ult ptr %i.aji, %i.aje
  %found.conflict3566 = and i1 %bound03564, %bound13565
  %conflict.rdx3567 = or i1 %conflict.rdx3563, %found.conflict3566
  br i1 %conflict.rdx3567, label %scalar.ph3554.preheader, label %vector.ph3568

vector.ph3568:                                    ; preds = %vector.memcheck3556
  %n.vec3569 = and i64 %i.air, 2147483644         ; 3 uses
  %i.ajl = or disjoint i64 %n.vec3569, 1
  %broadcast.splatinsert3570 = insertelement <4 x double> poison, double %i.aif, i64 0
  %broadcast.splat3571 = shufflevector <4 x double> %broadcast.splatinsert3570, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3572 = insertelement <4 x double> poison, double %i.aib, i64 0
  %broadcast.splat3573 = shufflevector <4 x double> %broadcast.splatinsert3572, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3574 = insertelement <4 x double> poison, double %i.aii, i64 0
  %broadcast.splat3575 = shufflevector <4 x double> %broadcast.splatinsert3574, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3576 = insertelement <4 x double> poison, double %i.aid, i64 0
  %broadcast.splat3577 = shufflevector <4 x double> %broadcast.splatinsert3576, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3578 = insertelement <4 x double> poison, double %i.aig, i64 0
  %broadcast.splat3579 = shufflevector <4 x double> %broadcast.splatinsert3578, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3580 = insertelement <4 x double> poison, double %i.aij, i64 0
  %broadcast.splat3581 = shufflevector <4 x double> %broadcast.splatinsert3580, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3582

vector.body3582:                                  ; preds = %vector.body3582, %vector.ph3568
  %index3583 = phi i64 [ 0, %vector.ph3568 ], [ %index.next3589, %vector.body3582 ] ; 2 uses
  %i.ajm = or disjoint i64 %index3583, 1          ; 3 uses
  %i.ajn = getelementptr [8 x i8], ptr %invariant.gep1770, i64 %i.ajm ; 2 uses
  %wide.load3584 = load <4 x double>, ptr %i.ajn, align 8, !tbaa !109, !alias.scope !117, !noalias !118 ; 2 uses
  %i.ajo = getelementptr [8 x i8], ptr %invariant.gep1772, i64 %i.ajm ; 3 uses
  %wide.load3585 = load <4 x double>, ptr %i.ajo, align 8, !tbaa !109, !alias.scope !119, !noalias !120
  %i.ajp = fmul <4 x double> %broadcast.splat3571, %wide.load3585
  %i.ajq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3573, <4 x double> %wide.load3584, <4 x double> %i.ajp)
  %i.ajr = getelementptr [8 x i8], ptr %invariant.gep1774, i64 %i.ajm ; 3 uses
  %wide.load3586 = load <4 x double>, ptr %i.ajr, align 8, !tbaa !109, !alias.scope !120
  %i.ajs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3575, <4 x double> %wide.load3586, <4 x double> %i.ajq)
  %i.ajt = fneg <4 x double> %i.ajs               ; 3 uses
  %i.aju = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ajt, <4 x double> %broadcast.splat3577, <4 x double> %wide.load3584)
  store <4 x double> %i.aju, ptr %i.ajn, align 8, !tbaa !109, !alias.scope !117, !noalias !118
  %wide.load3587 = load <4 x double>, ptr %i.ajo, align 8, !tbaa !109, !alias.scope !119, !noalias !120
  %i.ajv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ajt, <4 x double> %broadcast.splat3579, <4 x double> %wide.load3587)
  store <4 x double> %i.ajv, ptr %i.ajo, align 8, !tbaa !109, !alias.scope !119, !noalias !120
  %wide.load3588 = load <4 x double>, ptr %i.ajr, align 8, !tbaa !109, !alias.scope !120
  %i.ajw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ajt, <4 x double> %broadcast.splat3581, <4 x double> %wide.load3588)
  store <4 x double> %i.ajw, ptr %i.ajr, align 8, !tbaa !109, !alias.scope !120
  %index.next3589 = add nuw i64 %index3583, 4     ; 2 uses
  %i.ajx = icmp eq i64 %index.next3589, %n.vec3569
  br i1 %i.ajx, label %middle.block3590, label %vector.body3582, !llvm.loop !33

middle.block3590:                                 ; preds = %vector.body3582
  %cmp.n3591 = icmp eq i64 %n.vec3569, %i.air
  br i1 %cmp.n3591, label %.loopexit, label %scalar.ph3554.preheader

scalar.ph3554.preheader:                          ; preds = %vector.memcheck3556, %.lr.ph1514, %middle.block3590
  %indvars.iv1621.ph = phi i64 [ 1, %vector.memcheck3556 ], [ 1, %.lr.ph1514 ], [ %i.ajl, %middle.block3590 ] ; 6 uses
  %i.ajy = zext nneg i32 %i.aik to i64
  %i.ajz = and i32 %i.aik, 1
  %lcmp.mod3782.not = icmp eq i32 %i.ajz, 0
  br i1 %lcmp.mod3782.not, label %scalar.ph3554.prol.loopexit, label %scalar.ph3554.prol

scalar.ph3554.prol:                               ; preds = %scalar.ph3554.preheader
  %gep1771.prol = getelementptr [8 x i8], ptr %invariant.gep1770, i64 %indvars.iv1621.ph ; 2 uses
  %i.aka = load double, ptr %gep1771.prol, align 8, !tbaa !109 ; 2 uses
  %gep1773.prol = getelementptr [8 x i8], ptr %invariant.gep1772, i64 %indvars.iv1621.ph ; 3 uses
  %i.akb = load double, ptr %gep1773.prol, align 8, !tbaa !109
  %i.akc = fmul double %i.aif, %i.akb
  %i.akd = tail call double @llvm.fmuladd.f64(double %i.aib, double %i.aka, double %i.akc)
  %gep1775.prol = getelementptr [8 x i8], ptr %invariant.gep1774, i64 %indvars.iv1621.ph ; 3 uses
  %i.ake = load double, ptr %gep1775.prol, align 8, !tbaa !109
  %i.akf = tail call double @llvm.fmuladd.f64(double %i.aii, double %i.ake, double %i.akd)
  %i.akg = fneg double %i.akf                     ; 3 uses
  %i.akh = tail call double @llvm.fmuladd.f64(double %i.akg, double %i.aid, double %i.aka)
  store double %i.akh, ptr %gep1771.prol, align 8, !tbaa !109
  %i.aki = load double, ptr %gep1773.prol, align 8, !tbaa !109
  %i.akj = tail call double @llvm.fmuladd.f64(double %i.akg, double %i.aig, double %i.aki)
  store double %i.akj, ptr %gep1773.prol, align 8, !tbaa !109
  %i.akk = load double, ptr %gep1775.prol, align 8, !tbaa !109
  %i.akl = tail call double @llvm.fmuladd.f64(double %i.akg, double %i.aij, double %i.akk)
  store double %i.akl, ptr %gep1775.prol, align 8, !tbaa !109
  %indvars.iv.next1622.prol = add nuw nsw i64 %indvars.iv1621.ph, 1
  br label %scalar.ph3554.prol.loopexit

scalar.ph3554.prol.loopexit:                      ; preds = %scalar.ph3554.prol, %scalar.ph3554.preheader
  %indvars.iv1621.unr = phi i64 [ %indvars.iv1621.ph, %scalar.ph3554.preheader ], [ %indvars.iv.next1622.prol, %scalar.ph3554.prol ]
  %i.akm = icmp eq i64 %indvars.iv1621.ph, %i.ajy
  br i1 %i.akm, label %.loopexit, label %scalar.ph3554

scalar.ph3554:                                    ; preds = %scalar.ph3554.prol.loopexit, %scalar.ph3554
  %indvars.iv1621 = phi i64 [ %indvars.iv.next1622.1, %scalar.ph3554 ], [ %indvars.iv1621.unr, %scalar.ph3554.prol.loopexit ] ; 5 uses
  %gep1771 = getelementptr [8 x i8], ptr %invariant.gep1770, i64 %indvars.iv1621 ; 2 uses
  %i.akn = load double, ptr %gep1771, align 8, !tbaa !109 ; 2 uses
  %gep1773 = getelementptr [8 x i8], ptr %invariant.gep1772, i64 %indvars.iv1621 ; 3 uses
  %i.ako = load double, ptr %gep1773, align 8, !tbaa !109
  %i.akp = fmul double %i.aif, %i.ako
  %i.akq = tail call double @llvm.fmuladd.f64(double %i.aib, double %i.akn, double %i.akp)
  %gep1775 = getelementptr [8 x i8], ptr %invariant.gep1774, i64 %indvars.iv1621 ; 3 uses
  %i.akr = load double, ptr %gep1775, align 8, !tbaa !109
  %i.aks = tail call double @llvm.fmuladd.f64(double %i.aii, double %i.akr, double %i.akq)
  %i.akt = fneg double %i.aks                     ; 3 uses
  %i.aku = tail call double @llvm.fmuladd.f64(double %i.akt, double %i.aid, double %i.akn)
  store double %i.aku, ptr %gep1771, align 8, !tbaa !109
  %i.akv = load double, ptr %gep1773, align 8, !tbaa !109
  %i.akw = tail call double @llvm.fmuladd.f64(double %i.akt, double %i.aig, double %i.akv)
  store double %i.akw, ptr %gep1773, align 8, !tbaa !109
  %i.akx = load double, ptr %gep1775, align 8, !tbaa !109
  %i.aky = tail call double @llvm.fmuladd.f64(double %i.akt, double %i.aij, double %i.akx)
  store double %i.aky, ptr %gep1775, align 8, !tbaa !109
  %indvars.iv.next1622 = add nuw nsw i64 %indvars.iv1621, 1 ; 3 uses
  %gep1771.1 = getelementptr [8 x i8], ptr %invariant.gep1770, i64 %indvars.iv.next1622 ; 2 uses
  %i.akz = load double, ptr %gep1771.1, align 8, !tbaa !109 ; 2 uses
  %gep1773.1 = getelementptr [8 x i8], ptr %invariant.gep1772, i64 %indvars.iv.next1622 ; 3 uses
  %i.ala = load double, ptr %gep1773.1, align 8, !tbaa !109
  %i.alb = fmul double %i.aif, %i.ala
  %i.alc = tail call double @llvm.fmuladd.f64(double %i.aib, double %i.akz, double %i.alb)
  %gep1775.1 = getelementptr [8 x i8], ptr %invariant.gep1774, i64 %indvars.iv.next1622 ; 3 uses
  %i.ald = load double, ptr %gep1775.1, align 8, !tbaa !109
  %i.ale = tail call double @llvm.fmuladd.f64(double %i.aii, double %i.ald, double %i.alc)
  %i.alf = fneg double %i.ale                     ; 3 uses
  %i.alg = tail call double @llvm.fmuladd.f64(double %i.alf, double %i.aid, double %i.akz)
  store double %i.alg, ptr %gep1771.1, align 8, !tbaa !109
  %i.alh = load double, ptr %gep1773.1, align 8, !tbaa !109
  %i.ali = tail call double @llvm.fmuladd.f64(double %i.alf, double %i.aig, double %i.alh)
  store double %i.ali, ptr %gep1773.1, align 8, !tbaa !109
  %i.alj = load double, ptr %gep1775.1, align 8, !tbaa !109
  %i.alk = tail call double @llvm.fmuladd.f64(double %i.alf, double %i.aij, double %i.alj)
  store double %i.alk, ptr %gep1775.1, align 8, !tbaa !109
  %indvars.iv.next1622.1 = add nuw nsw i64 %indvars.iv1621, 2 ; 2 uses
  %exitcond1625.not.1 = icmp eq i64 %indvars.iv.next1622.1, %wide.trip.count1624
  br i1 %exitcond1625.not.1, label %.loopexit, label %scalar.ph3554, !llvm.loop !34

bb.r:                                             ; preds = %bb.n
  %i.all = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.alm = load double, ptr %4, align 8, !tbaa !109 ; 4 uses
  %i.aln = fmul double %i.all, %i.alm             ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !109 ; 3 uses
  %i.alq = fmul double %i.alm, %i.alp             ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.als = load double, ptr %i.alr, align 8, !tbaa !109 ; 3 uses
  %i.alt = fmul double %i.alm, %i.als             ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.alv = load double, ptr %i.alu, align 8, !tbaa !109 ; 3 uses
  %i.alw = fmul double %i.alm, %i.alv             ; 2 uses
  %i.alx = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14291509 = icmp slt i32 %i.alx, 1
  br i1 %.not14291509, label %.loopexit, label %.lr.ph1511

.lr.ph1511:                                       ; preds = %bb.r
  %i.aly = shl i32 %i.a, 1
  %i.alz = mul nsw i32 %i.a, 3
  %i.ama = shl i32 %i.a, 2
  %i.amb = sext i32 %i.a to i64                   ; 2 uses
  %i.amc = sext i32 %i.aly to i64                 ; 2 uses
  %i.amd = sext i32 %i.alz to i64                 ; 2 uses
  %i.ame = sext i32 %i.ama to i64                 ; 2 uses
  %i.amf = add nuw i32 %i.alx, 1
  %wide.trip.count1619 = zext i32 %i.amf to i64   ; 2 uses
  %invariant.gep1762 = getelementptr [8 x i8], ptr %i.c, i64 %i.amb ; 2 uses
  %invariant.gep1764 = getelementptr [8 x i8], ptr %i.c, i64 %i.amc ; 2 uses
  %invariant.gep1766 = getelementptr [8 x i8], ptr %i.c, i64 %i.amd ; 2 uses
  %invariant.gep1768 = getelementptr [8 x i8], ptr %i.c, i64 %i.ame ; 2 uses
  %i.amg = zext nneg i32 %i.alx to i64            ; 2 uses
  %min.iters.check3481 = icmp ult i32 %i.alx, 20
  br i1 %min.iters.check3481, label %scalar.ph3480.preheader, label %vector.memcheck3482

vector.memcheck3482:                              ; preds = %.lr.ph1511
  %i.amh = or i64 %i.amb, %i.b
  %i.ami = shl nsw i64 %i.amh, 3                  ; 2 uses
  %i.amj = getelementptr i8, ptr %5, i64 %i.ami
  %i.amk = getelementptr i8, ptr %i.amj, i64 8    ; 3 uses
  %i.aml = shl nuw nsw i64 %wide.trip.count1619, 3 ; 4 uses
  %i.amm = getelementptr i8, ptr %5, i64 %i.ami
  %i.amn = getelementptr i8, ptr %i.amm, i64 %i.aml ; 3 uses
  %i.amo = add nsw i64 %i.amc, %i.b
  %i.amp = shl nsw i64 %i.amo, 3                  ; 2 uses
  %i.amq = getelementptr i8, ptr %5, i64 %i.amp
  %i.amr = getelementptr i8, ptr %i.amq, i64 8    ; 3 uses
  %i.ams = getelementptr i8, ptr %5, i64 %i.amp
  %i.amt = getelementptr i8, ptr %i.ams, i64 %i.aml ; 3 uses
  %i.amu = add nsw i64 %i.amd, %i.b
  %i.amv = shl nsw i64 %i.amu, 3                  ; 2 uses
  %i.amw = getelementptr i8, ptr %5, i64 %i.amv
  %i.amx = getelementptr i8, ptr %i.amw, i64 8    ; 3 uses
  %i.amy = getelementptr i8, ptr %5, i64 %i.amv
  %i.amz = getelementptr i8, ptr %i.amy, i64 %i.aml ; 3 uses
  %i.ana = add nsw i64 %i.ame, %i.b
  %i.anb = shl nsw i64 %i.ana, 3                  ; 2 uses
  %i.anc = getelementptr i8, ptr %5, i64 %i.anb
  %i.and = getelementptr i8, ptr %i.anc, i64 8    ; 3 uses
  %i.ane = getelementptr i8, ptr %5, i64 %i.anb
  %i.anf = getelementptr i8, ptr %i.ane, i64 %i.aml ; 3 uses
  %bound03483 = icmp ult ptr %i.amk, %i.amt
  %bound13484 = icmp ult ptr %i.amr, %i.amn
  %found.conflict3485 = and i1 %bound03483, %bound13484
  %bound03486 = icmp ult ptr %i.amk, %i.amz
  %bound13487 = icmp ult ptr %i.amx, %i.amn
  %found.conflict3488 = and i1 %bound03486, %bound13487
  %conflict.rdx3489 = or i1 %found.conflict3485, %found.conflict3488
  %bound03490 = icmp ult ptr %i.amk, %i.anf
  %bound13491 = icmp ult ptr %i.and, %i.amn
  %found.conflict3492 = and i1 %bound03490, %bound13491
  %conflict.rdx3493 = or i1 %conflict.rdx3489, %found.conflict3492
  %bound03494 = icmp ult ptr %i.amr, %i.amz
  %bound13495 = icmp ult ptr %i.amx, %i.amt
  %found.conflict3496 = and i1 %bound03494, %bound13495
  %conflict.rdx3497 = or i1 %conflict.rdx3493, %found.conflict3496
  %bound03498 = icmp ult ptr %i.amr, %i.anf
  %bound13499 = icmp ult ptr %i.and, %i.amt
  %found.conflict3500 = and i1 %bound03498, %bound13499
  %conflict.rdx3501 = or i1 %conflict.rdx3497, %found.conflict3500
  %bound03502 = icmp ult ptr %i.amx, %i.anf
  %bound13503 = icmp ult ptr %i.and, %i.amz
  %found.conflict3504 = and i1 %bound03502, %bound13503
  %conflict.rdx3505 = or i1 %conflict.rdx3501, %found.conflict3504
  br i1 %conflict.rdx3505, label %scalar.ph3480.preheader, label %vector.ph3506

vector.ph3506:                                    ; preds = %vector.memcheck3482
  %n.vec3507 = and i64 %i.amg, 2147483644         ; 3 uses
  %i.ang = or disjoint i64 %n.vec3507, 1
  %broadcast.splatinsert3508 = insertelement <4 x double> poison, double %i.alp, i64 0
  %broadcast.splat3509 = shufflevector <4 x double> %broadcast.splatinsert3508, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3510 = insertelement <4 x double> poison, double %i.all, i64 0
  %broadcast.splat3511 = shufflevector <4 x double> %broadcast.splatinsert3510, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3512 = insertelement <4 x double> poison, double %i.als, i64 0
  %broadcast.splat3513 = shufflevector <4 x double> %broadcast.splatinsert3512, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3514 = insertelement <4 x double> poison, double %i.alv, i64 0
  %broadcast.splat3515 = shufflevector <4 x double> %broadcast.splatinsert3514, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3516 = insertelement <4 x double> poison, double %i.aln, i64 0
  %broadcast.splat3517 = shufflevector <4 x double> %broadcast.splatinsert3516, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3518 = insertelement <4 x double> poison, double %i.alq, i64 0
  %broadcast.splat3519 = shufflevector <4 x double> %broadcast.splatinsert3518, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3520 = insertelement <4 x double> poison, double %i.alt, i64 0
  %broadcast.splat3521 = shufflevector <4 x double> %broadcast.splatinsert3520, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3522 = insertelement <4 x double> poison, double %i.alw, i64 0
  %broadcast.splat3523 = shufflevector <4 x double> %broadcast.splatinsert3522, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3524

vector.body3524:                                  ; preds = %vector.body3524, %vector.ph3506
  %index3525 = phi i64 [ 0, %vector.ph3506 ], [ %index.next3533, %vector.body3524 ] ; 2 uses
  %i.anh = or disjoint i64 %index3525, 1          ; 4 uses
  %i.ani = getelementptr [8 x i8], ptr %invariant.gep1762, i64 %i.anh ; 2 uses
  %wide.load3526 = load <4 x double>, ptr %i.ani, align 8, !tbaa !109, !alias.scope !121, !noalias !122 ; 2 uses
  %i.anj = getelementptr [8 x i8], ptr %invariant.gep1764, i64 %i.anh ; 3 uses
  %wide.load3527 = load <4 x double>, ptr %i.anj, align 8, !tbaa !109, !alias.scope !123, !noalias !124
  %i.ank = fmul <4 x double> %broadcast.splat3509, %wide.load3527
  %i.anl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3511, <4 x double> %wide.load3526, <4 x double> %i.ank)
  %i.anm = getelementptr [8 x i8], ptr %invariant.gep1766, i64 %i.anh ; 3 uses
  %wide.load3528 = load <4 x double>, ptr %i.anm, align 8, !tbaa !109, !alias.scope !125, !noalias !126
  %i.ann = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3513, <4 x double> %wide.load3528, <4 x double> %i.anl)
  %i.ano = getelementptr [8 x i8], ptr %invariant.gep1768, i64 %i.anh ; 3 uses
  %wide.load3529 = load <4 x double>, ptr %i.ano, align 8, !tbaa !109, !alias.scope !126
  %i.anp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3515, <4 x double> %wide.load3529, <4 x double> %i.ann)
  %i.anq = fneg <4 x double> %i.anp               ; 4 uses
  %i.anr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.anq, <4 x double> %broadcast.splat3517, <4 x double> %wide.load3526)
  store <4 x double> %i.anr, ptr %i.ani, align 8, !tbaa !109, !alias.scope !121, !noalias !122
  %wide.load3530 = load <4 x double>, ptr %i.anj, align 8, !tbaa !109, !alias.scope !123, !noalias !124
  %i.ans = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.anq, <4 x double> %broadcast.splat3519, <4 x double> %wide.load3530)
  store <4 x double> %i.ans, ptr %i.anj, align 8, !tbaa !109, !alias.scope !123, !noalias !124
  %wide.load3531 = load <4 x double>, ptr %i.anm, align 8, !tbaa !109, !alias.scope !125, !noalias !126
  %i.ant = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.anq, <4 x double> %broadcast.splat3521, <4 x double> %wide.load3531)
  store <4 x double> %i.ant, ptr %i.anm, align 8, !tbaa !109, !alias.scope !125, !noalias !126
  %wide.load3532 = load <4 x double>, ptr %i.ano, align 8, !tbaa !109, !alias.scope !126
  %i.anu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.anq, <4 x double> %broadcast.splat3523, <4 x double> %wide.load3532)
  store <4 x double> %i.anu, ptr %i.ano, align 8, !tbaa !109, !alias.scope !126
  %index.next3533 = add nuw i64 %index3525, 4     ; 2 uses
  %i.anv = icmp eq i64 %index.next3533, %n.vec3507
  br i1 %i.anv, label %middle.block3534, label %vector.body3524, !llvm.loop !40

middle.block3534:                                 ; preds = %vector.body3524
  %cmp.n3535 = icmp eq i64 %n.vec3507, %i.amg
  br i1 %cmp.n3535, label %.loopexit, label %scalar.ph3480.preheader

scalar.ph3480.preheader:                          ; preds = %vector.memcheck3482, %.lr.ph1511, %middle.block3534
  %indvars.iv1616.ph = phi i64 [ 1, %vector.memcheck3482 ], [ 1, %.lr.ph1511 ], [ %i.ang, %middle.block3534 ]
  br label %scalar.ph3480

scalar.ph3480:                                    ; preds = %scalar.ph3480.preheader, %scalar.ph3480
  %indvars.iv1616 = phi i64 [ %indvars.iv.next1617, %scalar.ph3480 ], [ %indvars.iv1616.ph, %scalar.ph3480.preheader ] ; 5 uses
  %gep1763 = getelementptr [8 x i8], ptr %invariant.gep1762, i64 %indvars.iv1616 ; 2 uses
  %i.anw = load double, ptr %gep1763, align 8, !tbaa !109 ; 2 uses
  %gep1765 = getelementptr [8 x i8], ptr %invariant.gep1764, i64 %indvars.iv1616 ; 3 uses
  %i.anx = load double, ptr %gep1765, align 8, !tbaa !109
  %i.any = fmul double %i.alp, %i.anx
  %i.anz = tail call double @llvm.fmuladd.f64(double %i.all, double %i.anw, double %i.any)
  %gep1767 = getelementptr [8 x i8], ptr %invariant.gep1766, i64 %indvars.iv1616 ; 3 uses
  %i.aoa = load double, ptr %gep1767, align 8, !tbaa !109
  %i.aob = tail call double @llvm.fmuladd.f64(double %i.als, double %i.aoa, double %i.anz)
  %gep1769 = getelementptr [8 x i8], ptr %invariant.gep1768, i64 %indvars.iv1616 ; 3 uses
  %i.aoc = load double, ptr %gep1769, align 8, !tbaa !109
  %i.aod = tail call double @llvm.fmuladd.f64(double %i.alv, double %i.aoc, double %i.aob)
  %i.aoe = fneg double %i.aod                     ; 4 uses
  %i.aof = tail call double @llvm.fmuladd.f64(double %i.aoe, double %i.aln, double %i.anw)
  store double %i.aof, ptr %gep1763, align 8, !tbaa !109
  %i.aog = load double, ptr %gep1765, align 8, !tbaa !109
  %i.aoh = tail call double @llvm.fmuladd.f64(double %i.aoe, double %i.alq, double %i.aog)
  store double %i.aoh, ptr %gep1765, align 8, !tbaa !109
  %i.aoi = load double, ptr %gep1767, align 8, !tbaa !109
  %i.aoj = tail call double @llvm.fmuladd.f64(double %i.aoe, double %i.alt, double %i.aoi)
  store double %i.aoj, ptr %gep1767, align 8, !tbaa !109
  %i.aok = load double, ptr %gep1769, align 8, !tbaa !109
  %i.aol = tail call double @llvm.fmuladd.f64(double %i.aoe, double %i.alw, double %i.aok)
  store double %i.aol, ptr %gep1769, align 8, !tbaa !109
  %indvars.iv.next1617 = add nuw nsw i64 %indvars.iv1616, 1 ; 2 uses
  %exitcond1620.not = icmp eq i64 %indvars.iv.next1617, %wide.trip.count1619
  br i1 %exitcond1620.not, label %.loopexit, label %scalar.ph3480, !llvm.loop !41

bb.s:                                             ; preds = %bb.n
  %i.aom = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.aon = load double, ptr %4, align 8, !tbaa !109 ; 5 uses
  %i.aoo = fmul double %i.aom, %i.aon             ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !109 ; 3 uses
  %i.aor = fmul double %i.aon, %i.aoq             ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aot = load double, ptr %i.aos, align 8, !tbaa !109 ; 3 uses
  %i.aou = fmul double %i.aon, %i.aot             ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aow = load double, ptr %i.aov, align 8, !tbaa !109 ; 3 uses
  %i.aox = fmul double %i.aon, %i.aow             ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aoz = load double, ptr %i.aoy, align 8, !tbaa !109 ; 3 uses
  %i.apa = fmul double %i.aon, %i.aoz             ; 2 uses
  %i.apb = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14281506 = icmp slt i32 %i.apb, 1
  br i1 %.not14281506, label %.loopexit, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %bb.s
  %i.apc = shl i32 %i.a, 1
  %i.apd = mul nsw i32 %i.a, 3
  %i.ape = shl i32 %i.a, 2
  %i.apf = mul nsw i32 %i.a, 5
  %i.apg = sext i32 %i.a to i64                   ; 2 uses
  %i.aph = sext i32 %i.apc to i64                 ; 2 uses
  %i.api = sext i32 %i.apd to i64                 ; 2 uses
  %i.apj = sext i32 %i.ape to i64                 ; 2 uses
  %i.apk = sext i32 %i.apf to i64                 ; 2 uses
  %i.apl = add nuw i32 %i.apb, 1
  %wide.trip.count1614 = zext i32 %i.apl to i64   ; 2 uses
  %invariant.gep1752 = getelementptr [8 x i8], ptr %i.c, i64 %i.apg ; 2 uses
  %invariant.gep1754 = getelementptr [8 x i8], ptr %i.c, i64 %i.aph ; 2 uses
  %invariant.gep1756 = getelementptr [8 x i8], ptr %i.c, i64 %i.api ; 2 uses
  %invariant.gep1758 = getelementptr [8 x i8], ptr %i.c, i64 %i.apj ; 2 uses
  %invariant.gep1760 = getelementptr [8 x i8], ptr %i.c, i64 %i.apk ; 2 uses
  %i.apm = zext nneg i32 %i.apb to i64            ; 2 uses
  %min.iters.check3371 = icmp ult i32 %i.apb, 24
  br i1 %min.iters.check3371, label %scalar.ph3370.preheader, label %vector.memcheck3372

vector.memcheck3372:                              ; preds = %.lr.ph1508
  %i.apn = or i64 %i.apg, %i.b
  %i.apo = shl nsw i64 %i.apn, 3                  ; 2 uses
  %i.app = getelementptr i8, ptr %5, i64 %i.apo
  %i.apq = getelementptr i8, ptr %i.app, i64 8    ; 4 uses
  %i.apr = shl nuw nsw i64 %wide.trip.count1614, 3 ; 5 uses
  %i.aps = getelementptr i8, ptr %5, i64 %i.apo
  %i.apt = getelementptr i8, ptr %i.aps, i64 %i.apr ; 4 uses
  %i.apu = add nsw i64 %i.aph, %i.b
  %i.apv = shl nsw i64 %i.apu, 3                  ; 2 uses
  %i.apw = getelementptr i8, ptr %5, i64 %i.apv
  %i.apx = getelementptr i8, ptr %i.apw, i64 8    ; 4 uses
  %i.apy = getelementptr i8, ptr %5, i64 %i.apv
  %i.apz = getelementptr i8, ptr %i.apy, i64 %i.apr ; 4 uses
  %i.aqa = add nsw i64 %i.api, %i.b
  %i.aqb = shl nsw i64 %i.aqa, 3                  ; 2 uses
  %i.aqc = getelementptr i8, ptr %5, i64 %i.aqb
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 8    ; 4 uses
  %i.aqe = getelementptr i8, ptr %5, i64 %i.aqb
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 %i.apr ; 4 uses
  %i.aqg = add nsw i64 %i.apj, %i.b
  %i.aqh = shl nsw i64 %i.aqg, 3                  ; 2 uses
  %i.aqi = getelementptr i8, ptr %5, i64 %i.aqh
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 8    ; 4 uses
  %i.aqk = getelementptr i8, ptr %5, i64 %i.aqh
  %i.aql = getelementptr i8, ptr %i.aqk, i64 %i.apr ; 4 uses
  %i.aqm = add nsw i64 %i.apk, %i.b
  %i.aqn = shl nsw i64 %i.aqm, 3                  ; 2 uses
  %i.aqo = getelementptr i8, ptr %5, i64 %i.aqn
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 8    ; 4 uses
  %i.aqq = getelementptr i8, ptr %5, i64 %i.aqn
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 %i.apr ; 4 uses
  %bound03373 = icmp ult ptr %i.apq, %i.apz
  %bound13374 = icmp ult ptr %i.apx, %i.apt
  %found.conflict3375 = and i1 %bound03373, %bound13374
  %bound03376 = icmp ult ptr %i.apq, %i.aqf
  %bound13377 = icmp ult ptr %i.aqd, %i.apt
  %found.conflict3378 = and i1 %bound03376, %bound13377
  %conflict.rdx3379 = or i1 %found.conflict3375, %found.conflict3378
  %bound03380 = icmp ult ptr %i.apq, %i.aql
  %bound13381 = icmp ult ptr %i.aqj, %i.apt
  %found.conflict3382 = and i1 %bound03380, %bound13381
  %conflict.rdx3383 = or i1 %conflict.rdx3379, %found.conflict3382
  %bound03384 = icmp ult ptr %i.apq, %i.aqr
  %bound13385 = icmp ult ptr %i.aqp, %i.apt
  %found.conflict3386 = and i1 %bound03384, %bound13385
  %conflict.rdx3387 = or i1 %conflict.rdx3383, %found.conflict3386
  %bound03388 = icmp ult ptr %i.apx, %i.aqf
  %bound13389 = icmp ult ptr %i.aqd, %i.apz
  %found.conflict3390 = and i1 %bound03388, %bound13389
  %conflict.rdx3391 = or i1 %conflict.rdx3387, %found.conflict3390
  %bound03392 = icmp ult ptr %i.apx, %i.aql
  %bound13393 = icmp ult ptr %i.aqj, %i.apz
  %found.conflict3394 = and i1 %bound03392, %bound13393
  %conflict.rdx3395 = or i1 %conflict.rdx3391, %found.conflict3394
  %bound03396 = icmp ult ptr %i.apx, %i.aqr
  %bound13397 = icmp ult ptr %i.aqp, %i.apz
  %found.conflict3398 = and i1 %bound03396, %bound13397
  %conflict.rdx3399 = or i1 %conflict.rdx3395, %found.conflict3398
  %bound03400 = icmp ult ptr %i.aqd, %i.aql
  %bound13401 = icmp ult ptr %i.aqj, %i.aqf
  %found.conflict3402 = and i1 %bound03400, %bound13401
  %conflict.rdx3403 = or i1 %conflict.rdx3399, %found.conflict3402
  %bound03404 = icmp ult ptr %i.aqd, %i.aqr
  %bound13405 = icmp ult ptr %i.aqp, %i.aqf
  %found.conflict3406 = and i1 %bound03404, %bound13405
  %conflict.rdx3407 = or i1 %conflict.rdx3403, %found.conflict3406
  %bound03408 = icmp ult ptr %i.aqj, %i.aqr
  %bound13409 = icmp ult ptr %i.aqp, %i.aql
  %found.conflict3410 = and i1 %bound03408, %bound13409
  %conflict.rdx3411 = or i1 %conflict.rdx3407, %found.conflict3410
  br i1 %conflict.rdx3411, label %scalar.ph3370.preheader, label %vector.ph3412

vector.ph3412:                                    ; preds = %vector.memcheck3372
  %n.vec3413 = and i64 %i.apm, 2147483644         ; 3 uses
  %i.aqs = or disjoint i64 %n.vec3413, 1
  %broadcast.splatinsert3414 = insertelement <4 x double> poison, double %i.aoq, i64 0
  %broadcast.splat3415 = shufflevector <4 x double> %broadcast.splatinsert3414, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3416 = insertelement <4 x double> poison, double %i.aom, i64 0
  %broadcast.splat3417 = shufflevector <4 x double> %broadcast.splatinsert3416, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3418 = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat3419 = shufflevector <4 x double> %broadcast.splatinsert3418, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3420 = insertelement <4 x double> poison, double %i.aow, i64 0
  %broadcast.splat3421 = shufflevector <4 x double> %broadcast.splatinsert3420, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3422 = insertelement <4 x double> poison, double %i.aoz, i64 0
  %broadcast.splat3423 = shufflevector <4 x double> %broadcast.splatinsert3422, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3424 = insertelement <4 x double> poison, double %i.aoo, i64 0
  %broadcast.splat3425 = shufflevector <4 x double> %broadcast.splatinsert3424, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3426 = insertelement <4 x double> poison, double %i.aor, i64 0
  %broadcast.splat3427 = shufflevector <4 x double> %broadcast.splatinsert3426, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3428 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat3429 = shufflevector <4 x double> %broadcast.splatinsert3428, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3430 = insertelement <4 x double> poison, double %i.aox, i64 0
  %broadcast.splat3431 = shufflevector <4 x double> %broadcast.splatinsert3430, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3432 = insertelement <4 x double> poison, double %i.apa, i64 0
  %broadcast.splat3433 = shufflevector <4 x double> %broadcast.splatinsert3432, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3434

vector.body3434:                                  ; preds = %vector.body3434, %vector.ph3412
  %index3435 = phi i64 [ 0, %vector.ph3412 ], [ %index.next3445, %vector.body3434 ] ; 2 uses
  %i.aqt = or disjoint i64 %index3435, 1          ; 5 uses
  %i.aqu = getelementptr [8 x i8], ptr %invariant.gep1752, i64 %i.aqt ; 2 uses
  %wide.load3436 = load <4 x double>, ptr %i.aqu, align 8, !tbaa !109, !alias.scope !127, !noalias !128 ; 2 uses
  %i.aqv = getelementptr [8 x i8], ptr %invariant.gep1754, i64 %i.aqt ; 3 uses
  %wide.load3437 = load <4 x double>, ptr %i.aqv, align 8, !tbaa !109, !alias.scope !129, !noalias !130
  %i.aqw = fmul <4 x double> %broadcast.splat3415, %wide.load3437
  %i.aqx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3417, <4 x double> %wide.load3436, <4 x double> %i.aqw)
  %i.aqy = getelementptr [8 x i8], ptr %invariant.gep1756, i64 %i.aqt ; 3 uses
  %wide.load3438 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !109, !alias.scope !131, !noalias !132
  %i.aqz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3419, <4 x double> %wide.load3438, <4 x double> %i.aqx)
  %i.ara = getelementptr [8 x i8], ptr %invariant.gep1758, i64 %i.aqt ; 3 uses
  %wide.load3439 = load <4 x double>, ptr %i.ara, align 8, !tbaa !109, !alias.scope !133, !noalias !134
  %i.arb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3421, <4 x double> %wide.load3439, <4 x double> %i.aqz)
  %i.arc = getelementptr [8 x i8], ptr %invariant.gep1760, i64 %i.aqt ; 3 uses
  %wide.load3440 = load <4 x double>, ptr %i.arc, align 8, !tbaa !109, !alias.scope !134
  %i.ard = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3423, <4 x double> %wide.load3440, <4 x double> %i.arb)
  %i.are = fneg <4 x double> %i.ard               ; 5 uses
  %i.arf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat3425, <4 x double> %wide.load3436)
  store <4 x double> %i.arf, ptr %i.aqu, align 8, !tbaa !109, !alias.scope !127, !noalias !128
  %wide.load3441 = load <4 x double>, ptr %i.aqv, align 8, !tbaa !109, !alias.scope !129, !noalias !130
  %i.arg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat3427, <4 x double> %wide.load3441)
  store <4 x double> %i.arg, ptr %i.aqv, align 8, !tbaa !109, !alias.scope !129, !noalias !130
  %wide.load3442 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !109, !alias.scope !131, !noalias !132
  %i.arh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat3429, <4 x double> %wide.load3442)
  store <4 x double> %i.arh, ptr %i.aqy, align 8, !tbaa !109, !alias.scope !131, !noalias !132
  %wide.load3443 = load <4 x double>, ptr %i.ara, align 8, !tbaa !109, !alias.scope !133, !noalias !134
  %i.ari = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat3431, <4 x double> %wide.load3443)
  store <4 x double> %i.ari, ptr %i.ara, align 8, !tbaa !109, !alias.scope !133, !noalias !134
  %wide.load3444 = load <4 x double>, ptr %i.arc, align 8, !tbaa !109, !alias.scope !134
  %i.arj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %broadcast.splat3433, <4 x double> %wide.load3444)
  store <4 x double> %i.arj, ptr %i.arc, align 8, !tbaa !109, !alias.scope !134
  %index.next3445 = add nuw i64 %index3435, 4     ; 2 uses
  %i.ark = icmp eq i64 %index.next3445, %n.vec3413
  br i1 %i.ark, label %middle.block3446, label %vector.body3434, !llvm.loop !48

middle.block3446:                                 ; preds = %vector.body3434
  %cmp.n3447 = icmp eq i64 %n.vec3413, %i.apm
  br i1 %cmp.n3447, label %.loopexit, label %scalar.ph3370.preheader

scalar.ph3370.preheader:                          ; preds = %vector.memcheck3372, %.lr.ph1508, %middle.block3446
  %indvars.iv1611.ph = phi i64 [ 1, %vector.memcheck3372 ], [ 1, %.lr.ph1508 ], [ %i.aqs, %middle.block3446 ]
  br label %scalar.ph3370

scalar.ph3370:                                    ; preds = %scalar.ph3370.preheader, %scalar.ph3370
  %indvars.iv1611 = phi i64 [ %indvars.iv.next1612, %scalar.ph3370 ], [ %indvars.iv1611.ph, %scalar.ph3370.preheader ] ; 6 uses
  %gep1753 = getelementptr [8 x i8], ptr %invariant.gep1752, i64 %indvars.iv1611 ; 2 uses
  %i.arl = load double, ptr %gep1753, align 8, !tbaa !109 ; 2 uses
  %gep1755 = getelementptr [8 x i8], ptr %invariant.gep1754, i64 %indvars.iv1611 ; 3 uses
  %i.arm = load double, ptr %gep1755, align 8, !tbaa !109
  %i.arn = fmul double %i.aoq, %i.arm
  %i.aro = tail call double @llvm.fmuladd.f64(double %i.aom, double %i.arl, double %i.arn)
  %gep1757 = getelementptr [8 x i8], ptr %invariant.gep1756, i64 %indvars.iv1611 ; 3 uses
  %i.arp = load double, ptr %gep1757, align 8, !tbaa !109
  %i.arq = tail call double @llvm.fmuladd.f64(double %i.aot, double %i.arp, double %i.aro)
  %gep1759 = getelementptr [8 x i8], ptr %invariant.gep1758, i64 %indvars.iv1611 ; 3 uses
  %i.arr = load double, ptr %gep1759, align 8, !tbaa !109
  %i.ars = tail call double @llvm.fmuladd.f64(double %i.aow, double %i.arr, double %i.arq)
  %gep1761 = getelementptr [8 x i8], ptr %invariant.gep1760, i64 %indvars.iv1611 ; 3 uses
  %i.art = load double, ptr %gep1761, align 8, !tbaa !109
  %i.aru = tail call double @llvm.fmuladd.f64(double %i.aoz, double %i.art, double %i.ars)
  %i.arv = fneg double %i.aru                     ; 5 uses
  %i.arw = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.aoo, double %i.arl)
  store double %i.arw, ptr %gep1753, align 8, !tbaa !109
  %i.arx = load double, ptr %gep1755, align 8, !tbaa !109
  %i.ary = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.aor, double %i.arx)
  store double %i.ary, ptr %gep1755, align 8, !tbaa !109
  %i.arz = load double, ptr %gep1757, align 8, !tbaa !109
  %i.asa = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.aou, double %i.arz)
  store double %i.asa, ptr %gep1757, align 8, !tbaa !109
  %i.asb = load double, ptr %gep1759, align 8, !tbaa !109
  %i.asc = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.aox, double %i.asb)
  store double %i.asc, ptr %gep1759, align 8, !tbaa !109
  %i.asd = load double, ptr %gep1761, align 8, !tbaa !109
  %i.ase = tail call double @llvm.fmuladd.f64(double %i.arv, double %i.apa, double %i.asd)
  store double %i.ase, ptr %gep1761, align 8, !tbaa !109
  %indvars.iv.next1612 = add nuw nsw i64 %indvars.iv1611, 1 ; 2 uses
  %exitcond1615.not = icmp eq i64 %indvars.iv.next1612, %wide.trip.count1614
  br i1 %exitcond1615.not, label %.loopexit, label %scalar.ph3370, !llvm.loop !49

bb.t:                                             ; preds = %bb.n
  %i.asf = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.asg = load double, ptr %4, align 8, !tbaa !109 ; 6 uses
  %i.ash = fmul double %i.asf, %i.asg             ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.asj = load double, ptr %i.asi, align 8, !tbaa !109 ; 3 uses
  %i.ask = fmul double %i.asg, %i.asj             ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.asm = load double, ptr %i.asl, align 8, !tbaa !109 ; 3 uses
  %i.asn = fmul double %i.asg, %i.asm             ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !109 ; 3 uses
  %i.asq = fmul double %i.asg, %i.asp             ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !109 ; 3 uses
  %i.ast = fmul double %i.asg, %i.ass             ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !109 ; 3 uses
  %i.asw = fmul double %i.asg, %i.asv             ; 2 uses
  %i.asx = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14271503 = icmp slt i32 %i.asx, 1
  br i1 %.not14271503, label %.loopexit, label %.lr.ph1505

.lr.ph1505:                                       ; preds = %bb.t
  %i.asy = shl i32 %i.a, 1
  %i.asz = mul nsw i32 %i.a, 3
  %i.ata = shl i32 %i.a, 2
  %i.atb = mul nsw i32 %i.a, 5
  %i.atc = mul nsw i32 %i.a, 6
  %i.atd = sext i32 %i.a to i64                   ; 2 uses
  %i.ate = sext i32 %i.asy to i64                 ; 2 uses
  %i.atf = sext i32 %i.asz to i64                 ; 2 uses
  %i.atg = sext i32 %i.ata to i64                 ; 2 uses
  %i.ath = sext i32 %i.atb to i64                 ; 2 uses
  %i.ati = sext i32 %i.atc to i64                 ; 2 uses
  %i.atj = add nuw i32 %i.asx, 1
  %wide.trip.count1609 = zext i32 %i.atj to i64   ; 2 uses
  %invariant.gep1740 = getelementptr [8 x i8], ptr %i.c, i64 %i.atd ; 2 uses
  %invariant.gep1742 = getelementptr [8 x i8], ptr %i.c, i64 %i.ate ; 2 uses
  %invariant.gep1744 = getelementptr [8 x i8], ptr %i.c, i64 %i.atf ; 2 uses
  %invariant.gep1746 = getelementptr [8 x i8], ptr %i.c, i64 %i.atg ; 2 uses
  %invariant.gep1748 = getelementptr [8 x i8], ptr %i.c, i64 %i.ath ; 2 uses
  %invariant.gep1750 = getelementptr [8 x i8], ptr %i.c, i64 %i.ati ; 2 uses
  %i.atk = zext nneg i32 %i.asx to i64            ; 2 uses
  %min.iters.check3217 = icmp ult i32 %i.asx, 28
  br i1 %min.iters.check3217, label %scalar.ph3216.preheader, label %vector.memcheck3218

vector.memcheck3218:                              ; preds = %.lr.ph1505
  %i.atl = or i64 %i.atd, %i.b
  %i.atm = shl nsw i64 %i.atl, 3                  ; 2 uses
  %i.atn = getelementptr i8, ptr %5, i64 %i.atm
  %i.ato = getelementptr i8, ptr %i.atn, i64 8    ; 5 uses
  %i.atp = shl nuw nsw i64 %wide.trip.count1609, 3 ; 6 uses
  %i.atq = getelementptr i8, ptr %5, i64 %i.atm
  %i.atr = getelementptr i8, ptr %i.atq, i64 %i.atp ; 5 uses
  %i.ats = add nsw i64 %i.ate, %i.b
  %i.att = shl nsw i64 %i.ats, 3                  ; 2 uses
  %i.atu = getelementptr i8, ptr %5, i64 %i.att
  %i.atv = getelementptr i8, ptr %i.atu, i64 8    ; 5 uses
  %i.atw = getelementptr i8, ptr %5, i64 %i.att
  %i.atx = getelementptr i8, ptr %i.atw, i64 %i.atp ; 5 uses
  %i.aty = add nsw i64 %i.atf, %i.b
  %i.atz = shl nsw i64 %i.aty, 3                  ; 2 uses
  %i.aua = getelementptr i8, ptr %5, i64 %i.atz
  %i.aub = getelementptr i8, ptr %i.aua, i64 8    ; 5 uses
  %i.auc = getelementptr i8, ptr %5, i64 %i.atz
  %i.aud = getelementptr i8, ptr %i.auc, i64 %i.atp ; 5 uses
  %i.aue = add nsw i64 %i.atg, %i.b
  %i.auf = shl nsw i64 %i.aue, 3                  ; 2 uses
  %i.aug = getelementptr i8, ptr %5, i64 %i.auf
  %i.auh = getelementptr i8, ptr %i.aug, i64 8    ; 5 uses
  %i.aui = getelementptr i8, ptr %5, i64 %i.auf
  %i.auj = getelementptr i8, ptr %i.aui, i64 %i.atp ; 5 uses
  %i.auk = add nsw i64 %i.ath, %i.b
  %i.aul = shl nsw i64 %i.auk, 3                  ; 2 uses
  %i.aum = getelementptr i8, ptr %5, i64 %i.aul
  %i.aun = getelementptr i8, ptr %i.aum, i64 8    ; 5 uses
  %i.auo = getelementptr i8, ptr %5, i64 %i.aul
  %i.aup = getelementptr i8, ptr %i.auo, i64 %i.atp ; 5 uses
  %i.auq = add nsw i64 %i.ati, %i.b
  %i.aur = shl nsw i64 %i.auq, 3                  ; 2 uses
  %i.aus = getelementptr i8, ptr %5, i64 %i.aur
  %i.aut = getelementptr i8, ptr %i.aus, i64 8    ; 5 uses
  %i.auu = getelementptr i8, ptr %5, i64 %i.aur
  %i.auv = getelementptr i8, ptr %i.auu, i64 %i.atp ; 5 uses
  %bound03219 = icmp ult ptr %i.ato, %i.atx
  %bound13220 = icmp ult ptr %i.atv, %i.atr
  %found.conflict3221 = and i1 %bound03219, %bound13220
  %bound03222 = icmp ult ptr %i.ato, %i.aud
  %bound13223 = icmp ult ptr %i.aub, %i.atr
  %found.conflict3224 = and i1 %bound03222, %bound13223
  %conflict.rdx3225 = or i1 %found.conflict3221, %found.conflict3224
  %bound03226 = icmp ult ptr %i.ato, %i.auj
  %bound13227 = icmp ult ptr %i.auh, %i.atr
  %found.conflict3228 = and i1 %bound03226, %bound13227
  %conflict.rdx3229 = or i1 %conflict.rdx3225, %found.conflict3228
  %bound03230 = icmp ult ptr %i.ato, %i.aup
  %bound13231 = icmp ult ptr %i.aun, %i.atr
  %found.conflict3232 = and i1 %bound03230, %bound13231
  %conflict.rdx3233 = or i1 %conflict.rdx3229, %found.conflict3232
  %bound03234 = icmp ult ptr %i.ato, %i.auv
  %bound13235 = icmp ult ptr %i.aut, %i.atr
  %found.conflict3236 = and i1 %bound03234, %bound13235
  %conflict.rdx3237 = or i1 %conflict.rdx3233, %found.conflict3236
  %bound03238 = icmp ult ptr %i.atv, %i.aud
  %bound13239 = icmp ult ptr %i.aub, %i.atx
  %found.conflict3240 = and i1 %bound03238, %bound13239
  %conflict.rdx3241 = or i1 %conflict.rdx3237, %found.conflict3240
  %bound03242 = icmp ult ptr %i.atv, %i.auj
  %bound13243 = icmp ult ptr %i.auh, %i.atx
  %found.conflict3244 = and i1 %bound03242, %bound13243
  %conflict.rdx3245 = or i1 %conflict.rdx3241, %found.conflict3244
  %bound03246 = icmp ult ptr %i.atv, %i.aup
  %bound13247 = icmp ult ptr %i.aun, %i.atx
  %found.conflict3248 = and i1 %bound03246, %bound13247
  %conflict.rdx3249 = or i1 %conflict.rdx3245, %found.conflict3248
  %bound03250 = icmp ult ptr %i.atv, %i.auv
  %bound13251 = icmp ult ptr %i.aut, %i.atx
  %found.conflict3252 = and i1 %bound03250, %bound13251
  %conflict.rdx3253 = or i1 %conflict.rdx3249, %found.conflict3252
  %bound03254 = icmp ult ptr %i.aub, %i.auj
  %bound13255 = icmp ult ptr %i.auh, %i.aud
  %found.conflict3256 = and i1 %bound03254, %bound13255
  %conflict.rdx3257 = or i1 %conflict.rdx3253, %found.conflict3256
  %bound03258 = icmp ult ptr %i.aub, %i.aup
  %bound13259 = icmp ult ptr %i.aun, %i.aud
  %found.conflict3260 = and i1 %bound03258, %bound13259
  %conflict.rdx3261 = or i1 %conflict.rdx3257, %found.conflict3260
  %bound03262 = icmp ult ptr %i.aub, %i.auv
  %bound13263 = icmp ult ptr %i.aut, %i.aud
  %found.conflict3264 = and i1 %bound03262, %bound13263
  %conflict.rdx3265 = or i1 %conflict.rdx3261, %found.conflict3264
  %bound03266 = icmp ult ptr %i.auh, %i.aup
  %bound13267 = icmp ult ptr %i.aun, %i.auj
  %found.conflict3268 = and i1 %bound03266, %bound13267
  %conflict.rdx3269 = or i1 %conflict.rdx3265, %found.conflict3268
  %bound03270 = icmp ult ptr %i.auh, %i.auv
  %bound13271 = icmp ult ptr %i.aut, %i.auj
  %found.conflict3272 = and i1 %bound03270, %bound13271
  %conflict.rdx3273 = or i1 %conflict.rdx3269, %found.conflict3272
  %bound03274 = icmp ult ptr %i.aun, %i.auv
  %bound13275 = icmp ult ptr %i.aut, %i.aup
  %found.conflict3276 = and i1 %bound03274, %bound13275
  %conflict.rdx3277 = or i1 %conflict.rdx3273, %found.conflict3276
  br i1 %conflict.rdx3277, label %scalar.ph3216.preheader, label %vector.ph3278

vector.ph3278:                                    ; preds = %vector.memcheck3218
  %n.vec3279 = and i64 %i.atk, 2147483644         ; 3 uses
  %i.auw = or disjoint i64 %n.vec3279, 1
  %broadcast.splatinsert3280 = insertelement <4 x double> poison, double %i.asj, i64 0
  %broadcast.splat3281 = shufflevector <4 x double> %broadcast.splatinsert3280, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3282 = insertelement <4 x double> poison, double %i.asf, i64 0
  %broadcast.splat3283 = shufflevector <4 x double> %broadcast.splatinsert3282, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3284 = insertelement <4 x double> poison, double %i.asm, i64 0
  %broadcast.splat3285 = shufflevector <4 x double> %broadcast.splatinsert3284, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3286 = insertelement <4 x double> poison, double %i.asp, i64 0
  %broadcast.splat3287 = shufflevector <4 x double> %broadcast.splatinsert3286, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3288 = insertelement <4 x double> poison, double %i.ass, i64 0
  %broadcast.splat3289 = shufflevector <4 x double> %broadcast.splatinsert3288, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3290 = insertelement <4 x double> poison, double %i.asv, i64 0
  %broadcast.splat3291 = shufflevector <4 x double> %broadcast.splatinsert3290, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3292 = insertelement <4 x double> poison, double %i.ash, i64 0
  %broadcast.splat3293 = shufflevector <4 x double> %broadcast.splatinsert3292, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3294 = insertelement <4 x double> poison, double %i.ask, i64 0
  %broadcast.splat3295 = shufflevector <4 x double> %broadcast.splatinsert3294, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3296 = insertelement <4 x double> poison, double %i.asn, i64 0
  %broadcast.splat3297 = shufflevector <4 x double> %broadcast.splatinsert3296, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3298 = insertelement <4 x double> poison, double %i.asq, i64 0
  %broadcast.splat3299 = shufflevector <4 x double> %broadcast.splatinsert3298, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3300 = insertelement <4 x double> poison, double %i.ast, i64 0
  %broadcast.splat3301 = shufflevector <4 x double> %broadcast.splatinsert3300, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3302 = insertelement <4 x double> poison, double %i.asw, i64 0
  %broadcast.splat3303 = shufflevector <4 x double> %broadcast.splatinsert3302, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3304

vector.body3304:                                  ; preds = %vector.body3304, %vector.ph3278
  %index3305 = phi i64 [ 0, %vector.ph3278 ], [ %index.next3317, %vector.body3304 ] ; 2 uses
  %i.aux = or disjoint i64 %index3305, 1          ; 6 uses
  %i.auy = getelementptr [8 x i8], ptr %invariant.gep1740, i64 %i.aux ; 2 uses
  %wide.load3306 = load <4 x double>, ptr %i.auy, align 8, !tbaa !109, !alias.scope !135, !noalias !136 ; 2 uses
  %i.auz = getelementptr [8 x i8], ptr %invariant.gep1742, i64 %i.aux ; 3 uses
  %wide.load3307 = load <4 x double>, ptr %i.auz, align 8, !tbaa !109, !alias.scope !137, !noalias !138
  %i.ava = fmul <4 x double> %broadcast.splat3281, %wide.load3307
  %i.avb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3283, <4 x double> %wide.load3306, <4 x double> %i.ava)
  %i.avc = getelementptr [8 x i8], ptr %invariant.gep1744, i64 %i.aux ; 3 uses
  %wide.load3308 = load <4 x double>, ptr %i.avc, align 8, !tbaa !109, !alias.scope !139, !noalias !140
  %i.avd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3285, <4 x double> %wide.load3308, <4 x double> %i.avb)
  %i.ave = getelementptr [8 x i8], ptr %invariant.gep1746, i64 %i.aux ; 3 uses
  %wide.load3309 = load <4 x double>, ptr %i.ave, align 8, !tbaa !109, !alias.scope !141, !noalias !142
  %i.avf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3287, <4 x double> %wide.load3309, <4 x double> %i.avd)
  %i.avg = getelementptr [8 x i8], ptr %invariant.gep1748, i64 %i.aux ; 3 uses
  %wide.load3310 = load <4 x double>, ptr %i.avg, align 8, !tbaa !109, !alias.scope !143, !noalias !144
  %i.avh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3289, <4 x double> %wide.load3310, <4 x double> %i.avf)
  %i.avi = getelementptr [8 x i8], ptr %invariant.gep1750, i64 %i.aux ; 3 uses
  %wide.load3311 = load <4 x double>, ptr %i.avi, align 8, !tbaa !109, !alias.scope !144
  %i.avj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3291, <4 x double> %wide.load3311, <4 x double> %i.avh)
  %i.avk = fneg <4 x double> %i.avj               ; 6 uses
  %i.avl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.avk, <4 x double> %broadcast.splat3293, <4 x double> %wide.load3306)
  store <4 x double> %i.avl, ptr %i.auy, align 8, !tbaa !109, !alias.scope !135, !noalias !136
  %wide.load3312 = load <4 x double>, ptr %i.auz, align 8, !tbaa !109, !alias.scope !137, !noalias !138
  %i.avm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.avk, <4 x double> %broadcast.splat3295, <4 x double> %wide.load3312)
  store <4 x double> %i.avm, ptr %i.auz, align 8, !tbaa !109, !alias.scope !137, !noalias !138
  %wide.load3313 = load <4 x double>, ptr %i.avc, align 8, !tbaa !109, !alias.scope !139, !noalias !140
  %i.avn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.avk, <4 x double> %broadcast.splat3297, <4 x double> %wide.load3313)
  store <4 x double> %i.avn, ptr %i.avc, align 8, !tbaa !109, !alias.scope !139, !noalias !140
  %wide.load3314 = load <4 x double>, ptr %i.ave, align 8, !tbaa !109, !alias.scope !141, !noalias !142
  %i.avo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.avk, <4 x double> %broadcast.splat3299, <4 x double> %wide.load3314)
  store <4 x double> %i.avo, ptr %i.ave, align 8, !tbaa !109, !alias.scope !141, !noalias !142
  %wide.load3315 = load <4 x double>, ptr %i.avg, align 8, !tbaa !109, !alias.scope !143, !noalias !144
  %i.avp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.avk, <4 x double> %broadcast.splat3301, <4 x double> %wide.load3315)
  store <4 x double> %i.avp, ptr %i.avg, align 8, !tbaa !109, !alias.scope !143, !noalias !144
  %wide.load3316 = load <4 x double>, ptr %i.avi, align 8, !tbaa !109, !alias.scope !144
  %i.avq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.avk, <4 x double> %broadcast.splat3303, <4 x double> %wide.load3316)
  store <4 x double> %i.avq, ptr %i.avi, align 8, !tbaa !109, !alias.scope !144
  %index.next3317 = add nuw i64 %index3305, 4     ; 2 uses
  %i.avr = icmp eq i64 %index.next3317, %n.vec3279
  br i1 %i.avr, label %middle.block3318, label %vector.body3304, !llvm.loop !57

middle.block3318:                                 ; preds = %vector.body3304
  %cmp.n3319 = icmp eq i64 %n.vec3279, %i.atk
  br i1 %cmp.n3319, label %.loopexit, label %scalar.ph3216.preheader

scalar.ph3216.preheader:                          ; preds = %vector.memcheck3218, %.lr.ph1505, %middle.block3318
  %indvars.iv1606.ph = phi i64 [ 1, %vector.memcheck3218 ], [ 1, %.lr.ph1505 ], [ %i.auw, %middle.block3318 ]
  br label %scalar.ph3216

scalar.ph3216:                                    ; preds = %scalar.ph3216.preheader, %scalar.ph3216
  %indvars.iv1606 = phi i64 [ %indvars.iv.next1607, %scalar.ph3216 ], [ %indvars.iv1606.ph, %scalar.ph3216.preheader ] ; 7 uses
  %gep1741 = getelementptr [8 x i8], ptr %invariant.gep1740, i64 %indvars.iv1606 ; 2 uses
  %i.avs = load double, ptr %gep1741, align 8, !tbaa !109 ; 2 uses
  %gep1743 = getelementptr [8 x i8], ptr %invariant.gep1742, i64 %indvars.iv1606 ; 3 uses
  %i.avt = load double, ptr %gep1743, align 8, !tbaa !109
  %i.avu = fmul double %i.asj, %i.avt
  %i.avv = tail call double @llvm.fmuladd.f64(double %i.asf, double %i.avs, double %i.avu)
  %gep1745 = getelementptr [8 x i8], ptr %invariant.gep1744, i64 %indvars.iv1606 ; 3 uses
  %i.avw = load double, ptr %gep1745, align 8, !tbaa !109
  %i.avx = tail call double @llvm.fmuladd.f64(double %i.asm, double %i.avw, double %i.avv)
  %gep1747 = getelementptr [8 x i8], ptr %invariant.gep1746, i64 %indvars.iv1606 ; 3 uses
  %i.avy = load double, ptr %gep1747, align 8, !tbaa !109
  %i.avz = tail call double @llvm.fmuladd.f64(double %i.asp, double %i.avy, double %i.avx)
  %gep1749 = getelementptr [8 x i8], ptr %invariant.gep1748, i64 %indvars.iv1606 ; 3 uses
  %i.awa = load double, ptr %gep1749, align 8, !tbaa !109
  %i.awb = tail call double @llvm.fmuladd.f64(double %i.ass, double %i.awa, double %i.avz)
  %gep1751 = getelementptr [8 x i8], ptr %invariant.gep1750, i64 %indvars.iv1606 ; 3 uses
  %i.awc = load double, ptr %gep1751, align 8, !tbaa !109
  %i.awd = tail call double @llvm.fmuladd.f64(double %i.asv, double %i.awc, double %i.awb)
  %i.awe = fneg double %i.awd                     ; 6 uses
  %i.awf = tail call double @llvm.fmuladd.f64(double %i.awe, double %i.ash, double %i.avs)
  store double %i.awf, ptr %gep1741, align 8, !tbaa !109
  %i.awg = load double, ptr %gep1743, align 8, !tbaa !109
  %i.awh = tail call double @llvm.fmuladd.f64(double %i.awe, double %i.ask, double %i.awg)
  store double %i.awh, ptr %gep1743, align 8, !tbaa !109
  %i.awi = load double, ptr %gep1745, align 8, !tbaa !109
  %i.awj = tail call double @llvm.fmuladd.f64(double %i.awe, double %i.asn, double %i.awi)
  store double %i.awj, ptr %gep1745, align 8, !tbaa !109
  %i.awk = load double, ptr %gep1747, align 8, !tbaa !109
  %i.awl = tail call double @llvm.fmuladd.f64(double %i.awe, double %i.asq, double %i.awk)
  store double %i.awl, ptr %gep1747, align 8, !tbaa !109
  %i.awm = load double, ptr %gep1749, align 8, !tbaa !109
  %i.awn = tail call double @llvm.fmuladd.f64(double %i.awe, double %i.ast, double %i.awm)
  store double %i.awn, ptr %gep1749, align 8, !tbaa !109
  %i.awo = load double, ptr %gep1751, align 8, !tbaa !109
  %i.awp = tail call double @llvm.fmuladd.f64(double %i.awe, double %i.asw, double %i.awo)
  store double %i.awp, ptr %gep1751, align 8, !tbaa !109
  %indvars.iv.next1607 = add nuw nsw i64 %indvars.iv1606, 1 ; 2 uses
  %exitcond1610.not = icmp eq i64 %indvars.iv.next1607, %wide.trip.count1609
  br i1 %exitcond1610.not, label %.loopexit, label %scalar.ph3216, !llvm.loop !58

bb.u:                                             ; preds = %bb.n
  %i.awq = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.awr = load double, ptr %4, align 8, !tbaa !109 ; 7 uses
  %i.aws = fmul double %i.awq, %i.awr             ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !109 ; 3 uses
  %i.awv = fmul double %i.awr, %i.awu             ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.awx = load double, ptr %i.aww, align 8, !tbaa !109 ; 3 uses
  %i.awy = fmul double %i.awr, %i.awx             ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.axa = load double, ptr %i.awz, align 8, !tbaa !109 ; 3 uses
  %i.axb = fmul double %i.awr, %i.axa             ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.axd = load double, ptr %i.axc, align 8, !tbaa !109 ; 3 uses
  %i.axe = fmul double %i.awr, %i.axd             ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.axg = load double, ptr %i.axf, align 8, !tbaa !109 ; 3 uses
  %i.axh = fmul double %i.awr, %i.axg             ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !109 ; 3 uses
  %i.axk = fmul double %i.awr, %i.axj             ; 2 uses
  %i.axl = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14261500 = icmp slt i32 %i.axl, 1
  br i1 %.not14261500, label %.loopexit, label %.lr.ph1502

.lr.ph1502:                                       ; preds = %bb.u
  %i.axm = shl i32 %i.a, 1
  %i.axn = mul nsw i32 %i.a, 3
  %i.axo = shl i32 %i.a, 2
  %i.axp = mul nsw i32 %i.a, 5
  %i.axq = mul nsw i32 %i.a, 6
  %i.axr = mul nsw i32 %i.a, 7
  %i.axs = sext i32 %i.a to i64                   ; 2 uses
  %i.axt = sext i32 %i.axm to i64                 ; 2 uses
  %i.axu = sext i32 %i.axn to i64                 ; 2 uses
  %i.axv = sext i32 %i.axo to i64                 ; 2 uses
  %i.axw = sext i32 %i.axp to i64                 ; 2 uses
  %i.axx = sext i32 %i.axq to i64                 ; 2 uses
  %i.axy = sext i32 %i.axr to i64                 ; 2 uses
  %i.axz = add nuw i32 %i.axl, 1
  %wide.trip.count1604 = zext i32 %i.axz to i64   ; 2 uses
  %invariant.gep1726 = getelementptr [8 x i8], ptr %i.c, i64 %i.axs ; 2 uses
  %invariant.gep1728 = getelementptr [8 x i8], ptr %i.c, i64 %i.axt ; 2 uses
  %invariant.gep1730 = getelementptr [8 x i8], ptr %i.c, i64 %i.axu ; 2 uses
  %invariant.gep1732 = getelementptr [8 x i8], ptr %i.c, i64 %i.axv ; 2 uses
  %invariant.gep1734 = getelementptr [8 x i8], ptr %i.c, i64 %i.axw ; 2 uses
  %invariant.gep1736 = getelementptr [8 x i8], ptr %i.c, i64 %i.axx ; 2 uses
  %invariant.gep1738 = getelementptr [8 x i8], ptr %i.c, i64 %i.axy ; 2 uses
  %i.aya = zext nneg i32 %i.axl to i64            ; 2 uses
  %min.iters.check3011 = icmp ult i32 %i.axl, 32
  br i1 %min.iters.check3011, label %scalar.ph3010.preheader, label %vector.memcheck3012

vector.memcheck3012:                              ; preds = %.lr.ph1502
  %i.ayb = or i64 %i.axs, %i.b
  %i.ayc = shl nsw i64 %i.ayb, 3                  ; 2 uses
  %i.ayd = getelementptr i8, ptr %5, i64 %i.ayc
  %i.aye = getelementptr i8, ptr %i.ayd, i64 8    ; 6 uses
  %i.ayf = shl nuw nsw i64 %wide.trip.count1604, 3 ; 7 uses
  %i.ayg = getelementptr i8, ptr %5, i64 %i.ayc
  %i.ayh = getelementptr i8, ptr %i.ayg, i64 %i.ayf ; 6 uses
  %i.ayi = add nsw i64 %i.axt, %i.b
  %i.ayj = shl nsw i64 %i.ayi, 3                  ; 2 uses
  %i.ayk = getelementptr i8, ptr %5, i64 %i.ayj
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 8    ; 6 uses
  %i.aym = getelementptr i8, ptr %5, i64 %i.ayj
  %i.ayn = getelementptr i8, ptr %i.aym, i64 %i.ayf ; 6 uses
  %i.ayo = add nsw i64 %i.axu, %i.b
  %i.ayp = shl nsw i64 %i.ayo, 3                  ; 2 uses
  %i.ayq = getelementptr i8, ptr %5, i64 %i.ayp
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 8    ; 6 uses
  %i.ays = getelementptr i8, ptr %5, i64 %i.ayp
  %i.ayt = getelementptr i8, ptr %i.ays, i64 %i.ayf ; 6 uses
  %i.ayu = add nsw i64 %i.axv, %i.b
  %i.ayv = shl nsw i64 %i.ayu, 3                  ; 2 uses
  %i.ayw = getelementptr i8, ptr %5, i64 %i.ayv
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 8    ; 6 uses
  %i.ayy = getelementptr i8, ptr %5, i64 %i.ayv
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 %i.ayf ; 6 uses
  %i.aza = add nsw i64 %i.axw, %i.b
  %i.azb = shl nsw i64 %i.aza, 3                  ; 2 uses
  %i.azc = getelementptr i8, ptr %5, i64 %i.azb
  %i.azd = getelementptr i8, ptr %i.azc, i64 8    ; 6 uses
  %i.aze = getelementptr i8, ptr %5, i64 %i.azb
  %i.azf = getelementptr i8, ptr %i.aze, i64 %i.ayf ; 6 uses
  %i.azg = add nsw i64 %i.axx, %i.b
  %i.azh = shl nsw i64 %i.azg, 3                  ; 2 uses
  %i.azi = getelementptr i8, ptr %5, i64 %i.azh
  %i.azj = getelementptr i8, ptr %i.azi, i64 8    ; 6 uses
  %i.azk = getelementptr i8, ptr %5, i64 %i.azh
  %i.azl = getelementptr i8, ptr %i.azk, i64 %i.ayf ; 6 uses
  %i.azm = add nsw i64 %i.axy, %i.b
  %i.azn = shl nsw i64 %i.azm, 3                  ; 2 uses
  %i.azo = getelementptr i8, ptr %5, i64 %i.azn
  %i.azp = getelementptr i8, ptr %i.azo, i64 8    ; 6 uses
  %i.azq = getelementptr i8, ptr %5, i64 %i.azn
  %i.azr = getelementptr i8, ptr %i.azq, i64 %i.ayf ; 6 uses
  %bound03013 = icmp ult ptr %i.aye, %i.ayn
  %bound13014 = icmp ult ptr %i.ayl, %i.ayh
  %found.conflict3015 = and i1 %bound03013, %bound13014
  %bound03016 = icmp ult ptr %i.aye, %i.ayt
  %bound13017 = icmp ult ptr %i.ayr, %i.ayh
  %found.conflict3018 = and i1 %bound03016, %bound13017
  %conflict.rdx3019 = or i1 %found.conflict3015, %found.conflict3018
  %bound03020 = icmp ult ptr %i.aye, %i.ayz
  %bound13021 = icmp ult ptr %i.ayx, %i.ayh
  %found.conflict3022 = and i1 %bound03020, %bound13021
  %conflict.rdx3023 = or i1 %conflict.rdx3019, %found.conflict3022
  %bound03024 = icmp ult ptr %i.aye, %i.azf
  %bound13025 = icmp ult ptr %i.azd, %i.ayh
  %found.conflict3026 = and i1 %bound03024, %bound13025
  %conflict.rdx3027 = or i1 %conflict.rdx3023, %found.conflict3026
  %bound03028 = icmp ult ptr %i.aye, %i.azl
  %bound13029 = icmp ult ptr %i.azj, %i.ayh
  %found.conflict3030 = and i1 %bound03028, %bound13029
  %conflict.rdx3031 = or i1 %conflict.rdx3027, %found.conflict3030
  %bound03032 = icmp ult ptr %i.aye, %i.azr
  %bound13033 = icmp ult ptr %i.azp, %i.ayh
  %found.conflict3034 = and i1 %bound03032, %bound13033
  %conflict.rdx3035 = or i1 %conflict.rdx3031, %found.conflict3034
  %bound03036 = icmp ult ptr %i.ayl, %i.ayt
  %bound13037 = icmp ult ptr %i.ayr, %i.ayn
  %found.conflict3038 = and i1 %bound03036, %bound13037
  %conflict.rdx3039 = or i1 %conflict.rdx3035, %found.conflict3038
  %bound03040 = icmp ult ptr %i.ayl, %i.ayz
  %bound13041 = icmp ult ptr %i.ayx, %i.ayn
  %found.conflict3042 = and i1 %bound03040, %bound13041
  %conflict.rdx3043 = or i1 %conflict.rdx3039, %found.conflict3042
  %bound03044 = icmp ult ptr %i.ayl, %i.azf
  %bound13045 = icmp ult ptr %i.azd, %i.ayn
  %found.conflict3046 = and i1 %bound03044, %bound13045
  %conflict.rdx3047 = or i1 %conflict.rdx3043, %found.conflict3046
  %bound03048 = icmp ult ptr %i.ayl, %i.azl
  %bound13049 = icmp ult ptr %i.azj, %i.ayn
  %found.conflict3050 = and i1 %bound03048, %bound13049
  %conflict.rdx3051 = or i1 %conflict.rdx3047, %found.conflict3050
  %bound03052 = icmp ult ptr %i.ayl, %i.azr
  %bound13053 = icmp ult ptr %i.azp, %i.ayn
  %found.conflict3054 = and i1 %bound03052, %bound13053
  %conflict.rdx3055 = or i1 %conflict.rdx3051, %found.conflict3054
  %bound03056 = icmp ult ptr %i.ayr, %i.ayz
  %bound13057 = icmp ult ptr %i.ayx, %i.ayt
  %found.conflict3058 = and i1 %bound03056, %bound13057
  %conflict.rdx3059 = or i1 %conflict.rdx3055, %found.conflict3058
  %bound03060 = icmp ult ptr %i.ayr, %i.azf
  %bound13061 = icmp ult ptr %i.azd, %i.ayt
  %found.conflict3062 = and i1 %bound03060, %bound13061
  %conflict.rdx3063 = or i1 %conflict.rdx3059, %found.conflict3062
  %bound03064 = icmp ult ptr %i.ayr, %i.azl
  %bound13065 = icmp ult ptr %i.azj, %i.ayt
  %found.conflict3066 = and i1 %bound03064, %bound13065
  %conflict.rdx3067 = or i1 %conflict.rdx3063, %found.conflict3066
  %bound03068 = icmp ult ptr %i.ayr, %i.azr
  %bound13069 = icmp ult ptr %i.azp, %i.ayt
  %found.conflict3070 = and i1 %bound03068, %bound13069
  %conflict.rdx3071 = or i1 %conflict.rdx3067, %found.conflict3070
  %bound03072 = icmp ult ptr %i.ayx, %i.azf
  %bound13073 = icmp ult ptr %i.azd, %i.ayz
  %found.conflict3074 = and i1 %bound03072, %bound13073
  %conflict.rdx3075 = or i1 %conflict.rdx3071, %found.conflict3074
  %bound03076 = icmp ult ptr %i.ayx, %i.azl
  %bound13077 = icmp ult ptr %i.azj, %i.ayz
  %found.conflict3078 = and i1 %bound03076, %bound13077
  %conflict.rdx3079 = or i1 %conflict.rdx3075, %found.conflict3078
  %bound03080 = icmp ult ptr %i.ayx, %i.azr
  %bound13081 = icmp ult ptr %i.azp, %i.ayz
  %found.conflict3082 = and i1 %bound03080, %bound13081
  %conflict.rdx3083 = or i1 %conflict.rdx3079, %found.conflict3082
  %bound03084 = icmp ult ptr %i.azd, %i.azl
  %bound13085 = icmp ult ptr %i.azj, %i.azf
  %found.conflict3086 = and i1 %bound03084, %bound13085
  %conflict.rdx3087 = or i1 %conflict.rdx3083, %found.conflict3086
  %bound03088 = icmp ult ptr %i.azd, %i.azr
  %bound13089 = icmp ult ptr %i.azp, %i.azf
  %found.conflict3090 = and i1 %bound03088, %bound13089
  %conflict.rdx3091 = or i1 %conflict.rdx3087, %found.conflict3090
  %bound03092 = icmp ult ptr %i.azj, %i.azr
  %bound13093 = icmp ult ptr %i.azp, %i.azl
  %found.conflict3094 = and i1 %bound03092, %bound13093
  %conflict.rdx3095 = or i1 %conflict.rdx3091, %found.conflict3094
  br i1 %conflict.rdx3095, label %scalar.ph3010.preheader, label %vector.ph3096

vector.ph3096:                                    ; preds = %vector.memcheck3012
  %n.vec3097 = and i64 %i.aya, 2147483644         ; 3 uses
  %i.azs = or disjoint i64 %n.vec3097, 1
  %broadcast.splatinsert3098 = insertelement <4 x double> poison, double %i.awu, i64 0
  %broadcast.splat3099 = shufflevector <4 x double> %broadcast.splatinsert3098, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3100 = insertelement <4 x double> poison, double %i.awq, i64 0
  %broadcast.splat3101 = shufflevector <4 x double> %broadcast.splatinsert3100, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3102 = insertelement <4 x double> poison, double %i.awx, i64 0
  %broadcast.splat3103 = shufflevector <4 x double> %broadcast.splatinsert3102, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3104 = insertelement <4 x double> poison, double %i.axa, i64 0
  %broadcast.splat3105 = shufflevector <4 x double> %broadcast.splatinsert3104, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3106 = insertelement <4 x double> poison, double %i.axd, i64 0
  %broadcast.splat3107 = shufflevector <4 x double> %broadcast.splatinsert3106, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3108 = insertelement <4 x double> poison, double %i.axg, i64 0
  %broadcast.splat3109 = shufflevector <4 x double> %broadcast.splatinsert3108, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3110 = insertelement <4 x double> poison, double %i.axj, i64 0
  %broadcast.splat3111 = shufflevector <4 x double> %broadcast.splatinsert3110, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3112 = insertelement <4 x double> poison, double %i.aws, i64 0
  %broadcast.splat3113 = shufflevector <4 x double> %broadcast.splatinsert3112, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3114 = insertelement <4 x double> poison, double %i.awv, i64 0
  %broadcast.splat3115 = shufflevector <4 x double> %broadcast.splatinsert3114, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3116 = insertelement <4 x double> poison, double %i.awy, i64 0
  %broadcast.splat3117 = shufflevector <4 x double> %broadcast.splatinsert3116, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3118 = insertelement <4 x double> poison, double %i.axb, i64 0
  %broadcast.splat3119 = shufflevector <4 x double> %broadcast.splatinsert3118, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3120 = insertelement <4 x double> poison, double %i.axe, i64 0
  %broadcast.splat3121 = shufflevector <4 x double> %broadcast.splatinsert3120, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3122 = insertelement <4 x double> poison, double %i.axh, i64 0
  %broadcast.splat3123 = shufflevector <4 x double> %broadcast.splatinsert3122, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3124 = insertelement <4 x double> poison, double %i.axk, i64 0
  %broadcast.splat3125 = shufflevector <4 x double> %broadcast.splatinsert3124, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body3126

vector.body3126:                                  ; preds = %vector.body3126, %vector.ph3096
  %index3127 = phi i64 [ 0, %vector.ph3096 ], [ %index.next3141, %vector.body3126 ] ; 2 uses
  %i.azt = or disjoint i64 %index3127, 1          ; 7 uses
  %i.azu = getelementptr [8 x i8], ptr %invariant.gep1726, i64 %i.azt ; 2 uses
  %wide.load3128 = load <4 x double>, ptr %i.azu, align 8, !tbaa !109, !alias.scope !145, !noalias !146 ; 2 uses
  %i.azv = getelementptr [8 x i8], ptr %invariant.gep1728, i64 %i.azt ; 3 uses
  %wide.load3129 = load <4 x double>, ptr %i.azv, align 8, !tbaa !109, !alias.scope !147, !noalias !148
  %i.azw = fmul <4 x double> %broadcast.splat3099, %wide.load3129
  %i.azx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3101, <4 x double> %wide.load3128, <4 x double> %i.azw)
  %i.azy = getelementptr [8 x i8], ptr %invariant.gep1730, i64 %i.azt ; 3 uses
  %wide.load3130 = load <4 x double>, ptr %i.azy, align 8, !tbaa !109, !alias.scope !149, !noalias !150
  %i.azz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3103, <4 x double> %wide.load3130, <4 x double> %i.azx)
  %i.baa = getelementptr [8 x i8], ptr %invariant.gep1732, i64 %i.azt ; 3 uses
  %wide.load3131 = load <4 x double>, ptr %i.baa, align 8, !tbaa !109, !alias.scope !151, !noalias !152
  %i.bab = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3105, <4 x double> %wide.load3131, <4 x double> %i.azz)
  %i.bac = getelementptr [8 x i8], ptr %invariant.gep1734, i64 %i.azt ; 3 uses
  %wide.load3132 = load <4 x double>, ptr %i.bac, align 8, !tbaa !109, !alias.scope !153, !noalias !154
  %i.bad = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3107, <4 x double> %wide.load3132, <4 x double> %i.bab)
  %i.bae = getelementptr [8 x i8], ptr %invariant.gep1736, i64 %i.azt ; 3 uses
  %wide.load3133 = load <4 x double>, ptr %i.bae, align 8, !tbaa !109, !alias.scope !155, !noalias !156
  %i.baf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3109, <4 x double> %wide.load3133, <4 x double> %i.bad)
  %i.bag = getelementptr [8 x i8], ptr %invariant.gep1738, i64 %i.azt ; 3 uses
  %wide.load3134 = load <4 x double>, ptr %i.bag, align 8, !tbaa !109, !alias.scope !156
  %i.bah = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3111, <4 x double> %wide.load3134, <4 x double> %i.baf)
  %i.bai = fneg <4 x double> %i.bah               ; 7 uses
  %i.baj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3113, <4 x double> %wide.load3128)
  store <4 x double> %i.baj, ptr %i.azu, align 8, !tbaa !109, !alias.scope !145, !noalias !146
  %wide.load3135 = load <4 x double>, ptr %i.azv, align 8, !tbaa !109, !alias.scope !147, !noalias !148
  %i.bak = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3115, <4 x double> %wide.load3135)
  store <4 x double> %i.bak, ptr %i.azv, align 8, !tbaa !109, !alias.scope !147, !noalias !148
  %wide.load3136 = load <4 x double>, ptr %i.azy, align 8, !tbaa !109, !alias.scope !149, !noalias !150
  %i.bal = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3117, <4 x double> %wide.load3136)
  store <4 x double> %i.bal, ptr %i.azy, align 8, !tbaa !109, !alias.scope !149, !noalias !150
  %wide.load3137 = load <4 x double>, ptr %i.baa, align 8, !tbaa !109, !alias.scope !151, !noalias !152
  %i.bam = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3119, <4 x double> %wide.load3137)
  store <4 x double> %i.bam, ptr %i.baa, align 8, !tbaa !109, !alias.scope !151, !noalias !152
  %wide.load3138 = load <4 x double>, ptr %i.bac, align 8, !tbaa !109, !alias.scope !153, !noalias !154
  %i.ban = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3121, <4 x double> %wide.load3138)
  store <4 x double> %i.ban, ptr %i.bac, align 8, !tbaa !109, !alias.scope !153, !noalias !154
  %wide.load3139 = load <4 x double>, ptr %i.bae, align 8, !tbaa !109, !alias.scope !155, !noalias !156
  %i.bao = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3123, <4 x double> %wide.load3139)
  store <4 x double> %i.bao, ptr %i.bae, align 8, !tbaa !109, !alias.scope !155, !noalias !156
  %wide.load3140 = load <4 x double>, ptr %i.bag, align 8, !tbaa !109, !alias.scope !156
  %i.bap = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bai, <4 x double> %broadcast.splat3125, <4 x double> %wide.load3140)
  store <4 x double> %i.bap, ptr %i.bag, align 8, !tbaa !109, !alias.scope !156
  %index.next3141 = add nuw i64 %index3127, 4     ; 2 uses
  %i.baq = icmp eq i64 %index.next3141, %n.vec3097
  br i1 %i.baq, label %middle.block3142, label %vector.body3126, !llvm.loop !67

middle.block3142:                                 ; preds = %vector.body3126
  %cmp.n3143 = icmp eq i64 %n.vec3097, %i.aya
  br i1 %cmp.n3143, label %.loopexit, label %scalar.ph3010.preheader

scalar.ph3010.preheader:                          ; preds = %vector.memcheck3012, %.lr.ph1502, %middle.block3142
  %indvars.iv1601.ph = phi i64 [ 1, %vector.memcheck3012 ], [ 1, %.lr.ph1502 ], [ %i.azs, %middle.block3142 ]
  br label %scalar.ph3010

scalar.ph3010:                                    ; preds = %scalar.ph3010.preheader, %scalar.ph3010
  %indvars.iv1601 = phi i64 [ %indvars.iv.next1602, %scalar.ph3010 ], [ %indvars.iv1601.ph, %scalar.ph3010.preheader ] ; 8 uses
  %gep1727 = getelementptr [8 x i8], ptr %invariant.gep1726, i64 %indvars.iv1601 ; 2 uses
  %i.bar = load double, ptr %gep1727, align 8, !tbaa !109 ; 2 uses
  %gep1729 = getelementptr [8 x i8], ptr %invariant.gep1728, i64 %indvars.iv1601 ; 3 uses
  %i.bas = load double, ptr %gep1729, align 8, !tbaa !109
  %i.bat = fmul double %i.awu, %i.bas
  %i.bau = tail call double @llvm.fmuladd.f64(double %i.awq, double %i.bar, double %i.bat)
  %gep1731 = getelementptr [8 x i8], ptr %invariant.gep1730, i64 %indvars.iv1601 ; 3 uses
  %i.bav = load double, ptr %gep1731, align 8, !tbaa !109
  %i.baw = tail call double @llvm.fmuladd.f64(double %i.awx, double %i.bav, double %i.bau)
  %gep1733 = getelementptr [8 x i8], ptr %invariant.gep1732, i64 %indvars.iv1601 ; 3 uses
  %i.bax = load double, ptr %gep1733, align 8, !tbaa !109
  %i.bay = tail call double @llvm.fmuladd.f64(double %i.axa, double %i.bax, double %i.baw)
  %gep1735 = getelementptr [8 x i8], ptr %invariant.gep1734, i64 %indvars.iv1601 ; 3 uses
  %i.baz = load double, ptr %gep1735, align 8, !tbaa !109
  %i.bba = tail call double @llvm.fmuladd.f64(double %i.axd, double %i.baz, double %i.bay)
  %gep1737 = getelementptr [8 x i8], ptr %invariant.gep1736, i64 %indvars.iv1601 ; 3 uses
  %i.bbb = load double, ptr %gep1737, align 8, !tbaa !109
  %i.bbc = tail call double @llvm.fmuladd.f64(double %i.axg, double %i.bbb, double %i.bba)
  %gep1739 = getelementptr [8 x i8], ptr %invariant.gep1738, i64 %indvars.iv1601 ; 3 uses
  %i.bbd = load double, ptr %gep1739, align 8, !tbaa !109
  %i.bbe = tail call double @llvm.fmuladd.f64(double %i.axj, double %i.bbd, double %i.bbc)
  %i.bbf = fneg double %i.bbe                     ; 7 uses
  %i.bbg = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.aws, double %i.bar)
  store double %i.bbg, ptr %gep1727, align 8, !tbaa !109
  %i.bbh = load double, ptr %gep1729, align 8, !tbaa !109
  %i.bbi = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.awv, double %i.bbh)
  store double %i.bbi, ptr %gep1729, align 8, !tbaa !109
  %i.bbj = load double, ptr %gep1731, align 8, !tbaa !109
  %i.bbk = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.awy, double %i.bbj)
  store double %i.bbk, ptr %gep1731, align 8, !tbaa !109
  %i.bbl = load double, ptr %gep1733, align 8, !tbaa !109
  %i.bbm = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.axb, double %i.bbl)
  store double %i.bbm, ptr %gep1733, align 8, !tbaa !109
  %i.bbn = load double, ptr %gep1735, align 8, !tbaa !109
  %i.bbo = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.axe, double %i.bbn)
  store double %i.bbo, ptr %gep1735, align 8, !tbaa !109
  %i.bbp = load double, ptr %gep1737, align 8, !tbaa !109
  %i.bbq = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.axh, double %i.bbp)
  store double %i.bbq, ptr %gep1737, align 8, !tbaa !109
  %i.bbr = load double, ptr %gep1739, align 8, !tbaa !109
  %i.bbs = tail call double @llvm.fmuladd.f64(double %i.bbf, double %i.axk, double %i.bbr)
  store double %i.bbs, ptr %gep1739, align 8, !tbaa !109
  %indvars.iv.next1602 = add nuw nsw i64 %indvars.iv1601, 1 ; 2 uses
  %exitcond1605.not = icmp eq i64 %indvars.iv.next1602, %wide.trip.count1604
  br i1 %exitcond1605.not, label %.loopexit, label %scalar.ph3010, !llvm.loop !68

bb.v:                                             ; preds = %bb.n
  %i.bbt = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.bbu = load double, ptr %4, align 8, !tbaa !109 ; 8 uses
  %i.bbv = fmul double %i.bbt, %i.bbu             ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bbx = load double, ptr %i.bbw, align 8, !tbaa !109 ; 3 uses
  %i.bby = fmul double %i.bbu, %i.bbx             ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bca = load double, ptr %i.bbz, align 8, !tbaa !109 ; 3 uses
  %i.bcb = fmul double %i.bbu, %i.bca             ; 2 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bcd = load double, ptr %i.bcc, align 8, !tbaa !109 ; 3 uses
  %i.bce = fmul double %i.bbu, %i.bcd             ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bcg = load double, ptr %i.bcf, align 8, !tbaa !109 ; 3 uses
  %i.bch = fmul double %i.bbu, %i.bcg             ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bcj = load double, ptr %i.bci, align 8, !tbaa !109 ; 3 uses
  %i.bck = fmul double %i.bbu, %i.bcj             ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bcm = load double, ptr %i.bcl, align 8, !tbaa !109 ; 3 uses
  %i.bcn = fmul double %i.bbu, %i.bcm             ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bcp = load double, ptr %i.bco, align 8, !tbaa !109 ; 3 uses
  %i.bcq = fmul double %i.bbu, %i.bcp             ; 2 uses
  %i.bcr = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14251497 = icmp slt i32 %i.bcr, 1
  br i1 %.not14251497, label %.loopexit, label %.lr.ph1499

.lr.ph1499:                                       ; preds = %bb.v
  %i.bcs = shl i32 %i.a, 1
  %i.bct = mul nsw i32 %i.a, 3
  %i.bcu = shl i32 %i.a, 2
  %i.bcv = mul nsw i32 %i.a, 5
  %i.bcw = mul nsw i32 %i.a, 6
  %i.bcx = mul i32 %i.a, 7
  %i.bcy = shl i32 %i.a, 3
  %i.bcz = sext i32 %i.a to i64                   ; 2 uses
  %i.bda = sext i32 %i.bcs to i64                 ; 2 uses
  %i.bdb = sext i32 %i.bct to i64                 ; 2 uses
  %i.bdc = sext i32 %i.bcu to i64                 ; 2 uses
  %i.bdd = sext i32 %i.bcv to i64                 ; 2 uses
  %i.bde = sext i32 %i.bcw to i64                 ; 2 uses
  %i.bdf = sext i32 %i.bcx to i64                 ; 2 uses
  %i.bdg = sext i32 %i.bcy to i64                 ; 2 uses
  %i.bdh = add nuw i32 %i.bcr, 1
  %wide.trip.count1599 = zext i32 %i.bdh to i64   ; 2 uses
  %invariant.gep1710 = getelementptr [8 x i8], ptr %i.c, i64 %i.bcz ; 2 uses
  %invariant.gep1712 = getelementptr [8 x i8], ptr %i.c, i64 %i.bda ; 2 uses
  %invariant.gep1714 = getelementptr [8 x i8], ptr %i.c, i64 %i.bdb ; 2 uses
  %invariant.gep1716 = getelementptr [8 x i8], ptr %i.c, i64 %i.bdc ; 2 uses
  %invariant.gep1718 = getelementptr [8 x i8], ptr %i.c, i64 %i.bdd ; 2 uses
  %invariant.gep1720 = getelementptr [8 x i8], ptr %i.c, i64 %i.bde ; 2 uses
  %invariant.gep1722 = getelementptr [8 x i8], ptr %i.c, i64 %i.bdf ; 2 uses
  %invariant.gep1724 = getelementptr [8 x i8], ptr %i.c, i64 %i.bdg ; 2 uses
  %i.bdi = zext nneg i32 %i.bcr to i64            ; 2 uses
  %min.iters.check2745 = icmp ult i32 %i.bcr, 36
  br i1 %min.iters.check2745, label %scalar.ph2744.preheader, label %vector.memcheck2746

vector.memcheck2746:                              ; preds = %.lr.ph1499
  %i.bdj = or i64 %i.bcz, %i.b
  %i.bdk = shl nsw i64 %i.bdj, 3                  ; 2 uses
  %i.bdl = getelementptr i8, ptr %5, i64 %i.bdk
  %i.bdm = getelementptr i8, ptr %i.bdl, i64 8    ; 7 uses
  %i.bdn = shl nuw nsw i64 %wide.trip.count1599, 3 ; 8 uses
  %i.bdo = getelementptr i8, ptr %5, i64 %i.bdk
  %i.bdp = getelementptr i8, ptr %i.bdo, i64 %i.bdn ; 7 uses
  %i.bdq = add nsw i64 %i.bda, %i.b
  %i.bdr = shl nsw i64 %i.bdq, 3                  ; 2 uses
  %i.bds = getelementptr i8, ptr %5, i64 %i.bdr
  %i.bdt = getelementptr i8, ptr %i.bds, i64 8    ; 7 uses
  %i.bdu = getelementptr i8, ptr %5, i64 %i.bdr
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 %i.bdn ; 7 uses
  %i.bdw = add nsw i64 %i.bdb, %i.b
  %i.bdx = shl nsw i64 %i.bdw, 3                  ; 2 uses
  %i.bdy = getelementptr i8, ptr %5, i64 %i.bdx
  %i.bdz = getelementptr i8, ptr %i.bdy, i64 8    ; 7 uses
  %i.bea = getelementptr i8, ptr %5, i64 %i.bdx
  %i.beb = getelementptr i8, ptr %i.bea, i64 %i.bdn ; 7 uses
  %i.bec = add nsw i64 %i.bdc, %i.b
  %i.bed = shl nsw i64 %i.bec, 3                  ; 2 uses
  %i.bee = getelementptr i8, ptr %5, i64 %i.bed
  %i.bef = getelementptr i8, ptr %i.bee, i64 8    ; 7 uses
  %i.beg = getelementptr i8, ptr %5, i64 %i.bed
  %i.beh = getelementptr i8, ptr %i.beg, i64 %i.bdn ; 7 uses
  %i.bei = add nsw i64 %i.bdd, %i.b
  %i.bej = shl nsw i64 %i.bei, 3                  ; 2 uses
  %i.bek = getelementptr i8, ptr %5, i64 %i.bej
  %i.bel = getelementptr i8, ptr %i.bek, i64 8    ; 7 uses
  %i.bem = getelementptr i8, ptr %5, i64 %i.bej
  %i.ben = getelementptr i8, ptr %i.bem, i64 %i.bdn ; 7 uses
  %i.beo = add nsw i64 %i.bde, %i.b
  %i.bep = shl nsw i64 %i.beo, 3                  ; 2 uses
  %i.beq = getelementptr i8, ptr %5, i64 %i.bep
  %i.ber = getelementptr i8, ptr %i.beq, i64 8    ; 7 uses
  %i.bes = getelementptr i8, ptr %5, i64 %i.bep
  %i.bet = getelementptr i8, ptr %i.bes, i64 %i.bdn ; 7 uses
  %i.beu = add nsw i64 %i.bdf, %i.b
  %i.bev = shl nsw i64 %i.beu, 3                  ; 2 uses
  %i.bew = getelementptr i8, ptr %5, i64 %i.bev
  %i.bex = getelementptr i8, ptr %i.bew, i64 8    ; 7 uses
  %i.bey = getelementptr i8, ptr %5, i64 %i.bev
  %i.bez = getelementptr i8, ptr %i.bey, i64 %i.bdn ; 7 uses
  %i.bfa = add nsw i64 %i.bdg, %i.b
  %i.bfb = shl nsw i64 %i.bfa, 3                  ; 2 uses
  %i.bfc = getelementptr i8, ptr %5, i64 %i.bfb
  %i.bfd = getelementptr i8, ptr %i.bfc, i64 8    ; 7 uses
  %i.bfe = getelementptr i8, ptr %5, i64 %i.bfb
  %i.bff = getelementptr i8, ptr %i.bfe, i64 %i.bdn ; 7 uses
  %bound02747 = icmp ult ptr %i.bdm, %i.bdv
  %bound12748 = icmp ult ptr %i.bdt, %i.bdp
  %found.conflict2749 = and i1 %bound02747, %bound12748
  %bound02750 = icmp ult ptr %i.bdm, %i.beb
  %bound12751 = icmp ult ptr %i.bdz, %i.bdp
  %found.conflict2752 = and i1 %bound02750, %bound12751
  %conflict.rdx2753 = or i1 %found.conflict2749, %found.conflict2752
  %bound02754 = icmp ult ptr %i.bdm, %i.beh
  %bound12755 = icmp ult ptr %i.bef, %i.bdp
  %found.conflict2756 = and i1 %bound02754, %bound12755
  %conflict.rdx2757 = or i1 %conflict.rdx2753, %found.conflict2756
  %bound02758 = icmp ult ptr %i.bdm, %i.ben
  %bound12759 = icmp ult ptr %i.bel, %i.bdp
  %found.conflict2760 = and i1 %bound02758, %bound12759
  %conflict.rdx2761 = or i1 %conflict.rdx2757, %found.conflict2760
  %bound02762 = icmp ult ptr %i.bdm, %i.bet
  %bound12763 = icmp ult ptr %i.ber, %i.bdp
  %found.conflict2764 = and i1 %bound02762, %bound12763
  %conflict.rdx2765 = or i1 %conflict.rdx2761, %found.conflict2764
  %bound02766 = icmp ult ptr %i.bdm, %i.bez
  %bound12767 = icmp ult ptr %i.bex, %i.bdp
  %found.conflict2768 = and i1 %bound02766, %bound12767
  %conflict.rdx2769 = or i1 %conflict.rdx2765, %found.conflict2768
  %bound02770 = icmp ult ptr %i.bdm, %i.bff
  %bound12771 = icmp ult ptr %i.bfd, %i.bdp
  %found.conflict2772 = and i1 %bound02770, %bound12771
  %conflict.rdx2773 = or i1 %conflict.rdx2769, %found.conflict2772
  %bound02774 = icmp ult ptr %i.bdt, %i.beb
  %bound12775 = icmp ult ptr %i.bdz, %i.bdv
  %found.conflict2776 = and i1 %bound02774, %bound12775
  %conflict.rdx2777 = or i1 %conflict.rdx2773, %found.conflict2776
  %bound02778 = icmp ult ptr %i.bdt, %i.beh
  %bound12779 = icmp ult ptr %i.bef, %i.bdv
  %found.conflict2780 = and i1 %bound02778, %bound12779
  %conflict.rdx2781 = or i1 %conflict.rdx2777, %found.conflict2780
  %bound02782 = icmp ult ptr %i.bdt, %i.ben
  %bound12783 = icmp ult ptr %i.bel, %i.bdv
  %found.conflict2784 = and i1 %bound02782, %bound12783
  %conflict.rdx2785 = or i1 %conflict.rdx2781, %found.conflict2784
  %bound02786 = icmp ult ptr %i.bdt, %i.bet
  %bound12787 = icmp ult ptr %i.ber, %i.bdv
  %found.conflict2788 = and i1 %bound02786, %bound12787
  %conflict.rdx2789 = or i1 %conflict.rdx2785, %found.conflict2788
  %bound02790 = icmp ult ptr %i.bdt, %i.bez
  %bound12791 = icmp ult ptr %i.bex, %i.bdv
  %found.conflict2792 = and i1 %bound02790, %bound12791
  %conflict.rdx2793 = or i1 %conflict.rdx2789, %found.conflict2792
  %bound02794 = icmp ult ptr %i.bdt, %i.bff
  %bound12795 = icmp ult ptr %i.bfd, %i.bdv
  %found.conflict2796 = and i1 %bound02794, %bound12795
  %conflict.rdx2797 = or i1 %conflict.rdx2793, %found.conflict2796
  %bound02798 = icmp ult ptr %i.bdz, %i.beh
  %bound12799 = icmp ult ptr %i.bef, %i.beb
  %found.conflict2800 = and i1 %bound02798, %bound12799
  %conflict.rdx2801 = or i1 %conflict.rdx2797, %found.conflict2800
  %bound02802 = icmp ult ptr %i.bdz, %i.ben
  %bound12803 = icmp ult ptr %i.bel, %i.beb
  %found.conflict2804 = and i1 %bound02802, %bound12803
  %conflict.rdx2805 = or i1 %conflict.rdx2801, %found.conflict2804
  %bound02806 = icmp ult ptr %i.bdz, %i.bet
  %bound12807 = icmp ult ptr %i.ber, %i.beb
  %found.conflict2808 = and i1 %bound02806, %bound12807
  %conflict.rdx2809 = or i1 %conflict.rdx2805, %found.conflict2808
  %bound02810 = icmp ult ptr %i.bdz, %i.bez
  %bound12811 = icmp ult ptr %i.bex, %i.beb
  %found.conflict2812 = and i1 %bound02810, %bound12811
  %conflict.rdx2813 = or i1 %conflict.rdx2809, %found.conflict2812
  %bound02814 = icmp ult ptr %i.bdz, %i.bff
  %bound12815 = icmp ult ptr %i.bfd, %i.beb
  %found.conflict2816 = and i1 %bound02814, %bound12815
  %conflict.rdx2817 = or i1 %conflict.rdx2813, %found.conflict2816
  %bound02818 = icmp ult ptr %i.bef, %i.ben
  %bound12819 = icmp ult ptr %i.bel, %i.beh
  %found.conflict2820 = and i1 %bound02818, %bound12819
  %conflict.rdx2821 = or i1 %conflict.rdx2817, %found.conflict2820
  %bound02822 = icmp ult ptr %i.bef, %i.bet
  %bound12823 = icmp ult ptr %i.ber, %i.beh
  %found.conflict2824 = and i1 %bound02822, %bound12823
  %conflict.rdx2825 = or i1 %conflict.rdx2821, %found.conflict2824
  %bound02826 = icmp ult ptr %i.bef, %i.bez
  %bound12827 = icmp ult ptr %i.bex, %i.beh
  %found.conflict2828 = and i1 %bound02826, %bound12827
  %conflict.rdx2829 = or i1 %conflict.rdx2825, %found.conflict2828
  %bound02830 = icmp ult ptr %i.bef, %i.bff
  %bound12831 = icmp ult ptr %i.bfd, %i.beh
  %found.conflict2832 = and i1 %bound02830, %bound12831
  %conflict.rdx2833 = or i1 %conflict.rdx2829, %found.conflict2832
  %bound02834 = icmp ult ptr %i.bel, %i.bet
  %bound12835 = icmp ult ptr %i.ber, %i.ben
  %found.conflict2836 = and i1 %bound02834, %bound12835
  %conflict.rdx2837 = or i1 %conflict.rdx2833, %found.conflict2836
  %bound02838 = icmp ult ptr %i.bel, %i.bez
  %bound12839 = icmp ult ptr %i.bex, %i.ben
  %found.conflict2840 = and i1 %bound02838, %bound12839
  %conflict.rdx2841 = or i1 %conflict.rdx2837, %found.conflict2840
  %bound02842 = icmp ult ptr %i.bel, %i.bff
  %bound12843 = icmp ult ptr %i.bfd, %i.ben
  %found.conflict2844 = and i1 %bound02842, %bound12843
  %conflict.rdx2845 = or i1 %conflict.rdx2841, %found.conflict2844
  %bound02846 = icmp ult ptr %i.ber, %i.bez
  %bound12847 = icmp ult ptr %i.bex, %i.bet
  %found.conflict2848 = and i1 %bound02846, %bound12847
  %conflict.rdx2849 = or i1 %conflict.rdx2845, %found.conflict2848
  %bound02850 = icmp ult ptr %i.ber, %i.bff
  %bound12851 = icmp ult ptr %i.bfd, %i.bet
  %found.conflict2852 = and i1 %bound02850, %bound12851
  %conflict.rdx2853 = or i1 %conflict.rdx2849, %found.conflict2852
  %bound02854 = icmp ult ptr %i.bex, %i.bff
  %bound12855 = icmp ult ptr %i.bfd, %i.bez
  %found.conflict2856 = and i1 %bound02854, %bound12855
  %conflict.rdx2857 = or i1 %conflict.rdx2853, %found.conflict2856
  br i1 %conflict.rdx2857, label %scalar.ph2744.preheader, label %vector.ph2858

vector.ph2858:                                    ; preds = %vector.memcheck2746
  %n.vec2859 = and i64 %i.bdi, 2147483644         ; 3 uses
  %i.bfg = or disjoint i64 %n.vec2859, 1
  %broadcast.splatinsert2860 = insertelement <4 x double> poison, double %i.bbx, i64 0
  %broadcast.splat2861 = shufflevector <4 x double> %broadcast.splatinsert2860, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2862 = insertelement <4 x double> poison, double %i.bbt, i64 0
  %broadcast.splat2863 = shufflevector <4 x double> %broadcast.splatinsert2862, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2864 = insertelement <4 x double> poison, double %i.bca, i64 0
  %broadcast.splat2865 = shufflevector <4 x double> %broadcast.splatinsert2864, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2866 = insertelement <4 x double> poison, double %i.bcd, i64 0
  %broadcast.splat2867 = shufflevector <4 x double> %broadcast.splatinsert2866, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2868 = insertelement <4 x double> poison, double %i.bcg, i64 0
  %broadcast.splat2869 = shufflevector <4 x double> %broadcast.splatinsert2868, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2870 = insertelement <4 x double> poison, double %i.bcj, i64 0
  %broadcast.splat2871 = shufflevector <4 x double> %broadcast.splatinsert2870, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2872 = insertelement <4 x double> poison, double %i.bcm, i64 0
  %broadcast.splat2873 = shufflevector <4 x double> %broadcast.splatinsert2872, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2874 = insertelement <4 x double> poison, double %i.bcp, i64 0
  %broadcast.splat2875 = shufflevector <4 x double> %broadcast.splatinsert2874, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2876 = insertelement <4 x double> poison, double %i.bbv, i64 0
  %broadcast.splat2877 = shufflevector <4 x double> %broadcast.splatinsert2876, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2878 = insertelement <4 x double> poison, double %i.bby, i64 0
  %broadcast.splat2879 = shufflevector <4 x double> %broadcast.splatinsert2878, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2880 = insertelement <4 x double> poison, double %i.bcb, i64 0
  %broadcast.splat2881 = shufflevector <4 x double> %broadcast.splatinsert2880, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2882 = insertelement <4 x double> poison, double %i.bce, i64 0
  %broadcast.splat2883 = shufflevector <4 x double> %broadcast.splatinsert2882, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2884 = insertelement <4 x double> poison, double %i.bch, i64 0
  %broadcast.splat2885 = shufflevector <4 x double> %broadcast.splatinsert2884, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2886 = insertelement <4 x double> poison, double %i.bck, i64 0
  %broadcast.splat2887 = shufflevector <4 x double> %broadcast.splatinsert2886, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2888 = insertelement <4 x double> poison, double %i.bcn, i64 0
  %broadcast.splat2889 = shufflevector <4 x double> %broadcast.splatinsert2888, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2890 = insertelement <4 x double> poison, double %i.bcq, i64 0
  %broadcast.splat2891 = shufflevector <4 x double> %broadcast.splatinsert2890, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body2892

vector.body2892:                                  ; preds = %vector.body2892, %vector.ph2858
  %index2893 = phi i64 [ 0, %vector.ph2858 ], [ %index.next2909, %vector.body2892 ] ; 2 uses
  %i.bfh = or disjoint i64 %index2893, 1          ; 8 uses
  %i.bfi = getelementptr [8 x i8], ptr %invariant.gep1710, i64 %i.bfh ; 2 uses
  %wide.load2894 = load <4 x double>, ptr %i.bfi, align 8, !tbaa !109, !alias.scope !157, !noalias !158 ; 2 uses
  %i.bfj = getelementptr [8 x i8], ptr %invariant.gep1712, i64 %i.bfh ; 3 uses
  %wide.load2895 = load <4 x double>, ptr %i.bfj, align 8, !tbaa !109, !alias.scope !159, !noalias !160
  %i.bfk = fmul <4 x double> %broadcast.splat2861, %wide.load2895
  %i.bfl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2863, <4 x double> %wide.load2894, <4 x double> %i.bfk)
  %i.bfm = getelementptr [8 x i8], ptr %invariant.gep1714, i64 %i.bfh ; 3 uses
  %wide.load2896 = load <4 x double>, ptr %i.bfm, align 8, !tbaa !109, !alias.scope !161, !noalias !162
  %i.bfn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2865, <4 x double> %wide.load2896, <4 x double> %i.bfl)
  %i.bfo = getelementptr [8 x i8], ptr %invariant.gep1716, i64 %i.bfh ; 3 uses
  %wide.load2897 = load <4 x double>, ptr %i.bfo, align 8, !tbaa !109, !alias.scope !163, !noalias !164
  %i.bfp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2867, <4 x double> %wide.load2897, <4 x double> %i.bfn)
  %i.bfq = getelementptr [8 x i8], ptr %invariant.gep1718, i64 %i.bfh ; 3 uses
  %wide.load2898 = load <4 x double>, ptr %i.bfq, align 8, !tbaa !109, !alias.scope !165, !noalias !166
  %i.bfr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2869, <4 x double> %wide.load2898, <4 x double> %i.bfp)
  %i.bfs = getelementptr [8 x i8], ptr %invariant.gep1720, i64 %i.bfh ; 3 uses
  %wide.load2899 = load <4 x double>, ptr %i.bfs, align 8, !tbaa !109, !alias.scope !167, !noalias !168
  %i.bft = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2871, <4 x double> %wide.load2899, <4 x double> %i.bfr)
  %i.bfu = getelementptr [8 x i8], ptr %invariant.gep1722, i64 %i.bfh ; 3 uses
  %wide.load2900 = load <4 x double>, ptr %i.bfu, align 8, !tbaa !109, !alias.scope !169, !noalias !170
  %i.bfv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2873, <4 x double> %wide.load2900, <4 x double> %i.bft)
  %i.bfw = getelementptr [8 x i8], ptr %invariant.gep1724, i64 %i.bfh ; 3 uses
  %wide.load2901 = load <4 x double>, ptr %i.bfw, align 8, !tbaa !109, !alias.scope !170
  %i.bfx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2875, <4 x double> %wide.load2901, <4 x double> %i.bfv)
  %i.bfy = fneg <4 x double> %i.bfx               ; 8 uses
  %i.bfz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2877, <4 x double> %wide.load2894)
  store <4 x double> %i.bfz, ptr %i.bfi, align 8, !tbaa !109, !alias.scope !157, !noalias !158
  %wide.load2902 = load <4 x double>, ptr %i.bfj, align 8, !tbaa !109, !alias.scope !159, !noalias !160
  %i.bga = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2879, <4 x double> %wide.load2902)
  store <4 x double> %i.bga, ptr %i.bfj, align 8, !tbaa !109, !alias.scope !159, !noalias !160
  %wide.load2903 = load <4 x double>, ptr %i.bfm, align 8, !tbaa !109, !alias.scope !161, !noalias !162
  %i.bgb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2881, <4 x double> %wide.load2903)
  store <4 x double> %i.bgb, ptr %i.bfm, align 8, !tbaa !109, !alias.scope !161, !noalias !162
  %wide.load2904 = load <4 x double>, ptr %i.bfo, align 8, !tbaa !109, !alias.scope !163, !noalias !164
  %i.bgc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2883, <4 x double> %wide.load2904)
  store <4 x double> %i.bgc, ptr %i.bfo, align 8, !tbaa !109, !alias.scope !163, !noalias !164
  %wide.load2905 = load <4 x double>, ptr %i.bfq, align 8, !tbaa !109, !alias.scope !165, !noalias !166
  %i.bgd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2885, <4 x double> %wide.load2905)
  store <4 x double> %i.bgd, ptr %i.bfq, align 8, !tbaa !109, !alias.scope !165, !noalias !166
  %wide.load2906 = load <4 x double>, ptr %i.bfs, align 8, !tbaa !109, !alias.scope !167, !noalias !168
  %i.bge = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2887, <4 x double> %wide.load2906)
  store <4 x double> %i.bge, ptr %i.bfs, align 8, !tbaa !109, !alias.scope !167, !noalias !168
  %wide.load2907 = load <4 x double>, ptr %i.bfu, align 8, !tbaa !109, !alias.scope !169, !noalias !170
  %i.bgf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2889, <4 x double> %wide.load2907)
  store <4 x double> %i.bgf, ptr %i.bfu, align 8, !tbaa !109, !alias.scope !169, !noalias !170
  %wide.load2908 = load <4 x double>, ptr %i.bfw, align 8, !tbaa !109, !alias.scope !170
  %i.bgg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfy, <4 x double> %broadcast.splat2891, <4 x double> %wide.load2908)
  store <4 x double> %i.bgg, ptr %i.bfw, align 8, !tbaa !109, !alias.scope !170
  %index.next2909 = add nuw i64 %index2893, 4     ; 2 uses
  %i.bgh = icmp eq i64 %index.next2909, %n.vec2859
  br i1 %i.bgh, label %middle.block2910, label %vector.body2892, !llvm.loop !78

middle.block2910:                                 ; preds = %vector.body2892
  %cmp.n2911 = icmp eq i64 %n.vec2859, %i.bdi
  br i1 %cmp.n2911, label %.loopexit, label %scalar.ph2744.preheader

scalar.ph2744.preheader:                          ; preds = %vector.memcheck2746, %.lr.ph1499, %middle.block2910
  %indvars.iv1596.ph = phi i64 [ 1, %vector.memcheck2746 ], [ 1, %.lr.ph1499 ], [ %i.bfg, %middle.block2910 ]
  br label %scalar.ph2744

scalar.ph2744:                                    ; preds = %scalar.ph2744.preheader, %scalar.ph2744
  %indvars.iv1596 = phi i64 [ %indvars.iv.next1597, %scalar.ph2744 ], [ %indvars.iv1596.ph, %scalar.ph2744.preheader ] ; 9 uses
  %gep1711 = getelementptr [8 x i8], ptr %invariant.gep1710, i64 %indvars.iv1596 ; 2 uses
  %i.bgi = load double, ptr %gep1711, align 8, !tbaa !109 ; 2 uses
  %gep1713 = getelementptr [8 x i8], ptr %invariant.gep1712, i64 %indvars.iv1596 ; 3 uses
  %i.bgj = load double, ptr %gep1713, align 8, !tbaa !109
  %i.bgk = fmul double %i.bbx, %i.bgj
  %i.bgl = tail call double @llvm.fmuladd.f64(double %i.bbt, double %i.bgi, double %i.bgk)
  %gep1715 = getelementptr [8 x i8], ptr %invariant.gep1714, i64 %indvars.iv1596 ; 3 uses
  %i.bgm = load double, ptr %gep1715, align 8, !tbaa !109
  %i.bgn = tail call double @llvm.fmuladd.f64(double %i.bca, double %i.bgm, double %i.bgl)
  %gep1717 = getelementptr [8 x i8], ptr %invariant.gep1716, i64 %indvars.iv1596 ; 3 uses
  %i.bgo = load double, ptr %gep1717, align 8, !tbaa !109
  %i.bgp = tail call double @llvm.fmuladd.f64(double %i.bcd, double %i.bgo, double %i.bgn)
  %gep1719 = getelementptr [8 x i8], ptr %invariant.gep1718, i64 %indvars.iv1596 ; 3 uses
  %i.bgq = load double, ptr %gep1719, align 8, !tbaa !109
  %i.bgr = tail call double @llvm.fmuladd.f64(double %i.bcg, double %i.bgq, double %i.bgp)
  %gep1721 = getelementptr [8 x i8], ptr %invariant.gep1720, i64 %indvars.iv1596 ; 3 uses
  %i.bgs = load double, ptr %gep1721, align 8, !tbaa !109
  %i.bgt = tail call double @llvm.fmuladd.f64(double %i.bcj, double %i.bgs, double %i.bgr)
  %gep1723 = getelementptr [8 x i8], ptr %invariant.gep1722, i64 %indvars.iv1596 ; 3 uses
  %i.bgu = load double, ptr %gep1723, align 8, !tbaa !109
  %i.bgv = tail call double @llvm.fmuladd.f64(double %i.bcm, double %i.bgu, double %i.bgt)
  %gep1725 = getelementptr [8 x i8], ptr %invariant.gep1724, i64 %indvars.iv1596 ; 3 uses
  %i.bgw = load double, ptr %gep1725, align 8, !tbaa !109
  %i.bgx = tail call double @llvm.fmuladd.f64(double %i.bcp, double %i.bgw, double %i.bgv)
  %i.bgy = fneg double %i.bgx                     ; 8 uses
  %i.bgz = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bbv, double %i.bgi)
  store double %i.bgz, ptr %gep1711, align 8, !tbaa !109
  %i.bha = load double, ptr %gep1713, align 8, !tbaa !109
  %i.bhb = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bby, double %i.bha)
  store double %i.bhb, ptr %gep1713, align 8, !tbaa !109
  %i.bhc = load double, ptr %gep1715, align 8, !tbaa !109
  %i.bhd = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bcb, double %i.bhc)
  store double %i.bhd, ptr %gep1715, align 8, !tbaa !109
  %i.bhe = load double, ptr %gep1717, align 8, !tbaa !109
  %i.bhf = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bce, double %i.bhe)
  store double %i.bhf, ptr %gep1717, align 8, !tbaa !109
  %i.bhg = load double, ptr %gep1719, align 8, !tbaa !109
  %i.bhh = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bch, double %i.bhg)
  store double %i.bhh, ptr %gep1719, align 8, !tbaa !109
  %i.bhi = load double, ptr %gep1721, align 8, !tbaa !109
  %i.bhj = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bck, double %i.bhi)
  store double %i.bhj, ptr %gep1721, align 8, !tbaa !109
  %i.bhk = load double, ptr %gep1723, align 8, !tbaa !109
  %i.bhl = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bcn, double %i.bhk)
  store double %i.bhl, ptr %gep1723, align 8, !tbaa !109
  %i.bhm = load double, ptr %gep1725, align 8, !tbaa !109
  %i.bhn = tail call double @llvm.fmuladd.f64(double %i.bgy, double %i.bcq, double %i.bhm)
  store double %i.bhn, ptr %gep1725, align 8, !tbaa !109
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1 ; 2 uses
  %exitcond1600.not = icmp eq i64 %indvars.iv.next1597, %wide.trip.count1599
  br i1 %exitcond1600.not, label %.loopexit, label %scalar.ph2744, !llvm.loop !79

bb.w:                                             ; preds = %bb.n
  %i.bho = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.bhp = load double, ptr %4, align 8, !tbaa !109 ; 9 uses
  %i.bhq = fmul double %i.bho, %i.bhp             ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bhs = load double, ptr %i.bhr, align 8, !tbaa !109 ; 3 uses
  %i.bht = fmul double %i.bhp, %i.bhs             ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bhv = load double, ptr %i.bhu, align 8, !tbaa !109 ; 3 uses
  %i.bhw = fmul double %i.bhp, %i.bhv             ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bhy = load double, ptr %i.bhx, align 8, !tbaa !109 ; 3 uses
  %i.bhz = fmul double %i.bhp, %i.bhy             ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bib = load double, ptr %i.bia, align 8, !tbaa !109 ; 3 uses
  %i.bic = fmul double %i.bhp, %i.bib             ; 2 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bie = load double, ptr %i.bid, align 8, !tbaa !109 ; 3 uses
  %i.bif = fmul double %i.bhp, %i.bie             ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bih = load double, ptr %i.big, align 8, !tbaa !109 ; 3 uses
  %i.bii = fmul double %i.bhp, %i.bih             ; 2 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bik = load double, ptr %i.bij, align 8, !tbaa !109 ; 3 uses
  %i.bil = fmul double %i.bhp, %i.bik             ; 2 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bin = load double, ptr %i.bim, align 8, !tbaa !109 ; 3 uses
  %i.bio = fmul double %i.bhp, %i.bin             ; 2 uses
  %i.bip = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14241494 = icmp slt i32 %i.bip, 1
  br i1 %.not14241494, label %.loopexit, label %.lr.ph1496

.lr.ph1496:                                       ; preds = %bb.w
  %i.biq = shl i32 %i.a, 1
  %i.bir = mul nsw i32 %i.a, 3
  %i.bis = shl i32 %i.a, 2
  %i.bit = mul nsw i32 %i.a, 5
  %i.biu = mul i32 %i.a, 6
  %i.biv = mul i32 %i.a, 7
  %i.biw = shl i32 %i.a, 3
  %i.bix = mul i32 %i.a, 9
  %i.biy = sext i32 %i.a to i64                   ; 2 uses
  %i.biz = sext i32 %i.biq to i64                 ; 2 uses
  %i.bja = sext i32 %i.bir to i64                 ; 2 uses
  %i.bjb = sext i32 %i.bis to i64                 ; 2 uses
  %i.bjc = sext i32 %i.bit to i64                 ; 2 uses
  %i.bjd = sext i32 %i.biu to i64                 ; 2 uses
  %i.bje = sext i32 %i.biv to i64                 ; 2 uses
  %i.bjf = sext i32 %i.biw to i64                 ; 2 uses
  %i.bjg = sext i32 %i.bix to i64                 ; 2 uses
  %i.bjh = add nuw i32 %i.bip, 1
  %wide.trip.count1594 = zext i32 %i.bjh to i64   ; 2 uses
  %invariant.gep1692 = getelementptr [8 x i8], ptr %i.c, i64 %i.biy ; 2 uses
  %invariant.gep1694 = getelementptr [8 x i8], ptr %i.c, i64 %i.biz ; 2 uses
  %invariant.gep1696 = getelementptr [8 x i8], ptr %i.c, i64 %i.bja ; 2 uses
  %invariant.gep1698 = getelementptr [8 x i8], ptr %i.c, i64 %i.bjb ; 2 uses
  %invariant.gep1700 = getelementptr [8 x i8], ptr %i.c, i64 %i.bjc ; 2 uses
  %invariant.gep1702 = getelementptr [8 x i8], ptr %i.c, i64 %i.bjd ; 2 uses
  %invariant.gep1704 = getelementptr [8 x i8], ptr %i.c, i64 %i.bje ; 2 uses
  %invariant.gep1706 = getelementptr [8 x i8], ptr %i.c, i64 %i.bjf ; 2 uses
  %invariant.gep1708 = getelementptr [8 x i8], ptr %i.c, i64 %i.bjg ; 2 uses
  %i.bji = zext nneg i32 %i.bip to i64            ; 2 uses
  %min.iters.check2411 = icmp ult i32 %i.bip, 40
  br i1 %min.iters.check2411, label %scalar.ph2410.preheader, label %vector.memcheck2412

vector.memcheck2412:                              ; preds = %.lr.ph1496
  %i.bjj = or i64 %i.biy, %i.b
  %i.bjk = shl nsw i64 %i.bjj, 3                  ; 2 uses
  %i.bjl = getelementptr i8, ptr %5, i64 %i.bjk
  %i.bjm = getelementptr i8, ptr %i.bjl, i64 8    ; 8 uses
  %i.bjn = shl nuw nsw i64 %wide.trip.count1594, 3 ; 9 uses
  %i.bjo = getelementptr i8, ptr %5, i64 %i.bjk
  %i.bjp = getelementptr i8, ptr %i.bjo, i64 %i.bjn ; 8 uses
  %i.bjq = add nsw i64 %i.biz, %i.b
  %i.bjr = shl nsw i64 %i.bjq, 3                  ; 2 uses
  %i.bjs = getelementptr i8, ptr %5, i64 %i.bjr
  %i.bjt = getelementptr i8, ptr %i.bjs, i64 8    ; 8 uses
  %i.bju = getelementptr i8, ptr %5, i64 %i.bjr
  %i.bjv = getelementptr i8, ptr %i.bju, i64 %i.bjn ; 8 uses
  %i.bjw = add nsw i64 %i.bja, %i.b
  %i.bjx = shl nsw i64 %i.bjw, 3                  ; 2 uses
  %i.bjy = getelementptr i8, ptr %5, i64 %i.bjx
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 8    ; 8 uses
  %i.bka = getelementptr i8, ptr %5, i64 %i.bjx
  %i.bkb = getelementptr i8, ptr %i.bka, i64 %i.bjn ; 8 uses
  %i.bkc = add nsw i64 %i.bjb, %i.b
  %i.bkd = shl nsw i64 %i.bkc, 3                  ; 2 uses
  %i.bke = getelementptr i8, ptr %5, i64 %i.bkd
  %i.bkf = getelementptr i8, ptr %i.bke, i64 8    ; 8 uses
  %i.bkg = getelementptr i8, ptr %5, i64 %i.bkd
  %i.bkh = getelementptr i8, ptr %i.bkg, i64 %i.bjn ; 8 uses
  %i.bki = add nsw i64 %i.bjc, %i.b
  %i.bkj = shl nsw i64 %i.bki, 3                  ; 2 uses
  %i.bkk = getelementptr i8, ptr %5, i64 %i.bkj
  %i.bkl = getelementptr i8, ptr %i.bkk, i64 8    ; 8 uses
  %i.bkm = getelementptr i8, ptr %5, i64 %i.bkj
  %i.bkn = getelementptr i8, ptr %i.bkm, i64 %i.bjn ; 8 uses
  %i.bko = add nsw i64 %i.bjd, %i.b
  %i.bkp = shl nsw i64 %i.bko, 3                  ; 2 uses
  %i.bkq = getelementptr i8, ptr %5, i64 %i.bkp
  %i.bkr = getelementptr i8, ptr %i.bkq, i64 8    ; 8 uses
  %i.bks = getelementptr i8, ptr %5, i64 %i.bkp
  %i.bkt = getelementptr i8, ptr %i.bks, i64 %i.bjn ; 8 uses
  %i.bku = add nsw i64 %i.bje, %i.b
  %i.bkv = shl nsw i64 %i.bku, 3                  ; 2 uses
  %i.bkw = getelementptr i8, ptr %5, i64 %i.bkv
  %i.bkx = getelementptr i8, ptr %i.bkw, i64 8    ; 8 uses
  %i.bky = getelementptr i8, ptr %5, i64 %i.bkv
  %i.bkz = getelementptr i8, ptr %i.bky, i64 %i.bjn ; 8 uses
  %i.bla = add nsw i64 %i.bjf, %i.b
  %i.blb = shl nsw i64 %i.bla, 3                  ; 2 uses
  %i.blc = getelementptr i8, ptr %5, i64 %i.blb
  %i.bld = getelementptr i8, ptr %i.blc, i64 8    ; 8 uses
  %i.ble = getelementptr i8, ptr %5, i64 %i.blb
  %i.blf = getelementptr i8, ptr %i.ble, i64 %i.bjn ; 8 uses
  %i.blg = add nsw i64 %i.bjg, %i.b
  %i.blh = shl nsw i64 %i.blg, 3                  ; 2 uses
  %i.bli = getelementptr i8, ptr %5, i64 %i.blh
  %i.blj = getelementptr i8, ptr %i.bli, i64 8    ; 8 uses
  %i.blk = getelementptr i8, ptr %5, i64 %i.blh
  %i.bll = getelementptr i8, ptr %i.blk, i64 %i.bjn ; 8 uses
  %bound02413 = icmp ult ptr %i.bjm, %i.bjv
  %bound12414 = icmp ult ptr %i.bjt, %i.bjp
  %found.conflict2415 = and i1 %bound02413, %bound12414
  %bound02416 = icmp ult ptr %i.bjm, %i.bkb
  %bound12417 = icmp ult ptr %i.bjz, %i.bjp
  %found.conflict2418 = and i1 %bound02416, %bound12417
  %conflict.rdx2419 = or i1 %found.conflict2415, %found.conflict2418
  %bound02420 = icmp ult ptr %i.bjm, %i.bkh
  %bound12421 = icmp ult ptr %i.bkf, %i.bjp
  %found.conflict2422 = and i1 %bound02420, %bound12421
  %conflict.rdx2423 = or i1 %conflict.rdx2419, %found.conflict2422
  %bound02424 = icmp ult ptr %i.bjm, %i.bkn
  %bound12425 = icmp ult ptr %i.bkl, %i.bjp
  %found.conflict2426 = and i1 %bound02424, %bound12425
  %conflict.rdx2427 = or i1 %conflict.rdx2423, %found.conflict2426
  %bound02428 = icmp ult ptr %i.bjm, %i.bkt
  %bound12429 = icmp ult ptr %i.bkr, %i.bjp
  %found.conflict2430 = and i1 %bound02428, %bound12429
  %conflict.rdx2431 = or i1 %conflict.rdx2427, %found.conflict2430
  %bound02432 = icmp ult ptr %i.bjm, %i.bkz
  %bound12433 = icmp ult ptr %i.bkx, %i.bjp
  %found.conflict2434 = and i1 %bound02432, %bound12433
  %conflict.rdx2435 = or i1 %conflict.rdx2431, %found.conflict2434
  %bound02436 = icmp ult ptr %i.bjm, %i.blf
  %bound12437 = icmp ult ptr %i.bld, %i.bjp
  %found.conflict2438 = and i1 %bound02436, %bound12437
  %conflict.rdx2439 = or i1 %conflict.rdx2435, %found.conflict2438
  %bound02440 = icmp ult ptr %i.bjm, %i.bll
  %bound12441 = icmp ult ptr %i.blj, %i.bjp
  %found.conflict2442 = and i1 %bound02440, %bound12441
  %conflict.rdx2443 = or i1 %conflict.rdx2439, %found.conflict2442
  %bound02444 = icmp ult ptr %i.bjt, %i.bkb
  %bound12445 = icmp ult ptr %i.bjz, %i.bjv
  %found.conflict2446 = and i1 %bound02444, %bound12445
  %conflict.rdx2447 = or i1 %conflict.rdx2443, %found.conflict2446
  %bound02448 = icmp ult ptr %i.bjt, %i.bkh
  %bound12449 = icmp ult ptr %i.bkf, %i.bjv
  %found.conflict2450 = and i1 %bound02448, %bound12449
  %conflict.rdx2451 = or i1 %conflict.rdx2447, %found.conflict2450
  %bound02452 = icmp ult ptr %i.bjt, %i.bkn
  %bound12453 = icmp ult ptr %i.bkl, %i.bjv
  %found.conflict2454 = and i1 %bound02452, %bound12453
  %conflict.rdx2455 = or i1 %conflict.rdx2451, %found.conflict2454
  %bound02456 = icmp ult ptr %i.bjt, %i.bkt
  %bound12457 = icmp ult ptr %i.bkr, %i.bjv
  %found.conflict2458 = and i1 %bound02456, %bound12457
  %conflict.rdx2459 = or i1 %conflict.rdx2455, %found.conflict2458
  %bound02460 = icmp ult ptr %i.bjt, %i.bkz
  %bound12461 = icmp ult ptr %i.bkx, %i.bjv
  %found.conflict2462 = and i1 %bound02460, %bound12461
  %conflict.rdx2463 = or i1 %conflict.rdx2459, %found.conflict2462
  %bound02464 = icmp ult ptr %i.bjt, %i.blf
  %bound12465 = icmp ult ptr %i.bld, %i.bjv
  %found.conflict2466 = and i1 %bound02464, %bound12465
  %conflict.rdx2467 = or i1 %conflict.rdx2463, %found.conflict2466
  %bound02468 = icmp ult ptr %i.bjt, %i.bll
  %bound12469 = icmp ult ptr %i.blj, %i.bjv
  %found.conflict2470 = and i1 %bound02468, %bound12469
  %conflict.rdx2471 = or i1 %conflict.rdx2467, %found.conflict2470
  %bound02472 = icmp ult ptr %i.bjz, %i.bkh
  %bound12473 = icmp ult ptr %i.bkf, %i.bkb
  %found.conflict2474 = and i1 %bound02472, %bound12473
  %conflict.rdx2475 = or i1 %conflict.rdx2471, %found.conflict2474
  %bound02476 = icmp ult ptr %i.bjz, %i.bkn
  %bound12477 = icmp ult ptr %i.bkl, %i.bkb
  %found.conflict2478 = and i1 %bound02476, %bound12477
  %conflict.rdx2479 = or i1 %conflict.rdx2475, %found.conflict2478
  %bound02480 = icmp ult ptr %i.bjz, %i.bkt
  %bound12481 = icmp ult ptr %i.bkr, %i.bkb
  %found.conflict2482 = and i1 %bound02480, %bound12481
  %conflict.rdx2483 = or i1 %conflict.rdx2479, %found.conflict2482
  %bound02484 = icmp ult ptr %i.bjz, %i.bkz
  %bound12485 = icmp ult ptr %i.bkx, %i.bkb
  %found.conflict2486 = and i1 %bound02484, %bound12485
  %conflict.rdx2487 = or i1 %conflict.rdx2483, %found.conflict2486
  %bound02488 = icmp ult ptr %i.bjz, %i.blf
  %bound12489 = icmp ult ptr %i.bld, %i.bkb
  %found.conflict2490 = and i1 %bound02488, %bound12489
  %conflict.rdx2491 = or i1 %conflict.rdx2487, %found.conflict2490
  %bound02492 = icmp ult ptr %i.bjz, %i.bll
  %bound12493 = icmp ult ptr %i.blj, %i.bkb
  %found.conflict2494 = and i1 %bound02492, %bound12493
  %conflict.rdx2495 = or i1 %conflict.rdx2491, %found.conflict2494
  %bound02496 = icmp ult ptr %i.bkf, %i.bkn
  %bound12497 = icmp ult ptr %i.bkl, %i.bkh
  %found.conflict2498 = and i1 %bound02496, %bound12497
  %conflict.rdx2499 = or i1 %conflict.rdx2495, %found.conflict2498
  %bound02500 = icmp ult ptr %i.bkf, %i.bkt
  %bound12501 = icmp ult ptr %i.bkr, %i.bkh
  %found.conflict2502 = and i1 %bound02500, %bound12501
  %conflict.rdx2503 = or i1 %conflict.rdx2499, %found.conflict2502
  %bound02504 = icmp ult ptr %i.bkf, %i.bkz
  %bound12505 = icmp ult ptr %i.bkx, %i.bkh
  %found.conflict2506 = and i1 %bound02504, %bound12505
  %conflict.rdx2507 = or i1 %conflict.rdx2503, %found.conflict2506
  %bound02508 = icmp ult ptr %i.bkf, %i.blf
  %bound12509 = icmp ult ptr %i.bld, %i.bkh
  %found.conflict2510 = and i1 %bound02508, %bound12509
  %conflict.rdx2511 = or i1 %conflict.rdx2507, %found.conflict2510
  %bound02512 = icmp ult ptr %i.bkf, %i.bll
  %bound12513 = icmp ult ptr %i.blj, %i.bkh
  %found.conflict2514 = and i1 %bound02512, %bound12513
  %conflict.rdx2515 = or i1 %conflict.rdx2511, %found.conflict2514
  %bound02516 = icmp ult ptr %i.bkl, %i.bkt
  %bound12517 = icmp ult ptr %i.bkr, %i.bkn
  %found.conflict2518 = and i1 %bound02516, %bound12517
  %conflict.rdx2519 = or i1 %conflict.rdx2515, %found.conflict2518
  %bound02520 = icmp ult ptr %i.bkl, %i.bkz
  %bound12521 = icmp ult ptr %i.bkx, %i.bkn
  %found.conflict2522 = and i1 %bound02520, %bound12521
  %conflict.rdx2523 = or i1 %conflict.rdx2519, %found.conflict2522
  %bound02524 = icmp ult ptr %i.bkl, %i.blf
  %bound12525 = icmp ult ptr %i.bld, %i.bkn
  %found.conflict2526 = and i1 %bound02524, %bound12525
  %conflict.rdx2527 = or i1 %conflict.rdx2523, %found.conflict2526
  %bound02528 = icmp ult ptr %i.bkl, %i.bll
  %bound12529 = icmp ult ptr %i.blj, %i.bkn
  %found.conflict2530 = and i1 %bound02528, %bound12529
  %conflict.rdx2531 = or i1 %conflict.rdx2527, %found.conflict2530
  %bound02532 = icmp ult ptr %i.bkr, %i.bkz
  %bound12533 = icmp ult ptr %i.bkx, %i.bkt
  %found.conflict2534 = and i1 %bound02532, %bound12533
  %conflict.rdx2535 = or i1 %conflict.rdx2531, %found.conflict2534
  %bound02536 = icmp ult ptr %i.bkr, %i.blf
  %bound12537 = icmp ult ptr %i.bld, %i.bkt
  %found.conflict2538 = and i1 %bound02536, %bound12537
  %conflict.rdx2539 = or i1 %conflict.rdx2535, %found.conflict2538
  %bound02540 = icmp ult ptr %i.bkr, %i.bll
  %bound12541 = icmp ult ptr %i.blj, %i.bkt
  %found.conflict2542 = and i1 %bound02540, %bound12541
  %conflict.rdx2543 = or i1 %conflict.rdx2539, %found.conflict2542
  %bound02544 = icmp ult ptr %i.bkx, %i.blf
  %bound12545 = icmp ult ptr %i.bld, %i.bkz
  %found.conflict2546 = and i1 %bound02544, %bound12545
  %conflict.rdx2547 = or i1 %conflict.rdx2543, %found.conflict2546
  %bound02548 = icmp ult ptr %i.bkx, %i.bll
  %bound12549 = icmp ult ptr %i.blj, %i.bkz
  %found.conflict2550 = and i1 %bound02548, %bound12549
  %conflict.rdx2551 = or i1 %conflict.rdx2547, %found.conflict2550
  %bound02552 = icmp ult ptr %i.bld, %i.bll
  %bound12553 = icmp ult ptr %i.blj, %i.blf
  %found.conflict2554 = and i1 %bound02552, %bound12553
end_hunk_1
begin_hunk_2_@dlarfx_:bb.a
  %broadcast.splat2593 = shufflevector <4 x double> %broadcast.splatinsert2592, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body2594

vector.body2594:                                  ; preds = %vector.body2594, %vector.ph2556
  %index2595 = phi i64 [ 0, %vector.ph2556 ], [ %index.next2613, %vector.body2594 ] ; 2 uses
  %i.bln = or disjoint i64 %index2595, 1          ; 9 uses
  %i.blo = getelementptr [8 x i8], ptr %invariant.gep1692, i64 %i.bln ; 2 uses
  %wide.load2596 = load <4 x double>, ptr %i.blo, align 8, !tbaa !109, !alias.scope !171, !noalias !172 ; 2 uses
  %i.blp = getelementptr [8 x i8], ptr %invariant.gep1694, i64 %i.bln ; 3 uses
  %wide.load2597 = load <4 x double>, ptr %i.blp, align 8, !tbaa !109, !alias.scope !173, !noalias !174
  %i.blq = fmul <4 x double> %broadcast.splat2559, %wide.load2597
  %i.blr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2561, <4 x double> %wide.load2596, <4 x double> %i.blq)
  %i.bls = getelementptr [8 x i8], ptr %invariant.gep1696, i64 %i.bln ; 3 uses
  %wide.load2598 = load <4 x double>, ptr %i.bls, align 8, !tbaa !109, !alias.scope !175, !noalias !176
  %i.blt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2563, <4 x double> %wide.load2598, <4 x double> %i.blr)
  %i.blu = getelementptr [8 x i8], ptr %invariant.gep1698, i64 %i.bln ; 3 uses
  %wide.load2599 = load <4 x double>, ptr %i.blu, align 8, !tbaa !109, !alias.scope !177, !noalias !178
  %i.blv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2565, <4 x double> %wide.load2599, <4 x double> %i.blt)
  %i.blw = getelementptr [8 x i8], ptr %invariant.gep1700, i64 %i.bln ; 3 uses
  %wide.load2600 = load <4 x double>, ptr %i.blw, align 8, !tbaa !109, !alias.scope !179, !noalias !180
  %i.blx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2567, <4 x double> %wide.load2600, <4 x double> %i.blv)
  %i.bly = getelementptr [8 x i8], ptr %invariant.gep1702, i64 %i.bln ; 3 uses
  %wide.load2601 = load <4 x double>, ptr %i.bly, align 8, !tbaa !109, !alias.scope !181, !noalias !182
  %i.blz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2569, <4 x double> %wide.load2601, <4 x double> %i.blx)
  %i.bma = getelementptr [8 x i8], ptr %invariant.gep1704, i64 %i.bln ; 3 uses
  %wide.load2602 = load <4 x double>, ptr %i.bma, align 8, !tbaa !109, !alias.scope !183, !noalias !184
  %i.bmb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2571, <4 x double> %wide.load2602, <4 x double> %i.blz)
  %i.bmc = getelementptr [8 x i8], ptr %invariant.gep1706, i64 %i.bln ; 3 uses
  %wide.load2603 = load <4 x double>, ptr %i.bmc, align 8, !tbaa !109, !alias.scope !185, !noalias !186
  %i.bmd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2573, <4 x double> %wide.load2603, <4 x double> %i.bmb)
  %i.bme = getelementptr [8 x i8], ptr %invariant.gep1708, i64 %i.bln ; 3 uses
  %wide.load2604 = load <4 x double>, ptr %i.bme, align 8, !tbaa !109, !alias.scope !186
  %i.bmf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2575, <4 x double> %wide.load2604, <4 x double> %i.bmd)
  %i.bmg = fneg <4 x double> %i.bmf               ; 9 uses
  %i.bmh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2577, <4 x double> %wide.load2596)
  store <4 x double> %i.bmh, ptr %i.blo, align 8, !tbaa !109, !alias.scope !171, !noalias !172
  %wide.load2605 = load <4 x double>, ptr %i.blp, align 8, !tbaa !109, !alias.scope !173, !noalias !174
  %i.bmi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2579, <4 x double> %wide.load2605)
  store <4 x double> %i.bmi, ptr %i.blp, align 8, !tbaa !109, !alias.scope !173, !noalias !174
  %wide.load2606 = load <4 x double>, ptr %i.bls, align 8, !tbaa !109, !alias.scope !175, !noalias !176
  %i.bmj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2581, <4 x double> %wide.load2606)
  store <4 x double> %i.bmj, ptr %i.bls, align 8, !tbaa !109, !alias.scope !175, !noalias !176
  %wide.load2607 = load <4 x double>, ptr %i.blu, align 8, !tbaa !109, !alias.scope !177, !noalias !178
  %i.bmk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2583, <4 x double> %wide.load2607)
  store <4 x double> %i.bmk, ptr %i.blu, align 8, !tbaa !109, !alias.scope !177, !noalias !178
  %wide.load2608 = load <4 x double>, ptr %i.blw, align 8, !tbaa !109, !alias.scope !179, !noalias !180
  %i.bml = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2585, <4 x double> %wide.load2608)
  store <4 x double> %i.bml, ptr %i.blw, align 8, !tbaa !109, !alias.scope !179, !noalias !180
  %wide.load2609 = load <4 x double>, ptr %i.bly, align 8, !tbaa !109, !alias.scope !181, !noalias !182
  %i.bmm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2587, <4 x double> %wide.load2609)
  store <4 x double> %i.bmm, ptr %i.bly, align 8, !tbaa !109, !alias.scope !181, !noalias !182
  %wide.load2610 = load <4 x double>, ptr %i.bma, align 8, !tbaa !109, !alias.scope !183, !noalias !184
  %i.bmn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2589, <4 x double> %wide.load2610)
  store <4 x double> %i.bmn, ptr %i.bma, align 8, !tbaa !109, !alias.scope !183, !noalias !184
  %wide.load2611 = load <4 x double>, ptr %i.bmc, align 8, !tbaa !109, !alias.scope !185, !noalias !186
  %i.bmo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2591, <4 x double> %wide.load2611)
  store <4 x double> %i.bmo, ptr %i.bmc, align 8, !tbaa !109, !alias.scope !185, !noalias !186
  %wide.load2612 = load <4 x double>, ptr %i.bme, align 8, !tbaa !109, !alias.scope !186
  %i.bmp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bmg, <4 x double> %broadcast.splat2593, <4 x double> %wide.load2612)
  store <4 x double> %i.bmp, ptr %i.bme, align 8, !tbaa !109, !alias.scope !186
  %index.next2613 = add nuw i64 %index2595, 4     ; 2 uses
  %i.bmq = icmp eq i64 %index.next2613, %n.vec2557
  br i1 %i.bmq, label %middle.block2614, label %vector.body2594, !llvm.loop !90

middle.block2614:                                 ; preds = %vector.body2594
  %cmp.n2615 = icmp eq i64 %n.vec2557, %i.bji
  br i1 %cmp.n2615, label %.loopexit, label %scalar.ph2410.preheader

scalar.ph2410.preheader:                          ; preds = %vector.memcheck2412, %.lr.ph1496, %middle.block2614
  %indvars.iv1591.ph = phi i64 [ 1, %vector.memcheck2412 ], [ 1, %.lr.ph1496 ], [ %i.blm, %middle.block2614 ]
  br label %scalar.ph2410

scalar.ph2410:                                    ; preds = %scalar.ph2410.preheader, %scalar.ph2410
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592, %scalar.ph2410 ], [ %indvars.iv1591.ph, %scalar.ph2410.preheader ] ; 10 uses
  %gep1693 = getelementptr [8 x i8], ptr %invariant.gep1692, i64 %indvars.iv1591 ; 2 uses
  %i.bmr = load double, ptr %gep1693, align 8, !tbaa !109 ; 2 uses
  %gep1695 = getelementptr [8 x i8], ptr %invariant.gep1694, i64 %indvars.iv1591 ; 3 uses
  %i.bms = load double, ptr %gep1695, align 8, !tbaa !109
  %i.bmt = fmul double %i.bhs, %i.bms
  %i.bmu = tail call double @llvm.fmuladd.f64(double %i.bho, double %i.bmr, double %i.bmt)
  %gep1697 = getelementptr [8 x i8], ptr %invariant.gep1696, i64 %indvars.iv1591 ; 3 uses
  %i.bmv = load double, ptr %gep1697, align 8, !tbaa !109
  %i.bmw = tail call double @llvm.fmuladd.f64(double %i.bhv, double %i.bmv, double %i.bmu)
  %gep1699 = getelementptr [8 x i8], ptr %invariant.gep1698, i64 %indvars.iv1591 ; 3 uses
  %i.bmx = load double, ptr %gep1699, align 8, !tbaa !109
  %i.bmy = tail call double @llvm.fmuladd.f64(double %i.bhy, double %i.bmx, double %i.bmw)
  %gep1701 = getelementptr [8 x i8], ptr %invariant.gep1700, i64 %indvars.iv1591 ; 3 uses
  %i.bmz = load double, ptr %gep1701, align 8, !tbaa !109
  %i.bna = tail call double @llvm.fmuladd.f64(double %i.bib, double %i.bmz, double %i.bmy)
  %gep1703 = getelementptr [8 x i8], ptr %invariant.gep1702, i64 %indvars.iv1591 ; 3 uses
  %i.bnb = load double, ptr %gep1703, align 8, !tbaa !109
  %i.bnc = tail call double @llvm.fmuladd.f64(double %i.bie, double %i.bnb, double %i.bna)
  %gep1705 = getelementptr [8 x i8], ptr %invariant.gep1704, i64 %indvars.iv1591 ; 3 uses
  %i.bnd = load double, ptr %gep1705, align 8, !tbaa !109
  %i.bne = tail call double @llvm.fmuladd.f64(double %i.bih, double %i.bnd, double %i.bnc)
  %gep1707 = getelementptr [8 x i8], ptr %invariant.gep1706, i64 %indvars.iv1591 ; 3 uses
  %i.bnf = load double, ptr %gep1707, align 8, !tbaa !109
  %i.bng = tail call double @llvm.fmuladd.f64(double %i.bik, double %i.bnf, double %i.bne)
  %gep1709 = getelementptr [8 x i8], ptr %invariant.gep1708, i64 %indvars.iv1591 ; 3 uses
  %i.bnh = load double, ptr %gep1709, align 8, !tbaa !109
  %i.bni = tail call double @llvm.fmuladd.f64(double %i.bin, double %i.bnh, double %i.bng)
  %i.bnj = fneg double %i.bni                     ; 9 uses
  %i.bnk = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bhq, double %i.bmr)
  store double %i.bnk, ptr %gep1693, align 8, !tbaa !109
  %i.bnl = load double, ptr %gep1695, align 8, !tbaa !109
  %i.bnm = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bht, double %i.bnl)
  store double %i.bnm, ptr %gep1695, align 8, !tbaa !109
  %i.bnn = load double, ptr %gep1697, align 8, !tbaa !109
  %i.bno = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bhw, double %i.bnn)
  store double %i.bno, ptr %gep1697, align 8, !tbaa !109
  %i.bnp = load double, ptr %gep1699, align 8, !tbaa !109
  %i.bnq = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bhz, double %i.bnp)
  store double %i.bnq, ptr %gep1699, align 8, !tbaa !109
  %i.bnr = load double, ptr %gep1701, align 8, !tbaa !109
  %i.bns = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bic, double %i.bnr)
  store double %i.bns, ptr %gep1701, align 8, !tbaa !109
  %i.bnt = load double, ptr %gep1703, align 8, !tbaa !109
  %i.bnu = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bif, double %i.bnt)
  store double %i.bnu, ptr %gep1703, align 8, !tbaa !109
  %i.bnv = load double, ptr %gep1705, align 8, !tbaa !109
  %i.bnw = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bii, double %i.bnv)
  store double %i.bnw, ptr %gep1705, align 8, !tbaa !109
  %i.bnx = load double, ptr %gep1707, align 8, !tbaa !109
  %i.bny = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bil, double %i.bnx)
  store double %i.bny, ptr %gep1707, align 8, !tbaa !109
  %i.bnz = load double, ptr %gep1709, align 8, !tbaa !109
  %i.boa = tail call double @llvm.fmuladd.f64(double %i.bnj, double %i.bio, double %i.bnz)
  store double %i.boa, ptr %gep1709, align 8, !tbaa !109
  %indvars.iv.next1592 = add nuw nsw i64 %indvars.iv1591, 1 ; 2 uses
  %exitcond1595.not = icmp eq i64 %indvars.iv.next1592, %wide.trip.count1594
  br i1 %exitcond1595.not, label %.loopexit, label %scalar.ph2410, !llvm.loop !91

bb.x:                                             ; preds = %bb.n
  %i.bob = load double, ptr %3, align 8, !tbaa !109 ; 3 uses
  %i.boc = load double, ptr %4, align 8, !tbaa !109 ; 10 uses
  %i.bod = fmul double %i.bob, %i.boc             ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bof = load double, ptr %i.boe, align 8, !tbaa !109 ; 3 uses
  %i.bog = fmul double %i.boc, %i.bof             ; 2 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.boi = load double, ptr %i.boh, align 8, !tbaa !109 ; 3 uses
  %i.boj = fmul double %i.boc, %i.boi             ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bol = load double, ptr %i.bok, align 8, !tbaa !109 ; 3 uses
  %i.bom = fmul double %i.boc, %i.bol             ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.boo = load double, ptr %i.bon, align 8, !tbaa !109 ; 3 uses
  %i.bop = fmul double %i.boc, %i.boo             ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bor = load double, ptr %i.boq, align 8, !tbaa !109 ; 3 uses
  %i.bos = fmul double %i.boc, %i.bor             ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bou = load double, ptr %i.bot, align 8, !tbaa !109 ; 3 uses
  %i.bov = fmul double %i.boc, %i.bou             ; 2 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.box = load double, ptr %i.bow, align 8, !tbaa !109 ; 3 uses
  %i.boy = fmul double %i.boc, %i.box             ; 2 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bpa = load double, ptr %i.boz, align 8, !tbaa !109 ; 3 uses
  %i.bpb = fmul double %i.boc, %i.bpa             ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bpd = load double, ptr %i.bpc, align 8, !tbaa !109 ; 3 uses
  %i.bpe = fmul double %i.boc, %i.bpd             ; 2 uses
  %i.bpf = load i32, ptr %1, align 4, !tbaa !107  ; 4 uses
  %.not14231491 = icmp slt i32 %i.bpf, 1
  br i1 %.not14231491, label %.loopexit, label %.lr.ph1493

.lr.ph1493:                                       ; preds = %bb.x
  %i.bpg = shl i32 %i.a, 1
  %i.bph = mul nsw i32 %i.a, 3
  %i.bpi = shl i32 %i.a, 2
  %i.bpj = mul i32 %i.a, 5
  %i.bpk = mul i32 %i.a, 6
  %i.bpl = mul i32 %i.a, 7
  %i.bpm = shl i32 %i.a, 3
  %i.bpn = mul i32 %i.a, 9
  %i.bpo = mul i32 %i.a, 10
  %i.bpp = sext i32 %i.a to i64                   ; 2 uses
  %i.bpq = sext i32 %i.bpg to i64                 ; 2 uses
  %i.bpr = sext i32 %i.bph to i64                 ; 2 uses
  %i.bps = sext i32 %i.bpi to i64                 ; 2 uses
  %i.bpt = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bpu = sext i32 %i.bpk to i64                 ; 2 uses
  %i.bpv = sext i32 %i.bpl to i64                 ; 2 uses
  %i.bpw = sext i32 %i.bpm to i64                 ; 2 uses
  %i.bpx = sext i32 %i.bpn to i64                 ; 2 uses
  %i.bpy = sext i32 %i.bpo to i64                 ; 2 uses
  %i.bpz = add nuw i32 %i.bpf, 1
  %wide.trip.count1589 = zext i32 %i.bpz to i64   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.bpp ; 2 uses
  %invariant.gep1674 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpq ; 2 uses
  %invariant.gep1676 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpr ; 2 uses
  %invariant.gep1678 = getelementptr [8 x i8], ptr %i.c, i64 %i.bps ; 2 uses
  %invariant.gep1680 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpt ; 2 uses
  %invariant.gep1682 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpu ; 2 uses
  %invariant.gep1684 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpv ; 2 uses
  %invariant.gep1686 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpw ; 2 uses
  %invariant.gep1688 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpx ; 2 uses
  %invariant.gep1690 = getelementptr [8 x i8], ptr %i.c, i64 %i.bpy ; 2 uses
  %i.bqa = zext nneg i32 %i.bpf to i64            ; 2 uses
  %min.iters.check2006 = icmp ult i32 %i.bpf, 44
  br i1 %min.iters.check2006, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1493
  %i.bqb = or i64 %i.bpp, %i.b
  %i.bqc = shl nsw i64 %i.bqb, 3                  ; 2 uses
  %i.bqd = getelementptr i8, ptr %5, i64 %i.bqc
  %i.bqe = getelementptr i8, ptr %i.bqd, i64 8    ; 9 uses
  %i.bqf = shl nuw nsw i64 %wide.trip.count1589, 3 ; 10 uses
  %i.bqg = getelementptr i8, ptr %5, i64 %i.bqc
  %i.bqh = getelementptr i8, ptr %i.bqg, i64 %i.bqf ; 9 uses
  %i.bqi = add nsw i64 %i.bpq, %i.b
  %i.bqj = shl nsw i64 %i.bqi, 3                  ; 2 uses
  %i.bqk = getelementptr i8, ptr %5, i64 %i.bqj
  %i.bql = getelementptr i8, ptr %i.bqk, i64 8    ; 9 uses
  %i.bqm = getelementptr i8, ptr %5, i64 %i.bqj
  %i.bqn = getelementptr i8, ptr %i.bqm, i64 %i.bqf ; 9 uses
  %i.bqo = add nsw i64 %i.bpr, %i.b
  %i.bqp = shl nsw i64 %i.bqo, 3                  ; 2 uses
  %i.bqq = getelementptr i8, ptr %5, i64 %i.bqp
  %i.bqr = getelementptr i8, ptr %i.bqq, i64 8    ; 9 uses
  %i.bqs = getelementptr i8, ptr %5, i64 %i.bqp
  %i.bqt = getelementptr i8, ptr %i.bqs, i64 %i.bqf ; 9 uses
  %i.bqu = add nsw i64 %i.bps, %i.b
  %i.bqv = shl nsw i64 %i.bqu, 3                  ; 2 uses
  %i.bqw = getelementptr i8, ptr %5, i64 %i.bqv
  %i.bqx = getelementptr i8, ptr %i.bqw, i64 8    ; 9 uses
  %i.bqy = getelementptr i8, ptr %5, i64 %i.bqv
  %i.bqz = getelementptr i8, ptr %i.bqy, i64 %i.bqf ; 9 uses
  %i.bra = add nsw i64 %i.bpt, %i.b
  %i.brb = shl nsw i64 %i.bra, 3                  ; 2 uses
  %i.brc = getelementptr i8, ptr %5, i64 %i.brb
  %i.brd = getelementptr i8, ptr %i.brc, i64 8    ; 9 uses
  %i.bre = getelementptr i8, ptr %5, i64 %i.brb
  %i.brf = getelementptr i8, ptr %i.bre, i64 %i.bqf ; 9 uses
  %i.brg = add nsw i64 %i.bpu, %i.b
  %i.brh = shl nsw i64 %i.brg, 3                  ; 2 uses
  %i.bri = getelementptr i8, ptr %5, i64 %i.brh
  %i.brj = getelementptr i8, ptr %i.bri, i64 8    ; 9 uses
  %i.brk = getelementptr i8, ptr %5, i64 %i.brh
  %i.brl = getelementptr i8, ptr %i.brk, i64 %i.bqf ; 9 uses
  %i.brm = add nsw i64 %i.bpv, %i.b
  %i.brn = shl nsw i64 %i.brm, 3                  ; 2 uses
  %i.bro = getelementptr i8, ptr %5, i64 %i.brn
  %i.brp = getelementptr i8, ptr %i.bro, i64 8    ; 9 uses
  %i.brq = getelementptr i8, ptr %5, i64 %i.brn
  %i.brr = getelementptr i8, ptr %i.brq, i64 %i.bqf ; 9 uses
  %i.brs = add nsw i64 %i.bpw, %i.b
  %i.brt = shl nsw i64 %i.brs, 3                  ; 2 uses
  %i.bru = getelementptr i8, ptr %5, i64 %i.brt
  %i.brv = getelementptr i8, ptr %i.bru, i64 8    ; 9 uses
  %i.brw = getelementptr i8, ptr %5, i64 %i.brt
  %i.brx = getelementptr i8, ptr %i.brw, i64 %i.bqf ; 9 uses
  %i.bry = add nsw i64 %i.bpx, %i.b
  %i.brz = shl nsw i64 %i.bry, 3                  ; 2 uses
  %i.bsa = getelementptr i8, ptr %5, i64 %i.brz
  %i.bsb = getelementptr i8, ptr %i.bsa, i64 8    ; 9 uses
  %i.bsc = getelementptr i8, ptr %5, i64 %i.brz
  %i.bsd = getelementptr i8, ptr %i.bsc, i64 %i.bqf ; 9 uses
  %i.bse = add nsw i64 %i.bpy, %i.b
  %i.bsf = shl nsw i64 %i.bse, 3                  ; 2 uses
  %i.bsg = getelementptr i8, ptr %5, i64 %i.bsf
  %i.bsh = getelementptr i8, ptr %i.bsg, i64 8    ; 9 uses
  %i.bsi = getelementptr i8, ptr %5, i64 %i.bsf
  %i.bsj = getelementptr i8, ptr %i.bsi, i64 %i.bqf ; 9 uses
  %bound0 = icmp ult ptr %i.bqe, %i.bqn
  %bound1 = icmp ult ptr %i.bql, %i.bqh
  %found.conflict = and i1 %bound0, %bound1
  %bound02007 = icmp ult ptr %i.bqe, %i.bqt
  %bound12008 = icmp ult ptr %i.bqr, %i.bqh
  %found.conflict2009 = and i1 %bound02007, %bound12008
  %conflict.rdx = or i1 %found.conflict, %found.conflict2009
  %bound02010 = icmp ult ptr %i.bqe, %i.bqz
  %bound12011 = icmp ult ptr %i.bqx, %i.bqh
  %found.conflict2012 = and i1 %bound02010, %bound12011
  %conflict.rdx2013 = or i1 %conflict.rdx, %found.conflict2012
  %bound02014 = icmp ult ptr %i.bqe, %i.brf
  %bound12015 = icmp ult ptr %i.brd, %i.bqh
  %found.conflict2016 = and i1 %bound02014, %bound12015
  %conflict.rdx2017 = or i1 %conflict.rdx2013, %found.conflict2016
  %bound02018 = icmp ult ptr %i.bqe, %i.brl
  %bound12019 = icmp ult ptr %i.brj, %i.bqh
  %found.conflict2020 = and i1 %bound02018, %bound12019
  %conflict.rdx2021 = or i1 %conflict.rdx2017, %found.conflict2020
  %bound02022 = icmp ult ptr %i.bqe, %i.brr
  %bound12023 = icmp ult ptr %i.brp, %i.bqh
  %found.conflict2024 = and i1 %bound02022, %bound12023
  %conflict.rdx2025 = or i1 %conflict.rdx2021, %found.conflict2024
  %bound02026 = icmp ult ptr %i.bqe, %i.brx
  %bound12027 = icmp ult ptr %i.brv, %i.bqh
  %found.conflict2028 = and i1 %bound02026, %bound12027
  %conflict.rdx2029 = or i1 %conflict.rdx2025, %found.conflict2028
  %bound02030 = icmp ult ptr %i.bqe, %i.bsd
  %bound12031 = icmp ult ptr %i.bsb, %i.bqh
  %found.conflict2032 = and i1 %bound02030, %bound12031
  %conflict.rdx2033 = or i1 %conflict.rdx2029, %found.conflict2032
  %bound02034 = icmp ult ptr %i.bqe, %i.bsj
  %bound12035 = icmp ult ptr %i.bsh, %i.bqh
  %found.conflict2036 = and i1 %bound02034, %bound12035
  %conflict.rdx2037 = or i1 %conflict.rdx2033, %found.conflict2036
  %bound02038 = icmp ult ptr %i.bql, %i.bqt
  %bound12039 = icmp ult ptr %i.bqr, %i.bqn
  %found.conflict2040 = and i1 %bound02038, %bound12039
  %conflict.rdx2041 = or i1 %conflict.rdx2037, %found.conflict2040
  %bound02042 = icmp ult ptr %i.bql, %i.bqz
  %bound12043 = icmp ult ptr %i.bqx, %i.bqn
  %found.conflict2044 = and i1 %bound02042, %bound12043
  %conflict.rdx2045 = or i1 %conflict.rdx2041, %found.conflict2044
  %bound02046 = icmp ult ptr %i.bql, %i.brf
  %bound12047 = icmp ult ptr %i.brd, %i.bqn
  %found.conflict2048 = and i1 %bound02046, %bound12047
  %conflict.rdx2049 = or i1 %conflict.rdx2045, %found.conflict2048
  %bound02050 = icmp ult ptr %i.bql, %i.brl
  %bound12051 = icmp ult ptr %i.brj, %i.bqn
  %found.conflict2052 = and i1 %bound02050, %bound12051
  %conflict.rdx2053 = or i1 %conflict.rdx2049, %found.conflict2052
  %bound02054 = icmp ult ptr %i.bql, %i.brr
  %bound12055 = icmp ult ptr %i.brp, %i.bqn
  %found.conflict2056 = and i1 %bound02054, %bound12055
  %conflict.rdx2057 = or i1 %conflict.rdx2053, %found.conflict2056
  %bound02058 = icmp ult ptr %i.bql, %i.brx
  %bound12059 = icmp ult ptr %i.brv, %i.bqn
  %found.conflict2060 = and i1 %bound02058, %bound12059
  %conflict.rdx2061 = or i1 %conflict.rdx2057, %found.conflict2060
  %bound02062 = icmp ult ptr %i.bql, %i.bsd
  %bound12063 = icmp ult ptr %i.bsb, %i.bqn
  %found.conflict2064 = and i1 %bound02062, %bound12063
  %conflict.rdx2065 = or i1 %conflict.rdx2061, %found.conflict2064
  %bound02066 = icmp ult ptr %i.bql, %i.bsj
  %bound12067 = icmp ult ptr %i.bsh, %i.bqn
  %found.conflict2068 = and i1 %bound02066, %bound12067
  %conflict.rdx2069 = or i1 %conflict.rdx2065, %found.conflict2068
  %bound02070 = icmp ult ptr %i.bqr, %i.bqz
  %bound12071 = icmp ult ptr %i.bqx, %i.bqt
  %found.conflict2072 = and i1 %bound02070, %bound12071
  %conflict.rdx2073 = or i1 %conflict.rdx2069, %found.conflict2072
  %bound02074 = icmp ult ptr %i.bqr, %i.brf
  %bound12075 = icmp ult ptr %i.brd, %i.bqt
  %found.conflict2076 = and i1 %bound02074, %bound12075
  %conflict.rdx2077 = or i1 %conflict.rdx2073, %found.conflict2076
  %bound02078 = icmp ult ptr %i.bqr, %i.brl
  %bound12079 = icmp ult ptr %i.brj, %i.bqt
  %found.conflict2080 = and i1 %bound02078, %bound12079
  %conflict.rdx2081 = or i1 %conflict.rdx2077, %found.conflict2080
  %bound02082 = icmp ult ptr %i.bqr, %i.brr
  %bound12083 = icmp ult ptr %i.brp, %i.bqt
  %found.conflict2084 = and i1 %bound02082, %bound12083
  %conflict.rdx2085 = or i1 %conflict.rdx2081, %found.conflict2084
  %bound02086 = icmp ult ptr %i.bqr, %i.brx
  %bound12087 = icmp ult ptr %i.brv, %i.bqt
  %found.conflict2088 = and i1 %bound02086, %bound12087
  %conflict.rdx2089 = or i1 %conflict.rdx2085, %found.conflict2088
  %bound02090 = icmp ult ptr %i.bqr, %i.bsd
  %bound12091 = icmp ult ptr %i.bsb, %i.bqt
  %found.conflict2092 = and i1 %bound02090, %bound12091
  %conflict.rdx2093 = or i1 %conflict.rdx2089, %found.conflict2092
  %bound02094 = icmp ult ptr %i.bqr, %i.bsj
  %bound12095 = icmp ult ptr %i.bsh, %i.bqt
  %found.conflict2096 = and i1 %bound02094, %bound12095
  %conflict.rdx2097 = or i1 %conflict.rdx2093, %found.conflict2096
  %bound02098 = icmp ult ptr %i.bqx, %i.brf
  %bound12099 = icmp ult ptr %i.brd, %i.bqz
  %found.conflict2100 = and i1 %bound02098, %bound12099
  %conflict.rdx2101 = or i1 %conflict.rdx2097, %found.conflict2100
  %bound02102 = icmp ult ptr %i.bqx, %i.brl
  %bound12103 = icmp ult ptr %i.brj, %i.bqz
  %found.conflict2104 = and i1 %bound02102, %bound12103
  %conflict.rdx2105 = or i1 %conflict.rdx2101, %found.conflict2104
  %bound02106 = icmp ult ptr %i.bqx, %i.brr
  %bound12107 = icmp ult ptr %i.brp, %i.bqz
  %found.conflict2108 = and i1 %bound02106, %bound12107
  %conflict.rdx2109 = or i1 %conflict.rdx2105, %found.conflict2108
  %bound02110 = icmp ult ptr %i.bqx, %i.brx
  %bound12111 = icmp ult ptr %i.brv, %i.bqz
  %found.conflict2112 = and i1 %bound02110, %bound12111
  %conflict.rdx2113 = or i1 %conflict.rdx2109, %found.conflict2112
  %bound02114 = icmp ult ptr %i.bqx, %i.bsd
  %bound12115 = icmp ult ptr %i.bsb, %i.bqz
  %found.conflict2116 = and i1 %bound02114, %bound12115
  %conflict.rdx2117 = or i1 %conflict.rdx2113, %found.conflict2116
  %bound02118 = icmp ult ptr %i.bqx, %i.bsj
  %bound12119 = icmp ult ptr %i.bsh, %i.bqz
  %found.conflict2120 = and i1 %bound02118, %bound12119
  %conflict.rdx2121 = or i1 %conflict.rdx2117, %found.conflict2120
  %bound02122 = icmp ult ptr %i.brd, %i.brl
  %bound12123 = icmp ult ptr %i.brj, %i.brf
  %found.conflict2124 = and i1 %bound02122, %bound12123
  %conflict.rdx2125 = or i1 %conflict.rdx2121, %found.conflict2124
  %bound02126 = icmp ult ptr %i.brd, %i.brr
  %bound12127 = icmp ult ptr %i.brp, %i.brf
  %found.conflict2128 = and i1 %bound02126, %bound12127
  %conflict.rdx2129 = or i1 %conflict.rdx2125, %found.conflict2128
  %bound02130 = icmp ult ptr %i.brd, %i.brx
  %bound12131 = icmp ult ptr %i.brv, %i.brf
  %found.conflict2132 = and i1 %bound02130, %bound12131
  %conflict.rdx2133 = or i1 %conflict.rdx2129, %found.conflict2132
  %bound02134 = icmp ult ptr %i.brd, %i.bsd
  %bound12135 = icmp ult ptr %i.bsb, %i.brf
  %found.conflict2136 = and i1 %bound02134, %bound12135
  %conflict.rdx2137 = or i1 %conflict.rdx2133, %found.conflict2136
  %bound02138 = icmp ult ptr %i.brd, %i.bsj
end_hunk_2
