Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/drotm_k?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @drotm_k(i64 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -8 ; 19 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 19 uses
  %i.c = load double, ptr %5, align 8, !tbaa !41  ; 5 uses
  %i.d = icmp slt i64 %0, 1
  %i.e = fcmp oeq double %i.c, -2.000000e+00
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %2, %4
  %i.g = icmp sgt i64 %2, 0
  %or.cond3 = and i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = mul i64 %2, %0                           ; 6 uses
  %i.i = fcmp olt double %i.c, 0.000000e+00
  br i1 %i.i, label %.lr.ph223.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp oeq double %i.c, 0.000000e+00
  %i.k = add nuw i64 %0, 1                        ; 2 uses
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.k, i64 2)
  %i.m = add nsw i64 %i.l, -1                     ; 4 uses
  %min.iters.check362 = icmp sgt i64 %i.k, 20
  %ident.check351.not = icmp eq i64 %2, 1
  %or.cond412 = and i1 %min.iters.check362, %ident.check351.not ; 2 uses
  br i1 %i.j, label %.lr.ph220.preheader, label %.lr.ph217.preheader

.lr.ph220.preheader:                              ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !41 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !41 ; 2 uses
  br i1 %or.cond412, label %vector.memcheck352, label %.lr.ph220.preheader417

vector.memcheck352:                               ; preds = %.lr.ph220.preheader
  %i.r = add nuw nsw i64 %2, 1
  %i.s = add nuw i64 %i.h, 1
  %smax353 = tail call i64 @llvm.smax.i64(i64 %i.r, i64 %i.s)
  %i.t = shl i64 %smax353, 3
  %i.u = add i64 %i.t, -8                         ; 2 uses
  %scevgep356 = getelementptr i8, ptr %1, i64 %i.u
  %scevgep357 = getelementptr i8, ptr %3, i64 %i.u
  %bound0358 = icmp ult ptr %1, %scevgep357
  %bound1359 = icmp ult ptr %3, %scevgep356
  %found.conflict360 = and i1 %bound0358, %bound1359
  br i1 %found.conflict360, label %.lr.ph220.preheader417, label %vector.ph363

vector.ph363:                                     ; preds = %vector.memcheck352
  %n.vec364 = and i64 %i.m, -8                    ; 3 uses
  %i.v = or disjoint i64 %n.vec364, 1
  %broadcast.splatinsert365 = insertelement <4 x double> poison, double %i.o, i64 0
  %broadcast.splat366 = shufflevector <4 x double> %broadcast.splatinsert365, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert367 = insertelement <4 x double> poison, double %i.q, i64 0
  %broadcast.splat368 = shufflevector <4 x double> %broadcast.splatinsert367, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph363
  %index370 = phi i64 [ 0, %vector.ph363 ], [ %index.next375, %vector.body369 ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %1, i64 %index370 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %wide.load371 = load <4 x double>, ptr %i.w, align 8, !tbaa !41, !alias.scope !42, !noalias !43 ; 2 uses
  %wide.load372 = load <4 x double>, ptr %i.x, align 8, !tbaa !41, !alias.scope !42, !noalias !43 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %3, i64 %index370 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %wide.load373 = load <4 x double>, ptr %i.y, align 8, !tbaa !41, !alias.scope !43 ; 2 uses
  %wide.load374 = load <4 x double>, ptr %i.z, align 8, !tbaa !41, !alias.scope !43 ; 2 uses
  %i.aa = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load373, <4 x double> %broadcast.splat366, <4 x double> %wide.load371)
  %i.ab = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load374, <4 x double> %broadcast.splat366, <4 x double> %wide.load372)
  store <4 x double> %i.aa, ptr %i.w, align 8, !tbaa !41, !alias.scope !42, !noalias !43
  store <4 x double> %i.ab, ptr %i.x, align 8, !tbaa !41, !alias.scope !42, !noalias !43
  %i.ac = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load371, <4 x double> %broadcast.splat368, <4 x double> %wide.load373)
  %i.ad = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load372, <4 x double> %broadcast.splat368, <4 x double> %wide.load374)
  store <4 x double> %i.ac, ptr %i.y, align 8, !tbaa !41, !alias.scope !43
  store <4 x double> %i.ad, ptr %i.z, align 8, !tbaa !41, !alias.scope !43
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.ae = icmp eq i64 %index.next375, %n.vec364
  br i1 %i.ae, label %middle.block376, label %vector.body369, !llvm.loop !11

middle.block376:                                  ; preds = %vector.body369
  %cmp.n377 = icmp eq i64 %i.m, %n.vec364
  br i1 %cmp.n377, label %.loopexit, label %.lr.ph220.preheader417

.lr.ph220.preheader417:                           ; preds = %vector.memcheck352, %.lr.ph220.preheader, %middle.block376
  %.0182219.ph = phi i64 [ 1, %vector.memcheck352 ], [ 1, %.lr.ph220.preheader ], [ %i.v, %middle.block376 ]
  br label %.lr.ph220

.lr.ph220:                                        ; preds = %.lr.ph220.preheader417, %.lr.ph220
  %.0182219 = phi i64 [ %i.al, %.lr.ph220 ], [ %.0182219.ph, %.lr.ph220.preheader417 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0182219 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0182219 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.o, double %i.ag)
  store double %i.aj, ptr %i.af, align 8, !tbaa !41
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.q, double %i.ai)
  store double %i.ak, ptr %i.ah, align 8, !tbaa !41
  %i.al = add nuw nsw i64 %.0182219, %2           ; 2 uses
  %.not194 = icmp sgt i64 %i.al, %i.h
  br i1 %.not194, label %.loopexit, label %.lr.ph220, !llvm.loop !12

.lr.ph217.preheader:                              ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  br i1 %or.cond412, label %vector.memcheck326, label %.lr.ph217.preheader419

vector.memcheck326:                               ; preds = %.lr.ph217.preheader
  %i.aq = add nuw nsw i64 %2, 1
  %i.ar = add nuw i64 %i.h, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.as = shl i64 %smax, 3
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %scevgep327 = getelementptr i8, ptr %1, i64 %i.at
  %scevgep328 = getelementptr i8, ptr %3, i64 %i.at
  %bound0329 = icmp ult ptr %1, %scevgep328
  %bound1330 = icmp ult ptr %3, %scevgep327
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph217.preheader419, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck326
  %n.vec335 = and i64 %i.m, -8                    ; 3 uses
  %i.au = or disjoint i64 %n.vec335, 1
  %broadcast.splatinsert336 = insertelement <4 x double> poison, double %i.an, i64 0
  %broadcast.splat337 = shufflevector <4 x double> %broadcast.splatinsert336, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert338 = insertelement <4 x double> poison, double %i.ap, i64 0
  %broadcast.splat339 = shufflevector <4 x double> %broadcast.splatinsert338, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph334
  %index341 = phi i64 [ 0, %vector.ph334 ], [ %index.next346, %vector.body340 ] ; 3 uses
  %i.av = getelementptr [8 x i8], ptr %1, i64 %index341 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %wide.load342 = load <4 x double>, ptr %i.av, align 8, !tbaa !41, !alias.scope !47, !noalias !48 ; 2 uses
  %wide.load343 = load <4 x double>, ptr %i.aw, align 8, !tbaa !41, !alias.scope !47, !noalias !48 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %3, i64 %index341 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %wide.load344 = load <4 x double>, ptr %i.ax, align 8, !tbaa !41, !alias.scope !48 ; 2 uses
  %wide.load345 = load <4 x double>, ptr %i.ay, align 8, !tbaa !41, !alias.scope !48 ; 2 uses
  %i.az = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load342, <4 x double> %broadcast.splat337, <4 x double> %wide.load344)
  %i.ba = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load343, <4 x double> %broadcast.splat337, <4 x double> %wide.load345)
  store <4 x double> %i.az, ptr %i.av, align 8, !tbaa !41, !alias.scope !47, !noalias !48
  store <4 x double> %i.ba, ptr %i.aw, align 8, !tbaa !41, !alias.scope !47, !noalias !48
  %i.bb = fneg <4 x double> %wide.load342
  %i.bc = fneg <4 x double> %wide.load343
  %i.bd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat339, <4 x double> %wide.load344, <4 x double> %i.bb)
  %i.be = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat339, <4 x double> %wide.load345, <4 x double> %i.bc)
  store <4 x double> %i.bd, ptr %i.ax, align 8, !tbaa !41, !alias.scope !48
  store <4 x double> %i.be, ptr %i.ay, align 8, !tbaa !41, !alias.scope !48
  %index.next346 = add nuw i64 %index341, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next346, %n.vec335
  br i1 %i.bf, label %middle.block347, label %vector.body340, !llvm.loop !16

middle.block347:                                  ; preds = %vector.body340
  %cmp.n348 = icmp eq i64 %i.m, %n.vec335
  br i1 %cmp.n348, label %.loopexit, label %.lr.ph217.preheader419

.lr.ph217.preheader419:                           ; preds = %vector.memcheck326, %.lr.ph217.preheader, %middle.block347
  %.1183216.ph = phi i64 [ 1, %vector.memcheck326 ], [ 1, %.lr.ph217.preheader ], [ %i.au, %middle.block347 ]
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader419, %.lr.ph217
  %.1183216 = phi i64 [ %i.bn, %.lr.ph217 ], [ %.1183216.ph, %.lr.ph217.preheader419 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1183216 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !41 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1183216 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !41 ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.an, double %i.bj)
  store double %i.bk, ptr %i.bg, align 8, !tbaa !41
  %i.bl = fneg double %i.bh
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bj, double %i.bl)
  store double %i.bm, ptr %i.bi, align 8, !tbaa !41
  %i.bn = add nuw nsw i64 %.1183216, %2           ; 2 uses
  %.not193 = icmp sgt i64 %i.bn, %i.h
  br i1 %.not193, label %.loopexit, label %.lr.ph217, !llvm.loop !17

.lr.ph223.preheader:                              ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.br = load double, ptr %i.bq, align 8, !tbaa !41 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !41 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !41 ; 2 uses
  %i.bw = add nuw i64 %0, 1                       ; 2 uses
  %i.bx = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 2)
  %i.by = add nsw i64 %i.bx, -1                   ; 2 uses
  %min.iters.check391 = icmp sgt i64 %i.bw, 16
  %ident.check380.not = icmp eq i64 %2, 1
  %or.cond415 = and i1 %min.iters.check391, %ident.check380.not
  br i1 %or.cond415, label %vector.memcheck381, label %.lr.ph223.preheader416

vector.memcheck381:                               ; preds = %.lr.ph223.preheader
  %i.bz = add nuw nsw i64 %2, 1
  %i.ca = add nuw i64 %i.h, 1
  %smax382 = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 %i.ca)
  %i.cb = shl i64 %smax382, 3
  %i.cc = add i64 %i.cb, -8                       ; 2 uses
  %scevgep385 = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep386 = getelementptr i8, ptr %3, i64 %i.cc
  %bound0387 = icmp ult ptr %1, %scevgep386
  %bound1388 = icmp ult ptr %3, %scevgep385
  %found.conflict389 = and i1 %bound0387, %bound1388
  br i1 %found.conflict389, label %.lr.ph223.preheader416, label %vector.ph392

vector.ph392:                                     ; preds = %vector.memcheck381
  %n.vec393 = and i64 %i.by, -8                   ; 3 uses
  %i.cd = or disjoint i64 %n.vec393, 1
  %broadcast.splatinsert394 = insertelement <4 x double> poison, double %i.bp, i64 0
  %broadcast.splat395 = shufflevector <4 x double> %broadcast.splatinsert394, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert396 = insertelement <4 x double> poison, double %i.br, i64 0
  %broadcast.splat397 = shufflevector <4 x double> %broadcast.splatinsert396, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert398 = insertelement <4 x double> poison, double %i.bt, i64 0
  %broadcast.splat399 = shufflevector <4 x double> %broadcast.splatinsert398, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert400 = insertelement <4 x double> poison, double %i.bv, i64 0
  %broadcast.splat401 = shufflevector <4 x double> %broadcast.splatinsert400, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph392
  %index403 = phi i64 [ 0, %vector.ph392 ], [ %index.next408, %vector.body402 ] ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %1, i64 %index403 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %wide.load404 = load <4 x double>, ptr %i.ce, align 8, !tbaa !41, !alias.scope !49, !noalias !50 ; 2 uses
  %wide.load405 = load <4 x double>, ptr %i.cf, align 8, !tbaa !41, !alias.scope !49, !noalias !50 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %3, i64 %index403 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %wide.load406 = load <4 x double>, ptr %i.cg, align 8, !tbaa !41, !alias.scope !50 ; 2 uses
  %wide.load407 = load <4 x double>, ptr %i.ch, align 8, !tbaa !41, !alias.scope !50 ; 2 uses
  %i.ci = fmul <4 x double> %broadcast.splat397, %wide.load406
  %i.cj = fmul <4 x double> %broadcast.splat397, %wide.load407
  %i.ck = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load404, <4 x double> %broadcast.splat395, <4 x double> %i.ci)
  %i.cl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load405, <4 x double> %broadcast.splat395, <4 x double> %i.cj)
  store <4 x double> %i.ck, ptr %i.ce, align 8, !tbaa !41, !alias.scope !49, !noalias !50
  store <4 x double> %i.cl, ptr %i.cf, align 8, !tbaa !41, !alias.scope !49, !noalias !50
  %i.cm = fmul <4 x double> %broadcast.splat401, %wide.load406
  %i.cn = fmul <4 x double> %broadcast.splat401, %wide.load407
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load404, <4 x double> %broadcast.splat399, <4 x double> %i.cm)
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load405, <4 x double> %broadcast.splat399, <4 x double> %i.cn)
  store <4 x double> %i.co, ptr %i.cg, align 8, !tbaa !41, !alias.scope !50
  store <4 x double> %i.cp, ptr %i.ch, align 8, !tbaa !41, !alias.scope !50
  %index.next408 = add nuw i64 %index403, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next408, %n.vec393
  br i1 %i.cq, label %middle.block409, label %vector.body402, !llvm.loop !21

middle.block409:                                  ; preds = %vector.body402
  %cmp.n410 = icmp eq i64 %i.by, %n.vec393
  br i1 %cmp.n410, label %.loopexit, label %.lr.ph223.preheader416

.lr.ph223.preheader416:                           ; preds = %vector.memcheck381, %.lr.ph223.preheader, %middle.block409
  %.2184222.ph = phi i64 [ 1, %vector.memcheck381 ], [ 1, %.lr.ph223.preheader ], [ %i.cd, %middle.block409 ]
  br label %.lr.ph223

.lr.ph223:                                        ; preds = %.lr.ph223.preheader416, %.lr.ph223
  %.2184222 = phi i64 [ %i.cz, %.lr.ph223 ], [ %.2184222.ph, %.lr.ph223.preheader416 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2184222 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !41 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.2184222 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !41 ; 2 uses
  %i.cv = fmul double %i.br, %i.cu
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.bp, double %i.cv)
  store double %i.cw, ptr %i.cr, align 8, !tbaa !41
  %i.cx = fmul double %i.bv, %i.cu
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.bt, double %i.cx)
  store double %i.cy, ptr %i.ct, align 8, !tbaa !41
  %i.cz = add nuw nsw i64 %.2184222, %2           ; 2 uses
  %.not195 = icmp sgt i64 %i.cz, %i.h
  br i1 %.not195, label %.loopexit, label %.lr.ph223, !llvm.loop !22

bb.e:                                             ; preds = %bb.b
  %i.da = icmp slt i64 %2, 0
  %i.db = sub nsw i64 1, %0                       ; 2 uses
  %i.dc = mul nsw i64 %2, %i.db
  %i.dd = add nuw nsw i64 %i.dc, 1
  %.0178 = select i1 %i.da, i64 %i.dd, i64 1      ; 18 uses
  %i.de = icmp slt i64 %4, 0
  %i.df = mul nsw i64 %4, %i.db
  %i.dg = add nuw nsw i64 %i.df, 1
  %.0 = select i1 %i.de, i64 %i.dg, i64 1         ; 18 uses
  %i.dh = fcmp olt double %i.c, 0.000000e+00
  br i1 %i.dh, label %.lr.ph214.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = fcmp oeq double %i.c, 0.000000e+00
  %min.iters.check270 = icmp ult i64 %0, 16       ; 2 uses
  br i1 %i.di, label %.lr.ph209.preheader, label %.lr.ph.preheader

.lr.ph209.preheader:                              ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !41 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !41 ; 6 uses
  br i1 %min.iters.check270, label %.lr.ph209.preheader423, label %vector.scevcheck258

vector.scevcheck258:                              ; preds = %.lr.ph209.preheader
  %ident.check259 = icmp ne i64 %2, 1
  %ident.check260 = icmp ne i64 %4, 1
  %i.dn = or i1 %ident.check259, %ident.check260
  br i1 %i.dn, label %.lr.ph209.preheader423, label %vector.memcheck261

vector.memcheck261:                               ; preds = %vector.scevcheck258
  %i.do = shl i64 %.0178, 3                       ; 2 uses
  %i.dp = getelementptr i8, ptr %1, i64 %i.do
  %scevgep262 = getelementptr i8, ptr %i.dp, i64 -8
  %i.dq = shl i64 %0, 3                           ; 2 uses
  %i.dr = getelementptr i8, ptr %1, i64 %i.do
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dq
  %scevgep263 = getelementptr i8, ptr %i.ds, i64 -8
  %i.dt = shl i64 %.0, 3                          ; 2 uses
  %i.du = getelementptr i8, ptr %3, i64 %i.dt
  %scevgep264 = getelementptr i8, ptr %i.du, i64 -8
  %i.dv = getelementptr i8, ptr %3, i64 %i.dt
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.dq
  %scevgep265 = getelementptr i8, ptr %i.dw, i64 -8
  %bound0266 = icmp ult ptr %scevgep262, %scevgep265
  %bound1267 = icmp ult ptr %scevgep264, %scevgep263
  %found.conflict268 = and i1 %bound0266, %bound1267
  br i1 %found.conflict268, label %.lr.ph209.preheader423, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck261
  %n.vec272 = and i64 %0, 9223372036854775800     ; 5 uses
  %i.dx = add i64 %.0, %n.vec272
  %i.dy = add i64 %.0178, %n.vec272
  %i.dz = or disjoint i64 %n.vec272, 1
  %broadcast.splatinsert273 = insertelement <4 x double> poison, double %i.dk, i64 0
  %broadcast.splat274 = shufflevector <4 x double> %broadcast.splatinsert273, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert275 = insertelement <4 x double> poison, double %i.dm, i64 0
  %broadcast.splat276 = shufflevector <4 x double> %broadcast.splatinsert275, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.b, i64 %.0178
  %i.eb = getelementptr [8 x i8], ptr %i.a, i64 %.0
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph271
  %index278 = phi i64 [ 0, %vector.ph271 ], [ %index.next283, %vector.body277 ] ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %i.ea, i64 %index278 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %wide.load279 = load <4 x double>, ptr %i.ec, align 8, !tbaa !41, !alias.scope !51, !noalias !52 ; 2 uses
  %wide.load280 = load <4 x double>, ptr %i.ed, align 8, !tbaa !41, !alias.scope !51, !noalias !52 ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.eb, i64 %index278 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %wide.load281 = load <4 x double>, ptr %i.ee, align 8, !tbaa !41, !alias.scope !52 ; 2 uses
  %wide.load282 = load <4 x double>, ptr %i.ef, align 8, !tbaa !41, !alias.scope !52 ; 2 uses
  %i.eg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load281, <4 x double> %broadcast.splat274, <4 x double> %wide.load279)
  %i.eh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load282, <4 x double> %broadcast.splat274, <4 x double> %wide.load280)
  store <4 x double> %i.eg, ptr %i.ec, align 8, !tbaa !41, !alias.scope !51, !noalias !52
  store <4 x double> %i.eh, ptr %i.ed, align 8, !tbaa !41, !alias.scope !51, !noalias !52
  %i.ei = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load279, <4 x double> %broadcast.splat276, <4 x double> %wide.load281)
  %i.ej = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load280, <4 x double> %broadcast.splat276, <4 x double> %wide.load282)
  store <4 x double> %i.ei, ptr %i.ee, align 8, !tbaa !41, !alias.scope !52
  store <4 x double> %i.ej, ptr %i.ef, align 8, !tbaa !41, !alias.scope !52
  %index.next283 = add nuw i64 %index278, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next283, %n.vec272
  br i1 %i.ek, label %middle.block284, label %vector.body277, !llvm.loop !26

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %0, %n.vec272
  br i1 %cmp.n285, label %.loopexit, label %.lr.ph209.preheader423

.lr.ph209.preheader423:                           ; preds = %vector.memcheck261, %vector.scevcheck258, %.lr.ph209.preheader, %middle.block284
  %.1208.ph = phi i64 [ %.0, %vector.memcheck261 ], [ %.0, %vector.scevcheck258 ], [ %.0, %.lr.ph209.preheader ], [ %i.dx, %middle.block284 ] ; 2 uses
  %.1179207.ph = phi i64 [ %.0178, %vector.memcheck261 ], [ %.0178, %vector.scevcheck258 ], [ %.0178, %.lr.ph209.preheader ], [ %i.dy, %middle.block284 ] ; 2 uses
  %.3185206.ph = phi i64 [ 1, %vector.memcheck261 ], [ 1, %vector.scevcheck258 ], [ 1, %.lr.ph209.preheader ], [ %i.dz, %middle.block284 ] ; 4 uses
  %i.el = add nuw i64 %0, 1
  %i.em = sub i64 %i.el, %.3185206.ph
  %i.en = sub i64 %0, %.3185206.ph
  %xtraiter427 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader423, %.lr.ph209.prol
  %.1208.prol = phi i64 [ %i.ev, %.lr.ph209.prol ], [ %.1208.ph, %.lr.ph209.preheader423 ] ; 2 uses
  %.1179207.prol = phi i64 [ %i.eu, %.lr.ph209.prol ], [ %.1179207.ph, %.lr.ph209.preheader423 ] ; 2 uses
  %.3185206.prol = phi i64 [ %i.ew, %.lr.ph209.prol ], [ %.3185206.ph, %.lr.ph209.preheader423 ]
  %prol.iter429 = phi i64 [ %prol.iter429.next, %.lr.ph209.prol ], [ 0, %.lr.ph209.preheader423 ]
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.1179207.prol ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !41 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.1208.prol ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !41 ; 2 uses
  %i.es = tail call double @llvm.fmuladd.f64(double %i.er, double %i.dk, double %i.ep)
  store double %i.es, ptr %i.eo, align 8, !tbaa !41
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.dm, double %i.er)
  store double %i.et, ptr %i.eq, align 8, !tbaa !41
  %i.eu = add nsw i64 %.1179207.prol, %2          ; 2 uses
  %i.ev = add nsw i64 %.1208.prol, %4             ; 2 uses
  %i.ew = add nuw i64 %.3185206.prol, 1           ; 2 uses
  %prol.iter429.next = add i64 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i64 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol, !llvm.loop !27

end_hunk_0
