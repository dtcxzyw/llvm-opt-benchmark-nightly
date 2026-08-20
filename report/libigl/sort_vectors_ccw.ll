inline.NumInlined: 7516
inline.NumDeleted: 3939
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
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
  store i32 0, ptr %i.bi, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.bj, align 4, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %i.bk, align 8, !tbaa !57
  %i.bl = load i64, ptr %i.af, align 8, !tbaa !131
  %sext80 = shl i64 %i.bl, 32
  %i.bm = ashr exact i64 %sext80, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !57
  store i32 %i.bo, ptr %i.bi, align 8, !tbaa !57
  store i32 0, ptr %i.bn, align 4, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !131
  %sext80.1 = shl i64 %i.bq, 32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bs = ashr exact i64 %sext80.1, 30
  %i.bt = getelementptr inbounds i8, ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !57
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !57
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !57
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !131
  %sext80.2 = shl i64 %i.bx, 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bz = ashr exact i64 %sext80.2, 30
  %i.ca = getelementptr inbounds i8, ptr %i.bi, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !57
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !57
  store i32 %i.cc, ptr %i.by, align 8, !tbaa !57
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !57
  %i.cd = and i64 %.1, 1
  %.not = icmp eq i64 %i.cd, 0
  %i.ce = select i1 %.not, i64 1, i64 -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !132
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.cg, align 8, !tbaa !59
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.073150 = phi i64 [ 0, %bb.a ], [ %i.eh, %._crit_edge ] ; 22 uses
  %.075149 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.ch = and i64 %.073150, 1                     ; 2 uses
  %i.ci = sub nsw i64 2, %.073150                 ; 3 uses
  %i.cj = sub nuw nsw i64 3, %.073150             ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.073150 ; 6 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !29 ; 5 uses
  %.not146 = icmp eq i64 %.073150, 2
  br i1 %.not146, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.ci, 1
  %i.cm = icmp eq i64 %.073150, 1
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
  %i.co = load double, ptr %i.cn, align 8, !tbaa !29 ; 3 uses
  %i.cp = fcmp ogt double %i.co, %.promoted2829.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.cp, double %i.co, double %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.cp, i64 %.02030.i.i.i.i, i64 %.sroa.5.0.i.i
  %.promoted27.i.i.i.i = select i1 %i.cp, double %i.co, double %.promoted2829.i.i.i.i ; 2 uses
  %i.cq = add nuw nsw i64 %.02030.i.i.i.i, 1      ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !29 ; 3 uses
  %i.ct = fcmp ogt double %i.cs, %.promoted27.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ct, double %i.cs, double %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.ct, i64 %i.cq, i64 %.sroa.5.1.i.i ; 3 uses
  %.promoted27.i.i.i.i.1 = select i1 %i.ct, double %i.cs, double %.promoted27.i.i.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.02030.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !133

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
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !29 ; 2 uses
  %i.cx = fcmp ogt double %i.cw, %.promoted2829.i.i.i.i.epil.init ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.cx, double %i.cw, double %.sroa.7.0.i.i.epil.init
  %.sroa.5.1.i.i.epil = select i1 %i.cx, i64 %.02030.i.i.i.i.epil.init, i64 %.sroa.5.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.7.2.i.i = phi double [ %i.cl, %bb.c ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.cy = add nsw i64 %.sroa.5.2.i.i, %.073150    ; 4 uses
  %i.cz = load i64, ptr %i.ao, align 8, !tbaa !129
  %i.da = icmp eq i64 %i.cz, 3
  br i1 %i.da, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.db = fmul double %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.dc = uitofp nneg i64 %i.cj to double
  %i.dd = fmul double %i.an, %i.dc
  %i.de = fcmp olt double %i.db, %i.dd
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.073150, ptr %i.ao, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.073150
  store i64 %i.cy, ptr %i.df, align 8, !tbaa !131
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = mul nuw nsw i64 %.073150, 24            ; 3 uses
  br i1 %.not81, label %._crit_edge155, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 3 uses
  %.idx.i.i.i.i83 = mul nsw i64 %i.cy, 24
  %i.dh = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.di = load <2 x double>, ptr %i.dh, align 8, !tbaa !28
  %i.dj = load <2 x double>, ptr %i.dg, align 8, !tbaa !28
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !28
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !28
  %i.dk = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 16     ; 2 uses
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !29
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !29
  store double %i.dn, ptr %i.dk, align 8, !tbaa !29
  store double %i.dm, ptr %i.dl, align 8, !tbaa !29
  %i.do = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cy ; 2 uses
  %i.dp = load double, ptr %i.ck, align 8, !tbaa !29
  %i.dq = load double, ptr %i.do, align 8, !tbaa !29
  store double %i.dq, ptr %i.ck, align 8, !tbaa !29
  store double %i.dp, ptr %i.do, align 8, !tbaa !29
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.073150 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cy ; 2 uses
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !29
  %i.du = load double, ptr %i.ds, align 8, !tbaa !29
  store double %i.du, ptr %i.dr, align 8, !tbaa !29
  store double %i.dt, ptr %i.ds, align 8, !tbaa !29
  %i.dv = add nsw i64 %.075149, 1
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.dv, %bb.g ], [ %.075149, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.073150 ; 2 uses
  store ptr %i.dx, ptr %2, align 8, !tbaa !134, !alias.scope !136
  store i64 %i.cj, ptr %i.aq, align 8, !tbaa !22, !alias.scope !136
  store ptr %i.dw, ptr %i.ar, align 8
  store ptr %0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  store i64 %.073150, ptr %.sroa.7109.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8110.0..sroa_idx, align 8
  store i64 %.073150, ptr %i.as, align 8, !tbaa !22, !alias.scope !136
  store i64 3, ptr %i.at, align 8, !tbaa !139, !alias.scope !136
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.073150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.dz = sub nuw nsw i64 2, %.073150             ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.ea, ptr %1, align 8, !tbaa !149
  store i64 %i.dz, ptr %i.au, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.aw, align 8, !tbaa !22
  store i64 3, ptr %i.ax, align 8, !tbaa !151
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.eb = load double, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %0, i64 %.073150 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 %.pre
  store double %i.eb, ptr %i.ed, align 8, !tbaa !29
  %i.ee = call noundef double @llvm.fabs.f64(double %i.eb) ; 2 uses
  %i.ef = load double, ptr %i.ap, align 8, !tbaa !130
  %i.eg = fcmp ogt double %i.ee, %i.ef
  br i1 %i.eg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge155
  store double %i.ee, ptr %i.ap, align 8, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.eh = add nuw nsw i64 %.073150, 1             ; 9 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %i.eh, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i.i85
  store ptr %i.ei, ptr %3, align 8, !tbaa !156, !alias.scope !158
  store i64 %i.cj, ptr %i.ay, align 8, !tbaa !22, !alias.scope !158
  store i64 %i.dz, ptr %i.az, align 8, !tbaa !22, !alias.scope !158
  store ptr %0, ptr %i.ba, align 8, !tbaa !161, !alias.scope !158
  store i64 %.073150, ptr %i.bb, align 8, !tbaa !22, !alias.scope !158
  store i64 %i.eh, ptr %i.bc, align 8, !tbaa !22, !alias.scope !158
  store i64 3, ptr %i.bd, align 8, !tbaa !162, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eh
  store ptr %i.ej, ptr %4, align 8, !tbaa !134, !alias.scope !165
  store i64 %i.dz, ptr %i.be, align 8, !tbaa !22, !alias.scope !165
  store ptr %i.dw, ptr %i.bf, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 %.073150, ptr %.sroa.7103.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8104.0..sroa_idx, align 8
  store i64 %i.eh, ptr %i.bg, align 8, !tbaa !22, !alias.scope !165
  store i64 3, ptr %i.bh, align 8, !tbaa !139, !alias.scope !165
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.eh
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  %i.el = icmp samesign ult i64 %.073150, 2
  br i1 %i.el, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.em = and i64 %i.dz, 2                        ; 3 uses
  %.not161 = icmp eq i64 %i.em, %i.dz
  %trunc = trunc nuw i64 %.073150 to i1
  %lcmp.mod170.not = icmp eq i64 %i.ch, 0
  br label %bb.j

._crit_edge:                                      ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %exitcond152.not = icmp eq i64 %i.eh, 3
  br i1 %exitcond152.not, label %bb.b, label %bb.c, !llvm.loop !168

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %.072148 = phi i64 [ %i.eh, %.lr.ph ], [ %i.gk, %bb.p ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.072148 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !29 ; 4 uses
  %i.ep = fcmp une double %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.idx.i87 = mul nuw nsw i64 %.072148, 24        ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ec, i64 %.idx.i87
  %i.er = load double, ptr %i.eq, align 8, !tbaa !29
  %i.es = call noundef double @llvm.fabs.f64(double %i.er)
  %i.et = fdiv double %i.es, %i.eo                ; 2 uses
  %i.eu = fadd double %i.et, 1.000000e+00
  %i.ev = fsub double 1.000000e+00, %i.et
  %i.ew = fmul double %i.eu, %i.ev                ; 2 uses
  %i.ex = fcmp olt double %i.ew, 0.000000e+00
  %i.ey = select i1 %i.ex, double 0.000000e+00, double %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.072148 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !29
  %i.fb = fdiv double %i.eo, %i.fa                ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fmul double %i.fc, %i.ey
  %i.fe = fcmp ugt double %i.fd, f0x3E50000000000000
  br i1 %i.fe, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 7 uses
  br i1 %trunc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ff = load <2 x double>, ptr %gep, align 8, !tbaa !28 ; 2 uses
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
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !29 ; 2 uses
  %i.fk = fmul double %i.fj, %i.fj
  %i.fl = fadd double %.182.i.i.i.i.i.prol, %i.fk ; 2 uses
  %i.fm = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ch
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !169

.lr.ph85.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ]
  br label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.preheader.new
  %.05283.i.i.i.i.i = phi i64 [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gg, %.lr.ph85.i.i.i.i.i ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !29 ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %.182.i.i.i.i.i, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !29 ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = fadd double %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !29 ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = fadd double %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !29 ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fadd double %i.ga, %i.ge
  %i.gg = add nuw nsw i64 %.05283.i.i.i.i.i, 4
  br label %.lr.ph85.i.i.i.i.i, !llvm.loop !170

bb.n:                                             ; preds = %bb.l
  %i.gh = load double, ptr %gep, align 8, !tbaa !29 ; 2 uses
  %i.gi = fmul double %i.gh, %i.gh
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi double [ %i.gi, %bb.n ], [ %i.fh, %bb.m ]
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i) ; 2 uses
  store double %.scalar.i90, ptr %i.ez, align 8, !tbaa !29
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %.scalar = call double @llvm.sqrt.f64(double %i.ey)
  %i.gj = fmul double %i.eo, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i90.sink = phi double [ %.scalar.i90, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.gj, %bb.o ]
  store double %.scalar.i90.sink, ptr %i.en, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.gk = add nuw nsw i64 %.072148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gk, 3
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !171
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.596", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.492", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.613", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.406", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !29  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !156    ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !22   ; 7 uses
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
  %i.n = load double, ptr %i.m, align 8, !tbaa !29
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !29
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !29
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !29
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !29
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !29
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !29
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter167.next.3 = add nuw nsw i64 %niter167, 4 ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !172

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
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !29
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !29
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !29
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !29
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !29
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !29
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !29
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter173.next.3 = add nuw nsw i64 %niter173, 4 ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !173

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !22 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bc = add nsw i64 %i.b, -1                    ; 7 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !156   ; 14 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !174
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !176
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.bx, i1 false), !tbaa !29
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
begin_hunk_1_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %i.ib = fadd double %i.hu, %i.ia
  %i.ic = add nsw i64 %.05283.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !29
  %i.if = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.ic
  %i.ig = load double, ptr %i.if, align 8, !tbaa !29
  %i.ih = fmul double %i.ie, %i.ig
  %i.ii = fadd double %i.ib, %i.ih                ; 2 uses
  %i.ij = add nsw i64 %.05283.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ij, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us25.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us18.i.i.i.i.i.i.i.i, !llvm.loop !193

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us25.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us18.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa141 = phi double [ %.lcssa141.unr, %.lr.ph85.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ii, %.lr.ph85.i.i.i.i.i.us18.i.i.i.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa141, ptr %i.ik, align 8, !tbaa !29
  %i.il = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.il, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us24.i.i.i.i.i.i.i.i, !llvm.loop !194

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.in = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !28
  %i.io = load <2 x double>, ptr %i.im, align 1, !tbaa !28
  %i.ip = fmul <2 x double> %i.in, %i.io          ; 2 uses
  %shift131 = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd <2 x double> %i.ip, %shift131
  %i.iq = extractelement <2 x double> %foldExtExtBinop132, i64 0
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.iq, ptr %i.ir, align 8, !tbaa !29
  %i.is = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.is, 24
  %i.it = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.iu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !28
  %i.iv = load <2 x double>, ptr %i.it, align 1, !tbaa !28
  %i.iw = fmul <2 x double> %i.iu, %i.iv          ; 2 uses
  %shift131.1 = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.1 = fadd <2 x double> %i.iw, %shift131.1
  %i.ix = extractelement <2 x double> %foldExtExtBinop132.1, i64 0
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.is
  store double %i.ix, ptr %i.iy, align 8, !tbaa !29
  %i.iz = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !194

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.iz, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.jb = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !28
  %i.jc = load <2 x double>, ptr %i.ja, align 1, !tbaa !28
  %i.jd = fmul <2 x double> %i.jb, %i.jc          ; 2 uses
  %shift131.epil = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.epil = fadd <2 x double> %i.jd, %shift131.epil
  %i.je = extractelement <2 x double> %foldExtExtBinop132.epil, i64 0
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.je, ptr %i.jf, align 8, !tbaa !29
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us25.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check103 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jg = shl i64 %i.bb, 3
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.jg
  %i.jh = mul i64 %i.bb, 24
  %i.ji = getelementptr i8, ptr %i.bd, i64 %i.jh
  %scevgep98 = getelementptr i8, ptr %i.ji, i64 -16
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %i.jj = and i64 %i.bb, 3                        ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = select i1 %i.jk, i64 4, i64 %i.jj
  %n.vec105 = sub nsw i64 %i.bb, %i.jl            ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 6 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.jn = mul nuw nsw i64 %index107, 24
  %i.jo = mul nuw i64 %index107, 24
  %i.jp = mul nuw i64 %index107, 24
  %i.jq = mul nuw i64 %index107, 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jn
  %i.js = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.jy = load double, ptr %i.jr, align 8, !tbaa !29, !alias.scope !196
  %i.jz = load double, ptr %i.jt, align 8, !tbaa !29, !alias.scope !196
  %i.ka = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jz, i64 1
  %i.kc = load double, ptr %i.jv, align 8, !tbaa !29, !alias.scope !196
  %i.kd = load double, ptr %i.jx, align 8, !tbaa !29, !alias.scope !196
  %i.ke = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kd, i64 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jm, align 8, !tbaa !29, !alias.scope !199, !noalias !196
  %wide.load108 = load <2 x double>, ptr %i.kg, align 8, !tbaa !29, !alias.scope !199, !noalias !196
  %i.kh = fadd <2 x double> %i.kb, %wide.load
  %i.ki = fadd <2 x double> %i.kf, %wide.load108
  store <2 x double> %i.kh, ptr %i.jm, align 8, !tbaa !29, !alias.scope !199, !noalias !196
  store <2 x double> %i.ki, ptr %i.kg, align 8, !tbaa !29, !alias.scope !199, !noalias !196
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.kj, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body106, !llvm.loop !201

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body106, %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %vector.body106 ] ; 6 uses
  %i.kk = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.kl = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter152 = and i64 %i.kk, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !29
  %i.kp = load double, ptr %i.km, align 8, !tbaa !29
  %i.kq = fadd double %i.ko, %i.kp
  store double %i.kq, ptr %i.km, align 8, !tbaa !29
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ks = icmp eq i64 %i.kl, %.05.i.i.i.i.i.i.ph
  br i1 %i.ks, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !29
  %i.kw = load double, ptr %i.kt, align 8, !tbaa !29
  %i.kx = fadd double %i.kv, %i.kw
  store double %i.kx, ptr %i.kt, align 8, !tbaa !29
  %i.ky = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ky ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ky, 24
  %i.la = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.lb = load double, ptr %i.la, align 8, !tbaa !29
  %i.lc = load double, ptr %i.kz, align 8, !tbaa !29
  %i.ld = fadd double %i.lb, %i.lc
  store double %i.ld, ptr %i.kz, align 8, !tbaa !29
  %i.le = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.le, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !202

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lf = load double, ptr %2, align 8, !tbaa !29, !noalias !203 ; 3 uses
  %xtraiter155 = and i64 %i.bb, 1
  %i.lg = icmp eq i64 %i.kl, 0
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter158 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lu, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter159 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter159.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lj = load double, ptr %i.li, align 8, !tbaa !29
  %i.lk = fmul double %i.lf, %i.lj
  %i.ll = load double, ptr %i.lh, align 8, !tbaa !29
  %i.lm = fsub double %i.ll, %i.lk
  store double %i.lm, ptr %i.lh, align 8, !tbaa !29
  %i.ln = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.ln, 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ln
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !29
  %i.lr = fmul double %i.lf, %i.lq
  %i.ls = load double, ptr %i.lo, align 8, !tbaa !29
  %i.lt = fsub double %i.ls, %i.lr
  store double %i.lt, ptr %i.lo, align 8, !tbaa !29
  %i.lu = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter159.next.1 = add nuw i64 %niter159, 2     ; 2 uses
  %niter159.ncmp.1 = icmp eq i64 %niter159.next.1, %unroll_iter158
  br i1 %niter159.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !206

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lu, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !29
  %i.ly = fmul double %i.lf, %i.lx
  %i.lz = load double, ptr %i.lv, align 8, !tbaa !29
  %i.ma = fsub double %i.lz, %i.ly
  store double %i.ma, ptr %i.lv, align 8, !tbaa !29
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !29, !noalias !207
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.mb = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload113 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.mb, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.mc, align 8
  %i.md = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.me = lshr exact i64 %i.md, 3
  %i.mf = and i64 %i.me, 1
  %i.mg = call i64 @llvm.smin.i64(i64 %i.mf, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.mh = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mg ; 2 uses
  %i.mi = and i64 %i.mh, -2                       ; 2 uses
  %i.mj = add nsw i64 %i.mi, %i.mg                ; 5 uses
  %i.mk = icmp sgt i64 %i.mg, 0
  br i1 %i.mk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.ml = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !29
  %i.mm = fmul double %i.mb, %i.ml
  store double %i.mm, ptr %4, align 8, !tbaa !29
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mn = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = icmp slt i64 %i.mj, %.sroa.6.sroa.4.0.copyload
  br i1 %i.mo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mp = and i64 %i.mh, -2
  %i.mq = add i64 %i.mg, %i.mp
  %i.mr = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mq ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.mr, 6
  %i.ms = sub i64 %.sroa.6.sroa.0.0.copyload113, %i.md
  %diff.check = icmp ugt i64 %i.ms, -32
  %or.cond = select i1 %min.iters.check115, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec117 = and i64 %i.mr, -4                   ; 3 uses
  %i.mt = add i64 %i.mj, %n.vec117
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.mb, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.mu = add i64 %i.mj, %index121                ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.mu ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load122 = load <2 x double>, ptr %i.mw, align 8, !tbaa !29
  %wide.load123 = load <2 x double>, ptr %i.mx, align 8, !tbaa !29
  %i.my = fmul <2 x double> %broadcast.splat119, %wide.load122
  %i.mz = fmul <2 x double> %broadcast.splat119, %wide.load123
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <2 x double> %i.my, ptr %i.mv, align 8, !tbaa !29
  store <2 x double> %i.mz, ptr %i.na, align 8, !tbaa !29
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.nb, label %middle.block125, label %vector.body120, !llvm.loop !210

middle.block125:                                  ; preds = %vector.body120
  %cmp.n = icmp eq i64 %i.mr, %n.vec117
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block125
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mt, %middle.block125 ] ; 4 uses
  %i.nc = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter160 = and i64 %i.nc, 3                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ] ; 3 uses
  %prol.iter162 = phi i64 [ %prol.iter162.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ]
  %i.nd = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ne = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !29
  %i.ng = fmul double %i.mb, %i.nf
  store double %i.ng, ptr %i.nd, align 8, !tbaa !29
  %i.nh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !211

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ], [ %i.nh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ni = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nj = icmp ugt i64 %i.ni, -4
  br i1 %i.nj, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.od, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !29
  %i.nn = fmul double %i.mb, %i.nm
  store double %i.nn, ptr %i.nk, align 8, !tbaa !29
  %i.no = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %4, i64 %i.no
  %i.nq = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.no
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !29
  %i.ns = fmul double %i.mb, %i.nr
  store double %i.ns, ptr %i.np, align 8, !tbaa !29
  %i.nt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nt
  %i.nv = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nt
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !29
  %i.nx = fmul double %i.mb, %i.nw
  store double %i.nx, ptr %i.nu, align 8, !tbaa !29
  %i.ny = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ny
  %i.oa = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ny
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !29
  %i.oc = fmul double %i.mb, %i.ob
  store double %i.oc, ptr %i.nz, align 8, !tbaa !29
  %i.od = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.od, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !212

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mg, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oe = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.of = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.og = load <2 x double>, ptr %i.of, align 1, !tbaa !28
  %i.oh = fmul <2 x double> %i.mn, %i.og
  store <2 x double> %i.oh, ptr %i.oe, align 16, !tbaa !28
  %i.oi = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oj = icmp slt i64 %i.oi, %i.mj
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !213

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block125, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.ok, align 8
  %.sroa.818.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.818.sroa.6.88..sroa_idx, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.ol, align 8, !tbaa !87
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.om, align 8, !tbaa !214
  %i.on = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.on, align 8, !tbaa !22
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.oo, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.be, ptr %5, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %5, ptr %6, align 8, !tbaa !230
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.op, align 8, !tbaa !232
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.oq, align 8, !tbaa !234
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.or, align 8, !tbaa !236
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
end_hunk_1
