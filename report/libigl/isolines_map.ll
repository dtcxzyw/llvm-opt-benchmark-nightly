inline.NumInlined: 194
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl12isolines_mapIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiiRNS1_15PlainObjectBaseIT1_EE:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %indvar207 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %indvar.next208, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %indvars.iv138.a = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %indvars.iv.next139.a, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %.02244.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us.preheader ], [ %i.cc, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ]
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv138.a ; 6 uses
  br i1 %min.iters.check211, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, label %vector.scevcheck203

vector.scevcheck203:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us
  %i.ap = add i64 %indvar207, %i.af
  %i.aq = shl i64 %i.ap, 3
  %.reass246 = add i64 %i.aq, %invariant.op245
  %diff.check209 = icmp ult i64 %.reass246, 31
  %or.cond = select i1 %i.z, i1 true, i1 %diff.check209
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, label %vector.body214

vector.body214:                                   ; preds = %vector.scevcheck203, %vector.body214
  %index215 = phi i64 [ %index.next218, %vector.body214 ], [ 0, %vector.scevcheck203 ] ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %index215 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index215 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load216 = load <2 x double>, ptr %i.as, align 8, !tbaa !29
  %wide.load217 = load <2 x double>, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %wide.load216, ptr %i.ar, align 8, !tbaa !29
  store <2 x double> %wide.load217, ptr %i.au, align 8, !tbaa !29
  %index.next218 = add nuw i64 %index215, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.av, label %middle.block219, label %vector.body214, !llvm.loop !31

middle.block219:                                  ; preds = %vector.body214
  br i1 %cmp.n220, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader:    ; preds = %vector.scevcheck203, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us, %middle.block219
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph = phi i64 [ 0, %vector.scevcheck203 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us ], [ %n.vec213, %middle.block219 ] ; 3 uses
  br i1 %lcmp.mod235.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ] ; 3 uses
  %prol.iter236 = phi i64 [ %prol.iter236.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ]
  %i.aw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %i.x
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %i.m
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !29
  store double %i.ba, ptr %i.ax, align 8, !tbaa !29
  %i.bb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, 1 ; 2 uses
  %prol.iter236.next = add i64 %prol.iter236, 1   ; 2 uses
  %prol.iter236.cmp.not = icmp eq i64 %prol.iter236.next, %xtraiter234
  br i1 %prol.iter236.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, !llvm.loop !34

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol ]
  %i.bc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.ph, %i.w
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit ] ; 6 uses
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, %i.x
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.be
  %i.bg = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, %i.m
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !29
  store double %i.bi, ptr %i.bf, align 8, !tbaa !29
  %i.bj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 1 ; 2 uses
  %i.bk = mul nsw i64 %i.bj, %i.x
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bk
  %i.bm = mul nuw nsw i64 %i.bj, %i.m
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !29
  store double %i.bo, ptr %i.bl, align 8, !tbaa !29
  %i.bp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 2 ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %i.x
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bq
  %i.bs = mul nuw nsw i64 %i.bp, %i.m
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !29
  store double %i.bu, ptr %i.br, align 8, !tbaa !29
  %i.bv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 3 ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %i.x
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bw
  %i.by = mul nuw nsw i64 %i.bv, %i.m
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !29
  store double %i.ca, ptr %i.bx, align 8, !tbaa !29
  %i.cb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us.3 = icmp eq i64 %i.cb, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us, !llvm.loop !36

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us, %middle.block219
  %indvars.iv.next139.a = add nsw i64 %indvars.iv138.a, 1 ; 2 uses
  %i.cc = add nuw nsw i32 %.02244.us.us.us, 1     ; 2 uses
  %exitcond141.not.a = icmp eq i32 %i.cc, %2
  %indvar.next208 = add i64 %indvar207, 1
  br i1 %exitcond141.not.a, label %._crit_edge.us.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us, !llvm.loop !37

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us
  %indvar188 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %indvar.next189, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %indvars.iv142 = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %indvars.iv.next143, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ] ; 2 uses
  %.046.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us.preheader ], [ %i.dm, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us ]
  %i.cd = add i64 %indvar188, %i.am
  %i.ce = shl i64 %i.cd, 3
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv142 ; 6 uses
  %.reass248.a = add i64 %i.ce, %invariant.op247.reass
  %diff.check190 = icmp ult i64 %.reass248.a, 31
  %or.cond223 = select i1 %or.cond222.not228, i1 true, i1 %diff.check190
  br i1 %or.cond223, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader, label %vector.body195

vector.body195:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, %vector.body195
  %index196 = phi i64 [ %index.next199, %vector.body195 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %index196 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index196 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load197 = load <2 x double>, ptr %i.ch, align 8, !tbaa !29
  %wide.load198 = load <2 x double>, ptr %i.ci, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %wide.load197, ptr %i.cg, align 8, !tbaa !29
  store <2 x double> %wide.load198, ptr %i.cj, align 8, !tbaa !29
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.ck, label %middle.block200, label %vector.body195, !llvm.loop !38

middle.block200:                                  ; preds = %vector.body195
  br i1 %cmp.n201, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, %middle.block200
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us ], [ %n.vec194, %middle.block200 ] ; 3 uses
  br i1 %lcmp.mod238.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ] ; 3 uses
  %prol.iter239 = phi i64 [ %prol.iter239.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ]
  %i.cl = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol, %i.x
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol
  %i.co = load double, ptr %i.cn, align 8, !tbaa !29
  store double %i.co, ptr %i.cm, align 8, !tbaa !29
  %i.cp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.prol, 1 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol, !llvm.loop !39

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol ]
  %i.cq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.ph, %i.ai
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit ] ; 6 uses
  %i.cs = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, %i.x
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !29
  store double %i.cv, ptr %i.ct, align 8, !tbaa !29
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 1 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.x
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cw
  %i.da = load double, ptr %i.cz, align 8, !tbaa !29
  store double %i.da, ptr %i.cy, align 8, !tbaa !29
  %i.db = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 2 ; 2 uses
  %i.dc = mul nsw i64 %i.db, %i.x
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.db
  %i.df = load double, ptr %i.de, align 8, !tbaa !29
  store double %i.df, ptr %i.dd, align 8, !tbaa !29
  %i.dg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 3 ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.x
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dg
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !29
  store double %i.dk, ptr %i.di, align 8, !tbaa !29
  %i.dl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us.us.3 = icmp eq i64 %i.dl, %i.ai
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us, !llvm.loop !40

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us.us, %middle.block200
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.dm = add nuw nsw i32 %.046.us.us.us, 1       ; 2 uses
  %exitcond145.not = icmp eq i32 %i.dm, %3
  %indvar.next189 = add i64 %indvar188, 1
  br i1 %exitcond145.not, label %..loopexit_crit_edge.us.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us.us, !llvm.loop !41

.preheader42.lr.ph.split.us.split:                ; preds = %.preheader42.lr.ph.split.us
  br i1 %i.y, label %.preheader42.us.us90.preheader, label %._crit_edge52

.preheader42.us.us90.preheader:                   ; preds = %.preheader42.lr.ph.split.us.split
  %min.iters.check174 = icmp ult i64 %i.w, 10
  %ident.check167 = icmp ne i64 %i.x, 1
  %ident.check168 = icmp ne i64 %i.m, 1
  %i.dn = or i1 %ident.check167, %ident.check168
  %n.vec176 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n183 = icmp eq i64 %i.w, %n.vec176
  %xtraiter231 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader42.us.us90

.preheader42.us.us90:                             ; preds = %.preheader42.us.us90.preheader, %._crit_edge.split.us.us.us105
  %indvars.iv134.a = phi i64 [ %indvars.iv.next135, %._crit_edge.split.us.us.us105 ], [ 0, %.preheader42.us.us90.preheader ] ; 3 uses
  %.02450.us.us92 = phi i32 [ %6, %._crit_edge.split.us.us.us105 ], [ 0, %.preheader42.us.us90.preheader ] ; 3 uses
  %i.do = shl i64 %indvars.iv134.a, 3
  %i.dp = add i64 %i.do, %i.t
  %i.dq = sub i64 %i.v, %i.dp
  %i.dr = sext i32 %.02450.us.us92 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv134.a ; 6 uses
  %i.ds = sext i32 %.02450.us.us92 to i64
  %6 = add i32 %2, %.02450.us.us92                ; 2 uses
  %invariant.op = add i64 %i.dq, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us98

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us98:  ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104, %.preheader42.us.us90
  %indvar170 = phi i64 [ %indvar.next171, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104 ], [ 0, %.preheader42.us.us90 ] ; 2 uses
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104 ], [ %i.ds, %.preheader42.us.us90 ] ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv130 ; 6 uses
  br i1 %min.iters.check174, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader, label %vector.scevcheck166

vector.scevcheck166:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us98
  %i.du = add i64 %indvar170, %i.dr
  %i.dv = shl i64 %i.du, 3
  %.reass244 = add i64 %i.dv, %invariant.op
  %diff.check172 = icmp ult i64 %.reass244, 31
  %or.cond224 = select i1 %i.dn, i1 true, i1 %diff.check172
  br i1 %or.cond224, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader, label %vector.body177

vector.body177:                                   ; preds = %vector.scevcheck166, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %vector.scevcheck166 ] ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %index178 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index178 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load179 = load <2 x double>, ptr %i.dx, align 8, !tbaa !29
  %wide.load180 = load <2 x double>, ptr %i.dy, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <2 x double> %wide.load179, ptr %i.dw, align 8, !tbaa !29
  store <2 x double> %wide.load180, ptr %i.dz, align 8, !tbaa !29
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.ea, label %middle.block182, label %vector.body177, !llvm.loop !42

middle.block182:                                  ; preds = %vector.body177
  br i1 %cmp.n183, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader: ; preds = %vector.scevcheck166, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us98, %middle.block182
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.ph = phi i64 [ 0, %vector.scevcheck166 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us98 ], [ %n.vec176, %middle.block182 ] ; 3 uses
  br i1 %lcmp.mod232.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader ]
  %i.eb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.prol, %i.x
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.prol, %i.m
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !29
  store double %i.ef, ptr %i.ec, align 8, !tbaa !29
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol, !llvm.loop !43

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol ]
  %i.eh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.ph, %i.w
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102 = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101 ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol.loopexit ] ; 6 uses
  %i.ej = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102, %i.x
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ej
  %i.el = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102, %i.m
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !29
  store double %i.en, ptr %i.ek, align 8, !tbaa !29
  %i.eo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102, 1 ; 2 uses
  %i.ep = mul nsw i64 %i.eo, %i.x
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ep
  %i.er = mul nuw nsw i64 %i.eo, %i.m
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !29
  store double %i.et, ptr %i.eq, align 8, !tbaa !29
  %i.eu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102, 2 ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %i.x
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ev
  %i.ex = mul nuw nsw i64 %i.eu, %i.m
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !29
  store double %i.ez, ptr %i.ew, align 8, !tbaa !29
  %i.fa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102, 3 ; 2 uses
  %i.fb = mul nsw i64 %i.fa, %i.x
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fb
  %i.fd = mul nuw nsw i64 %i.fa, %i.m
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !29
  store double %i.ff, ptr %i.fc, align 8, !tbaa !29
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.us102, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us103.3 = icmp eq i64 %i.fg, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.us103.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101, !llvm.loop !44

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.us101, %middle.block182
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131 to i32
  %exitcond133.not = icmp eq i32 %6, %lftr.wideiv
  %indvar.next171 = add i64 %indvar170, 1
  br i1 %exitcond133.not, label %._crit_edge.split.us.us.us105, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us.us.us98, !llvm.loop !37

._crit_edge.split.us.us.us105:                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us.us104
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134.a, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, %i.m
  br i1 %exitcond137.not, label %._crit_edge52, label %.preheader42.us.us90, !llvm.loop !24

.preheader42.lr.ph.split:                         ; preds = %.preheader42.lr.ph
  br i1 %i.p, label %.preheader42.us63.preheader, label %._crit_edge52

.preheader42.us63.preheader:                      ; preds = %.preheader42.lr.ph.split
  %invariant.op243 = sub i64 -1, %i.a
  br label %.preheader42.us63

.preheader42.us63:                                ; preds = %.preheader42.us63.preheader, %..loopexit_crit_edge.us78
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %..loopexit_crit_edge.us78 ], [ 0, %.preheader42.us63.preheader ]
  %.02450.us65 = phi i32 [ %.3.us70, %..loopexit_crit_edge.us78 ], [ 0, %.preheader42.us63.preheader ] ; 3 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 3 uses
  %.not.us66 = icmp eq i64 %i.m, %indvars.iv.next124
  br i1 %.not.us66, label %..loopexit_crit_edge.us78, label %.preheader.us71

..loopexit_crit_edge.us78.loopexit:               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87
  %i.fh = trunc nsw i64 %indvars.iv.next to i32
  br label %..loopexit_crit_edge.us78

..loopexit_crit_edge.us78:                        ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us67.preheader, %..loopexit_crit_edge.us78.loopexit, %.preheader42.us63
  %.3.us70 = phi i32 [ %.02450.us65, %.preheader42.us63 ], [ %i.fh, %..loopexit_crit_edge.us78.loopexit ], [ %i.fm, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us67.preheader ]
  %exitcond126.not = icmp eq i64 %indvars.iv.next124, %i.m
  br i1 %exitcond126.not, label %._crit_edge52, label %.preheader42.us63, !llvm.loop !24

.preheader.us71:                                  ; preds = %.preheader42.us63
  %i.fi = load ptr, ptr %4, align 8, !tbaa !16, !noalias !26 ; 2 uses
  %i.fj = load i64, ptr %i.q, align 8, !tbaa !23, !noalias !26 ; 7 uses
  %i.fk = load i64, ptr %i.r, align 8, !tbaa !9   ; 6 uses
  %i.fl = icmp sgt i64 %i.fj, 0
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us67.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.us67.preheader: ; preds = %.preheader.us71
  %i.fm = add i32 %3, %.02450.us65
  br label %..loopexit_crit_edge.us78

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81.preheader: ; preds = %.preheader.us71
  %i.fn = ptrtoaddr ptr %i.fi to i64
  %i.fo = sext i32 %.02450.us65 to i64            ; 2 uses
  %min.iters.check = icmp ult i64 %i.fj, 6
  %ident.check.not = icmp ne i64 %i.fk, 1
  %or.cond225.not227 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %invariant.op.reass = add i64 %i.fn, %invariant.op243
  %n.vec = and i64 %i.fj, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  %xtraiter = and i64 %i.fj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81

.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81.preheader ], [ %indvar.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87 ] ; 2 uses
  %.046.us.us82 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81.preheader ], [ %i.gy, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87 ]
  %i.fp = add i64 %indvar, %i.fo
  %i.fq = shl i64 %i.fp, 3
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %indvars.iv ; 6 uses
  %.reass = add i64 %i.fq, %invariant.op.reass
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond226 = select i1 %or.cond225.not227, i1 true, i1 %diff.check
  br i1 %or.cond226, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81 ] ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x double>, ptr %i.ft, align 8, !tbaa !29
  %wide.load165 = load <2 x double>, ptr %i.fu, align 8, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <2 x double> %wide.load, ptr %i.fs, align 8, !tbaa !29
  store <2 x double> %wide.load165, ptr %i.fv, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.prol = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader ]
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.prol, %i.fk
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.prol
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !29
  store double %i.ga, ptr %i.fy, align 8, !tbaa !29
  %i.gb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol, !llvm.loop !46

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol ]
  %i.gc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.ph, %i.fj
  %i.gd = icmp ugt i64 %i.gc, -4
  br i1 %i.gd, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84

.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84
  %.05.i.i.i.i.i.i.i.i.i.i27.us.us85 = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84 ], [ %.05.i.i.i.i.i.i.i.i.i.i27.us.us85.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol.loopexit ] ; 6 uses
  %i.ge = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85, %i.fk
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !29
  store double %i.gh, ptr %i.gf, align 8, !tbaa !29
  %i.gi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85, 1 ; 2 uses
  %i.gj = mul nsw i64 %i.gi, %i.fk
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gi
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !29
  store double %i.gm, ptr %i.gk, align 8, !tbaa !29
  %i.gn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85, 2 ; 2 uses
  %i.go = mul nsw i64 %i.gn, %i.fk
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gn
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !29
  store double %i.gr, ptr %i.gp, align 8, !tbaa !29
  %i.gs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85, 3 ; 2 uses
  %i.gt = mul nsw i64 %i.gs, %i.fk
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gs
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !29
  store double %i.gw, ptr %i.gu, align 8, !tbaa !29
  %i.gx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i27.us.us85, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us86.3 = icmp eq i64 %i.gx, %i.fj
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i28.us.us86.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84, !llvm.loop !47

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us87: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i26.us.us84, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gy = add nuw nsw i32 %.046.us.us82, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %..loopexit_crit_edge.us78.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.preheader.us.us81, !llvm.loop !41

._crit_edge52:                                    ; preds = %..loopexit_crit_edge.us78, %._crit_edge.split.us.us.us105, %..loopexit_crit_edge.us.us, %.preheader42.lr.ph.split, %.preheader42.lr.ph.split.us.split, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !23
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

end_hunk_0
