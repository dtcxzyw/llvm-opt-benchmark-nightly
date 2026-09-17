Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rotate_vectors?download=true
inline.NumInlined: 390
inline.NumDeleted: 267
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3igl14rotate_vectorsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEES4_S4_:bb.a
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body215 ] ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %index216 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %index216 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load217 = load <2 x double>, ptr %i.bi, align 8, !tbaa !42
  %wide.load218 = load <2 x double>, ptr %i.bj, align 8, !tbaa !42
  %i.bk = fmul <2 x double> %broadcast.splat212, %wide.load217
  %i.bl = fmul <2 x double> %broadcast.splat212, %wide.load218
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %index216 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load219 = load <2 x double>, ptr %i.bm, align 8, !tbaa !42
  %wide.load220 = load <2 x double>, ptr %i.bn, align 8, !tbaa !42
  %i.bo = fmul <2 x double> %broadcast.splat214, %wide.load219
  %i.bp = fmul <2 x double> %broadcast.splat214, %wide.load220
  %i.bq = fadd <2 x double> %i.bk, %i.bo
  %i.br = fadd <2 x double> %i.bl, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x double> %i.bq, ptr %i.bh, align 8, !tbaa !42
  store <2 x double> %i.br, ptr %i.bs, align 8, !tbaa !42
  %index.next221 = add nuw i64 %index216, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.bt, label %middle.block222, label %vector.body215, !llvm.loop !24

middle.block222:                                  ; preds = %vector.body215
  br i1 %cmp.n223, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader:       ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us, %middle.block222
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us ], [ %n.vec210, %middle.block222 ] ; 6 uses
  %.neg251 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, 1
  br i1 %lcmp.mod250.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader
  %i.bu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %i.ac
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bu
  %i.bw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %i.y
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !42
  %i.bz = fmul double %i.bd, %i.by
  %i.ca = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %i.aa
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42
  %i.cd = fmul double %i.bf, %i.cc
  %i.ce = fadd double %i.bz, %i.cd
  store double %i.ce, ptr %i.bv, align 8, !tbaa !42
  %i.cf = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol ]
  %i.cg = icmp eq i64 %i.x, %.neg251
  br i1 %i.cg, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us
  %.05.i.i.i.i.i.i.i.i.i.i.us.us = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit ] ; 5 uses
  %i.ch = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, %i.ac
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, %i.y
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = fmul double %i.bd, %i.cl
  %i.cn = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, %i.aa
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !42
  %i.cq = fmul double %i.bf, %i.cp
  %i.cr = fadd double %i.cm, %i.cq
  store double %i.cr, ptr %i.ci, align 8, !tbaa !42
  %i.cs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, 1 ; 3 uses
  %i.ct = mul nsw i64 %i.cs, %i.ac
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ct
  %i.cv = mul nsw i64 %i.cs, %i.y
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !42
  %i.cy = fmul double %i.bd, %i.cx
  %i.cz = mul nsw i64 %i.cs, %i.aa
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !42
  %i.dc = fmul double %i.bf, %i.db
  %i.dd = fadd double %i.cy, %i.dc
  store double %i.dd, ptr %i.cu, align 8, !tbaa !42
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.1 = icmp eq i64 %i.de, %i.x
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us, !llvm.loop !25

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us, %middle.block222
  %i.df = add i32 %.038161.us.us, 1               ; 2 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = icmp samesign ugt i64 %i.k, %i.dg
  br i1 %i.dh, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit._crit_edge, !llvm.loop !26

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.di = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  br i1 %i.t, label %.lr.ph.split.us.split.split.us, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.dj = load double, ptr %i.di, align 8, !tbaa !42
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us162

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us162: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us162, %.lr.ph.split.us.split.split.us
  %.038161.us.us163 = phi i32 [ 0, %.lr.ph.split.us.split.split.us ], [ %i.do, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us162 ]
  %i.dk = tail call double @atan2(double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %i.dl = fadd double %i.dk, %i.dj                ; 2 uses
  %i.dm = tail call double @cos(double noundef %i.dl) #10 ; 0 uses
  %i.dn = tail call double @sin(double noundef %i.dl) #10 ; 0 uses
  %i.do = add i32 %.038161.us.us163, 1            ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ugt i64 %i.k, %i.dp
  br i1 %i.dq, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us162, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit._crit_edge, !llvm.loop !26

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us: ; preds = %.lr.ph.split.us.split, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us
  %i.dr = phi i64 [ %i.dz, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us ], [ 0, %.lr.ph.split.us.split ]
  %.038161.us = phi i32 [ %i.dy, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us ], [ 0, %.lr.ph.split.us.split ]
  %i.ds = tail call double @atan2(double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !42
  %i.dv = fadd double %i.ds, %i.du                ; 2 uses
  %i.dw = tail call double @cos(double noundef %i.dv) #10 ; 0 uses
  %i.dx = tail call double @sin(double noundef %i.dv) #10 ; 0 uses
  %i.dy = add i32 %.038161.us, 1                  ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = icmp samesign ugt i64 %i.k, %i.dz
  br i1 %i.ea, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit._crit_edge, !llvm.loop !26

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.ec) #10
  resume { ptr, i32 } %i.eb

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.ed = phi i64 [ %i.kn, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %.lr.ph.split.preheader ] ; 12 uses
  %.038161 = phi i32 [ %i.km, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %.lr.ph.split.preheader ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ed ; 12 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !42 ; 6 uses
  %i.eg = fmul double %i.ef, %i.ef                ; 3 uses
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader, label %.thread157

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.split
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.02223.i.i.i.i.i = phi double [ %i.fd, %.lr.ph.i.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.eh = mul nuw nsw i64 %.01724.i.i.i.i.i, %i.k
  %i.ei = getelementptr [8 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !42 ; 2 uses
  %i.ek = fmul double %i.ej, %i.ej
  %i.el = fadd double %.02223.i.i.i.i.i, %i.ek
  %i.em = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.en = mul nuw nsw i64 %i.em, %i.k
  %i.eo = getelementptr [8 x i8], ptr %i.ee, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !42 ; 2 uses
  %i.eq = fmul double %i.ep, %i.ep
  %i.er = fadd double %i.el, %i.eq
  %i.es = add nuw nsw i64 %.01724.i.i.i.i.i, 2
  %i.et = mul nuw nsw i64 %i.es, %i.k
  %i.eu = getelementptr [8 x i8], ptr %i.ee, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !42 ; 2 uses
  %i.ew = fmul double %i.ev, %i.ev
  %i.ex = fadd double %i.er, %i.ew
  %i.ey = add nuw nsw i64 %.01724.i.i.i.i.i, 3
  %i.ez = mul nuw nsw i64 %i.ey, %i.k
  %i.fa = getelementptr [8 x i8], ptr %i.ee, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !42 ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fadd double %i.ex, %i.fc                ; 3 uses
  %i.fe = add nuw nsw i64 %.01724.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i.i.i.i.i49.preheader.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

.lr.ph.i.i.i.i.i49.preheader.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i49.preheader, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.lr.ph.i.i.i.i.i49.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fe, %.lr.ph.i.i.i.i.i49.preheader.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.eg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fd, %.lr.ph.i.i.i.i.i49.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.epil = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.epil = phi double [ %i.fj, %.lr.ph.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.ff = mul nuw nsw i64 %.01724.i.i.i.i.i.epil, %i.k
  %i.fg = getelementptr [8 x i8], ptr %i.ee, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !42 ; 2 uses
  %i.fi = fmul double %i.fh, %i.fh
  %i.fj = fadd double %.02223.i.i.i.i.i.epil, %i.fi ; 2 uses
  %i.fk = add nuw nsw i64 %.01724.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.i.i.i.i49.preheader, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !28

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i49.preheader.unr-lcssa
  %.lcssa = phi double [ %i.fd, %.lr.ph.i.i.i.i.i49.preheader.unr-lcssa ], [ %i.fj, %.lr.ph.i.i.i.i.i.epil ]
  %.scalar.i146178 = tail call noundef double @llvm.sqrt.f64(double %.lcssa) ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ed ; 4 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !42
  %i.fn = fmul double %i.fm, %i.ef                ; 2 uses
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i49.epil.preheader, label %.lr.ph.i.i.i.i.i49

.thread157:                                       ; preds = %.lr.ph.split
  %.scalar.i146 = tail call noundef double @llvm.sqrt.f64(double %i.eg)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ed
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !42
  %i.fq = fmul double %i.fp, %i.ef
  %i.fr = load ptr, ptr %3, align 8, !tbaa !17, !noalias !47 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ed
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !42
  %i.fu = fmul double %i.ft, %i.ef
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader, %.lr.ph.i.i.i.i.i49
  %.01724.i.i.i.i.i50 = phi i64 [ %i.gm, %.lr.ph.i.i.i.i.i49 ], [ 1, %.lr.ph.i.i.i.i.i49.preheader ] ; 4 uses
  %.02223.i.i.i.i.i51 = phi double [ %i.gl, %.lr.ph.i.i.i.i.i49 ], [ %i.fn, %.lr.ph.i.i.i.i.i49.preheader ]
  %niter239 = phi i64 [ %niter239.next.1, %.lr.ph.i.i.i.i.i49 ], [ 0, %.lr.ph.i.i.i.i.i49.preheader ]
  %i.fv = mul nsw i64 %.01724.i.i.i.i.i50, %i.aa
  %i.fw = getelementptr [8 x i8], ptr %i.fl, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !42
  %i.fy = mul nuw nsw i64 %.01724.i.i.i.i.i50, %i.k
  %i.fz = getelementptr [8 x i8], ptr %i.ee, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !42
  %i.gb = fmul double %i.fx, %i.ga
  %i.gc = fadd double %.02223.i.i.i.i.i51, %i.gb
  %i.gd = add nuw nsw i64 %.01724.i.i.i.i.i50, 1  ; 2 uses
  %i.ge = mul nsw i64 %i.gd, %i.aa
  %i.gf = getelementptr [8 x i8], ptr %i.fl, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !42
  %i.gh = mul nuw nsw i64 %i.gd, %i.k
  %i.gi = getelementptr [8 x i8], ptr %i.ee, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !42
  %i.gk = fmul double %i.gg, %i.gj
  %i.gl = fadd double %i.gc, %i.gk                ; 3 uses
  %i.gm = add nuw nsw i64 %.01724.i.i.i.i.i50, 2  ; 2 uses
  %niter239.next.1 = add nuw i64 %niter239, 2     ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i49, !llvm.loop !30

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i49
  br i1 %lcmp.mod235.not, label %bb.e, label %.lr.ph.i.i.i.i.i49.epil.preheader

.lr.ph.i.i.i.i.i49.epil.preheader:                ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i49.preheader
  %.01724.i.i.i.i.i50.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.gm, %.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i51.epil.init = phi double [ %i.fn, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.gl, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod237)
  %i.gn = mul nsw i64 %.01724.i.i.i.i.i50.epil.init, %i.aa
  %i.go = getelementptr [8 x i8], ptr %i.fl, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !42
  %i.gq = mul nuw nsw i64 %.01724.i.i.i.i.i50.epil.init, %i.k
  %i.gr = getelementptr [8 x i8], ptr %i.ee, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !42
  %i.gt = fmul double %i.gp, %i.gs
  %i.gu = fadd double %.02223.i.i.i.i.i51.epil.init, %i.gt
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i49.epil.preheader
  %.lcssa229 = phi double [ %i.gl, %.unr-lcssa ], [ %i.gu, %.lr.ph.i.i.i.i.i49.epil.preheader ] ; 2 uses
  %i.gv = load ptr, ptr %3, align 8, !tbaa !17, !noalias !48 ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ed ; 4 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !42
  %i.gy = fmul double %i.gx, %i.ef                ; 2 uses
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i62.epil.preheader, label %.lr.ph.i.i.i.i.i62

.lr.ph.i.i.i.i.i62:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i62
  %.01724.i.i.i.i.i63 = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i62 ], [ 1, %bb.e ] ; 4 uses
  %.02223.i.i.i.i.i64 = phi double [ %i.hp, %.lr.ph.i.i.i.i.i62 ], [ %i.gy, %bb.e ]
  %niter246 = phi i64 [ %niter246.next.1, %.lr.ph.i.i.i.i.i62 ], [ 0, %bb.e ]
  %i.gz = mul nsw i64 %.01724.i.i.i.i.i63, %i.y
  %i.ha = getelementptr [8 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !42
  %i.hc = mul nuw nsw i64 %.01724.i.i.i.i.i63, %i.k
  %i.hd = getelementptr [8 x i8], ptr %i.ee, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8, !tbaa !42
  %i.hf = fmul double %i.hb, %i.he
  %i.hg = fadd double %.02223.i.i.i.i.i64, %i.hf
  %i.hh = add nuw nsw i64 %.01724.i.i.i.i.i63, 1  ; 2 uses
  %i.hi = mul nsw i64 %i.hh, %i.y
  %i.hj = getelementptr [8 x i8], ptr %i.gw, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !42
  %i.hl = mul nuw nsw i64 %i.hh, %i.k
  %i.hm = getelementptr [8 x i8], ptr %i.ee, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !42
  %i.ho = fmul double %i.hk, %i.hn
  %i.hp = fadd double %i.hg, %i.ho                ; 3 uses
  %i.hq = add nuw nsw i64 %.01724.i.i.i.i.i63, 2  ; 2 uses
  %niter246.next.1 = add nuw i64 %niter246, 2     ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i62, !llvm.loop !30

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i62
  br i1 %lcmp.mod242.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66, label %.lr.ph.i.i.i.i.i62.epil.preheader

.lr.ph.i.i.i.i.i62.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa, %bb.e
  %.01724.i.i.i.i.i63.epil.init = phi i64 [ 1, %bb.e ], [ %i.hq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i64.epil.init = phi double [ %i.gy, %bb.e ], [ %i.hp, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod244)
  %i.hr = mul nsw i64 %.01724.i.i.i.i.i63.epil.init, %i.y
  %i.hs = getelementptr [8 x i8], ptr %i.gw, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !42
  %i.hu = mul nuw nsw i64 %.01724.i.i.i.i.i63.epil.init, %i.k
  %i.hv = getelementptr [8 x i8], ptr %i.ee, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !42
  %i.hx = fmul double %i.ht, %i.hw
  %i.hy = fadd double %.02223.i.i.i.i.i64.epil.init, %i.hx
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66: ; preds = %.lr.ph.i.i.i.i.i62.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa, %.thread157
  %.scalar.i146179 = phi double [ %.scalar.i146, %.thread157 ], [ %.scalar.i146178, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa ], [ %.scalar.i146178, %.lr.ph.i.i.i.i.i62.epil.preheader ] ; 2 uses
  %5 = phi ptr [ %i.fr, %.thread157 ], [ %i.gv, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i.i.i.i.i62.epil.preheader ] ; 2 uses
  %.0.i.i.i48156 = phi double [ %i.fq, %.thread157 ], [ %.lcssa229, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa ], [ %.lcssa229, %.lr.ph.i.i.i.i.i62.epil.preheader ]
  %.0.i.i.i61 = phi double [ %i.fu, %.thread157 ], [ %i.hp, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.loopexit.unr-lcssa ], [ %i.hy, %.lr.ph.i.i.i.i.i62.epil.preheader ]
  %i.hz = ptrtoaddr ptr %5 to i64
  %i.ia = tail call double @atan2(double noundef %.0.i.i.i48156, double noundef %.0.i.i.i61) #10
  %.in.idx = select i1 %i.t, i64 0, i64 %i.ed
  %.in = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.in.idx
  %i.ib = load double, ptr %.in, align 8, !tbaa !42
  %i.ic = fadd double %i.ia, %i.ib                ; 2 uses
  %i.id = tail call double @cos(double noundef %i.ic) #10
  %i.ie = fmul double %.scalar.i146179, %i.id     ; 4 uses
  %i.if = tail call double @sin(double noundef %i.ic) #10
  %i.ig = fmul double %.scalar.i146179, %i.if     ; 4 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ed ; 4 uses
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ed ; 4 uses
  %brmerge260 = select i1 %min.iters.check, i1 true, i1 %i.an
  br i1 %brmerge260, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ij = sub i64 %i.hz, %i.v
  %diff.check = icmp ugt i64 %i.ij, -32
  %conflict.rdx = or i1 %diff.check, %diff.check193
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ed
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ie, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert194 = insertelement <2 x double> poison, double %i.ig, i64 0
  %broadcast.splat195 = shufflevector <2 x double> %broadcast.splatinsert194, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %index ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load = load <2 x double>, ptr %i.im, align 8, !tbaa !42
  %wide.load196 = load <2 x double>, ptr %i.in, align 8, !tbaa !42
  %i.io = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ip = fmul <2 x double> %broadcast.splat, %wide.load196
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load197 = load <2 x double>, ptr %i.iq, align 8, !tbaa !42
  %wide.load198 = load <2 x double>, ptr %i.ir, align 8, !tbaa !42
  %i.is = fmul <2 x double> %broadcast.splat195, %wide.load197
  %i.it = fmul <2 x double> %broadcast.splat195, %wide.load198
  %i.iu = fadd <2 x double> %i.io, %i.is
  %i.iv = fadd <2 x double> %i.ip, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x double> %i.iu, ptr %i.il, align 8, !tbaa !42
  store <2 x double> %i.iv, ptr %i.iw, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod248.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ed
  %i.iz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ac
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.iz
  %i.jb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.y
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !42
  %i.je = fmul double %i.ie, %i.jd
  %i.jf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.aa
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !42
  %i.ji = fmul double %i.ig, %i.jh
  %i.jj = fadd double %i.je, %i.ji
  store double %i.jj, ptr %i.ja, align 8, !tbaa !42
  %i.jk = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227 ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.jl = icmp eq i64 %i.x, %.neg
  br i1 %i.jl, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227.new:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ed
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ed
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227.new
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader227.new ], [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.jo = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ac
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.jo
  %i.jq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.y
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !42
  %i.jt = fmul double %i.ie, %i.js
  %i.ju = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.aa
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !42
  %i.jx = fmul double %i.ig, %i.jw
  %i.jy = fadd double %i.jt, %i.jx
  store double %i.jy, ptr %i.jp, align 8, !tbaa !42
  %i.jz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ka = mul nsw i64 %i.jz, %i.ac
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.ka
  %i.kc = mul nsw i64 %i.jz, %i.y
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !42
  %i.kf = fmul double %i.ie, %i.ke
  %i.kg = mul nsw i64 %i.jz, %i.aa
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !42
  %i.kj = fmul double %i.ig, %i.ki
  %i.kk = fadd double %i.kf, %i.kj
  store double %i.kk, ptr %i.kb, align 8, !tbaa !42
  %i.kl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.kl, %i.x
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !33

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66
  %i.km = add i32 %.038161, 1                     ; 2 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = icmp samesign ugt i64 %i.k, %i.kn
  br i1 %i.ko, label %.lr.ph.split, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit._crit_edge, !llvm.loop !26

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotIS5_EENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENS9_17scalar_product_opIdSD_EEE10ReturnTypeERKNS0_ISB_EE.exit66.us.us162, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit.preheader
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #10
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #12 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4
end_hunk_0
