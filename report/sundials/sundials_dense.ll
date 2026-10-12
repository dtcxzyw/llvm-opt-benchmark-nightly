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
  %xtraiter30 = and i64 %i.f, 1
  %i.j = icmp eq i64 %i.f, 1
  %unroll_iter = and i64 %i.f, 9223372036854775806
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  %lcmp.mod32 = trunc i64 %i.f to i1
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
  %2 = sub i64 %.06689.i, %i.d
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load double, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = tail call double @llvm.fabs.f64(double %.pre.i)
  %i.u = fcmp ogt double %i.s, %i.t               ; 2 uses
  %spec.select.i.prol = select i1 %i.u, i64 %i.o, i64 %.06689.i ; 2 uses
  %i.v = add nuw nsw i64 %.06689.i, 2
  %i.w = select i1 %i.u, double %i.r, double %.pre.i
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.unr = phi double [ %.pre.i, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %.079.i.unr = phi i64 [ %.06689.i, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.06878.i.unr = phi i64 [ %i.o, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = icmp eq i64 %i.i, %.06689.i
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.y = phi double [ %i.am, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.079.i = phi i64 [ %spec.select.i.1, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ]
  %.06878.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.06878.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.06878.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19 ; 2 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = tail call double @llvm.fabs.f64(double %i.y)
  %i.ad = fcmp ogt double %i.ab, %i.ac            ; 2 uses
  %spec.select.i = select i1 %i.ad, i64 %.06878.i, i64 %.079.i
  %i.ae = add nuw nsw i64 %.06878.i, 1            ; 2 uses
  %i.af = select i1 %i.ad, double %i.aa, double %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %i.aj = tail call double @llvm.fabs.f64(double %i.af)
  %i.ak = fcmp ogt double %i.ai, %i.aj            ; 2 uses
  %spec.select.i.1 = select i1 %i.ak, i64 %i.ae, i64 %spec.select.i ; 2 uses
  %i.al = add nuw nsw i64 %.06878.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.al, %i.d
  %i.am = select i1 %i.ak, double %i.ah, double %i.af
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph91.i
  %.0.lcssa.i = phi i64 [ %.06689.i, %.lr.ph91.i ], [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i ] ; 6 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06689.i
  store i64 %.0.lcssa.i, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !19
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %SUNDlsMat_denseGETRF.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i64 %.0.lcssa.i, %.06689.i
  br i1 %.not.i, label %.loopexit77.i, label %.lr.ph81.i.preheader

.lr.ph81.i.preheader:                             ; preds = %bb.b
  br i1 %i.j, label %.lr.ph81.i.epil.preheader, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.preheader, %.lr.ph81.i
  %.16980.i = phi i64 [ %i.be, %.lr.ph81.i ], [ 0, %.lr.ph81.i.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph81.i ], [ 0, %.lr.ph81.i.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16980.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.0.lcssa.i ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.06689.i ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  store double %i.aw, ptr %i.at, align 8, !tbaa !19
  store double %i.au, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16980.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %.0.lcssa.i ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.06689.i ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !19
  store double %i.bd, ptr %i.ba, align 8, !tbaa !19
  store double %i.bb, ptr %i.bc, align 8, !tbaa !19
  %i.be = add nuw nsw i64 %.16980.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit77.i.loopexit.unr-lcssa, label %.lr.ph81.i

.loopexit77.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph81.i
  br i1 %lcmp.mod31.not, label %.loopexit77.i, label %.lr.ph81.i.epil.preheader

.lr.ph81.i.epil.preheader:                        ; preds = %.loopexit77.i.loopexit.unr-lcssa, %.lr.ph81.i.preheader
  %.16980.i.epil.init = phi i64 [ 0, %.lr.ph81.i.preheader ], [ %i.be, %.loopexit77.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16980.i.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.0.lcssa.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.06689.i ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !19
  store double %i.bk, ptr %i.bh, align 8, !tbaa !19
  store double %i.bi, ptr %i.bj, align 8, !tbaa !19
  br label %.loopexit77.i

.loopexit77.i:                                    ; preds = %.lr.ph81.i.epil.preheader, %.loopexit77.i.loopexit.unr-lcssa, %bb.b
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.06689.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !19
  %i.bn = fdiv double 1.000000e+00, %i.bm         ; 2 uses
  br i1 %i.p, label %.lr.ph84.i.preheader, label %.loopexit75.i

.lr.ph84.i.preheader:                             ; preds = %.loopexit77.i
  %3 = xor i64 %.06689.i, -1
  %4 = add i64 %i.d, %3                           ; 3 uses
  %min.iters.check16 = icmp ult i64 %4, 4
  br i1 %min.iters.check16, label %.lr.ph84.i.preheader29, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph84.i.preheader
  %n.vec18 = and i64 %4, -4                       ; 3 uses
  %i.bo = add i64 %i.o, %n.vec18
  %broadcast.splatinsert19 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat20 = shufflevector <2 x double> %broadcast.splatinsert19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph17
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body21 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index22 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load23 = load <2 x double>, ptr %i.bq, align 8, !tbaa !19
  %wide.load24 = load <2 x double>, ptr %i.br, align 8, !tbaa !19
  %i.bs = fmul <2 x double> %broadcast.splat20, %wide.load23
  %i.bt = fmul <2 x double> %broadcast.splat20, %wide.load24
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !19
  store <2 x double> %i.bt, ptr %i.br, align 8, !tbaa !19
  %index.next25 = add nuw i64 %index22, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.bu, label %middle.block26, label %vector.body21, !llvm.loop !24

middle.block26:                                   ; preds = %vector.body21
  %cmp.n27 = icmp eq i64 %4, %n.vec18
  br i1 %cmp.n27, label %.preheader74.i, label %.lr.ph84.i.preheader29

.lr.ph84.i.preheader29:                           ; preds = %.lr.ph84.i.preheader, %middle.block26
  %.282.i.ph = phi i64 [ %i.o, %.lr.ph84.i.preheader ], [ %i.bo, %middle.block26 ]
  br label %.lr.ph84.i

.preheader74.i:                                   ; preds = %.lr.ph84.i, %middle.block26
  %.not112.i = icmp slt i64 %i.o, %i.f
  br i1 %.not112.i, label %.lr.ph88.split.us.i.preheader, label %.loopexit75.i

.lr.ph88.split.us.i.preheader:                    ; preds = %.preheader74.i
  %scevgep10 = getelementptr i8, ptr %i.n, i64 %i.l
  %scevgep11 = getelementptr i8, ptr %i.n, i64 %i.h
  %5 = xor i64 %.06689.i, -1
  %6 = add i64 %i.d, %5                           ; 3 uses
  %min.iters.check = icmp ult i64 %6, 4
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.bv = add i64 %i.o, %n.vec
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.lr.ph88.split.us.i

.lr.ph88.split.us.i:                              ; preds = %.lr.ph88.split.us.i.preheader, %..loopexit_crit_edge.us.i
  %.06787.us.i = phi i64 [ %i.cn, %..loopexit_crit_edge.us.i ], [ %i.o, %.lr.ph88.split.us.i.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06787.us.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !17 ; 7 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.06689.i
  %i.bz = load double, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = fcmp une double %i.bz, 0.000000e+00
  br i1 %i.ca, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.385.us.i = phi i64 [ %i.cm, %scalar.ph ], [ %.385.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.385.us.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.385.us.i ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cc, double %i.ce)
  store double %i.cf, ptr %i.cd, align 8, !tbaa !19
  %i.cg = add nuw nsw i64 %.385.us.i, 1           ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cg ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !19
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.co, double %i.ci, double %i.ck)
  store double %i.cl, ptr %i.cj, align 8, !tbaa !19
  %i.cm = add nuw nsw i64 %.385.us.i, 2           ; 2 uses
  %exitcond101.not.i.1 = icmp eq i64 %i.cm, %i.d
  br i1 %exitcond101.not.i.1, label %..loopexit_crit_edge.us.i, label %scalar.ph, !llvm.loop !25

..loopexit_crit_edge.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us.i
  %i.cn = add nuw nsw i64 %.06787.us.i, 1         ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.cn, %i.f
  br i1 %exitcond102.not.i, label %.loopexit75.i, label %.lr.ph88.split.us.i

.preheader.us.i:                                  ; preds = %.lr.ph88.split.us.i
  %i.co = fneg double %i.bz                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.i
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.l
  %scevgep9 = getelementptr i8, ptr %i.bx, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep10, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = add nuw i64 %i.o, %index                ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load = load <2 x double>, ptr %i.cq, align 8, !tbaa !19, !alias.scope !31
  %wide.load12 = load <2 x double>, ptr %i.cr, align 8, !tbaa !19, !alias.scope !31
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cp ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.cs, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  %wide.load14 = load <2 x double>, ptr %i.ct, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load13)
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load12, <2 x double> %wide.load14)
  store <2 x double> %i.cu, ptr %i.cs, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  store <2 x double> %i.cv, ptr %i.ct, align 8, !tbaa !19, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i, %middle.block
  %.385.us.i.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %.preheader.us.i ], [ %i.bv, %middle.block ] ; 6 uses
  %i.cx = sub i64 %i.d, %.385.us.i.ph
  %.neg = add i64 %.385.us.i.ph, 1
  %xtraiter33 = and i64 %i.cx, 1
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.385.us.i.ph
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.385.us.i.ph ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !19
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cz, double %i.db)
  store double %i.dc, ptr %i.da, align 8, !tbaa !19
  %i.dd = add nuw nsw i64 %.385.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.385.us.i.unr = phi i64 [ %.385.us.i.ph, %scalar.ph.preheader ], [ %i.dd, %scalar.ph.prol ]
  %i.de = icmp eq i64 %i.d, %.neg
  br i1 %i.de, label %..loopexit_crit_edge.us.i, label %scalar.ph

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader29, %.lr.ph84.i
  %.282.i = phi i64 [ %i.di, %.lr.ph84.i ], [ %.282.i.ph, %.lr.ph84.i.preheader29 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.282.i ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !19
  %i.dh = fmul double %i.bn, %i.dg
  store double %i.dh, ptr %i.df, align 8, !tbaa !19
  %i.di = add nuw nsw i64 %.282.i, 1              ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.di, %i.d
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
  %xtraiter134 = and i64 %2, 1
  %i.d = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, 9223372036854775806
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  %lcmp.mod136 = trunc i64 %2 to i1
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
  %4 = sub i64 %.06689, %1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = tail call double @llvm.fabs.f64(double %.pre)
  %i.o = fcmp ogt double %i.m, %i.n               ; 2 uses
  %spec.select.prol = select i1 %i.o, i64 %i.i, i64 %.06689 ; 2 uses
  %i.p = add nuw nsw i64 %.06689, 2
  %i.q = select i1 %i.o, double %i.l, double %.pre
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.unr = phi double [ %.pre, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.079.unr = phi i64 [ %.06689, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.06878.unr = phi i64 [ %i.i, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.r = icmp eq i64 %i.c, %.06689
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.s = phi double [ %i.ag, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.079 = phi i64 [ %spec.select.1, %.lr.ph ], [ %.079.unr, %.lr.ph.prol.loopexit ]
  %.06878 = phi i64 [ %i.af, %.lr.ph ], [ %.06878.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.06878
  %i.u = load double, ptr %i.t, align 8, !tbaa !19 ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = tail call double @llvm.fabs.f64(double %i.s)
  %i.x = fcmp ogt double %i.v, %i.w               ; 2 uses
  %spec.select = select i1 %i.x, i64 %.06878, i64 %.079
  %i.y = add nuw nsw i64 %.06878, 1               ; 2 uses
  %i.z = select i1 %i.x, double %i.u, double %i.s ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = tail call double @llvm.fabs.f64(double %i.z)
  %i.ae = fcmp ogt double %i.ac, %i.ad            ; 2 uses
  %spec.select.1 = select i1 %i.ae, i64 %i.y, i64 %spec.select ; 2 uses
  %i.af = add nuw nsw i64 %.06878, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.af, %1
  %i.ag = select i1 %i.ae, double %i.ab, double %i.z
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph91
  %.0.lcssa = phi i64 [ %.06689, %.lr.ph91 ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.06689
  store i64 %.0.lcssa, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0.lcssa
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %i.ak = fcmp oeq double %i.aj, 0.000000e+00
  br i1 %i.ak, label %._crit_edge92, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %.0.lcssa, %.06689
  br i1 %.not, label %.loopexit77, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.b
  br i1 %i.d, label %.lr.ph81.epil.preheader, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.16980 = phi i64 [ %i.ay, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.0.lcssa ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.06689 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19
  store double %i.aq, ptr %i.an, align 8, !tbaa !19
  store double %i.ao, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.0.lcssa ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.06689 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !19
  store double %i.ax, ptr %i.au, align 8, !tbaa !19
  store double %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ay = add nuw nsw i64 %.16980, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit77.loopexit.unr-lcssa, label %.lr.ph81

.loopexit77.loopexit.unr-lcssa:                   ; preds = %.lr.ph81
  br i1 %lcmp.mod135.not, label %.loopexit77, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit77.loopexit.unr-lcssa, %.lr.ph81.preheader
  %.16980.epil.init = phi i64 [ 0, %.lr.ph81.preheader ], [ %i.ay, %.loopexit77.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.0.lcssa ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.06689 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !19
  store double %i.be, ptr %i.bb, align 8, !tbaa !19
  store double %i.bc, ptr %i.bd, align 8, !tbaa !19
  br label %.loopexit77

.loopexit77:                                      ; preds = %.lr.ph81.epil.preheader, %.loopexit77.loopexit.unr-lcssa, %bb.b
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.06689
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = fdiv double 1.000000e+00, %i.bg         ; 2 uses
  br i1 %i.j, label %.lr.ph84.preheader, label %.loopexit75

.lr.ph84.preheader:                               ; preds = %.loopexit77
  %5 = xor i64 %.06689, -1
  %6 = add i64 %1, %5                             ; 3 uses
  %min.iters.check120 = icmp ult i64 %6, 4
  br i1 %min.iters.check120, label %.lr.ph84.preheader133, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph84.preheader
  %n.vec122 = and i64 %6, -4                      ; 3 uses
  %i.bi = add i64 %i.i, %n.vec122
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index126 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load127 = load <2 x double>, ptr %i.bk, align 8, !tbaa !19
  %wide.load128 = load <2 x double>, ptr %i.bl, align 8, !tbaa !19
  %i.bm = fmul <2 x double> %broadcast.splat124, %wide.load127
  %i.bn = fmul <2 x double> %broadcast.splat124, %wide.load128
  store <2 x double> %i.bm, ptr %i.bk, align 8, !tbaa !19
  store <2 x double> %i.bn, ptr %i.bl, align 8, !tbaa !19
  %index.next129 = add nuw i64 %index126, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.bo, label %middle.block130, label %vector.body125, !llvm.loop !33

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %6, %n.vec122
  br i1 %cmp.n131, label %.preheader74, label %.lr.ph84.preheader133

.lr.ph84.preheader133:                            ; preds = %.lr.ph84.preheader, %middle.block130
  %.282.ph = phi i64 [ %i.i, %.lr.ph84.preheader ], [ %i.bi, %middle.block130 ]
  br label %.lr.ph84

.preheader74:                                     ; preds = %.lr.ph84, %middle.block130
  %.not112 = icmp slt i64 %i.i, %2
  br i1 %.not112, label %.lr.ph88.split.us.preheader, label %.loopexit75

.lr.ph88.split.us.preheader:                      ; preds = %.preheader74
  %scevgep114 = getelementptr i8, ptr %i.h, i64 %i.f
  %scevgep115 = getelementptr i8, ptr %i.h, i64 %i.b
  %7 = xor i64 %.06689, -1
  %8 = add i64 %1, %7                             ; 3 uses
  %min.iters.check = icmp ult i64 %8, 4
  %n.vec = and i64 %8, -4                         ; 3 uses
  %i.bp = add i64 %i.i, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  br label %.lr.ph88.split.us

.lr.ph88.split.us:                                ; preds = %.lr.ph88.split.us.preheader, %..loopexit_crit_edge.us
  %.06787.us = phi i64 [ %i.ch, %..loopexit_crit_edge.us ], [ %i.i, %.lr.ph88.split.us.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06787.us
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 7 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.06689
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !19 ; 2 uses
  %i.bu = fcmp une double %i.bt, 0.000000e+00
  br i1 %i.bu, label %.preheader.us, label %..loopexit_crit_edge.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.385.us = phi i64 [ %i.cg, %scalar.ph ], [ %.385.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.385.us
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.385.us ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.bw, double %i.by)
  store double %i.bz, ptr %i.bx, align 8, !tbaa !19
  %i.ca = add nuw nsw i64 %.385.us, 1             ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ca ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cc, double %i.ce)
  store double %i.cf, ptr %i.cd, align 8, !tbaa !19
  %i.cg = add nuw nsw i64 %.385.us, 2             ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %i.cg, %1
  br i1 %exitcond101.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !34

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us
  %i.ch = add nuw nsw i64 %.06787.us, 1           ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ch, %2
  br i1 %exitcond102.not, label %.loopexit75, label %.lr.ph88.split.us

.preheader.us:                                    ; preds = %.lr.ph88.split.us
  %i.ci = fneg double %i.bt                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.f
  %scevgep113 = getelementptr i8, ptr %i.br, i64 %i.b
  %bound0 = icmp ult ptr %scevgep, %scevgep115
  %bound1 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = add nuw i64 %i.i, %index                ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <2 x double>, ptr %i.ck, align 8, !tbaa !19, !alias.scope !40
  %wide.load116 = load <2 x double>, ptr %i.cl, align 8, !tbaa !19, !alias.scope !40
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cj ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.cm, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  %wide.load118 = load <2 x double>, ptr %i.cn, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load117)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load116, <2 x double> %wide.load118)
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !19, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.385.us.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %.preheader.us ], [ %i.bp, %middle.block ] ; 6 uses
  %i.cr = sub i64 %1, %.385.us.ph
  %.neg = add i64 %.385.us.ph, 1
  %xtraiter137 = and i64 %i.cr, 1
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.385.us.ph
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.385.us.ph ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !19
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ct, double %i.cv)
  store double %i.cw, ptr %i.cu, align 8, !tbaa !19
  %i.cx = add nuw nsw i64 %.385.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.385.us.unr = phi i64 [ %.385.us.ph, %scalar.ph.preheader ], [ %i.cx, %scalar.ph.prol ]
  %i.cy = icmp eq i64 %1, %.neg
  br i1 %i.cy, label %..loopexit_crit_edge.us, label %scalar.ph

.lr.ph84:                                         ; preds = %.lr.ph84.preheader133, %.lr.ph84
  %.282 = phi i64 [ %i.dc, %.lr.ph84 ], [ %.282.ph, %.lr.ph84.preheader133 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.282 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !19
  %i.db = fmul double %i.bh, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !19
  %i.dc = add nuw nsw i64 %.282, 1                ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dc, %1
  br i1 %exitcond100.not, label %.preheader74, label %.lr.ph84, !llvm.loop !39

._crit_edge92:                                    ; preds = %._crit_edge, %.loopexit75, %bb.a
  %.070 = phi i64 [ 0, %bb.a ], [ 0, %.loopexit75 ], [ %i.i, %._crit_edge ]
  ret i64 %.070
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_DenseGETRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 12 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %SUNDlsMat_denseGETRS.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775806
  br label %.lr.ph.i

.preheader55.i.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader55.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader55.i.unr-lcssa, %.lr.ph.i.preheader
  %.056.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ab, %.preheader55.i.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.056.i.epil.init
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i.epil = icmp eq i64 %i.h, %.056.i.epil.init
  br i1 %.not.i.epil, label %.preheader55.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i.epil.init ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !19
  store double %i.l, ptr %i.i, align 8, !tbaa !19
  store double %i.j, ptr %i.k, align 8, !tbaa !19
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph.i.epil.preheader, %bb.b, %.preheader55.i.unr-lcssa
  %i.m = add nsw i64 %i.d, -1                     ; 3 uses
  %.not71.i = icmp eq i64 %i.d, 1
  br i1 %.not71.i, label %SUNDlsMat_denseGETRS.exit, label %.lr.ph58.i.preheader

.lr.ph58.i.preheader:                             ; preds = %.preheader55.i
  %i.n = shl i64 %i.d, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %2, i64 %i.n
  br label %.lr.ph58.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i.preheader.new
  %.056.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.056.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq i64 %i.p, %.056.i
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !19
  store double %i.t, ptr %i.q, align 8, !tbaa !19
  store double %i.r, ptr %i.s, align 8, !tbaa !19
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %i.u = or disjoint i64 %.056.i, 1               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not.i.1 = icmp eq i64 %i.w, %i.u
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19
  store double %i.aa, ptr %i.x, align 8, !tbaa !19
  store double %i.y, ptr %i.z, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %i.ab = add nuw nsw i64 %.056.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_0
begin_hunk_1_@SUNDlsMat_denseGETRS:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i64 %i.ab, %index               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !19, !alias.scope !72
  %wide.load75 = load <2 x double>, ptr %i.aj, align 8, !tbaa !19, !alias.scope !72
  %i.ak = load double, ptr %i.ac, align 8, !tbaa !19, !alias.scope !73
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.al, align 8, !tbaa !19, !alias.scope !74, !noalias !72
  %wide.load77 = load <2 x double>, ptr %i.am, align 8, !tbaa !19, !alias.scope !74, !noalias !72
  %i.an = fneg <2 x double> %wide.load
  %i.ao = fneg <2 x double> %wide.load75
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %broadcast.splat, <2 x double> %wide.load76)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %broadcast.splat, <2 x double> %wide.load77)
  store <2 x double> %i.ap, ptr %i.al, align 8, !tbaa !19, !alias.scope !74, !noalias !72
  store <2 x double> %i.aq, ptr %i.am, align 8, !tbaa !19, !alias.scope !74, !noalias !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph58, %middle.block
  %.05057.ph = phi i64 [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph58 ], [ %i.ag, %middle.block ] ; 6 uses
  %i.as = sub i64 %1, %.05057.ph
  %.neg = add i64 %.05057.ph, 1
  %xtraiter100 = and i64 %i.as, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.05057.ph
  %i.au = load double, ptr %i.at, align 8, !tbaa !19
  %i.av = load double, ptr %i.ac, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057.ph ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !19
  %i.ay = fneg double %i.au
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.av, double %i.ax)
  store double %i.az, ptr %i.aw, align 8, !tbaa !19
  %i.ba = add nuw nsw i64 %.05057.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05057.unr = phi i64 [ %.05057.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = icmp eq i64 %1, %.neg
  br i1 %i.bb, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05057 = phi i64 [ %i.br, %scalar.ph ], [ %.05057.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.05057
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !19
  %i.be = load double, ptr %i.ac, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = fneg double %i.bd
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.be, double %i.bg)
  store double %i.bi, ptr %i.bf, align 8, !tbaa !19
  %i.bj = add nuw nsw i64 %.05057, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bm = load double, ptr %i.ac, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !19
  %i.bp = fneg double %i.bl
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bm, double %i.bo)
  store double %i.bq, ptr %i.bn, align 8, !tbaa !19
  %i.br = add nuw nsw i64 %.05057, 2              ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.br, %1
  br i1 %exitcond64.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !65

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit98
  %indvar = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvar.next, %.loopexit98 ] ; 2 uses
  %.262 = phi i64 [ %i.i, %.lr.ph63.preheader ], [ %i.dj, %.loopexit98 ] ; 10 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.262
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17 ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.262 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.262 ; 7 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !19
  %i.by = fdiv double %i.bx, %i.bv
  store double %i.by, ptr %i.bw, align 8, !tbaa !19
  %min.iters.check83 = icmp ult i64 %.262, 4
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph63
  %bound079 = icmp ult ptr %3, %i.bu
  %bound180 = icmp ult ptr %i.bt, %i.bw
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck78
  %n.vec85 = and i64 %.262, -4                    ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body86 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index87 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load88 = load <2 x double>, ptr %i.bz, align 8, !tbaa !19, !alias.scope !75
  %wide.load89 = load <2 x double>, ptr %i.ca, align 8, !tbaa !19, !alias.scope !75
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !19, !alias.scope !76
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index87 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %wide.load90 = load <2 x double>, ptr %i.cc, align 8, !tbaa !19, !alias.scope !77, !noalias !75
  %wide.load91 = load <2 x double>, ptr %i.cd, align 8, !tbaa !19, !alias.scope !77, !noalias !75
  %i.ce = fneg <2 x double> %wide.load88
  %i.cf = fneg <2 x double> %wide.load89
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat93, <2 x double> %wide.load90)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %broadcast.splat93, <2 x double> %wide.load91)
  store <2 x double> %i.cg, ptr %i.cc, align 8, !tbaa !19, !alias.scope !77, !noalias !75
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !19, !alias.scope !77, !noalias !75
  %index.next94 = add nuw i64 %index87, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.ci, label %middle.block95, label %vector.body86, !llvm.loop !70

middle.block95:                                   ; preds = %vector.body86
  %cmp.n96 = icmp eq i64 %.262, %n.vec85
  br i1 %cmp.n96, label %.loopexit98, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck78, %.lr.ph63, %middle.block95
  %.15161.ph = phi i64 [ 0, %vector.memcheck78 ], [ 0, %.lr.ph63 ], [ %n.vec85, %middle.block95 ] ; 5 uses
  %i.cj = add i64 %indvar, %.15161.ph
  %xtraiter102 = and i64 %.262, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.15161.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !19
  %i.cm = load double, ptr %i.bw, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161.ph ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !19
  %i.cp = fneg double %i.cl
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cm, double %i.co)
  store double %i.cq, ptr %i.cn, align 8, !tbaa !19
  %i.cr = or disjoint i64 %.15161.ph, 1
  br label %scalar.ph82.prol.loopexit

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.15161.unr = phi i64 [ %.15161.ph, %scalar.ph82.preheader ], [ %i.cr, %scalar.ph82.prol ]
  %i.cs = icmp eq i64 %i.y, %i.cj
  br i1 %i.cs, label %.loopexit98, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.15161 = phi i64 [ %i.di, %scalar.ph82 ], [ %.15161.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.15161
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !19
  %i.cv = load double, ptr %i.bw, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !19
  %i.cy = fneg double %i.cu
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cv, double %i.cx)
  store double %i.cz, ptr %i.cw, align 8, !tbaa !19
  %i.da = add nuw nsw i64 %.15161, 1              ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !19
  %i.dd = load double, ptr %i.bw, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !19
  %i.dg = fneg double %i.dc
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dd, double %i.df)
  store double %i.dh, ptr %i.de, align 8, !tbaa !19
  %i.di = add nuw nsw i64 %.15161, 2              ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.di, %.262
  br i1 %exitcond66.not.1, label %.loopexit98, label %scalar.ph82, !llvm.loop !71

.loopexit98:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block95
  %i.dj = add nsw i64 %.262, -1
  %i.dk = icmp sgt i64 %.262, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph63, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit98, %bb.a, %.preheader55
  %i.dl = load ptr, ptr %0, align 8, !tbaa !17
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !19
  %i.dn = load double, ptr %3, align 8, !tbaa !19
  %i.do = fdiv double %i.dn, %i.dm
  store double %i.do, ptr %3, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_DensePOTRF(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 5 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph47.i, label %SUNDlsMat_densePOTRF.exit

.lr.ph47.i:                                       ; preds = %bb.a, %._crit_edge.i
  %.03445.i = phi i64 [ %i.az, %._crit_edge.i ], [ 0, %bb.a ] ; 17 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.03445.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 4 uses
  %.not.not.i = icmp eq i64 %.03445.i, 0
  br i1 %.not.not.i, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph47.i
  %xtraiter = and i64 %.03445.i, 1
  %i.h = icmp eq i64 %.03445.i, 1
  %unroll_iter = and i64 %.03445.i, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod10 = trunc i64 %.03445.i to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.03543.i = phi i64 [ %i.ak, %bb.b ], [ %.03445.i, %.preheader.i.preheader ] ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03543.i ; 4 uses
  %.promoted.i = load double, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.042.i = phi i64 [ %i.ab, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %i.j = phi double [ %i.aa, %.preheader.i.new ], [ %.promoted.i, %.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.042.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03543.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03445.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !19
  %i.q = fneg double %i.n
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.p, double %i.j) ; 2 uses
  store double %i.r, ptr %i.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.042.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03543.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03445.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !19
  %i.z = fneg double %i.w
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.y, double %i.r) ; 3 uses
  store double %i.aa, ptr %i.i, align 8, !tbaa !19
  %i.ab = add nuw nsw i64 %.042.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i.new

.unr-lcssa:                                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i
  %.042.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.ab, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted.i, %.preheader.i ], [ %i.aa, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.042.i.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.03543.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.03445.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = fneg double %i.af
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ah, double %.epil.init)
  store double %i.aj, ptr %i.i, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ak = add nuw nsw i64 %.03543.i, 1            ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.ak, %i.d
  br i1 %exitcond49.not.i, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %bb.b, %.lr.ph47.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03445.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.an = fcmp ugt double %i.am, 0.000000e+00
  br i1 %i.an, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  %i.ao = add nuw nsw i64 %.03445.i, 1
  br label %SUNDlsMat_densePOTRF.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.ap = tail call double @sqrt(double noundef %i.am) #6 ; 2 uses
  %1 = sub nsw i64 %i.d, %.03445.i                ; 3 uses
  %min.iters.check = icmp ult i64 %1, 2
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %1, -2                         ; 3 uses
  %i.aq = add i64 %.03445.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03445.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !19
  %i.at = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.at, ptr %i.as, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.144.i.ph = phi i64 [ %.03445.i, %.lr.ph.preheader.i ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.144.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.144.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.144.i ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  %i.ax = fdiv double %i.aw, %i.ap
  store double %i.ax, ptr %i.av, align 8, !tbaa !19
  %i.ay = add nuw nsw i64 %.144.i, 1              ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.ay, %i.d
  br i1 %exitcond50.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.az = add nuw nsw i64 %.03445.i, 1            ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond51.not.i, label %SUNDlsMat_densePOTRF.exit, label %.lr.ph47.i

SUNDlsMat_densePOTRF.exit:                        ; preds = %._crit_edge.i, %bb.a, %bb.c
  %.036.i = phi i64 [ %i.ao, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  ret i64 %.036.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_densePOTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph47, label %.loopexit40

.lr.ph47:                                         ; preds = %bb.a, %._crit_edge
  %.03445 = phi i64 [ %i.av, %._crit_edge ], [ 0, %bb.a ] ; 17 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03445
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %.not.not = icmp eq i64 %.03445, 0
  br i1 %.not.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph47
  %xtraiter = and i64 %.03445, 1
  %i.d = icmp eq i64 %.03445, 1
  %unroll_iter = and i64 %.03445, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod59 = trunc i64 %.03445 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %.03543 = phi i64 [ %i.ag, %bb.b ], [ %.03445, %.preheader.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03543 ; 4 uses
  %.promoted = load double, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.042 = phi i64 [ %i.x, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.f = phi double [ %i.w, %.preheader.new ], [ %.promoted, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.03543
  %i.j = load double, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.03445
  %i.l = load double, ptr %i.k, align 8, !tbaa !19
  %i.m = fneg double %i.j
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double %i.f) ; 2 uses
  store double %i.n, ptr %i.e, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03543
  %i.s = load double, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03445
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %i.v = fneg double %i.s
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.u, double %i.n) ; 3 uses
  store double %i.w, ptr %i.e, align 8, !tbaa !19
  %i.x = add nuw nsw i64 %.042, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.042.epil.init = phi i64 [ 0, %.preheader ], [ %i.x, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.preheader ], [ %i.w, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.042.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03543
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03445
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !19
  %i.ae = fneg double %i.ab
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double %.epil.init)
  store double %i.af, ptr %i.e, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ag = add nuw nsw i64 %.03543, 1              ; 2 uses
  %exitcond49.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond49.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.b, %.lr.ph47
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03445
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ak = add nuw nsw i64 %.03445, 1
  br label %.loopexit40

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.al = tail call double @sqrt(double noundef %i.ai) #6 ; 2 uses
  %2 = sub nsw i64 %1, %.03445                    ; 3 uses
  %min.iters.check = icmp ult i64 %2, 2
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -2                         ; 3 uses
  %i.am = add i64 %.03445, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03445
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !19
  %i.ap = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ap, ptr %i.ao, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %.144.ph = phi i64 [ %.03445, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %.144 = phi i64 [ %i.au, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader57 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !19
  %i.at = fdiv double %i.as, %i.al
  store double %i.at, ptr %i.ar, align 8, !tbaa !19
  %i.au = add nuw nsw i64 %.144, 1                ; 2 uses
  %exitcond50.not = icmp eq i64 %i.au, %1
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.av = add nuw nsw i64 %.03445, 1              ; 2 uses
  %exitcond51.not = icmp eq i64 %i.av, %1
  br i1 %exitcond51.not, label %.loopexit40, label %.lr.ph47

.loopexit40:                                      ; preds = %._crit_edge, %bb.a, %bb.c
  %.036 = phi i64 [ %i.ak, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i64 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_DensePOTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 8 uses
  %i.e = add i64 %i.d, -1                         ; 5 uses
  %i.f = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i.preheader, label %._crit_edge.i

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %i.g = shl i64 %i.d, 3                          ; 2 uses
  %scevgep4 = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %exitcond64.not.i = icmp eq i64 %i.o, %i.e
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %.loopexit.i
  %.053.i = phi i64 [ %i.o, %.loopexit.i ], [ 0, %.lr.ph.preheader.i.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.053.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.053.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.053.i ; 6 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !19
  %i.n = fdiv double %i.m, %i.k
  store double %i.n, ptr %i.l, align 8, !tbaa !19
  %i.o = add nuw nsw i64 %.053.i, 1               ; 6 uses
  %i.p = sub i64 %i.e, %.053.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.q = shl i64 %.053.i, 3
  %i.r = add i64 %i.q, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.r
  %scevgep5 = getelementptr nuw i8, ptr %i.i, i64 %i.r
  %scevgep6 = getelementptr i8, ptr %i.i, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep6
  %bound1 = icmp ult ptr %scevgep5, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.s = add i64 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add nuw i64 %i.o, %index                 ; 2 uses
  %i.u = load double, ptr %i.l, align 8, !tbaa !19, !alias.scope !88
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !19, !alias.scope !89
  %wide.load7 = load <2 x double>, ptr %i.w, align 8, !tbaa !19, !alias.scope !89
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load8 = load <2 x double>, ptr %i.x, align 8, !tbaa !19, !alias.scope !90, !noalias !89
  %wide.load9 = load <2 x double>, ptr %i.y, align 8, !tbaa !19, !alias.scope !90, !noalias !89
  %.scalar = fneg double %i.u
  %i.z = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load, <2 x double> %wide.load8)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load7, <2 x double> %wide.load9)
  store <2 x double> %i.ab, ptr %i.x, align 8, !tbaa !19, !alias.scope !90, !noalias !89
  store <2 x double> %i.ac, ptr %i.y, align 8, !tbaa !19, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.04952.i.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader.i ], [ %i.s, %middle.block ] ; 6 uses
  %i.ae = sub i64 %i.d, %.04952.i.ph
  %.neg = add i64 %.04952.i.ph, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.af = load double, ptr %i.l, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04952.i.ph
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i.ph ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %i.ak = fneg double %i.af
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ah, double %i.aj)
  store double %i.al, ptr %i.ai, align 8, !tbaa !19
  %i.am = add nuw nsw i64 %.04952.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.04952.i.unr = phi i64 [ %.04952.i.ph, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.an = icmp eq i64 %i.d, %.neg
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04952.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.04952.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ao = load double, ptr %i.l, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04952.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !19
  %i.at = fneg double %i.ao
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aq, double %i.as)
  store double %i.au, ptr %i.ar, align 8, !tbaa !19
  %i.av = add nuw nsw i64 %.04952.i, 1            ; 2 uses
  %i.aw = load double, ptr %i.l, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !19
  %i.bb = fneg double %i.aw
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ay, double %i.ba)
  store double %i.bc, ptr %i.az, align 8, !tbaa !19
  %i.bd = add nuw nsw i64 %.04952.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bd, %i.d
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.a
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.e ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !19
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !19
  %i.bk = fdiv double %i.bj, %i.bh                ; 2 uses
  store double %i.bk, ptr %i.bi, align 8, !tbaa !19
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !19
  %i.bm = fdiv double %i.bk, %i.bl
  store double %i.bm, ptr %i.bi, align 8, !tbaa !19
  br i1 %i.f, label %.lr.ph62.preheader.i, label %SUNDlsMat_densePOTRS.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge.i
  %i.bn = add nsw i64 %i.d, -2
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge59.i.loopexit, %.lr.ph62.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge59.i.loopexit ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %.15060.i = phi i64 [ %i.cp, %._crit_edge59.i.loopexit ], [ %i.bn, %.lr.ph62.preheader.i ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.15060.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 4 uses
  %.155.i = add nuw nsw i64 %.15060.i, 1          ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.15060.i ; 5 uses
end_hunk_1
begin_hunk_2_@SUNDlsMat_densePOTRS:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -4                       ; 3 uses
  %i.o = add i64 %i.k, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add nuw i64 %i.k, %index                 ; 2 uses
  %i.q = load double, ptr %i.h, align 8, !tbaa !19, !alias.scope !97
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !19, !alias.scope !98
  %wide.load71 = load <2 x double>, ptr %i.s, align 8, !tbaa !19, !alias.scope !98
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.t, align 8, !tbaa !19, !alias.scope !99, !noalias !98
  %wide.load73 = load <2 x double>, ptr %i.u, align 8, !tbaa !19, !alias.scope !99, !noalias !98
  %.scalar = fneg double %i.q
  %i.v = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load, <2 x double> %wide.load72)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !19, !alias.scope !99, !noalias !98
  store <2 x double> %i.y, ptr %i.u, align 8, !tbaa !19, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04952.ph = phi i64 [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 6 uses
  %i.aa = sub i64 %1, %.04952.ph
  %.neg = add i64 %.04952.ph, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader74
  %i.ab = load double, ptr %i.h, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04952.ph
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952.ph ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !19
  %i.ag = fneg double %i.ab
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !19
  %i.ai = add nuw nsw i64 %.04952.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader74
  %.04952.unr = phi i64 [ %.04952.ph, %.lr.ph.preheader74 ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = icmp eq i64 %1, %.neg
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04952 = phi i64 [ %i.az, %.lr.ph ], [ %.04952.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ak = load double, ptr %i.h, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04952
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = fneg double %i.ak
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.am, double %i.ao)
  store double %i.aq, ptr %i.an, align 8, !tbaa !19
  %i.ar = add nuw nsw i64 %.04952, 1              ; 2 uses
  %i.as = load double, ptr %i.h, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.au, double %i.aw)
  store double %i.ay, ptr %i.av, align 8, !tbaa !19
  %i.az = add nuw nsw i64 %.04952, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.a ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19
  %i.bg = fdiv double %i.bf, %i.bd                ; 2 uses
  store double %i.bg, ptr %i.be, align 8, !tbaa !19
  %i.bh = load double, ptr %i.bc, align 8, !tbaa !19
  %i.bi = fdiv double %i.bg, %i.bh
  store double %i.bi, ptr %i.be, align 8, !tbaa !19
  br i1 %i.b, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %._crit_edge
  %i.bj = add nsw i64 %1, -2
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge59
  %indvar = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvar.next, %._crit_edge59 ] ; 3 uses
  %.15060 = phi i64 [ %i.bj, %.lr.ph62.preheader ], [ %i.co, %._crit_edge59 ] ; 8 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.15060
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17 ; 4 uses
  %.155 = add nuw nsw i64 %.15060, 1              ; 4 uses
  %i.bm = icmp slt i64 %.155, %1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060 ; 4 uses
  %.promoted = load double, ptr %i.bn, align 8, !tbaa !19 ; 3 uses
  br i1 %i.bm, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.bo = and i64 %indvar, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph58.prol, label %.lr.ph58.prol.loopexit

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.155
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.155
  %i.bs = load double, ptr %i.br, align 8, !tbaa !19
  %i.bt = fneg double %i.bq
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %.promoted) ; 3 uses
  store double %i.bu, ptr %i.bn, align 8, !tbaa !19
  %.1.prol = add nuw nsw i64 %.15060, 2
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph58.preheader ], [ %i.bu, %.lr.ph58.prol ]
  %.unr = phi double [ %.promoted, %.lr.ph58.preheader ], [ %i.bu, %.lr.ph58.prol ]
  %.156.unr = phi i64 [ %.155, %.lr.ph58.preheader ], [ %.1.prol, %.lr.ph58.prol ]
  %i.bv = icmp eq i64 %indvar, 0
  br i1 %i.bv, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %i.bw = phi double [ %i.ci, %.lr.ph58 ], [ %.unr, %.lr.ph58.prol.loopexit ]
  %.156 = phi i64 [ %.1.1, %.lr.ph58 ], [ %.156.unr, %.lr.ph58.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.156
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !19
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw) ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !19
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !19
  %i.ch = fneg double %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc) ; 3 uses
  store double %i.ci, ptr %i.bn, align 8, !tbaa !19
  %.1.1 = add nuw nsw i64 %.156, 2                ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %.1.1, %1
  br i1 %exitcond65.not.1, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.lr.ph62
  %i.cj = phi double [ %.promoted, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph58.prol.loopexit ], [ %i.ci, %.lr.ph58 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.15060
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060
  %i.cn = fdiv double %i.cj, %i.cl
  store double %i.cn, ptr %i.cm, align 8, !tbaa !19
  %i.co = add nsw i64 %.15060, -1
  %i.cp = icmp sgt i64 %.15060, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cp, label %.lr.ph62, label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge59, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_DenseGEQRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call i32 @SUNDlsMat_denseGEQRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %1, ptr noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_denseGEQRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %bb.a
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = add i64 %1, -1                           ; 4 uses
  %i.d = shl i64 %1, 3
  %i.e = add i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %.loopexit
  %indvars.iv = phi i64 [ %1, %.lr.ph130 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %.090128 = phi i64 [ 0, %.lr.ph130 ], [ %i.eu, %.loopexit ] ; 16 uses
  %i.f = sub i64 %i.c, %.090128                   ; 5 uses
  %i.g = sub i64 %1, %.090128
  %i.h = shl i64 %i.g, 3
  %scevgep151 = getelementptr i8, ptr %4, i64 %i.h
  %i.i = shl i64 %.090128, 3
  %i.j = sub i64 %i.i, %i.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.090128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.090128 ; 12 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !19 ; 5 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !19
  %i.p = sub nsw i64 %1, %.090128                 ; 2 uses
  %i.q = icmp slt i64 %i.p, 2                     ; 2 uses
  br i1 %i.q, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = sub i64 %i.e, %.090128
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.091101 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ] ; 6 uses
  %.092100 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.091101
  %i.t = load double, ptr %gep, align 8, !tbaa !19 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.091101
  store double %i.t, ptr %i.u, align 8, !tbaa !19
  %i.v = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %.092100)
  %i.w = add nuw nsw i64 %.091101, 1              ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.w
  %i.x = load double, ptr %gep.1, align 8, !tbaa !19 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  store double %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.v)
  %i.aa = add nuw nsw i64 %.091101, 2             ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aa
  %i.ab = load double, ptr %gep.2, align 8, !tbaa !19 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa
  store double %i.ab, ptr %i.ac, align 8, !tbaa !19
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.z)
  %i.ae = add nuw nsw i64 %.091101, 3             ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae
  %i.af = load double, ptr %gep.3, align 8, !tbaa !19 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae
  store double %i.af, ptr %i.ag, align 8, !tbaa !19
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ad) ; 3 uses
  %i.ai = add nuw nsw i64 %.091101, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.091101.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %.092100.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.091101.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.091101.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.092100.epil = phi double [ %i.al, %.lr.ph.epil ], [ %.092100.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.091101.epil
  %i.aj = load double, ptr %gep.epil, align 8, !tbaa !19 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.091101.epil
  store double %i.aj, ptr %i.ak, align 8, !tbaa !19
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %.092100.epil) ; 2 uses
  %i.am = add nuw nsw i64 %.091101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.al, %.lr.ph.epil ] ; 4 uses
  %i.an = fcmp une double %.lcssa, 0.000000e+00
  br i1 %i.an, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %._crit_edge
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %.lcssa) ; 2 uses
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %.lr.ph105.preheader

bb.d:                                             ; preds = %bb.c
  %i.aq = tail call double @sqrt(double noundef %i.ao) #6
  br label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %bb.d, %bb.c
  %i.ar = phi double [ %i.aq, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.as = fcmp ugt double %i.o, 0.000000e+00
  %i.at = fsub double %i.o, %i.ar
  %i.au = fneg double %.lcssa
  %i.av = fadd double %i.o, %i.ar
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = select i1 %i.as, double %i.aw, double %i.at ; 4 uses
  %i.ay = fmul double %i.ax, %i.ax                ; 2 uses
  %i.az = fmul double %i.ay, 2.000000e+00
  %i.ba = fadd double %.lcssa, %i.ay
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.090128
  store double %i.bb, ptr %i.bc, align 8, !tbaa !19
  %5 = sub i64 %i.c, %.090128                     ; 4 uses
  %min.iters.check167 = icmp ult i64 %5, 2
  br i1 %min.iters.check167, label %.lr.ph105.preheader180, label %vector.ph168

vector.ph168:                                     ; preds = %.lr.ph105.preheader
  %n.vec169 = and i64 %5, -2                      ; 2 uses
  %i.bd = or i64 %5, 1
  %broadcast.splatinsert170 = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat171 = shufflevector <2 x double> %broadcast.splatinsert170, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph168
  %index173 = phi i64 [ 0, %vector.ph168 ], [ %index.next175, %vector.body172 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index173
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %wide.load174 = load <2 x double>, ptr %i.bf, align 8, !tbaa !19
  %i.bg = fdiv <2 x double> %wide.load174, %broadcast.splat171
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !19
  %index.next175 = add nuw i64 %index173, 2       ; 2 uses
  %i.bh = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.bh, label %middle.block176, label %vector.body172, !llvm.loop !101

middle.block176:                                  ; preds = %vector.body172
  %cmp.n177 = icmp eq i64 %5, %n.vec169
  br i1 %cmp.n177, label %.lr.ph122, label %.lr.ph105.preheader180

.lr.ph105.preheader180:                           ; preds = %.lr.ph105.preheader, %middle.block176
  %.1103.ph = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.bd, %middle.block176 ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader180, %.lr.ph105
  %.1103 = phi i64 [ %i.bl, %.lr.ph105 ], [ %.1103.ph, %.lr.ph105.preheader180 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1103 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !19
  %i.bk = fdiv double %i.bj, %i.ax
  store double %i.bk, ptr %i.bi, align 8, !tbaa !19
  %i.bl = add nuw nsw i64 %.1103, 1               ; 2 uses
  %exitcond133.not = icmp eq i64 %i.bl, %indvars.iv
  br i1 %exitcond133.not, label %.lr.ph122, label %.lr.ph105, !llvm.loop !102

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.090128
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !19
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph105, %middle.block176, %._crit_edge.thread
  %i.bn = icmp sgt i64 %i.p, 0
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.090128
  %xtraiter184 = and i64 %indvars.iv, 3           ; 3 uses
  %i.bp = icmp ult i64 %i.f, 3
  %unroll_iter189 = and i64 %indvars.iv, -4
  %lcmp.mod186.not = icmp eq i64 %xtraiter184, 0
  %lcmp.mod188 = icmp ne i64 %xtraiter184, 0
  %min.iters.check153 = icmp ult i64 %indvars.iv, 4
  %n.vec155 = and i64 %indvars.iv, -4             ; 3 uses
  %cmp.n164 = icmp eq i64 %indvars.iv, %n.vec155
  %xtraiter191 = and i64 %indvars.iv, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph122, %._crit_edge119
  %.0120 = phi i64 [ %.090128, %.lr.ph122 ], [ %i.dr, %._crit_edge119 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %invariant.gep106 = getelementptr [8 x i8], ptr %i.br, i64 %.090128 ; 10 uses
  br i1 %i.bn, label %.lr.ph111.preheader, label %._crit_edge119

.lr.ph111.preheader:                              ; preds = %bb.e
  br i1 %i.bp, label %.lr.ph111.epil.preheader, label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %.2109 = phi i64 [ %i.cl, %.lr.ph111 ], [ 0, %.lr.ph111.preheader ] ; 6 uses
  %.193108 = phi double [ %i.ck, %.lr.ph111 ], [ 0.000000e+00, %.lr.ph111.preheader ]
  %niter190 = phi i64 [ %niter190.next.3, %.lr.ph111 ], [ 0, %.lr.ph111.preheader ]
  %gep107 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.2109
  %i.bs = load double, ptr %gep107, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2109
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !19
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bu, double %.193108)
  %i.bw = or disjoint i64 %.2109, 1               ; 2 uses
  %gep107.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.bw
  %i.bx = load double, ptr %gep107.1, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bw
  %i.bz = load double, ptr %i.by, align 8, !tbaa !19
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bz, double %i.bv)
  %i.cb = or disjoint i64 %.2109, 2               ; 2 uses
  %gep107.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.cb
  %i.cc = load double, ptr %gep107.2, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cb
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ce, double %i.ca)
  %i.cg = or disjoint i64 %.2109, 3               ; 2 uses
  %gep107.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.cg
  %i.ch = load double, ptr %gep107.3, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cg
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !19
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cj, double %i.cf) ; 3 uses
  %i.cl = add nuw nsw i64 %.2109, 4               ; 2 uses
  %niter190.next.3 = add i64 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i64 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.lr.ph118.unr-lcssa, label %.lr.ph111

.lr.ph118.unr-lcssa:                              ; preds = %.lr.ph111
  br i1 %lcmp.mod186.not, label %.lr.ph118, label %.lr.ph111.epil.preheader

.lr.ph111.epil.preheader:                         ; preds = %.lr.ph118.unr-lcssa, %.lr.ph111.preheader
  %.2109.epil.init = phi i64 [ 0, %.lr.ph111.preheader ], [ %i.cl, %.lr.ph118.unr-lcssa ]
  %.193108.epil.init = phi double [ 0.000000e+00, %.lr.ph111.preheader ], [ %i.ck, %.lr.ph118.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph111.epil

.lr.ph111.epil:                                   ; preds = %.lr.ph111.epil, %.lr.ph111.epil.preheader
  %.2109.epil = phi i64 [ %i.cq, %.lr.ph111.epil ], [ %.2109.epil.init, %.lr.ph111.epil.preheader ] ; 3 uses
  %.193108.epil = phi double [ %i.cp, %.lr.ph111.epil ], [ %.193108.epil.init, %.lr.ph111.epil.preheader ]
  %epil.iter185 = phi i64 [ %epil.iter185.next, %.lr.ph111.epil ], [ 0, %.lr.ph111.epil.preheader ]
  %gep107.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.2109.epil
  %i.cm = load double, ptr %gep107.epil, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2109.epil
  %i.co = load double, ptr %i.cn, align 8, !tbaa !19
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.co, double %.193108.epil) ; 2 uses
  %i.cq = add nuw nsw i64 %.2109.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %.lr.ph118, label %.lr.ph111.epil, !llvm.loop !103

.lr.ph118:                                        ; preds = %.lr.ph111.epil, %.lr.ph118.unr-lcssa
  %.lcssa181 = phi double [ %i.ck, %.lr.ph118.unr-lcssa ], [ %i.cp, %.lr.ph111.epil ]
  %i.cr = load double, ptr %i.bo, align 8, !tbaa !19
  %i.cs = fneg double %i.cr
  %i.ct = fmul double %.lcssa181, %i.cs           ; 4 uses
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph118
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.d
  %bound0 = icmp ult ptr %invariant.gep106, %scevgep151
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck150
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ct, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index157 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load158 = load <2 x double>, ptr %i.cu, align 8, !tbaa !19, !alias.scope !112
  %wide.load159 = load <2 x double>, ptr %i.cv, align 8, !tbaa !19, !alias.scope !112
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %index157 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load160 = load <2 x double>, ptr %i.cw, align 8, !tbaa !19, !alias.scope !113, !noalias !112
  %wide.load161 = load <2 x double>, ptr %i.cx, align 8, !tbaa !19, !alias.scope !113, !noalias !112
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load158, <2 x double> %wide.load160)
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load159, <2 x double> %wide.load161)
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !19, !alias.scope !113, !noalias !112
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !19, !alias.scope !113, !noalias !112
  %index.next162 = add nuw i64 %index157, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.da, label %middle.block163, label %vector.body156, !llvm.loop !107

middle.block163:                                  ; preds = %vector.body156
  br i1 %cmp.n164, label %._crit_edge119, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck150, %.lr.ph118, %middle.block163
  %.3116.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph118 ], [ %n.vec155, %middle.block163 ] ; 5 uses
  br i1 %lcmp.mod192.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3116.ph
  %i.dc = load double, ptr %i.db, align 8, !tbaa !19
  %gep115.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.3116.ph ; 2 uses
  %i.dd = load double, ptr %gep115.prol, align 8, !tbaa !19
  %i.de = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dc, double %i.dd)
  store double %i.de, ptr %gep115.prol, align 8, !tbaa !19
  %i.df = or disjoint i64 %.3116.ph, 1
  br label %scalar.ph152.prol.loopexit

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %.3116.unr = phi i64 [ %.3116.ph, %scalar.ph152.preheader ], [ %i.df, %scalar.ph152.prol ]
  %i.dg = icmp eq i64 %i.f, %.3116.ph
  br i1 %i.dg, label %._crit_edge119, label %scalar.ph152

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %.3116 = phi i64 [ %i.dq, %scalar.ph152 ], [ %.3116.unr, %scalar.ph152.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3116
  %i.di = load double, ptr %i.dh, align 8, !tbaa !19
  %gep115 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.3116 ; 2 uses
  %i.dj = load double, ptr %gep115, align 8, !tbaa !19
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.di, double %i.dj)
  store double %i.dk, ptr %gep115, align 8, !tbaa !19
  %i.dl = add nuw nsw i64 %.3116, 1               ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !19
  %gep115.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.dl ; 2 uses
  %i.do = load double, ptr %gep115.1, align 8, !tbaa !19
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dn, double %i.do)
  store double %i.dp, ptr %gep115.1, align 8, !tbaa !19
  %i.dq = add nuw nsw i64 %.3116, 2               ; 2 uses
  %exitcond135.not.1 = icmp eq i64 %i.dq, %indvars.iv
  br i1 %exitcond135.not.1, label %._crit_edge119, label %scalar.ph152, !llvm.loop !108

._crit_edge119:                                   ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block163, %bb.e
  %i.dr = add nuw nsw i64 %.0120, 1               ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dr, %2
  br i1 %exitcond136.not, label %._crit_edge123, label %bb.e

._crit_edge123:                                   ; preds = %._crit_edge119
  %i.ds = icmp sge i64 %.090128, %i.c
  %brmerge = or i1 %i.ds, %i.q
  br i1 %brmerge, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %._crit_edge123
  %6 = sub i64 %i.c, %.090128                     ; 3 uses
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %.lr.ph127.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.preheader
  %i.dt = add i64 %i.j, %i.m
  %i.du = add i64 %i.dt, -1
  %diff.check = icmp ult i64 %i.du, 31
  br i1 %diff.check, label %.lr.ph127.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.dv = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = or disjoint i64 %index, 1               ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <2 x double>, ptr %i.dx, align 8, !tbaa !19
  %wide.load149 = load <2 x double>, ptr %i.dy, align 8, !tbaa !19
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> %wide.load, ptr %i.dz, align 8, !tbaa !19
  store <2 x double> %wide.load149, ptr %i.ea, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph127.preheader179

.lr.ph127.preheader179:                           ; preds = %vector.memcheck, %.lr.ph127.preheader, %middle.block
  %.4126.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph127.preheader ], [ %i.dv, %middle.block ] ; 4 uses
  %i.ec = sub i64 %indvars.iv, %.4126.ph
  %i.ed = sub i64 %i.f, %.4126.ph
  %xtraiter193 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol

.lr.ph127.prol:                                   ; preds = %.lr.ph127.preheader179, %.lr.ph127.prol
  %.4126.prol = phi i64 [ %i.eg, %.lr.ph127.prol ], [ %.4126.ph, %.lr.ph127.preheader179 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph127.prol ], [ 0, %.lr.ph127.preheader179 ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4126.prol
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !19
  %gep125.prol = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.4126.prol
  store double %i.ef, ptr %gep125.prol, align 8, !tbaa !19
  %i.eg = add nuw nsw i64 %.4126.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter193
  br i1 %prol.iter.cmp.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol, !llvm.loop !110

.lr.ph127.prol.loopexit:                          ; preds = %.lr.ph127.prol, %.lr.ph127.preheader179
  %.4126.unr = phi i64 [ %.4126.ph, %.lr.ph127.preheader179 ], [ %i.eg, %.lr.ph127.prol ]
  %i.eh = icmp ult i64 %i.ed, 3
  br i1 %i.eh, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127
  %.4126 = phi i64 [ %i.et, %.lr.ph127 ], [ %.4126.unr, %.lr.ph127.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4126
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !19
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.4126
  store double %i.ej, ptr %gep125, align 8, !tbaa !19
  %i.ek = add nuw nsw i64 %.4126, 1               ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !19
  %gep125.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ek
  store double %i.em, ptr %gep125.1, align 8, !tbaa !19
  %i.en = add nuw nsw i64 %.4126, 2               ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !19
  %gep125.2 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.en
  store double %i.ep, ptr %gep125.2, align 8, !tbaa !19
  %i.eq = add nuw nsw i64 %.4126, 3               ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !19
  %gep125.3 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.eq
  store double %i.es, ptr %gep125.3, align 8, !tbaa !19
  %i.et = add nuw nsw i64 %.4126, 4               ; 2 uses
  %exitcond138.not.3 = icmp eq i64 %i.et, %indvars.iv
  br i1 %exitcond138.not.3, label %.loopexit, label %.lr.ph127, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127, %middle.block, %._crit_edge123
  %i.eu = add nuw nsw i64 %.090128, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond139.not = icmp eq i64 %i.eu, %2
  br i1 %exitcond139.not, label %._crit_edge131, label %bb.b

._crit_edge131:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_DenseORMQR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 15 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.j = sub i64 %i.i, %i.h
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !19
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !19
  store <2 x double> %wide.load9, ptr %i.n, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader53.i, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.04854.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader26, %.lr.ph.i.prol
  %.04854.i.prol = phi i64 [ %i.s, %.lr.ph.i.prol ], [ %.04854.i.ph, %.lr.ph.i.preheader26 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader26 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = add nuw nsw i64 %.04854.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !115

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader26
  %.04854.i.unr = phi i64 [ %.04854.i.ph, %.lr.ph.i.preheader26 ], [ %i.s, %.lr.ph.i.prol ]
  %i.t = sub nsw i64 %.04854.i.ph, %i.f
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.preheader53.i, label %.lr.ph.i

.preheader53.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.v = icmp slt i64 %i.f, %i.d
  br i1 %i.v, label %.lr.ph56.preheader.i, label %.preheader.i

.lr.ph56.preheader.i:                             ; preds = %.preheader53.i
  %i.w = shl i64 %i.f, 3
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.w
  %i.x = sub i64 %i.d, %i.f
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !19
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04854.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.04854.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = add nuw nsw i64 %.04854.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !19
  %i.ag = add nuw nsw i64 %.04854.i, 2            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = add nuw nsw i64 %.04854.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = add nuw nsw i64 %.04854.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond.not.i.3, label %.preheader53.i, label %.lr.ph.i, !llvm.loop !116

.preheader.i:                                     ; preds = %.lr.ph56.preheader.i, %.preheader53.i
  br i1 %i.g, label %.lr.ph66.preheader.i, label %SUNDlsMat_denseORMQR.exit

.lr.ph66.preheader.i:                             ; preds = %.preheader.i
  %i.ap = add i64 %i.d, 1
  %i.aq = sub i64 %i.ap, %i.f
  %i.ar = shl i64 %i.d, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ar
  %i.as = add i64 %i.ar, 8
  %i.at = shl i64 %i.f, 3
  %i.au = sub i64 %i.as, %i.at
  %i.av = sub i64 %i.d, %i.f
  %i.aw = getelementptr i8, ptr %4, i64 %i.au
  %i.ax = sub i64 %i.f, %i.d
  %bound1 = icmp ult ptr %4, %scevgep
  br label %.lr.ph66.i

.loopexit.i:                                      ; preds = %scalar.ph12.prol.loopexit, %scalar.ph12, %middle.block23, %._crit_edge.i
  %i.ay = icmp samesign ugt i64 %.065.in.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ay, label %.lr.ph66.i, label %SUNDlsMat_denseORMQR.exit

.lr.ph66.i:                                       ; preds = %.loopexit.i, %.lr.ph66.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph66.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.aq, %.lr.ph66.preheader.i ] ; 6 uses
  %.065.in.i = phi i64 [ %.065.i, %.loopexit.i ], [ %i.f, %.lr.ph66.preheader.i ] ; 3 uses
  %i.az = add i64 %i.av, %indvar                  ; 4 uses
  %i.ba = shl i64 %indvar, 3
  %scevgep11 = getelementptr i8, ptr %i.aw, i64 %i.ba
  %.065.i = add nsw i64 %.065.in.i, -1            ; 7 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.065.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !19
  %i.bd = getelementptr [8 x i8], ptr %3, i64 %.065.i ; 6 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !19 ; 3 uses
  %i.bf = sub nsw i64 %i.d, %.065.i               ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph59.i.preheader, label %._crit_edge.i

end_hunk_2
