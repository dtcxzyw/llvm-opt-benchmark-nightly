Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/project?download=true
inline.NumInlined: 7102
inline.NumDeleted: 4154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN3igl7projectIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE:bb.a
  store float %i.qf, ptr %gep.2.i.i.i.i.i.i.i.i59.prol, align 4, !tbaa !39
  %i.qg = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i58.prol, 1 ; 2 uses
  %prol.iter615.next = add i64 %prol.iter615, 1   ; 2 uses
  %prol.iter615.cmp.not = icmp eq i64 %prol.iter615.next, %xtraiter613
  br i1 %prol.iter615.cmp.not, label %scalar.ph459.prol.loopexit, label %scalar.ph459.prol, !llvm.loop !333

scalar.ph459.prol.loopexit:                       ; preds = %scalar.ph459.prol, %scalar.ph459.preheader
  %.09.2.i.i.i.i.i.i.i.i58.unr = phi i64 [ %.09.2.i.i.i.i.i.i.i.i58.ph, %scalar.ph459.preheader ], [ %i.qg, %scalar.ph459.prol ]
  %i.qh = sub nsw i64 %.09.2.i.i.i.i.i.i.i.i58.ph, %.pr.i.i.i.i.i.i.i41
  %i.qi = icmp ugt i64 %i.qh, -4
  br i1 %i.qi, label %._crit_edge.2.i.i.i.i.i.i.i.i62, label %scalar.ph459

scalar.ph459:                                     ; preds = %scalar.ph459.prol.loopexit, %scalar.ph459
  %.09.2.i.i.i.i.i.i.i.i58 = phi i64 [ %i.rc, %scalar.ph459 ], [ %.09.2.i.i.i.i.i.i.i.i58.unr, %scalar.ph459.prol.loopexit ] ; 7 uses
  %gep.2.i.i.i.i.i.i.i.i59 = getelementptr [4 x i8], ptr %invariant.gep.2.i.i.i.i.i.i.i.i56, i64 %.09.2.i.i.i.i.i.i.i.i58
  %gep11.2.i.i.i.i.i.i.i.i60 = getelementptr [4 x i8], ptr %invariant.gep10.2.i.i.i.i.i.i.i.i57, i64 %.09.2.i.i.i.i.i.i.i.i58
  %i.qj = getelementptr [4 x i8], ptr %i.np, i64 %.09.2.i.i.i.i.i.i.i.i58
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !39
  %i.ql = load float, ptr %gep11.2.i.i.i.i.i.i.i.i60, align 4, !tbaa !39
  %i.qm = fdiv float %i.ql, %i.qk
  store float %i.qm, ptr %gep.2.i.i.i.i.i.i.i.i59, align 4, !tbaa !39
  %i.qn = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i58, 1 ; 3 uses
  %gep.2.i.i.i.i.i.i.i.i59.1 = getelementptr [4 x i8], ptr %invariant.gep.2.i.i.i.i.i.i.i.i56, i64 %i.qn
  %gep11.2.i.i.i.i.i.i.i.i60.1 = getelementptr [4 x i8], ptr %invariant.gep10.2.i.i.i.i.i.i.i.i57, i64 %i.qn
  %i.qo = getelementptr [4 x i8], ptr %i.np, i64 %i.qn
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !39
  %i.qq = load float, ptr %gep11.2.i.i.i.i.i.i.i.i60.1, align 4, !tbaa !39
  %i.qr = fdiv float %i.qq, %i.qp
  store float %i.qr, ptr %gep.2.i.i.i.i.i.i.i.i59.1, align 4, !tbaa !39
  %i.qs = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i58, 2 ; 3 uses
  %gep.2.i.i.i.i.i.i.i.i59.2 = getelementptr [4 x i8], ptr %invariant.gep.2.i.i.i.i.i.i.i.i56, i64 %i.qs
  %gep11.2.i.i.i.i.i.i.i.i60.2 = getelementptr [4 x i8], ptr %invariant.gep10.2.i.i.i.i.i.i.i.i57, i64 %i.qs
  %i.qt = getelementptr [4 x i8], ptr %i.np, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !39
  %i.qv = load float, ptr %gep11.2.i.i.i.i.i.i.i.i60.2, align 4, !tbaa !39
  %i.qw = fdiv float %i.qv, %i.qu
  store float %i.qw, ptr %gep.2.i.i.i.i.i.i.i.i59.2, align 4, !tbaa !39
  %i.qx = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i58, 3 ; 3 uses
  %gep.2.i.i.i.i.i.i.i.i59.3 = getelementptr [4 x i8], ptr %invariant.gep.2.i.i.i.i.i.i.i.i56, i64 %i.qx
  %gep11.2.i.i.i.i.i.i.i.i60.3 = getelementptr [4 x i8], ptr %invariant.gep10.2.i.i.i.i.i.i.i.i57, i64 %i.qx
  %i.qy = getelementptr [4 x i8], ptr %i.np, i64 %i.qx
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !39
  %i.ra = load float, ptr %gep11.2.i.i.i.i.i.i.i.i60.3, align 4, !tbaa !39
  %i.rb = fdiv float %i.ra, %i.qz
  store float %i.rb, ptr %gep.2.i.i.i.i.i.i.i.i59.3, align 4, !tbaa !39
  %i.rc = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i58, 4 ; 2 uses
  %exitcond.2.not.i.i.i.i.i.i.i.i61.3 = icmp eq i64 %i.rc, %.pr.i.i.i.i.i.i.i41
  br i1 %exitcond.2.not.i.i.i.i.i.i.i.i61.3, label %._crit_edge.2.i.i.i.i.i.i.i.i62, label %scalar.ph459, !llvm.loop !334

._crit_edge.2.i.i.i.i.i.i.i.i62:                  ; preds = %scalar.ph459.prol.loopexit, %scalar.ph459, %middle.block468
  %invariant.gep.3.idx.i.i.i.i.i.i.i.i63 = mul i64 %.pr.i.i.i.i.i.i.i41, 12 ; 2 uses
  %invariant.gep.3.i.i.i.i.i.i.i.i64 = getelementptr i8, ptr %.pre.i.i, i64 %invariant.gep.3.idx.i.i.i.i.i.i.i.i63 ; 6 uses
  %min.iters.check474 = icmp ult i64 %.pr.i.i.i.i.i.i.i41, 4
  br i1 %min.iters.check474, label %scalar.ph473.preheader, label %vector.memcheck471

vector.memcheck471:                               ; preds = %._crit_edge.2.i.i.i.i.i.i.i.i62
  %i.rd = add i64 %invariant.gep.3.idx.i.i.i.i.i.i.i.i63, %.pre.i.i424
  %i.re = add i64 %.idx277, %i.nn
  %i.rf = sub i64 %i.re, %i.rd
  %diff.check472 = icmp ugt i64 %i.rf, -16
  br i1 %diff.check472, label %scalar.ph473.preheader, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck471
  %n.vec476 = and i64 %.pr.i.i.i.i.i.i.i41, 9223372036854775804 ; 3 uses
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next480, %vector.body477 ] ; 3 uses
  %i.rg = getelementptr [4 x i8], ptr %invariant.gep.3.i.i.i.i.i.i.i.i64, i64 %index478
  %i.rh = getelementptr [4 x i8], ptr %i.np, i64 %index478
  %wide.load479 = load <4 x float>, ptr %i.rh, align 4, !tbaa !39 ; 2 uses
  %i.ri = fdiv <4 x float> %wide.load479, %wide.load479
  store <4 x float> %i.ri, ptr %i.rg, align 4, !tbaa !39
  %index.next480 = add nuw i64 %index478, 4       ; 2 uses
  %i.rj = icmp eq i64 %index.next480, %n.vec476
  br i1 %i.rj, label %middle.block481, label %vector.body477, !llvm.loop !335

middle.block481:                                  ; preds = %vector.body477
  %cmp.n482 = icmp eq i64 %.pr.i.i.i.i.i.i.i41, %n.vec476
  br i1 %cmp.n482, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit, label %scalar.ph473.preheader

scalar.ph473.preheader:                           ; preds = %vector.memcheck471, %._crit_edge.2.i.i.i.i.i.i.i.i62, %middle.block481
  %.09.3.i.i.i.i.i.i.i.i66.ph = phi i64 [ 0, %vector.memcheck471 ], [ 0, %._crit_edge.2.i.i.i.i.i.i.i.i62 ], [ %n.vec476, %middle.block481 ] ; 3 uses
  %xtraiter616 = and i64 %.pr.i.i.i.i.i.i.i41, 3  ; 2 uses
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %scalar.ph473.prol.loopexit, label %scalar.ph473.prol

scalar.ph473.prol:                                ; preds = %scalar.ph473.preheader, %scalar.ph473.prol
  %.09.3.i.i.i.i.i.i.i.i66.prol = phi i64 [ %i.rm, %scalar.ph473.prol ], [ %.09.3.i.i.i.i.i.i.i.i66.ph, %scalar.ph473.preheader ] ; 3 uses
  %prol.iter618 = phi i64 [ %prol.iter618.next, %scalar.ph473.prol ], [ 0, %scalar.ph473.preheader ]
  %gep.3.i.i.i.i.i.i.i.i67.prol = getelementptr [4 x i8], ptr %invariant.gep.3.i.i.i.i.i.i.i.i64, i64 %.09.3.i.i.i.i.i.i.i.i66.prol
  %gep11.3.i.i.i.i.i.i.i.i68.prol = getelementptr [4 x i8], ptr %i.np, i64 %.09.3.i.i.i.i.i.i.i.i66.prol
  %i.rk = load float, ptr %gep11.3.i.i.i.i.i.i.i.i68.prol, align 4, !tbaa !39 ; 2 uses
  %i.rl = fdiv float %i.rk, %i.rk
  store float %i.rl, ptr %gep.3.i.i.i.i.i.i.i.i67.prol, align 4, !tbaa !39
  %i.rm = add nuw nsw i64 %.09.3.i.i.i.i.i.i.i.i66.prol, 1 ; 2 uses
  %prol.iter618.next = add i64 %prol.iter618, 1   ; 2 uses
  %prol.iter618.cmp.not = icmp eq i64 %prol.iter618.next, %xtraiter616
  br i1 %prol.iter618.cmp.not, label %scalar.ph473.prol.loopexit, label %scalar.ph473.prol, !llvm.loop !336

scalar.ph473.prol.loopexit:                       ; preds = %scalar.ph473.prol, %scalar.ph473.preheader
  %.09.3.i.i.i.i.i.i.i.i66.unr = phi i64 [ %.09.3.i.i.i.i.i.i.i.i66.ph, %scalar.ph473.preheader ], [ %i.rm, %scalar.ph473.prol ]
  %i.rn = sub nsw i64 %.09.3.i.i.i.i.i.i.i.i66.ph, %.pr.i.i.i.i.i.i.i41
  %i.ro = icmp ugt i64 %i.rn, -4
  br i1 %i.ro, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit, label %scalar.ph473

scalar.ph473:                                     ; preds = %scalar.ph473.prol.loopexit, %scalar.ph473
  %.09.3.i.i.i.i.i.i.i.i66 = phi i64 [ %i.sa, %scalar.ph473 ], [ %.09.3.i.i.i.i.i.i.i.i66.unr, %scalar.ph473.prol.loopexit ] ; 6 uses
  %gep.3.i.i.i.i.i.i.i.i67 = getelementptr [4 x i8], ptr %invariant.gep.3.i.i.i.i.i.i.i.i64, i64 %.09.3.i.i.i.i.i.i.i.i66
  %gep11.3.i.i.i.i.i.i.i.i68 = getelementptr [4 x i8], ptr %i.np, i64 %.09.3.i.i.i.i.i.i.i.i66
  %i.rp = load float, ptr %gep11.3.i.i.i.i.i.i.i.i68, align 4, !tbaa !39 ; 2 uses
  %i.rq = fdiv float %i.rp, %i.rp
  store float %i.rq, ptr %gep.3.i.i.i.i.i.i.i.i67, align 4, !tbaa !39
  %i.rr = add nuw nsw i64 %.09.3.i.i.i.i.i.i.i.i66, 1 ; 2 uses
  %gep.3.i.i.i.i.i.i.i.i67.1 = getelementptr [4 x i8], ptr %invariant.gep.3.i.i.i.i.i.i.i.i64, i64 %i.rr
  %gep11.3.i.i.i.i.i.i.i.i68.1 = getelementptr [4 x i8], ptr %i.np, i64 %i.rr
  %i.rs = load float, ptr %gep11.3.i.i.i.i.i.i.i.i68.1, align 4, !tbaa !39 ; 2 uses
  %i.rt = fdiv float %i.rs, %i.rs
  store float %i.rt, ptr %gep.3.i.i.i.i.i.i.i.i67.1, align 4, !tbaa !39
  %i.ru = add nuw nsw i64 %.09.3.i.i.i.i.i.i.i.i66, 2 ; 2 uses
  %gep.3.i.i.i.i.i.i.i.i67.2 = getelementptr [4 x i8], ptr %invariant.gep.3.i.i.i.i.i.i.i.i64, i64 %i.ru
  %gep11.3.i.i.i.i.i.i.i.i68.2 = getelementptr [4 x i8], ptr %i.np, i64 %i.ru
  %i.rv = load float, ptr %gep11.3.i.i.i.i.i.i.i.i68.2, align 4, !tbaa !39 ; 2 uses
  %i.rw = fdiv float %i.rv, %i.rv
  store float %i.rw, ptr %gep.3.i.i.i.i.i.i.i.i67.2, align 4, !tbaa !39
  %i.rx = add nuw nsw i64 %.09.3.i.i.i.i.i.i.i.i66, 3 ; 2 uses
  %gep.3.i.i.i.i.i.i.i.i67.3 = getelementptr [4 x i8], ptr %invariant.gep.3.i.i.i.i.i.i.i.i64, i64 %i.rx
  %gep11.3.i.i.i.i.i.i.i.i68.3 = getelementptr [4 x i8], ptr %i.np, i64 %i.rx
  %i.ry = load float, ptr %gep11.3.i.i.i.i.i.i.i.i68.3, align 4, !tbaa !39 ; 2 uses
  %i.rz = fdiv float %i.ry, %i.ry
  store float %i.rz, ptr %gep.3.i.i.i.i.i.i.i.i67.3, align 4, !tbaa !39
  %i.sa = add nuw nsw i64 %.09.3.i.i.i.i.i.i.i.i66, 4 ; 2 uses
  %exitcond.3.not.i.i.i.i.i.i.i.i69.3 = icmp eq i64 %i.sa, %.pr.i.i.i.i.i.i.i41
  br i1 %exitcond.3.not.i.i.i.i.i.i.i.i69.3, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit, label %scalar.ph473, !llvm.loop !337

.split.i.i.i.i.i.i.i.i42:                         ; preds = %.split.i.i.i.i.i.i.i.i42.prol.loopexit, %.split.i.i.i.i.i.i.i.i42
  %.09.i.i.i.i.i.i.i.i43 = phi i64 [ %i.su, %.split.i.i.i.i.i.i.i.i42 ], [ %.09.i.i.i.i.i.i.i.i43.unr, %.split.i.i.i.i.i.i.i.i42.prol.loopexit ] ; 7 uses
  %gep.i.i.i.i.i.i.i.i44 = getelementptr [4 x i8], ptr %.pre.i.i, i64 %.09.i.i.i.i.i.i.i.i43
  %gep11.i.i.i.i.i.i.i.i45 = getelementptr [4 x i8], ptr %i.nm, i64 %.09.i.i.i.i.i.i.i.i43
  %i.sb = getelementptr [4 x i8], ptr %i.np, i64 %.09.i.i.i.i.i.i.i.i43
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !39
  %i.sd = load float, ptr %gep11.i.i.i.i.i.i.i.i45, align 4, !tbaa !39
  %i.se = fdiv float %i.sd, %i.sc
  store float %i.se, ptr %gep.i.i.i.i.i.i.i.i44, align 4, !tbaa !39
  %i.sf = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i43, 1 ; 3 uses
  %gep.i.i.i.i.i.i.i.i44.1 = getelementptr [4 x i8], ptr %.pre.i.i, i64 %i.sf
  %gep11.i.i.i.i.i.i.i.i45.1 = getelementptr [4 x i8], ptr %i.nm, i64 %i.sf
  %i.sg = getelementptr [4 x i8], ptr %i.np, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !39
  %i.si = load float, ptr %gep11.i.i.i.i.i.i.i.i45.1, align 4, !tbaa !39
  %i.sj = fdiv float %i.si, %i.sh
  store float %i.sj, ptr %gep.i.i.i.i.i.i.i.i44.1, align 4, !tbaa !39
  %i.sk = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i43, 2 ; 3 uses
  %gep.i.i.i.i.i.i.i.i44.2 = getelementptr [4 x i8], ptr %.pre.i.i, i64 %i.sk
  %gep11.i.i.i.i.i.i.i.i45.2 = getelementptr [4 x i8], ptr %i.nm, i64 %i.sk
  %i.sl = getelementptr [4 x i8], ptr %i.np, i64 %i.sk
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !39
  %i.sn = load float, ptr %gep11.i.i.i.i.i.i.i.i45.2, align 4, !tbaa !39
  %i.so = fdiv float %i.sn, %i.sm
  store float %i.so, ptr %gep.i.i.i.i.i.i.i.i44.2, align 4, !tbaa !39
  %i.sp = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i43, 3 ; 3 uses
  %gep.i.i.i.i.i.i.i.i44.3 = getelementptr [4 x i8], ptr %.pre.i.i, i64 %i.sp
  %gep11.i.i.i.i.i.i.i.i45.3 = getelementptr [4 x i8], ptr %i.nm, i64 %i.sp
  %i.sq = getelementptr [4 x i8], ptr %i.np, i64 %i.sp
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !39
  %i.ss = load float, ptr %gep11.i.i.i.i.i.i.i.i45.3, align 4, !tbaa !39
  %i.st = fdiv float %i.ss, %i.sr
  store float %i.st, ptr %gep.i.i.i.i.i.i.i.i44.3, align 4, !tbaa !39
  %i.su = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i43, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i46.3 = icmp eq i64 %i.su, %.pr.i.i.i.i.i.i.i41
  br i1 %exitcond.not.i.i.i.i.i.i.i.i46.3, label %._crit_edge.i.i.i.i.i.i.i.i47, label %.split.i.i.i.i.i.i.i.i42, !llvm.loop !338

bb.k:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i40
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body70

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit: ; preds = %scalar.ph473.prol.loopexit, %scalar.ph473, %middle.block481
  %.pre = load ptr, ptr %9, align 8, !tbaa !57
  %.pre293 = load i64, ptr %i.nq, align 8, !tbaa !58
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit, %bb.j, %.loopexit283
  %i.sw = phi i64 [ %.pre293, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit ], [ %.pr.i.i.i.i.i.i.i41, %bb.j ], [ 0, %.loopexit283 ] ; 3 uses
  %i.sx = phi ptr [ %.pre, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit.loopexit ], [ %.pre.i.i, %bb.j ], [ null, %.loopexit283 ]
  %i.sy = load i64, ptr %i.e, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i.i72 = icmp eq i64 %i.sy, %i.sw
  br i1 %.not.i.i.i.i.i.i.i.i72, label %bb.l, label %thread-pre-split.i.i.i.i.i.i.i73

thread-pre-split.i.i.i.i.i.i.i73:                 ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.sw, i64 noundef 4)
          to label %.noexc75 unwind label %bb.v

.noexc75:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i73
  %.pr.i.i.i.i.i.i.i74 = load i64, ptr %i.e, align 8, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %.noexc75, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit
  %i.sz = phi i64 [ %.pr.i.i.i.i.i.i.i74, %.noexc75 ], [ %i.sw, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_9ReplicateINS5_INS_5BlockIS7_Lin1ELi1ELb1EEEEELi1ELi4EEEEEE4evalEv.exit ] ; 2 uses
  %i.ta = load ptr, ptr %7, align 8, !tbaa !57
  %i.tb = shl nsw i64 %i.sz, 2
  %i.tc = icmp sgt i64 %i.sz, 0
  br i1 %i.tc, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit282

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.tg, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.011.i.i.i.i.i.i.i.i
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.011.i.i.i.i.i.i.i.i
  %i.tf = load <4 x float>, ptr %i.te, align 16, !tbaa !30
  store <4 x float> %i.tf, ptr %i.td, align 16, !tbaa !30
  %i.tg = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %14 = icmp slt i64 %i.tg, %i.tb
  br i1 %14, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit282, !llvm.loop !339

.loopexit282:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %i.th = load ptr, ptr %9, align 8, !tbaa !57
  call void @free(ptr noundef %i.th) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ti = load i64, ptr %i.e, align 8, !tbaa !58, !noalias !401 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !402
  %i.tj = load ptr, ptr %7, align 8, !tbaa !57, !noalias !402
  %i.tk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i76 = icmp eq i64 %i.ti, 0
  br i1 %.not.i.i.i.i.i.i.i.i76, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i77

thread-pre-split.i.i.i.i.i.i.i77:                 ; preds = %.loopexit282
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %i.ti, i64 noundef 4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i77
  %.pr.i.i.i.i.i.i.i78 = load i64, ptr %i.tk, align 8, !tbaa !58, !alias.scope !402 ; 3 uses
  %.pre.i.i79 = load ptr, ptr %10, align 8, !tbaa !57, !alias.scope !402 ; 2 uses
  %i.tl = shl nsw i64 %.pr.i.i.i.i.i.i.i78, 2
  %i.tm = icmp sgt i64 %.pr.i.i.i.i.i.i.i78, 0
  br i1 %i.tm, label %.lr.ph.i.i.i.i.i.i.i.i80, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i80:                         ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i80
  %.011.i.i.i.i.i.i.i.i81 = phi i64 [ %i.ts, %.lr.ph.i.i.i.i.i.i.i.i80 ], [ 0, %bb.m ] ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i79, i64 %.011.i.i.i.i.i.i.i.i81
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %.011.i.i.i.i.i.i.i.i81
  %i.tp = load <4 x float>, ptr %i.to, align 16, !tbaa !30
  %i.tq = fmul <4 x float> %i.tp, splat (float 5.000000e-01)
  %i.tr = fadd <4 x float> %i.tq, splat (float 5.000000e-01)
  store <4 x float> %i.tr, ptr %i.tn, align 16, !tbaa !30
  %i.ts = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i81, 4 ; 2 uses
  %15 = icmp slt i64 %i.ts, %i.tl
  br i1 %15, label %.lr.ph.i.i.i.i.i.i.i.i80, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit.loopexit, !llvm.loop !344

bb.n:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i77
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %.body82

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i80
  %.pre294 = load ptr, ptr %10, align 8, !tbaa !57
  %.pre295 = load i64, ptr %i.tk, align 8, !tbaa !58
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit.loopexit, %bb.m, %.loopexit282
  %i.tu = phi i64 [ %.pre295, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit.loopexit ], [ %.pr.i.i.i.i.i.i.i78, %bb.m ], [ 0, %.loopexit282 ] ; 3 uses
  %i.tv = phi ptr [ %.pre294, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit.loopexit ], [ %.pre.i.i79, %bb.m ], [ null, %.loopexit282 ]
  %i.tw = load i64, ptr %i.e, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i.i84 = icmp eq i64 %i.tw, %i.tu
  br i1 %.not.i.i.i.i.i.i.i.i84, label %bb.o, label %thread-pre-split.i.i.i.i.i.i.i85

thread-pre-split.i.i.i.i.i.i.i85:                 ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.tu, i64 noundef 4)
          to label %.noexc89 unwind label %bb.w

.noexc89:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i85
  %.pr.i.i.i.i.i.i.i86 = load i64, ptr %i.e, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %.noexc89, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit
  %i.tx = phi i64 [ %.pr.i.i.i.i.i.i.i86, %.noexc89 ], [ %i.tu, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS1_INS2_17scalar_product_opIffEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_5ArrayIfLin1ELi4ELi0ELin1ELi4EEEEEEESJ_EEE4evalEv.exit ] ; 2 uses
  %i.ty = load ptr, ptr %7, align 8, !tbaa !57
  %i.tz = shl nsw i64 %i.tx, 2
  %i.ua = icmp sgt i64 %i.tx, 0
  br i1 %i.ua, label %.lr.ph.i.i.i.i.i.i.i.i87, label %.loopexit281

.lr.ph.i.i.i.i.i.i.i.i87:                         ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i87
  %.011.i.i.i.i.i.i.i.i88 = phi i64 [ %i.ue, %.lr.ph.i.i.i.i.i.i.i.i87 ], [ 0, %bb.o ] ; 3 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %.011.i.i.i.i.i.i.i.i88
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.011.i.i.i.i.i.i.i.i88
  %i.ud = load <4 x float>, ptr %i.uc, align 16, !tbaa !30
  store <4 x float> %i.ud, ptr %i.ub, align 16, !tbaa !30
  %i.ue = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i88, 4 ; 2 uses
  %16 = icmp slt i64 %i.ue, %i.tz
  br i1 %16, label %.lr.ph.i.i.i.i.i.i.i.i87, label %.loopexit281, !llvm.loop !339

.loopexit281:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i87, %bb.o
  %i.uf = load ptr, ptr %10, align 8, !tbaa !57
  call void @free(ptr noundef %i.uf) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ug = load ptr, ptr %7, align 8, !tbaa !57, !noalias !403 ; 8 uses
  %i.uh = ptrtoaddr ptr %i.ug to i64
  %i.ui = load i64, ptr %i.e, align 8, !tbaa !58, !noalias !403 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !39, !noalias !404 ; 7 uses
  %i.ul = load float, ptr %3, align 4, !tbaa !39, !noalias !405 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !406
  %.sroa.7.40.vec.insert.i.i.i.i.i.i.i = insertelement <4 x float> poison, float %i.uk, i64 0
  %i.um = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i.i.i.i.i.i.i.i91 = icmp eq i64 %i.ui, 0
  br i1 %.not.i.i.i.i.i.i.i.i91, label %.loopexit280, label %thread-pre-split.i.i.i.i.i.i.i92

thread-pre-split.i.i.i.i.i.i.i92:                 ; preds = %.loopexit281
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.ui, i64 noundef 1)
          to label %bb.p unwind label %.body99

bb.p:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i92
  %.pr.i.i.i.i.i.i.i93 = load i64, ptr %i.um, align 8, !tbaa !64, !alias.scope !406 ; 7 uses
  %.pre.i.i94 = load ptr, ptr %11, align 8, !tbaa !65, !alias.scope !406 ; 8 uses
  %.pre.i.i94485 = ptrtoaddr ptr %.pre.i.i94 to i64
  %i.un = sdiv i64 %.pr.i.i.i.i.i.i.i93, 4
  %i.uo = shl nsw i64 %i.un, 2                    ; 6 uses
  %i.up = icmp sgt i64 %.pr.i.i.i.i.i.i.i93, 3
  br i1 %i.up, label %.lr.ph.i.preheader.i.i.i.i.i.i.i96, label %._crit_edge.i.i.i.i.i.i.i.i95

.lr.ph.i.preheader.i.i.i.i.i.i.i96:               ; preds = %bb.p
  %i.uq = shufflevector <4 x float> %.sroa.7.40.vec.insert.i.i.i.i.i.i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ur = insertelement <4 x float> poison, float %i.ul, i64 0
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i97

._crit_edge.i.i.i.i.i.i.i.i95:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i97, %bb.p
  %i.ut = icmp slt i64 %i.uo, %.pr.i.i.i.i.i.i.i93
  br i1 %i.ut, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit280

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i95
  %i.uu = sub i64 %.pr.i.i.i.i.i.i.i93, %i.uo     ; 3 uses
  %min.iters.check488 = icmp ult i64 %i.uu, 8
  %i.uv = sub i64 %i.uh, %.pre.i.i94485
  %diff.check486 = icmp ugt i64 %i.uv, -32
  %or.cond577 = select i1 %min.iters.check488, i1 true, i1 %diff.check486
  br i1 %or.cond577, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585, label %vector.ph489

vector.ph489:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec490 = and i64 %i.uu, -8                   ; 3 uses
  %i.uw = add i64 %i.uo, %n.vec490
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.uk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert491 = insertelement <4 x float> poison, float %i.ul, i64 0
  %broadcast.splat492 = shufflevector <4 x float> %broadcast.splatinsert491, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph489
  %index494 = phi i64 [ 0, %vector.ph489 ], [ %index.next497, %vector.body493 ] ; 2 uses
  %i.ux = add i64 %i.uo, %index494                ; 2 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %.pre.i.i94, i64 %i.ux ; 2 uses
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.ux ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %wide.load495 = load <4 x float>, ptr %i.uz, align 4, !tbaa !39
  %wide.load496 = load <4 x float>, ptr %i.va, align 4, !tbaa !39
  %i.vb = fmul <4 x float> %broadcast.splat, %wide.load495
  %i.vc = fmul <4 x float> %broadcast.splat, %wide.load496
  %i.vd = fadd <4 x float> %broadcast.splat492, %i.vb
  %i.ve = fadd <4 x float> %broadcast.splat492, %i.vc
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  store <4 x float> %i.vd, ptr %i.uy, align 4, !tbaa !39
  store <4 x float> %i.ve, ptr %i.vf, align 4, !tbaa !39
  %index.next497 = add nuw i64 %index494, 8       ; 2 uses
  %i.vg = icmp eq i64 %index.next497, %n.vec490
  br i1 %i.vg, label %middle.block498, label %vector.body493, !llvm.loop !353

middle.block498:                                  ; preds = %vector.body493
  %cmp.n499 = icmp eq i64 %i.uu, %n.vec490
  br i1 %cmp.n499, label %.loopexit280, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585

.lr.ph.i.i.i.i.i.i.i.i.i.preheader585:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block498
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.uo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.uw, %middle.block498 ] ; 4 uses
  %i.vh = sub i64 %.pr.i.i.i.i.i.i.i93, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter619 = and i64 %i.vh, 3                 ; 2 uses
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.vn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585 ] ; 3 uses
  %prol.iter621 = phi i64 [ %prol.iter621.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585 ]
  %i.vi = getelementptr inbounds [4 x i8], ptr %.pre.i.i94, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !39
  %i.vl = fmul float %i.uk, %i.vk
  %i.vm = fadd float %i.ul, %i.vl
  store float %i.vm, ptr %i.vi, align 4, !tbaa !39
  %i.vn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter621.next = add i64 %prol.iter621, 1   ; 2 uses
  %prol.iter621.cmp.not = icmp eq i64 %prol.iter621.next, %xtraiter619
  br i1 %prol.iter621.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !354

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader585 ], [ %i.vn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.vo = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i93
  %i.vp = icmp ugt i64 %i.vo, -4
  br i1 %i.vp, label %.loopexit280, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.vq = getelementptr inbounds [4 x i8], ptr %.pre.i.i94, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !39
  %i.vt = fmul float %i.uk, %i.vs
  %i.vu = fadd float %i.ul, %i.vt
  store float %i.vu, ptr %i.vq, align 4, !tbaa !39
  %i.vv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.vw = getelementptr inbounds [4 x i8], ptr %.pre.i.i94, i64 %i.vv
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.vv
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !39
  %i.vz = fmul float %i.uk, %i.vy
  %i.wa = fadd float %i.ul, %i.vz
  store float %i.wa, ptr %i.vw, align 4, !tbaa !39
  %i.wb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr %.pre.i.i94, i64 %i.wb
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.wb
  %i.we = load float, ptr %i.wd, align 4, !tbaa !39
  %i.wf = fmul float %i.uk, %i.we
  %i.wg = fadd float %i.ul, %i.wf
  store float %i.wg, ptr %i.wc, align 4, !tbaa !39
  %i.wh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %.pre.i.i94, i64 %i.wh
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.wh
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !39
  %i.wl = fmul float %i.uk, %i.wk
  %i.wm = fadd float %i.ul, %i.wl
  store float %i.wm, ptr %i.wi, align 4, !tbaa !39
  %i.wn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.wn, %.pr.i.i.i.i.i.i.i93
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %.loopexit280, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !355

.lr.ph.i.i.i.i.i.i.i.i97:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i97, %.lr.ph.i.preheader.i.i.i.i.i.i.i96
  %.011.i.i.i.i.i.i.i.i98 = phi i64 [ %i.wt, %.lr.ph.i.i.i.i.i.i.i.i97 ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i96 ] ; 3 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i94, i64 %.011.i.i.i.i.i.i.i.i98
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.011.i.i.i.i.i.i.i.i98
  %i.wq = load <4 x float>, ptr %i.wp, align 1, !tbaa !30
  %i.wr = fmul <4 x float> %i.uq, %i.wq
  %i.ws = fadd <4 x float> %i.us, %i.wr
  store <4 x float> %i.ws, ptr %i.wo, align 16, !tbaa !30
  %i.wt = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i98, 4 ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %i.uo
  br i1 %i.wu, label %.lr.ph.i.i.i.i.i.i.i.i97, label %._crit_edge.i.i.i.i.i.i.i.i95, !llvm.loop !356

.body99:                                          ; preds = %thread-pre-split.i.i.i.i.i.i.i92
  %i.wv = landingpad { ptr, i32 }
          cleanup
  %i.ww = load ptr, ptr %11, align 8, !tbaa !65, !alias.scope !406
  call void @free(ptr noundef %i.ww) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.y

.loopexit280:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block498, %.loopexit281, %._crit_edge.i.i.i.i.i.i.i.i95
  %i.wx = load ptr, ptr %7, align 8, !tbaa !57, !noalias !407 ; 14 uses
  %i.wy = load i64, ptr %i.e, align 8, !tbaa !58, !noalias !407 ; 8 uses
  %i.wz = load ptr, ptr %11, align 8, !tbaa !65   ; 14 uses
  %i.xa = ptrtoaddr ptr %i.wz to i64              ; 2 uses
  %i.xb = ptrtoint ptr %i.wx to i64               ; 4 uses
  %i.xc = and i64 %i.xb, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i101 = icmp eq i64 %i.xc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i101, label %bb.q, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i102

bb.q:                                             ; preds = %.loopexit280
  %i.xd = lshr exact i64 %i.xb, 2
  %i.xe = sub nsw i64 0, %i.xd
  %i.xf = and i64 %i.xe, 3
  %i.xg = call i64 @llvm.smin.i64(i64 %i.xf, i64 %i.wy)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i102

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i102: ; preds = %bb.q, %.loopexit280
  %.0.i.i.i.i.i.i.i.i.i.i.i103 = phi i64 [ %i.xg, %bb.q ], [ %i.wy, %.loopexit280 ] ; 11 uses
  %i.xh = sub nsw i64 %i.wy, %.0.i.i.i.i.i.i.i.i.i.i.i103 ; 2 uses
  %i.xi = sdiv i64 %i.xh, 4
  %i.xj = shl nsw i64 %i.xi, 2                    ; 2 uses
  %i.xk = add nsw i64 %i.xj, %.0.i.i.i.i.i.i.i.i.i.i.i103 ; 5 uses
  %i.xl = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i103, 0
  br i1 %i.xl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i110.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS5_INS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i110.preheader:        ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i102
  %min.iters.check504 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i103, 8
  %i.xm = sub i64 %i.xa, %i.xb
  %diff.check502 = icmp ugt i64 %i.xm, -32
  %or.cond578 = select i1 %min.iters.check504, i1 true, i1 %diff.check502
  br i1 %or.cond578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i110.preheader584, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i110.preheader
  %n.vec506 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i103, 9223372036854775800 ; 3 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
end_hunk_0
