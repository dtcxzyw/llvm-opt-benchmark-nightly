inline.NumInlined: 8230
inline.NumDeleted: 4298
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv:bb.a
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !216
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.bj, align 4, !tbaa !216
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %i.bk, align 8, !tbaa !216
  %i.bl = load i64, ptr %i.af, align 8, !tbaa !48
  %sext80 = shl i64 %i.bl, 32
  %i.bm = ashr exact i64 %sext80, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !216
  store i32 %i.bo, ptr %i.bi, align 8, !tbaa !216
  store i32 0, ptr %i.bn, align 4, !tbaa !216
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !48
  %sext80.1 = shl i64 %i.bq, 32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bs = ashr exact i64 %sext80.1, 30
  %i.bt = getelementptr inbounds i8, ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !216
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !216
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !216
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !216
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !48
  %sext80.2 = shl i64 %i.bx, 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bz = ashr exact i64 %sext80.2, 30
  %i.ca = getelementptr inbounds i8, ptr %i.bi, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !216
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !216
  store i32 %i.cc, ptr %i.by, align 8, !tbaa !216
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !216
  %i.cd = and i64 %.1, 1
  %.not = icmp eq i64 %i.cd, 0
  %i.ce = select i1 %.not, i64 1, i64 -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !217
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.cg, align 8, !tbaa !89
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.072150 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %.075149 = phi i64 [ 0, %bb.a ], [ %i.eh, %._crit_edge ] ; 22 uses
  %i.ch = and i64 %.075149, 1                     ; 2 uses
  %i.ci = sub nsw i64 2, %.075149                 ; 3 uses
  %i.cj = sub nuw nsw i64 3, %.075149             ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.075149 ; 6 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !22 ; 5 uses
  %.not146 = icmp eq i64 %.075149, 2
  br i1 %.not146, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.ci, 1
  %i.cm = icmp eq i64 %.075149, 1
  br i1 %i.cm, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ci, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.7.0.i.i = phi double [ %i.cl, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.preheader.i.i.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.5.1.i.i.1, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi i64 [ 1, %.preheader.i.i.i.i.preheader.new ], [ %i.cu, %.preheader.i.i.i.i ] ; 4 uses
  %.promoted2829.i.i.i.i = phi double [ %i.cl, %.preheader.i.i.i.i.preheader.new ], [ %.promoted27.i.i.i.i.1, %.preheader.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %.02030.i.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22 ; 3 uses
  %i.cp = fcmp ogt double %i.co, %.promoted2829.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.cp, double %i.co, double %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.cp, i64 %.02030.i.i.i.i, i64 %.sroa.5.0.i.i
  %.promoted27.i.i.i.i = select i1 %i.cp, double %i.co, double %.promoted2829.i.i.i.i ; 2 uses
  %i.cq = add nuw nsw i64 %.02030.i.i.i.i, 1      ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !22 ; 3 uses
  %i.ct = fcmp ogt double %i.cs, %.promoted27.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ct, double %i.cs, double %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.ct, i64 %i.cq, i64 %.sroa.5.1.i.i ; 3 uses
  %.promoted27.i.i.i.i.1 = select i1 %i.ct, double %i.cs, double %.promoted27.i.i.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.02030.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !218

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.7.0.i.i.epil.init = phi double [ %i.cl, %.preheader.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02030.i.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader ], [ %i.cu, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.promoted2829.i.i.i.i.epil.init = phi double [ %i.cl, %.preheader.i.i.i.i.preheader ], [ %.promoted27.i.i.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.cv = getelementptr [8 x i8], ptr %i.ck, i64 %.02030.i.i.i.i.epil.init
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !22 ; 2 uses
  %i.cx = fcmp ogt double %i.cw, %.promoted2829.i.i.i.i.epil.init ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.cx, double %i.cw, double %.sroa.7.0.i.i.epil.init
  %.sroa.5.1.i.i.epil = select i1 %i.cx, i64 %.02030.i.i.i.i.epil.init, i64 %.sroa.5.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.7.2.i.i = phi double [ %i.cl, %bb.c ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.cy = add nsw i64 %.sroa.5.2.i.i, %.075149    ; 4 uses
  %i.cz = load i64, ptr %i.ao, align 8, !tbaa !214
  %i.da = icmp eq i64 %i.cz, 3
  br i1 %i.da, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.db = fmul double %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.dc = uitofp nneg i64 %i.cj to double
  %i.dd = fmul double %i.an, %i.dc
  %i.de = fcmp olt double %i.db, %i.dd
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.075149, ptr %i.ao, align 8, !tbaa !214
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.075149
  store i64 %i.cy, ptr %i.df, align 8, !tbaa !48
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = mul nuw nsw i64 %.075149, 24            ; 3 uses
  br i1 %.not81, label %._crit_edge155, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 3 uses
  %.idx.i.i.i.i83 = mul nsw i64 %i.cy, 24
  %i.dh = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.di = load <2 x double>, ptr %i.dh, align 8, !tbaa !19
  %i.dj = load <2 x double>, ptr %i.dg, align 8, !tbaa !19
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !19
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !19
  %i.dk = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 16     ; 2 uses
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !22
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !22
  store double %i.dn, ptr %i.dk, align 8, !tbaa !22
  store double %i.dm, ptr %i.dl, align 8, !tbaa !22
  %i.do = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cy ; 2 uses
  %i.dp = load double, ptr %i.ck, align 8, !tbaa !22
  %i.dq = load double, ptr %i.do, align 8, !tbaa !22
  store double %i.dq, ptr %i.ck, align 8, !tbaa !22
  store double %i.dp, ptr %i.do, align 8, !tbaa !22
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.075149 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cy ; 2 uses
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !22
  %i.du = load double, ptr %i.ds, align 8, !tbaa !22
  store double %i.du, ptr %i.dr, align 8, !tbaa !22
  store double %i.dt, ptr %i.ds, align 8, !tbaa !22
  %i.dv = add nsw i64 %.072150, 1
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.dv, %bb.g ], [ %.072150, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.075149 ; 2 uses
  store ptr %i.dx, ptr %2, align 8, !tbaa !219, !alias.scope !221
  store i64 %i.cj, ptr %i.aq, align 8, !tbaa !37, !alias.scope !221
  store ptr %i.dw, ptr %i.ar, align 8
  store ptr %0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  store i64 %.075149, ptr %.sroa.7109.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8110.0..sroa_idx, align 8
  store i64 %.075149, ptr %i.as, align 8, !tbaa !37, !alias.scope !221
  store i64 3, ptr %i.at, align 8, !tbaa !224, !alias.scope !221
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.075149 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.dz = sub nuw nsw i64 2, %.075149             ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.ea, ptr %1, align 8, !tbaa !235
  store i64 %i.dz, ptr %i.au, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.aw, align 8, !tbaa !37
  store i64 3, ptr %i.ax, align 8, !tbaa !237
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.eb = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %0, i64 %.075149 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 %.pre
  store double %i.eb, ptr %i.ed, align 8, !tbaa !22
  %i.ee = call noundef double @llvm.fabs.f64(double %i.eb) ; 2 uses
  %i.ef = load double, ptr %i.ap, align 8, !tbaa !215
  %i.eg = fcmp ogt double %i.ee, %i.ef
  br i1 %i.eg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge155
  store double %i.ee, ptr %i.ap, align 8, !tbaa !215
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.eh = add nuw nsw i64 %.075149, 1             ; 9 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %i.eh, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i.i85
  store ptr %i.ei, ptr %3, align 8, !tbaa !242, !alias.scope !244
  store i64 %i.cj, ptr %i.ay, align 8, !tbaa !37, !alias.scope !244
  store i64 %i.dz, ptr %i.az, align 8, !tbaa !37, !alias.scope !244
  store ptr %0, ptr %i.ba, align 8, !tbaa !247, !alias.scope !244
  store i64 %.075149, ptr %i.bb, align 8, !tbaa !37, !alias.scope !244
  store i64 %i.eh, ptr %i.bc, align 8, !tbaa !37, !alias.scope !244
  store i64 3, ptr %i.bd, align 8, !tbaa !248, !alias.scope !244
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eh
  store ptr %i.ej, ptr %4, align 8, !tbaa !219, !alias.scope !251
  store i64 %i.dz, ptr %i.be, align 8, !tbaa !37, !alias.scope !251
  store ptr %i.dw, ptr %i.bf, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 %.075149, ptr %.sroa.7103.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8104.0..sroa_idx, align 8
  store i64 %i.eh, ptr %i.bg, align 8, !tbaa !37, !alias.scope !251
  store i64 3, ptr %i.bh, align 8, !tbaa !224, !alias.scope !251
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.eh
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  %i.el = icmp samesign ult i64 %.075149, 2
  br i1 %i.el, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.em = and i64 %i.dz, 2                        ; 3 uses
  %.not161 = icmp eq i64 %i.em, %i.dz
  %trunc = trunc nuw i64 %.075149 to i1
  %lcmp.mod170.not = icmp eq i64 %i.ch, 0
  br label %bb.j

._crit_edge:                                      ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %exitcond152.not = icmp eq i64 %i.eh, 3
  br i1 %exitcond152.not, label %bb.b, label %bb.c, !llvm.loop !254

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %.073148 = phi i64 [ %i.eh, %.lr.ph ], [ %i.gk, %bb.p ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.073148 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !22 ; 4 uses
  %i.ep = fcmp une double %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.idx.i87 = mul nuw nsw i64 %.073148, 24        ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ec, i64 %.idx.i87
  %i.er = load double, ptr %i.eq, align 8, !tbaa !22
  %i.es = call noundef double @llvm.fabs.f64(double %i.er)
  %i.et = fdiv double %i.es, %i.eo                ; 2 uses
  %i.eu = fadd double %i.et, 1.000000e+00
  %i.ev = fsub double 1.000000e+00, %i.et
  %i.ew = fmul double %i.eu, %i.ev                ; 2 uses
  %i.ex = fcmp olt double %i.ew, 0.000000e+00
  %i.ey = select i1 %i.ex, double 0.000000e+00, double %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.073148 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
  %i.fb = fdiv double %i.eo, %i.fa                ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fmul double %i.fc, %i.ey
  %i.fe = fcmp ugt double %i.fd, f0x3E50000000000000
  br i1 %i.fe, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 7 uses
  br i1 %trunc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ff = load <2 x double>, ptr %gep, align 8, !tbaa !19 ; 2 uses
  %i.fg = fmul <2 x double> %i.ff, %i.ff          ; 2 uses
  %shift163 = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop164 = fadd <2 x double> %i.fg, %shift163
  %i.fh = extractelement <2 x double> %foldExtExtBinop164, i64 0 ; 3 uses
  br i1 %.not161, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.m
  br i1 %lcmp.mod170.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ], [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i.prol
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !22 ; 2 uses
  %i.fk = fmul double %i.fj, %i.fj
  %i.fl = fadd double %.182.i.i.i.i.i.prol, %i.fk ; 2 uses
  %i.fm = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ch
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !255

.lr.ph85.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ]
  br label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.preheader.new
  %.05283.i.i.i.i.i = phi i64 [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gg, %.lr.ph85.i.i.i.i.i ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !22 ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %.182.i.i.i.i.i, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22 ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = fadd double %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !22 ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = fadd double %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !22 ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fadd double %i.ga, %i.ge                ; 2 uses
  %i.gg = add nuw nsw i64 %.05283.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gg, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !256

bb.n:                                             ; preds = %bb.l
  %i.gh = load double, ptr %gep, align 8, !tbaa !22 ; 2 uses
  %i.gi = fmul double %i.gh, %i.gh
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i, %bb.m, %bb.n
  %.0.i.i.i = phi double [ %i.gi, %bb.n ], [ %i.fh, %bb.m ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i) ; 2 uses
  store double %.scalar.i90, ptr %i.ez, align 8, !tbaa !22
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %.scalar = call double @llvm.sqrt.f64(double %i.ey)
  %i.gj = fmul double %i.eo, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i90.sink = phi double [ %.scalar.i90, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.gj, %bb.o ]
  store double %.scalar.i90.sink, ptr %i.en, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.gk = add nuw nsw i64 %.073148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gk, 3
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !257
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.675", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.571", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.692", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.477", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !22  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !242    ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !37   ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter163 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter166 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter167 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter167.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !22
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !22
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !22
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !22
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !22
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !22
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !22
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter167.next.3 = add nuw nsw i64 %niter167, 4 ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !258

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter168 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter172 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter173 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter173.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ag = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !22
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !22
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !22
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !22
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !22
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !22
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter173.next.3 = add nuw nsw i64 %niter173, 4 ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !259

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !37 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bc = add nsw i64 %i.b, -1                    ; 7 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !242   ; 14 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !260
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !262
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bm = icmp eq i64 %i.bc, 0
  %i.bn = sdiv i64 %i.bc, 4
  %i.bo = shl nsw i64 %i.bn, 2                    ; 4 uses
  %i.bp = sdiv i64 %i.bc, 2
  %i.bq = shl nsw i64 %i.bp, 1                    ; 10 uses
  %i.br = icmp sgt i64 %i.b, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.bt = icmp sgt i64 %i.b, 8
  %i.bu = icmp sgt i64 %i.bq, %i.bo
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bo
  %i.bw = icmp slt i64 %i.bq, %i.bc               ; 2 uses
  br i1 %i.bm, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bx = shl nuw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.bx, i1 false), !tbaa !22
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.bb, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.by = shl i64 %i.bb, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.by  ; 2 uses
  %scevgep91 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bz = mul i64 %i.bb, 24
  %i.ca = getelementptr i8, ptr %i.bd, i64 %i.bz
  %scevgep92 = getelementptr i8, ptr %i.ca, i64 -8
  %bound0 = icmp ult ptr %3, %scevgep91
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %3, %scevgep92
  %bound194 = icmp ult ptr %i.be, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
end_hunk_0
