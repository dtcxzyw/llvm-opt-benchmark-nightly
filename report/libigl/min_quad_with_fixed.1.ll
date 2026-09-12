Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.1?download=true
inline.NumInlined: 11154
inline.NumDeleted: 5577
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Eigen3LLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.j
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.cs, %bb.j ], [ %i.de, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.co, %bb.j ], [ %i.cz, %.lr.ph.i.i.i.i.i ]
  %i.cu = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.cv = icmp samesign ugt i64 %i.cm, %i.cl
  br i1 %i.cv, label %bb.k, label %bb.l

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.j ] ; 3 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.j ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %i.co, %bb.j ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.de, %.lr.ph.i.i.i.i.i ], [ %i.cs, %bb.j ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.05480.i.i.i.i.i
  %i.cx = load <2 x double>, ptr %i.cw, align 1, !tbaa !40
  %i.cy = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cx)
  %i.cz = fadd <2 x double> %.07278.i.i.i.i.i, %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.054.in79.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load <2 x double>, ptr %i.db, align 1, !tbaa !40
  %i.dd = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dc)
  %i.de = fadd <2 x double> %.07577.i.i.i.i.i, %i.dd ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.df = icmp samesign ult i64 %.054.i.i.i.i.i, %i.cl
  br i1 %i.df, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !312

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !40
  %i.di = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dh)
  %i.dj = fadd <2 x double> %i.cu, %i.di
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i, %bb.i
  %.274.i.i.i.i.i = phi <2 x double> [ %i.co, %bb.i ], [ %i.dj, %bb.k ], [ %i.cu, %._crit_edge.i.i.i.i.i ]
  %i.dk = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i) ; 2 uses
  %i.dl = icmp slt i64 %i.cm, %i.ci
  br i1 %i.dl, label %.lr.ph85.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit

.lr.ph85.i.i.i.i.i:                               ; preds = %bb.l, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph85.i.i.i.i.i ], [ %i.cm, %bb.l ] ; 2 uses
  %.182.i.i.i.i.i = phi double [ %i.dp, %.lr.ph85.i.i.i.i.i ], [ %i.dk, %bb.l ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.05283.i.i.i.i.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !45
  %i.do = tail call noundef double @llvm.fabs.f64(double %i.dn)
  %i.dp = fadd double %.182.i.i.i.i.i, %i.do      ; 2 uses
  %i.dq = add nuw nsw i64 %.05283.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dq, %i.ci
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !313

bb.m:                                             ; preds = %bb.h
  %i.dr = load double, ptr %i.ck, align 8, !tbaa !45
  %i.ds = tail call noundef double @llvm.fabs.f64(double %i.dr)
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit: ; preds = %.lr.ph85.i.i.i.i.i, %bb.l, %bb.m
  %.0.i.i.i = phi double [ %i.ds, %bb.m ], [ %i.dk, %bb.l ], [ %i.dp, %.lr.ph85.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.052 ; 6 uses
  %i.du = icmp eq i64 %.052, 0
  br i1 %i.du, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit
  %i.dv = load double, ptr %i.dt, align 8, !tbaa !45
  %i.dw = tail call noundef double @llvm.fabs.f64(double %i.dv) ; 3 uses
  %.not = icmp eq i64 %.052, 1
  br i1 %.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %bb.n
  %xtraiter80 = and i64 %i.ce, 3                  ; 3 uses
  %i.dx = icmp ult i64 %i.cf, 3
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i20.epil.preheader, label %.lr.ph.i.i.i.i.i20.preheader.new

.lr.ph.i.i.i.i.i20.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %unroll_iter = and i64 %i.ce, -4
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20, %.lr.ph.i.i.i.i.i20.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.new ], [ %i.ev, %.lr.ph.i.i.i.i.i20 ] ; 5 uses
  %.02223.i.i.i.i.i = phi double [ %i.dw, %.lr.ph.i.i.i.i.i20.preheader.new ], [ %i.eu, %.lr.ph.i.i.i.i.i20 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i20.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i20 ]
  %i.dy = mul nsw i64 %.01724.i.i.i.i.i, %i.bx
  %i.dz = getelementptr [8 x i8], ptr %i.dt, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !45
  %i.eb = tail call noundef double @llvm.fabs.f64(double %i.ea)
  %i.ec = fadd double %.02223.i.i.i.i.i, %i.eb
  %i.ed = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.ee = mul nsw i64 %i.ed, %i.bx
  %i.ef = getelementptr [8 x i8], ptr %i.dt, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !45
  %i.eh = tail call noundef double @llvm.fabs.f64(double %i.eg)
  %i.ei = fadd double %i.ec, %i.eh
  %i.ej = add nuw nsw i64 %.01724.i.i.i.i.i, 2
  %i.ek = mul nsw i64 %i.ej, %i.bx
  %i.el = getelementptr [8 x i8], ptr %i.dt, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !45
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em)
  %i.eo = fadd double %i.ei, %i.en
  %i.ep = add nuw nsw i64 %.01724.i.i.i.i.i, 3
  %i.eq = mul nsw i64 %i.ep, %i.bx
  %i.er = getelementptr [8 x i8], ptr %i.dt, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !45
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fadd double %i.eo, %i.et                ; 3 uses
  %i.ev = add nuw nsw i64 %.01724.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i20, !llvm.loop !314

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i20
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i20.epil.preheader

.lr.ph.i.i.i.i.i20.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.ev, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.dw, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.eu, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter80, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.i.i.i20.epil

.lr.ph.i.i.i.i.i20.epil:                          ; preds = %.lr.ph.i.i.i.i.i20.epil, %.lr.ph.i.i.i.i.i20.epil.preheader
  %.01724.i.i.i.i.i.epil = phi i64 [ %i.fb, %.lr.ph.i.i.i.i.i20.epil ], [ %.01724.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.epil = phi double [ %i.fa, %.lr.ph.i.i.i.i.i20.epil ], [ %.02223.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i20.epil ], [ 0, %.lr.ph.i.i.i.i.i20.epil.preheader ]
  %i.ew = mul nsw i64 %.01724.i.i.i.i.i.epil, %i.bx
  %i.ex = getelementptr [8 x i8], ptr %i.dt, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !45
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey)
  %i.fa = fadd double %.02223.i.i.i.i.i.epil, %i.ez ; 2 uses
  %i.fb = add nuw nsw i64 %.01724.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter80
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i20.epil, !llvm.loop !315

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.epil, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit, %bb.n
  %.0.i.i.i19 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit ], [ %i.dw, %bb.n ], [ %i.eu, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ], [ %i.fa, %.lr.ph.i.i.i.i.i20.epil ]
  %i.fc = fadd double %.0.i.i.i, %.0.i.i.i19      ; 3 uses
  %i.fd = fcmp ogt double %i.fc, %i.cd
  br i1 %i.fd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit
  store double %i.fc, ptr %i.bu, align 8, !tbaa !317
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit
  %i.fe = phi double [ %i.fc, %bb.o ], [ %i.cd, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit ]
  %i.ff = add nuw nsw i64 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ff, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !316
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE7blockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.37", align 8   ; 12 uses
  %2 = alloca %"class.Eigen::Block.37", align 8   ; 12 uses
  %3 = alloca %"class.Eigen::TriangularView", align 8 ; 5 uses
  %4 = alloca %"class.Eigen::SelfAdjointView", align 8 ; 10 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %i.d = icmp slt i64 %i.c, 32
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.c, 3
  %i.g = and i64 %i.f, 1152921504606846960        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 128)
  %.sroa.speculated47 = select i1 %i.h, i64 8, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.064 = phi i64 [ 0, %bb.c ], [ %i.ao, %bb.h ]  ; 9 uses
  %i.w = sub nuw nsw i64 %i.c, %.064              ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.w, i64 %.sroa.speculated47) ; 5 uses
  %i.x = sub nsw i64 %i.w, %.sroa.speculated      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.y = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.064
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !20  ; 5 uses
  %i.ab = mul nsw i64 %i.aa, %.064                ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  store ptr %i.ac, ptr %1, align 8, !tbaa !55
  store i64 %.sroa.speculated, ptr %i.j, align 8, !tbaa !51
  store i64 %.sroa.speculated, ptr %i.k, align 8, !tbaa !51
  store ptr %0, ptr %i.l, align 8, !tbaa !24
  store i64 %.064, ptr %i.m, align 8, !tbaa !51
  store i64 %.064, ptr %i.n, align 8, !tbaa !51
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ad = add nuw nsw i64 %.sroa.speculated, %.064 ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ab
  store ptr %i.af, ptr %2, align 8, !tbaa !55
  store i64 %i.x, ptr %i.p, align 8, !tbaa !51
  store i64 %.sroa.speculated, ptr %i.q, align 8, !tbaa !51
  store ptr %0, ptr %i.r, align 8, !tbaa !24
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !51
  store i64 %.064, ptr %i.t, align 8, !tbaa !51
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !58
  %i.ag = mul nsw i64 %i.aa, %i.ad
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(56) %1) ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp sgt i64 %i.x, 0
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.al = load i64, ptr %i.v, align 8, !tbaa !51
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK5Eigen18TriangularViewImplIKNS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELj2ENS_5DenseEE12solveInPlaceILi2ES5_EEvRKNS_10MatrixBaseIT0_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES6_Li2ELi2ELi0ELin1EE3runERS9_RS6_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %2)
  br label %_ZNK5Eigen18TriangularViewImplIKNS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELj2ENS_5DenseEE12solveInPlaceILi2ES5_EEvRKNS_10MatrixBaseIT0_EE.exit

_ZNK5Eigen18TriangularViewImplIKNS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELj2ENS_5DenseEE12solveInPlaceILi2ES5_EEvRKNS_10MatrixBaseIT0_EE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.ah, ptr %4, align 8
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %i.aa, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !45
  call void @_ZN5Eigen28selfadjoint_product_selectorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES4_Li1ELb0EE3runERS4_RKS4_RKd(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.h

.critedge:                                        ; preds = %bb.d
  %i.an = add nuw nsw i64 %i.ai, %.064
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.loopexit

bb.h:                                             ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELj2ENS_5DenseEE12solveInPlaceILi2ES5_EEvRKNS_10MatrixBaseIT0_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ao = add nuw nsw i64 %.064, %.sroa.speculated47 ; 2 uses
  %.not = icmp slt i64 %i.ao, %i.c
  br i1 %.not, label %bb.d, label %.loopexit, !llvm.loop !320

.loopexit:                                        ; preds = %bb.h, %.critedge, %bb.b
  %.4 = phi i64 [ %i.e, %bb.b ], [ %i.an, %.critedge ], [ -1, %bb.h ]
  ret i64 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %2 = alloca %"class.Eigen::internal::const_blas_data_mapper.355", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not61 = icmp sgt i64 %i.b, 0
  br i1 %.not61, label %.lr.ph, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03262 = phi i64 [ 0, %.lr.ph ], [ %i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 11 uses
  %i.e = add nsw i64 %.03262, -1                  ; 4 uses
  %i.f = add nsw i64 %.03262, -2                  ; 2 uses
  %i.g = xor i64 %.03262, -1
  %i.h = add nsw i64 %i.b, %i.g                   ; 8 uses
  %i.i = add nuw nsw i64 %.03262, 1               ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 8 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.m = mul nsw i64 %i.l, %.03262                ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 9 uses
  %i.o = getelementptr [8 x i8], ptr %i.j, i64 %.03262 ; 14 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !45 ; 2 uses
  %i.r = icmp ne i64 %.03262, 0                   ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load double, ptr %i.o, align 8, !tbaa !45 ; 2 uses
  %i.t = fmul double %i.s, %i.s                   ; 3 uses
  %.not58 = icmp eq i64 %.03262, 1
  br i1 %.not58, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.u = icmp ult i64 %i.f, 3
  br i1 %i.u, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.e, -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01724.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02223.i.i.i.i = phi double [ %i.t, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.v = mul nsw i64 %.01724.i.i.i.i, %i.l
  %i.w = getelementptr [8 x i8], ptr %i.o, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !45 ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fadd double %.02223.i.i.i.i, %i.y
  %i.aa = add nuw nsw i64 %.01724.i.i.i.i, 1
  %i.ab = mul nsw i64 %i.aa, %i.l
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !45 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = fadd double %i.z, %i.ae
  %i.ag = add nuw nsw i64 %.01724.i.i.i.i, 2
  %i.ah = mul nsw i64 %i.ag, %i.l
  %i.ai = getelementptr [8 x i8], ptr %i.o, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = fadd double %i.af, %i.ak
  %i.am = add nuw nsw i64 %.01724.i.i.i.i, 3
  %i.an = mul nsw i64 %i.am, %i.l
  %i.ao = getelementptr [8 x i8], ptr %i.o, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = fadd double %i.al, %i.aq                ; 3 uses
  %i.as = add nuw nsw i64 %.01724.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !321

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01724.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.epil.init = phi double [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.epil = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.epil ], [ %.01724.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.epil = phi double [ %i.ax, %.lr.ph.i.i.i.i.epil ], [ %.02223.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.at = mul nsw i64 %.01724.i.i.i.i.epil, %i.l
  %i.au = getelementptr [8 x i8], ptr %i.o, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !45 ; 2 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fadd double %.02223.i.i.i.i.epil, %i.aw ; 2 uses
  %i.ay = add nuw nsw i64 %.01724.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !322

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.c
  %.0.i.i = phi double [ %i.t, %bb.c ], [ %i.ar, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.i.i.i.i.epil ]
  %i.az = fsub double %i.q, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.az, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.q, %bb.b ] ; 2 uses
  %i.ba = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.ba, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bb = call double @sqrt(double noundef %.0) #20 ; 6 uses
  store double %i.bb, ptr %i.p, align 8, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.m = sitofp i64 %.sroa.speculated.i.i.i to double
  %i.n = fmul nnan double %i.m, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i: ; preds = %bb.c, %bb.b
  %i.o = phi double [ %i.h, %bb.b ], [ %i.n, %bb.c ]
  %i.p = fmul double %i.c, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !127  ; 5 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit

.lr.ph.i:                                         ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !45
  %i.am = load double, ptr %i.ai, align 8, !tbaa !45
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !45
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !45
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = zext <2 x i1> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <2 x i64> %vec.phi182, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.bl, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.078.i = phi i64 [ %i.bk, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.bd = mul nsw i64 %.09.i, %i.v
  %i.be = getelementptr [8 x i8], ptr %i.t, i64 %.09.i
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !45
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.p
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw nsw i64 %.078.i, %i.bj          ; 2 uses
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.r
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph, !llvm.loop !604

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit: ; preds = %scalar.ph, %middle.block, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge
  %i.bm = phi i64 [ %.pre, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ]
  %.07.lcssa.i = phi i64 [ 0, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.bc, %middle.block ], [ %i.bk, %scalar.ph ] ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !48 ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bm) ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !46
  %.not.i.i = icmp eq i64 %.sroa.speculated, %i.bs
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !43
  tail call void @free(ptr noundef %i.bt) #20
  %i.bu = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.bu, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp samesign ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.bv, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.e
  %i.bx = shl nuw i64 %.sroa.speculated, 3
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #22 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ca, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.by, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %i.bq, align 8, !tbaa !43
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, %.sink.split.i.i
  store i64 %.sroa.speculated, ptr %i.br, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !110
  %.not.i.i30 = icmp eq i64 %i.bo, %i.cd
  br i1 %.not.i.i30, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.ce) #20
  %i.cf = icmp sgt i64 %i.bo, 0
  br i1 %i.cf, label %bb.i, label %.sink.split.i.i31

bb.i:                                             ; preds = %bb.h
  %i.cg = icmp samesign ugt i64 %i.bo, 2305843009213693951
  br i1 %i.cg, label %bb.j, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33

bb.j:                                             ; preds = %bb.i
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33: ; preds = %bb.i
  %i.ci = shl nuw i64 %i.bo, 3
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #22 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.k, label %.sink.split.i.i31

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cl, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i31:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33, %bb.h
  %.sink.i.i32 = phi ptr [ %i.cj, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33 ], [ null, %bb.h ]
  store ptr %.sink.i.i32, ptr %i.cb, align 8, !tbaa !71
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i31
  store i64 %i.bo, ptr %i.cc, align 8, !tbaa !110
  %i.cm = icmp slt i64 %.07.lcssa.i, %i.bo
  br i1 %i.cm, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.cn = add i64 %.07.lcssa.i, -1                ; 9 uses
  %i.co = icmp sgt i64 %.07.lcssa.i, 0
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.cp = sub i64 %i.bo, %.07.lcssa.i             ; 13 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = icmp sgt i64 %i.cp, 1
  %i.cs = add i64 %i.cp, -1                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.1294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.1395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = shl i64 %.07.lcssa.i, 3                 ; 3 uses
  %i.da = add i64 %i.cz, -8                       ; 4 uses
  %i.db = shl i64 %i.cn, 3
  %i.dc = shl i64 %i.cn, 3
  %i.dd = shl i64 %i.cn, 3
  %i.de = shl i64 %i.cn, 3
  %i.df = add i64 %i.bo, -2
  %i.dg = sub i64 %i.df, %.07.lcssa.i
  %xtraiter299 = and i64 %i.cs, 3                 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 3
  %unroll_iter = and i64 %i.cs, -4
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter299, 0
  %min.iters.check236 = icmp ugt i64 %i.cp, 3
  %n.vec238 = and i64 %i.cp, -4                   ; 3 uses
  %cmp.n243 = icmp eq i64 %i.cp, %n.vec238
  %i.di = sub i64 %i.bo, %.07.lcssa.i
  %xtraiter303 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  %i.dj = sub i64 %.07.lcssa.i, %i.bo
  %min.iters.check221 = icmp ugt i64 %i.cp, 1
  %n.vec223 = and i64 %i.cp, -2                   ; 3 uses
  %cmp.n231 = icmp eq i64 %i.cp, %n.vec223
  %i.dk = sub i64 %.07.lcssa.i, %i.bo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 5 uses
  %.0169 = phi i64 [ %i.cn, %.lr.ph ], [ %i.ot, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 18 uses
  %i.dl = shl i64 %indvar, 3
  %i.dm = sub i64 %i.da, %i.dl
  %i.dn = mul i64 %indvar, -8                     ; 2 uses
  %i.do = add i64 %i.da, %i.dn                    ; 2 uses
  %i.dp = shl i64 %indvar, 3
  %i.dq = sub i64 %i.da, %i.dp
  %i.dr = mul i64 %indvar, -8                     ; 2 uses
  %i.ds = add i64 %i.da, %i.dr                    ; 2 uses
  %.not = icmp eq i64 %.0169, %i.cn               ; 2 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.dt = load ptr, ptr %0, align 8, !tbaa !47, !noalias !645 ; 8 uses
  %i.du = load i64, ptr %i.bp, align 8, !tbaa !20, !noalias !645 ; 7 uses
  %i.dv = mul nsw i64 %i.du, %.0169
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dv ; 11 uses
  %i.dx = add nuw nsw i64 %.0169, 1               ; 4 uses
  %i.dy = mul i64 %i.du, %i.cn
  %i.dz = getelementptr [8 x i8], ptr %i.dt, i64 %i.dy ; 10 uses
  %i.ea = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.eb = and i64 %i.ea, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.eb, 0
  %i.ec = lshr exact i64 %i.ea, 3
  %i.ed = and i64 %i.ec, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ed, i64 %i.dx ; 13 uses
  %i.ee = sub nsw i64 %i.dx, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.ef = sdiv i64 %i.ee, 2                       ; 2 uses
  %i.eg = shl nsw i64 %i.ef, 1                    ; 2 uses
  %i.eh = add nsw i64 %i.eg, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not180 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not180, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check275 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check275, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ei = mul i64 %i.du, %i.dm
  %i.ej = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dt, i64 %i.ei
  %scevgep269 = getelementptr i8, ptr %i.ek, i64 %i.ej
  %i.el = mul i64 %i.de, %i.du
  %i.em = getelementptr i8, ptr %i.dt, i64 %i.el
  %scevgep270 = getelementptr i8, ptr %i.em, i64 %i.ej
  %bound0271 = icmp ult ptr %i.dw, %scevgep270
  %bound1272 = icmp ult ptr %i.dz, %scevgep269
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck268
  %n.vec277 = and i64 %.0.i.i.i.i.i.i.i, -4       ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index279 ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index279 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load280 = load <2 x double>, ptr %i.en, align 8, !tbaa !45, !alias.scope !646, !noalias !647
  %wide.load281 = load <2 x double>, ptr %i.ep, align 8, !tbaa !45, !alias.scope !646, !noalias !647
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load282 = load <2 x double>, ptr %i.eo, align 8, !tbaa !45, !alias.scope !647
  %wide.load283 = load <2 x double>, ptr %i.eq, align 8, !tbaa !45, !alias.scope !647
  store <2 x double> %wide.load282, ptr %i.en, align 8, !tbaa !45, !alias.scope !646, !noalias !647
  store <2 x double> %wide.load283, ptr %i.ep, align 8, !tbaa !45, !alias.scope !646, !noalias !647
  store <2 x double> %wide.load280, ptr %i.eo, align 8, !tbaa !45, !alias.scope !647
  store <2 x double> %wide.load281, ptr %i.eq, align 8, !tbaa !45, !alias.scope !647
  %index.next284 = add nuw i64 %index279, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.er, label %middle.block285, label %vector.body278, !llvm.loop !610

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec277
  br i1 %cmp.n286, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader293

.lr.ph.i.i.i.i.i.i.i.preheader293:                ; preds = %vector.memcheck268, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block285
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec277, %middle.block285 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader293
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.eu = load double, ptr %i.es, align 8, !tbaa !45
  %i.ev = load double, ptr %i.et, align 8, !tbaa !45
  store double %i.ev, ptr %i.es, align 8, !tbaa !45
  store double %i.eu, ptr %i.et, align 8, !tbaa !45
  %i.ew = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader293
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader293 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ex = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.ex, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !45
  %i.fb = load double, ptr %i.ez, align 8, !tbaa !45
  store double %i.fb, ptr %i.ey, align 8, !tbaa !45
  store double %i.fa, ptr %i.ez, align 8, !tbaa !45
  %i.fc = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fc ; 2 uses
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !45
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !45
  store double %i.fg, ptr %i.fd, align 8, !tbaa !45
  store double %i.ff, ptr %i.fe, align 8, !tbaa !45
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.fh, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !611

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block285, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.fi = icmp sgt i64 %i.ee, 1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %.not166 = icmp sgt i64 %i.eh, %.0169
  br i1 %.not166, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fj = add i64 %.0.i.i.i.i.i.i.i, %i.eg
  %i.fk = sub i64 %i.dx, %i.fj                    ; 3 uses
  %min.iters.check255 = icmp ult i64 %i.fk, 14
  br i1 %min.iters.check255, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.fl = mul i64 %i.du, %i.do
  %i.fm = shl i64 %i.ef, 4                        ; 2 uses
  %i.fn = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.fo = getelementptr i8, ptr %i.dt, i64 %i.fl
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fm
  %scevgep246 = getelementptr i8, ptr %i.fp, i64 %i.fn
  %scevgep247 = getelementptr i8, ptr %i.dt, i64 8
  %i.fq = add i64 %i.du, 1
  %i.fr = mul i64 %i.do, %i.fq
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.fr
  %i.fs = mul i64 %i.dd, %i.du                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.dt, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fm
  %scevgep249 = getelementptr i8, ptr %i.fu, i64 %i.fn
  %i.fv = getelementptr i8, ptr %i.dt, i64 %i.cz
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.dn
  %scevgep250 = getelementptr i8, ptr %i.fw, i64 %i.fs
  %bound0251 = icmp ult ptr %scevgep246, %scevgep250
  %bound1252 = icmp ult ptr %scevgep249, %scevgep248
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck245
end_hunk_1
begin_hunk_2_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEES9_EEvRKT_RT0_:bb.a
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fp, %bb.h ], [ %.lcssa, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.thread.i.i.i.i.i.i.i.i.i ] ; 11 uses
  %i.fq = sub nsw i64 %.lcssa, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fr = sdiv i64 %i.fq, 2
  %i.fs = shl nsw i64 %i.fr, 1                    ; 2 uses
  %i.ft = add nsw i64 %i.fs, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.fu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check88 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.fv = sub i64 %i.fa, %i.fl
  %diff.check86 = icmp ugt i64 %i.fv, -32
  %or.cond114 = or i1 %min.iters.check88, %diff.check86
  br i1 %or.cond114, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec90 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body91 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index92 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index92 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load93 = load <2 x double>, ptr %i.fx, align 8, !tbaa !45
  %wide.load94 = load <2 x double>, ptr %i.fy, align 8, !tbaa !45
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %wide.load93, ptr %i.fw, align 8, !tbaa !45
  store <2 x double> %wide.load94, ptr %i.fz, align 8, !tbaa !45
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.ga = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.ga, label %middle.block96, label %vector.body91, !llvm.loop !890

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec90
  br i1 %cmp.n97, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block96
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec90, %middle.block96 ] ; 3 uses
  %xtraiter122 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117 ] ; 3 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117 ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !45
  store double %i.gd, ptr %i.gb, align 8, !tbaa !45
  %i.ge = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !891

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader117 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gf = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !45
  store double %i.gj, ptr %i.gh, align 8, !tbaa !45
  %i.gk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gk
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !45
  store double %i.gn, ptr %i.gl, align 8, !tbaa !45
  %i.go = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.go
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !45
  store double %i.gr, ptr %i.gp, align 8, !tbaa !45
  %i.gs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gs
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !45
  store double %i.gv, ptr %i.gt, align 8, !tbaa !45
  %i.gw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gw, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !892

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block96, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = icmp sgt i64 %i.fq, 1
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = icmp slt i64 %i.ft, %.lcssa
  br i1 %i.gy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fs
  %i.ha = sub i64 %.lcssa, %i.gz                  ; 3 uses
  %min.iters.check102 = icmp ult i64 %i.ha, 8
  %i.hb = sub i64 %i.fa, %i.fl
  %diff.check100 = icmp ugt i64 %i.hb, -32
  %or.cond115 = or i1 %min.iters.check102, %diff.check100
  br i1 %or.cond115, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.ha, -4                   ; 3 uses
  %i.hc = add i64 %i.ft, %n.vec104
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next109, %vector.body105 ] ; 2 uses
  %i.hd = add i64 %i.ft, %index106                ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.hd ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load107 = load <2 x double>, ptr %i.hf, align 8, !tbaa !45
  %wide.load108 = load <2 x double>, ptr %i.hg, align 8, !tbaa !45
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <2 x double> %wide.load107, ptr %i.he, align 8, !tbaa !45
  store <2 x double> %wide.load108, ptr %i.hh, align 8, !tbaa !45
  %index.next109 = add nuw i64 %index106, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next109, %n.vec104
  br i1 %i.hi, label %middle.block110, label %vector.body105, !llvm.loop !893

middle.block110:                                  ; preds = %vector.body105
  %cmp.n111 = icmp eq i64 %i.ha, %n.vec104
  br i1 %cmp.n111, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block110
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ft, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hc, %middle.block110 ] ; 4 uses
  %i.hj = sub i64 %.lcssa, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter125 = and i64 %i.hj, 3                 ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116 ] ; 3 uses
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116 ]
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !45
  store double %i.hm, ptr %i.hk, align 8, !tbaa !45
  %i.hn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !894

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader116 ], [ %i.hn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ho = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lcssa
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.if, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !45
  store double %i.hs, ptr %i.hq, align 8, !tbaa !45
  %i.ht = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ht
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !45
  store double %i.hw, ptr %i.hu, align 8, !tbaa !45
  %i.hx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.hx
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.hx
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !45
  store double %i.ia, ptr %i.hy, align 8, !tbaa !45
  %i.ib = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ib
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ib
  %i.ie = load double, ptr %i.id, align 8, !tbaa !45
  store double %i.ie, ptr %i.ic, align 8, !tbaa !45
  %i.if = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.if, %.lcssa
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !895

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ii = load <2 x double>, ptr %i.ih, align 1, !tbaa !40
  store <2 x double> %i.ii, ptr %i.ig, align 16, !tbaa !40
  %i.ij = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ik = icmp slt i64 %i.ij, %i.ft
  br i1 %i.ik, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !896

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block110, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  invoke void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit unwind label %bb.l

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.il = load i64, ptr %i.dx, align 8, !tbaa !48 ; 2 uses
  %i.im = icmp slt i64 %.lcssa, %i.il
  %.pre63 = load i64, ptr %i.fd, align 8, !tbaa !46 ; 2 uses
  br i1 %i.im, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.in = sub nuw nsw i64 %i.il, %.lcssa          ; 5 uses
  %i.io = sub nsw i64 %.pre63, %i.in
  %i.ip = load ptr, ptr %2, align 8, !tbaa !43, !noalias !912
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.io ; 4 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = and i64 %i.ir, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.it = lshr exact i64 %i.ir, 3
  %i.iu = and i64 %i.it, 1
  %i.iv = call i64 @llvm.smin.i64(i64 %i.iu, i64 %i.in)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iv, %bb.j ], [ %i.in, %bb.i ] ; 8 uses
  %i.iw = sub i64 %i.in, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ix = sdiv i64 %i.iw, 2                       ; 2 uses
  %i.iy = shl nsw i64 %i.ix, 1                    ; 2 uses
  %i.iz = add i64 %i.iy, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ja = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ja, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.iq, i8 0, i64 %i.jb, i1 false), !tbaa !45
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jc = icmp sgt i64 %i.iw, 1
  br i1 %i.jc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jd = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.iq, i64 %i.jd
  %i.je = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.iz, i64 %i.je)
  %i.jf = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.jg = add i64 %smax.i, %i.jf
  %i.jh = shl i64 %i.jg, 3
  %i.ji = and i64 %i.jh, -16
  %i.jj = add i64 %i.ji, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.jj, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jk = icmp slt i64 %i.iz, %i.in
  br i1 %i.jk, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = shl i64 %i.ix, 4
  %i.jm = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.jn = getelementptr i8, ptr %i.iq, i64 %i.jl
  %scevgep1.i = getelementptr i8, ptr %i.jn, i64 %i.jm
  %i.jo = sub i64 %i.iw, %i.iy
  %i.jp = shl nuw i64 %i.jo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.jp, i1 false), !tbaa !45
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge unwind label %bb.m

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.pre = load i64, ptr %i.fd, align 8, !tbaa !46
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSERKS3_.exit.i.i.i.i.i.i.i.i.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.q

bb.m:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.jt = phi i64 [ %.pre, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit._crit_edge ], [ %.pre63, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jt, %i.jw
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.jw, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i unwind label %bb.p

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.o, %bb.n
  invoke void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit unwind label %bb.p

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  %i.jx = load ptr, ptr %6, align 8, !tbaa !43
  call void @free(ptr noundef %i.jx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  ret void

bb.p:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE4_setINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, %bb.o
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.l, %bb.k
  %.pn27.pn = phi { ptr, i32 } [ %i.jq, %bb.k ], [ %i.jr, %bb.l ], [ %i.jy, %bb.p ], [ %i.js, %bb.m ]
  %i.jz = load ptr, ptr %6, align 8, !tbaa !43
  call void @free(ptr noundef %i.jz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load double, ptr %i.c, align 8, !tbaa !125
  %i.e = tail call noundef double @llvm.fabs.f64(double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.g = load i8, ptr %i.f, align 1, !tbaa !124, !range !34, !noundef !35
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load double, ptr %i.i, align 8, !tbaa !126
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.b, i64 %i.l)
  %i.m = sitofp i64 %.sroa.speculated.i.i.i.i to double
  %i.n = fmul nnan double %i.m, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.o = phi double [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  %i.p = fmul double %i.e, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !127  ; 5 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.thread

.lr.ph.i.i:                                       ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 5 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi128 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !45
  %i.am = load double, ptr %i.ai, align 8, !tbaa !45
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !45
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !45
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
end_hunk_2
