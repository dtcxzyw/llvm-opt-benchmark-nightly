Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN3igl4slim17compute_jacobiansERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE:bb.a
  %lcmp.mod1456.not = icmp eq i64 %xtraiter1455, 0
  br i1 %lcmp.mod1456.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.preheader1358, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i205.prol = phi i64 [ %i.bzk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i205.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.preheader1358 ] ; 3 uses
  %prol.iter1457 = phi i64 [ %prol.iter1457.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.preheader1358 ]
  %i.bzh = getelementptr inbounds nuw [8 x i8], ptr %i.bvv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i205.prol
  %i.bzi = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i205.prol
  %i.bzj = load double, ptr %i.bzi, align 8, !tbaa !40
  store double %i.bzj, ptr %i.bzh, align 8, !tbaa !40
  %i.bzk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i205.prol, 1 ; 2 uses
  %prol.iter1457.next = add i64 %prol.iter1457, 1 ; 2 uses
  %prol.iter1457.cmp.not = icmp eq i64 %prol.iter1457.next, %xtraiter1455
  br i1 %prol.iter1457.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol, !llvm.loop !315

.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.preheader1358
  %.05.i.i.i.i.i.i.i.i.i.i.i205.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i205.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.preheader1358 ], [ %i.bzk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol ]
  %i.bzl = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i205.ph, %.0.i.i.i.i.i.i.i.i.i.i.i196
  %i.bzm = icmp ugt i64 %i.bzl, -4
  br i1 %i.bzm, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204

.lr.ph.i.i.i.i.i.i.i.i.i.i.i204:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204
  %.05.i.i.i.i.i.i.i.i.i.i.i205 = phi i64 [ %i.cac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i205.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol.loopexit ] ; 6 uses
  %i.bzn = getelementptr inbounds nuw [8 x i8], ptr %i.bvv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i205
  %i.bzo = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i205
  %i.bzp = load double, ptr %i.bzo, align 8, !tbaa !40
  store double %i.bzp, ptr %i.bzn, align 8, !tbaa !40
  %i.bzq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i205, 1 ; 2 uses
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %i.bvv, i64 %i.bzq
  %i.bzs = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %i.bzq
  %i.bzt = load double, ptr %i.bzs, align 8, !tbaa !40
  store double %i.bzt, ptr %i.bzr, align 8, !tbaa !40
  %i.bzu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i205, 2 ; 2 uses
  %i.bzv = getelementptr inbounds nuw [8 x i8], ptr %i.bvv, i64 %i.bzu
  %i.bzw = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %i.bzu
  %i.bzx = load double, ptr %i.bzw, align 8, !tbaa !40
  store double %i.bzx, ptr %i.bzv, align 8, !tbaa !40
  %i.bzy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i205, 3 ; 2 uses
  %i.bzz = getelementptr inbounds nuw [8 x i8], ptr %i.bvv, i64 %i.bzy
  %i.caa = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %i.bzy
  %i.cab = load double, ptr %i.caa, align 8, !tbaa !40
  store double %i.cab, ptr %i.bzz, align 8, !tbaa !40
  %i.cac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i205, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i206.3 = icmp eq i64 %i.cac, %.0.i.i.i.i.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i206.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204, !llvm.loop !316

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i204, %middle.block1213, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i195
  %i.cad = icmp sgt i64 %i.byv, 1
  br i1 %i.cad, label %.lr.ph.i.i.i.i.i.i.i.i.i.i202, label %._crit_edge.i.i.i.i.i.i.i.i.i.i198

._crit_edge.i.i.i.i.i.i.i.i.i.i198:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i202, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197
  %i.cae = icmp slt i64 %i.byy, %i.bvu
  br i1 %i.cae, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i198
  %i.caf = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i196, %i.byx
  %i.cag = sub i64 %i.bvu, %i.caf                 ; 3 uses
  %min.iters.check1219 = icmp ult i64 %i.cag, 10
  br i1 %min.iters.check1219, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357, label %vector.memcheck1216

vector.memcheck1216:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader
  %i.cah = add i64 %.idx806, %i.bvt
  %i.cai = sub i64 %i.byp, %i.cah
  %diff.check1217 = icmp ugt i64 %i.cai, -32
  br i1 %diff.check1217, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357, label %vector.ph1220

vector.ph1220:                                    ; preds = %vector.memcheck1216
  %n.vec1221 = and i64 %i.cag, -4                 ; 3 uses
  %i.caj = add i64 %i.byy, %n.vec1221
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1226, %vector.body1222 ] ; 2 uses
  %i.cak = add i64 %i.byy, %index1223             ; 2 uses
  %i.cal = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cak ; 2 uses
  %i.cam = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cak ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 16
  %wide.load1224 = load <2 x double>, ptr %i.cam, align 8, !tbaa !40
  %wide.load1225 = load <2 x double>, ptr %i.can, align 8, !tbaa !40
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cal, i64 16
  store <2 x double> %wide.load1224, ptr %i.cal, align 8, !tbaa !40
  store <2 x double> %wide.load1225, ptr %i.cao, align 8, !tbaa !40
  %index.next1226 = add nuw i64 %index1223, 4     ; 2 uses
  %i.cap = icmp eq i64 %index.next1226, %n.vec1221
  br i1 %i.cap, label %middle.block1227, label %vector.body1222, !llvm.loop !317

middle.block1227:                                 ; preds = %vector.body1222
  %cmp.n1228 = icmp eq i64 %i.cag, %n.vec1221
  br i1 %cmp.n1228, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357:  ; preds = %vector.memcheck1216, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader, %middle.block1227
  %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph = phi i64 [ %i.byy, %vector.memcheck1216 ], [ %i.byy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader ], [ %i.caj, %middle.block1227 ] ; 4 uses
  %i.caq = sub i64 %i.bvu, %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph
  %xtraiter1458 = and i64 %i.caq, 3               ; 2 uses
  %lcmp.mod1459.not = icmp eq i64 %xtraiter1458, 0
  br i1 %lcmp.mod1459.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol = phi i64 [ %i.cau, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357 ] ; 3 uses
  %prol.iter1460 = phi i64 [ %prol.iter1460.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357 ]
  %i.car = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol
  %i.cas = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol
  %i.cat = load double, ptr %i.cas, align 8, !tbaa !40
  store double %i.cat, ptr %i.car, align 8, !tbaa !40
  %i.cau = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.prol, 1 ; 2 uses
  %prol.iter1460.next = add i64 %prol.iter1460, 1 ; 2 uses
  %prol.iter1460.cmp.not = icmp eq i64 %prol.iter1460.next, %xtraiter1458
  br i1 %prol.iter1460.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol, !llvm.loop !318

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357
  %.05.i18.i.i.i.i.i.i.i.i.i.i200.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.preheader1357 ], [ %i.cau, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol ]
  %i.cav = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200.ph, %i.bvu
  %i.caw = icmp ugt i64 %i.cav, -4
  br i1 %i.caw, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199
  %.05.i18.i.i.i.i.i.i.i.i.i.i200 = phi i64 [ %i.cbm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i200.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit ] ; 6 uses
  %i.cax = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200
  %i.cay = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200
  %i.caz = load double, ptr %i.cay, align 8, !tbaa !40
  store double %i.caz, ptr %i.cax, align 8, !tbaa !40
  %i.cba = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 1 ; 2 uses
  %i.cbb = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cba
  %i.cbc = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cba
  %i.cbd = load double, ptr %i.cbc, align 8, !tbaa !40
  store double %i.cbd, ptr %i.cbb, align 8, !tbaa !40
  %i.cbe = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 2 ; 2 uses
  %i.cbf = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cbe
  %i.cbg = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cbe
  %i.cbh = load double, ptr %i.cbg, align 8, !tbaa !40
  store double %i.cbh, ptr %i.cbf, align 8, !tbaa !40
  %i.cbi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 3 ; 2 uses
  %i.cbj = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.cbi
  %i.cbk = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.cbi
  %i.cbl = load double, ptr %i.cbk, align 8, !tbaa !40
  store double %i.cbl, ptr %i.cbj, align 8, !tbaa !40
  %i.cbm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i200, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i201.3 = icmp eq i64 %i.cbm, %i.bvu
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i201.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199, !llvm.loop !319

.lr.ph.i.i.i.i.i.i.i.i.i.i202:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197, %.lr.ph.i.i.i.i.i.i.i.i.i.i202
  %.021.i.i.i.i.i.i.i.i.i.i203 = phi i64 [ %i.cbq, %.lr.ph.i.i.i.i.i.i.i.i.i.i202 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i196, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i197 ] ; 3 uses
  %i.cbn = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %.021.i.i.i.i.i.i.i.i.i.i203
  %i.cbo = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %.021.i.i.i.i.i.i.i.i.i.i203
  %i.cbp = load <2 x double>, ptr %i.cbo, align 1, !tbaa !47
  store <2 x double> %i.cbp, ptr %i.cbn, align 16, !tbaa !47
  %i.cbq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i203, 2 ; 2 uses
  %i.cbr = icmp slt i64 %i.cbq, %i.byy
  br i1 %i.cbr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i202, label %._crit_edge.i.i.i.i.i.i.i.i.i.i198, !llvm.loop !203

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i199, %middle.block1227, %._crit_edge.i.i.i.i.i.i.i.i.i.i198
  %i.cbs = load ptr, ptr %2, align 8, !tbaa !38
  call void @free(ptr noundef %i.cbs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit207, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit81
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl4slim36update_weights_and_closest_rotationsERNS_8SLIMDataERN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZN3igl4slim17compute_jacobiansERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load double, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN3igl56slim_update_weights_and_closest_rotations_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_17MappingEnergyTypeEdRS2_S6_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.c, double noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl56slim_update_weights_and_closest_rotations_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_17MappingEnergyTypeEdRS2_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.901", align 16 ; 14 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.914", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.918", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Matrix.293", align 16 ; 9 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.901", align 16 ; 14 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.914", align 8 ; 4 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.918", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %14 = alloca %"class.Eigen::Matrix.293", align 8 ; 13 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.901", align 16 ; 14 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.914", align 8 ; 4 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.918", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %19 = alloca %"class.Eigen::Matrix.293", align 8 ; 13 uses
  %20 = alloca %"class.Eigen::Matrix.181", align 16 ; 7 uses
  %21 = alloca %"class.Eigen::Matrix.181", align 16 ; 13 uses
  %i.a = ptrtoaddr ptr %21 to i64
  %22 = alloca %"class.Eigen::Matrix.181", align 16 ; 3 uses
  %23 = alloca %"class.Eigen::Matrix.181", align 16 ; 6 uses
  %24 = alloca %"class.Eigen::Matrix.181", align 16 ; 5 uses
  %25 = alloca %"class.Eigen::Matrix.191", align 16 ; 4 uses
  %26 = alloca %"class.Eigen::Matrix.201", align 16 ; 10 uses
  %27 = alloca %"class.Eigen::Matrix.246", align 8 ; 12 uses
  %28 = alloca %"class.Eigen::Matrix.246", align 8 ; 20 uses
  %i.b = ptrtoaddr ptr %28 to i64
  %29 = alloca %"class.Eigen::Matrix.246", align 8 ; 3 uses
  %30 = alloca %"class.Eigen::Matrix.246", align 16 ; 13 uses
  %31 = alloca %"class.Eigen::Matrix.246", align 8 ; 6 uses
  %32 = alloca %"class.Eigen::Matrix.256", align 8 ; 5 uses
  %33 = alloca %"class.Eigen::Matrix.293", align 16 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph786, label %.loopexit

.lr.ph786:                                        ; preds = %.preheader
  %34 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph786, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349
  %indvars.iv788 = phi i64 [ 0, %.lr.ph786 ], [ %indvars.iv.next789, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349 ] ; 5 uses
  %i.r = phi i64 [ %i.g, %.lr.ph786 ], [ %i.in, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349 ] ; 3 uses
  %i.s = shl i64 %indvars.iv788, 3
  %i.t = sub i64 %i.s, %i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.u = load ptr, ptr %0, align 8, !tbaa !27
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv788 ; 4 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !40
  store double %i.w, ptr %20, align 16, !tbaa !40
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.r
  %i.y = load double, ptr %i.x, align 8, !tbaa !40
  store double %i.y, ptr %34, align 16, !tbaa !40
  %.idx782 = shl i64 %i.r, 4
  %i.z = getelementptr i8, ptr %i.v, i64 %.idx782
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  store double %i.aa, ptr %35, align 8, !tbaa !40
  %.idx783 = mul i64 %i.r, 24
  %i.ab = getelementptr i8, ptr %i.v, i64 %.idx783
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !40
  store double %i.ac, ptr %36, align 8, !tbaa !40
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 16 dereferenceable(32) %21, ptr noundef nonnull align 16 dereferenceable(32) %22, ptr noundef nonnull align 16 dereferenceable(32) %23, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(32) %24)
  %i.ad = load <2 x double>, ptr %25, align 16, !tbaa !40 ; 14 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1 ; 14 uses
  %i.af = extractelement <2 x double> %i.ad, i64 0 ; 11 uses
  switch i32 %1, label %bb.k [
    i32 5, label %bb.j
    i32 2, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = call double @pow(double noundef %i.af, double noundef -3.000000e+00) #28
  %i.ah = call double @pow(double noundef %i.ae, double noundef -3.000000e+00) #28
  %i.ai = fsub double %i.ae, %i.ah
  %i.aj = fmul double %i.ai, 2.000000e+00
  %i.ak = fcmp oeq double %i.af, 1.000000e+00
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ag, i64 0
  %i.an = fsub <2 x double> %i.al, %i.am
  %i.ao = fmul <2 x double> %i.an, splat (double 2.000000e+00) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = extractelement <2 x double> %i.ao, i64 1
  %i.ar = fdiv double %i.ap, %i.aq
  %i.as = call double @sqrt(double noundef %i.ar) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.at = phi double [ %i.as, %bb.d ], [ 4.000000e+00, %bb.c ] ; 2 uses
  %i.au = fcmp oeq double %i.ae, 1.000000e+00
  br i1 %i.au, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = fadd double %i.ae, -1.000000e+00
  %i.aw = fmul double %i.av, 2.000000e+00
  %i.ax = fdiv double %i.aj, %i.aw
  %i.ay = call double @sqrt(double noundef %i.ax) #28
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.az = call double @log(double noundef %i.af) #28
  %i.ba = call double @log(double noundef %i.ae) #28
  %i.bb = fadd <2 x double> %i.ad, splat (double -1.000000e+00)
  %i.bc = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ba, i64 1
  %i.be = fdiv <2 x double> %i.bd, %i.ad
  %i.bf = fmul <2 x double> %i.be, splat (double 2.000000e+00)
  %i.bg = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  %i.bh = fdiv <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = call double @sqrt(double noundef %i.bi) #28
  %i.bk = extractelement <2 x double> %i.bh, i64 1
  %i.bl = call double @sqrt(double noundef %i.bk) #28
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.bm = call double @pow(double noundef %i.af, double noundef 2.000000e+00) #28
  %i.bn = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = fmul <2 x double> %i.bo, splat (double 2.000000e+00)
  %i.bq = insertelement <2 x double> %i.ad, double 1.000000e+00, i64 0
  %i.br = fdiv <2 x double> %i.bq, %i.bp          ; 2 uses
  %i.bs = call double @pow(double noundef %i.ae, double noundef 2.000000e+00) #28
  %i.bt = insertelement <2 x double> %i.ad, double %i.bs, i64 1
  %i.bu = fmul <2 x double> %i.bt, splat (double 2.000000e+00)
  %i.bv = shufflevector <2 x double> %i.ad, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.bw = fdiv <2 x double> %i.bv, %i.bu          ; 2 uses
  %i.bx = fmul double %i.af, %i.ae
  %i.by = call double @sqrt(double noundef %i.bx) #28
  %i.bz = shufflevector <2 x double> %i.br, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.ca = shufflevector <2 x double> %i.br, <2 x double> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.cb = fsub <2 x double> %i.bz, %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ce = fsub <2 x double> %i.ad, %i.cd
  %i.cf = fmul <2 x double> %i.ce, splat (double 2.000000e+00)
  %i.cg = fdiv <2 x double> %i.cb, %i.cf          ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = call double @sqrt(double noundef %i.ch) #28
  %i.cj = extractelement <2 x double> %i.cg, i64 1
  %i.ck = call double @sqrt(double noundef %i.cj) #28
  %37 = load <2 x double>, ptr %24, align 16, !tbaa !40 ; 2 uses
  %38 = load <2 x double>, ptr %23, align 16, !tbaa !40
  %39 = fmul <2 x double> %i.cd, %38              ; 2 uses
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %41 = load <2 x double>, ptr %i.j, align 16, !tbaa !40 ; 2 uses
  %42 = load <2 x double>, ptr %i.i, align 16, !tbaa !40
  %43 = fmul <2 x double> %i.cd, %42              ; 2 uses
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %45 = fmul <2 x double> %37, %40
  %46 = fmul <2 x double> %41, %44
  %47 = fadd <2 x double> %45, %46
  %48 = fmul <2 x double> %37, %39
  %49 = fmul <2 x double> %41, %43
  %50 = fadd <2 x double> %48, %49                ; 2 uses
  %51 = extractelement <2 x double> %50, i64 0
  store double %51, ptr %21, align 16, !tbaa !40
  store <2 x double> %47, ptr %i.k, align 8, !tbaa !40
  %52 = extractelement <2 x double> %50, i64 1
  store double %52, ptr %i.l, align 8, !tbaa !40
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.cl = call double @pow(double noundef %i.af, double noundef -3.000000e+00) #28
  %i.cm = call double @pow(double noundef %i.ae, double noundef -3.000000e+00) #28
  %i.cn = call double @pow(double noundef %i.af, double noundef 2.000000e+00) #28
  %i.co = call double @pow(double noundef %i.ae, double noundef 2.000000e+00) #28
  %i.cp = fadd double %i.cn, %i.co
  %i.cq = fmul double %i.af, 2.000000e+00
  %i.cr = fmul double %i.cq, %i.ae
  %i.cs = fdiv double %i.cp, %i.cr
  %i.ct = fmul double %2, %i.cs
  %i.cu = call double @exp(double noundef %i.ct) #28
  %i.cv = fmul double %2, %i.cu
  %i.cw = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cl, i64 0
  %i.cy = fsub <2 x double> %i.cw, %i.cx
  %i.cz = fmul <2 x double> %i.cy, splat (double 2.000000e+00) ; 2 uses
  %i.da = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.db = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cm, i64 0
  %i.dc = fsub <2 x double> %i.da, %i.db
  %i.dd = fmul <2 x double> %i.dc, splat (double 2.000000e+00) ; 2 uses
  %i.de = shufflevector <2 x double> %i.cz, <2 x double> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.df = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.de, %i.dg
  %i.di = shufflevector <2 x double> %i.cz, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.dj = fdiv <2 x double> %i.dh, %i.di          ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  %i.dl = call double @sqrt(double noundef %i.dk) #28
  %i.dm = extractelement <2 x double> %i.dj, i64 1
  %i.dn = call double @sqrt(double noundef %i.dm) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.do = call double @pow(double noundef %i.af, double noundef -3.000000e+00) #28
  %i.dp = call double @pow(double noundef %i.ae, double noundef -3.000000e+00) #28
  %i.dq = call double @pow(double noundef %i.af, double noundef 2.000000e+00) #28
  %i.dr = call double @pow(double noundef %i.af, double noundef -2.000000e+00) #28
  %i.ds = fadd double %i.dq, %i.dr
  %i.dt = call double @pow(double noundef %i.ae, double noundef 2.000000e+00) #28
  %i.du = fadd double %i.ds, %i.dt
  %i.dv = call double @pow(double noundef %i.ae, double noundef -2.000000e+00) #28
  %i.dw = fadd double %i.du, %i.dv
  %i.dx = fmul double %2, %i.dw
  %i.dy = call double @exp(double noundef %i.dx) #28
  %i.dz = fmul double %2, %i.dy
  %i.ea = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.do, i64 0
  %i.ec = fsub <2 x double> %i.ea, %i.eb
  %i.ed = fmul <2 x double> %i.ec, splat (double 2.000000e+00) ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ef = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.dp, i64 0
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = fmul <2 x double> %i.eg, splat (double 2.000000e+00) ; 2 uses
  %i.ei = shufflevector <2 x double> %i.ed, <2 x double> %i.eh, <2 x i32> <i32 0, i32 2>
  %i.ej = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = shufflevector <2 x double> %i.ed, <2 x double> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.en = fdiv <2 x double> %i.el, %i.em          ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = call double @sqrt(double noundef %i.eo) #28
  %i.eq = extractelement <2 x double> %i.en, i64 1
  %i.er = call double @sqrt(double noundef %i.eq) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.10796.0 = phi double [ 4.000000e+00, %bb.e ], [ %i.er, %bb.j ], [ 1.000000e+00, %bb.b ], [ %i.bl, %bb.g ], [ %i.ck, %bb.h ], [ %i.dn, %bb.i ], [ %i.ay, %bb.f ]
  %.sroa.0795.0 = phi double [ %i.at, %bb.e ], [ %i.ep, %bb.j ], [ 1.000000e+00, %bb.b ], [ %i.bj, %bb.g ], [ %i.ci, %bb.h ], [ %i.dl, %bb.i ], [ %i.at, %bb.f ]
  %i.es = fadd <2 x double> %i.ad, splat (double -1.000000e+00)
  %i.et = load <2 x double>, ptr %23, align 16, !tbaa !40 ; 4 uses
  %i.eu = load <2 x double>, ptr %i.i, align 16, !tbaa !40 ; 4 uses
  %i.ev = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.es)
  %i.ew = fcmp olt <2 x double> %i.ev, splat (double 1.000000e-08)
  %i.ex = insertelement <2 x double> poison, double %.sroa.0795.0, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %.sroa.10796.0, i64 1
  %i.ez = select <2 x i1> %i.ew, <2 x double> splat (double 1.000000e+00), <2 x double> %i.ey ; 2 uses
  %i.fa = shufflevector <2 x double> %i.et, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fb = fmul <2 x double> %i.fa, %i.ez          ; 2 uses
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %i.et, %i.fc
  %i.fe = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = fmul <2 x double> %i.eu, %i.fe
  %i.fg = fadd <2 x double> %i.fd, %i.ff
  %i.fh = shufflevector <2 x double> %i.et, <2 x double> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.fi = fmul <2 x double> %i.ez, %i.fh          ; 2 uses
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x double> %i.et, %i.fj
  %i.fl = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fmul <2 x double> %i.eu, %i.fl
  %i.fn = fadd <2 x double> %i.fk, %i.fm
  store <2 x double> %i.fg, ptr %26, align 16, !tbaa !47
  store <2 x double> %i.fn, ptr %i.m, align 16, !tbaa !47
  %i.fo = load ptr, ptr %3, align 8, !tbaa !27, !noalias !366
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv788 ; 6 uses
  %i.fq = load i64, ptr %i.n, align 8, !tbaa !66, !noalias !366 ; 7 uses
  %i.fr = load i64, ptr %i.o, align 8, !tbaa !29  ; 6 uses
  %i.fs = icmp sgt i64 %i.fq, 0
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.k
  %min.iters.check840 = icmp ugt i64 %i.fq, 3
  %ident.check838.not = icmp eq i64 %i.fr, 1
  %or.cond = select i1 %min.iters.check840, i1 %ident.check838.not, i1 false
  br i1 %or.cond, label %vector.ph841, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859

vector.ph841:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec842 = and i64 %i.fq, 9223372036854775804  ; 3 uses
  br label %vector.body843

vector.body843:                                   ; preds = %vector.body843, %vector.ph841
  %index844 = phi i64 [ 0, %vector.ph841 ], [ %index.next847, %vector.body843 ] ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %index844 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %index844 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load845 = load <2 x double>, ptr %i.fu, align 16, !tbaa !40
  %wide.load846 = load <2 x double>, ptr %i.fv, align 16, !tbaa !40
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x double> %wide.load845, ptr %i.ft, align 8, !tbaa !40
  store <2 x double> %wide.load846, ptr %i.fw, align 8, !tbaa !40
  %index.next847 = add nuw i64 %index844, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next847, %n.vec842
  br i1 %i.fx, label %middle.block848, label %vector.body843, !llvm.loop !344

middle.block848:                                  ; preds = %vector.body843
  %cmp.n849 = icmp eq i64 %i.fq, %n.vec842
  br i1 %cmp.n849, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block848
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec842, %middle.block848 ] ; 3 uses
  %xtraiter865 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod866.not = icmp eq i64 %xtraiter865, 0
  br i1 %lcmp.mod866.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859 ] ; 3 uses
  %prol.iter867 = phi i64 [ %prol.iter867.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859 ]
  %i.fy = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.fr
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !40
  store double %i.gb, ptr %i.fz, align 8, !tbaa !40
  %i.gc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter867.next = add i64 %prol.iter867, 1   ; 2 uses
  %prol.iter867.cmp.not = icmp eq i64 %prol.iter867.next, %xtraiter865
  br i1 %prol.iter867.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !345

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader859 ], [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.fq
  %i.ge = icmp ugt i64 %i.gd, -4
  br i1 %i.ge, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.fr
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !40
  store double %i.gi, ptr %i.gg, align 8, !tbaa !40
  %i.gj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gk = mul nsw i64 %i.gj, %i.fr
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.gj
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !40
  store double %i.gn, ptr %i.gl, align 8, !tbaa !40
  %i.go = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gp = mul nsw i64 %i.go, %i.fr
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.go
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !40
  store double %i.gs, ptr %i.gq, align 8, !tbaa !40
  %i.gt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gu = mul nsw i64 %i.gt, %i.fr
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.gt
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !40
  store double %i.gx, ptr %i.gv, align 8, !tbaa !40
  %i.gy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gy, %i.fq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !346

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block848, %bb.k
  %i.gz = load ptr, ptr %4, align 8, !tbaa !27, !noalias !367 ; 2 uses
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv788 ; 6 uses
  %i.hc = load i64, ptr %i.p, align 8, !tbaa !66, !noalias !367 ; 7 uses
  %i.hd = load i64, ptr %i.q, align 8, !tbaa !29  ; 6 uses
  %i.he = icmp sgt i64 %i.hc, 0
  br i1 %i.he, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349

.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader:          ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %min.iters.check826 = icmp ugt i64 %i.hc, 5
  %ident.check822.not = icmp eq i64 %i.hd, 1
  %or.cond851 = select i1 %min.iters.check826, i1 %ident.check822.not, i1 false
  br i1 %or.cond851, label %vector.memcheck823, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858

vector.memcheck823:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader
  %i.hf = add i64 %i.t, %i.ha
  %i.hg = add i64 %i.hf, -1
  %diff.check824 = icmp ult i64 %i.hg, 31
  br i1 %diff.check824, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858, label %vector.ph827

vector.ph827:                                     ; preds = %vector.memcheck823
  %n.vec828 = and i64 %i.hc, 9223372036854775804  ; 3 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next833, %vector.body829 ] ; 3 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %index830 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index830 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load831 = load <2 x double>, ptr %i.hi, align 16, !tbaa !40
  %wide.load832 = load <2 x double>, ptr %i.hj, align 16, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x double> %wide.load831, ptr %i.hh, align 8, !tbaa !40
  store <2 x double> %wide.load832, ptr %i.hk, align 8, !tbaa !40
  %index.next833 = add nuw i64 %index830, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next833, %n.vec828
  br i1 %i.hl, label %middle.block834, label %vector.body829, !llvm.loop !349

middle.block834:                                  ; preds = %vector.body829
  %cmp.n835 = icmp eq i64 %i.hc, %n.vec828
  br i1 %cmp.n835, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858

.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858:       ; preds = %vector.memcheck823, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader, %middle.block834
  %.05.i.i.i.i.i.i.i.i.i.i347.ph = phi i64 [ 0, %vector.memcheck823 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader ], [ %n.vec828, %middle.block834 ] ; 3 uses
  %xtraiter868 = and i64 %i.hc, 3                 ; 2 uses
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  br i1 %lcmp.mod869.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol
  %.05.i.i.i.i.i.i.i.i.i.i347.prol = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ] ; 3 uses
  %prol.iter870 = phi i64 [ %prol.iter870.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ]
  %i.hm = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol, %i.hd
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !40
  store double %i.hp, ptr %i.hn, align 8, !tbaa !40
  %i.hq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol, 1 ; 2 uses
  %prol.iter870.next = add i64 %prol.iter870, 1   ; 2 uses
  %prol.iter870.cmp.not = icmp eq i64 %prol.iter870.next, %xtraiter868
  br i1 %prol.iter870.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol, !llvm.loop !350

.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858
  %.05.i.i.i.i.i.i.i.i.i.i347.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ]
  %i.hr = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.ph, %i.hc
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346

.lr.ph.i.i.i.i.i.i.i.i.i.i346:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i346
  %.05.i.i.i.i.i.i.i.i.i.i347 = phi i64 [ %i.im, %.lr.ph.i.i.i.i.i.i.i.i.i.i346 ], [ %.05.i.i.i.i.i.i.i.i.i.i347.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit ] ; 6 uses
  %i.ht = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, %i.hd
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ht
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i347
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !40
  store double %i.hw, ptr %i.hu, align 8, !tbaa !40
  %i.hx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 1 ; 2 uses
  %i.hy = mul nsw i64 %i.hx, %i.hd
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.hx
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !40
  store double %i.ib, ptr %i.hz, align 8, !tbaa !40
  %i.ic = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 2 ; 2 uses
  %i.id = mul nsw i64 %i.ic, %i.hd
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.ic
  %i.ig = load double, ptr %i.if, align 8, !tbaa !40
  store double %i.ig, ptr %i.ie, align 8, !tbaa !40
  %i.ih = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 3 ; 2 uses
  %i.ii = mul nsw i64 %i.ih, %i.hd
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ii
end_hunk_0
