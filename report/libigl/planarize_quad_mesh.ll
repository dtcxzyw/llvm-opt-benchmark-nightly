Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN3igl17PlanarizerShapeUpIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEE9assemblePEv:bb.a
  %i.fd = add i64 %i.dn, %index160                ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.fd ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load161 = load <2 x double>, ptr %i.ff, align 8, !tbaa !59
  %wide.load162 = load <2 x double>, ptr %i.fg, align 8, !tbaa !59
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x double> %wide.load161, ptr %i.fe, align 8, !tbaa !59
  store <2 x double> %wide.load162, ptr %i.fh, align 8, !tbaa !59
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.fi, label %middle.block164, label %vector.body159, !llvm.loop !736

middle.block164:                                  ; preds = %vector.body159
  %cmp.n165 = icmp eq i64 %i.ex, %n.vec158
  br i1 %cmp.n165, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182:      ; preds = %vector.memcheck153, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block164
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.dn, %vector.memcheck153 ], [ %i.dn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fc, %middle.block164 ] ; 4 uses
  %i.fj = sub i64 %i.dc, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter184 = and i64 %i.fj, 3                 ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182 ] ; 3 uses
  %prol.iter186 = phi i64 [ %prol.iter186.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182 ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !59
  store double %i.fm, ptr %i.fk, align 8, !tbaa !59
  %i.fn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter186.next = add i64 %prol.iter186, 1   ; 2 uses
  %prol.iter186.cmp.not = icmp eq i64 %prol.iter186.next, %xtraiter184
  br i1 %prol.iter186.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !737

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader182 ], [ %i.fn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fo = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.dc
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !59
  store double %i.fs, ptr %i.fq, align 8, !tbaa !59
  %i.ft = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.ft
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ft
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !59
  store double %i.fw, ptr %i.fu, align 8, !tbaa !59
  %i.fx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !59
  store double %i.ga, ptr %i.fy, align 8, !tbaa !59
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !59
  store double %i.ge, ptr %i.gc, align 8, !tbaa !59
  %i.gf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gf, %i.dc
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !738

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS6_INS7_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !77
  store <2 x double> %i.gi, ptr %i.gg, align 16, !tbaa !77
  %i.gj = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gk = icmp slt i64 %i.gj, %i.dn
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !739

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block164, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = load i32, ptr %i.c, align 8, !tbaa !72
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !740

._crit_edge.loopexit:                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS0_INS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre133 = load i64, ptr %i.ai, align 8, !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread148, %._crit_edge.loopexit, %bb.m
  %i.go = phi i64 [ %.pre133, %._crit_edge.loopexit ], [ %i.cg, %bb.m ], [ %i.cg, %.thread148 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %10, ptr %12, align 8
  store ptr %10, ptr %i.aj, align 8
  %i.gp = add i64 %i.go, -1
  %or.cond.i.i.i.i.i.i = icmp ult i64 %i.gp, 13
  br i1 %or.cond.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %10, ptr %1, align 8, !tbaa !80
  store i64 %i.ak, ptr %i.al, align 8
  %i.gq = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.gr = load i64, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  store ptr %i.gq, ptr %i.am, align 8, !tbaa !175
  store i64 %i.gr, ptr %i.an, align 8, !tbaa !176
  store ptr %i.gq, ptr %i.ao, align 8, !tbaa !175
  store i64 %i.gr, ptr %i.ap, align 8, !tbaa !176
  store i64 %i.go, ptr %i.aq, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %11, ptr %2, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !757
  store ptr %1, ptr %i.ar, align 8, !tbaa !758
  store ptr %4, ptr %i.as, align 8, !tbaa !88
  store ptr %11, ptr %i.at, align 8, !tbaa !190
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS8_EELi1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS4_EELi0EEEEERKNS_9EigenBaseIT_EE.exit

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !59
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS3_EENS_10DenseShapeES6_Li8EE13scaleAndAddToINS2_IdLi3ELi3ELi0ELi3ELi3EEEEEvRT_RKS3_RKS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc52 unwind label %bb.aa

.noexc52:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS4_EELi0EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS4_EELi0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %.noexc52, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i8 0, ptr %i.av, align 8, !tbaa !204
  store i8 0, ptr %i.aw, align 4, !tbaa !210
  store i8 0, ptr %i.ax, align 1, !tbaa !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %i.au, i8 0, i64 50, i1 false)
  store i64 -1, ptr %i.ay, align 8, !tbaa !212
  %i.gs = invoke noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EEb(ptr noundef nonnull align 16 dereferenceable(560) %13, ptr noundef nonnull align 1 dereferenceable(1) %11, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.ab      ; 0 uses

bb.s:                                             ; preds = %_ZN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS4_EELi0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.gt = load double, ptr %i.au, align 16, !tbaa !59
  %i.gu = load double, ptr %i.az, align 16, !tbaa !59
  %i.gv = load double, ptr %i.ba, align 16, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNK5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12eigenvectorsEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.464") align 16 %15, ptr noundef nonnull align 16 dereferenceable(560) %13)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.gw = load double, ptr %15, align 16, !tbaa !59
  store double %i.gw, ptr %14, align 8, !tbaa !59
  %i.gx = load double, ptr %i.bc, align 16, !tbaa !59
  store double %i.gx, ptr %i.bb, align 8, !tbaa !59
  %i.gy = load double, ptr %i.be, align 16, !tbaa !59
  store double %i.gy, ptr %i.bd, align 8, !tbaa !59
  %i.gz = load double, ptr %i.bg, align 16, !tbaa !59
  store double %i.gz, ptr %i.bf, align 8, !tbaa !59
  %i.ha = load double, ptr %i.bi, align 16, !tbaa !59
  store double %i.ha, ptr %i.bh, align 8, !tbaa !59
  %i.hb = load double, ptr %i.bk, align 16, !tbaa !59
  store double %i.hb, ptr %i.bj, align 8, !tbaa !59
  %i.hc = load double, ptr %i.bm, align 16, !tbaa !59
  store double %i.hc, ptr %i.bl, align 8, !tbaa !59
  %i.hd = load double, ptr %i.bo, align 16, !tbaa !59
  store double %i.hd, ptr %i.bn, align 8, !tbaa !59
  %i.he = load double, ptr %i.bq, align 16, !tbaa !59
  store double %i.he, ptr %i.bp, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.hf = call noundef double @llvm.fabs.f64(double %i.gt) ; 2 uses
  %i.hg = call noundef double @llvm.fabs.f64(double %i.gu) ; 2 uses
  %i.hh = fcmp olt double %i.hg, %i.hf            ; 2 uses
  %.sroa.8.0.i.i = select i1 %i.hh, double %i.hg, double %i.hf
  %i.hi = call noundef double @llvm.fabs.f64(double %i.gv)
  %i.hj = fcmp olt double %i.hi, %.sroa.8.0.i.i
  %i.hk = select i1 %i.hh, i64 24, i64 0
  %.idx.i.i.i.i = select i1 %i.hj, i64 48, i64 %i.hk
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 %.idx.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr %14, ptr %17, align 8
  store ptr %14, ptr %.sroa.589.0..sroa_idx, align 8
  store ptr %10, ptr %i.br, align 8, !tbaa !80, !alias.scope !759
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductINS5_INS1_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS6_EELi0EEES2_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.ad

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.hm = load i32, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59, label %._crit_edge120

._crit_edge120:                                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  %18 = load ptr, ptr %16, align 8, !tbaa !75
  call void @free(ptr noundef %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.ho = load ptr, ptr %10, align 8, !tbaa !75
  call void @free(ptr noundef %i.ho) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.hp = load ptr, ptr %8, align 8, !tbaa !58
  call void @free(ptr noundef %i.hp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.hq = load ptr, ptr %i.bu, align 8, !tbaa !92
  call void @free(ptr noundef %i.hq) #27
  %i.hr = load ptr, ptr %i.bv, align 8, !tbaa !93
  call void @free(ptr noundef %i.hr) #27
  %i.hs = load ptr, ptr %i.bw, align 8, !tbaa !94 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge120
  call void @_ZdaPv(ptr noundef nonnull %i.hs) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge120
  %i.hu = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.hw = load ptr, ptr %i.z, align 8, !tbaa !92
  call void @free(ptr noundef %i.hw) #27
  %i.hx = load ptr, ptr %i.aa, align 8, !tbaa !93
  call void @free(ptr noundef %i.hx) #27
  %i.hy = load ptr, ptr %i.by, align 8, !tbaa !94 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.ia = load ptr, ptr %i.bz, align 8, !tbaa !95 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit57, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit57

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit57:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ic = load i64, ptr %i.g, align 8, !tbaa !56
  %i.id = icmp sgt i64 %i.ic, %indvars.iv.next131
  br i1 %i.id, label %bb.f, label %._crit_edge123, !llvm.loop !743

bb.aa:                                            ; preds = %bb.r, %bb.q
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ag

bb.ab:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS4_EELi0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.t
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ae

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.ii = phi i32 [ %i.lh, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ %i.hm, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit ]
  %i.ij = shl nuw nsw i64 %indvars.iv127, 3
  %i.ik = load ptr, ptr %i.bs, align 8, !tbaa !58
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv130
  %19 = load ptr, ptr %16, align 8, !tbaa !75, !noalias !760 ; 2 uses
  %20 = ptrtoaddr ptr %19 to i64
  %i.im = load i64, ptr %i.bt, align 8, !tbaa !31, !noalias !760 ; 2 uses
  %i.in = mul nsw i64 %i.im, %indvars.iv127
  %i.io = getelementptr inbounds [8 x i8], ptr %19, i64 %i.in ; 10 uses
  %i.ip = load double, ptr %i.il, align 8, !tbaa !59, !noalias !761 ; 10 uses
  %i.iq = mul i32 %i.ii, %i.cd
  %i.ir = trunc nuw nsw i64 %indvars.iv127 to i32
  %reass.add = add i32 %i.iq, %i.ir
  %reass.mul = mul i32 %reass.add, 3
  %i.is = sext i32 %reass.mul to i64              ; 2 uses
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !58, !noalias !762 ; 2 uses
  %i.iu = ptrtoaddr ptr %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.is ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.iw = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.ix = and i64 %i.iw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i58 = icmp eq i64 %i.ix, 0
  %i.iy = lshr exact i64 %i.iw, 3
  %i.iz = and i64 %i.iy, 1
  %.0.i.i.i.i.i.i.i.i.i.i.i60 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i58, i64 %i.iz, i64 3 ; 7 uses
  %i.ja = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 3  ; 2 uses
  %i.jb = and i64 %i.ja, 2                        ; 2 uses
  %i.jc = add nuw nsw i64 %i.jb, %.0.i.i.i.i.i.i.i.i.i.i.i60 ; 5 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 0
  br i1 %.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i.i.i.i.i.i67:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59
  %i.jd = load double, ptr %i.io, align 8, !tbaa !59
  %i.je = fmul double %i.ip, %i.jd
  store double %i.je, ptr %i.iv, align 8, !tbaa !59
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i69, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i67.1:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !59
  %i.ji = fmul double %i.ip, %i.jh
  store double %i.ji, ptr %i.jf, align 8, !tbaa !59
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !59
  %i.jm = fmul double %i.ip, %i.jl
  store double %i.jm, ptr %i.jj, align 8, !tbaa !59
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67
  %i.jn = icmp samesign ugt i64 %i.ja, 1
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %._crit_edge.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i61:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i65, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.jo = icmp samesign ult i64 %i.jc, 3
  br i1 %i.jo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i61
  %i.jp = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 3
  %i.jq = sub nsw i64 %i.jp, %i.jb                ; 3 uses
  %min.iters.check = icmp ult i64 %i.jq, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader
  %i.jr = shl nsw i64 %i.is, 3
  %i.js = add i64 %i.jr, %i.iu
  %i.jt = mul i64 %i.im, %i.ij
  %i.ju = add i64 %i.jt, %20
  %i.jv = sub i64 %i.ju, %i.js
  %diff.check = icmp ugt i64 %i.jv, -32
  br i1 %diff.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jq, -4                      ; 3 uses
  %i.jw = or disjoint i64 %i.jc, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ip, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jx = or disjoint i64 %i.jc, %index           ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jx ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load = load <2 x double>, ptr %i.jz, align 8, !tbaa !59
  %wide.load152 = load <2 x double>, ptr %i.ka, align 8, !tbaa !59
  %i.kb = fmul <2 x double> %broadcast.splat, %wide.load
  %i.kc = fmul <2 x double> %broadcast.splat, %wide.load152
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store <2 x double> %i.kb, ptr %i.jy, align 8, !tbaa !59
  store <2 x double> %i.kc, ptr %i.kd, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181:    ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph = phi i64 [ %i.jc, %vector.memcheck ], [ %i.jc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader ], [ %i.jw, %middle.block ] ; 4 uses
  %i.kf = and i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, 3 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %i.kf, 3
  br i1 %lcmp.mod188.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol = phi i64 [ %i.kk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181 ] ; 3 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181 ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !59
  %i.kj = fmul double %i.ip, %i.ki
  store double %i.kj, ptr %i.kg, align 8, !tbaa !59
  %i.kk = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol, 1 ; 2 uses
  %prol.iter189.next = add i64 %prol.iter189, 1   ; 2 uses
  %i.kl = xor i64 %i.kf, %prol.iter189.next
  %prol.iter189.cmp.not = icmp eq i64 %i.kl, 3
  br i1 %prol.iter189.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol, !llvm.loop !751

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181
  %.05.i18.i.i.i.i.i.i.i.i.i.i63.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181 ], [ %i.kk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol ]
  %i.km = icmp ult i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, 3
  br i1 %i.km, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62
  %.05.i18.i.i.i.i.i.i.i.i.i.i63 = phi i64 [ %i.lg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i63.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit ] ; 6 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !59
  %i.kq = fmul double %i.ip, %i.kp
  store double %i.kq, ptr %i.kn, align 8, !tbaa !59
  %i.kr = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.kr
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.kr
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !59
  %i.kv = fmul double %i.ip, %i.ku
  store double %i.kv, ptr %i.ks, align 8, !tbaa !59
  %i.kw = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.kw
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !59
  %i.la = fmul double %i.ip, %i.kz
  store double %i.la, ptr %i.kx, align 8, !tbaa !59
  %i.lb = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 3 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.lb
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.lb
  %i.le = load double, ptr %i.ld, align 8, !tbaa !59
  %i.lf = fmul double %i.ip, %i.le
  store double %i.lf, ptr %i.lc, align 8, !tbaa !59
  %i.lg = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 4
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62, !llvm.loop !752

.lr.ph.i.i.i.i.i.i.i.i.i.i65:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59
  %21 = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.0.i.i.i.i.i.i.i.i.i.i.i60
  %23 = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.0.i.i.i.i.i.i.i.i.i.i.i60
  %24 = load <2 x double>, ptr %23, align 1, !tbaa !77
  %25 = fmul <2 x double> %21, %24
  store <2 x double> %25, ptr %22, align 16, !tbaa !77
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i61

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i61
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.lh = load i32, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next128, %i.li
  br i1 %i.lj, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59, label %._crit_edge120, !llvm.loop !753

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.ac ], [ %i.ih, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.if, %bb.ab ], [ %.pn.pn.pn.pn.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.ie, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body48

.body48:                                          ; preds = %bb.l, %bb.ag
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ag ], [ %i.cp, %bb.l ]
  %i.lk = load ptr, ptr %10, align 8, !tbaa !75
  call void @free(ptr noundef %i.lk) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ll = load ptr, ptr %8, align 8, !tbaa !58
  call void @free(ptr noundef %i.ll) #27
  br label %bb.ah

bb.ah:                                            ; preds = %.body48, %bb.o
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %.body48 ], [ %i.cs, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn, %bb.ah ], [ %i.ce, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.n
  %.pn41.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn, %bb.ai ], [ %i.cr, %bb.n ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.f) #27
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #30 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !31
  store i64 %3, ptr %i.c, align 8, !tbaa !91
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12eigenvectorsEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.464") align 16 %0, ptr noundef nonnull align 16 dereferenceable(560) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit
  %.02583 = phi i64 [ 0, %bb.a ], [ %i.gr, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit ] ; 6 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.02583
  %i.f = load <2 x double>, ptr %i.e, align 16, !tbaa !59
  %i.g = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.f) ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fmul double %i.h, f0x3CC0000000000000
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = fcmp ole double %i.j, %i.i
  %i.l = add nsw i64 %.02583, 1                   ; 5 uses
  %i.m = icmp eq i64 %i.l, 3
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  %.idx.i.i.i.i = mul i64 %.02583, 24             ; 3 uses
  %.idx.i.i.i.i27 = mul i64 %.02583, 48           ; 4 uses
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.idx.i39 = mul i64 %i.l, 24                    ; 2 uses
  %.idx.i43 = mul i64 %i.l, 48                    ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %.idx.i.i.i.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !59 ; 6 uses
  %i.q = getelementptr i8, ptr %1, i64 %.idx.i39
  %i.r = load double, ptr %i.q, align 8, !tbaa !59 ; 6 uses
  %i.s = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i27 ; 6 uses
  store double %i.p, ptr %i.s, align 16
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %i.r, ptr %.sroa.454.0..sroa_idx, align 8, !tbaa !77
  %i.t = fneg double %i.r
  %i.u = getelementptr i8, ptr %0, i64 %.idx.i43  ; 6 uses
  store double %i.p, ptr %i.u, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.t, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !77
  %i.v = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i.i
  %i.w = getelementptr i8, ptr %i.b, i64 %.idx.i39
  %i.x = getelementptr i8, ptr %i.c, i64 %.idx.i.i.i.i27 ; 2 uses
  %.sroa.454.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.y = getelementptr i8, ptr %i.c, i64 %.idx.i43 ; 2 uses
  %.sroa.452.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.z = load <2 x double>, ptr %i.v, align 8, !tbaa !59 ; 6 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0 ; 2 uses
  store double %i.aa, ptr %i.x, align 16
  %i.ab = load <2 x double>, ptr %i.w, align 8, !tbaa !59 ; 6 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  store double %i.ac, ptr %.sroa.454.0..sroa_idx.1, align 8, !tbaa !77
  %i.ad = fneg double %i.ac
  store double %i.aa, ptr %i.y, align 16
  store double %i.ad, ptr %.sroa.452.0..sroa_idx.1, align 8, !tbaa !77
  %i.ae = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i.i27 ; 2 uses
  %i.af = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  store double %i.af, ptr %i.ae, align 16
  %.sroa.454.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  store double %i.ag, ptr %.sroa.454.0..sroa_idx.2, align 8, !tbaa !77
  %i.ah = fneg double %i.ag
  %i.ai = getelementptr i8, ptr %i.d, i64 %.idx.i43 ; 2 uses
  store double %i.af, ptr %i.ai, align 16
  %.sroa.452.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.ah, ptr %.sroa.452.0..sroa_idx.2, align 8, !tbaa !77
  %i.aj = fmul double %i.r, %i.r
  %i.ak = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.aj)
  %i.al = fmul <2 x double> %i.ab, %i.ab
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.al) ; 2 uses
  %shift = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.am, %shift
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = fadd double %i.ak, %i.an                ; 2 uses
  %i.ap = fcmp ogt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i27 ; 8 uses
  %i.as = load double, ptr %i.aq, align 8, !tbaa !59 ; 3 uses
  store double %i.as, ptr %i.ar, align 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.as, double %i.as, double 0.000000e+00)
  %i.ax = load <2 x double>, ptr %i.au, align 8, !tbaa !59 ; 4 uses
end_hunk_0
