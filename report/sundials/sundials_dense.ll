inline.NumInlined: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@SUNDlsMat_densePOTRS:bb.a
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw) ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !18
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !18
  %i.ch = fneg double %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc) ; 3 uses
  store double %i.ci, ptr %i.bn, align 8, !tbaa !18
  %.1.1 = add nuw nsw i64 %.156, 2                ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %.1.1, %1
  br i1 %exitcond65.not.1, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.lr.ph62
  %i.cj = phi double [ %.promoted, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph58.prol.loopexit ], [ %i.ci, %.lr.ph58 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.15060
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060
  %i.cn = fdiv double %i.cj, %i.cl
  store double %i.cn, ptr %i.cm, align 8, !tbaa !18
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
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
  %i.c = add i64 %1, -1                           ; 7 uses
  %i.d = shl i64 %1, 3
  %i.e = add i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %.loopexit
  %indvars.iv = phi i64 [ %1, %.lr.ph130 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %.090128 = phi i64 [ 0, %.lr.ph130 ], [ %i.ex, %.loopexit ] ; 19 uses
  %i.f = sub i64 %i.c, %.090128
  %i.g = sub i64 %i.c, %.090128                   ; 2 uses
  %i.h = sub i64 %i.c, %.090128                   ; 4 uses
  %i.i = sub i64 %1, %.090128
  %i.j = shl i64 %i.i, 3
  %scevgep151 = getelementptr i8, ptr %4, i64 %i.j
  %i.k = sub i64 %i.c, %.090128                   ; 3 uses
  %i.l = shl i64 %.090128, 3
  %i.m = sub i64 %i.l, %i.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.090128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.090128 ; 12 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !18 ; 5 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !18
  %i.s = sub nsw i64 %1, %.090128                 ; 2 uses
  %i.t = icmp slt i64 %i.s, 2                     ; 2 uses
  br i1 %i.t, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.u = sub i64 %i.e, %.090128
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.091101 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 6 uses
  %.092100 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.091101
  %i.w = load double, ptr %gep, align 8, !tbaa !18 ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.091101
  store double %i.w, ptr %i.x, align 8, !tbaa !18
  %i.y = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %.092100)
  %i.z = add nuw nsw i64 %.091101, 1              ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.z
  %i.aa = load double, ptr %gep.1, align 8, !tbaa !18 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  store double %i.aa, ptr %i.ab, align 8, !tbaa !18
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.y)
  %i.ad = add nuw nsw i64 %.091101, 2             ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad
  %i.ae = load double, ptr %gep.2, align 8, !tbaa !18 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ad
  store double %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ac)
  %i.ah = add nuw nsw i64 %.091101, 3             ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ah
  %i.ai = load double, ptr %gep.3, align 8, !tbaa !18 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  store double %i.ai, ptr %i.aj, align 8, !tbaa !18
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ag) ; 3 uses
  %i.al = add nuw nsw i64 %.091101, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.091101.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.al, %._crit_edge.unr-lcssa ]
  %.092100.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.091101.epil = phi i64 [ %i.ap, %.lr.ph.epil ], [ %.091101.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.092100.epil = phi double [ %i.ao, %.lr.ph.epil ], [ %.092100.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.091101.epil
  %i.am = load double, ptr %gep.epil, align 8, !tbaa !18 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.091101.epil
  store double %i.am, ptr %i.an, align 8, !tbaa !18
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %.092100.epil) ; 2 uses
  %i.ap = add nuw nsw i64 %.091101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ak, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ] ; 4 uses
  %i.aq = fcmp une double %.lcssa, 0.000000e+00
  br i1 %i.aq, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %._crit_edge
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %.lcssa) ; 2 uses
  %i.as = fcmp ugt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.d, label %.lr.ph105.preheader

bb.d:                                             ; preds = %bb.c
  %i.at = tail call double @sqrt(double noundef %i.ar) #6
  br label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %bb.d, %bb.c
  %i.au = phi double [ %i.at, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.av = fcmp ugt double %i.r, 0.000000e+00
  %i.aw = fsub double %i.r, %i.au
  %i.ax = fneg double %.lcssa
  %i.ay = fadd double %i.r, %i.au
  %i.az = fdiv double %i.ax, %i.ay
  %i.ba = select i1 %i.av, double %i.az, double %i.aw ; 4 uses
  %i.bb = fmul double %i.ba, %i.ba                ; 2 uses
  %i.bc = fmul double %i.bb, 2.000000e+00
  %i.bd = fadd double %.lcssa, %i.bb
  %i.be = fdiv double %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.090128
  store double %i.be, ptr %i.bf, align 8, !tbaa !18
  %min.iters.check167 = icmp ult i64 %i.h, 2
  br i1 %min.iters.check167, label %.lr.ph105.preheader180, label %vector.ph168

vector.ph168:                                     ; preds = %.lr.ph105.preheader
  %n.vec169 = and i64 %i.h, -2                    ; 2 uses
  %i.bg = or i64 %i.h, 1
  %broadcast.splatinsert170 = insertelement <2 x double> poison, double %i.ba, i64 0
  %broadcast.splat171 = shufflevector <2 x double> %broadcast.splatinsert170, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph168
  %index173 = phi i64 [ 0, %vector.ph168 ], [ %index.next175, %vector.body172 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index173
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %wide.load174 = load <2 x double>, ptr %i.bi, align 8, !tbaa !18
  %i.bj = fdiv <2 x double> %wide.load174, %broadcast.splat171
  store <2 x double> %i.bj, ptr %i.bi, align 8, !tbaa !18
  %index.next175 = add nuw i64 %index173, 2       ; 2 uses
  %i.bk = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.bk, label %middle.block176, label %vector.body172, !llvm.loop !101

middle.block176:                                  ; preds = %vector.body172
  %cmp.n177 = icmp eq i64 %i.h, %n.vec169
  br i1 %cmp.n177, label %.lr.ph122, label %.lr.ph105.preheader180

.lr.ph105.preheader180:                           ; preds = %.lr.ph105.preheader, %middle.block176
  %.1103.ph = phi i64 [ 1, %.lr.ph105.preheader ], [ %i.bg, %middle.block176 ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader180, %.lr.ph105
  %.1103 = phi i64 [ %i.bo, %.lr.ph105 ], [ %.1103.ph, %.lr.ph105.preheader180 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1103 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !18
  %i.bn = fdiv double %i.bm, %i.ba
  store double %i.bn, ptr %i.bl, align 8, !tbaa !18
  %i.bo = add nuw nsw i64 %.1103, 1               ; 2 uses
  %exitcond133.not = icmp eq i64 %i.bo, %indvars.iv
  br i1 %exitcond133.not, label %.lr.ph122, label %.lr.ph105, !llvm.loop !102

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.090128
  store double 0.000000e+00, ptr %i.bp, align 8, !tbaa !18
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph105, %middle.block176, %._crit_edge.thread
  %5 = icmp sgt i64 %i.s, 0
  %6 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.090128
  br i1 %5, label %.lr.ph122.a, label %._crit_edge123

.lr.ph122.a:                                      ; preds = %.lr.ph122
  %xtraiter184 = and i64 %indvars.iv, 3           ; 3 uses
  %i.bq = icmp ult i64 %i.f, 3
  %unroll_iter189 = and i64 %indvars.iv, -4
  %lcmp.mod186.not = icmp eq i64 %xtraiter184, 0
  %lcmp.mod188 = icmp ne i64 %xtraiter184, 0
  %min.iters.check153 = icmp ult i64 %indvars.iv, 4
  %n.vec155 = and i64 %indvars.iv, -4             ; 3 uses
  %cmp.n164 = icmp eq i64 %indvars.iv, %n.vec155
  %xtraiter191 = and i64 %indvars.iv, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph122.a, %._crit_edge119
  %.0120 = phi i64 [ %i.dt, %._crit_edge119 ], [ %.090128, %.lr.ph122.a ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0120
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %invariant.gep106 = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.090128 ; 10 uses
  br i1 %i.bq, label %.lr.ph111.epil.preheader, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.e, %.lr.ph111
  %.2109 = phi i64 [ %i.cm, %.lr.ph111 ], [ 0, %bb.e ] ; 6 uses
  %.193108 = phi double [ %i.cl, %.lr.ph111 ], [ 0.000000e+00, %bb.e ]
  %niter190 = phi i64 [ %niter190.next.3, %.lr.ph111 ], [ 0, %bb.e ]
  %gep107 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.2109
  %i.bt = load double, ptr %gep107, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2109
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !18
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bv, double %.193108)
  %i.bx = or disjoint i64 %.2109, 1               ; 2 uses
  %gep107.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.bx
  %i.by = load double, ptr %gep107.1, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bx
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.by, double %i.ca, double %i.bw)
  %i.cc = or disjoint i64 %.2109, 2               ; 2 uses
  %gep107.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.cc
  %i.cd = load double, ptr %gep107.2, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cc
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cf, double %i.cb)
  %i.ch = or disjoint i64 %.2109, 3               ; 2 uses
  %gep107.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.ch
  %i.ci = load double, ptr %gep107.3, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ch
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !18
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ck, double %i.cg) ; 3 uses
  %i.cm = add nuw nsw i64 %.2109, 4               ; 2 uses
  %niter190.next.3 = add i64 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i64 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.lr.ph118.unr-lcssa, label %.lr.ph111

.lr.ph118.unr-lcssa:                              ; preds = %.lr.ph111
  br i1 %lcmp.mod186.not, label %.lr.ph118, label %.lr.ph111.epil.preheader

.lr.ph111.epil.preheader:                         ; preds = %.lr.ph118.unr-lcssa, %bb.e
  %.2109.epil.init = phi i64 [ 0, %bb.e ], [ %i.cm, %.lr.ph118.unr-lcssa ]
  %.193108.epil.init = phi double [ 0.000000e+00, %bb.e ], [ %i.cl, %.lr.ph118.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph111.epil

.lr.ph111.epil:                                   ; preds = %.lr.ph111.epil, %.lr.ph111.epil.preheader
  %.2109.epil = phi i64 [ %i.cr, %.lr.ph111.epil ], [ %.2109.epil.init, %.lr.ph111.epil.preheader ] ; 3 uses
  %.193108.epil = phi double [ %i.cq, %.lr.ph111.epil ], [ %.193108.epil.init, %.lr.ph111.epil.preheader ]
  %epil.iter185 = phi i64 [ %epil.iter185.next, %.lr.ph111.epil ], [ 0, %.lr.ph111.epil.preheader ]
  %gep107.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.2109.epil
  %i.cn = load double, ptr %gep107.epil, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2109.epil
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cp, double %.193108.epil) ; 2 uses
  %i.cr = add nuw nsw i64 %.2109.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %.lr.ph118, label %.lr.ph111.epil, !llvm.loop !103

.lr.ph118:                                        ; preds = %.lr.ph111.epil, %.lr.ph118.unr-lcssa
  %.lcssa181 = phi double [ %i.cl, %.lr.ph118.unr-lcssa ], [ %i.cq, %.lr.ph111.epil ]
  %i.cs = load double, ptr %6, align 8, !tbaa !18
  %i.ct = fneg double %i.cs
  %i.cu = fmul double %.lcssa181, %i.ct           ; 4 uses
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph118
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.d
  %bound0 = icmp ult ptr %invariant.gep106, %scevgep151
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck150
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index157 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load158 = load <2 x double>, ptr %i.cv, align 8, !tbaa !18, !alias.scope !104
  %wide.load159 = load <2 x double>, ptr %i.cw, align 8, !tbaa !18, !alias.scope !104
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %index157 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %wide.load160 = load <2 x double>, ptr %i.cx, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %wide.load161 = load <2 x double>, ptr %i.cy, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load158, <2 x double> %wide.load160)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load159, <2 x double> %wide.load161)
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %index.next162 = add nuw i64 %index157, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.db, label %middle.block163, label %vector.body156, !llvm.loop !109

middle.block163:                                  ; preds = %vector.body156
  br i1 %cmp.n164, label %._crit_edge119, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck150, %.lr.ph118, %middle.block163
  %.3116.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph118 ], [ %n.vec155, %middle.block163 ] ; 5 uses
  %i.dc = add i64 %.090128, %.3116.ph
  br i1 %lcmp.mod192.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3116.ph
  %i.de = load double, ptr %i.dd, align 8, !tbaa !18
  %gep115.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.3116.ph ; 2 uses
  %i.df = load double, ptr %gep115.prol, align 8, !tbaa !18
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.de, double %i.df)
  store double %i.dg, ptr %gep115.prol, align 8, !tbaa !18
  %i.dh = or disjoint i64 %.3116.ph, 1
  br label %scalar.ph152.prol.loopexit

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %.3116.unr = phi i64 [ %.3116.ph, %scalar.ph152.preheader ], [ %i.dh, %scalar.ph152.prol ]
  %i.di = icmp eq i64 %i.c, %i.dc
  br i1 %i.di, label %._crit_edge119, label %scalar.ph152

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %.3116 = phi i64 [ %i.ds, %scalar.ph152 ], [ %.3116.unr, %scalar.ph152.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3116
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !18
  %gep115 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %.3116 ; 2 uses
  %i.dl = load double, ptr %gep115, align 8, !tbaa !18
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dk, double %i.dl)
  store double %i.dm, ptr %gep115, align 8, !tbaa !18
  %i.dn = add nuw nsw i64 %.3116, 1               ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !18
  %gep115.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep106, i64 %i.dn ; 2 uses
  %i.dq = load double, ptr %gep115.1, align 8, !tbaa !18
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dp, double %i.dq)
  store double %i.dr, ptr %gep115.1, align 8, !tbaa !18
  %i.ds = add nuw nsw i64 %.3116, 2               ; 2 uses
  %exitcond135.not.1 = icmp eq i64 %i.ds, %indvars.iv
  br i1 %exitcond135.not.1, label %._crit_edge119, label %scalar.ph152, !llvm.loop !110

._crit_edge119:                                   ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block163
  %i.dt = add nuw nsw i64 %.0120, 1               ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond136.not, label %._crit_edge123, label %bb.e

._crit_edge123:                                   ; preds = %._crit_edge119, %.lr.ph122
  %i.du = icmp sge i64 %.090128, %i.c
  %brmerge = or i1 %i.du, %i.t
  br i1 %brmerge, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %._crit_edge123
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph127.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.preheader
  %i.dv = add i64 %i.m, %i.p
  %i.dw = add i64 %i.dv, -1
  %diff.check = icmp ult i64 %i.dw, 31
  br i1 %diff.check, label %.lr.ph127.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.dx = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = or disjoint i64 %index, 1               ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <2 x double>, ptr %i.dz, align 8, !tbaa !18
  %wide.load149 = load <2 x double>, ptr %i.ea, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dy ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> %wide.load, ptr %i.eb, align 8, !tbaa !18
  store <2 x double> %wide.load149, ptr %i.ec, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph127.preheader179

.lr.ph127.preheader179:                           ; preds = %vector.memcheck, %.lr.ph127.preheader, %middle.block
  %.4126.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph127.preheader ], [ %i.dx, %middle.block ] ; 4 uses
  %i.ee = sub i64 %indvars.iv, %.4126.ph
  %i.ef = add i64 %.090128, %.4126.ph
  %i.eg = sub i64 %i.c, %i.ef
  %xtraiter193 = and i64 %i.ee, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol

.lr.ph127.prol:                                   ; preds = %.lr.ph127.preheader179, %.lr.ph127.prol
  %.4126.prol = phi i64 [ %i.ej, %.lr.ph127.prol ], [ %.4126.ph, %.lr.ph127.preheader179 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph127.prol ], [ 0, %.lr.ph127.preheader179 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4126.prol
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !18
  %gep125.prol = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.4126.prol
  store double %i.ei, ptr %gep125.prol, align 8, !tbaa !18
  %i.ej = add nuw nsw i64 %.4126.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter193
  br i1 %prol.iter.cmp.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol, !llvm.loop !112

.lr.ph127.prol.loopexit:                          ; preds = %.lr.ph127.prol, %.lr.ph127.preheader179
  %.4126.unr = phi i64 [ %.4126.ph, %.lr.ph127.preheader179 ], [ %i.ej, %.lr.ph127.prol ]
  %i.ek = icmp ult i64 %i.eg, 3
  br i1 %i.ek, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127
  %.4126 = phi i64 [ %i.ew, %.lr.ph127 ], [ %.4126.unr, %.lr.ph127.prol.loopexit ] ; 6 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4126
  %i.em = load double, ptr %i.el, align 8, !tbaa !18
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.4126
  store double %i.em, ptr %gep125, align 8, !tbaa !18
  %i.en = add nuw nsw i64 %.4126, 1               ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !18
  %gep125.1 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.en
  store double %i.ep, ptr %gep125.1, align 8, !tbaa !18
  %i.eq = add nuw nsw i64 %.4126, 2               ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !18
  %gep125.2 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.eq
  store double %i.es, ptr %gep125.2, align 8, !tbaa !18
  %i.et = add nuw nsw i64 %.4126, 3               ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !18
  %gep125.3 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.et
  store double %i.ev, ptr %gep125.3, align 8, !tbaa !18
  %i.ew = add nuw nsw i64 %.4126, 4               ; 2 uses
  %exitcond138.not.3 = icmp eq i64 %i.ew, %indvars.iv
  br i1 %exitcond138.not.3, label %.loopexit, label %.lr.ph127, !llvm.loop !113

.loopexit:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127, %middle.block, %._crit_edge123
  %i.ex = add nuw nsw i64 %.090128, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond139.not = icmp eq i64 %i.ex, %2
  br i1 %exitcond139.not, label %._crit_edge131, label %bb.b

._crit_edge131:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDlsMat_DenseORMQR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
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
  br i1 %or.cond, label %.lr.ph.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !18
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !18
  store <2 x double> %wide.load9, ptr %i.n, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader53.i, label %.lr.ph.i.preheader27

.lr.ph.i.preheader27:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.04854.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader27, %.lr.ph.i.prol
  %.04854.i.prol = phi i64 [ %i.s, %.lr.ph.i.prol ], [ %.04854.i.ph, %.lr.ph.i.preheader27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader27 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !18
  %i.s = add nuw nsw i64 %.04854.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !115

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader27
  %.04854.i.unr = phi i64 [ %.04854.i.ph, %.lr.ph.i.preheader27 ], [ %i.s, %.lr.ph.i.prol ]
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !18
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04854.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.04854.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !18
  %i.ac = add nuw nsw i64 %.04854.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = add nuw nsw i64 %.04854.i, 2            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !18
  %i.ak = add nuw nsw i64 %.04854.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !18
  %i.ao = add nuw nsw i64 %.04854.i, 4            ; 2 uses
end_hunk_0
