inline.NumInlined: 27036
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 173
loop-unroll.NumUnrolled: 205
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.bs, align 16, !tbaa !29
  %i.bt = load i64, ptr %i.aq, align 16, !tbaa !786
  %sext80 = shl i64 %i.bt, 32
  %i.bu = ashr exact i64 %sext80, 30
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  store i32 %i.bw, ptr %i.bs, align 16, !tbaa !29
  store i32 0, ptr %i.bv, align 4, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !786
  %sext80.1 = shl i64 %i.by, 32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ca = ashr exact i64 %sext80.1, 30
  %i.cb = getelementptr inbounds i8, ptr %i.bs, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !29
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !29
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = load i64, ptr %i.ce, align 16, !tbaa !786
  %sext80.2 = shl i64 %i.cf, 32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ch = ashr exact i64 %sext80.2, 30
  %i.ci = getelementptr inbounds i8, ptr %i.bs, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.cg, align 8, !tbaa !29
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !29
  store i32 %i.ck, ptr %i.cg, align 8, !tbaa !29
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !786
  %sext80.3 = shl i64 %i.cm, 32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.co = ashr exact i64 %sext80.3, 30
  %i.cp = getelementptr inbounds i8, ptr %i.bs, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !29
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !29
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !29
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !29
  %i.cs = and i64 %.1, 1
  %.not = icmp eq i64 %i.cs, 0
  %i.ct = select i1 %.not, i64 1, i64 -1
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.ct, ptr %i.cu, align 16, !tbaa !1556
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.cv, align 16, !tbaa !334
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.072151 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %.075150 = phi i64 [ 0, %bb.a ], [ %i.fc, %._crit_edge ] ; 23 uses
  %i.cw = sub nsw i64 3, %.075150                 ; 2 uses
  %i.cx = and i64 %i.cw, -2
  %i.cy = and i64 %i.cw, 1                        ; 2 uses
  %i.cz = add i64 %.075150, %i.cx
  %i.da = sub nsw i64 3, %.075150                 ; 3 uses
  %i.db = sub nuw nsw i64 4, %.075150             ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.075150 ; 6 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !30 ; 5 uses
  %.not146 = icmp eq i64 %.075150, 3
  br i1 %.not146, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.da, 1
  %i.de = icmp eq i64 %.075150, 2
  br i1 %i.de, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.da, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.7.0.i.i = phi double [ %i.dd, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.preheader.i.i.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.5.1.i.i.1, %.preheader.i.i.i.i ]
  %.02026.i.i.i.i = phi i64 [ 1, %.preheader.i.i.i.i.preheader.new ], [ %i.dp, %.preheader.i.i.i.i ] ; 4 uses
  %i.df = phi double [ %i.dd, %.preheader.i.i.i.i.preheader.new ], [ %i.do, %.preheader.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.dg = getelementptr [8 x i8], ptr %i.dc, i64 %.02026.i.i.i.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !30 ; 3 uses
  %i.di = fcmp ogt double %i.dh, %i.df            ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.di, double %i.dh, double %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.di, i64 %.02026.i.i.i.i, i64 %.sroa.5.0.i.i
  %i.dj = select i1 %i.di, double %i.dh, double %i.df ; 2 uses
  %i.dk = add nuw nsw i64 %.02026.i.i.i.i, 1      ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dc, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !30 ; 3 uses
  %i.dn = fcmp ogt double %i.dm, %i.dj            ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.dn, double %i.dm, double %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.dn, i64 %i.dk, i64 %.sroa.5.1.i.i ; 3 uses
  %i.do = select i1 %i.dn, double %i.dm, double %i.dj ; 2 uses
  %i.dp = add nuw nsw i64 %.02026.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !1557

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.7.0.i.i.epil.init = phi double [ %i.dd, %.preheader.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02026.i.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader ], [ %i.dp, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.dd, %.preheader.i.i.i.i.preheader ], [ %i.do, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod165 = trunc i64 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod165)
  %i.dq = getelementptr [8 x i8], ptr %i.dc, i64 %.02026.i.i.i.i.epil.init
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30 ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %.epil.init      ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.ds, double %i.dr, double %.sroa.7.0.i.i.epil.init
  %.sroa.5.1.i.i.epil = select i1 %i.ds, i64 %.02026.i.i.i.i.epil.init, i64 %.sroa.5.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.7.2.i.i = phi double [ %i.dd, %bb.c ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.dt = add nsw i64 %.sroa.5.2.i.i, %.075150    ; 4 uses
  %i.du = load i64, ptr %i.ay, align 8, !tbaa !1554
  %i.dv = icmp eq i64 %i.du, 4
  br i1 %i.dv, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.dw = fmul double %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.dx = uitofp nneg i64 %i.db to double
  %i.dy = fmul double %i.ax, %i.dx
  %i.dz = fcmp olt double %i.dw, %i.dy
  br i1 %i.dz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.075150, ptr %i.ay, align 8, !tbaa !1554
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.075150
  store i64 %i.dt, ptr %i.ea, align 8, !tbaa !786
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = shl nuw nsw i64 %.075150, 5             ; 3 uses
  br i1 %.not81, label %._crit_edge156, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 3 uses
  %.idx.i.i.i.i83 = shl nsw i64 %i.dt, 5
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.ed = load <2 x double>, ptr %i.ec, align 16, !tbaa !82
  %i.ee = load <2 x double>, ptr %i.eb, align 16, !tbaa !82
  store <2 x double> %i.ee, ptr %i.ec, align 16, !tbaa !82
  store <2 x double> %i.ed, ptr %i.eb, align 16, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.eg = load <2 x double>, ptr %i.ef, align 16, !tbaa !82
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !82
  store <2 x double> %i.ei, ptr %i.ef, align 16, !tbaa !82
  store <2 x double> %i.eg, ptr %i.eh, align 16, !tbaa !82
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dt ; 2 uses
  %i.ek = load double, ptr %i.dc, align 8, !tbaa !30
  %i.el = load double, ptr %i.ej, align 8, !tbaa !30
  store double %i.el, ptr %i.dc, align 8, !tbaa !30
  store double %i.ek, ptr %i.ej, align 8, !tbaa !30
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.075150 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dt ; 2 uses
  %i.eo = load double, ptr %i.em, align 8, !tbaa !30
  %i.ep = load double, ptr %i.en, align 8, !tbaa !30
  store double %i.ep, ptr %i.em, align 8, !tbaa !30
  store double %i.eo, ptr %i.en, align 8, !tbaa !30
  %i.eq = add nsw i64 %.072151, 1
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.eq, %bb.g ], [ %.072151, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.075150 ; 2 uses
  store ptr %i.es, ptr %2, align 8, !tbaa !1558, !alias.scope !1560
  store i64 %i.db, ptr %i.ba, align 8, !tbaa !46, !alias.scope !1560
  store ptr %i.er, ptr %i.bb, align 8
  store ptr %0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  store i64 %.075150, ptr %.sroa.7109.0..sroa_idx, align 8
  store i64 4, ptr %.sroa.8110.0..sroa_idx, align 8
  store i64 %.075150, ptr %i.bc, align 8, !tbaa !46, !alias.scope !1560
  store i64 4, ptr %i.bd, align 8, !tbaa !1563, !alias.scope !1560
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.075150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.eu = sub nuw nsw i64 3, %.075150             ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.ev, ptr %1, align 8, !tbaa !1572
  store i64 %i.eu, ptr %i.be, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.bg, align 8, !tbaa !46
  store i64 4, ptr %i.bh, align 8, !tbaa !1574
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ew = load double, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %0, i64 %.075150 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 %.pre
  store double %i.ew, ptr %i.ey, align 8, !tbaa !30
  %i.ez = call noundef double @llvm.fabs.f64(double %i.ew) ; 2 uses
  %i.fa = load double, ptr %i.az, align 16, !tbaa !1555
  %i.fb = fcmp ogt double %i.ez, %i.fa
  br i1 %i.fb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge156
  store double %i.ez, ptr %i.az, align 16, !tbaa !1555
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge156
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fc = add nuw nsw i64 %.075150, 1             ; 9 uses
  %.idx.i.i.i.i85 = shl nuw nsw i64 %i.fc, 5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx.i.i.i.i85
  store ptr %i.fd, ptr %3, align 8, !tbaa !307, !alias.scope !1579
  store i64 %i.db, ptr %i.bi, align 8, !tbaa !46, !alias.scope !1579
  store i64 %i.eu, ptr %i.bj, align 8, !tbaa !46, !alias.scope !1579
  store ptr %0, ptr %i.bk, align 8, !tbaa !312, !alias.scope !1579
  store i64 %.075150, ptr %i.bl, align 8, !tbaa !46, !alias.scope !1579
  store i64 %i.fc, ptr %i.bm, align 8, !tbaa !46, !alias.scope !1579
  store i64 4, ptr %i.bn, align 8, !tbaa !314, !alias.scope !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fc
  store ptr %i.fe, ptr %4, align 8, !tbaa !1558, !alias.scope !1582
  store i64 %i.eu, ptr %i.bo, align 8, !tbaa !46, !alias.scope !1582
  store ptr %i.er, ptr %i.bp, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 %.075150, ptr %.sroa.7103.0..sroa_idx, align 8
  store i64 4, ptr %.sroa.8104.0..sroa_idx, align 8
  store i64 %i.fc, ptr %i.bq, align 8, !tbaa !46, !alias.scope !1582
  store i64 4, ptr %i.br, align 8, !tbaa !1563, !alias.scope !1582
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.fc
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li4ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.ff)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fc
  %i.fg = icmp samesign ult i64 %.075150, 3
  br i1 %i.fg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.fh = and i64 %i.eu, 2                        ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.075150, 2
  %.not147 = icmp eq i64 %i.fh, %i.eu
  %lcmp.mod167.not = icmp eq i64 %i.cy, 0
  %i.fi = icmp ult i64 %i.cz, 3
  br label %bb.j

._crit_edge:                                      ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %exitcond153.not = icmp eq i64 %i.fc, 4
  br i1 %exitcond153.not, label %bb.b, label %bb.c, !llvm.loop !1585

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %.073149 = phi i64 [ %i.fc, %.lr.ph ], [ %i.hg, %bb.p ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.073149 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !30 ; 4 uses
  %i.fl = fcmp une double %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.idx.i87 = shl nuw nsw i64 %.073149, 5         ; 2 uses
  %i.fm = getelementptr i8, ptr %i.ex, i64 %.idx.i87
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !30
  %i.fo = call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = fdiv double %i.fo, %i.fk                ; 2 uses
  %i.fq = fadd double %i.fp, 1.000000e+00
  %i.fr = fsub double 1.000000e+00, %i.fp
  %i.fs = fmul double %i.fq, %i.fr                ; 2 uses
  %i.ft = fcmp olt double %i.fs, 0.000000e+00
  %i.fu = select i1 %i.ft, double 0.000000e+00, double %i.fs ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.073149 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !30
  %i.fx = fdiv double %i.fk, %i.fw                ; 2 uses
  %i.fy = fmul double %i.fx, %i.fx
  %i.fz = fmul double %i.fy, %i.fu
  %i.ga = fcmp ugt double %i.fz, f0x3E50000000000000
  br i1 %i.ga, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 7 uses
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gb = load <2 x double>, ptr %gep, align 8, !tbaa !82 ; 2 uses
  %i.gc = fmul <2 x double> %i.gb, %i.gb          ; 2 uses
  %shift = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gc, %shift
  %i.gd = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %.not147, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.m
  br i1 %lcmp.mod167.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.gi, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.gh, %.lr.ph85.i.i.i.i.i.prol ], [ %i.gd, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i.prol
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !30 ; 2 uses
  %i.gg = fmul double %i.gf, %i.gf
  %i.gh = fadd double %.182.i.i.i.i.i.prol, %i.gg ; 3 uses
  %i.gi = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.cy
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !1586

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.gh, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.gi, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.gd, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.gh, %.lr.ph85.i.i.i.i.i.prol ]
  br i1 %i.fi, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.hc, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.hb, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !30 ; 2 uses
  %i.gl = fmul double %i.gk, %i.gk
  %i.gm = fadd double %.182.i.i.i.i.i, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !30 ; 2 uses
  %i.gq = fmul double %i.gp, %i.gp
  %i.gr = fadd double %i.gm, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !30 ; 2 uses
  %i.gv = fmul double %i.gu, %i.gu
  %i.gw = fadd double %i.gr, %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !30 ; 2 uses
  %i.ha = fmul double %i.gz, %i.gz
  %i.hb = fadd double %i.gw, %i.ha
  %i.hc = add nuw nsw i64 %.05283.i.i.i.i.i, 4
  br label %.lr.ph85.i.i.i.i.i, !llvm.loop !1587

bb.n:                                             ; preds = %bb.l
  %i.hd = load double, ptr %gep, align 8, !tbaa !30 ; 2 uses
  %i.he = fmul double %i.hd, %i.hd
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %bb.m, %bb.n
  %.0.i.i.i = phi double [ %i.he, %bb.n ], [ %i.gd, %bb.m ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i) ; 2 uses
  store double %.scalar.i90, ptr %i.fv, align 8, !tbaa !30
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %.scalar = call double @llvm.sqrt.f64(double %i.fu)
  %i.hf = fmul double %i.fk, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i90.sink = phi double [ %.scalar.i90, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.hf, %bb.o ]
  store double %.scalar.i90.sink, ptr %i.fj, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.hg = add nuw nsw i64 %.073149, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hg, 4
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !1588
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li4ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.3911", align 16 ; 19 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.3807", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3929", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.3725", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 9 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !30  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8, !tbaa !307    ; 11 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !46   ; 7 uses
  %i.l = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter164 = and i64 %i.k, 3                  ; 3 uses
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter167 = and i64 %i.k, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.af, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter168 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter168.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i, 5
  %i.n = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !30
  %i.p = fmul double %i.f, %i.o
  store double %i.p, ptr %i.n, align 8, !tbaa !30
  %i.q = shl i64 %.0810.i.i.i.i.i.i.i, 5
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 32       ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !30
  %i.u = fmul double %i.f, %i.t
  store double %i.u, ptr %i.s, align 8, !tbaa !30
  %i.v = shl i64 %.0810.i.i.i.i.i.i.i, 5
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 64       ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !30
  %i.z = fmul double %i.f, %i.y
  store double %i.z, ptr %i.x, align 8, !tbaa !30
  %i.aa = shl i64 %.0810.i.i.i.i.i.i.i, 5
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 96     ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !30
  %i.ae = fmul double %i.f, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !30
  %i.af = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter168.next.3 = add nuw nsw i64 %niter168, 4 ; 2 uses
  %niter168.ncmp.3 = icmp eq i64 %niter168.next.3, %unroll_iter167
  br i1 %niter168.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit135.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1589

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.l, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter169 = and i64 %i.k, 3                  ; 3 uses
  %i.ag = icmp ult i64 %i.k, 4
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter173 = and i64 %i.k, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.av, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter174 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter174.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = shl i64 %.03453.i.i.i.i.i.i, 5
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %.pre63 = load double, ptr %i.ah, align 8, !tbaa !30
  %i.ai = fmul double %i.f, %.pre63
  store double %i.ai, ptr %i.ah, align 8, !tbaa !30
  %i.aj = shl i64 %.03453.i.i.i.i.i.i, 5
  %i.ak = getelementptr i8, ptr %i.h, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  %.pre63.1 = load double, ptr %i.al, align 8, !tbaa !30
  %i.am = fmul double %i.f, %.pre63.1
  store double %i.am, ptr %i.al, align 8, !tbaa !30
  %i.an = shl i64 %.03453.i.i.i.i.i.i, 5
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 64     ; 2 uses
  %.pre63.2 = load double, ptr %i.ap, align 8, !tbaa !30
  %i.aq = fmul double %i.f, %.pre63.2
  store double %i.aq, ptr %i.ap, align 8, !tbaa !30
  %i.ar = shl i64 %.03453.i.i.i.i.i.i, 5
  %i.as = getelementptr i8, ptr %i.h, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 96     ; 2 uses
  %.pre63.3 = load double, ptr %i.at, align 8, !tbaa !30
  %i.au = fmul double %i.f, %.pre63.3
  store double %i.au, ptr %i.at, align 8, !tbaa !30
  %i.av = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter174.next.3 = add nuw nsw i64 %niter174, 4 ; 2 uses
  %niter174.ncmp.3 = icmp eq i64 %niter174.next.3, %unroll_iter173
  br i1 %niter174.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1590

bb.d:                                             ; preds = %bb.a
  %i.aw = fcmp une double %i.e, 0.000000e+00
  br i1 %i.aw, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !46 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.az = add nsw i64 %i.c, -1                    ; 7 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !307   ; 14 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8      ; 15 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !1591
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bf, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bg, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 4, ptr %i.bh, align 8, !tbaa !1593
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi4EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bj = icmp eq i64 %i.az, 0
  %i.bk = sdiv i64 %i.az, 4
  %i.bl = shl nsw i64 %i.bk, 2                    ; 4 uses
  %i.bm = sdiv i64 %i.az, 2
  %i.bn = shl nsw i64 %i.bm, 1                    ; 10 uses
  %i.bo = icmp sgt i64 %i.c, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.bq = icmp sgt i64 %i.c, 8
  %i.br = icmp sgt i64 %i.bn, %i.bl
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bl
  %i.bt = icmp slt i64 %i.bn, %i.az               ; 2 uses
  br i1 %i.bj, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bu = shl nuw i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.bu, i1 false), !tbaa !30
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.c, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.ay, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader137, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.bv = shl i64 %i.ay, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.bv  ; 2 uses
  %scevgep92 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bw = shl i64 %i.ay, 5
  %i.bx = getelementptr i8, ptr %i.ba, i64 %i.bw
  %scevgep93 = getelementptr i8, ptr %i.bx, i64 -16
  %bound0 = icmp ult ptr %3, %scevgep92
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound094 = icmp ult ptr %3, %scevgep93
  %bound195 = icmp ult ptr %i.bb, %scevgep
end_hunk_0
