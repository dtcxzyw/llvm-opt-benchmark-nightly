Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_kernel_LN?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrsm_kernel_LN(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = add nsw i64 %8, %0                       ; 2 uses
  %i.d = and i64 %0, 15
  %.not191 = icmp eq i64 %i.d, 0
  %i.e = ashr i64 %0, 4                           ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  %i.g = and i64 %0, -16
  %i.h = add nsw i64 %i.g, -16                    ; 2 uses
  %i.i = mul nsw i64 %i.h, %2
  %i.j = getelementptr inbounds [8 x i8], ptr %4, i64 %i.i
  %.idx196 = mul i64 %2, -128
  %.idx197 = shl nsw i64 %2, 4
  %.idx198 = shl i64 %7, 4
  %i.k = shl i64 %2, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit281
  %.0167304 = phi i64 [ %i.a, %.lr.ph ], [ %i.kk, %.loopexit281 ] ; 2 uses
  %.0173303 = phi ptr [ %5, %.lr.ph ], [ %i.ki, %.loopexit281 ] ; 5 uses
  %.0176302 = phi ptr [ %6, %.lr.ph ], [ %i.kj, %.loopexit281 ] ; 3 uses
  br i1 %.not191, label %.loopexit283, label %.preheader282

.preheader282:                                    ; preds = %bb.b, %solve.exit
  %.0298 = phi i64 [ %.1, %solve.exit ], [ %i.c, %bb.b ] ; 6 uses
  %.0169297 = phi i64 [ %i.fw, %solve.exit ], [ 1, %bb.b ] ; 14 uses
  %i.l = and i64 %.0169297, %0
  %.not199 = icmp eq i64 %i.l, 0
  br i1 %.not199, label %solve.exit, label %bb.c

bb.c:                                             ; preds = %.preheader282
  %i.m = sub nsw i64 0, %.0169297                 ; 2 uses
  %i.n = and i64 %0, %i.m
  %i.o = sub i64 %i.n, %.0169297                  ; 3 uses
  %i.p = mul nsw i64 %i.o, %2
  %i.q = getelementptr inbounds [8 x i8], ptr %4, i64 %i.p ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %.0176302, i64 %i.o ; 18 uses
  %i.s = sub nsw i64 %2, %.0298                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.u = mul nsw i64 %.0298, %.0169297
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.u
  %.idx200 = shl nsw i64 %.0298, 4
  %i.w = getelementptr inbounds i8, ptr %.0173303, i64 %.idx200
  %i.x = tail call i32 @dgemm_kernel(i64 noundef %.0169297, i64 noundef 2, i64 noundef %i.s, double noundef -1.000000e+00, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.r, i64 noundef %7) #4 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %i.y = sub nsw i64 %.0298, %.0169297            ; 3 uses
  %i.z = add nsw i64 %.0169297, -1                ; 5 uses
  %.idx201 = shl nsw i64 %i.y, 4
  %i.aa = getelementptr inbounds i8, ptr %.0173303, i64 %.idx201
  %i.ab = mul nsw i64 %i.y, %.0169297
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ab
  %.idx277 = shl nsw i64 %i.z, 4
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %.idx277 ; 2 uses
  %i.ae = mul nuw nsw i64 %i.z, %.0169297
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.z
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %.not.i291 = icmp eq i64 %i.z, 0
  br i1 %.not.i291, label %.split.i.preheader, label %.lr.ph.us.i.preheader.preheader

.lr.ph.us.i.preheader.preheader:                  ; preds = %.lr.ph.i
  %invariant.gep.us.i.1 = getelementptr [8 x i8], ptr %i.r, i64 %7 ; 12 uses
  %i.ai = shl i64 %.0298, 3
  %i.aj = mul i64 %i.ai, %.0169297
  %i.ak = mul i64 %i.k, %i.o
  %i.al = shl nuw nsw i64 %.0169297, 3
  %i.am = sub nuw nsw i64 -8, %i.al
  %i.an = add nsw i64 %.0169297, -2
  %9 = getelementptr i8, ptr %4, i64 %i.aj
  %i.ao = getelementptr i8, ptr %9, i64 -8
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ak
  br label %iter.check406

.split.i.preheader:                               ; preds = %._crit_edge.us.i.1, %.lr.ph.i
  %.04452.i.lcssa = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ft, %._crit_edge.us.i.1 ] ; 2 uses
  %.lcssa288 = phi double [ %i.ah, %.lr.ph.i ], [ %i.fv, %._crit_edge.us.i.1 ] ; 2 uses
  %i.aq = load double, ptr %i.r, align 8, !tbaa !30
  %i.ar = fmul double %.lcssa288, %i.aq           ; 2 uses
  store double %i.ar, ptr %.04452.i.lcssa, align 8, !tbaa !30
  store double %i.ar, ptr %i.r, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 8
  %i.at = getelementptr inbounds [8 x i8], ptr %i.r, i64 %7 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = fmul double %.lcssa288, %i.au           ; 2 uses
  store double %i.av, ptr %i.as, align 8, !tbaa !30
  store double %i.av, ptr %i.at, align 8, !tbaa !30
  br label %solve.exit

iter.check406:                                    ; preds = %.lr.ph.us.i.preheader.preheader, %._crit_edge.us.i.1
  %indvar = phi i64 [ 0, %.lr.ph.us.i.preheader.preheader ], [ %indvar.next, %._crit_edge.us.i.1 ] ; 3 uses
  %i.aw = phi double [ %i.ah, %.lr.ph.us.i.preheader.preheader ], [ %i.fv, %._crit_edge.us.i.1 ] ; 2 uses
  %.04452.i294 = phi ptr [ %i.ad, %.lr.ph.us.i.preheader.preheader ], [ %i.ft, %._crit_edge.us.i.1 ] ; 3 uses
  %.04353.i293 = phi ptr [ %i.af, %.lr.ph.us.i.preheader.preheader ], [ %i.fs, %._crit_edge.us.i.1 ] ; 25 uses
  %indvars.iv65.i292 = phi i64 [ %i.z, %.lr.ph.us.i.preheader.preheader ], [ %indvars.iv.next66.i, %._crit_edge.us.i.1 ] ; 20 uses
  %i.ax = sub i64 %i.an, %indvar                  ; 2 uses
  %i.ay = mul i64 %i.am, %indvar
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv65.i292 ; 4 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !30
  %i.bb = fmul double %i.aw, %i.ba                ; 3 uses
  store double %i.bb, ptr %.04452.i294, align 8, !tbaa !30
  store double %i.bb, ptr %i.az, align 8, !tbaa !30
  %i.bc = fneg double %i.bb                       ; 11 uses
  %min.iters.check385 = icmp ult i64 %indvars.iv65.i292, 4
  br i1 %min.iters.check385, label %vec.epilog.scalar.ph407.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check406
  %bound0382 = icmp ult ptr %i.r, %scevgep
  %bound1383 = icmp ult ptr %.04353.i293, %i.az
  %found.conflict384 = and i1 %bound0382, %bound1383
  br i1 %found.conflict384, label %vec.epilog.scalar.ph407.preheader, label %vector.main.loop.iter.check386

vector.main.loop.iter.check386:                   ; preds = %vector.memcheck380
  %min.iters.check387 = icmp ult i64 %indvars.iv65.i292, 16
  br i1 %min.iters.check387, label %vec.epilog.ph410, label %vector.ph388

vector.ph388:                                     ; preds = %vector.main.loop.iter.check386
  %i.bd = and i64 %indvars.iv65.i292, 12
  %n.vec389 = and i64 %indvars.iv65.i292, -16     ; 4 uses
  %broadcast.splatinsert390 = insertelement <4 x double> poison, double %i.bc, i64 0
  %broadcast.splat391 = shufflevector <4 x double> %broadcast.splatinsert390, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body392

vector.body392:                                   ; preds = %vector.ph388, %vector.body392
  %index393 = phi i64 [ 0, %vector.ph388 ], [ %index.next402, %vector.body392 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %index393 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %wide.load394.a = load <4 x double>, ptr %i.be, align 8, !tbaa !30, !alias.scope !31
  %wide.load395.a = load <4 x double>, ptr %i.bf, align 8, !tbaa !30, !alias.scope !31
  %wide.load396.a = load <4 x double>, ptr %i.bg, align 8, !tbaa !30, !alias.scope !31
  %wide.load397.a = load <4 x double>, ptr %i.bh, align 8, !tbaa !30, !alias.scope !31
  %i.bi = getelementptr [8 x i8], ptr %i.r, i64 %index393 ; 5 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 64     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 96     ; 2 uses
  %wide.load398.a = load <4 x double>, ptr %i.bi, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %wide.load399.a = load <4 x double>, ptr %i.bj, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %wide.load400.a = load <4 x double>, ptr %i.bk, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %wide.load401 = load <4 x double>, ptr %i.bl, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %i.bm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat391, <4 x double> %wide.load394.a, <4 x double> %wide.load398.a)
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat391, <4 x double> %wide.load395.a, <4 x double> %wide.load399.a)
  %i.bo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat391, <4 x double> %wide.load396.a, <4 x double> %wide.load400.a)
  %i.bp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat391, <4 x double> %wide.load397.a, <4 x double> %wide.load401)
  store <4 x double> %i.bm, ptr %i.bi, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  store <4 x double> %i.bn, ptr %i.bj, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  store <4 x double> %i.bo, ptr %i.bk, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  store <4 x double> %i.bp, ptr %i.bl, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %index.next402 = add nuw i64 %index393, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next402, %n.vec389
  br i1 %i.bq, label %middle.block403, label %vector.body392, !llvm.loop !11

middle.block403:                                  ; preds = %vector.body392
  %cmp.n404 = icmp eq i64 %indvars.iv65.i292, %n.vec389
  br i1 %cmp.n404, label %iter.check, label %vec.epilog.iter.check408

vec.epilog.iter.check408:                         ; preds = %middle.block403
  %min.epilog.iters.check409 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check409, label %vec.epilog.scalar.ph407.preheader, label %vec.epilog.ph410, !prof !36

vec.epilog.ph410:                                 ; preds = %vector.main.loop.iter.check386, %vec.epilog.iter.check408
  %vec.epilog.resume.val405 = phi i64 [ %n.vec389, %vec.epilog.iter.check408 ], [ 0, %vector.main.loop.iter.check386 ]
  %n.vec411 = and i64 %indvars.iv65.i292, -4      ; 3 uses
  %broadcast.splatinsert412 = insertelement <4 x double> poison, double %i.bc, i64 0
  %broadcast.splat413 = shufflevector <4 x double> %broadcast.splatinsert412, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body414

vec.epilog.vector.body414:                        ; preds = %vec.epilog.vector.body414, %vec.epilog.ph410
  %index415 = phi i64 [ %vec.epilog.resume.val405, %vec.epilog.ph410 ], [ %index.next418, %vec.epilog.vector.body414 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %index415
  %wide.load416.a = load <4 x double>, ptr %i.br, align 8, !tbaa !30, !alias.scope !31
  %i.bs = getelementptr [8 x i8], ptr %i.r, i64 %index415 ; 2 uses
  %wide.load417 = load <4 x double>, ptr %i.bs, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %i.bt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat413, <4 x double> %wide.load416.a, <4 x double> %wide.load417)
  store <4 x double> %i.bt, ptr %i.bs, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %index.next418 = add nuw i64 %index415, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next418, %n.vec411
  br i1 %i.bu, label %vec.epilog.middle.block419, label %vec.epilog.vector.body414, !llvm.loop !12

vec.epilog.middle.block419:                       ; preds = %vec.epilog.vector.body414
  %cmp.n420 = icmp eq i64 %indvars.iv65.i292, %n.vec411
  br i1 %cmp.n420, label %iter.check, label %vec.epilog.scalar.ph407.preheader

vec.epilog.scalar.ph407.preheader:                ; preds = %iter.check406, %vector.memcheck380, %vec.epilog.iter.check408, %vec.epilog.middle.block419
  %indvars.iv57.i.ph = phi i64 [ 0, %iter.check406 ], [ 0, %vector.memcheck380 ], [ %n.vec389, %vec.epilog.iter.check408 ], [ %n.vec411, %vec.epilog.middle.block419 ] ; 4 uses
  %i.bv = sub i64 %indvars.iv65.i292, %indvars.iv57.i.ph
  %i.bw = sub i64 %i.ax, %indvars.iv57.i.ph
  %xtraiter = and i64 %i.bv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph407.prol.loopexit, label %vec.epilog.scalar.ph407.prol

vec.epilog.scalar.ph407.prol:                     ; preds = %vec.epilog.scalar.ph407.preheader, %vec.epilog.scalar.ph407.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph407.prol ], [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph407.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph407.prol ], [ 0, %vec.epilog.scalar.ph407.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv57.i.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %gep.us.i.prol = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv57.i.prol ; 2 uses
  %i.bz = load double, ptr %gep.us.i.prol, align 8, !tbaa !30
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.by, double %i.bz)
  store double %i.ca, ptr %gep.us.i.prol, align 8, !tbaa !30
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph407.prol.loopexit, label %vec.epilog.scalar.ph407.prol, !llvm.loop !13

vec.epilog.scalar.ph407.prol.loopexit:            ; preds = %vec.epilog.scalar.ph407.prol, %vec.epilog.scalar.ph407.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph407.preheader ], [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph407.prol ]
  %i.cb = icmp ult i64 %i.bw, 7
  br i1 %i.cb, label %iter.check, label %vec.epilog.scalar.ph407

vec.epilog.scalar.ph407:                          ; preds = %vec.epilog.scalar.ph407.prol.loopexit, %vec.epilog.scalar.ph407
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.7, %vec.epilog.scalar.ph407 ], [ %indvars.iv57.i.unr, %vec.epilog.scalar.ph407.prol.loopexit ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv57.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !30
  %gep.us.i = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv57.i ; 2 uses
  %i.ce = load double, ptr %gep.us.i, align 8, !tbaa !30
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.cd, double %i.ce)
  store double %i.cf, ptr %gep.us.i, align 8, !tbaa !30
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !30
  %gep.us.i.1429 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i ; 2 uses
  %i.ci = load double, ptr %gep.us.i.1429, align 8, !tbaa !30
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.ch, double %i.ci)
  store double %i.cj, ptr %gep.us.i.1429, align 8, !tbaa !30
  %indvars.iv.next58.i.1430 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1430
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !30
  %gep.us.i.2 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.1430 ; 2 uses
  %i.cm = load double, ptr %gep.us.i.2, align 8, !tbaa !30
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.cl, double %i.cm)
  store double %i.cn, ptr %gep.us.i.2, align 8, !tbaa !30
  %indvars.iv.next58.i.2 = add nuw nsw i64 %indvars.iv57.i, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.2
  %i.cp = load double, ptr %i.co, align 8, !tbaa !30
  %gep.us.i.3 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.2 ; 2 uses
  %i.cq = load double, ptr %gep.us.i.3, align 8, !tbaa !30
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.cp, double %i.cq)
  store double %i.cr, ptr %gep.us.i.3, align 8, !tbaa !30
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.3
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !30
  %gep.us.i.4 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.3 ; 2 uses
  %i.cu = load double, ptr %gep.us.i.4, align 8, !tbaa !30
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.ct, double %i.cu)
  store double %i.cv, ptr %gep.us.i.4, align 8, !tbaa !30
  %indvars.iv.next58.i.4 = add nuw nsw i64 %indvars.iv57.i, 5 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.4
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30
  %gep.us.i.5 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.4 ; 2 uses
  %i.cy = load double, ptr %gep.us.i.5, align 8, !tbaa !30
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.cx, double %i.cy)
  store double %i.cz, ptr %gep.us.i.5, align 8, !tbaa !30
  %indvars.iv.next58.i.5 = add nuw nsw i64 %indvars.iv57.i, 6 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.5
  %i.db = load double, ptr %i.da, align 8, !tbaa !30
  %gep.us.i.6 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.5 ; 2 uses
  %i.dc = load double, ptr %gep.us.i.6, align 8, !tbaa !30
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.db, double %i.dc)
  store double %i.dd, ptr %gep.us.i.6, align 8, !tbaa !30
  %indvars.iv.next58.i.6 = add nuw nsw i64 %indvars.iv57.i, 7 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.6
  %i.df = load double, ptr %i.de, align 8, !tbaa !30
  %gep.us.i.7 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.6 ; 2 uses
  %i.dg = load double, ptr %gep.us.i.7, align 8, !tbaa !30
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.df, double %i.dg)
  store double %i.dh, ptr %gep.us.i.7, align 8, !tbaa !30
  %indvars.iv.next58.i.7 = add nuw nsw i64 %indvars.iv57.i, 8 ; 2 uses
  %exitcond60.not.i.7 = icmp eq i64 %indvars.iv.next58.i.7, %indvars.iv65.i292
  br i1 %exitcond60.not.i.7, label %iter.check, label %vec.epilog.scalar.ph407, !llvm.loop !14

iter.check:                                       ; preds = %vec.epilog.scalar.ph407.prol.loopexit, %vec.epilog.scalar.ph407, %vec.epilog.middle.block419, %middle.block403
  %i.di = getelementptr inbounds nuw i8, ptr %.04452.i294, i64 8
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %7 ; 3 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !30
  %i.dl = fmul double %i.aw, %i.dk                ; 3 uses
  store double %i.dl, ptr %i.di, align 8, !tbaa !30
  store double %i.dl, ptr %i.dj, align 8, !tbaa !30
  %i.dm = fneg double %i.dl                       ; 11 uses
  %min.iters.check = icmp ult i64 %indvars.iv65.i292, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %invariant.gep.us.i.1, %scevgep
  %bound1 = icmp ult ptr %.04353.i293, %i.dj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check364 = icmp ult i64 %indvars.iv65.i292, 16
  br i1 %min.iters.check364, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %indvars.iv65.i292, 12
  %n.vec = and i64 %indvars.iv65.i292, -16        ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %index ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 96
  %wide.load = load <4 x double>, ptr %i.do, align 8, !tbaa !30, !alias.scope !38
  %wide.load365 = load <4 x double>, ptr %i.dp, align 8, !tbaa !30, !alias.scope !38
end_hunk_0
