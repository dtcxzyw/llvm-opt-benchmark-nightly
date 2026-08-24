Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5809
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7computeERKS2_j:bb.a
middle.block521:                                  ; preds = %vector.body516
  %cmp.n522 = icmp eq i64 %i.xy, %n.vec513
  br i1 %cmp.n522, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader621

.lr.ph.i.i.i.i.i.i.i.preheader621:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block521
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.xt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.xz, %middle.block521 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader621, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.yj, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader621 ] ; 2 uses
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !17
  %i.yi = fmul double %.0249, %i.yh
  store double %i.yi, ptr %i.yg, align 8, !tbaa !17
  %i.yj = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.yj, %i.xr
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !354

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.yn, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.yl = load <2 x double>, ptr %i.yk, align 16, !tbaa !111
  %i.ym = fmul <2 x double> %i.xw, %i.yl
  store <2 x double> %i.ym, ptr %i.yk, align 16, !tbaa !111
  %i.yn = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.yo = icmp slt i64 %i.yn, %i.xt
  br i1 %i.yo, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !355

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block521, %._crit_edge.i.i.i.i.i.i
  %i.yp = load i64, ptr %i.lb, align 8, !tbaa !171 ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.yp, ptr %i.yq, align 8, !tbaa !356
  %i.yr = icmp sgt i64 %i.yp, 0
  br i1 %i.yr, label %.lr.ph281, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.055279 = phi i64 [ 0, %.lr.ph ], [ %i.aay, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 5 uses
  %i.ys = load ptr, ptr %i.jt, align 8, !tbaa !20
  %i.yt = load i64, ptr %i.jv, align 8, !tbaa !9
  %i.yu = mul nsw i64 %i.yt, %.055279
  %i.yv = getelementptr [8 x i8], ptr %i.ys, i64 %.055279
  %i.yw = getelementptr [8 x i8], ptr %i.yv, i64 %i.yu
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !17 ; 2 uses
  %i.yy = call noundef double @llvm.fabs.f64(double %i.yx)
  %i.yz = load ptr, ptr %i.xn, align 8, !tbaa !16
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %.055279
  store double %i.yy, ptr %i.za, align 8, !tbaa !17
  %i.zb = load i8, ptr %i.lf, align 1, !tbaa !308, !range !309, !noundef !48
  %i.zc = trunc nuw i8 %i.zb to i1
  %i.zd = load i8, ptr %i.lg, align 8, !range !309
  %i.ze = trunc nuw i8 %i.zd to i1
  %i.zf = select i1 %i.zc, i1 true, i1 %i.ze
  %i.zg = fcmp olt double %i.yx, 0.000000e+00
  %or.cond = and i1 %i.zg, %i.zf
  br i1 %or.cond, label %bb.ak, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

bb.ak:                                            ; preds = %bb.aj
  %i.zh = load ptr, ptr %0, align 8, !tbaa !20, !noalias !357
  %i.zi = load i64, ptr %i.lh, align 8, !tbaa !9, !noalias !357 ; 7 uses
  %i.zj = mul nsw i64 %i.zi, %.055279
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.zh, i64 %i.zj ; 6 uses
  %i.zl = ptrtoint ptr %i.zk to i64               ; 2 uses
  %i.zm = and i64 %i.zl, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.zm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.zn = lshr exact i64 %i.zl, 3
  %i.zo = and i64 %i.zn, 1
  %i.zp = call i64 @llvm.smin.i64(i64 %i.zo, i64 %i.zi)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zp, %bb.al ], [ %i.zi, %bb.ak ] ; 9 uses
  %i.zq = sub nsw i64 %i.zi, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.zr = sdiv i64 %i.zq, 2
  %i.zs = shl nsw i64 %i.zr, 1                    ; 2 uses
  %i.zt = add nsw i64 %i.zs, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.zu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check499 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check499, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader623, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec501 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph500
  %index503 = phi i64 [ 0, %vector.ph500 ], [ %index.next506, %vector.body502 ] ; 2 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %index503 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16 ; 2 uses
  %wide.load504 = load <2 x double>, ptr %i.zv, align 8, !tbaa !17
  %wide.load505 = load <2 x double>, ptr %i.zw, align 8, !tbaa !17
  %i.zx = fneg <2 x double> %wide.load504
  %i.zy = fneg <2 x double> %wide.load505
  store <2 x double> %i.zx, ptr %i.zv, align 8, !tbaa !17
  store <2 x double> %i.zy, ptr %i.zw, align 8, !tbaa !17
  %index.next506 = add nuw i64 %index503, 4       ; 2 uses
  %i.zz = icmp eq i64 %index.next506, %n.vec501
  br i1 %i.zz, label %middle.block507, label %vector.body502, !llvm.loop !360

middle.block507:                                  ; preds = %vector.body502
  %cmp.n508 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec501
  br i1 %cmp.n508, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader623

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader623:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block507
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec501, %middle.block507 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader623, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader623 ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !17
  %i.aac = fneg double %i.aab
  store double %i.aac, ptr %i.aaa, align 8, !tbaa !17
  %i.aad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i132 = icmp eq i64 %i.aad, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i132, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !361

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block507, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aae = icmp sgt i64 %i.zq, 1
  br i1 %i.aae, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.aaf = icmp slt i64 %i.zt, %i.zi
  br i1 %i.aaf, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aag = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.zs
  %i.aah = sub i64 %i.zi, %i.aag                  ; 3 uses
  %min.iters.check487 = icmp ult i64 %i.aah, 4
  br i1 %min.iters.check487, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader622, label %vector.ph488

vector.ph488:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec489 = and i64 %i.aah, -4                  ; 3 uses
  %i.aai = add i64 %i.zt, %n.vec489
  %i.aaj = getelementptr [8 x i8], ptr %i.zk, i64 %i.zt
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next494, %vector.body490 ] ; 2 uses
  %i.aak = getelementptr [8 x i8], ptr %i.aaj, i64 %index491 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16 ; 2 uses
  %wide.load492 = load <2 x double>, ptr %i.aak, align 8, !tbaa !17
  %wide.load493 = load <2 x double>, ptr %i.aal, align 8, !tbaa !17
  %i.aam = fneg <2 x double> %wide.load492
  %i.aan = fneg <2 x double> %wide.load493
  store <2 x double> %i.aam, ptr %i.aak, align 8, !tbaa !17
  store <2 x double> %i.aan, ptr %i.aal, align 8, !tbaa !17
  %index.next494 = add nuw i64 %index491, 4       ; 2 uses
  %i.aao = icmp eq i64 %index.next494, %n.vec489
  br i1 %i.aao, label %middle.block495, label %vector.body490, !llvm.loop !362

middle.block495:                                  ; preds = %vector.body490
  %cmp.n496 = icmp eq i64 %i.aah, %n.vec489
  br i1 %cmp.n496, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader622

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader622:      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block495
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.zt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aai, %middle.block495 ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader622, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aas, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader622 ] ; 2 uses
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.zk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !17
  %i.aar = fneg double %i.aaq
  store double %i.aar, ptr %i.aap, align 8, !tbaa !17
  %i.aas = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aas, %i.zi
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !363

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aaw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aat = getelementptr inbounds [8 x i8], ptr %i.zk, i64 %.021.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aau = load <2 x i64>, ptr %i.aat, align 1, !tbaa !111
  %i.aav = xor <2 x i64> %i.aau, splat (i64 -9223372036854775808)
  store <2 x i64> %i.aav, ptr %i.aat, align 16, !tbaa !111
  %i.aaw = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aax = icmp slt i64 %i.aaw, %i.zt
  br i1 %i.aax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !364

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block495, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.aay = add nuw nsw i64 %.055279, 1            ; 2 uses
  %i.aaz = load i64, ptr %i.lb, align 8, !tbaa !171
  %i.aba = icmp slt i64 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.aj, label %._crit_edge, !llvm.loop !365

.lr.ph281:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, %.thread
  %i.abb = phi i64 [ %i.ajs, %.thread ], [ %i.yp, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit ] ; 3 uses
  %.0280 = phi i64 [ %i.ajr, %.thread ], [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit ] ; 15 uses
  %i.abc = shl i64 %.0280, 3
  %i.abd = add nuw i64 %.0280, 1
  %i.abe = shl i64 %.0280, 3                      ; 2 uses
  %i.abf = add i64 %i.abe, 8
  %i.abg = shl i64 %.0280, 3
  %i.abh = add nuw i64 %.0280, 1
  %i.abi = shl i64 %.0280, 3                      ; 2 uses
  %i.abj = add i64 %i.abi, 8
  %i.abk = sub nsw i64 %i.abb, %.0280             ; 2 uses
  %i.abl = load i64, ptr %i.xp, align 8, !tbaa !14, !noalias !366
  %i.abm = sub nsw i64 %i.abl, %i.abk
  %i.abn = load ptr, ptr %i.xo, align 8, !tbaa !16, !noalias !366 ; 3 uses
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.abn, i64 %i.abm ; 4 uses
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !17 ; 5 uses
  %i.abq = icmp sgt i64 %i.abk, 1
  br i1 %i.abq, label %.lr.ph.i.i.i.i133.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread256

.lr.ph.i.i.i.i133.preheader:                      ; preds = %.lr.ph281
  %i.abr = xor i64 %.0280, -1
  %i.abs = add i64 %i.abb, %i.abr                 ; 3 uses
  %reass.sub = sub i64 %i.abb, %.0280
  %xtraiter648 = and i64 %i.abs, 1
  %i.abt = icmp eq i64 %reass.sub, 2
  br i1 %i.abt, label %.lr.ph.i.i.i.i133.epil.preheader, label %.lr.ph.i.i.i.i133.preheader.new

.lr.ph.i.i.i.i133.preheader.new:                  ; preds = %.lr.ph.i.i.i.i133.preheader
  %unroll_iter653 = and i64 %i.abs, -2
  br label %.lr.ph.i.i.i.i133

.lr.ph.i.i.i.i133:                                ; preds = %.lr.ph.i.i.i.i133, %.lr.ph.i.i.i.i133.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i133.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i133 ]
  %.sroa.7.0.i.i = phi double [ %i.abp, %.lr.ph.i.i.i.i133.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i133 ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i133.preheader.new ], [ %i.ace, %.lr.ph.i.i.i.i133 ] ; 4 uses
  %i.abu = phi double [ %i.abp, %.lr.ph.i.i.i.i133.preheader.new ], [ %i.acd, %.lr.ph.i.i.i.i133 ] ; 2 uses
  %niter654 = phi i64 [ 0, %.lr.ph.i.i.i.i133.preheader.new ], [ %niter654.next.1, %.lr.ph.i.i.i.i133 ]
  %i.abv = getelementptr [8 x i8], ptr %i.abo, i64 %.02123.i.i.i.i
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !17 ; 3 uses
  %i.abx = fcmp ogt double %i.abw, %i.abu         ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.abx, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.abx, double %i.abw, double %.sroa.7.0.i.i
  %i.aby = select i1 %i.abx, double %i.abw, double %i.abu ; 2 uses
  %i.abz = add nuw nsw i64 %.02123.i.i.i.i, 1     ; 2 uses
  %i.aca = getelementptr [8 x i8], ptr %i.abo, i64 %i.abz
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !17 ; 3 uses
  %i.acc = fcmp ogt double %i.acb, %i.aby         ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.acc, i64 %i.abz, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.acc, double %i.acb, double %.sroa.7.1.i.i ; 3 uses
  %i.acd = select i1 %i.acc, double %i.acb, double %i.aby ; 2 uses
  %i.ace = add nuw nsw i64 %.02123.i.i.i.i, 2     ; 2 uses
  %niter654.next.1 = add nuw i64 %niter654, 2     ; 2 uses
  %niter654.ncmp.1 = icmp eq i64 %niter654.next.1, %unroll_iter653
  br i1 %niter654.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i133, !llvm.loop !369

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i133
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i133.epil.preheader

.lr.ph.i.i.i.i133.epil.preheader:                 ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i133.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i133.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.abp, %.lr.ph.i.i.i.i133.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i133.preheader ], [ %i.ace, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.abp, %.lr.ph.i.i.i.i133.preheader ], [ %i.acd, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod652 = trunc i64 %i.abs to i1
  call void @llvm.assume(i1 %lcmp.mod652)
  %i.acf = getelementptr [8 x i8], ptr %i.abo, i64 %.02123.i.i.i.i.epil.init
  %i.acg = load double, ptr %i.acf, align 8, !tbaa !17 ; 2 uses
  %i.ach = fcmp ogt double %i.acg, %.epil.init    ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ach, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ach, double %i.acg, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i133.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i133.epil.preheader ] ; 4 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i133.epil.preheader ]
  %i.aci = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.aci, label %bb.am, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit153

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread256: ; preds = %.lr.ph281
  %i.acj = fcmp une double %i.abp, 0.000000e+00
  br i1 %i.acj, label %.thread, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit153

bb.am:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ack = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0280 ; 7 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %.0280 ; 2 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.ack ; 2 uses
  %i.acn = load double, ptr %i.acl, align 8, !tbaa !17
  %i.aco = load double, ptr %i.acm, align 8, !tbaa !17
  store double %i.aco, ptr %i.acl, align 8, !tbaa !17
  store double %i.acn, ptr %i.acm, align 8, !tbaa !17
  %i.acp = load i8, ptr %i.lf, align 1, !tbaa !308, !range !309, !noundef !48
  %i.acq = trunc nuw i8 %i.acp to i1
  %i.acr = load i8, ptr %i.lg, align 8, !range !309
  %i.acs = trunc nuw i8 %i.acr to i1
  %i.act = select i1 %i.acq, i1 true, i1 %i.acs
  br i1 %i.act, label %bb.ao, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit

bb.ao:                                            ; preds = %bb.an
  %i.acu = load ptr, ptr %0, align 8, !tbaa !20, !noalias !370 ; 8 uses
  %i.acv = load i64, ptr %i.lh, align 8, !tbaa !9, !noalias !370 ; 15 uses
  %i.acw = mul nsw i64 %i.acv, %i.ack
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.acu, i64 %i.acw ; 11 uses
  %i.acy = mul i64 %i.acv, %.0280
  %i.acz = getelementptr [8 x i8], ptr %i.acu, i64 %i.acy ; 10 uses
  %i.ada = ptrtoint ptr %i.acx to i64             ; 2 uses
  %i.adb = and i64 %i.ada, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.adb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ap, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.adc = lshr exact i64 %i.ada, 3
  %i.add = and i64 %i.adc, 1
  %i.ade = call i64 @llvm.smin.i64(i64 %i.add, i64 %i.acv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.ade, %bb.ap ], [ %i.acv, %bb.ao ] ; 13 uses
  %i.adf = sub nsw i64 %i.acv, %.0.i.i.i.i.i.i.i  ; 2 uses
  %i.adg = sdiv i64 %i.adf, 2                     ; 2 uses
  %i.adh = shl nsw i64 %i.adg, 1                  ; 2 uses
  %i.adi = add nsw i64 %i.adh, %.0.i.i.i.i.i.i.i  ; 6 uses
  %i.adj = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.adj, label %.lr.ph.i.i.i.i.i.i.i137.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i137.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check599 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check599, label %.lr.ph.i.i.i.i.i.i.i137.preheader619, label %vector.memcheck591

vector.memcheck591:                               ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader
  %i.adk = shl i64 %.0.i.i.i.i.i.i.i, 3           ; 2 uses
  %scevgep592 = getelementptr i8, ptr %i.acu, i64 %i.adk
  %i.adl = shl i64 %i.acv, 3
  %i.adm = mul i64 %i.adl, %i.ack
  %scevgep593 = getelementptr i8, ptr %scevgep592, i64 %i.adm
  %i.adn = mul i64 %i.acv, %i.abc
  %i.ado = getelementptr i8, ptr %i.acu, i64 %i.adn
  %scevgep594 = getelementptr i8, ptr %i.ado, i64 %i.adk
  %bound0595 = icmp ult ptr %i.acx, %scevgep594
  %bound1596 = icmp ult ptr %i.acz, %scevgep593
  %found.conflict597 = and i1 %bound0595, %bound1596
  br i1 %found.conflict597, label %.lr.ph.i.i.i.i.i.i.i137.preheader619, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck591
  %n.vec601 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph600
  %index603 = phi i64 [ 0, %vector.ph600 ], [ %index.next608, %vector.body602 ] ; 3 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %index603 ; 3 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %index603 ; 3 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 16 ; 2 uses
  %wide.load604 = load <2 x double>, ptr %i.adp, align 8, !tbaa !17, !alias.scope !373, !noalias !376
  %wide.load605 = load <2 x double>, ptr %i.adr, align 8, !tbaa !17, !alias.scope !373, !noalias !376
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 16 ; 2 uses
  %wide.load606 = load <2 x double>, ptr %i.adq, align 8, !tbaa !17, !alias.scope !376
  %wide.load607 = load <2 x double>, ptr %i.ads, align 8, !tbaa !17, !alias.scope !376
  store <2 x double> %wide.load606, ptr %i.adp, align 8, !tbaa !17, !alias.scope !373, !noalias !376
  store <2 x double> %wide.load607, ptr %i.adr, align 8, !tbaa !17, !alias.scope !373, !noalias !376
  store <2 x double> %wide.load604, ptr %i.adq, align 8, !tbaa !17, !alias.scope !376
  store <2 x double> %wide.load605, ptr %i.ads, align 8, !tbaa !17, !alias.scope !376
  %index.next608 = add nuw i64 %index603, 4       ; 2 uses
  %i.adt = icmp eq i64 %index.next608, %n.vec601
  br i1 %i.adt, label %middle.block609, label %vector.body602, !llvm.loop !378

middle.block609:                                  ; preds = %vector.body602
  %cmp.n610 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec601
  br i1 %cmp.n610, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i137.preheader619

.lr.ph.i.i.i.i.i.i.i137.preheader619:             ; preds = %vector.memcheck591, %.lr.ph.i.i.i.i.i.i.i137.preheader, %middle.block609
  %.05.i.i.i.i.i.i.i138.ph = phi i64 [ 0, %vector.memcheck591 ], [ 0, %.lr.ph.i.i.i.i.i.i.i137.preheader ], [ %n.vec601, %middle.block609 ] ; 5 uses
  %.neg670 = or disjoint i64 %.05.i.i.i.i.i.i.i138.ph, 1
  %xtraiter655 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod656.not = icmp eq i64 %xtraiter655, 0
  br i1 %lcmp.mod656.not, label %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i137.prol

.lr.ph.i.i.i.i.i.i.i137.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader619
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %.05.i.i.i.i.i.i.i138.ph ; 2 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %.05.i.i.i.i.i.i.i138.ph ; 2 uses
  %i.adw = load double, ptr %i.adu, align 8, !tbaa !17
  %i.adx = load double, ptr %i.adv, align 8, !tbaa !17
  store double %i.adx, ptr %i.adu, align 8, !tbaa !17
  store double %i.adw, ptr %i.adv, align 8, !tbaa !17
  %i.ady = or disjoint i64 %.05.i.i.i.i.i.i.i138.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit

.lr.ph.i.i.i.i.i.i.i137.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i137.prol, %.lr.ph.i.i.i.i.i.i.i137.preheader619
  %.05.i.i.i.i.i.i.i138.unr = phi i64 [ %.05.i.i.i.i.i.i.i138.ph, %.lr.ph.i.i.i.i.i.i.i137.preheader619 ], [ %i.ady, %.lr.ph.i.i.i.i.i.i.i137.prol ]
  %i.adz = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg670
  br i1 %i.adz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i137

.lr.ph.i.i.i.i.i.i.i137:                          ; preds = %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i137
  %.05.i.i.i.i.i.i.i138 = phi i64 [ %i.aej, %.lr.ph.i.i.i.i.i.i.i137 ], [ %.05.i.i.i.i.i.i.i138.unr, %.lr.ph.i.i.i.i.i.i.i137.prol.loopexit ] ; 4 uses
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %.05.i.i.i.i.i.i.i138 ; 2 uses
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %.05.i.i.i.i.i.i.i138 ; 2 uses
  %i.aec = load double, ptr %i.aea, align 8, !tbaa !17
  %i.aed = load double, ptr %i.aeb, align 8, !tbaa !17
  store double %i.aed, ptr %i.aea, align 8, !tbaa !17
  store double %i.aec, ptr %i.aeb, align 8, !tbaa !17
  %i.aee = add nuw nsw i64 %.05.i.i.i.i.i.i.i138, 1 ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %i.aee ; 2 uses
  %i.aeh = load double, ptr %i.aef, align 8, !tbaa !17
  %i.aei = load double, ptr %i.aeg, align 8, !tbaa !17
  store double %i.aei, ptr %i.aef, align 8, !tbaa !17
  store double %i.aeh, ptr %i.aeg, align 8, !tbaa !17
  %i.aej = add nuw nsw i64 %.05.i.i.i.i.i.i.i138, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader232

.lr.ph.i17.i.i.i.i.i.i.preheader232:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.cp, %.05.i18.i.i.i.i.i.i.ph
  %.neg237 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter234 = and i64 %i.fs, 1
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !17
  %i.fw = fmul double %i.ci, %i.fv
  %i.fx = load double, ptr %i.ft, align 8, !tbaa !17
  %i.fy = fadd double %i.fw, %i.fx
  store double %i.fy, ptr %i.ft, align 8, !tbaa !17
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader232 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar203, %.neg237
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !17
  %i.ge = fmul double %i.ci, %i.gd
  %i.gf = load double, ptr %i.gb, align 8, !tbaa !17
  %i.gg = fadd double %i.ge, %i.gf
  store double %i.gg, ptr %i.gb, align 8, !tbaa !17
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.gh
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !17
  %i.gl = fmul double %i.ci, %i.gk
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !17
  %i.gn = fadd double %i.gl, %i.gm
  store double %i.gn, ptr %i.gi, align 8, !tbaa !17
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.cp
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !925

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.021.i.i.i.i.i.i
  %i.gr = load <2 x double>, ptr %i.gq, align 1, !tbaa !111
  %i.gs = fmul <2 x double> %i.eq, %i.gr
  %i.gt = load <2 x double>, ptr %i.gp, align 16, !tbaa !111
  %i.gu = fadd <2 x double> %i.gt, %i.gs
  store <2 x double> %i.gu, ptr %i.gp, align 16, !tbaa !111
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.db
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !897

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gx = add nsw i64 %.0193, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047194
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !926

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !534
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.047194
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !17
  %i.hc = load ptr, ptr %0, align 8, !tbaa !864
  %i.hd = load i64, ptr %i.h, align 8, !tbaa !867
  %i.he = mul nsw i64 %i.hd, %.047194
  %i.hf = getelementptr [8 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %.047194
  store double %i.hb, ptr %i.hg, align 8, !tbaa !17
  %i.hh = add nsw i64 %.047194, -1
  %i.hi = icmp sgt i64 %.047194, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !927
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
  %i.d = load double, ptr %i.c, align 8, !tbaa !143
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
  %i.u = load ptr, ptr %2, align 8, !tbaa !928
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
  %i.w = load <2 x double>, ptr %i.s, align 1, !tbaa !111
  %i.x = load <2 x double>, ptr %i.t, align 1, !tbaa !111
  %i.y = fmul <2 x double> %i.w, %i.x             ; 3 uses
  %i.z = icmp samesign ugt i64 %i.m, 3
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load <2 x double>, ptr %i.ac, align 1, !tbaa !111
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
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !111
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05480.i.i.i
  %i.al = load <2 x double>, ptr %i.ak, align 1, !tbaa !111
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = fadd <2 x double> %.07278.i.i.i, %i.am  ; 2 uses
  %i.ao = add nuw nsw i64 %.054.in79.i.i.i, 6     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !111
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ao
  %i.as = load <2 x double>, ptr %i.ar, align 1, !tbaa !111
  %i.at = fmul <2 x double> %i.aq, %i.as
  %i.au = fadd <2 x double> %.07577.i.i.i, %i.at  ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05480.i.i.i, 4  ; 2 uses
  %i.av = icmp samesign ult i64 %.054.i.i.i, %i.u
  br i1 %i.av, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !930

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.ax = load <2 x double>, ptr %i.aw, align 1, !tbaa !111
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !111
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
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !931

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !932

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.by = mul nsw i64 %.052141, %3
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.h
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %i.ca, ptr %9, align 8, !tbaa !707
  store i64 %3, ptr %i.b, align 8, !tbaa !709
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.h
  store ptr %i.cb, ptr %10, align 8, !tbaa !707
  store i64 %5, ptr %i.c, align 8, !tbaa !709
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
  br i1 %i.cg, label %bb.b, label %._crit_edge144, !llvm.loop !933
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
begin_hunk_2_@_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1427
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not38 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1421, !range !309 ; 2 uses
  %.pre59 = trunc nuw i8 %.pre to i1              ; 2 uses
  br i1 %.not38, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.pre59, ptr %0, ptr %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1427
  %i.u = sub nuw nsw i64 64, %i.d
  %i.v = lshr i64 %i.t, %i.u
  %.not39 = icmp ne i64 %i.v, 0
  %i.w = zext i1 %.not39 to i64
  %spec.select = add i64 %i.f, %i.w
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.x = add i64 %.0, %i.b
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711744) ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 6 uses
  %i.z = load i64, ptr %0, align 16
  %spec.select.i8.i = select i1 %.pre59, i64 8, i64 %i.z ; 2 uses
  %i.aa = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge
  %i.ab = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ac = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #39 ; 3 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = load i64, ptr %i.e, align 16, !tbaa !1418
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.am = load i8, ptr %i.al, align 2, !tbaa !1422, !range !309, !noundef !48
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %0, align 16
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #40
  %.pre52.pre = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.y, align 1, !tbaa !1421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre52 = phi i8 [ 0, %bb.g ], [ %.pre52.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1418
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !111
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !111
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1418
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert53, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.aq = phi ptr [ %i.ad, %bb.h ], [ %.pre54, %bb.i ]
  %i.ar = phi i8 [ %.pre52, %bb.h ], [ %.pre, %bb.i ]
  %i.as = trunc nuw i8 %i.ar to i1                ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = select i1 %i.as, ptr %0, ptr %i.aq      ; 4 uses
  %.not40 = icmp eq i64 %spec.select.i, %i.f
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %spec.select.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store i64 0, ptr %i.aw, align 8, !tbaa !1427
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.ax = lshr i128 %1, 3
  %i.ay = trunc i128 %i.ax to i64                 ; 4 uses
  %i.az = shl nuw nsw i64 %spec.select.i, 3       ; 2 uses
  %.not41 = icmp ugt i64 %i.az, %i.ay
  br i1 %.not41, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %0, align 16
  %i.bb = icmp ne i64 %i.ba, 0
  %.not51 = select i1 %i.as, i1 true, i1 %i.bb
  br i1 %.not51, label %bb.q, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43: ; preds = %bb.l
  %i.bc = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.r     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  %i.bf = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bg = select i1 %i.be, ptr %0, ptr %i.bf
  %i.bh = load i64, ptr %i.e, align 16, !tbaa !1418
  %i.bi = shl i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.bg, i64 %i.bi, i1 false)
  br i1 %i.be, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !1422, !range !309, !noundef !48
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %0, align 16
  %i.bn = shl i64 %i.bm, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bn) #40
  %.pre55.pre = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309
  %i.bo = trunc nuw i8 %.pre55.pre to i1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !1421
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre55 = phi i1 [ false, %bb.o ], [ %i.bo, %bb.n ]
  store i64 1, ptr %i.e, align 16, !tbaa !1418
  store i64 1, ptr %0, align 16, !tbaa !111
  store ptr %i.bc, ptr %i.at, align 8, !tbaa !111
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %bb.l
  store i64 1, ptr %i.e, align 16, !tbaa !1418
  %.pre56 = load ptr, ptr %i.at, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.q, %bb.p
  %.pre-phi61 = phi i1 [ %i.as, %bb.q ], [ %.pre55, %bb.p ]
  %i.br = phi ptr [ %.pre56, %bb.q ], [ %i.bc, %bb.p ]
  %i.bs = select i1 %.pre-phi61, ptr %0, ptr %i.br
  store i64 0, ptr %i.bs, align 8, !tbaa !1427
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bt, align 8, !tbaa !1420
  br label %bb.t

bb.s:                                             ; preds = %bb.k
  %i.bu = sub nuw nsw i64 %i.az, %i.ay
  %i.bv = shl i64 %i.f, 3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.au, i64 %.sroa.speculated, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %i.ay, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.s, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !1418 ; 8 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1427
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1421, !range !309 ; 2 uses
  %.pre120 = trunc nuw i8 %.pre to i1             ; 2 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.pre120, ptr %0, ptr %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1427
  %i.u = sub nuw nsw i64 64, %i.d
  %i.v = lshr i64 %i.t, %i.u
  %.not94 = icmp ne i64 %i.v, 0
  %i.w = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.w
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.x = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711744) ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 6 uses
  %i.z = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i = select i1 %.pre120, i64 8, i64 %i.z ; 2 uses
  %i.aa = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ab = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ac = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #39 ; 3 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = load i64, ptr %i.e, align 16, !tbaa !1418
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.am = load i8, ptr %i.al, align 2, !tbaa !1422, !range !309, !noundef !48
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %0, align 16
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #40
  %.pre113.pre = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.y, align 1, !tbaa !1421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1418
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !111
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !111
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1418
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.aq = icmp ne i64 %i.z, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ar = phi i1 [ true, %bb.h ], [ %i.aq, %bb.i ]
  %.pre117 = phi ptr [ %i.ad, %bb.h ], [ %.pre115, %bb.i ]
  %i.as = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = select i1 %i.at, ptr %0, ptr %.pre117   ; 20 uses
  %i.aw = icmp ult i64 %i.x, %i.b
  br i1 %i.aw, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.at, i1 true, i1 %i.ar
  br i1 %.not104, label %bb.o, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.ax = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.p     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.ay = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bb = select i1 %i.az, ptr %0, ptr %i.ba
  %i.bc = load i64, ptr %i.e, align 16, !tbaa !1418
  %i.bd = shl i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.bb, i64 %i.bd, i1 false)
  br i1 %i.az, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !1422, !range !309, !noundef !48
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %0, align 16
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bi) #40
  %.pre116.pre = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309
  %i.bj = trunc nuw i8 %.pre116.pre to i1
  %i.bk = select i1 %i.bj, ptr %0, ptr %i.ax
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !1421
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre116 = phi ptr [ %i.ax, %bb.m ], [ %i.bk, %bb.l ]
  store i64 1, ptr %i.e, align 16, !tbaa !1418
  store i64 1, ptr %0, align 16, !tbaa !111
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !111
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !1418
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.o, %bb.n
  %.pre-phi124 = phi ptr [ %i.av, %bb.o ], [ %.pre116, %bb.n ]
  store i64 0, ptr %.pre-phi124, align 8, !tbaa !1427
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bn, align 8, !tbaa !1420
  br label %bb.y

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.x, 288230376151711745
  %i.bo = sub i64 %i.x, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %i.f, %i.b
  %i.bq = icmp ugt i64 %i.x, %i.bp
  %i.br = xor i64 %i.bo, -1                       ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.av, i64 %i.f
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !1427 ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = sub nuw nsw i64 64, %i.d
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.br
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !1427
  %i.bz = add nsw i64 %i.x, -1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = shl i64 %i.bu, %i.d                     ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.br ; 2 uses
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !1427
  %i.cd = icmp ugt i64 %i.f, 1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %2 = add i64 %i.f, -2
  %3 = sub i64 %2, %i.bo
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %3
  %i.ce = load i64, ptr %4, align 8, !tbaa !1427
  %i.cf = sub nuw nsw i64 64, %i.d
  %i.cg = lshr i64 %i.ce, %i.cf
  %i.ch = or disjoint i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !1427
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.187 = phi i64 [ %i.x, %bb.q ], [ %i.bz, %bb.s ], [ %i.x, %bb.u ], [ %i.x, %bb.t ] ; 12 uses
  %.0 = phi i64 [ %i.bo, %bb.q ], [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.t ] ; 11 uses
  %i.ci = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cj = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cj, %i.ci
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ck = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.cl = xor i64 %.0, -1
  %i.cm = add i64 %.187, %i.cl                    ; 2 uses
  %i.cn = add i64 %i.b, 1
  %i.co = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 %i.cn)
  %i.cp = add i64 %.0, %i.co
  %i.cq = sub i64 %.187, %i.cp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cr = xor i64 %.0, -1
  %i.cs = add i64 %.187, %i.cr
  %i.ct = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.ct)
  %i.cu = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.cu ; 2 uses
  %i.cv = shl i64 %.187, 3                        ; 2 uses
  %i.cw = sub i64 %.187, %.0
  %i.cx = shl i64 %i.cw, 3
  %scevgep136.a = getelementptr i8, ptr %i.av, i64 %i.cx ; 2 uses
  %i.cy = shl i64 %i.b, 3                         ; 2 uses
  %i.cz = sub i64 %i.cu, %i.cy
  %scevgep137.a = getelementptr i8, ptr %i.av, i64 %i.cz
  %i.da = add i64 %.0, %i.b
  %i.db = shl i64 %i.da, 3                        ; 2 uses
  %i.dc = sub i64 %i.cv, %i.db
  %scevgep138.a = getelementptr i8, ptr %i.av, i64 %i.dc
  %i.dd = add i64 %i.cu, -8
  %i.de = sub i64 %i.dd, %i.cy
  %scevgep139.a = getelementptr i8, ptr %i.av, i64 %i.de
  %i.df = add i64 %i.cv, -8
  %i.dg = sub i64 %i.df, %i.db
  %scevgep140 = getelementptr i8, ptr %i.av, i64 %i.dg
  %bound0 = icmp ult ptr %scevgep, %scevgep138.a
  %bound1 = icmp ult ptr %scevgep137.a, %scevgep136.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0141 = icmp ult ptr %scevgep, %scevgep140
  %bound1142 = icmp ult ptr %scevgep139.a, %scevgep136.a
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx = or i1 %found.conflict, %found.conflict143
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, -2                      ; 4 uses
  %i.dh = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat145 = shufflevector <2 x i64> %broadcast.splatinsert144, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = add i64 %.0, %index                     ; 2 uses
  %i.dj = xor i64 %i.di, -1
  %i.dk = add i64 %.187, %i.dj                    ; 2 uses
  %i.dl = sub i64 %i.dk, %i.b
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %wide.load = load <2 x i64>, ptr %i.dn, align 8, !tbaa !1427, !alias.scope !1485
  %i.do = shl <2 x i64> %wide.load, %broadcast.splat145 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dk
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 2 uses
  store <2 x i64> %i.do, ptr %i.dq, align 8, !tbaa !1427, !alias.scope !1488, !noalias !1490
  %i.dr = add i64 %i.di, %i.b
  %i.ds = sub i64 %invariant.op, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %wide.load146 = load <2 x i64>, ptr %i.du, align 8, !tbaa !1427, !alias.scope !1492
  %i.dv = lshr <2 x i64> %wide.load146, %broadcast.splat
  %i.dw = or disjoint <2 x i64> %i.dv, %i.do
  store <2 x i64> %i.dw, ptr %i.dq, align 8, !tbaa !1427, !alias.scope !1488, !noalias !1490
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !1493

middle.block:                                     ; preds = %vector.body
  %i.dy = add i64 %n.vec, -1
  %i.dz = sub i64 %i.cm, %i.dy
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.dh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.en, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ea = xor i64 %.1108, -1
  %i.eb = add i64 %.187, %i.ea                    ; 2 uses
  %i.ec = sub i64 %i.eb, %i.b
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1427
  %i.ef = shl i64 %i.ee, %i.d                     ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.eb ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !1427
  %i.eh = add i64 %.1108, %i.b
  %i.ei = sub i64 %invariant.op, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1427
  %i.el = lshr i64 %i.ek, %i.ck
  %i.em = or disjoint i64 %i.el, %i.ef
  store i64 %i.em, ptr %i.eg, align 8, !tbaa !1427
  %i.en = add i64 %.1108, 1                       ; 3 uses
  %i.eo = sub nsw i64 %.187, %i.en                ; 2 uses
  %.not96 = icmp slt i64 %i.eo, %i.ci
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !1494

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.v
  %.1.lcssa = phi i64 [ %.0, %bb.v ], [ %i.dh, %middle.block ], [ %i.en, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cj, %bb.v ], [ %i.dz, %middle.block ], [ %i.eo, %scalar.ph ]
  %i.ep = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.ep
  br i1 %.not97, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.eq = xor i64 %.1.lcssa, -1
  %i.er = add i64 %.187, %i.eq                    ; 2 uses
  %i.es = sub i64 %i.er, %i.b
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !1427
  %i.ev = shl i64 %i.eu, %i.d
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.er
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !1427
  %i.ex = add i64 %.1.lcssa, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %.2 = phi i64 [ %i.ex, %bb.w ], [ %.1.lcssa, %._crit_edge ]
  %i.ey = sub i64 %.187, %.2
  %i.ez = shl i64 %i.ey, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.ez, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.x, %bb.b
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !1495, !noalias !1497, !nonnull !48, !align !1450
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1446, !noalias !1500, !nonnull !48, !align !1450 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i64 0, ptr %7, align 16, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !1418
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !1420
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !1421
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !1422
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !1503

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !309
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d
end_hunk_2
