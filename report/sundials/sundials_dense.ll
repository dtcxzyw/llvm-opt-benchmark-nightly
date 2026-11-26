Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_dense?download=true
inline.NumInlined: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_DenseGETRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph91.i.preheader, label %SUNDlsMat_denseGETRF.exit

.lr.ph91.i.preheader:                             ; preds = %bb.a
  %i.h = shl i64 %i.d, 3                          ; 2 uses
  %i.i = add i64 %i.d, -2
  %xtraiter31 = and i64 %i.f, 1
  %i.j = icmp eq i64 %i.f, 1
  %unroll_iter = and i64 %i.f, 9223372036854775806
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  %lcmp.mod33 = trunc i64 %i.f to i1
  br label %.lr.ph91.i

.loopexit75.i:                                    ; preds = %..loopexit_crit_edge.us.i, %.preheader74.i, %.loopexit77.i
  %exitcond103.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond103.not.i, label %SUNDlsMat_denseGETRF.exit, label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.preheader, %.loopexit75.i
  %.06689.i = phi i64 [ %i.o, %.loopexit75.i ], [ 0, %.lr.ph91.i.preheader ] ; 19 uses
  %i.k = shl i64 %.06689.i, 3
  %i.l = add i64 %i.k, 8                          ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06689.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 14 uses
  %i.o = add nuw nsw i64 %.06689.i, 1             ; 16 uses
  %i.p = icmp slt i64 %i.o, %i.d                  ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph91.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.06689.i
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !19 ; 3 uses
  %i.q = sub i64 %.06689.i, %i.d
  %i.r = and i64 %i.q, 1
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.t = load double, ptr %i.s, align 8, !tbaa !19 ; 2 uses
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = tail call double @llvm.fabs.f64(double %.pre.i)
  %i.w = fcmp ogt double %i.u, %i.v               ; 2 uses
  %spec.select.i.prol = select i1 %i.w, i64 %i.o, i64 %.06689.i ; 2 uses
  %i.x = add nuw nsw i64 %.06689.i, 2
  %2 = select i1 %i.w, double %i.t, double %.pre.i
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.unr = phi double [ %.pre.i, %.lr.ph.preheader.i ], [ %2, %.lr.ph.i.prol ]
  %.079.i.unr = phi i64 [ %.06689.i, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.06878.i.unr = phi i64 [ %i.o, %.lr.ph.preheader.i ], [ %i.x, %.lr.ph.i.prol ]
  %i.y = icmp eq i64 %i.i, %.06689.i
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %3 = phi double [ %5, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.079.i = phi i64 [ %spec.select.i.1, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ]
  %.06878.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.06878.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.06878.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19 ; 2 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = tail call double @llvm.fabs.f64(double %3)
  %i.ad = fcmp ogt double %i.ab, %i.ac            ; 2 uses
  %spec.select.i = select i1 %i.ad, i64 %.06878.i, i64 %.079.i
  %i.ae = add nuw nsw i64 %.06878.i, 1            ; 2 uses
  %4 = select i1 %i.ad, double %i.aa, double %3   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag)
  %i.ai = tail call double @llvm.fabs.f64(double %4)
  %i.aj = fcmp ogt double %i.ah, %i.ai            ; 2 uses
  %spec.select.i.1 = select i1 %i.aj, i64 %i.ae, i64 %spec.select.i ; 2 uses
  %i.ak = add nuw nsw i64 %.06878.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ak, %i.d
  %5 = select i1 %i.aj, double %i.ag, double %4
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph91.i
  %.0.lcssa.i = phi i64 [ %.06689.i, %.lr.ph91.i ], [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06689.i
  store i64 %.0.lcssa.i, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !19
  %i.ao = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.ao, label %SUNDlsMat_denseGETRF.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i64 %.0.lcssa.i, %.06689.i
  br i1 %.not.i, label %.loopexit77.i, label %.lr.ph81.i.preheader

.lr.ph81.i.preheader:                             ; preds = %bb.b
  br i1 %i.j, label %.lr.ph81.i.epil.preheader, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.preheader, %.lr.ph81.i
  %.16980.i = phi i64 [ %i.bc, %.lr.ph81.i ], [ 0, %.lr.ph81.i.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph81.i ], [ 0, %.lr.ph81.i.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16980.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %.0.lcssa.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.06689.i ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !19
  store double %i.au, ptr %i.ar, align 8, !tbaa !19
  store double %i.as, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16980.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %.0.lcssa.i ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.06689.i ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !19
  store double %i.bb, ptr %i.ay, align 8, !tbaa !19
  store double %i.az, ptr %i.ba, align 8, !tbaa !19
  %i.bc = add nuw nsw i64 %.16980.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit77.i.loopexit.unr-lcssa, label %.lr.ph81.i

.loopexit77.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph81.i
  br i1 %lcmp.mod32.not, label %.loopexit77.i, label %.lr.ph81.i.epil.preheader

.lr.ph81.i.epil.preheader:                        ; preds = %.loopexit77.i.loopexit.unr-lcssa, %.lr.ph81.i.preheader
  %.16980.i.epil.init = phi i64 [ 0, %.lr.ph81.i.preheader ], [ %i.bc, %.loopexit77.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16980.i.epil.init
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.0.lcssa.i ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.06689.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  store double %i.bi, ptr %i.bf, align 8, !tbaa !19
  store double %i.bg, ptr %i.bh, align 8, !tbaa !19
  br label %.loopexit77.i

.loopexit77.i:                                    ; preds = %.lr.ph81.i.epil.preheader, %.loopexit77.i.loopexit.unr-lcssa, %bb.b
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.06689.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !19
  %i.bl = fdiv double 1.000000e+00, %i.bk         ; 2 uses
  br i1 %i.p, label %.lr.ph84.i.preheader, label %.loopexit75.i

.lr.ph84.i.preheader:                             ; preds = %.loopexit77.i
  %i.bm = xor i64 %.06689.i, -1
  %i.bn = add i64 %i.d, %i.bm                     ; 3 uses
  %min.iters.check17 = icmp ult i64 %i.bn, 4
  br i1 %min.iters.check17, label %.lr.ph84.i.preheader30, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph84.i.preheader
  %n.vec19 = and i64 %i.bn, -4                    ; 3 uses
  %i.bo = add i64 %i.o, %n.vec19
  %broadcast.splatinsert20 = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat21 = shufflevector <2 x double> %broadcast.splatinsert20, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph18
  %index23 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body22 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index23 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load24 = load <2 x double>, ptr %i.bq, align 8, !tbaa !19
  %wide.load25 = load <2 x double>, ptr %i.br, align 8, !tbaa !19
  %i.bs = fmul <2 x double> %broadcast.splat21, %wide.load24
  %i.bt = fmul <2 x double> %broadcast.splat21, %wide.load25
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !19
  store <2 x double> %i.bt, ptr %i.br, align 8, !tbaa !19
  %index.next26 = add nuw i64 %index23, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next26, %n.vec19
  br i1 %i.bu, label %middle.block27, label %vector.body22, !llvm.loop !24

middle.block27:                                   ; preds = %vector.body22
  %cmp.n28 = icmp eq i64 %i.bn, %n.vec19
  br i1 %cmp.n28, label %.preheader74.i, label %.lr.ph84.i.preheader30

.lr.ph84.i.preheader30:                           ; preds = %.lr.ph84.i.preheader, %middle.block27
  %.282.i.ph = phi i64 [ %i.o, %.lr.ph84.i.preheader ], [ %i.bo, %middle.block27 ]
  br label %.lr.ph84.i

.preheader74.i:                                   ; preds = %.lr.ph84.i, %middle.block27
  %.not112.i = icmp slt i64 %i.o, %i.f
  br i1 %.not112.i, label %.lr.ph88.split.us.i.preheader, label %.loopexit75.i

.lr.ph88.split.us.i.preheader:                    ; preds = %.preheader74.i
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.h
  %scevgep12 = getelementptr i8, ptr %i.n, i64 %i.l
  %i.bv = xor i64 %.06689.i, -1
  %i.bw = add i64 %i.d, %i.bv                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 4
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %i.bx = add i64 %i.o, %n.vec
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br label %.lr.ph88.split.us.i

.lr.ph88.split.us.i:                              ; preds = %.lr.ph88.split.us.i.preheader, %..loopexit_crit_edge.us.i
  %.06787.us.i = phi i64 [ %i.cp, %..loopexit_crit_edge.us.i ], [ %i.o, %.lr.ph88.split.us.i.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06787.us.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17 ; 7 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.06689.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %i.cc = fcmp une double %i.cb, 0.000000e+00
  br i1 %i.cc, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.385.us.i = phi i64 [ %i.co, %scalar.ph ], [ %.385.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.385.us.i
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.385.us.i ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !19
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ce, double %i.cg)
  store double %i.ch, ptr %i.cf, align 8, !tbaa !19
  %i.ci = add nuw nsw i64 %.385.us.i, 1           ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ci ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !19
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ck, double %i.cm)
  store double %i.cn, ptr %i.cl, align 8, !tbaa !19
  %i.co = add nuw nsw i64 %.385.us.i, 2           ; 2 uses
  %exitcond101.not.i.1 = icmp eq i64 %i.co, %i.d
  br i1 %exitcond101.not.i.1, label %..loopexit_crit_edge.us.i, label %scalar.ph, !llvm.loop !25

..loopexit_crit_edge.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us.i
  %i.cp = add nuw nsw i64 %.06787.us.i, 1         ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.cp, %i.f
  br i1 %exitcond102.not.i, label %.loopexit75.i, label %.lr.ph88.split.us.i

.preheader.us.i:                                  ; preds = %.lr.ph88.split.us.i
  %i.cq = fneg double %i.cb                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.cr = getelementptr i8, ptr %i.bz, i64 %i.l
  %i.cs = getelementptr i8, ptr %i.bz, i64 %i.h
  %bound0 = icmp ult ptr %i.cr, %scevgep
  %bound1 = icmp ult ptr %scevgep12, %i.cs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = add nuw i64 %i.o, %index                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <2 x double>, ptr %i.cu, align 8, !tbaa !19, !alias.scope !31
  %wide.load13 = load <2 x double>, ptr %i.cv, align 8, !tbaa !19, !alias.scope !31
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.cw, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  %wide.load15 = load <2 x double>, ptr %i.cx, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load14)
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load13, <2 x double> %wide.load15)
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i, %middle.block
  %.385.us.i.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %.preheader.us.i ], [ %i.bx, %middle.block ] ; 6 uses
  %i.db = sub i64 %i.d, %.385.us.i.ph
  %.neg = add i64 %.385.us.i.ph, 1
  %xtraiter34 = and i64 %i.db, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.385.us.i.ph
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.385.us.i.ph ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !19
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.dd, double %i.df)
  store double %i.dg, ptr %i.de, align 8, !tbaa !19
  %i.dh = add nuw nsw i64 %.385.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.385.us.i.unr = phi i64 [ %.385.us.i.ph, %scalar.ph.preheader ], [ %i.dh, %scalar.ph.prol ]
  %i.di = icmp eq i64 %i.d, %.neg
  br i1 %i.di, label %..loopexit_crit_edge.us.i, label %scalar.ph

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader30, %.lr.ph84.i
  %.282.i = phi i64 [ %i.dm, %.lr.ph84.i ], [ %.282.i.ph, %.lr.ph84.i.preheader30 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.282.i ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !19
  %i.dl = fmul double %i.bl, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !19
  %i.dm = add nuw nsw i64 %.282.i, 1              ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.dm, %i.d
  br i1 %exitcond100.not.i, label %.preheader74.i, label %.lr.ph84.i, !llvm.loop !30

SUNDlsMat_denseGETRF.exit:                        ; preds = %.loopexit75.i, %._crit_edge.i, %bb.a
  %.070.i = phi i64 [ 0, %bb.a ], [ %i.o, %._crit_edge.i ], [ 0, %.loopexit75.i ]
  ret i64 %.070.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_denseGETRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph91.preheader, label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %bb.a
  %i.b = shl i64 %1, 3                            ; 2 uses
  %i.c = add i64 %1, -2
  %xtraiter135 = and i64 %2, 1
  %i.d = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, 9223372036854775806
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  %lcmp.mod137 = trunc i64 %2 to i1
  br label %.lr.ph91

.loopexit75:                                      ; preds = %..loopexit_crit_edge.us, %.preheader74, %.loopexit77
  %exitcond103.not = icmp eq i64 %i.i, %2
  br i1 %exitcond103.not, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.loopexit75
  %.06689 = phi i64 [ %i.i, %.loopexit75 ], [ 0, %.lr.ph91.preheader ] ; 19 uses
  %i.e = shl i64 %.06689, 3
  %i.f = add i64 %i.e, 8                          ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06689
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 14 uses
  %i.i = add nuw nsw i64 %.06689, 1               ; 16 uses
  %i.j = icmp slt i64 %i.i, %1                    ; 2 uses
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph91
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.06689
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 3 uses
  %i.k = sub i64 %.06689, %1
  %i.l = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = tail call double @llvm.fabs.f64(double %.pre)
  %i.q = fcmp ogt double %i.o, %i.p               ; 2 uses
  %spec.select.prol = select i1 %i.q, i64 %i.i, i64 %.06689 ; 2 uses
  %i.r = add nuw nsw i64 %.06689, 2
  %4 = select i1 %i.q, double %i.n, double %.pre
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.unr = phi double [ %.pre, %.lr.ph.preheader ], [ %4, %.lr.ph.prol ]
  %.079.unr = phi i64 [ %.06689, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.06878.unr = phi i64 [ %i.i, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.s = icmp eq i64 %i.c, %.06689
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %5 = phi double [ %7, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.079 = phi i64 [ %spec.select.1, %.lr.ph ], [ %.079.unr, %.lr.ph.prol.loopexit ]
  %.06878 = phi i64 [ %i.ae, %.lr.ph ], [ %.06878.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.06878
  %i.u = load double, ptr %i.t, align 8, !tbaa !19 ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = tail call double @llvm.fabs.f64(double %5)
  %i.x = fcmp ogt double %i.v, %i.w               ; 2 uses
  %spec.select = select i1 %i.x, i64 %.06878, i64 %.079
  %i.y = add nuw nsw i64 %.06878, 1               ; 2 uses
  %6 = select i1 %i.x, double %i.u, double %5     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19 ; 2 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = tail call double @llvm.fabs.f64(double %6)
  %i.ad = fcmp ogt double %i.ab, %i.ac            ; 2 uses
  %spec.select.1 = select i1 %i.ad, i64 %i.y, i64 %spec.select ; 2 uses
  %i.ae = add nuw nsw i64 %.06878, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ae, %1
  %7 = select i1 %i.ad, double %i.aa, double %6
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph91
  %.0.lcssa = phi i64 [ %.06689, %.lr.ph91 ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.06689
  store i64 %.0.lcssa, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0.lcssa
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00
  br i1 %i.ai, label %._crit_edge92, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %.0.lcssa, %.06689
  br i1 %.not, label %.loopexit77, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.b
  br i1 %i.d, label %.lr.ph81.epil.preheader, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.16980 = phi i64 [ %i.aw, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.0.lcssa ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.06689 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  store double %i.ao, ptr %i.al, align 8, !tbaa !19
  store double %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %.0.lcssa ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.06689 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !19
  store double %i.av, ptr %i.as, align 8, !tbaa !19
  store double %i.at, ptr %i.au, align 8, !tbaa !19
  %i.aw = add nuw nsw i64 %.16980, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit77.loopexit.unr-lcssa, label %.lr.ph81

.loopexit77.loopexit.unr-lcssa:                   ; preds = %.lr.ph81
  br i1 %lcmp.mod136.not, label %.loopexit77, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit77.loopexit.unr-lcssa, %.lr.ph81.preheader
  %.16980.epil.init = phi i64 [ 0, %.lr.ph81.preheader ], [ %i.aw, %.loopexit77.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980.epil.init
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.0.lcssa ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.06689 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !19
  store double %i.bc, ptr %i.az, align 8, !tbaa !19
  store double %i.ba, ptr %i.bb, align 8, !tbaa !19
  br label %.loopexit77

.loopexit77:                                      ; preds = %.lr.ph81.epil.preheader, %.loopexit77.loopexit.unr-lcssa, %bb.b
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.06689
  %i.be = load double, ptr %i.bd, align 8, !tbaa !19
  %i.bf = fdiv double 1.000000e+00, %i.be         ; 2 uses
  br i1 %i.j, label %.lr.ph84.preheader, label %.loopexit75

.lr.ph84.preheader:                               ; preds = %.loopexit77
  %i.bg = xor i64 %.06689, -1
  %i.bh = add i64 %1, %i.bg                       ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check121, label %.lr.ph84.preheader134, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph84.preheader
  %n.vec123 = and i64 %i.bh, -4                   ; 3 uses
  %i.bi = add i64 %i.i, %n.vec123
  %broadcast.splatinsert124 = insertelement <2 x double> poison, double %i.bf, i64 0
  %broadcast.splat125 = shufflevector <2 x double> %broadcast.splatinsert124, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph122
  %index127 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body126 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index127 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load128 = load <2 x double>, ptr %i.bk, align 8, !tbaa !19
  %wide.load129 = load <2 x double>, ptr %i.bl, align 8, !tbaa !19
  %i.bm = fmul <2 x double> %broadcast.splat125, %wide.load128
  %i.bn = fmul <2 x double> %broadcast.splat125, %wide.load129
  store <2 x double> %i.bm, ptr %i.bk, align 8, !tbaa !19
  store <2 x double> %i.bn, ptr %i.bl, align 8, !tbaa !19
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.bo, label %middle.block131, label %vector.body126, !llvm.loop !33

middle.block131:                                  ; preds = %vector.body126
  %cmp.n132 = icmp eq i64 %i.bh, %n.vec123
  br i1 %cmp.n132, label %.preheader74, label %.lr.ph84.preheader134

.lr.ph84.preheader134:                            ; preds = %.lr.ph84.preheader, %middle.block131
  %.282.ph = phi i64 [ %i.i, %.lr.ph84.preheader ], [ %i.bi, %middle.block131 ]
  br label %.lr.ph84

.preheader74:                                     ; preds = %.lr.ph84, %middle.block131
  %.not112 = icmp slt i64 %i.i, %2
  br i1 %.not112, label %.lr.ph88.split.us.preheader, label %.loopexit75

.lr.ph88.split.us.preheader:                      ; preds = %.preheader74
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.b
  %scevgep116 = getelementptr i8, ptr %i.h, i64 %i.f
  %i.bp = xor i64 %.06689, -1
  %i.bq = add i64 %1, %i.bp                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.bq, 4
  %n.vec = and i64 %i.bq, -4                      ; 3 uses
  %i.br = add i64 %i.i, %n.vec
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br label %.lr.ph88.split.us

.lr.ph88.split.us:                                ; preds = %.lr.ph88.split.us.preheader, %..loopexit_crit_edge.us
  %.06787.us = phi i64 [ %i.cj, %..loopexit_crit_edge.us ], [ %i.i, %.lr.ph88.split.us.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06787.us
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17 ; 7 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.06689
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.bw = fcmp une double %i.bv, 0.000000e+00
  br i1 %i.bw, label %.preheader.us, label %..loopexit_crit_edge.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.385.us = phi i64 [ %i.ci, %scalar.ph ], [ %.385.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.385.us
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.385.us ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !19
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.by, double %i.ca)
  store double %i.cb, ptr %i.bz, align 8, !tbaa !19
  %i.cc = add nuw nsw i64 %.385.us, 1             ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !19
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ce, double %i.cg)
  store double %i.ch, ptr %i.cf, align 8, !tbaa !19
  %i.ci = add nuw nsw i64 %.385.us, 2             ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %i.ci, %1
  br i1 %exitcond101.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !34

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us
  %i.cj = add nuw nsw i64 %.06787.us, 1           ; 2 uses
  %exitcond102.not = icmp eq i64 %i.cj, %2
  br i1 %exitcond102.not, label %.loopexit75, label %.lr.ph88.split.us

.preheader.us:                                    ; preds = %.lr.ph88.split.us
  %i.ck = fneg double %i.bv                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %i.cl = getelementptr i8, ptr %i.bt, i64 %i.f
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.b
  %bound0 = icmp ult ptr %i.cl, %scevgep
  %bound1 = icmp ult ptr %scevgep116, %i.cm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = add nuw i64 %i.i, %index                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <2 x double>, ptr %i.co, align 8, !tbaa !19, !alias.scope !40
  %wide.load117 = load <2 x double>, ptr %i.cp, align 8, !tbaa !19, !alias.scope !40
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cn ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load118 = load <2 x double>, ptr %i.cq, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  %wide.load119 = load <2 x double>, ptr %i.cr, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load118)
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load117, <2 x double> %wide.load119)
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  store <2 x double> %i.ct, ptr %i.cr, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.385.us.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %.preheader.us ], [ %i.br, %middle.block ] ; 6 uses
  %i.cv = sub i64 %1, %.385.us.ph
  %.neg = add i64 %.385.us.ph, 1
  %xtraiter138 = and i64 %i.cv, 1
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.385.us.ph
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.385.us.ph ; 2 uses
end_hunk_0
