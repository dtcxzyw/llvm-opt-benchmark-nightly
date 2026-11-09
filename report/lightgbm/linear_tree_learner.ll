Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  br i1 %i.pd, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.pn, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.md, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.pg = load double, ptr %i.pe, align 8, !tbaa !189
  %i.ph = load double, ptr %i.pf, align 8, !tbaa !189
  store double %i.ph, ptr %i.pe, align 8, !tbaa !189
  store double %i.pg, ptr %i.pf, align 8, !tbaa !189
  %i.pi = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.pi ; 2 uses
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.pi ; 2 uses
  %i.pl = load double, ptr %i.pj, align 8, !tbaa !189
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !189
  store double %i.pm, ptr %i.pj, align 8, !tbaa !189
  store double %i.pl, ptr %i.pk, align 8, !tbaa !189
  %i.pn = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.pn, %i.gu
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !608

.lr.ph.i.i.i.i.i.i73:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i73
  %.021.i.i.i.i.i.i = phi i64 [ %i.ps, %.lr.ph.i.i.i.i.i.i73 ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %i.md, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.pp = load <2 x double>, ptr %i.po, align 1, !tbaa !182
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.pr = load <2 x double>, ptr %i.pq, align 16, !tbaa !182
  store <2 x double> %i.pr, ptr %i.po, align 1, !tbaa !182
  store <2 x double> %i.pp, ptr %i.pq, align 16, !tbaa !182
  %i.ps = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.pt = icmp slt i64 %i.ps, %i.mm
  br i1 %i.pt, label %.lr.ph.i.i.i.i.i.i73, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !609

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block404, %._crit_edge.i.i.i.i.i.i
  %i.pu = add nsw i64 %.1, 1
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, %bb.ab
  %.2 = phi i64 [ %i.pu, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit ], [ %.1, %bb.ab ] ; 2 uses
  %i.pv = icmp slt i64 %.060232, %i.gf
  br i1 %i.pv, label %bb.af, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

bb.af:                                            ; preds = %bb.ae
  %i.pw = load ptr, ptr %0, align 8, !tbaa !307   ; 2 uses
  %i.px = load i64, ptr %i.a, align 8, !tbaa !305 ; 2 uses
  %i.py = mul nsw i64 %i.px, %.060232             ; 2 uses
  %i.pz = getelementptr [8 x i8], ptr %i.pw, i64 %.060232
  %i.qa = getelementptr [8 x i8], ptr %i.pz, i64 %i.py
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.py
  %i.qc = add nsw i64 %i.gs, -1                   ; 7 uses
  %i.qd = sub nsw i64 %i.px, %i.qc
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qd ; 6 uses
  %i.qf = load double, ptr %i.qa, align 8, !tbaa !189, !noalias !649 ; 5 uses
  %i.qg = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qh = and i64 %i.qg, 7
  %.not.i.i.i.i.i.i.i74 = icmp eq i64 %i.qh, 0
  br i1 %.not.i.i.i.i.i.i.i74, label %bb.ag, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75

bb.ag:                                            ; preds = %bb.af
  %i.qi = lshr exact i64 %i.qg, 3
  %i.qj = and i64 %i.qi, 1
  %i.qk = tail call i64 @llvm.smin.i64(i64 %i.qj, i64 %i.qc)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i76 = phi i64 [ %i.qk, %bb.ag ], [ %i.qc, %bb.af ] ; 9 uses
  %i.ql = sub nsw i64 %i.qc, %.0.i.i.i.i.i.i.i76  ; 2 uses
  %i.qm = sdiv i64 %i.ql, 2
  %i.qn = shl nsw i64 %i.qm, 1                    ; 2 uses
  %i.qo = add nsw i64 %i.qn, %.0.i.i.i.i.i.i.i76  ; 5 uses
  %i.qp = icmp sgt i64 %.0.i.i.i.i.i.i.i76, 0
  br i1 %i.qp, label %.lr.ph.i.i.i.i.i.i.i83.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i83.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75
  %min.iters.check369 = icmp eq i64 %.0.i.i.i.i.i.i.i76, 1
  br i1 %min.iters.check369, label %.lr.ph.i.i.i.i.i.i.i83.preheader475, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader
  %n.vec371 = and i64 %.0.i.i.i.i.i.i.i76, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert372 = insertelement <2 x double> poison, double %i.qf, i64 0
  %broadcast.splat373 = shufflevector <2 x double> %broadcast.splatinsert372, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph370
  %index375 = phi i64 [ 0, %vector.ph370 ], [ %index.next377, %vector.body374 ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %index375 ; 2 uses
  %wide.load376 = load <2 x double>, ptr %i.qq, align 8, !tbaa !189
  %i.qr = fdiv <2 x double> %wide.load376, %broadcast.splat373
  store <2 x double> %i.qr, ptr %i.qq, align 8, !tbaa !189
  %index.next377 = add nuw i64 %index375, 2       ; 2 uses
  %i.qs = icmp eq i64 %index.next377, %n.vec371
  br i1 %i.qs, label %middle.block378, label %vector.body374, !llvm.loop !612

middle.block378:                                  ; preds = %vector.body374
  %cmp.n379 = icmp eq i64 %.0.i.i.i.i.i.i.i76, %n.vec371
  br i1 %cmp.n379, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i83.preheader475

.lr.ph.i.i.i.i.i.i.i83.preheader475:              ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader, %middle.block378
  %.05.i.i.i.i.i.i.i84.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i83.preheader ], [ %n.vec371, %middle.block378 ]
  br label %.lr.ph.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i83:                           ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader475, %.lr.ph.i.i.i.i.i.i.i83
  %.05.i.i.i.i.i.i.i84 = phi i64 [ %i.qw, %.lr.ph.i.i.i.i.i.i.i83 ], [ %.05.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i83.preheader475 ] ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %.05.i.i.i.i.i.i.i84 ; 2 uses
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !189
  %i.qv = fdiv double %i.qu, %i.qf
  store double %i.qv, ptr %i.qt, align 8, !tbaa !189
  %i.qw = add nuw nsw i64 %.05.i.i.i.i.i.i.i84, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i85 = icmp eq i64 %i.qw, %.0.i.i.i.i.i.i.i76
  br i1 %exitcond.not.i.i.i.i.i.i.i85, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i83, !llvm.loop !613

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i83, %middle.block378, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75
  %i.qx = icmp sgt i64 %i.ql, 1
  br i1 %i.qx, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i77

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.qy = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qz = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i81

._crit_edge.i.i.i.i.i.i77:                        ; preds = %.lr.ph.i.i.i.i.i.i81, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ra = icmp slt i64 %i.qo, %i.qc
  br i1 %i.ra, label %.lr.ph.i17.i.i.i.i.i.i78.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i78.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i77
  %i.rb = add i64 %.0.i.i.i.i.i.i.i76, %i.qn
  %i.rc = sub i64 %i.qc, %i.rb                    ; 3 uses
  %min.iters.check356 = icmp ult i64 %i.rc, 2
  br i1 %min.iters.check356, label %.lr.ph.i17.i.i.i.i.i.i78.preheader474, label %vector.ph357

vector.ph357:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i78.preheader
  %n.vec358 = and i64 %i.rc, -2                   ; 3 uses
  %i.rd = add i64 %i.qo, %n.vec358
  %broadcast.splatinsert359 = insertelement <2 x double> poison, double %i.qf, i64 0
  %broadcast.splat360 = shufflevector <2 x double> %broadcast.splatinsert359, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = getelementptr [8 x i8], ptr %i.qe, i64 %i.qo
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph357
  %index362 = phi i64 [ 0, %vector.ph357 ], [ %index.next364, %vector.body361 ] ; 2 uses
  %i.rf = getelementptr [8 x i8], ptr %i.re, i64 %index362 ; 2 uses
  %wide.load363 = load <2 x double>, ptr %i.rf, align 8, !tbaa !189
  %i.rg = fdiv <2 x double> %wide.load363, %broadcast.splat360
  store <2 x double> %i.rg, ptr %i.rf, align 8, !tbaa !189
  %index.next364 = add nuw i64 %index362, 2       ; 2 uses
  %i.rh = icmp eq i64 %index.next364, %n.vec358
  br i1 %i.rh, label %middle.block365, label %vector.body361, !llvm.loop !614

middle.block365:                                  ; preds = %vector.body361
  %cmp.n366 = icmp eq i64 %i.rc, %n.vec358
  br i1 %cmp.n366, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i78.preheader474

.lr.ph.i17.i.i.i.i.i.i78.preheader474:            ; preds = %.lr.ph.i17.i.i.i.i.i.i78.preheader, %middle.block365
  %.05.i18.i.i.i.i.i.i79.ph = phi i64 [ %i.qo, %.lr.ph.i17.i.i.i.i.i.i78.preheader ], [ %i.rd, %middle.block365 ]
  br label %.lr.ph.i17.i.i.i.i.i.i78

.lr.ph.i17.i.i.i.i.i.i78:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i78.preheader474, %.lr.ph.i17.i.i.i.i.i.i78
  %.05.i18.i.i.i.i.i.i79 = phi i64 [ %i.rl, %.lr.ph.i17.i.i.i.i.i.i78 ], [ %.05.i18.i.i.i.i.i.i79.ph, %.lr.ph.i17.i.i.i.i.i.i78.preheader474 ] ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %.05.i18.i.i.i.i.i.i79 ; 2 uses
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !189
  %i.rk = fdiv double %i.rj, %i.qf
  store double %i.rk, ptr %i.ri, align 8, !tbaa !189
  %i.rl = add nsw i64 %.05.i18.i.i.i.i.i.i79, 1   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i80 = icmp eq i64 %i.rl, %i.qc
  br i1 %exitcond.not.i19.i.i.i.i.i.i80, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i78, !llvm.loop !615

.lr.ph.i.i.i.i.i.i81:                             ; preds = %.lr.ph.i.i.i.i.i.i81, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i82 = phi i64 [ %i.rp, %.lr.ph.i.i.i.i.i.i81 ], [ %.0.i.i.i.i.i.i.i76, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %.021.i.i.i.i.i.i82 ; 2 uses
  %i.rn = load <2 x double>, ptr %i.rm, align 16, !tbaa !182
  %i.ro = fdiv <2 x double> %i.rn, %i.qz
  store <2 x double> %i.ro, ptr %i.rm, align 16, !tbaa !182
  %i.rp = add nsw i64 %.021.i.i.i.i.i.i82, 2      ; 2 uses
  %i.rq = icmp slt i64 %i.rp, %i.qo
  br i1 %i.rq, label %.lr.ph.i.i.i.i.i.i81, label %._crit_edge.i.i.i.i.i.i77, !llvm.loop !616

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i78, %middle.block365, %._crit_edge.i.i.i.i.i.i77, %bb.ae
  %i.rr = icmp slt i64 %.060232, %i.gg
  br i1 %i.rr, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.rs = load ptr, ptr %0, align 8, !tbaa !307, !noalias !650 ; 9 uses
  %i.rt = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !650 ; 9 uses
  %i.ru = mul i64 %i.rt, %.060232
  %i.rv = getelementptr [8 x i8], ptr %i.rs, i64 %i.ru
  %i.rw = add i64 %i.gs, -1                       ; 8 uses
  %i.rx = sub i64 %i.rt, %i.rw                    ; 2 uses
  %i.ry = getelementptr [8 x i8], ptr %i.rv, i64 %i.rx ; 10 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %.060232
  %i.sa = load i64, ptr %i.bl, align 8, !tbaa !306, !noalias !651
  %i.sb = add nsw i64 %i.gt, -1                   ; 2 uses
  %i.sc = sub nsw i64 %i.sa, %i.sb
  %i.sd = mul nsw i64 %i.sc, %i.rt
  %i.se = getelementptr inbounds [8 x i8], ptr %i.rz, i64 %i.sd
  %i.sf = add nuw nsw i64 %.060232, 1             ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.sf
  %i.sh = mul nsw i64 %i.rt, %i.sf
  %i.si = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %i.sh
  %i.sj = mul i64 %i.rt, %i.gp
  %scevgep = getelementptr i8, ptr %i.rs, i64 %i.sj
  %1 = mul i64 %i.rt, %i.go
  %2 = shl i64 %i.rx, 3                           ; 2 uses
  %i.sk = add i64 %i.rt, 1                        ; 2 uses
  %i.sl = mul i64 %i.gp, %i.sk                    ; 2 uses
  %i.sm = mul i64 %i.rt, %i.gm
  %i.sn = mul i64 %i.gn, %i.sk
  %invariant.gep = getelementptr i8, ptr %i.rs, i64 %i.sn
  %invariant.gep.a = getelementptr i8, ptr %i.rs, i64 %i.sm
  %i.so = getelementptr i8, ptr %invariant.gep.a, i64 %2
  %invariant.gep581 = getelementptr i8, ptr %i.rs, i64 %i.sl
  %invariant.gep583 = getelementptr i8, ptr %i.rs, i64 %i.gr
  %i.sp = getelementptr i8, ptr %invariant.gep583, i64 %i.sl
  %invariant.gep585 = getelementptr i8, ptr %i.rs, i64 %1
  %i.sq = getelementptr i8, ptr %invariant.gep585, i64 %2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.wv, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.sr = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !652 ; 3 uses
  %i.ss = mul nsw i64 %i.sr, %.029.i.i.i.i.i
  %i.st = getelementptr inbounds [8 x i8], ptr %i.si, i64 %i.ss ; 11 uses
  %i.su = mul nsw i64 %.029.i.i.i.i.i, %i.rt
  %i.sv = getelementptr [8 x i8], ptr %i.se, i64 %i.su
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !189, !noalias !653 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.sw, i64 0
  %i.sx = ptrtoint ptr %i.st to i64               ; 2 uses
  %i.sy = and i64 %i.sx, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.sz = lshr exact i64 %i.sx, 3
  %i.ta = and i64 %i.sz, 1
  %i.tb = tail call i64 @llvm.smin.i64(i64 %i.ta, i64 %i.rw)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tb, %bb.ah ], [ %i.rw, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.tc = sub nsw i64 %i.rw, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.td = sdiv i64 %i.tc, 2                       ; 2 uses
  %i.te = shl nsw i64 %i.td, 1                    ; 2 uses
  %i.tf = add nsw i64 %i.te, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.tg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check336 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check336, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.th = shl i64 %.029.i.i.i.i.i, 3
  %i.ti = mul i64 %i.sr, %i.th
  %i.tj = shl i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ti
  %i.tk = getelementptr i8, ptr %gep, i64 %i.tj
  %gep582.a = getelementptr i8, ptr %i.so, i64 %i.tj
  %bound0338 = icmp ult ptr %i.st, %gep582.a
  %bound1339 = icmp ult ptr %i.ry, %i.tk
  %found.conflict340 = and i1 %bound0338, %bound1339
  br i1 %found.conflict340, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck337
  %n.vec342 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert343 = insertelement <2 x double> poison, double %i.sw, i64 0
  %broadcast.splat344 = shufflevector <2 x double> %broadcast.splatinsert343, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph341
  %index346 = phi i64 [ 0, %vector.ph341 ], [ %index.next351, %vector.body345 ] ; 3 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %index346 ; 3 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %index346 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %wide.load347 = load <2 x double>, ptr %i.tm, align 8, !tbaa !189, !alias.scope !654
  %wide.load348 = load <2 x double>, ptr %i.tn, align 8, !tbaa !189, !alias.scope !654
  %i.to = fmul <2 x double> %broadcast.splat344, %wide.load347
  %i.tp = fmul <2 x double> %broadcast.splat344, %wide.load348
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16 ; 2 uses
  %wide.load349 = load <2 x double>, ptr %i.tl, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %wide.load350 = load <2 x double>, ptr %i.tq, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %i.tr = fsub <2 x double> %wide.load349, %i.to
  %i.ts = fsub <2 x double> %wide.load350, %i.tp
  store <2 x double> %i.tr, ptr %i.tl, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  store <2 x double> %i.ts, ptr %i.tq, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %index.next351 = add nuw i64 %index346, 4       ; 2 uses
  %i.tt = icmp eq i64 %index.next351, %n.vec342
  br i1 %i.tt, label %middle.block352, label %vector.body345, !llvm.loop !628

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec342
  br i1 %cmp.n353, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473:    ; preds = %vector.memcheck337, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block352
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck337 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec342, %middle.block352 ] ; 5 uses
  %.neg557 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter536 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !189
  %i.tx = fmul double %i.sw, %i.tw
  %i.ty = load double, ptr %i.tu, align 8, !tbaa !189
  %i.tz = fsub double %i.ty, %i.tx
  store double %i.tz, ptr %i.tu, align 8, !tbaa !189
  %i.ua = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473 ], [ %i.ua, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ub = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg557
  br i1 %i.ub, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.up, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !189
  %i.uf = fmul double %i.sw, %i.ue
  %i.ug = load double, ptr %i.uc, align 8, !tbaa !189
  %i.uh = fsub double %i.ug, %i.uf
  store double %i.uh, ptr %i.uc, align 8, !tbaa !189
  %i.ui = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.ui ; 2 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.ui
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !189
  %i.um = fmul double %i.sw, %i.ul
  %i.un = load double, ptr %i.uj, align 8, !tbaa !189
  %i.uo = fsub double %i.un, %i.um
  store double %i.uo, ptr %i.uj, align 8, !tbaa !189
  %i.up = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.up, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !629

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block352, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uq = icmp sgt i64 %i.tc, 1
  br i1 %i.uq, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ur = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.us = icmp slt i64 %i.tf, %i.rw
  br i1 %i.us, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ut = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.te
  %i.uu = sub i64 %i.rw, %i.ut                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.uu, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.uv = shl i64 %.029.i.i.i.i.i, 3
  %i.uw = mul i64 %i.sr, %i.uv                    ; 2 uses
  %i.ux = shl i64 %i.td, 4                        ; 2 uses
  %i.uy = shl i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.uz = getelementptr i8, ptr %invariant.gep581, i64 %i.uw
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.ux
  %gep586 = getelementptr i8, ptr %i.va, i64 %i.uy
  %i.vb = getelementptr i8, ptr %i.sp, i64 %i.uw
  %i.vc = getelementptr i8, ptr %i.sq, i64 %i.ux
  %i.vd = getelementptr i8, ptr %i.vc, i64 %i.uy
  %bound0 = icmp ult ptr %gep586, %scevgep
  %bound1 = icmp ult ptr %i.vd, %i.vb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uu, -4                      ; 3 uses
  %i.ve = add i64 %i.tf, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.sw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vf = add i64 %i.tf, %index                   ; 2 uses
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.vf ; 3 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.vf ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %wide.load = load <2 x double>, ptr %i.vh, align 8, !tbaa !189, !alias.scope !656
  %wide.load324 = load <2 x double>, ptr %i.vi, align 8, !tbaa !189, !alias.scope !656
  %i.vj = fmul <2 x double> %broadcast.splat, %wide.load
  %i.vk = fmul <2 x double> %broadcast.splat, %wide.load324
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %wide.load325 = load <2 x double>, ptr %i.vg, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %wide.load326 = load <2 x double>, ptr %i.vl, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %i.vm = fsub <2 x double> %wide.load325, %i.vj
  %i.vn = fsub <2 x double> %wide.load326, %i.vk
  store <2 x double> %i.vm, ptr %i.vg, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  store <2 x double> %i.vn, ptr %i.vl, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vo = icmp eq i64 %index.next, %n.vec
  br i1 %i.vo, label %middle.block, label %vector.body, !llvm.loop !633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uu, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.tf, %vector.memcheck ], [ %i.tf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ve, %middle.block ] ; 6 uses
  %i.vp = sub i64 %i.rw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vq = add i64 %.060232, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter539 = and i64 %i.vp, 1
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.st, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !189
  %i.vu = fmul double %i.sw, %i.vt
  %i.vv = load double, ptr %i.vr, align 8, !tbaa !189
  %i.vw = fsub double %i.vv, %i.vu
  store double %i.vw, ptr %i.vr, align 8, !tbaa !189
  %i.vx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472 ], [ %i.vx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.vy = icmp eq i64 %i.gj, %i.vq
  br i1 %i.vy, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.st, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !189
  %i.wc = fmul double %i.sw, %i.wb
  %i.wd = load double, ptr %i.vz, align 8, !tbaa !189
  %i.we = fsub double %i.wd, %i.wc
  store double %i.we, ptr %i.vz, align 8, !tbaa !189
  %i.wf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.wf
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !189
  %i.wj = fmul double %i.sw, %i.wi
  %i.wk = load double, ptr %i.wg, align 8, !tbaa !189
  %i.wl = fsub double %i.wk, %i.wj
  store double %i.wl, ptr %i.wg, align 8, !tbaa !189
  %i.wm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.wm, %i.rw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !634

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.st, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wp = load <2 x double>, ptr %i.wo, align 1, !tbaa !182
  %i.wq = fmul <2 x double> %i.ur, %i.wp
  %i.wr = load <2 x double>, ptr %i.wn, align 16, !tbaa !182
  %i.ws = fsub <2 x double> %i.wr, %i.wq
  store <2 x double> %i.ws, ptr %i.wn, align 16, !tbaa !182
  %i.wt = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %i.tf
  br i1 %i.wu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !635

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wv = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.wv, %i.sb
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !636

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.ww = add nuw nsw i64 %.060232, 1             ; 2 uses
  %exitcond257.not = icmp eq i64 %i.ww, %.sroa.speculated.i
  br i1 %exitcond257.not, label %._crit_edge, label %bb.s, !llvm.loop !637

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, %scalar.ph456.prol.loopexit, %scalar.ph456, %middle.block466
  %.4.ph = phi i64 [ %.061231, %middle.block466 ], [ %.061231, %scalar.ph456.prol.loopexit ], [ %.061231, %scalar.ph456 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ]
  %i.wx = and i64 %.4.ph, 1
  %i.wy = icmp eq i64 %i.wx, 0
  %i.wz = select i1 %i.wy, i8 1, i8 -1            ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.xa, i64 noundef %i.b)
  %i.xb = load ptr, ptr %i.fd, align 8, !tbaa !314 ; 3 uses
  %i.xc = load ptr, ptr %i.xa, align 8, !tbaa !314 ; 6 uses
  %xtraiter545 = and i64 %.sroa.speculated.i, 1
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge
  %.058.prol = add nsw i64 %.sroa.speculated.i, -1 ; 3 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %.058.prol
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !166
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %.058.prol ; 2 uses
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xf ; 2 uses
  %i.xi = load i32, ptr %i.xg, align 4, !tbaa !166
  %i.xj = load i32, ptr %i.xh, align 4, !tbaa !166
  store i32 %i.xj, ptr %i.xg, align 4, !tbaa !166
  store i32 %i.xi, ptr %i.xh, align 4, !tbaa !166
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge
  %.058.in237.unr = phi i64 [ %.sroa.speculated.i, %._crit_edge ], [ %.058.prol, %.prol.loopexit.unr-lcssa ]
  %i.xk = icmp eq i64 %i.gg, 0
  br i1 %i.xk, label %.lr.ph243, label %._crit_edge.new

.lr.ph243:                                        ; preds = %._crit_edge.new, %.prol.loopexit
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.xl, i64 noundef %i.bm)
  %i.xm = load ptr, ptr %i.fp, align 8, !tbaa !312 ; 3 uses
  %i.xn = load ptr, ptr %i.xl, align 8, !tbaa !314 ; 6 uses
  %xtraiter549 = and i64 %.sroa.speculated.i, 1
  %i.xo = icmp eq i64 %i.gg, 0
  br i1 %i.xo, label %.epil.preheader548, label %.lr.ph243.new

.lr.ph243.new:                                    ; preds = %.lr.ph243
  %unroll_iter553 = and i64 %.sroa.speculated.i, 9223372036854775806
  br label %bb.ai

._crit_edge.new:                                  ; preds = %.prol.loopexit, %._crit_edge.new
  %.058.in237 = phi i64 [ %.058.1, %._crit_edge.new ], [ %.058.in237.unr, %.prol.loopexit ] ; 3 uses
  %.058 = add nsw i64 %.058.in237, -1             ; 2 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %.058
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !166
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %.058 ; 2 uses
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xr ; 2 uses
  %i.xu = load i32, ptr %i.xs, align 4, !tbaa !166
  %i.xv = load i32, ptr %i.xt, align 4, !tbaa !166
  store i32 %i.xv, ptr %i.xs, align 4, !tbaa !166
  store i32 %i.xu, ptr %i.xt, align 4, !tbaa !166
  %.058.1 = add nsw i64 %.058.in237, -2           ; 3 uses
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %.058.1
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !166
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %.058.1 ; 2 uses
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xy ; 2 uses
  %i.yb = load i32, ptr %i.xz, align 4, !tbaa !166
  %i.yc = load i32, ptr %i.ya, align 4, !tbaa !166
  store i32 %i.yc, ptr %i.xz, align 4, !tbaa !166
  store i32 %i.yb, ptr %i.ya, align 4, !tbaa !166
  %i.yd = icmp sgt i64 %.058.in237, 2
  br i1 %i.yd, label %._crit_edge.new, label %.lr.ph243, !llvm.loop !638

._crit_edge244.loopexit.unr-lcssa:                ; preds = %bb.ai
  %lcmp.mod551.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod551.not, label %._crit_edge244, label %.epil.preheader548

.epil.preheader548:                               ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243
  %.0241.epil.init = phi i64 [ 0, %.lr.ph243 ], [ %i.zc, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod552 = trunc i64 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod552)
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.0241.epil.init
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !166
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %.0241.epil.init ; 2 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.xn, i64 %i.yg ; 2 uses
  %i.yj = load i32, ptr %i.yh, align 4, !tbaa !166
  %i.yk = load i32, ptr %i.yi, align 4, !tbaa !166
  store i32 %i.yk, ptr %i.yh, align 4, !tbaa !166
  store i32 %i.yj, ptr %i.yi, align 4, !tbaa !166
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %.epil.preheader548, %._crit_edge244.loopexit.unr-lcssa, %._crit_edge.thread
  %.4287289 = phi i8 [ 1, %._crit_edge.thread ], [ %i.wz, %._crit_edge244.loopexit.unr-lcssa ], [ %i.wz, %.epil.preheader548 ]
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.4287289, ptr %i.yl, align 8, !tbaa !658
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.ym, align 1, !tbaa !325
  ret void

bb.ai:                                            ; preds = %bb.ai, %.lr.ph243.new
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
  br i1 %.not, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !789

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !166
  store i32 4096, ptr %2, align 4, !tbaa !166
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !789

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !166
  %i.o = load i32, ptr %2, align 4, !tbaa !166
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !166
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !166
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !166
  %i.s = load i32, ptr %1, align 4, !tbaa !166
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !166
  %i.u = load i32, ptr %2, align 4, !tbaa !166
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !389
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !391    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !392  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %smax127 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.r = add nsw i64 %smax127, -4                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = mul i64 %i.h, %i.s
  %i.u = shl i64 %i.t, 5
  %i.v = shl i64 %3, 3                            ; 4 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %i.u
  %scevgep128 = getelementptr i8, ptr %i.w, i64 %i.v
  %i.x = shl i64 %i.r, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 8
  %i.z = mul i64 %i.h, %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep129 = getelementptr i8, ptr %i.aa, i64 %i.v
  %i.ab = shl i64 %i.h, 3
  %scevgep130 = getelementptr i8, ptr %i.f, i64 %i.ab
  %i.ac = or disjoint i64 %i.x, 16
  %i.ad = mul i64 %i.h, %i.ac
  %i.ae = getelementptr i8, ptr %i.f, i64 %i.ad
  %scevgep131 = getelementptr i8, ptr %i.ae, i64 %i.v
  %i.af = shl i64 %i.h, 4
  %scevgep132 = getelementptr i8, ptr %i.f, i64 %i.af
  %i.ag = or disjoint i64 %i.x, 24
  %i.ah = mul i64 %i.h, %i.ag
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ah
  %scevgep133 = getelementptr i8, ptr %i.ai, i64 %i.v
  %i.aj = mul i64 %i.h, 24
  %scevgep134 = getelementptr i8, ptr %i.f, i64 %i.aj
  %i.ak = shl i64 %6, 5
  %7 = add i64 %6, %3
  %8 = shl i64 %7, 5
  %i.al = insertelement <4 x ptr> poison, ptr %scevgep133, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %scevgep131, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %scevgep129, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep128, i64 3
  %i.ap = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep132, i64 1
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %scevgep130, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %i.at = getelementptr i8, ptr %1, i64 %i.ak
  %i.au = getelementptr i8, ptr %1, i64 %8
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.eg, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.ef, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ax = mul nsw i64 %i.h, %.05076.us
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 1
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = or disjoint i64 %.05076.us, 2
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.f, i64 %i.bd ; 4 uses
  %i.bf = or disjoint i64 %.05076.us, 3
  %i.bg = mul nsw i64 %i.h, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bi = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bi ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bi ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep103
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %i.bk
  %i.br = or i1 %i.bq, %i.bp
  br i1 %i.br, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bs = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.at, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.au, i64 %i.bs
  %i.bv = insertelement <4 x ptr> poison, ptr %i.bt, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = icmp ult <4 x ptr> %i.bw, %i.ao
  %i.by = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.bz = shufflevector <4 x ptr> %i.by, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ca = icmp ult <4 x ptr> %i.as, %i.bz
  %i.cb = and <4 x i1> %i.bx, %i.ca
  %i.cc = bitcast <4 x i1> %i.cb to i4
  %i.cd = icmp ne i4 %i.cc, 0
  %op.rdx = or i1 %i.cd, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ce = add i64 %i.aw, %i.av                    ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !189, !alias.scope !804
  %.idx = shl i64 %index, 5
  %i.ch = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.ci, align 8, !tbaa !189, !alias.scope !805
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.cj, align 8, !tbaa !189, !alias.scope !806
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.ck, align 8, !tbaa !189, !alias.scope !807
  %i.cl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cl, <4 x double> %i.cm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ch, align 8, !tbaa !189, !alias.scope !808, !noalias !809
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !189
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !189
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !189
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !189
  %i.cw = getelementptr i8, ptr %i.cq, i64 16
  store double %i.cv, ptr %i.cw, align 8, !tbaa !189
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = getelementptr i8, ptr %i.cq, i64 24
  store double %i.cy, ptr %i.cz, align 8, !tbaa !189
  %i.da = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.db = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %3, %.neg
  br i1 %i.dc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.ee, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.ed, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.de = load double, ptr %i.dd, align 8, !tbaa !189
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.de, ptr %i.df, align 8, !tbaa !189
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr i8, ptr %i.df, i64 8
  store double %i.dh, ptr %i.di, align 8, !tbaa !189
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr i8, ptr %i.df, i64 16
  store double %i.dk, ptr %i.dl, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !189
  %i.do = getelementptr i8, ptr %i.df, i64 24
  store double %i.dn, ptr %i.do, align 8, !tbaa !189
  %i.dp = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !189
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  store double %i.dr, ptr %i.dt, align 8, !tbaa !189
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dp
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189
  %i.dw = getelementptr i8, ptr %i.ds, i64 40
  store double %i.dv, ptr %i.dw, align 8, !tbaa !189
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dp
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !189
  %i.dz = getelementptr i8, ptr %i.ds, i64 48
  store double %i.dy, ptr %i.dz, align 8, !tbaa !189
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !189
  %i.ec = getelementptr i8, ptr %i.ds, i64 56
  store double %i.eb, ptr %i.ec, align 8, !tbaa !189
  %i.ed = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ee = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ee, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !798

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.ce, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.ed, %scalar.ph ]
  %i.ef = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.eg = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.c
  br i1 %i.eh, label %.lr.ph.us, label %.preheader, !llvm.loop !799

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.ei = add nsw i64 %smax, -4
  %i.ej = lshr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.ej, %invariant.op
  %i.el = shl i64 %5, 2
  %i.em = add i64 %i.ek, %i.el
  %i.en = shl i64 %3, 2
  %i.eo = sub i64 %i.em, %i.en
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.eo, %.lr.ph78.split ], [ %i.ef, %._crit_edge.us ]
  %i.ep = icmp slt i64 %i.c, %4
  br i1 %i.ep, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.eq = load ptr, ptr %2, align 8, !tbaa !391   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !392 ; 3 uses
  %i.et = icmp sgt i64 %3, 0
  %i.eu = add i64 %3, %6
  %i.ev = sub i64 %5, %i.eu
  br i1 %i.et, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ew = ptrtoaddr ptr %i.eq to i64
  %i.ex = mul i64 %i.es, -8
  %i.ey = mul i64 %i.es, %i.b
end_hunk_1
