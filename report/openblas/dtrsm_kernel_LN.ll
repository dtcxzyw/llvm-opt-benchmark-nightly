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
  %9 = shl i64 %2, 3
  %i.k = shl i64 %2, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit281
  %.0167304 = phi i64 [ %i.a, %.lr.ph ], [ %i.kk, %.loopexit281 ] ; 2 uses
  %.0173303 = phi ptr [ %5, %.lr.ph ], [ %i.ki, %.loopexit281 ] ; 5 uses
  %.0176302 = phi ptr [ %6, %.lr.ph ], [ %i.kj, %.loopexit281 ] ; 3 uses
  br i1 %.not191, label %.loopexit283, label %.preheader282

.preheader282:                                    ; preds = %bb.b, %solve.exit
  %.0298 = phi i64 [ %.1, %solve.exit ], [ %i.c, %bb.b ] ; 7 uses
  %.0169297 = phi i64 [ %i.fw, %solve.exit ], [ 1, %bb.b ] ; 16 uses
  %i.l = and i64 %.0169297, %0
  %.not199 = icmp eq i64 %i.l, 0
  br i1 %.not199, label %solve.exit, label %bb.c

bb.c:                                             ; preds = %.preheader282
  %i.m = sub nsw i64 0, %.0169297                 ; 2 uses
  %i.n = and i64 %0, %i.m
  %i.o = sub i64 %i.n, %.0169297                  ; 4 uses
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
  %10 = shl nuw nsw i64 %.0169297, 3
  %11 = sub nuw nsw i64 -8, %10
  %i.ai = shl i64 %.0298, 3
  %i.aj = mul i64 %i.ai, %.0169297
  %i.ak = mul i64 %9, %i.o
  %i.al = shl nuw nsw i64 %.0169297, 3
  %i.am = sub nuw nsw i64 -8, %i.al
  %12 = shl i64 %.0298, 3
  %13 = mul i64 %12, %.0169297
  %14 = mul i64 %i.k, %i.o
  %i.an = add nsw i64 %.0169297, -2
  %15 = getelementptr i8, ptr %4, i64 %13
  %16 = getelementptr i8, ptr %15, i64 -8
  %17 = getelementptr i8, ptr %16, i64 %14
  %i.ao = getelementptr i8, ptr %4, i64 %i.aj
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ak
  br label %iter.check404

.split.i.preheader:                               ; preds = %._crit_edge.us.i.1, %.lr.ph.i
  %.04452.i.lcssa = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ft, %._crit_edge.us.i.1 ] ; 2 uses
  %.lcssa288 = phi double [ %i.ah, %.lr.ph.i ], [ %i.fv, %._crit_edge.us.i.1 ] ; 2 uses
  %i.ar = load double, ptr %i.r, align 8, !tbaa !30
  %i.as = fmul double %.lcssa288, %i.ar           ; 2 uses
  store double %i.as, ptr %.04452.i.lcssa, align 8, !tbaa !30
  store double %i.as, ptr %i.r, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 8
  %i.au = getelementptr inbounds [8 x i8], ptr %i.r, i64 %7 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !30
  %i.aw = fmul double %.lcssa288, %i.av           ; 2 uses
  store double %i.aw, ptr %i.at, align 8, !tbaa !30
  store double %i.aw, ptr %i.au, align 8, !tbaa !30
  br label %solve.exit

iter.check404:                                    ; preds = %.lr.ph.us.i.preheader.preheader, %._crit_edge.us.i.1
  %indvar = phi i64 [ 0, %.lr.ph.us.i.preheader.preheader ], [ %indvar.next, %._crit_edge.us.i.1 ] ; 4 uses
  %i.ax = phi double [ %i.ah, %.lr.ph.us.i.preheader.preheader ], [ %i.fv, %._crit_edge.us.i.1 ] ; 2 uses
  %.04452.i294 = phi ptr [ %i.ad, %.lr.ph.us.i.preheader.preheader ], [ %i.ft, %._crit_edge.us.i.1 ] ; 3 uses
  %.04353.i293 = phi ptr [ %i.af, %.lr.ph.us.i.preheader.preheader ], [ %i.fs, %._crit_edge.us.i.1 ] ; 25 uses
  %indvars.iv65.i292 = phi i64 [ %i.z, %.lr.ph.us.i.preheader.preheader ], [ %indvars.iv.next66.i, %._crit_edge.us.i.1 ] ; 20 uses
  %i.ay = sub i64 %i.an, %indvar                  ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv65.i292 ; 4 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !30
  %i.bb = fmul double %i.ax, %i.ba                ; 3 uses
  store double %i.bb, ptr %.04452.i294, align 8, !tbaa !30
  store double %i.bb, ptr %i.az, align 8, !tbaa !30
  %i.bc = fneg double %i.bb                       ; 11 uses
  %min.iters.check384 = icmp ult i64 %indvars.iv65.i292, 4
  br i1 %min.iters.check384, label %vec.epilog.scalar.ph406.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check404
  %18 = mul nsw i64 %indvar, %i.am
  %19 = getelementptr i8, ptr %17, i64 %18
  %bound0381 = icmp ult ptr %i.r, %19
  %bound1382 = icmp ult ptr %.04353.i293, %i.az
  %found.conflict383 = and i1 %bound0381, %bound1382
  br i1 %found.conflict383, label %vec.epilog.scalar.ph406.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %vector.memcheck380
  %min.iters.check386 = icmp ult i64 %indvars.iv65.i292, 16
  br i1 %min.iters.check386, label %vec.epilog.ph408, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.bd = and i64 %indvars.iv65.i292, 12
  %n.vec388 = and i64 %indvars.iv65.i292, -16     ; 4 uses
  %broadcast.splatinsert389 = insertelement <4 x double> poison, double %i.bc, i64 0
  %broadcast.splat390 = shufflevector <4 x double> %broadcast.splatinsert389, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph387, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph387 ], [ %index.next401, %vector.body391 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %index392 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %wide.load393 = load <4 x double>, ptr %i.be, align 8, !tbaa !30, !alias.scope !31
  %wide.load394 = load <4 x double>, ptr %i.bf, align 8, !tbaa !30, !alias.scope !31
  %wide.load395 = load <4 x double>, ptr %i.bg, align 8, !tbaa !30, !alias.scope !31
  %wide.load396 = load <4 x double>, ptr %i.bh, align 8, !tbaa !30, !alias.scope !31
  %i.bi = getelementptr [8 x i8], ptr %i.r, i64 %index392 ; 5 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 64     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 96     ; 2 uses
  %wide.load397 = load <4 x double>, ptr %i.bi, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %wide.load398 = load <4 x double>, ptr %i.bj, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %wide.load399 = load <4 x double>, ptr %i.bk, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %wide.load400 = load <4 x double>, ptr %i.bl, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %i.bm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat390, <4 x double> %wide.load393, <4 x double> %wide.load397)
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat390, <4 x double> %wide.load394, <4 x double> %wide.load398)
  %i.bo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat390, <4 x double> %wide.load395, <4 x double> %wide.load399)
  %i.bp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat390, <4 x double> %wide.load396, <4 x double> %wide.load400)
  store <4 x double> %i.bm, ptr %i.bi, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  store <4 x double> %i.bn, ptr %i.bj, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  store <4 x double> %i.bo, ptr %i.bk, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  store <4 x double> %i.bp, ptr %i.bl, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %index.next401 = add nuw i64 %index392, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next401, %n.vec388
  br i1 %i.bq, label %middle.block402, label %vector.body391, !llvm.loop !11

middle.block402:                                  ; preds = %vector.body391
  %cmp.n403 = icmp eq i64 %indvars.iv65.i292, %n.vec388
  br i1 %cmp.n403, label %iter.check, label %vec.epilog.iter.check405

vec.epilog.iter.check405:                         ; preds = %middle.block402
  %min.epilog.iters.check407 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check407, label %vec.epilog.scalar.ph406.preheader, label %vec.epilog.ph408, !prof !36

vec.epilog.ph408:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check405
  %vec.epilog.resume.val409 = phi i64 [ %n.vec388, %vec.epilog.iter.check405 ], [ 0, %vector.main.loop.iter.check385 ]
  %n.vec410 = and i64 %indvars.iv65.i292, -4      ; 3 uses
  %broadcast.splatinsert411 = insertelement <4 x double> poison, double %i.bc, i64 0
  %broadcast.splat412 = shufflevector <4 x double> %broadcast.splatinsert411, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph408
  %index414 = phi i64 [ %vec.epilog.resume.val409, %vec.epilog.ph408 ], [ %index.next417, %vec.epilog.vector.body413 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %index414
  %wide.load415 = load <4 x double>, ptr %i.br, align 8, !tbaa !30, !alias.scope !31
  %i.bs = getelementptr [8 x i8], ptr %i.r, i64 %index414 ; 2 uses
  %wide.load416 = load <4 x double>, ptr %i.bs, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %i.bt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat412, <4 x double> %wide.load415, <4 x double> %wide.load416)
  store <4 x double> %i.bt, ptr %i.bs, align 8, !tbaa !30, !alias.scope !32, !noalias !31
  %index.next417 = add nuw i64 %index414, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next417, %n.vec410
  br i1 %i.bu, label %vec.epilog.middle.block418, label %vec.epilog.vector.body413, !llvm.loop !12

vec.epilog.middle.block418:                       ; preds = %vec.epilog.vector.body413
  %cmp.n419 = icmp eq i64 %indvars.iv65.i292, %n.vec410
  br i1 %cmp.n419, label %iter.check, label %vec.epilog.scalar.ph406.preheader

vec.epilog.scalar.ph406.preheader:                ; preds = %iter.check404, %vector.memcheck380, %vec.epilog.iter.check405, %vec.epilog.middle.block418
  %indvars.iv57.i.ph = phi i64 [ 0, %iter.check404 ], [ 0, %vector.memcheck380 ], [ %n.vec388, %vec.epilog.iter.check405 ], [ %n.vec410, %vec.epilog.middle.block418 ] ; 4 uses
  %i.bv = sub i64 %indvars.iv65.i292, %indvars.iv57.i.ph
  %i.bw = sub i64 %i.ay, %indvars.iv57.i.ph
  %xtraiter = and i64 %i.bv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph406.prol.loopexit, label %vec.epilog.scalar.ph406.prol

vec.epilog.scalar.ph406.prol:                     ; preds = %vec.epilog.scalar.ph406.preheader, %vec.epilog.scalar.ph406.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph406.prol ], [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph406.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph406.prol ], [ 0, %vec.epilog.scalar.ph406.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv57.i.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %gep.us.i.prol = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv57.i.prol ; 2 uses
  %i.bz = load double, ptr %gep.us.i.prol, align 8, !tbaa !30
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.by, double %i.bz)
  store double %i.ca, ptr %gep.us.i.prol, align 8, !tbaa !30
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph406.prol.loopexit, label %vec.epilog.scalar.ph406.prol, !llvm.loop !13

vec.epilog.scalar.ph406.prol.loopexit:            ; preds = %vec.epilog.scalar.ph406.prol, %vec.epilog.scalar.ph406.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph406.preheader ], [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph406.prol ]
  %i.cb = icmp ult i64 %i.bw, 7
  br i1 %i.cb, label %iter.check, label %vec.epilog.scalar.ph406

vec.epilog.scalar.ph406:                          ; preds = %vec.epilog.scalar.ph406.prol.loopexit, %vec.epilog.scalar.ph406
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.7, %vec.epilog.scalar.ph406 ], [ %indvars.iv57.i.unr, %vec.epilog.scalar.ph406.prol.loopexit ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv57.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !30
  %gep.us.i = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv57.i ; 2 uses
  %i.ce = load double, ptr %gep.us.i, align 8, !tbaa !30
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.cd, double %i.ce)
  store double %i.cf, ptr %gep.us.i, align 8, !tbaa !30
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !30
  %gep.us.i.1428 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i ; 2 uses
  %i.ci = load double, ptr %gep.us.i.1428, align 8, !tbaa !30
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.ch, double %i.ci)
  store double %i.cj, ptr %gep.us.i.1428, align 8, !tbaa !30
  %indvars.iv.next58.i.1429 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1429
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !30
  %gep.us.i.2 = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next58.i.1429 ; 2 uses
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
  br i1 %exitcond60.not.i.7, label %iter.check, label %vec.epilog.scalar.ph406, !llvm.loop !14

iter.check:                                       ; preds = %vec.epilog.scalar.ph406.prol.loopexit, %vec.epilog.scalar.ph406, %vec.epilog.middle.block418, %middle.block402
  %i.di = getelementptr inbounds nuw i8, ptr %.04452.i294, i64 8
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %7 ; 3 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !30
  %i.dl = fmul double %i.ax, %i.dk                ; 3 uses
  store double %i.dl, ptr %i.di, align 8, !tbaa !30
  store double %i.dl, ptr %i.dj, align 8, !tbaa !30
  %i.dm = fneg double %i.dl                       ; 11 uses
  %min.iters.check = icmp ult i64 %indvars.iv65.i292, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %20 = mul nsw i64 %indvar, %11
  %21 = getelementptr i8, ptr %i.aq, i64 %20
  %bound0 = icmp ult ptr %invariant.gep.us.i.1, %21
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
  %wide.load366 = load <4 x double>, ptr %i.dq, align 8, !tbaa !30, !alias.scope !38
  %wide.load367 = load <4 x double>, ptr %i.dr, align 8, !tbaa !30, !alias.scope !38
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %index ; 5 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32     ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 64     ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ds, i64 96     ; 2 uses
  %wide.load368 = load <4 x double>, ptr %i.ds, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %wide.load369 = load <4 x double>, ptr %i.dt, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %wide.load370 = load <4 x double>, ptr %i.du, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %wide.load371 = load <4 x double>, ptr %i.dv, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %i.dw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load, <4 x double> %wide.load368)
  %i.dx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load365, <4 x double> %wide.load369)
  %i.dy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load366, <4 x double> %wide.load370)
  %i.dz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load367, <4 x double> %wide.load371)
  store <4 x double> %i.dw, ptr %i.ds, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  store <4 x double> %i.dx, ptr %i.dt, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  store <4 x double> %i.dy, ptr %i.du, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  store <4 x double> %i.dz, ptr %i.dv, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv65.i292, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.i.1, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec372 = and i64 %indvars.iv65.i292, -4      ; 3 uses
  %broadcast.splatinsert373 = insertelement <4 x double> poison, double %i.dm, i64 0
  %broadcast.splat374 = shufflevector <4 x double> %broadcast.splatinsert373, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index375 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next378, %vec.epilog.vector.body ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %index375
  %wide.load376 = load <4 x double>, ptr %i.eb, align 8, !tbaa !30, !alias.scope !38
  %i.ec = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %index375 ; 2 uses
  %wide.load377 = load <4 x double>, ptr %i.ec, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %i.ed = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat374, <4 x double> %wide.load376, <4 x double> %wide.load377)
  store <4 x double> %i.ed, ptr %i.ec, align 8, !tbaa !30, !alias.scope !39, !noalias !38
  %index.next378 = add nuw i64 %index375, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next378, %n.vec372
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n379 = icmp eq i64 %indvars.iv65.i292, %n.vec372
  br i1 %cmp.n379, label %._crit_edge.us.i.1, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.1.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec372, %vec.epilog.middle.block ] ; 4 uses
  %i.ef = sub i64 %indvars.iv65.i292, %indvars.iv57.i.1.ph
  %i.eg = sub i64 %i.ay, %indvars.iv57.i.1.ph
  %xtraiter431 = and i64 %i.ef, 7                 ; 2 uses
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv57.i.1.prol = phi i64 [ %indvars.iv.next58.i.1.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv57.i.1.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter433 = phi i64 [ %prol.iter433.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv57.i.1.prol
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30
  %gep.us.i.1.prol = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv57.i.1.prol ; 2 uses
  %i.ej = load double, ptr %gep.us.i.1.prol, align 8, !tbaa !30
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.ei, double %i.ej)
  store double %i.ek, ptr %gep.us.i.1.prol, align 8, !tbaa !30
  %indvars.iv.next58.i.1.prol = add nuw nsw i64 %indvars.iv57.i.1.prol, 1 ; 2 uses
  %prol.iter433.next = add i64 %prol.iter433, 1   ; 2 uses
  %prol.iter433.cmp.not = icmp eq i64 %prol.iter433.next, %xtraiter431
  br i1 %prol.iter433.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !20

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv57.i.1.unr = phi i64 [ %indvars.iv57.i.1.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next58.i.1.prol, %vec.epilog.scalar.ph.prol ]
  %i.el = icmp ult i64 %i.eg, 7
  br i1 %i.el, label %._crit_edge.us.i.1, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv57.i.1 = phi i64 [ %indvars.iv.next58.i.1.7, %vec.epilog.scalar.ph ], [ %indvars.iv57.i.1.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv57.i.1
  %i.en = load double, ptr %i.em, align 8, !tbaa !30
  %gep.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv57.i.1 ; 2 uses
  %i.eo = load double, ptr %gep.us.i.1, align 8, !tbaa !30
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.en, double %i.eo)
  store double %i.ep, ptr %gep.us.i.1, align 8, !tbaa !30
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i.1, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1
  %i.er = load double, ptr %i.eq, align 8, !tbaa !30
  %gep.us.i.1.1 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1 ; 2 uses
  %i.es = load double, ptr %gep.us.i.1.1, align 8, !tbaa !30
  %i.et = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.er, double %i.es)
  store double %i.et, ptr %gep.us.i.1.1, align 8, !tbaa !30
  %indvars.iv.next58.i.1.1 = add nuw nsw i64 %indvars.iv57.i.1, 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1.1
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !30
  %gep.us.i.1.2 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.1 ; 2 uses
  %i.ew = load double, ptr %gep.us.i.1.2, align 8, !tbaa !30
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.ev, double %i.ew)
  store double %i.ex, ptr %gep.us.i.1.2, align 8, !tbaa !30
  %indvars.iv.next58.i.1.2 = add nuw nsw i64 %indvars.iv57.i.1, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1.2
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !30
  %gep.us.i.1.3 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.2 ; 2 uses
  %i.fa = load double, ptr %gep.us.i.1.3, align 8, !tbaa !30
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.ez, double %i.fa)
  store double %i.fb, ptr %gep.us.i.1.3, align 8, !tbaa !30
  %indvars.iv.next58.i.1.3 = add nuw nsw i64 %indvars.iv57.i.1, 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1.3
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !30
  %gep.us.i.1.4 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.3 ; 2 uses
  %i.fe = load double, ptr %gep.us.i.1.4, align 8, !tbaa !30
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.fd, double %i.fe)
  store double %i.ff, ptr %gep.us.i.1.4, align 8, !tbaa !30
  %indvars.iv.next58.i.1.4 = add nuw nsw i64 %indvars.iv57.i.1, 5 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1.4
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !30
  %gep.us.i.1.5 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.4 ; 2 uses
  %i.fi = load double, ptr %gep.us.i.1.5, align 8, !tbaa !30
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.fh, double %i.fi)
  store double %i.fj, ptr %gep.us.i.1.5, align 8, !tbaa !30
  %indvars.iv.next58.i.1.5 = add nuw nsw i64 %indvars.iv57.i.1, 6 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1.5
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !30
  %gep.us.i.1.6 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.5 ; 2 uses
  %i.fm = load double, ptr %gep.us.i.1.6, align 8, !tbaa !30
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.fl, double %i.fm)
  store double %i.fn, ptr %gep.us.i.1.6, align 8, !tbaa !30
  %indvars.iv.next58.i.1.6 = add nuw nsw i64 %indvars.iv57.i.1, 7 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.04353.i293, i64 %indvars.iv.next58.i.1.6
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !30
  %gep.us.i.1.7 = getelementptr [8 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.6 ; 2 uses
  %i.fq = load double, ptr %gep.us.i.1.7, align 8, !tbaa !30
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.fp, double %i.fq)
  store double %i.fr, ptr %gep.us.i.1.7, align 8, !tbaa !30
  %indvars.iv.next58.i.1.7 = add nuw nsw i64 %indvars.iv57.i.1, 8 ; 2 uses
  %exitcond60.not.i.1.7 = icmp eq i64 %indvars.iv.next58.i.1.7, %indvars.iv65.i292
  br i1 %exitcond60.not.i.1.7, label %._crit_edge.us.i.1, label %vec.epilog.scalar.ph, !llvm.loop !21

._crit_edge.us.i.1:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fs = getelementptr inbounds [8 x i8], ptr %.04353.i293, i64 %i.m ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.04452.i294, i64 -16 ; 2 uses
  %indvars.iv.next66.i = add nsw i64 %indvars.iv65.i292, -1 ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.next66.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next66.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %.split.i.preheader, label %iter.check404

solve.exit:                                       ; preds = %.split.i.preheader, %.preheader282
  %.1 = phi i64 [ %.0298, %.preheader282 ], [ %i.y, %.split.i.preheader ] ; 2 uses
  %i.fw = shl nuw nsw i64 %.0169297, 1
  %i.fx = icmp samesign ult i64 %.0169297, 8
  br i1 %i.fx, label %.preheader282, label %.loopexit283, !llvm.loop !22

.loopexit283:                                     ; preds = %solve.exit, %bb.b
  %.2 = phi i64 [ %i.c, %bb.b ], [ %.1, %solve.exit ]
  br i1 %i.f, label %bb.e, label %.loopexit281

bb.e:                                             ; preds = %.loopexit283
  %i.fy = getelementptr inbounds [8 x i8], ptr %.0176302, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %.split.i221.preheader, %bb.e
  %.1170 = phi i64 [ %i.e, %bb.e ], [ %i.gu, %.split.i221.preheader ] ; 2 uses
  %.0165 = phi ptr [ %i.j, %bb.e ], [ %i.gs, %.split.i221.preheader ] ; 3 uses
  %.0163 = phi ptr [ %i.fy, %bb.e ], [ %i.gt, %.split.i221.preheader ] ; 14 uses
  %.3 = phi i64 [ %.2, %bb.e ], [ %i.ge, %.split.i221.preheader ] ; 4 uses
  %i.fz = sub nsw i64 %2, %.3                     ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 0
  br i1 %i.ga, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.idx192 = shl nsw i64 %.3, 7
  %i.gb = getelementptr inbounds i8, ptr %.0165, i64 %.idx192
end_hunk_0
