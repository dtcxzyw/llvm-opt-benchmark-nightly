Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 160
begin_hunk_0_@_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !1484

bb.r:                                             ; preds = %bb.m
  %i.fb = load double, ptr %i.cu, align 8, !tbaa !378
  %i.fc = tail call noundef double @llvm.fabs.f64(double %i.fb)
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.q, %bb.r
  %.0.i.i.i = phi double [ %i.fc, %bb.r ], [ %i.dw, %bb.q ], [ %.lcssa77.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.ez, %.lr.ph85.i.i.i.i.i ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.050 ; 6 uses
  %i.fe = icmp eq i64 %.050, 0
  br i1 %i.fe, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !378
  %i.fg = tail call noundef double @llvm.fabs.f64(double %i.ff) ; 3 uses
  %.not = icmp eq i64 %.050, 1
  br i1 %.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i18.preheader:                     ; preds = %bb.s
  %xtraiter83 = and i64 %i.co, 3                  ; 3 uses
  %i.fh = icmp ult i64 %i.cp, 3
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i18.epil.preheader, label %.lr.ph.i.i.i.i.i18.preheader.new

.lr.ph.i.i.i.i.i18.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i18.preheader
  %unroll_iter = and i64 %i.co, -4
  br label %.lr.ph.i.i.i.i.i18

.lr.ph.i.i.i.i.i18:                               ; preds = %.lr.ph.i.i.i.i.i18, %.lr.ph.i.i.i.i.i18.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i18.preheader.new ], [ %i.gf, %.lr.ph.i.i.i.i.i18 ] ; 5 uses
  %.02223.i.i.i.i.i = phi double [ %i.fg, %.lr.ph.i.i.i.i.i18.preheader.new ], [ %i.ge, %.lr.ph.i.i.i.i.i18 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i18.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i18 ]
  %i.fi = mul nsw i64 %.01724.i.i.i.i.i, %i.bn
  %i.fj = getelementptr [8 x i8], ptr %i.fd, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !378
  %i.fl = tail call noundef double @llvm.fabs.f64(double %i.fk)
  %i.fm = fadd double %.02223.i.i.i.i.i, %i.fl
  %i.fn = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.fo = mul nsw i64 %i.fn, %i.bn
  %i.fp = getelementptr [8 x i8], ptr %i.fd, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !378
  %i.fr = tail call noundef double @llvm.fabs.f64(double %i.fq)
  %i.fs = fadd double %i.fm, %i.fr
  %i.ft = add nuw nsw i64 %.01724.i.i.i.i.i, 2
  %i.fu = mul nsw i64 %i.ft, %i.bn
  %i.fv = getelementptr [8 x i8], ptr %i.fd, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !378
  %i.fx = tail call noundef double @llvm.fabs.f64(double %i.fw)
  %i.fy = fadd double %i.fs, %i.fx
  %i.fz = add nuw nsw i64 %.01724.i.i.i.i.i, 3
  %i.ga = mul nsw i64 %i.fz, %i.bn
  %i.gb = getelementptr [8 x i8], ptr %i.fd, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !378
  %i.gd = tail call noundef double @llvm.fabs.f64(double %i.gc)
  %i.ge = fadd double %i.fy, %i.gd                ; 3 uses
  %i.gf = add nuw nsw i64 %.01724.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i18, !llvm.loop !1485

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i18
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i18.epil.preheader

.lr.ph.i.i.i.i.i18.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i18.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i18.preheader ], [ %i.gf, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.fg, %.lr.ph.i.i.i.i.i18.preheader ], [ %i.ge, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter83, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.i.i.i18.epil

.lr.ph.i.i.i.i.i18.epil:                          ; preds = %.lr.ph.i.i.i.i.i18.epil, %.lr.ph.i.i.i.i.i18.epil.preheader
  %.01724.i.i.i.i.i.epil = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i18.epil ], [ %.01724.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i18.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.epil = phi double [ %i.gk, %.lr.ph.i.i.i.i.i18.epil ], [ %.02223.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i18.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i18.epil ], [ 0, %.lr.ph.i.i.i.i.i18.epil.preheader ]
  %i.gg = mul nsw i64 %.01724.i.i.i.i.i.epil, %i.bn
  %i.gh = getelementptr [8 x i8], ptr %i.fd, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !378
  %i.gj = tail call noundef double @llvm.fabs.f64(double %i.gi)
  %i.gk = fadd double %.02223.i.i.i.i.i.epil, %i.gj ; 2 uses
  %i.gl = add nuw nsw i64 %.01724.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter83
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i18.epil, !llvm.loop !1486

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i18.epil, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit, %bb.s
  %.0.i.i.i17 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit ], [ %i.fg, %bb.s ], [ %i.ge, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ], [ %i.gk, %.lr.ph.i.i.i.i.i18.epil ]
  %i.gm = fadd double %.0.i.i.i, %.0.i.i.i17      ; 3 uses
  %i.gn = fcmp ogt double %i.gm, %i.cn
  br i1 %i.gn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit
  store double %i.gm, ptr %i.bk, align 8, !tbaa !1477
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit
  %i.go = phi double [ %i.gm, %bb.t ], [ %i.cn, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit ]
  %i.gp = add nuw nsw i64 %.050, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1487
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.611", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !376  ; 10 uses
  %i.c = icmp slt i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = add nsw i64 %i.b, -2                     ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !801  ; 5 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !800    ; 2 uses
  %min.iters.check593 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check593, label %scalar.ph592.preheader, label %vector.ph594

vector.ph594:                                     ; preds = %.lr.ph.i
  %n.vec595 = and i64 %i.i, 9223372036854775800   ; 3 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next598, %vector.body596 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph594 ], [ %vec.ind.next, %vector.body596 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index597 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %vec.ind, ptr %i.l, align 4, !tbaa !32
  store <4 x i32> %step.add, ptr %i.m, align 4, !tbaa !32
  %index.next598 = add nuw i64 %index597, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.n = icmp eq i64 %index.next598, %n.vec595
  br i1 %i.n, label %middle.block599, label %vector.body596, !llvm.loop !1488

middle.block599:                                  ; preds = %vector.body596
  %cmp.n600 = icmp eq i64 %i.i, %n.vec595
  br i1 %cmp.n600, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph592.preheader

scalar.ph592.preheader:                           ; preds = %.lr.ph.i, %middle.block599
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec595, %middle.block599 ]
  br label %scalar.ph592

scalar.ph592:                                     ; preds = %scalar.ph592.preheader, %scalar.ph592
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph592 ], [ %indvars.iv.i.ph, %scalar.ph592.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.p, ptr %i.o, align 4, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %exitcond.not.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph592, !llvm.loop !1489

_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph592, %middle.block599, %bb.b
  %i.q = icmp eq i64 %i.b, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit
  store i32 2, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.d:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !365
  %i.s = load double, ptr %i.r, align 8, !tbaa !378 ; 2 uses
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.f:                                             ; preds = %bb.d
  %i.u = fcmp olt double %i.s, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.i:                                             ; preds = %bb.ae
  %exitcond433.not = icmp eq i64 %.pre-phi, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond433.not, label %.thread410, label %bb.j, !llvm.loop !1491

bb.j:                                             ; preds = %.preheader, %bb.i
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.i ] ; 7 uses
  %.0116461 = phi i64 [ 0, %.preheader ], [ %.pre-phi, %bb.i ] ; 45 uses
  %.0118460 = phi i8 [ 1, %.preheader ], [ %.4, %bb.i ] ; 6 uses
  %.0120459 = phi i1 [ false, %.preheader ], [ %.2122, %bb.i ] ; 3 uses
  %.0123458 = phi i1 [ undef, %.preheader ], [ %.1124, %bb.i ] ; 8 uses
  %i.v = add i64 %.0116461, -2                    ; 2 uses
  %i.w = add i64 %.0116461, -1                    ; 5 uses
  %i.x = xor i64 %indvar, -1
  %i.y = add i64 %i.b, %i.x                       ; 3 uses
  %i.z = shl i64 %.0116461, 4
  %i.aa = shl i64 %.0116461, 3
  %i.ab = shl i64 %.0116461, 3
  %i.ac = xor i64 %indvar, -1
  %i.ad = add i64 %i.b, %i.ac                     ; 2 uses
  %i.ae = shl i64 %.0116461, 3                    ; 2 uses
  %i.af = add i64 %i.ae, 8
  %i.ag = add i64 %.0116461, 1
  %i.ah = xor i64 %indvar, -1
  %i.ai = add i64 %.0116461, 2
  %i.aj = shl i64 %.0116461, 4                    ; 2 uses
  %i.ak = add i64 %.0116461, 2
  %i.al = shl i64 %.0116461, 3                    ; 2 uses
  %i.am = shl i64 %.0116461, 3
  %i.an = shl i64 %.0116461, 4
  %i.ao = sub nsw i64 %i.b, %.0116461             ; 3 uses
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !376, !noalias !1492 ; 14 uses
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !377, !noalias !1492
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.aq, i64 %i.ap)
  %i.ar = sub nsw i64 %.sroa.speculated.i.i.i.i, %i.ao
  %i.as = load ptr, ptr %0, align 8, !tbaa !365, !noalias !1492 ; 13 uses
  %i.at = add nsw i64 %i.ap, 1                    ; 4 uses
  %i.au = mul nsw i64 %i.ar, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.au ; 4 uses
  %i.aw = icmp sgt i64 %i.ao, 1                   ; 4 uses
  br i1 %i.aw, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.j
  %i.ax = trunc i64 %.0116461 to i32
  %i.ay = load ptr, ptr %1, align 8, !tbaa !800
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.0116461
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !32
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %i.ba = load double, ptr %i.av, align 8, !tbaa !378
  %i.bb = call noundef double @llvm.fabs.f64(double %i.ba) ; 2 uses
  %xtraiter = and i64 %i.y, 1
  %i.bc = icmp eq i64 %i.g, %indvar
  br i1 %i.bc, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02125.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.br, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.bd = phi double [ %i.bb, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bq, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.be = mul nsw i64 %.02125.i.i.i.i, %i.at
  %i.bf = getelementptr [8 x i8], ptr %i.av, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !378
  %i.bh = call noundef double @llvm.fabs.f64(double %i.bg) ; 2 uses
  %i.bi = fcmp ogt double %i.bh, %i.bd            ; 2 uses
  %.sroa.0.1.i.i = select i1 %i.bi, i64 %.02125.i.i.i.i, i64 %.sroa.0.0.i.i
  %i.bj = select i1 %i.bi, double %i.bh, double %i.bd ; 2 uses
  %i.bk = add nuw nsw i64 %.02125.i.i.i.i, 1      ; 2 uses
  %i.bl = mul nsw i64 %i.bk, %i.at
  %i.bm = getelementptr [8 x i8], ptr %i.av, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !378
  %i.bo = call noundef double @llvm.fabs.f64(double %i.bn) ; 2 uses
  %i.bp = fcmp ogt double %i.bo, %i.bj            ; 2 uses
  %.sroa.0.1.i.i.1 = select i1 %i.bp, i64 %i.bk, i64 %.sroa.0.1.i.i ; 3 uses
  %i.bq = select i1 %i.bp, double %i.bo, double %i.bj ; 2 uses
  %i.br = add nuw nsw i64 %.02125.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1495

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02125.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.br, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.bb, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod616 = trunc i64 %i.y to i1
  call void @llvm.assume(i1 %lcmp.mod616)
  %i.bs = mul nsw i64 %.02125.i.i.i.i.epil.init, %i.at
  %i.bt = getelementptr [8 x i8], ptr %i.av, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !378
  %i.bv = call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ogt double %i.bv, %.epil.init
  %.sroa.0.1.i.i.epil = select i1 %i.bw, i64 %.02125.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 7 uses
  %i.bx = add i64 %.sroa.0.1.i.i.lcssa, %.0116461 ; 13 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = load ptr, ptr %1, align 8, !tbaa !800
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0116461
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !32
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, label %bb.k

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.pre = add nuw nsw i64 %.0116461, 1
  br label %.loopexit

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.cb = xor i64 %i.bx, -1
  %i.cc = add i64 %i.b, %i.cb                     ; 6 uses
  %i.cd = getelementptr [8 x i8], ptr %i.as, i64 %.0116461 ; 5 uses
  %i.ce = getelementptr [8 x i8], ptr %i.as, i64 %i.bx ; 5 uses
  %.not414 = icmp eq i64 %.0116461, 0
  br i1 %.not414, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check578 = icmp ugt i64 %.0116461, 5
  %ident.check569.not = icmp eq i64 %i.ap, 1
  %or.cond602 = select i1 %min.iters.check578, i1 %ident.check569.not, i1 false
  br i1 %or.cond602, label %vector.memcheck570, label %.lr.ph.i.i.i.i.i.i.preheader609

vector.memcheck570:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep571 = getelementptr i8, ptr %i.as, i64 %i.z
  %scevgep572 = getelementptr i8, ptr %i.as, i64 %i.aa
  %i.cf = shl i64 %i.bx, 3
  %scevgep573 = getelementptr i8, ptr %scevgep572, i64 %i.cf
  %bound0574 = icmp ult ptr %i.cd, %scevgep573
  %bound1575 = icmp ult ptr %i.ce, %scevgep571
  %found.conflict576 = and i1 %bound0574, %bound1575
  br i1 %found.conflict576, label %.lr.ph.i.i.i.i.i.i.preheader609, label %vector.ph579

vector.ph579:                                     ; preds = %vector.memcheck570
  %n.vec580 = and i64 %.0116461, -4               ; 3 uses
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph579
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next587, %vector.body581 ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %index582 ; 3 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %index582 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load583 = load <2 x double>, ptr %i.cg, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  %wide.load584 = load <2 x double>, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.ch, align 8, !tbaa !378, !alias.scope !1499
  %wide.load586 = load <2 x double>, ptr %i.cj, align 8, !tbaa !378, !alias.scope !1499
  store <2 x double> %wide.load585, ptr %i.cg, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  store <2 x double> %wide.load586, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  store <2 x double> %wide.load583, ptr %i.ch, align 8, !tbaa !378, !alias.scope !1499
  store <2 x double> %wide.load584, ptr %i.cj, align 8, !tbaa !378, !alias.scope !1499
  %index.next587 = add nuw i64 %index582, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next587, %n.vec580
  br i1 %i.ck, label %middle.block588, label %vector.body581, !llvm.loop !1501

middle.block588:                                  ; preds = %vector.body581
  %cmp.n589 = icmp eq i64 %.0116461, %n.vec580
  br i1 %cmp.n589, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader609

.lr.ph.i.i.i.i.i.i.preheader609:                  ; preds = %vector.memcheck570, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block588
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck570 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec580, %middle.block588 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter617 = and i64 %.0116461, 1
  %lcmp.mod618.not = icmp eq i64 %xtraiter617, 0
  br i1 %lcmp.mod618.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader609
  %i.cl = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.ap  ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cl ; 2 uses
  %i.co = load double, ptr %i.cm, align 8, !tbaa !378
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !378
  store double %i.cp, ptr %i.cm, align 8, !tbaa !378
  store double %i.co, ptr %i.cn, align 8, !tbaa !378
  %i.cq = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader609
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader609 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cr = icmp eq i64 %.0116461, %.neg
  br i1 %i.cr, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.cs = mul nsw i64 %.05.i.i.i.i.i.i, %i.ap     ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cs ; 2 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !378
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !378
  store double %i.cw, ptr %i.ct, align 8, !tbaa !378
  store double %i.cv, ptr %i.cu, align 8, !tbaa !378
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cy = mul nsw i64 %i.cx, %i.ap                ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cy ; 2 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !378
  %i.dc = load double, ptr %i.da, align 8, !tbaa !378
  store double %i.dc, ptr %i.cz, align 8, !tbaa !378
  store double %i.db, ptr %i.da, align 8, !tbaa !378
  %i.dd = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.dd, %.0116461
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1502

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block588, %bb.k
  %i.de = mul nsw i64 %i.ap, %.0116461
  %i.df = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.de
  %i.dg = sub nsw i64 %i.ap, %i.cc                ; 4 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg ; 11 uses
  %i.di = mul i64 %i.bx, %i.ap
  %i.dj = getelementptr [8 x i8], ptr %i.as, i64 %i.di
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.dg ; 10 uses
  %i.dl = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dm = and i64 %i.dl, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dn = lshr exact i64 %i.dl, 3
  %i.do = and i64 %i.dn, 1
  %i.dp = call i64 @llvm.smin.i64(i64 %i.do, i64 %i.cc)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

end_hunk_0
