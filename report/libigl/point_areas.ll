inline.NumInlined: 12872
inline.NumDeleted: 5809
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7computeERKS2_j:bb.a
  %cmp.n523 = icmp eq i64 %i.xz, %n.vec514
  br i1 %cmp.n523, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader622

.lr.ph.i.i.i.i.i.i.i.preheader622:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block522
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.xt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ya, %middle.block522 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader622, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.yk, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader622 ] ; 2 uses
  %i.yh = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !17
  %i.yj = fmul double %.0249, %i.yi
  store double %i.yj, ptr %i.yh, align 8, !tbaa !17
  %i.yk = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.yk, %i.xr
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !340

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.yo, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.ym = load <2 x double>, ptr %i.yl, align 16, !tbaa !99
  %i.yn = fmul <2 x double> %i.xw, %i.ym
  store <2 x double> %i.yn, ptr %i.yl, align 16, !tbaa !99
  %i.yo = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.yp = icmp slt i64 %i.yo, %i.xt
  br i1 %i.yp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !341

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block522, %._crit_edge.i.i.i.i.i.i
  %i.yq = load i64, ptr %i.lb, align 8, !tbaa !159 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.yq, ptr %i.yr, align 8, !tbaa !342
  %i.ys = icmp sgt i64 %i.yq, 0
  br i1 %i.ys, label %.lr.ph281, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.055279 = phi i64 [ 0, %.lr.ph ], [ %i.aba, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 5 uses
  %i.yt = load ptr, ptr %i.jt, align 8, !tbaa !20
  %i.yu = load i64, ptr %i.jv, align 8, !tbaa !9
  %i.yv = mul nsw i64 %i.yu, %.055279
  %i.yw = getelementptr [8 x i8], ptr %i.yt, i64 %.055279
  %i.yx = getelementptr [8 x i8], ptr %i.yw, i64 %i.yv
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !17 ; 2 uses
  %i.yz = call noundef double @llvm.fabs.f64(double %i.yy)
  %i.za = load ptr, ptr %i.xn, align 8, !tbaa !16
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %.055279
  store double %i.yz, ptr %i.zb, align 8, !tbaa !17
  %i.zc = load i8, ptr %i.lf, align 1, !tbaa !294, !range !295, !noundef !48
  %i.zd = trunc nuw i8 %i.zc to i1
  %i.ze = load i8, ptr %i.lg, align 8, !range !295
  %i.zf = trunc nuw i8 %i.ze to i1
  %i.zg = select i1 %i.zd, i1 true, i1 %i.zf
  %i.zh = fcmp olt double %i.yy, 0.000000e+00
  %or.cond = and i1 %i.zh, %i.zg
  br i1 %or.cond, label %bb.ak, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

bb.ak:                                            ; preds = %bb.aj
  %i.zi = load ptr, ptr %0, align 8, !tbaa !20, !noalias !343
  %i.zj = load i64, ptr %i.lh, align 8, !tbaa !9, !noalias !343 ; 7 uses
  %i.zk = mul nsw i64 %i.zj, %.055279
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.zi, i64 %i.zk ; 6 uses
  %i.zm = ptrtoint ptr %i.zl to i64               ; 2 uses
  %i.zn = and i64 %i.zm, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.zn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.zo = lshr exact i64 %i.zm, 3
  %i.zp = and i64 %i.zo, 1
  %i.zq = call i64 @llvm.smin.i64(i64 %i.zp, i64 %i.zj)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zq, %bb.al ], [ %i.zj, %bb.ak ] ; 9 uses
  %i.zr = sub nsw i64 %i.zj, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.zs = sdiv i64 %i.zr, 2                       ; 2 uses
  %i.zt = shl nsw i64 %i.zs, 1
  %i.zu = add nsw i64 %i.zt, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.zv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check500 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check500, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader624, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec502 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next507, %vector.body503 ] ; 2 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %index504 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16 ; 2 uses
  %wide.load505 = load <2 x double>, ptr %i.zw, align 8, !tbaa !17
  %wide.load506 = load <2 x double>, ptr %i.zx, align 8, !tbaa !17
  %i.zy = fneg <2 x double> %wide.load505
  %i.zz = fneg <2 x double> %wide.load506
  store <2 x double> %i.zy, ptr %i.zw, align 8, !tbaa !17
  store <2 x double> %i.zz, ptr %i.zx, align 8, !tbaa !17
  %index.next507 = add nuw i64 %index504, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.aaa, label %middle.block508, label %vector.body503, !llvm.loop !346

middle.block508:                                  ; preds = %vector.body503
  %cmp.n509 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec502
  br i1 %cmp.n509, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader624

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader624:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block508
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec502, %middle.block508 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader624, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader624 ] ; 2 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !17
  %i.aad = fneg double %i.aac
  store double %i.aad, ptr %i.aab, align 8, !tbaa !17
  %i.aae = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i132 = icmp eq i64 %i.aae, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i132, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !347

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block508, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aaf = icmp sgt i64 %i.zr, 1
  br i1 %i.aaf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.aag = icmp slt i64 %i.zu, %i.zj
  br i1 %i.aag, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aah = shl nsw i64 %i.zs, 1
  %i.aai = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.aah
  %i.aaj = sub i64 %i.zj, %i.aai                  ; 3 uses
  %min.iters.check488 = icmp ult i64 %i.aaj, 4
  br i1 %min.iters.check488, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader623, label %vector.ph489

vector.ph489:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec490 = and i64 %i.aaj, -4                  ; 3 uses
  %i.aak = add i64 %i.zu, %n.vec490
  %i.aal = getelementptr [8 x i8], ptr %i.zl, i64 %i.zu
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next495, %vector.body491 ] ; 2 uses
  %i.aam = getelementptr [8 x i8], ptr %i.aal, i64 %index492 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %wide.load493 = load <2 x double>, ptr %i.aam, align 8, !tbaa !17
  %wide.load494 = load <2 x double>, ptr %i.aan, align 8, !tbaa !17
  %i.aao = fneg <2 x double> %wide.load493
  %i.aap = fneg <2 x double> %wide.load494
  store <2 x double> %i.aao, ptr %i.aam, align 8, !tbaa !17
  store <2 x double> %i.aap, ptr %i.aan, align 8, !tbaa !17
  %index.next495 = add nuw i64 %index492, 4       ; 2 uses
  %i.aaq = icmp eq i64 %index.next495, %n.vec490
  br i1 %i.aaq, label %middle.block496, label %vector.body491, !llvm.loop !348

middle.block496:                                  ; preds = %vector.body491
  %cmp.n497 = icmp eq i64 %i.aaj, %n.vec490
  br i1 %cmp.n497, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader623

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader623:      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block496
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.zu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aak, %middle.block496 ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader623, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aau, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader623 ] ; 2 uses
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.zl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !17
  %i.aat = fneg double %i.aas
  store double %i.aat, ptr %i.aar, align 8, !tbaa !17
  %i.aau = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aau, %i.zj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !349

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aay, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.zl, i64 %.021.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aaw = load <2 x i64>, ptr %i.aav, align 1, !tbaa !99
  %i.aax = xor <2 x i64> %i.aaw, splat (i64 -9223372036854775808)
  store <2 x i64> %i.aax, ptr %i.aav, align 16, !tbaa !99
  %i.aay = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aaz = icmp slt i64 %i.aay, %i.zu
  br i1 %i.aaz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !350

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block496, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.aba = add nuw nsw i64 %.055279, 1            ; 2 uses
  %i.abb = load i64, ptr %i.lb, align 8, !tbaa !159
  %i.abc = icmp slt i64 %i.aba, %i.abb
  br i1 %i.abc, label %bb.aj, label %._crit_edge, !llvm.loop !351

.lr.ph281:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, %.thread
  %i.abd = phi i64 [ %i.ajw, %.thread ], [ %i.yq, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit ] ; 3 uses
  %.0280 = phi i64 [ %i.ajv, %.thread ], [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit ] ; 15 uses
  %i.abe = shl i64 %.0280, 3
  %i.abf = add nuw i64 %.0280, 1
  %i.abg = shl i64 %.0280, 3                      ; 2 uses
  %i.abh = add i64 %i.abg, 8
  %i.abi = shl i64 %.0280, 3
  %i.abj = add nuw i64 %.0280, 1
  %i.abk = shl i64 %.0280, 3                      ; 2 uses
  %i.abl = add i64 %i.abk, 8
  %i.abm = sub nsw i64 %i.abd, %.0280             ; 2 uses
  %i.abn = load i64, ptr %i.xp, align 8, !tbaa !14, !noalias !352
  %i.abo = sub nsw i64 %i.abn, %i.abm
  %i.abp = load ptr, ptr %i.xo, align 8, !tbaa !16, !noalias !352 ; 3 uses
  %i.abq = getelementptr inbounds [8 x i8], ptr %i.abp, i64 %i.abo ; 4 uses
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !17 ; 5 uses
  %i.abs = icmp sgt i64 %i.abm, 1
  br i1 %i.abs, label %.lr.ph.i.i.i.i133.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread256

.lr.ph.i.i.i.i133.preheader:                      ; preds = %.lr.ph281
  %i.abt = xor i64 %.0280, -1
  %i.abu = add i64 %i.abd, %i.abt                 ; 3 uses
  %reass.sub = sub i64 %i.abd, %.0280
  %xtraiter649 = and i64 %i.abu, 1
  %i.abv = icmp eq i64 %reass.sub, 2
  br i1 %i.abv, label %.lr.ph.i.i.i.i133.epil.preheader, label %.lr.ph.i.i.i.i133.preheader.new

.lr.ph.i.i.i.i133.preheader.new:                  ; preds = %.lr.ph.i.i.i.i133.preheader
  %unroll_iter654 = and i64 %i.abu, -2
  br label %.lr.ph.i.i.i.i133

.lr.ph.i.i.i.i133:                                ; preds = %.lr.ph.i.i.i.i133, %.lr.ph.i.i.i.i133.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i133.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i133 ]
  %.sroa.7.0.i.i = phi double [ %i.abr, %.lr.ph.i.i.i.i133.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i133 ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i133.preheader.new ], [ %i.acg, %.lr.ph.i.i.i.i133 ] ; 4 uses
  %i.abw = phi double [ %i.abr, %.lr.ph.i.i.i.i133.preheader.new ], [ %i.acf, %.lr.ph.i.i.i.i133 ] ; 2 uses
  %niter655 = phi i64 [ 0, %.lr.ph.i.i.i.i133.preheader.new ], [ %niter655.next.1, %.lr.ph.i.i.i.i133 ]
  %i.abx = getelementptr [8 x i8], ptr %i.abq, i64 %.02123.i.i.i.i
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !17 ; 3 uses
  %i.abz = fcmp ogt double %i.aby, %i.abw         ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.abz, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.abz, double %i.aby, double %.sroa.7.0.i.i
  %i.aca = select i1 %i.abz, double %i.aby, double %i.abw ; 2 uses
  %i.acb = add nuw nsw i64 %.02123.i.i.i.i, 1     ; 2 uses
  %i.acc = getelementptr [8 x i8], ptr %i.abq, i64 %i.acb
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !17 ; 3 uses
  %i.ace = fcmp ogt double %i.acd, %i.aca         ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ace, i64 %i.acb, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ace, double %i.acd, double %.sroa.7.1.i.i ; 3 uses
  %i.acf = select i1 %i.ace, double %i.acd, double %i.aca ; 2 uses
  %i.acg = add nuw nsw i64 %.02123.i.i.i.i, 2     ; 2 uses
  %niter655.next.1 = add nuw i64 %niter655, 2     ; 2 uses
  %niter655.ncmp.1 = icmp eq i64 %niter655.next.1, %unroll_iter654
  br i1 %niter655.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i133, !llvm.loop !355

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i133
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  br i1 %lcmp.mod650.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i133.epil.preheader

.lr.ph.i.i.i.i133.epil.preheader:                 ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i133.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i133.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.abr, %.lr.ph.i.i.i.i133.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i133.preheader ], [ %i.acg, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.abr, %.lr.ph.i.i.i.i133.preheader ], [ %i.acf, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod653 = trunc i64 %i.abu to i1
  call void @llvm.assume(i1 %lcmp.mod653)
  %i.ach = getelementptr [8 x i8], ptr %i.abq, i64 %.02123.i.i.i.i.epil.init
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !17 ; 2 uses
  %i.acj = fcmp ogt double %i.aci, %.epil.init    ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.acj, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.acj, double %i.aci, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i133.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i133.epil.preheader ] ; 4 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i133.epil.preheader ]
  %i.ack = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.ack, label %bb.am, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit153

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread256: ; preds = %.lr.ph281
  %i.acl = fcmp une double %i.abr, 0.000000e+00
  br i1 %i.acl, label %.thread, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit153

bb.am:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.acm = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0280 ; 7 uses
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %.0280 ; 2 uses
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.acm ; 2 uses
  %i.acp = load double, ptr %i.acn, align 8, !tbaa !17
  %i.acq = load double, ptr %i.aco, align 8, !tbaa !17
  store double %i.acq, ptr %i.acn, align 8, !tbaa !17
  store double %i.acp, ptr %i.aco, align 8, !tbaa !17
  %i.acr = load i8, ptr %i.lf, align 1, !tbaa !294, !range !295, !noundef !48
  %i.acs = trunc nuw i8 %i.acr to i1
  %i.act = load i8, ptr %i.lg, align 8, !range !295
  %i.acu = trunc nuw i8 %i.act to i1
  %i.acv = select i1 %i.acs, i1 true, i1 %i.acu
  br i1 %i.acv, label %bb.ao, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit

bb.ao:                                            ; preds = %bb.an
  %i.acw = load ptr, ptr %0, align 8, !tbaa !20, !noalias !356 ; 8 uses
  %i.acx = load i64, ptr %i.lh, align 8, !tbaa !9, !noalias !356 ; 15 uses
  %i.acy = mul nsw i64 %i.acx, %i.acm
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.acw, i64 %i.acy ; 11 uses
  %i.ada = mul i64 %i.acx, %.0280
  %i.adb = getelementptr [8 x i8], ptr %i.acw, i64 %i.ada ; 10 uses
  %i.adc = ptrtoint ptr %i.acz to i64             ; 2 uses
  %i.add = and i64 %i.adc, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.add, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ap, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ade = lshr exact i64 %i.adc, 3
  %i.adf = and i64 %i.ade, 1
  %i.adg = call i64 @llvm.smin.i64(i64 %i.adf, i64 %i.acx)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.adg, %bb.ap ], [ %i.acx, %bb.ao ] ; 13 uses
  %i.adh = sub nsw i64 %i.acx, %.0.i.i.i.i.i.i.i  ; 2 uses
  %i.adi = sdiv i64 %i.adh, 2                     ; 3 uses
  %i.adj = shl nsw i64 %i.adi, 1
  %i.adk = add nsw i64 %i.adj, %.0.i.i.i.i.i.i.i  ; 6 uses
  %i.adl = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.adl, label %.lr.ph.i.i.i.i.i.i.i137.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i137.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check600 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check600, label %.lr.ph.i.i.i.i.i.i.i137.preheader620, label %vector.memcheck592

vector.memcheck592:                               ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader
  %i.adm = shl i64 %.0.i.i.i.i.i.i.i, 3           ; 2 uses
  %scevgep593 = getelementptr i8, ptr %i.acw, i64 %i.adm
  %i.adn = shl i64 %i.acx, 3
  %i.ado = mul i64 %i.adn, %i.acm
  %scevgep594 = getelementptr i8, ptr %scevgep593, i64 %i.ado
  %i.adp = mul i64 %i.acx, %i.abe
  %i.adq = getelementptr i8, ptr %i.acw, i64 %i.adp
  %scevgep595 = getelementptr i8, ptr %i.adq, i64 %i.adm
  %bound0596 = icmp ult ptr %i.acz, %scevgep595
  %bound1597 = icmp ult ptr %i.adb, %scevgep594
  %found.conflict598 = and i1 %bound0596, %bound1597
  br i1 %found.conflict598, label %.lr.ph.i.i.i.i.i.i.i137.preheader620, label %vector.ph601

vector.ph601:                                     ; preds = %vector.memcheck592
  %n.vec602 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph601
  %index604 = phi i64 [ 0, %vector.ph601 ], [ %index.next609, %vector.body603 ] ; 3 uses
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %index604 ; 3 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %index604 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 16 ; 2 uses
  %wide.load605 = load <2 x double>, ptr %i.adr, align 8, !tbaa !17, !alias.scope !359, !noalias !362
  %wide.load606 = load <2 x double>, ptr %i.adt, align 8, !tbaa !17, !alias.scope !359, !noalias !362
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 2 uses
  %wide.load607 = load <2 x double>, ptr %i.ads, align 8, !tbaa !17, !alias.scope !362
  %wide.load608 = load <2 x double>, ptr %i.adu, align 8, !tbaa !17, !alias.scope !362
  store <2 x double> %wide.load607, ptr %i.adr, align 8, !tbaa !17, !alias.scope !359, !noalias !362
  store <2 x double> %wide.load608, ptr %i.adt, align 8, !tbaa !17, !alias.scope !359, !noalias !362
  store <2 x double> %wide.load605, ptr %i.ads, align 8, !tbaa !17, !alias.scope !362
  store <2 x double> %wide.load606, ptr %i.adu, align 8, !tbaa !17, !alias.scope !362
  %index.next609 = add nuw i64 %index604, 4       ; 2 uses
  %i.adv = icmp eq i64 %index.next609, %n.vec602
  br i1 %i.adv, label %middle.block610, label %vector.body603, !llvm.loop !364

middle.block610:                                  ; preds = %vector.body603
  %cmp.n611 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec602
  br i1 %cmp.n611, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i137.preheader620

.lr.ph.i.i.i.i.i.i.i137.preheader620:             ; preds = %vector.memcheck592, %.lr.ph.i.i.i.i.i.i.i137.preheader, %middle.block610
  %.05.i.i.i.i.i.i.i138.ph = phi i64 [ 0, %vector.memcheck592 ], [ 0, %.lr.ph.i.i.i.i.i.i.i137.preheader ], [ %n.vec602, %middle.block610 ] ; 5 uses
  %.neg671 = or disjoint i64 %.05.i.i.i.i.i.i.i138.ph, 1
  %xtraiter656 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod657.not, label %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i137.prol

.lr.ph.i.i.i.i.i.i.i137.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader620
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %.05.i.i.i.i.i.i.i138.ph ; 2 uses
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %.05.i.i.i.i.i.i.i138.ph ; 2 uses
  %i.ady = load double, ptr %i.adw, align 8, !tbaa !17
  %i.adz = load double, ptr %i.adx, align 8, !tbaa !17
  store double %i.adz, ptr %i.adw, align 8, !tbaa !17
  store double %i.ady, ptr %i.adx, align 8, !tbaa !17
  %i.aea = or disjoint i64 %.05.i.i.i.i.i.i.i138.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit

.lr.ph.i.i.i.i.i.i.i137.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i137.prol, %.lr.ph.i.i.i.i.i.i.i137.preheader620
  %.05.i.i.i.i.i.i.i138.unr = phi i64 [ %.05.i.i.i.i.i.i.i138.ph, %.lr.ph.i.i.i.i.i.i.i137.preheader620 ], [ %i.aea, %.lr.ph.i.i.i.i.i.i.i137.prol ]
  %i.aeb = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg671
  br i1 %i.aeb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i137

.lr.ph.i.i.i.i.i.i.i137:                          ; preds = %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i137
  %.05.i.i.i.i.i.i.i138 = phi i64 [ %i.ael, %.lr.ph.i.i.i.i.i.i.i137 ], [ %.05.i.i.i.i.i.i.i138.unr, %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit ] ; 4 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %.05.i.i.i.i.i.i.i138 ; 2 uses
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %.05.i.i.i.i.i.i.i138 ; 2 uses
  %i.aee = load double, ptr %i.aec, align 8, !tbaa !17
  %i.aef = load double, ptr %i.aed, align 8, !tbaa !17
  store double %i.aef, ptr %i.aec, align 8, !tbaa !17
  store double %i.aee, ptr %i.aed, align 8, !tbaa !17
  %i.aeg = add nuw nsw i64 %.05.i.i.i.i.i.i.i138, 1 ; 2 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.aeg ; 2 uses
  %i.aej = load double, ptr %i.aeh, align 8, !tbaa !17
  %i.aek = load double, ptr %i.aei, align 8, !tbaa !17
  store double %i.aek, ptr %i.aeh, align 8, !tbaa !17
  store double %i.aej, ptr %i.aei, align 8, !tbaa !17
  %i.ael = add nuw nsw i64 %.05.i.i.i.i.i.i.i138, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader232

.lr.ph.i17.i.i.i.i.i.i.preheader232:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fi, %middle.block ] ; 6 uses
  %i.ft = sub i64 %indvar203, %.05.i18.i.i.i.i.i.i.ph
  %.neg237 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter234 = and i64 %i.ft, 1
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !17
  %i.fx = fmul double %i.ci, %i.fw
  %i.fy = load double, ptr %i.fu, align 8, !tbaa !17
  %i.fz = fadd double %i.fx, %i.fy
  store double %i.fz, ptr %i.fu, align 8, !tbaa !17
  %i.ga = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader232 ], [ %i.ga, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.gb = icmp eq i64 %indvar203, %.neg237
  br i1 %i.gb, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.05.i18.i.i.i.i.i.i
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !17
  %i.gf = fmul double %i.ci, %i.ge
  %i.gg = load double, ptr %i.gc, align 8, !tbaa !17
  %i.gh = fadd double %i.gf, %i.gg
  store double %i.gh, ptr %i.gc, align 8, !tbaa !17
  %i.gi = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.gi
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !17
  %i.gm = fmul double %i.ci, %i.gl
  %i.gn = load double, ptr %i.gj, align 8, !tbaa !17
  %i.go = fadd double %i.gm, %i.gn
  store double %i.go, ptr %i.gj, align 8, !tbaa !17
  %i.gp = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gp, %i.cp
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !911

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.021.i.i.i.i.i.i
  %i.gs = load <2 x double>, ptr %i.gr, align 1, !tbaa !99
  %i.gt = fmul <2 x double> %i.eq, %i.gs
  %i.gu = load <2 x double>, ptr %i.gq, align 16, !tbaa !99
  %i.gv = fadd <2 x double> %i.gu, %i.gt
  store <2 x double> %i.gv, ptr %i.gq, align 16, !tbaa !99
  %i.gw = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gx = icmp slt i64 %i.gw, %i.db
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !883

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gy = add nsw i64 %.0193, -1                  ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, %.047194
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.gz, label %.lr.ph, label %.loopexit, !llvm.loop !912

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.ha = load ptr, ptr %2, align 8, !tbaa !520
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.047194
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !17
  %i.hd = load ptr, ptr %0, align 8, !tbaa !850
  %i.he = load i64, ptr %i.h, align 8, !tbaa !853
  %i.hf = mul nsw i64 %i.he, %.047194
  %i.hg = getelementptr [8 x i8], ptr %i.hd, i64 %i.hf
  %i.hh = getelementptr [8 x i8], ptr %i.hg, i64 %.047194
  store double %i.hc, ptr %i.hh, align 8, !tbaa !17
  %i.hi = add nsw i64 %.047194, -1
  %i.hj = icmp sgt i64 %.047194, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hj, label %bb.b, label %._crit_edge, !llvm.loop !913
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.sroa.063.0.copyload = load ptr, ptr %0, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.665.0.copyload = load i64, ptr %.sroa.665.0..sroa_idx, align 8
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.767.0.copyload = load ptr, ptr %.sroa.767.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.053.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.756.0.copyload = load i64, ptr %.sroa.756.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.e = load double, ptr %3, align 8, !tbaa !17
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.a, align 8, !tbaa !17
  %i.g = icmp ugt i64 %.sroa.756.0.copyload, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.053.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = shl nuw i64 %.sroa.756.0.copyload, 3     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.756.0.copyload, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #36 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.053.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.756.0.copyload, 16384 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.767.0.copyload, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = load ptr, ptr %2, align 8, !tbaa !914
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_(i64 noundef %.sroa.665.0.copyload, i64 noundef %.sroa.564.0.copyload, ptr noundef %.sroa.063.0.copyload, i64 noundef %i.t, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.u, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25: ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %.sroa.speculated132 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 4 uses
  %i.a = icmp sgt i64 %.sroa.speculated132, 0
  br i1 %i.a, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge144:                                   ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph143, %bb.k
  %indvars.iv = phi i64 [ %.sroa.speculated132, %.lr.ph143 ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.052141 = phi i64 [ 0, %.lr.ph143 ], [ %i.cf, %bb.k ] ; 6 uses
  %i.d = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.e = call i64 @llvm.umin.i64(i64 %i.d, i64 8)
  %i.f = sub nsw i64 %.sroa.speculated132, %.052141 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.f, i64 8) ; 4 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.h = add i64 %.sroa.speculated, %.052141      ; 3 uses
  %i.i = sub i64 %1, %i.h                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.0140 = phi i64 [ %i.bx, %bb.i ], [ 0, %bb.b ] ; 4 uses
  %i.k = add nuw nsw i64 %.0140, %.052141         ; 5 uses
  %i.l = xor i64 %.0140, -1
  %i.m = add nsw i64 %.sroa.speculated, %i.l      ; 7 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = mul nsw i64 %i.k, %7
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.p = load double, ptr %8, align 8, !tbaa !17
  %i.q = mul nsw i64 %i.k, %3
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.o ; 7 uses
  %i.u = and i64 %i.m, 9223372036854775804        ; 4 uses
  %i.v = and i64 %i.m, 9223372036854775806        ; 3 uses
  %.off.i.i.i = sub nsw i64 %.sroa.speculated, %.0140
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load <2 x double>, ptr %i.s, align 1, !tbaa !99
  %i.x = load <2 x double>, ptr %i.t, align 1, !tbaa !99
  %i.y = fmul <2 x double> %i.w, %i.x             ; 3 uses
  %i.z = icmp samesign ugt i64 %i.m, 3
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load <2 x double>, ptr %i.ac, align 1, !tbaa !99
  %i.ae = fmul <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = icmp samesign ugt i64 %i.m, 7
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.075.lcssa.i.i.i = phi <2 x double> [ %i.ae, %bb.e ], [ %i.au, %.lr.ph.i.i.i ]
  %.072.lcssa.i.i.i = phi <2 x double> [ %i.y, %bb.e ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ag = fadd <2 x double> %.075.lcssa.i.i.i, %.072.lcssa.i.i.i ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.v, %i.u
  br i1 %i.ah, label %bb.f, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05480.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 4, %bb.e ] ; 4 uses
  %.054.in79.i.i.i = phi i64 [ %.05480.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %.07278.i.i.i = phi <2 x double> [ %i.an, %.lr.ph.i.i.i ], [ %i.y, %bb.e ]
  %.07577.i.i.i = phi <2 x double> [ %i.au, %.lr.ph.i.i.i ], [ %i.ae, %bb.e ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05480.i.i.i
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !99
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05480.i.i.i
  %i.al = load <2 x double>, ptr %i.ak, align 1, !tbaa !99
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = fadd <2 x double> %.07278.i.i.i, %i.am  ; 2 uses
  %i.ao = add nuw nsw i64 %.054.in79.i.i.i, 6     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !99
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ao
  %i.as = load <2 x double>, ptr %i.ar, align 1, !tbaa !99
  %i.at = fmul <2 x double> %i.aq, %i.as
  %i.au = fadd <2 x double> %.07577.i.i.i, %i.at  ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05480.i.i.i, 4  ; 2 uses
  %i.av = icmp samesign ult i64 %.054.i.i.i, %i.u
  br i1 %i.av, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !916

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.ax = load <2 x double>, ptr %i.aw, align 1, !tbaa !99
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !99
  %i.ba = fmul <2 x double> %i.ax, %i.az
  %i.bb = fadd <2 x double> %i.ag, %i.ba
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %bb.d
  %.274.i.i.i = phi <2 x double> [ %i.y, %bb.d ], [ %i.bb, %bb.f ], [ %i.ag, %._crit_edge.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i, %shift
  %i.bc = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %.not = icmp eq i64 %i.v, %i.m
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %bb.g, %.lr.ph85.i.i.i
  %.05283.i.i.i = phi i64 [ %i.bj, %.lr.ph85.i.i.i ], [ %i.v, %bb.g ] ; 3 uses
  %.182.i.i.i = phi double [ %i.bi, %.lr.ph85.i.i.i ], [ %i.bc, %bb.g ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05283.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05283.i.i.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !17
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = fadd double %.182.i.i.i, %i.bh          ; 2 uses
  %i.bj = add nuw nsw i64 %.05283.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bj, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !917

bb.h:                                             ; preds = %bb.c
  %i.bk = load double, ptr %i.s, align 8, !tbaa !17
  %i.bl = load double, ptr %i.t, align 8, !tbaa !17
  %i.bm = fmul double %i.bk, %i.bl
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit: ; preds = %.lr.ph85.i.i.i, %bb.g, %bb.h
  %.0.i = phi double [ %i.bm, %bb.h ], [ %i.bc, %bb.g ], [ %i.bi, %.lr.ph85.i.i.i ]
  %i.bn = mul nsw i64 %i.k, %7                    ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %6, i64 %i.bn ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !17
  %i.bq = call double @llvm.fmuladd.f64(double %i.p, double %.0.i, double %i.bp)
  store double %i.bq, ptr %i.bo, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph._crit_edge, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit
  %.pre-phi = phi i64 [ %.pre, %.lr.ph._crit_edge ], [ %i.bn, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit ]
  %i.br = load double, ptr %8, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.k
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !17
  %i.bu = getelementptr inbounds [8 x i8], ptr %6, i64 %.pre-phi ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !17
  %i.bw = call double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %i.bv)
  store double %i.bw, ptr %i.bu, align 8, !tbaa !17
  %i.bx = add nuw nsw i64 %.0140, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !918

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.by = mul nsw i64 %.052141, %3
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.h
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %i.ca, ptr %9, align 8, !tbaa !693
  store i64 %3, ptr %i.b, align 8, !tbaa !695
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.h
  store ptr %i.cb, ptr %10, align 8, !tbaa !693
  store i64 %5, ptr %i.c, align 8, !tbaa !695
  %i.cc = mul nsw i64 %.052141, %7
  %i.cd = getelementptr inbounds [8 x i8], ptr %6, i64 %i.cc
  %i.ce = load double, ptr %8, align 8, !tbaa !17
  call void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdS3_Lb0ELi1EE3runEllRKS3_S6_Pdld(i64 noundef %.sroa.speculated, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.cd, i64 noundef %7, double noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.cf = add nuw nsw i64 %.052141, 8             ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %.sroa.speculated132
  %indvars.iv.next = add i64 %indvars.iv, -8
  br i1 %i.cg, label %bb.b, label %._crit_edge144, !llvm.loop !919
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdS3_Lb0ELi1EE3runEllRKS3_S6_Pdld(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5, double noundef %6) local_unnamed_addr #28 comdat align 2 {
bb.a:
  %.sroa.0329.0.copyload = load ptr, ptr %2, align 8 ; 12 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8 ; 31 uses
  %i.a = shl i64 %.sroa.33.0.copyload, 3
  %i.b = icmp ult i64 %i.a, 32001
  %i.c = add nsw i64 %0, -7
  %i.d = add nsw i64 %0, -3                       ; 2 uses
  %i.e = add nsw i64 %0, -1                       ; 2 uses
  %i.f = icmp sgt i64 %0, 7
  %i.g = and i1 %i.b, %i.f
  br i1 %i.g, label %.preheader409.lr.ph, label %.preheader408

.preheader409.lr.ph:                              ; preds = %bb.a
  %.not238410 = icmp slt i64 %1, 2
  %i.h = load ptr, ptr %3, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %1, -2
  br label %.preheader409

.preheader409:                                    ; preds = %.preheader409.lr.ph, %._crit_edge439
  %.0226448 = phi i64 [ 0, %.preheader409.lr.ph ], [ %i.fr, %._crit_edge439 ] ; 25 uses
  br i1 %.not238410, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader409
  %i.l = mul nsw i64 %.0226448, %.sroa.33.0.copyload
  %i.m = or disjoint i64 %.0226448, 1
  %i.n = mul nsw i64 %i.m, %.sroa.33.0.copyload
  %i.o = or disjoint i64 %.0226448, 2
  %i.p = mul nsw i64 %i.o, %.sroa.33.0.copyload
  %i.q = or disjoint i64 %.0226448, 3
  %i.r = mul nsw i64 %i.q, %.sroa.33.0.copyload
  %i.s = or disjoint i64 %.0226448, 4
  %i.t = mul nsw i64 %i.s, %.sroa.33.0.copyload
  %i.u = or disjoint i64 %.0226448, 5
  %i.v = mul nsw i64 %i.u, %.sroa.33.0.copyload
  %i.w = or disjoint i64 %.0226448, 6
  %i.x = mul nsw i64 %i.w, %.sroa.33.0.copyload
  %i.y = or disjoint i64 %.0226448, 7
  %i.z = mul nsw i64 %i.y, %.sroa.33.0.copyload
  br label %bb.b

.preheader408:                                    ; preds = %._crit_edge439, %bb.a
  %.0226.lcssa = phi i64 [ 0, %bb.a ], [ %i.fr, %._crit_edge439 ] ; 3 uses
  %i.aa = icmp slt i64 %.0226.lcssa, %i.d
  br i1 %i.aa, label %.preheader407.lr.ph, label %.preheader406

.preheader407.lr.ph:                              ; preds = %.preheader408
  %.not237450 = icmp slt i64 %1, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = and i64 %1, -2
  br label %.preheader407

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.ad = phi i64 [ 2, %.lr.ph ], [ %i.bo, %bb.b ] ; 2 uses
  %.0224419 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %.0389418 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.b ]
  %.0390417 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ap, %bb.b ]
  %.0391416 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.at, %bb.b ]
  %.0393415 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ax, %bb.b ]
  %.0394414 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bb, %bb.b ]
  %.0395413 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bf, %bb.b ]
  %.0396412 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bj, %bb.b ]
  %.0397411 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bn, %bb.b ]
  %i.ae = mul nsw i64 %i.j, %.0224419
end_hunk_1
begin_hunk_2_@_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_:bb.a
_ZN5boost14multiprecision8backends15eval_left_shiftILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit: ; preds = %.lr.ph.i, %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !1405 ; 7 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1408, !range !295, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1414
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not38 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1408, !range !295 ; 3 uses
  br i1 %.not38, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1414
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not39 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not39 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.0, %i.b
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 2 uses
  %spec.select.i8.i = select i1 %i.aa, i64 8, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1409, !range !295, !noundef !48
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #40
  %.pre52.pre = load i8, ptr %i.z, align 1, !tbaa !1408, !range !295
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !1408
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre52 = phi i8 [ 0, %bb.g ], [ %.pre52.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1405
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !99
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !99
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1405
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert53, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ao = phi ptr [ %i.af, %bb.h ], [ %.pre54, %bb.i ]
  %i.ap = phi i8 [ %.pre52, %bb.h ], [ %.pre, %bb.i ]
  %i.aq = trunc nuw i8 %i.ap to i1                ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = select i1 %i.aq, ptr %0, ptr %i.ao      ; 4 uses
  %.not40 = icmp eq i64 %spec.select.i, %i.f
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %spec.select.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  store i64 0, ptr %i.au, align 8, !tbaa !1414
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.av = lshr i128 %1, 3
  %i.aw = trunc i128 %i.av to i64                 ; 4 uses
  %i.ax = shl nuw nsw i64 %spec.select.i, 3       ; 3 uses
  %.not41 = icmp ugt i64 %i.ax, %i.aw
  br i1 %.not41, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %0, align 16
  %i.az = icmp ne i64 %i.ay, 0
  %.not51 = select i1 %i.aq, i1 true, i1 %i.az
  br i1 %.not51, label %bb.p, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43: ; preds = %bb.l
  %i.ba = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bb = load ptr, ptr %i.ar, align 8            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bb, i64 %i.ax, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !1409, !range !295, !noundef !48
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 0) #40
  %.pre55.pre = load i8, ptr %i.z, align 1, !tbaa !1408, !range !295
  %i.bf = trunc nuw i8 %.pre55.pre to i1
  br label %bb.o

bb.n:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !1408
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre55 = phi i1 [ false, %bb.n ], [ %i.bf, %bb.m ]
  store i64 1, ptr %i.e, align 16, !tbaa !1405
  store i64 1, ptr %0, align 16, !tbaa !99
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !99
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %bb.l
  store i64 1, ptr %i.e, align 16, !tbaa !1405
  %.pre56 = load ptr, ptr %i.ar, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.p, %bb.o
  %.pre-phi = phi i1 [ %i.aq, %bb.p ], [ %.pre55, %bb.o ]
  %i.bi = phi ptr [ %.pre56, %bb.p ], [ %i.ba, %bb.o ]
  %i.bj = select i1 %.pre-phi, ptr %0, ptr %i.bi
  store i64 0, ptr %i.bj, align 8, !tbaa !1414
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bk, align 8, !tbaa !1407
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.bl = sub nuw nsw i64 %i.ax, %i.aw
  %i.bm = shl i64 %i.f, 3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.as, i64 %.sroa.speculated, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 %i.aw, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.r, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !1405 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1408, !range !295, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1414
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1408, !range !295 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1414
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 8, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1409, !range !295, !noundef !48
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #40
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !1408, !range !295
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !1408
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1405
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !99
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !99
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1405
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 20 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !1409, !range !295, !noundef !48
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #40
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !1408, !range !295
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !1408
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !1405
  store i64 1, ptr %0, align 16, !tbaa !99
  store ptr %i.av, ptr %i.as, align 8, !tbaa !99
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !1405
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !1414
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !1407
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1414 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !1414
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !1414
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %2 = add i64 %i.f, -2
  %3 = sub i64 %2, %i.bf
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %3
  %i.bv = load i64, ptr %4, align 8, !tbaa !1414
  %i.bw = sub nuw nsw i64 64, %i.d
  %i.bx = lshr i64 %i.bv, %i.bw
  %i.by = or disjoint i64 %i.bx, %i.br
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !1414
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.bz = add nsw i64 %i.b, 2                     ; 2 uses
  %i.ca = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.ca, %i.bz
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.cb = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.cc = add i64 %.187, -1                       ; 2 uses
  %i.cd = sub i64 %i.cc, %.0
  %i.ce = add i64 %i.b, 1
  %i.cf = tail call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.ce)
  %i.cg = add i64 %.0, %i.cf
  %i.ch = sub i64 %.187, %i.cg                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134.a = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135.a = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136.a = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137.a = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136.a
  %bound1 = icmp ult ptr %scevgep135.a, %scevgep134.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137.a, %scevgep134.a
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !1414, !alias.scope !1472
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !1414, !alias.scope !1475, !noalias !1477
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !1414, !alias.scope !1479
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !1414, !alias.scope !1475, !noalias !1477
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1480

middle.block:                                     ; preds = %vector.body
  %i.dp = add i64 %n.vec, -1
  %i.dq = add i64 %.0, %i.dp
  %i.dr = sub i64 %i.cc, %i.dq
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ef, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ds = xor i64 %.1108, -1
  %i.dt = add i64 %.187, %i.ds                    ; 2 uses
  %i.du = sub i64 %i.dt, %i.b
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1414
  %i.dx = shl i64 %i.dw, %i.d                     ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt ; 2 uses
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !1414
  %i.dz = add i64 %.1108, %i.b
  %i.ea = sub i64 %invariant.op, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1414
  %i.ed = lshr i64 %i.ec, %i.cb
  %i.ee = or disjoint i64 %i.ed, %i.dx
  store i64 %i.ee, ptr %i.dy, align 8, !tbaa !1414
  %i.ef = add i64 %.1108, 1                       ; 3 uses
  %i.eg = sub nsw i64 %.187, %i.ef                ; 2 uses
  %.not96 = icmp slt i64 %i.eg, %i.bz
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !1481

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ef, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.ca, %bb.u ], [ %i.dr, %middle.block ], [ %i.eg, %scalar.ph ]
  %i.eh = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eh
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ei = xor i64 %.1.lcssa, -1
  %i.ej = add i64 %.187, %i.ei                    ; 2 uses
  %i.ek = sub i64 %i.ej, %i.b
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !1414
  %i.en = shl i64 %i.em, %i.d
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !1414
  %i.ep = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.ep, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.eq = sub i64 %.187, %.2
  %i.er = shl i64 %i.eq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.er, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::minus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.1955", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.1964", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1482, !noalias !1484, !nonnull !48, !align !1437
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1433, !noalias !1487, !nonnull !48, !align !1437 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i64 0, ptr %7, align 16, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !1405
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !1407
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !1408
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !1409
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !1490

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !1408, !range !295, !noundef !48
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !295
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
end_hunk_2
begin_hunk_3_@_ZN4CGAL24Delaunay_triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE30non_recursive_propagating_flipENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEEi:bb.a
bb.r:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1594 ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !1590 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bn, %bb.r ] ; 3 uses
  %i.br = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1588
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef 512) #40
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.bt = icmp ult ptr %.06.i.i.i.i, %i.bo
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i.i, !llvm.loop !1595

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !1593
  br label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i.i

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i.i, %bb.r
  %i.bu = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i.i ], [ %i.bk, %bb.r ]
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1596
  %i.bx = shl i64 %i.bw, 3
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #40
  br label %_ZNSt5stackISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESt5dequeISK_SaISK_EEED2Ev.exit

_ZNSt5stackISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESt5dequeISK_SaISK_EEED2Ev.exit: ; preds = %._crit_edge, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.s:                                             ; preds = %bb.k, %bb.q, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.bj, %bb.q ], [ %i.au, %bb.k ]
  call void @_ZNSt5stackISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESt5dequeISK_SaISK_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE23side_of_oriented_circleENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEERKNS_7Point_2IS1_EEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.CGAL::internal::Static_filters_predicates::Orientation_2", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !211 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !203    ; 2 uses
  %i.c = icmp eq ptr %i.b, %.sroa.0.0.copyload.i.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, %.sroa.0.0.copyload.i.i ; 2 uses
  %or.cond.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit.thread, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203  ; 2 uses
  %i.i = icmp eq ptr %i.h, %.sroa.0.0.copyload.i.i
  br i1 %i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = tail call noundef i32 @_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE23side_of_oriented_circleERKNS_7Point_2IS1_EESG_SG_SG_b(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3)
  br label %bb.g

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit.thread: ; preds = %bb.a, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit
  %i.n = select i1 %i.f, i64 1, i64 2
  %i.o = select i1 %i.c, i64 0, i64 %i.n          ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.s, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i12, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.o
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %i.w
  %.sroa.0.0.copyload.i13 = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i13, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.z = load <2 x double>, ptr %i.t, align 8, !tbaa !17 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !17
  %i.ab = load <2 x double>, ptr %2, align 8, !tbaa !17
  %i.ac = fsub <2 x double> %i.aa, %i.z           ; 3 uses
  %i.ad = fsub <2 x double> %i.ab, %i.z           ; 3 uses
  %i.ae = extractelement <2 x double> %i.ac, i64 1
  %i.af = fneg double %i.ae
  %i.ag = extractelement <2 x double> %i.ad, i64 0
  %i.ah = fmul double %i.ag, %i.af
  %i.ai = extractelement <2 x double> %i.ac, i64 0
  %i.aj = extractelement <2 x double> %i.ad, i64 1
  %i.ak = tail call noundef double @llvm.fmuladd.f64(double %i.ai, double %i.aj, double %i.ah) ; 2 uses
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ac) ; 2 uses
  %i.am = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ad) ; 2 uses
  %i.an = fcmp olt <2 x double> %i.al, %i.am
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.am, <2 x double> %i.al ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0 ; 3 uses
  %i.aq = extractelement <2 x double> %i.ao, i64 1 ; 3 uses
  %i.ar = fcmp ogt double %i.ap, %i.aq            ; 2 uses
  %.155.i.i = select i1 %i.ar, double %i.aq, double %i.ap ; 3 uses
  %.1.i.i = select i1 %i.ar, double %i.ap, double %i.aq ; 2 uses
  %i.as = fcmp olt double %.155.i.i, 1.000000e-146
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit.thread
  %i.at = fcmp oeq double %.155.i.i, 0.000000e+00
  br i1 %i.at, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit.thread, label %bb.f

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.g

bb.d:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESH_SH_EELb0EEE.exit.thread
  %i.au = fcmp olt double %.1.i.i, f0x5FB317E5EF3AB327
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = fmul double %.155.i.i, f0x3CD0028010000004
  %i.aw = fmul double %.1.i.i, %i.av              ; 2 uses
  %i.ax = fcmp ule double %i.ak, %i.aw            ; 2 uses
  %i.ay = fneg double %i.aw
  %i.az = fcmp uge double %i.ak, %i.ay
  %.021.i.i = select i1 %i.ax, i32 -1, i32 1
  %cond1.i.i = and i1 %i.ax, %i.az
  br i1 %cond1.i.i, label %bb.f, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ba = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit: ; preds = %bb.e, %bb.f
  %.3.i.i = phi i32 [ %i.ba, %bb.f ], [ %.021.i.i, %bb.e ]
  %.3.i.i.fr = freeze i32 %.3.i.i                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bb = icmp eq i32 %.3.i.i.fr, -1
  %i.bc = icmp eq i32 %.3.i.i.fr, 1
  %i.bd = zext i1 %i.bc to i32
  %spec.select = select i1 %i.bb, i32 -1, i32 %i.bd
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit.thread, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit.thread ], [ %spec.select, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE11orientationERKNS_7Point_2IS1_EESG_SG_.exit ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESt5dequeISK_SaISK_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1593   ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1594 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1590 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1588
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #40
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i, !llvm.loop !1595

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !1593
  br label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1596
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #40
  br label %_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EED2Ev.exit

_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1596
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #39 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !1593
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #39
          to label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !1588
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE15_M_create_nodesEPPSK_SO_.exit, !llvm.loop !1597

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #32 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !1588
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #40
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i, !llvm.loop !1595

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #37
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #38
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_destroy_nodesEPPSK_SO_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #32 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1593
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1596
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #37
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE15_M_create_nodesEPPSK_SO_.exit: ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !1587
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !1588 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1583
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1591
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1587
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1588 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1583
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1591
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1598
  %i.aq = and i64 %1, 31
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !1575
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #38
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE16_M_push_back_auxIJSK_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1587 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1582
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1583
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1591
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1582
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1596
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1593
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #39
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1590
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !1588
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !1575
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !1590
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !1587
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1588 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !1583
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1591
  store ptr %i.as, ptr %i.a, align 8, !tbaa !1575
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_37Triangulation_vertex_base_with_info_2IjNS1_5EpickENS1_27Triangulation_vertex_base_2IS8_NS1_30Triangulation_ds_vertex_base_2IvEEEEEENS5_IvEEEEEENS1_7DefaultESH_SH_EELb0EEEiESaISK_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1590 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1594 ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_3
