Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_dense?download=true
inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@densePOTRS:bb.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader74, label %vector.ph

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
  %indvars.iv = phi i64 [ %1, %.lr.ph126 ], [ %indvars.iv.next, %.loopexit ] ; 12 uses
  %.087124 = phi i64 [ 0, %.lr.ph126 ], [ %i.et, %.loopexit ] ; 15 uses
  %i.f = sub i64 %i.c, %.087124                   ; 5 uses
  %i.g = sub i64 %i.c, %.087124                   ; 4 uses
  %i.h = shl i64 %indvars.iv, 3
  %scevgep146 = getelementptr i8, ptr %4, i64 %i.h
  %i.i = sub i64 %i.c, %.087124                   ; 3 uses
  %i.j = shl i64 %.087124, 3
  %i.k = sub i64 %i.j, %i.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.087124
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.087124 ; 12 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !34 ; 5 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !34
  %i.q = sub nsw i64 %1, %.087124                 ; 2 uses
  %i.r = icmp slt i64 %i.q, 2                     ; 2 uses
  br i1 %i.r, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.s = sub i64 %i.e, %.087124
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08897 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 6 uses
  %.08996 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.08897
  %i.u = load double, ptr %gep, align 8, !tbaa !34 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897
  store double %i.u, ptr %i.v, align 8, !tbaa !34
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %.08996)
  %i.x = add nuw nsw i64 %.08897, 1               ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  %i.y = load double, ptr %gep.1, align 8, !tbaa !34 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  store double %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.w)
  %i.ab = add nuw nsw i64 %.08897, 2              ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  %i.ac = load double, ptr %gep.2, align 8, !tbaa !34 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ab
  store double %i.ac, ptr %i.ad, align 8, !tbaa !34
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.aa)
  %i.af = add nuw nsw i64 %.08897, 3              ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ag = load double, ptr %gep.3, align 8, !tbaa !34 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.af
  store double %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ae) ; 3 uses
  %i.aj = add nuw nsw i64 %.08897, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !110

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.08897.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.08996.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08897.epil = phi i64 [ %i.an, %.lr.ph.epil ], [ %.08897.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.08996.epil = phi double [ %i.am, %.lr.ph.epil ], [ %.08996.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.08897.epil
  %i.ak = load double, ptr %gep.epil, align 8, !tbaa !34 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897.epil
  store double %i.ak, ptr %i.al, align 8, !tbaa !34
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %.08996.epil) ; 2 uses
  %i.an = add nuw nsw i64 %.08897.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.am, %.lr.ph.epil ] ; 4 uses
  %i.ao = fcmp une double %.lcssa, 0.000000e+00
  br i1 %i.ao, label %.lr.ph101.preheader, label %._crit_edge.thread

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %.lcssa)
  %i.aq = tail call double @SUNRsqrt(double noundef %i.ap) #7 ; 2 uses
  %i.ar = fcmp ugt double %i.p, 0.000000e+00
  %i.as = fsub double %i.p, %i.aq
  %i.at = fneg double %.lcssa
  %i.au = fadd double %i.p, %i.aq
  %i.av = fdiv double %i.at, %i.au
  %i.aw = select i1 %i.ar, double %i.av, double %i.as ; 4 uses
  %i.ax = fmul double %i.aw, %i.aw                ; 2 uses
  %i.ay = fmul double %i.ax, 2.000000e+00
  %i.az = fadd double %.lcssa, %i.ax
  %i.ba = fdiv double %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double %i.ba, ptr %i.bb, align 8, !tbaa !34
  %min.iters.check162 = icmp ult i64 %i.g, 2
  br i1 %min.iters.check162, label %.lr.ph101.preheader175, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph101.preheader
  %n.vec164 = and i64 %i.g, -2                    ; 2 uses
  %i.bc = or i64 %i.g, 1
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body167 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index168
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %wide.load169 = load <2 x double>, ptr %i.be, align 8, !tbaa !34
  %i.bf = fdiv <2 x double> %wide.load169, %broadcast.splat166
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !34
  %index.next170 = add nuw i64 %index168, 2       ; 2 uses
  %i.bg = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.bg, label %middle.block171, label %vector.body167, !llvm.loop !112

middle.block171:                                  ; preds = %vector.body167
  %cmp.n172 = icmp eq i64 %i.g, %n.vec164
  br i1 %cmp.n172, label %.lr.ph118, label %.lr.ph101.preheader175

.lr.ph101.preheader175:                           ; preds = %.lr.ph101.preheader, %middle.block171
  %.199.ph = phi i64 [ 1, %.lr.ph101.preheader ], [ %i.bc, %middle.block171 ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader175, %.lr.ph101
  %.199 = phi i64 [ %i.bk, %.lr.ph101 ], [ %.199.ph, %.lr.ph101.preheader175 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.199 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !34
  %i.bj = fdiv double %i.bi, %i.aw
  store double %i.bj, ptr %i.bh, align 8, !tbaa !34
  %i.bk = add nuw nsw i64 %.199, 1                ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bk, %indvars.iv
  br i1 %exitcond129.not, label %.lr.ph118, label %.lr.ph101, !llvm.loop !113

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !34
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph101, %middle.block171, %._crit_edge.thread
  %i.bm = icmp sgt i64 %i.q, 0
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  %xtraiter179 = and i64 %indvars.iv, 3           ; 3 uses
  %i.bo = icmp ult i64 %i.f, 3
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
  %.0116 = phi i64 [ %.087124, %.lr.ph118 ], [ %i.dq, %._crit_edge115 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0116
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32 ; 2 uses
  %invariant.gep102 = getelementptr [8 x i8], ptr %i.bq, i64 %.087124 ; 10 uses
  br i1 %i.bm, label %.lr.ph107.preheader, label %._crit_edge115

.lr.ph107.preheader:                              ; preds = %bb.c
  br i1 %i.bo, label %.lr.ph107.epil.preheader, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %.2105 = phi i64 [ %i.ck, %.lr.ph107 ], [ 0, %.lr.ph107.preheader ] ; 6 uses
  %.190104 = phi double [ %i.cj, %.lr.ph107 ], [ 0.000000e+00, %.lr.ph107.preheader ]
  %niter185 = phi i64 [ %niter185.next.3, %.lr.ph107 ], [ 0, %.lr.ph107.preheader ]
  %gep103 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105
  %i.br = load double, ptr %gep103, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !34
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %.190104)
  %i.bv = or disjoint i64 %.2105, 1               ; 2 uses
  %gep103.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.bv
  %i.bw = load double, ptr %gep103.1, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !34
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bu)
  %i.ca = or disjoint i64 %.2105, 2               ; 2 uses
  %gep103.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.ca
  %i.cb = load double, ptr %gep103.2, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ca
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !34
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.bz)
  %i.cf = or disjoint i64 %.2105, 3               ; 2 uses
  %gep103.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.cf
  %i.cg = load double, ptr %gep103.3, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !34
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %i.ce) ; 3 uses
  %i.ck = add nuw nsw i64 %.2105, 4               ; 2 uses
  %niter185.next.3 = add i64 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %.lr.ph114.unr-lcssa, label %.lr.ph107, !llvm.loop !114

.lr.ph114.unr-lcssa:                              ; preds = %.lr.ph107
  br i1 %lcmp.mod181.not, label %.lr.ph114, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph114.unr-lcssa, %.lr.ph107.preheader
  %.2105.epil.init = phi i64 [ 0, %.lr.ph107.preheader ], [ %i.ck, %.lr.ph114.unr-lcssa ]
  %.190104.epil.init = phi double [ 0.000000e+00, %.lr.ph107.preheader ], [ %i.cj, %.lr.ph114.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %.2105.epil = phi i64 [ %i.cp, %.lr.ph107.epil ], [ %.2105.epil.init, %.lr.ph107.epil.preheader ] ; 3 uses
  %.190104.epil = phi double [ %i.co, %.lr.ph107.epil ], [ %.190104.epil.init, %.lr.ph107.epil.preheader ]
  %epil.iter180 = phi i64 [ %epil.iter180.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ]
  %gep103.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105.epil
  %i.cl = load double, ptr %gep103.epil, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105.epil
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !34
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cn, double %.190104.epil) ; 2 uses
  %i.cp = add nuw nsw i64 %.2105.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %.lr.ph114, label %.lr.ph107.epil, !llvm.loop !115

.lr.ph114:                                        ; preds = %.lr.ph107.epil, %.lr.ph114.unr-lcssa
  %.lcssa176 = phi double [ %i.cj, %.lr.ph114.unr-lcssa ], [ %i.co, %.lr.ph107.epil ]
  %i.cq = load double, ptr %i.bn, align 8, !tbaa !34
  %i.cr = fneg double %i.cq
  %i.cs = fmul double %.lcssa176, %i.cr           ; 4 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph114
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.d
  %bound0 = icmp ult ptr %invariant.gep102, %scevgep146
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck145
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index152 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load153 = load <2 x double>, ptr %i.ct, align 8, !tbaa !34, !alias.scope !126
  %wide.load154 = load <2 x double>, ptr %i.cu, align 8, !tbaa !34, !alias.scope !126
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %index152 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load155 = load <2 x double>, ptr %i.cv, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  %wide.load156 = load <2 x double>, ptr %i.cw, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load153, <2 x double> %wide.load155)
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load154, <2 x double> %wide.load156)
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !34, !alias.scope !127, !noalias !126
  %index.next157 = add nuw i64 %index152, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.cz, label %middle.block158, label %vector.body151, !llvm.loop !119

middle.block158:                                  ; preds = %vector.body151
  br i1 %cmp.n159, label %._crit_edge115, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck145, %.lr.ph114, %middle.block158
  %.3112.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph114 ], [ %n.vec150, %middle.block158 ] ; 5 uses
  br i1 %lcmp.mod187.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112.ph
  %i.db = load double, ptr %i.da, align 8, !tbaa !34
  %gep111.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112.ph ; 2 uses
  %i.dc = load double, ptr %gep111.prol, align 8, !tbaa !34
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.db, double %i.dc)
  store double %i.dd, ptr %gep111.prol, align 8, !tbaa !34
  %i.de = or disjoint i64 %.3112.ph, 1
  br label %scalar.ph147.prol.loopexit

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %.3112.unr = phi i64 [ %.3112.ph, %scalar.ph147.preheader ], [ %i.de, %scalar.ph147.prol ]
  %i.df = icmp eq i64 %i.f, %.3112.ph
  br i1 %i.df, label %._crit_edge115, label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %.3112 = phi i64 [ %i.dp, %scalar.ph147 ], [ %.3112.unr, %scalar.ph147.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !34
  %gep111 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112 ; 2 uses
  %i.di = load double, ptr %gep111, align 8, !tbaa !34
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dh, double %i.di)
  store double %i.dj, ptr %gep111, align 8, !tbaa !34
  %i.dk = add nuw nsw i64 %.3112, 1               ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !34
  %gep111.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.dk ; 2 uses
  %i.dn = load double, ptr %gep111.1, align 8, !tbaa !34
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dm, double %i.dn)
  store double %i.do, ptr %gep111.1, align 8, !tbaa !34
  %i.dp = add nuw nsw i64 %.3112, 2               ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %i.dp, %indvars.iv
  br i1 %exitcond131.not.1, label %._crit_edge115, label %scalar.ph147, !llvm.loop !120

._crit_edge115:                                   ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147, %middle.block158, %bb.c
  %i.dq = add nuw nsw i64 %.0116, 1               ; 2 uses
  %exitcond132.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond132.not, label %._crit_edge119, label %bb.c, !llvm.loop !121

._crit_edge119:                                   ; preds = %._crit_edge115
  %i.dr = icmp sge i64 %.087124, %i.c
  %brmerge = or i1 %i.dr, %i.r
  br i1 %brmerge, label %.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %._crit_edge119
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.preheader
  %i.ds = add i64 %i.k, %i.n
  %i.dt = add i64 %i.ds, -1
  %diff.check = icmp ult i64 %i.dt, 31
  br i1 %diff.check, label %.lr.ph123.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.du = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = or disjoint i64 %index, 1               ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !34
  %wide.load144 = load <2 x double>, ptr %i.dx, align 8, !tbaa !34
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dv ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x double> %wide.load, ptr %i.dy, align 8, !tbaa !34
  store <2 x double> %wide.load144, ptr %i.dz, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph123.preheader174

.lr.ph123.preheader174:                           ; preds = %vector.memcheck, %.lr.ph123.preheader, %middle.block
  %.4122.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph123.preheader ], [ %i.du, %middle.block ] ; 4 uses
  %i.eb = sub i64 %indvars.iv, %.4122.ph
  %i.ec = sub i64 %i.f, %.4122.ph
  %xtraiter188 = and i64 %i.eb, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol

.lr.ph123.prol:                                   ; preds = %.lr.ph123.preheader174, %.lr.ph123.prol
  %.4122.prol = phi i64 [ %i.ef, %.lr.ph123.prol ], [ %.4122.ph, %.lr.ph123.preheader174 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.prol ], [ 0, %.lr.ph123.preheader174 ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122.prol
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !34
  %gep121.prol = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4122.prol
  store double %i.ee, ptr %gep121.prol, align 8, !tbaa !34
  %i.ef = add nuw nsw i64 %.4122.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter188
  br i1 %prol.iter.cmp.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol, !llvm.loop !123

.lr.ph123.prol.loopexit:                          ; preds = %.lr.ph123.prol, %.lr.ph123.preheader174
  %.4122.unr = phi i64 [ %.4122.ph, %.lr.ph123.preheader174 ], [ %i.ef, %.lr.ph123.prol ]
  %i.eg = icmp ult i64 %i.ec, 3
  br i1 %i.eg, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123
  %.4122 = phi i64 [ %i.es, %.lr.ph123 ], [ %.4122.unr, %.lr.ph123.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !34
  %gep121 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4122
  store double %i.ei, ptr %gep121, align 8, !tbaa !34
  %i.ej = add nuw nsw i64 %.4122, 1               ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !34
  %gep121.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ej
  store double %i.el, ptr %gep121.1, align 8, !tbaa !34
  %i.em = add nuw nsw i64 %.4122, 2               ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !34
  %gep121.2 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.em
  store double %i.eo, ptr %gep121.2, align 8, !tbaa !34
  %i.ep = add nuw nsw i64 %.4122, 3               ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !34
  %gep121.3 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ep
  store double %i.er, ptr %gep121.3, align 8, !tbaa !34
  %i.es = add nuw nsw i64 %.4122, 4               ; 2 uses
  %exitcond134.not.3 = icmp eq i64 %i.es, %indvars.iv
  br i1 %exitcond134.not.3, label %.loopexit, label %.lr.ph123, !llvm.loop !124

.loopexit:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123, %middle.block, %._crit_edge119
  %i.et = add nuw nsw i64 %.087124, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond135.not = icmp eq i64 %i.et, %2
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

end_hunk_0
