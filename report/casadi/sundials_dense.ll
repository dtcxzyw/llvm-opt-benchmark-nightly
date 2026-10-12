Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_dense?download=true
inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @DenseGETRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = tail call i64 @denseGETRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %1)
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define i64 @denseGETRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph91.preheader, label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %bb.a
  %i.b = shl i64 %1, 3                            ; 2 uses
  %4 = add i64 %1, -1                             ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod134 = trunc i64 %2 to i1
  br label %.lr.ph91

.loopexit75:                                      ; preds = %..loopexit_crit_edge.us, %.preheader74, %.loopexit77
  %exitcond103.not = icmp eq i64 %i.h, %2
  br i1 %exitcond103.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !39

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.loopexit75
  %.06689 = phi i64 [ %i.h, %.loopexit75 ], [ 0, %.lr.ph91.preheader ] ; 14 uses
  %5 = sub i64 %4, %.06689                        ; 3 uses
  %6 = sub i64 %4, %.06689                        ; 3 uses
  %i.d = shl i64 %.06689, 3
  %i.e = add i64 %i.d, 8                          ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06689
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 12 uses
  %i.h = add nuw nsw i64 %.06689, 1               ; 14 uses
  %i.i = icmp slt i64 %i.h, %1                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph91, %.lr.ph
  %.079 = phi i64 [ %spec.select, %.lr.ph ], [ %.06689, %.lr.ph91 ] ; 2 uses
  %.06878 = phi i64 [ %i.q, %.lr.ph ], [ %i.h, %.lr.ph91 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.06878
  %i.k = load double, ptr %i.j, align 8, !tbaa !34
  %i.l = tail call double @SUNRabs(double noundef %i.k) #7
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.079
  %i.n = load double, ptr %i.m, align 8, !tbaa !34
  %i.o = tail call double @SUNRabs(double noundef %i.n) #7
  %i.p = fcmp ogt double %i.l, %i.o
  %spec.select = select i1 %i.p, i64 %.06878, i64 %.079 ; 2 uses
  %i.q = add nuw i64 %.06878, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph91
  %.0.lcssa = phi i64 [ %.06689, %.lr.ph91 ], [ %spec.select, %.lr.ph ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.06689
  store i64 %.0.lcssa, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.0.lcssa
  %i.t = load double, ptr %i.s, align 8, !tbaa !34
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.u, label %._crit_edge92, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %.0.lcssa, %.06689
  br i1 %.not, label %.loopexit77, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.b
  br i1 %i.c, label %.lr.ph81.epil.preheader, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.16980 = phi i64 [ %i.ai, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0.lcssa ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.06689 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  store double %i.aa, ptr %i.x, align 8, !tbaa !34
  store double %i.y, ptr %i.z, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.0.lcssa ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.06689 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !34
  store double %i.ah, ptr %i.ae, align 8, !tbaa !34
  store double %i.af, ptr %i.ag, align 8, !tbaa !34
  %i.ai = add nuw nsw i64 %.16980, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit77.loopexit.unr-lcssa, label %.lr.ph81, !llvm.loop !41

.loopexit77.loopexit.unr-lcssa:                   ; preds = %.lr.ph81
  br i1 %lcmp.mod.not, label %.loopexit77, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit77.loopexit.unr-lcssa, %.lr.ph81.preheader
  %.16980.epil.init = phi i64 [ 0, %.lr.ph81.preheader ], [ %i.ai, %.loopexit77.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16980.epil.init
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.0.lcssa ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.06689 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !34
  store double %i.ao, ptr %i.al, align 8, !tbaa !34
  store double %i.am, ptr %i.an, align 8, !tbaa !34
  br label %.loopexit77

.loopexit77:                                      ; preds = %.lr.ph81.epil.preheader, %.loopexit77.loopexit.unr-lcssa, %bb.b
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.06689
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !34
  %i.ar = fdiv double 1.000000e+00, %i.aq         ; 2 uses
  br i1 %i.i, label %.lr.ph84.preheader, label %.loopexit75

.lr.ph84.preheader:                               ; preds = %.loopexit77
  %min.iters.check120 = icmp ult i64 %5, 4
  br i1 %min.iters.check120, label %.lr.ph84.preheader133, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph84.preheader
  %n.vec122 = and i64 %5, -4                      ; 3 uses
  %i.as = add i64 %i.h, %n.vec122
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index126 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load127 = load <2 x double>, ptr %i.au, align 8, !tbaa !34
  %wide.load128 = load <2 x double>, ptr %i.av, align 8, !tbaa !34
  %i.aw = fmul <2 x double> %broadcast.splat124, %wide.load127
  %i.ax = fmul <2 x double> %broadcast.splat124, %wide.load128
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !34
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !34
  %index.next129 = add nuw i64 %index126, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.ay, label %middle.block130, label %vector.body125, !llvm.loop !42

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %5, %n.vec122
  br i1 %cmp.n131, label %.preheader74, label %.lr.ph84.preheader133

.lr.ph84.preheader133:                            ; preds = %.lr.ph84.preheader, %middle.block130
  %.282.ph = phi i64 [ %i.h, %.lr.ph84.preheader ], [ %i.as, %middle.block130 ]
  br label %.lr.ph84

.preheader74:                                     ; preds = %.lr.ph84, %middle.block130
  %.not112 = icmp slt i64 %i.h, %2
  br i1 %.not112, label %.lr.ph88.split.us.preheader, label %.loopexit75

.lr.ph88.split.us.preheader:                      ; preds = %.preheader74
  %scevgep114 = getelementptr i8, ptr %i.g, i64 %i.e
  %scevgep115 = getelementptr i8, ptr %i.g, i64 %i.b
  %min.iters.check = icmp ult i64 %6, 4
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.az = add i64 %i.h, %n.vec
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.lr.ph88.split.us

.lr.ph88.split.us:                                ; preds = %.lr.ph88.split.us.preheader, %..loopexit_crit_edge.us
  %.06787.us = phi i64 [ %i.br, %..loopexit_crit_edge.us ], [ %i.h, %.lr.ph88.split.us.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06787.us
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 7 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.06689
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !34 ; 2 uses
  %i.be = fcmp une double %i.bd, 0.000000e+00
  br i1 %i.be, label %.preheader.us, label %..loopexit_crit_edge.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.385.us = phi i64 [ %i.bq, %scalar.ph ], [ %.385.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.385.us
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.385.us ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !34
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bg, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !34
  %i.bk = add nuw nsw i64 %.385.us, 1             ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bk ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !34
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bm, double %i.bo)
  store double %i.bp, ptr %i.bn, align 8, !tbaa !34
  %i.bq = add nuw nsw i64 %.385.us, 2             ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %i.bq, %1
  br i1 %exitcond101.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !43

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88.split.us
  %i.br = add nuw nsw i64 %.06787.us, 1           ; 2 uses
  %exitcond102.not = icmp eq i64 %i.br, %2
  br i1 %exitcond102.not, label %.loopexit75, label %.lr.ph88.split.us, !llvm.loop !44

.preheader.us:                                    ; preds = %.lr.ph88.split.us
  %i.bs = fneg double %i.bd                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.e
  %scevgep113 = getelementptr i8, ptr %i.bb, i64 %i.b
  %bound0 = icmp ult ptr %scevgep, %scevgep115
  %bound1 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = add nuw i64 %i.h, %index                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x double>, ptr %i.bu, align 8, !tbaa !34, !alias.scope !50
  %wide.load116 = load <2 x double>, ptr %i.bv, align 8, !tbaa !34, !alias.scope !50
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bt ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.bw, align 8, !tbaa !34, !alias.scope !51, !noalias !50
  %wide.load118 = load <2 x double>, ptr %i.bx, align 8, !tbaa !34, !alias.scope !51, !noalias !50
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load117)
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load116, <2 x double> %wide.load118)
  store <2 x double> %i.by, ptr %i.bw, align 8, !tbaa !34, !alias.scope !51, !noalias !50
  store <2 x double> %i.bz, ptr %i.bx, align 8, !tbaa !34, !alias.scope !51, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.385.us.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.preheader.us ], [ %i.az, %middle.block ] ; 6 uses
  %i.cb = sub i64 %1, %.385.us.ph
  %.neg = add i64 %.385.us.ph, 1
  %xtraiter135 = and i64 %i.cb, 1
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.385.us.ph
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.385.us.ph ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !34
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.cd, double %i.cf)
  store double %i.cg, ptr %i.ce, align 8, !tbaa !34
  %i.ch = add nuw nsw i64 %.385.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.385.us.unr = phi i64 [ %.385.us.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.ci = icmp eq i64 %1, %.neg
  br i1 %i.ci, label %..loopexit_crit_edge.us, label %scalar.ph

.lr.ph84:                                         ; preds = %.lr.ph84.preheader133, %.lr.ph84
  %.282 = phi i64 [ %i.cm, %.lr.ph84 ], [ %.282.ph, %.lr.ph84.preheader133 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.282 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !34
  %i.cl = fmul double %i.ar, %i.ck
  store double %i.cl, ptr %i.cj, align 8, !tbaa !34
  %i.cm = add nuw nsw i64 %.282, 1                ; 2 uses
  %exitcond100.not = icmp eq i64 %i.cm, %1
  br i1 %exitcond100.not, label %.preheader74, label %.lr.ph84, !llvm.loop !49

._crit_edge92:                                    ; preds = %._crit_edge, %.loopexit75, %bb.a
  %.070 = phi i64 [ 0, %bb.a ], [ 0, %.loopexit75 ], [ %i.h, %._crit_edge ]
  ret i64 %.070
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @DenseGETRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 12 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %denseGETRS.exit

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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i.epil = icmp eq i64 %i.h, %.056.i.epil.init
  br i1 %.not.i.epil, label %.preheader55.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i.epil.init ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !34
  store double %i.l, ptr %i.i, align 8, !tbaa !34
  store double %i.j, ptr %i.k, align 8, !tbaa !34
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph.i.epil.preheader, %bb.b, %.preheader55.i.unr-lcssa
  %i.m = add nsw i64 %i.d, -1                     ; 3 uses
  %.not71.i = icmp eq i64 %i.d, 1
  br i1 %.not71.i, label %denseGETRS.exit, label %.lr.ph58.i.preheader

.lr.ph58.i.preheader:                             ; preds = %.preheader55.i
  %i.n = shl i64 %i.d, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %2, i64 %i.n
  br label %.lr.ph58.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i.preheader.new
  %.056.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.056.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i64 %i.p, %.056.i
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.056.i ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !34
  store double %i.t, ptr %i.q, align 8, !tbaa !34
  store double %i.r, ptr %i.s, align 8, !tbaa !34
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %i.u = or disjoint i64 %.056.i, 1               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %.not.i.1 = icmp eq i64 %i.w, %i.u
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  store double %i.aa, ptr %i.x, align 8, !tbaa !34
  store double %i.y, ptr %i.z, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %i.ab = add nuw nsw i64 %.056.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_0
begin_hunk_1_@denseGETRS:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i64 %i.ab, %index               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !34, !alias.scope !82
  %wide.load75 = load <2 x double>, ptr %i.aj, align 8, !tbaa !34, !alias.scope !82
  %i.ak = load double, ptr %i.ac, align 8, !tbaa !34, !alias.scope !83
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.al, align 8, !tbaa !34, !alias.scope !84, !noalias !82
  %wide.load77 = load <2 x double>, ptr %i.am, align 8, !tbaa !34, !alias.scope !84, !noalias !82
  %i.an = fneg <2 x double> %wide.load
  %i.ao = fneg <2 x double> %wide.load75
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %broadcast.splat, <2 x double> %wide.load76)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %broadcast.splat, <2 x double> %wide.load77)
  store <2 x double> %i.ap, ptr %i.al, align 8, !tbaa !34, !alias.scope !84, !noalias !82
  store <2 x double> %i.aq, ptr %i.am, align 8, !tbaa !34, !alias.scope !84, !noalias !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !74

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
  %i.au = load double, ptr %i.at, align 8, !tbaa !34
  %i.av = load double, ptr %i.ac, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057.ph ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !34
  %i.ay = fneg double %i.au
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.av, double %i.ax)
  store double %i.az, ptr %i.aw, align 8, !tbaa !34
  %i.ba = add nuw nsw i64 %.05057.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05057.unr = phi i64 [ %.05057.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = icmp eq i64 %1, %.neg
  br i1 %i.bb, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05057 = phi i64 [ %i.br, %scalar.ph ], [ %.05057.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.05057
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !34
  %i.be = load double, ptr %i.ac, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05057 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !34
  %i.bh = fneg double %i.bd
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.be, double %i.bg)
  store double %i.bi, ptr %i.bf, align 8, !tbaa !34
  %i.bj = add nuw nsw i64 %.05057, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !34
  %i.bm = load double, ptr %i.ac, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !34
  %i.bp = fneg double %i.bl
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bm, double %i.bo)
  store double %i.bq, ptr %i.bn, align 8, !tbaa !34
  %i.br = add nuw nsw i64 %.05057, 2              ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.br, %1
  br i1 %exitcond64.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !75

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit98
  %indvar = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvar.next, %.loopexit98 ] ; 2 uses
  %.262 = phi i64 [ %i.i, %.lr.ph63.preheader ], [ %i.dj, %.loopexit98 ] ; 10 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.262
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32 ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.262 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.262 ; 7 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !34
  %i.by = fdiv double %i.bx, %i.bv
  store double %i.by, ptr %i.bw, align 8, !tbaa !34
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
  %wide.load88 = load <2 x double>, ptr %i.bz, align 8, !tbaa !34, !alias.scope !85
  %wide.load89 = load <2 x double>, ptr %i.ca, align 8, !tbaa !34, !alias.scope !85
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !34, !alias.scope !86
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index87 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %wide.load90 = load <2 x double>, ptr %i.cc, align 8, !tbaa !34, !alias.scope !87, !noalias !85
  %wide.load91 = load <2 x double>, ptr %i.cd, align 8, !tbaa !34, !alias.scope !87, !noalias !85
  %i.ce = fneg <2 x double> %wide.load88
  %i.cf = fneg <2 x double> %wide.load89
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat93, <2 x double> %wide.load90)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %broadcast.splat93, <2 x double> %wide.load91)
  store <2 x double> %i.cg, ptr %i.cc, align 8, !tbaa !34, !alias.scope !87, !noalias !85
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !34, !alias.scope !87, !noalias !85
  %index.next94 = add nuw i64 %index87, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.ci, label %middle.block95, label %vector.body86, !llvm.loop !80

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
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !34
  %i.cm = load double, ptr %i.bw, align 8, !tbaa !34
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161.ph ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !34
  %i.cp = fneg double %i.cl
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cm, double %i.co)
  store double %i.cq, ptr %i.cn, align 8, !tbaa !34
  %i.cr = or disjoint i64 %.15161.ph, 1
  br label %scalar.ph82.prol.loopexit

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.15161.unr = phi i64 [ %.15161.ph, %scalar.ph82.preheader ], [ %i.cr, %scalar.ph82.prol ]
  %i.cs = icmp eq i64 %i.y, %i.cj
  br i1 %i.cs, label %.loopexit98, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.15161 = phi i64 [ %i.di, %scalar.ph82 ], [ %.15161.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.15161
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !34
  %i.cv = load double, ptr %i.bw, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.15161 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !34
  %i.cy = fneg double %i.cu
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cv, double %i.cx)
  store double %i.cz, ptr %i.cw, align 8, !tbaa !34
  %i.da = add nuw nsw i64 %.15161, 1              ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !34
  %i.dd = load double, ptr %i.bw, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !34
  %i.dg = fneg double %i.dc
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dd, double %i.df)
  store double %i.dh, ptr %i.de, align 8, !tbaa !34
  %i.di = add nuw nsw i64 %.15161, 2              ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.di, %.262
  br i1 %exitcond66.not.1, label %.loopexit98, label %scalar.ph82, !llvm.loop !81

.loopexit98:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block95
  %i.dj = add nsw i64 %.262, -1
  %i.dk = icmp sgt i64 %.262, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph63, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.loopexit98, %bb.a, %.preheader55
  %i.dl = load ptr, ptr %0, align 8, !tbaa !32
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !34
  %i.dn = load double, ptr %3, align 8, !tbaa !34
  %i.do = fdiv double %i.dn, %i.dm
  store double %i.do, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @DensePOTRF(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 5 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph46.i, label %densePOTRF.exit

.lr.ph46.i:                                       ; preds = %bb.a, %._crit_edge.i
  %.03344.i = phi i64 [ %i.az, %._crit_edge.i ], [ 0, %bb.a ] ; 17 uses
  %1 = sub nsw i64 %i.d, %.03344.i                ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.03344.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  %.not.not.i = icmp eq i64 %.03344.i, 0
  br i1 %.not.not.i, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph46.i
  %xtraiter = and i64 %.03344.i, 1
  %i.h = icmp eq i64 %.03344.i, 1
  %unroll_iter = and i64 %.03344.i, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod10 = trunc i64 %.03344.i to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %.03442.i = phi i64 [ %i.ak, %bb.b ], [ %.03344.i, %.preheader.i.preheader ] ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03442.i ; 4 uses
  %.promoted.i = load double, ptr %i.i, align 8, !tbaa !34 ; 2 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.041.i = phi i64 [ %i.ab, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %i.j = phi double [ %i.aa, %.preheader.i.new ], [ %.promoted.i, %.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.041.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03442.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03344.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !34
  %i.q = fneg double %i.n
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.p, double %i.j) ; 2 uses
  store double %i.r, ptr %i.i, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.041.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03442.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03344.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !34
  %i.z = fneg double %i.w
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.y, double %i.r) ; 3 uses
  store double %i.aa, ptr %i.i, align 8, !tbaa !34
  %i.ab = add nuw nsw i64 %.041.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i.new, !llvm.loop !3

.unr-lcssa:                                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i
  %.041.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.ab, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted.i, %.preheader.i ], [ %i.aa, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.041.i.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.03442.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.03344.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !34
  %i.ai = fneg double %i.af
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ah, double %.epil.init)
  store double %i.aj, ptr %i.i, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ak = add nuw nsw i64 %.03442.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.ak, %i.d
  br i1 %exitcond48.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %bb.b, %.lr.ph46.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03344.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !34 ; 2 uses
  %i.an = fcmp ugt double %i.am, 0.000000e+00
  br i1 %i.an, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  %i.ao = add nuw nsw i64 %.03344.i, 1
  br label %densePOTRF.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.ap = tail call double @SUNRsqrt(double noundef %i.am) #7 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 2
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %1, -2                         ; 3 uses
  %i.aq = add i64 %.03344.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03344.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !34
  %i.at = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.at, ptr %i.as, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.143.i.ph = phi i64 [ %.03344.i, %.lr.ph.preheader.i ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.143.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.143.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.143.i ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !34
  %i.ax = fdiv double %i.aw, %i.ap
  store double %i.ax, ptr %i.av, align 8, !tbaa !34
  %i.ay = add nuw nsw i64 %.143.i, 1              ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.ay, %i.d
  br i1 %exitcond49.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !89

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.az = add nuw nsw i64 %.03344.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond50.not.i, label %densePOTRF.exit, label %.lr.ph46.i, !llvm.loop !5

densePOTRF.exit:                                  ; preds = %._crit_edge.i, %bb.a, %bb.c
  %.035.i = phi i64 [ %i.ao, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  ret i64 %.035.i
}

; Function Attrs: nounwind uwtable
define i64 @densePOTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph46, label %.loopexit39

.lr.ph46:                                         ; preds = %bb.a, %._crit_edge
  %.03344 = phi i64 [ %i.av, %._crit_edge ], [ 0, %bb.a ] ; 17 uses
  %2 = sub nsw i64 %1, %.03344                    ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %.not.not = icmp eq i64 %.03344, 0
  br i1 %.not.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph46
  %xtraiter = and i64 %.03344, 1
  %i.d = icmp eq i64 %.03344, 1
  %unroll_iter = and i64 %.03344, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod58 = trunc i64 %.03344 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %.03442 = phi i64 [ %i.ag, %bb.b ], [ %.03344, %.preheader.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03442 ; 4 uses
  %.promoted = load double, ptr %i.e, align 8, !tbaa !34 ; 2 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.041 = phi i64 [ %i.x, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.f = phi double [ %i.w, %.preheader.new ], [ %.promoted, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.03442
  %i.j = load double, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.03344
  %i.l = load double, ptr %i.k, align 8, !tbaa !34
  %i.m = fneg double %i.j
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double %i.f) ; 2 uses
  store double %i.n, ptr %i.e, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03442
  %i.s = load double, ptr %i.r, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03344
  %i.u = load double, ptr %i.t, align 8, !tbaa !34
  %i.v = fneg double %i.s
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.u, double %i.n) ; 3 uses
  store double %i.w, ptr %i.e, align 8, !tbaa !34
  %i.x = add nuw nsw i64 %.041, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !3

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.041.epil.init = phi i64 [ 0, %.preheader ], [ %i.x, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.preheader ], [ %i.w, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.041.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03442
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.03344
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !34
  %i.ae = fneg double %i.ab
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double %.epil.init)
  store double %i.af, ptr %i.e, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ag = add nuw nsw i64 %.03442, 1              ; 2 uses
  %exitcond48.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond48.not, label %.loopexit, label %.preheader, !llvm.loop !4

.loopexit:                                        ; preds = %bb.b, %.lr.ph46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03344
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ak = add nuw nsw i64 %.03344, 1
  br label %.loopexit39

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.al = tail call double @SUNRsqrt(double noundef %i.ai) #7 ; 2 uses
  %min.iters.check = icmp ult i64 %2, 2
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -2                         ; 3 uses
  %i.am = add i64 %.03344, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03344
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !34
  %i.ap = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ap, ptr %i.ao, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %.lr.ph.preheader, %middle.block
  %.143.ph = phi i64 [ %.03344, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %.lr.ph
  %.143 = phi i64 [ %i.au, %.lr.ph ], [ %.143.ph, %.lr.ph.preheader56 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.143 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !34
  %i.at = fdiv double %i.as, %i.al
  store double %i.at, ptr %i.ar, align 8, !tbaa !34
  %i.au = add nuw nsw i64 %.143, 1                ; 2 uses
  %exitcond49.not = icmp eq i64 %i.au, %1
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.av = add nuw nsw i64 %.03344, 1              ; 2 uses
  %exitcond50.not = icmp eq i64 %i.av, %1
  br i1 %exitcond50.not, label %.loopexit39, label %.lr.ph46, !llvm.loop !5

.loopexit39:                                      ; preds = %._crit_edge, %bb.a, %bb.c
  %.035 = phi i64 [ %i.ak, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i64 %.035
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @DensePOTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 8 uses
  %i.e = add i64 %i.d, -1                         ; 5 uses
  %i.f = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i.preheader, label %._crit_edge.i

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %i.g = shl i64 %i.d, 3                          ; 2 uses
  %scevgep4 = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %exitcond64.not.i = icmp eq i64 %i.o, %i.e
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i, !llvm.loop !6

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %.loopexit.i
  %.053.i = phi i64 [ %i.o, %.loopexit.i ], [ 0, %.lr.ph.preheader.i.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.053.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.053.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.053.i ; 6 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !34
  %i.n = fdiv double %i.m, %i.k
  store double %i.n, ptr %i.l, align 8, !tbaa !34
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
  %i.u = load double, ptr %i.l, align 8, !tbaa !34, !alias.scope !98
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !34, !alias.scope !99
  %wide.load7 = load <2 x double>, ptr %i.w, align 8, !tbaa !34, !alias.scope !99
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load8 = load <2 x double>, ptr %i.x, align 8, !tbaa !34, !alias.scope !100, !noalias !99
  %wide.load9 = load <2 x double>, ptr %i.y, align 8, !tbaa !34, !alias.scope !100, !noalias !99
  %.scalar = fneg double %i.u
  %i.z = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load, <2 x double> %wide.load8)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %wide.load7, <2 x double> %wide.load9)
  store <2 x double> %i.ab, ptr %i.x, align 8, !tbaa !34, !alias.scope !100, !noalias !99
  store <2 x double> %i.ac, ptr %i.y, align 8, !tbaa !34, !alias.scope !100, !noalias !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !96

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
  %i.af = load double, ptr %i.l, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04952.i.ph
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i.ph ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !34
  %i.ak = fneg double %i.af
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ah, double %i.aj)
  store double %i.al, ptr %i.ai, align 8, !tbaa !34
  %i.am = add nuw nsw i64 %.04952.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.04952.i.unr = phi i64 [ %.04952.i.ph, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.an = icmp eq i64 %i.d, %.neg
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04952.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.04952.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ao = load double, ptr %i.l, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04952.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04952.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !34
  %i.at = fneg double %i.ao
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aq, double %i.as)
  store double %i.au, ptr %i.ar, align 8, !tbaa !34
  %i.av = add nuw nsw i64 %.04952.i, 1            ; 2 uses
  %i.aw = load double, ptr %i.l, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !34
  %i.bb = fneg double %i.aw
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ay, double %i.ba)
  store double %i.bc, ptr %i.az, align 8, !tbaa !34
  %i.bd = add nuw nsw i64 %.04952.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bd, %i.d
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !97

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.a
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.e ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !34
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !34
  %i.bk = fdiv double %i.bj, %i.bh                ; 2 uses
  store double %i.bk, ptr %i.bi, align 8, !tbaa !34
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !34
  %i.bm = fdiv double %i.bk, %i.bl
  store double %i.bm, ptr %i.bi, align 8, !tbaa !34
  br i1 %i.f, label %.lr.ph62.preheader.i, label %densePOTRS.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge.i
  %i.bn = add nsw i64 %i.d, -2
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge59.i.loopexit, %.lr.ph62.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge59.i.loopexit ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %.15060.i = phi i64 [ %i.cp, %._crit_edge59.i.loopexit ], [ %i.bn, %.lr.ph62.preheader.i ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.15060.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 4 uses
  %.155.i = add nuw nsw i64 %.15060.i, 1          ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.15060.i ; 5 uses
end_hunk_1
begin_hunk_2_@densePOTRS:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -4                       ; 3 uses
  %i.o = add i64 %i.k, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add nuw i64 %i.k, %index                 ; 2 uses
  %i.q = load double, ptr %i.h, align 8, !tbaa !34, !alias.scope !107
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !34, !alias.scope !108
  %wide.load71 = load <2 x double>, ptr %i.s, align 8, !tbaa !34, !alias.scope !108
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.t, align 8, !tbaa !34, !alias.scope !109, !noalias !108
  %wide.load73 = load <2 x double>, ptr %i.u, align 8, !tbaa !34, !alias.scope !109, !noalias !108
  %.scalar = fneg double %i.q
  %i.v = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load, <2 x double> %wide.load72)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.x, ptr %i.t, align 8, !tbaa !34, !alias.scope !109, !noalias !108
  store <2 x double> %i.y, ptr %i.u, align 8, !tbaa !34, !alias.scope !109, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !105

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
  %i.ab = load double, ptr %i.h, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04952.ph
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952.ph ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !34
  %i.ag = fneg double %i.ab
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !34
  %i.ai = add nuw nsw i64 %.04952.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader74
  %.04952.unr = phi i64 [ %.04952.ph, %.lr.ph.preheader74 ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = icmp eq i64 %1, %.neg
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04952 = phi i64 [ %i.az, %.lr.ph ], [ %.04952.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ak = load double, ptr %i.h, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04952
  %i.am = load double, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04952 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !34
  %i.ap = fneg double %i.ak
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.am, double %i.ao)
  store double %i.aq, ptr %i.an, align 8, !tbaa !34
  %i.ar = add nuw nsw i64 %.04952, 1              ; 2 uses
  %i.as = load double, ptr %i.h, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !34
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.au, double %i.aw)
  store double %i.ay, ptr %i.av, align 8, !tbaa !34
  %i.az = add nuw nsw i64 %.04952, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !106

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.a ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !34
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !34
  %i.bg = fdiv double %i.bf, %i.bd                ; 2 uses
  store double %i.bg, ptr %i.be, align 8, !tbaa !34
  %i.bh = load double, ptr %i.bc, align 8, !tbaa !34
  %i.bi = fdiv double %i.bg, %i.bh
  store double %i.bi, ptr %i.be, align 8, !tbaa !34
  br i1 %i.b, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %._crit_edge
  %i.bj = add nsw i64 %1, -2
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge59
  %indvar = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvar.next, %._crit_edge59 ] ; 3 uses
  %.15060 = phi i64 [ %i.bj, %.lr.ph62.preheader ], [ %i.co, %._crit_edge59 ] ; 8 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.15060
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !32 ; 4 uses
  %.155 = add nuw nsw i64 %.15060, 1              ; 4 uses
  %i.bm = icmp slt i64 %.155, %1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060 ; 4 uses
  %.promoted = load double, ptr %i.bn, align 8, !tbaa !34 ; 3 uses
  br i1 %i.bm, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.bo = and i64 %indvar, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph58.prol, label %.lr.ph58.prol.loopexit

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.155
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.155
  %i.bs = load double, ptr %i.br, align 8, !tbaa !34
  %i.bt = fneg double %i.bq
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bs, double %.promoted) ; 3 uses
  store double %i.bu, ptr %i.bn, align 8, !tbaa !34
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
  %i.by = load double, ptr %i.bx, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !34
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw) ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !34
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !34
  %i.ch = fneg double %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc) ; 3 uses
  store double %i.ci, ptr %i.bn, align 8, !tbaa !34
  %.1.1 = add nuw nsw i64 %.156, 2                ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %.1.1, %1
  br i1 %exitcond65.not.1, label %._crit_edge59, label %.lr.ph58, !llvm.loop !7

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.lr.ph62
  %i.cj = phi double [ %.promoted, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph58.prol.loopexit ], [ %i.ci, %.lr.ph58 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.15060
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060
  %i.cn = fdiv double %i.cj, %i.cl
  store double %i.cn, ptr %i.cm, align 8, !tbaa !34
  %i.co = add nsw i64 %.15060, -1
  %i.cp = icmp sgt i64 %.15060, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cp, label %.lr.ph62, label %._crit_edge63, !llvm.loop !8

._crit_edge63:                                    ; preds = %._crit_edge59, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @DenseGEQRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = tail call i32 @denseGEQRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %1, ptr noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @denseGEQRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.a
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = add i64 %1, -1                           ; 4 uses
  %i.d = shl i64 %1, 3
  %i.e = add i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph126, %.loopexit
  %indvars.iv = phi i64 [ %1, %.lr.ph126 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %.087124 = phi i64 [ 0, %.lr.ph126 ], [ %i.es, %.loopexit ] ; 16 uses
  %5 = sub i64 %i.c, %.087124                     ; 5 uses
  %i.f = sub i64 %i.c, %.087124                   ; 4 uses
  %i.g = sub i64 %1, %.087124
  %i.h = shl i64 %i.g, 3
  %scevgep146 = getelementptr i8, ptr %4, i64 %i.h
  %6 = sub i64 %i.c, %.087124                     ; 3 uses
  %i.i = shl i64 %.087124, 3
  %i.j = sub i64 %i.i, %i.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.087124
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.087124 ; 12 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !34 ; 5 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !34
  %i.p = sub nsw i64 %1, %.087124                 ; 2 uses
  %i.q = icmp slt i64 %i.p, 2                     ; 2 uses
  br i1 %i.q, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = sub i64 %i.e, %.087124
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08897 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ] ; 6 uses
  %.08996 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.08897
  %i.t = load double, ptr %gep, align 8, !tbaa !34 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897
  store double %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %.08996)
  %i.w = add nuw nsw i64 %.08897, 1               ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.w
  %i.x = load double, ptr %gep.1, align 8, !tbaa !34 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  store double %i.x, ptr %i.y, align 8, !tbaa !34
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.v)
  %i.aa = add nuw nsw i64 %.08897, 2              ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aa
  %i.ab = load double, ptr %gep.2, align 8, !tbaa !34 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa
  store double %i.ab, ptr %i.ac, align 8, !tbaa !34
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.z)
  %i.ae = add nuw nsw i64 %.08897, 3              ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae
  %i.af = load double, ptr %gep.3, align 8, !tbaa !34 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae
  store double %i.af, ptr %i.ag, align 8, !tbaa !34
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ad) ; 3 uses
  %i.ai = add nuw nsw i64 %.08897, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !110

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.08897.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %.08996.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08897.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.08897.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.08996.epil = phi double [ %i.al, %.lr.ph.epil ], [ %.08996.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.08897.epil
  %i.aj = load double, ptr %gep.epil, align 8, !tbaa !34 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897.epil
  store double %i.aj, ptr %i.ak, align 8, !tbaa !34
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %.08996.epil) ; 2 uses
  %i.am = add nuw nsw i64 %.08897.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.al, %.lr.ph.epil ] ; 4 uses
  %i.an = fcmp une double %.lcssa, 0.000000e+00
  br i1 %i.an, label %.lr.ph101.preheader, label %._crit_edge.thread

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %.lcssa)
  %i.ap = tail call double @SUNRsqrt(double noundef %i.ao) #7 ; 2 uses
  %i.aq = fcmp ugt double %i.o, 0.000000e+00
  %i.ar = fsub double %i.o, %i.ap
  %i.as = fneg double %.lcssa
  %i.at = fadd double %i.o, %i.ap
  %i.au = fdiv double %i.as, %i.at
  %i.av = select i1 %i.aq, double %i.au, double %i.ar ; 4 uses
  %i.aw = fmul double %i.av, %i.av                ; 2 uses
  %i.ax = fmul double %i.aw, 2.000000e+00
  %i.ay = fadd double %.lcssa, %i.aw
  %i.az = fdiv double %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double %i.az, ptr %i.ba, align 8, !tbaa !34
  %min.iters.check162 = icmp ult i64 %i.f, 2
  br i1 %min.iters.check162, label %.lr.ph101.preheader175, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph101.preheader
  %n.vec164 = and i64 %i.f, -2                    ; 2 uses
  %i.bb = or i64 %i.f, 1
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body167 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index168
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %wide.load169 = load <2 x double>, ptr %i.bd, align 8, !tbaa !34
  %i.be = fdiv <2 x double> %wide.load169, %broadcast.splat166
  store <2 x double> %i.be, ptr %i.bd, align 8, !tbaa !34
  %index.next170 = add nuw i64 %index168, 2       ; 2 uses
  %i.bf = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.bf, label %middle.block171, label %vector.body167, !llvm.loop !112

middle.block171:                                  ; preds = %vector.body167
  %cmp.n172 = icmp eq i64 %i.f, %n.vec164
  br i1 %cmp.n172, label %.lr.ph118, label %.lr.ph101.preheader175

.lr.ph101.preheader175:                           ; preds = %.lr.ph101.preheader, %middle.block171
  %.199.ph = phi i64 [ 1, %.lr.ph101.preheader ], [ %i.bb, %middle.block171 ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader175, %.lr.ph101
  %.199 = phi i64 [ %i.bj, %.lr.ph101 ], [ %.199.ph, %.lr.ph101.preheader175 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.199 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !34
  %i.bi = fdiv double %i.bh, %i.av
  store double %i.bi, ptr %i.bg, align 8, !tbaa !34
  %i.bj = add nuw nsw i64 %.199, 1                ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bj, %indvars.iv
  br i1 %exitcond129.not, label %.lr.ph118, label %.lr.ph101, !llvm.loop !113

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double 0.000000e+00, ptr %i.bk, align 8, !tbaa !34
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph101, %middle.block171, %._crit_edge.thread
  %i.bl = icmp sgt i64 %i.p, 0
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  %xtraiter179 = and i64 %indvars.iv, 3           ; 3 uses
  %i.bn = icmp ult i64 %5, 3
  %unroll_iter184 = and i64 %indvars.iv, -4
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter179, 0
  %min.iters.check148 = icmp ult i64 %indvars.iv, 4
  %n.vec150 = and i64 %indvars.iv, -4             ; 3 uses
  %cmp.n159 = icmp eq i64 %indvars.iv, %n.vec150
  %xtraiter186 = and i64 %indvars.iv, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph118, %._crit_edge115
  %.0116 = phi i64 [ %.087124, %.lr.ph118 ], [ %i.dp, %._crit_edge115 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0116
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %invariant.gep102 = getelementptr [8 x i8], ptr %i.bp, i64 %.087124 ; 10 uses
  br i1 %i.bl, label %.lr.ph107.preheader, label %._crit_edge115

.lr.ph107.preheader:                              ; preds = %bb.c
  br i1 %i.bn, label %.lr.ph107.epil.preheader, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %.2105 = phi i64 [ %i.cj, %.lr.ph107 ], [ 0, %.lr.ph107.preheader ] ; 6 uses
  %.190104 = phi double [ %i.ci, %.lr.ph107 ], [ 0.000000e+00, %.lr.ph107.preheader ]
  %niter185 = phi i64 [ %niter185.next.3, %.lr.ph107 ], [ 0, %.lr.ph107.preheader ]
  %gep103 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105
  %i.bq = load double, ptr %gep103, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105
  %i.bs = load double, ptr %i.br, align 8, !tbaa !34
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bs, double %.190104)
  %i.bu = or disjoint i64 %.2105, 1               ; 2 uses
  %gep103.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.bu
  %i.bv = load double, ptr %gep103.1, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bu
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !34
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bx, double %i.bt)
  %i.bz = or disjoint i64 %.2105, 2               ; 2 uses
  %gep103.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.bz
  %i.ca = load double, ptr %gep103.2, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bz
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !34
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cc, double %i.by)
  %i.ce = or disjoint i64 %.2105, 3               ; 2 uses
  %gep103.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.ce
  %i.cf = load double, ptr %gep103.3, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ce
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !34
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ch, double %i.cd) ; 3 uses
  %i.cj = add nuw nsw i64 %.2105, 4               ; 2 uses
  %niter185.next.3 = add i64 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %.lr.ph114.unr-lcssa, label %.lr.ph107, !llvm.loop !114

.lr.ph114.unr-lcssa:                              ; preds = %.lr.ph107
  br i1 %lcmp.mod181.not, label %.lr.ph114, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph114.unr-lcssa, %.lr.ph107.preheader
  %.2105.epil.init = phi i64 [ 0, %.lr.ph107.preheader ], [ %i.cj, %.lr.ph114.unr-lcssa ]
  %.190104.epil.init = phi double [ 0.000000e+00, %.lr.ph107.preheader ], [ %i.ci, %.lr.ph114.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %.2105.epil = phi i64 [ %i.co, %.lr.ph107.epil ], [ %.2105.epil.init, %.lr.ph107.epil.preheader ] ; 3 uses
  %.190104.epil = phi double [ %i.cn, %.lr.ph107.epil ], [ %.190104.epil.init, %.lr.ph107.epil.preheader ]
  %epil.iter180 = phi i64 [ %epil.iter180.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ]
  %gep103.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105.epil
  %i.ck = load double, ptr %gep103.epil, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105.epil
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !34
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cm, double %.190104.epil) ; 2 uses
  %i.co = add nuw nsw i64 %.2105.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %.lr.ph114, label %.lr.ph107.epil, !llvm.loop !115

.lr.ph114:                                        ; preds = %.lr.ph107.epil, %.lr.ph114.unr-lcssa
  %.lcssa176 = phi double [ %i.ci, %.lr.ph114.unr-lcssa ], [ %i.cn, %.lr.ph107.epil ]
  %i.cp = load double, ptr %i.bm, align 8, !tbaa !34
  %i.cq = fneg double %i.cp
  %i.cr = fmul double %.lcssa176, %i.cq           ; 4 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph114
  %scevgep = getelementptr i8, ptr %i.bp, i64 %i.d
  %bound0 = icmp ult ptr %invariant.gep102, %scevgep146
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck145
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index152 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load153 = load <2 x double>, ptr %i.cs, align 8, !tbaa !34, !alias.scope !126
  %wide.load154 = load <2 x double>, ptr %i.ct, align 8, !tbaa !34, !alias.scope !126
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %index152 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load155 = load <2 x double>, ptr %i.cu, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  %wide.load156 = load <2 x double>, ptr %i.cv, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load153, <2 x double> %wide.load155)
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load154, <2 x double> %wide.load156)
  store <2 x double> %i.cw, ptr %i.cu, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  %index.next157 = add nuw i64 %index152, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.cy, label %middle.block158, label %vector.body151, !llvm.loop !119

middle.block158:                                  ; preds = %vector.body151
  br i1 %cmp.n159, label %._crit_edge115, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck145, %.lr.ph114, %middle.block158
  %.3112.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph114 ], [ %n.vec150, %middle.block158 ] ; 5 uses
  br i1 %lcmp.mod187.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112.ph
  %i.da = load double, ptr %i.cz, align 8, !tbaa !34
  %gep111.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112.ph ; 2 uses
  %i.db = load double, ptr %gep111.prol, align 8, !tbaa !34
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.da, double %i.db)
  store double %i.dc, ptr %gep111.prol, align 8, !tbaa !34
  %i.dd = or disjoint i64 %.3112.ph, 1
  br label %scalar.ph147.prol.loopexit

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %.3112.unr = phi i64 [ %.3112.ph, %scalar.ph147.preheader ], [ %i.dd, %scalar.ph147.prol ]
  %i.de = icmp eq i64 %5, %.3112.ph
  br i1 %i.de, label %._crit_edge115, label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %.3112 = phi i64 [ %i.do, %scalar.ph147 ], [ %.3112.unr, %scalar.ph147.prol.loopexit ] ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112
  %i.dg = load double, ptr %i.df, align 8, !tbaa !34
  %gep111 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112 ; 2 uses
  %i.dh = load double, ptr %gep111, align 8, !tbaa !34
  %i.di = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.dg, double %i.dh)
  store double %i.di, ptr %gep111, align 8, !tbaa !34
  %i.dj = add nuw nsw i64 %.3112, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !34
  %gep111.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.dj ; 2 uses
  %i.dm = load double, ptr %gep111.1, align 8, !tbaa !34
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.dl, double %i.dm)
  store double %i.dn, ptr %gep111.1, align 8, !tbaa !34
  %i.do = add nuw nsw i64 %.3112, 2               ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %i.do, %indvars.iv
  br i1 %exitcond131.not.1, label %._crit_edge115, label %scalar.ph147, !llvm.loop !120

._crit_edge115:                                   ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147, %middle.block158, %bb.c
  %i.dp = add nuw nsw i64 %.0116, 1               ; 2 uses
  %exitcond132.not = icmp eq i64 %i.dp, %2
  br i1 %exitcond132.not, label %._crit_edge119, label %bb.c, !llvm.loop !121

._crit_edge119:                                   ; preds = %._crit_edge115
  %i.dq = icmp sge i64 %.087124, %i.c
  %brmerge = or i1 %i.dq, %i.q
  br i1 %brmerge, label %.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %._crit_edge119
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.preheader
  %i.dr = add i64 %i.j, %i.m
  %i.ds = add i64 %i.dr, -1
  %diff.check = icmp ult i64 %i.ds, 31
  br i1 %diff.check, label %.lr.ph123.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.dt = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = or disjoint i64 %index, 1               ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <2 x double>, ptr %i.dv, align 8, !tbaa !34
  %wide.load144 = load <2 x double>, ptr %i.dw, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.du ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x double> %wide.load, ptr %i.dx, align 8, !tbaa !34
  store <2 x double> %wide.load144, ptr %i.dy, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph123.preheader174

.lr.ph123.preheader174:                           ; preds = %vector.memcheck, %.lr.ph123.preheader, %middle.block
  %.4122.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph123.preheader ], [ %i.dt, %middle.block ] ; 4 uses
  %i.ea = sub i64 %indvars.iv, %.4122.ph
  %i.eb = sub i64 %5, %.4122.ph
  %xtraiter188 = and i64 %i.ea, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol

.lr.ph123.prol:                                   ; preds = %.lr.ph123.preheader174, %.lr.ph123.prol
  %.4122.prol = phi i64 [ %i.ee, %.lr.ph123.prol ], [ %.4122.ph, %.lr.ph123.preheader174 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.prol ], [ 0, %.lr.ph123.preheader174 ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122.prol
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !34
  %gep121.prol = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.4122.prol
  store double %i.ed, ptr %gep121.prol, align 8, !tbaa !34
  %i.ee = add nuw nsw i64 %.4122.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter188
  br i1 %prol.iter.cmp.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol, !llvm.loop !123

.lr.ph123.prol.loopexit:                          ; preds = %.lr.ph123.prol, %.lr.ph123.preheader174
  %.4122.unr = phi i64 [ %.4122.ph, %.lr.ph123.preheader174 ], [ %i.ee, %.lr.ph123.prol ]
  %i.ef = icmp ult i64 %i.eb, 3
  br i1 %i.ef, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123
  %.4122 = phi i64 [ %i.er, %.lr.ph123 ], [ %.4122.unr, %.lr.ph123.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !34
  %gep121 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.4122
  store double %i.eh, ptr %gep121, align 8, !tbaa !34
  %i.ei = add nuw nsw i64 %.4122, 1               ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !34
  %gep121.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ei
  store double %i.ek, ptr %gep121.1, align 8, !tbaa !34
  %i.el = add nuw nsw i64 %.4122, 2               ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !34
  %gep121.2 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.el
  store double %i.en, ptr %gep121.2, align 8, !tbaa !34
  %i.eo = add nuw nsw i64 %.4122, 3               ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !34
  %gep121.3 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.eo
  store double %i.eq, ptr %gep121.3, align 8, !tbaa !34
  %i.er = add nuw nsw i64 %.4122, 4               ; 2 uses
  %exitcond134.not.3 = icmp eq i64 %i.er, %indvars.iv
  br i1 %exitcond134.not.3, label %.loopexit, label %.lr.ph123, !llvm.loop !124

.loopexit:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123, %middle.block, %._crit_edge119
  %i.es = add nuw nsw i64 %.087124, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond135.not = icmp eq i64 %i.es, %2
  br i1 %exitcond135.not, label %._crit_edge127, label %bb.b, !llvm.loop !125

._crit_edge127:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @DenseORMQR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 15 uses
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
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !34
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !34
  store <2 x double> %wide.load9, ptr %i.n, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !128

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
  %i.q = load double, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !34
  %i.s = add nuw nsw i64 %.04854.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !129

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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !34
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04854.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.04854.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !34
  %i.ac = add nuw nsw i64 %.04854.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !34
  %i.ag = add nuw nsw i64 %.04854.i, 2            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !34
  %i.ak = add nuw nsw i64 %.04854.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !34
  %i.ao = add nuw nsw i64 %.04854.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond.not.i.3, label %.preheader53.i, label %.lr.ph.i, !llvm.loop !130

.preheader.i:                                     ; preds = %.lr.ph56.preheader.i, %.preheader53.i
  br i1 %i.g, label %.lr.ph66.preheader.i, label %denseORMQR.exit

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
  br i1 %i.ay, label %.lr.ph66.i, label %denseORMQR.exit, !llvm.loop !9

.lr.ph66.i:                                       ; preds = %.loopexit.i, %.lr.ph66.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph66.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.aq, %.lr.ph66.preheader.i ] ; 6 uses
  %.065.in.i = phi i64 [ %.065.i, %.loopexit.i ], [ %i.f, %.lr.ph66.preheader.i ] ; 3 uses
  %i.az = add i64 %i.av, %indvar                  ; 4 uses
  %i.ba = shl i64 %indvar, 3
  %scevgep11 = getelementptr i8, ptr %i.aw, i64 %i.ba
  %.065.i = add nsw i64 %.065.in.i, -1            ; 7 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.065.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !34
  %i.bd = getelementptr [8 x i8], ptr %3, i64 %.065.i ; 6 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !34 ; 3 uses
  %i.bf = sub nsw i64 %i.d, %.065.i               ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph59.i.preheader, label %._crit_edge.i

end_hunk_2
