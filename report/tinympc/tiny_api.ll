Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !42
  %i.gh = fmul double %i.fb, %i.gg
  %i.gi = load double, ptr %i.ge, align 8, !tbaa !42
  %i.gj = fsub double %i.gi, %i.gh
  store double %i.gj, ptr %i.ge, align 8, !tbaa !42
  %i.gk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gk
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !42
  %i.go = fmul double %i.fb, %i.gn
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !42
  %i.gq = fsub double %i.gp, %i.go
  store double %i.gq, ptr %i.gl, align 8, !tbaa !42
  %i.gr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.gr, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1022

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block203, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = icmp sgt i64 %i.fh, 1
  br i1 %i.gs, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = icmp slt i64 %i.fk, %i.eb
  br i1 %i.gu, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fj
  %i.gw = sub i64 %i.eb, %i.gv                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gw, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gx = shl i64 %i.fi, 4
  %i.gy = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.gz = add i64 %i.gx, %i.gy                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ey, i64 %i.gz
  %scevgep176 = getelementptr i8, ptr %i.ey, i64 %i.q
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.gz
  %bound0 = icmp ult ptr %scevgep, %scevgep179
  %bound1 = icmp ult ptr %scevgep178, %scevgep176
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gw, -4                      ; 3 uses
  %i.ha = add i64 %i.fk, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hb = add i64 %i.fk, %index                   ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.hb ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load = load <2 x double>, ptr %i.hd, align 8, !tbaa !42, !alias.scope !1044
  %wide.load180 = load <2 x double>, ptr %i.he, align 8, !tbaa !42, !alias.scope !1044
  %i.hf = fmul <2 x double> %broadcast.splat, %wide.load
  %i.hg = fmul <2 x double> %broadcast.splat, %wide.load180
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %wide.load181 = load <2 x double>, ptr %i.hc, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %wide.load182 = load <2 x double>, ptr %i.hh, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %i.hi = fsub <2 x double> %wide.load181, %i.hf
  %i.hj = fsub <2 x double> %wide.load182, %i.hg
  store <2 x double> %i.hi, ptr %i.hc, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !1026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gw, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.fk, %vector.memcheck ], [ %i.fk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ha, %middle.block ] ; 6 uses
  %i.hl = sub i64 %i.s, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg264 = add i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter261 = and i64 %i.hl, 1
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !42
  %i.hp = fmul double %i.fb, %i.ho
  %i.hq = load double, ptr %i.hm, align 8, !tbaa !42
  %i.hr = fsub double %i.hq, %i.hp
  store double %i.hr, ptr %i.hm, align 8, !tbaa !42
  %i.hs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader254 ], [ %i.hs, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ht = icmp eq i64 %i.eb, %.neg264
  br i1 %i.ht, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ih, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !42
  %i.hx = fmul double %i.fb, %i.hw
  %i.hy = load double, ptr %i.hu, align 8, !tbaa !42
  %i.hz = fsub double %i.hy, %i.hx
  store double %i.hz, ptr %i.hu, align 8, !tbaa !42
  %i.ia = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ia
  %i.id = load double, ptr %i.ic, align 8, !tbaa !42
  %i.ie = fmul double %i.fb, %i.id
  %i.if = load double, ptr %i.ib, align 8, !tbaa !42
  %i.ig = fsub double %i.if, %i.ie
  store double %i.ig, ptr %i.ib, align 8, !tbaa !42
  %i.ih = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ih, %i.eb
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1027

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.io, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %i.ij, align 1, !tbaa !24
  %i.il = fmul <2 x double> %i.gt, %i.ik
  %i.im = load <2 x double>, ptr %i.ii, align 16, !tbaa !24
  %i.in = fsub <2 x double> %i.im, %i.il
  store <2 x double> %i.in, ptr %i.ii, align 16, !tbaa !24
  %i.io = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ip = icmp slt i64 %i.io, %i.fk
  br i1 %i.ip, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1028

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iq = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.iq, %i.ee
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1029

_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %bb.h, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.ir = add nuw nsw i64 %.042167, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ir, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1030
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal12visitor_implINS0_20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEENS0_17visitor_evaluatorISG_EELin1ELb1ELb0ELb0EE3runERKSJ_RSH_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1056, !nonnull !88, !align !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231  ; 4 uses
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.j, ptr %i.k, align 8, !tbaa !229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.d

_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit: ; preds = %bb.b
  %i.l = load <2 x i64>, ptr %i.h, align 1, !tbaa !24
  %i.m = and <2 x i64> %i.l, splat (i64 9223372036854775807)
  %i.n = bitcast <2 x i64> %i.m to <2 x double>   ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.n, i64 0 ; 3 uses
  %i.o = fcmp uno double %.sroa.0.0.vec.extract.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.n, i64 1 ; 3 uses
  %i.p = fcmp ord double %.sroa.0.8.vec.extract.i.i.i, 0.000000e+00
  %i.q = fcmp uge double %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.8.vec.extract.i.i.i
  %.not3.i.i.i.i = and i1 %i.p, %i.q
  %i.r = select i1 %i.o, i1 true, i1 %.not3.i.i.i.i
  %i.s = select i1 %i.r, double %.sroa.0.0.vec.extract.i.i.i, double %.sroa.0.8.vec.extract.i.i.i ; 4 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  %i.u = fcmp uno <2 x double> %i.n, zeroinitializer
  %i.v = insertelement <2 x double> poison, double %i.s, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fcmp oeq <2 x double> %i.w, %i.n
  %.in = select i1 %i.t, <2 x i1> %i.u, <2 x i1> %i.x
  %i.y = select <2 x i1> %.in, <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = tail call double @llvm.maxnum.f64(double %i.z, double %i.aa)
  %i.ac = fptosi double %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.s, ptr %i.ad, align 8, !tbaa !229
  %i.ae = sub nsw i64 2, %i.ac
  store i64 %i.ae, ptr %1, align 8, !tbaa !233
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !1057
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit, %bb.c
  %.promoted = phi double [ %i.j, %bb.c ], [ %i.s, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit ] ; 2 uses
  %.073 = phi i64 [ 1, %bb.c ], [ 2, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit ] ; 3 uses
  %i.ag = add nuw nsw i64 %.073, 1
  %i.ah = icmp slt i64 %i.ag, %i.d
  br i1 %i.ah, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

.preheader:                                       ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit, %bb.d
  %.promoted167 = phi double [ %.promoted, %bb.d ], [ %i.bm, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ]
  %.174.lcssa = phi i64 [ %.073, %bb.d ], [ %i.ao, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 2 uses
  %i.ak = icmp slt i64 %.174.lcssa, %i.d
  br i1 %i.ak, label %.lr.ph166, label %.critedge81

.lr.ph166:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit
  %i.an = phi double [ %.promoted, %.lr.ph ], [ %i.bm, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 5 uses
  %.174164 = phi i64 [ %.073, %.lr.ph ], [ %i.ao, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 3 uses
  %i.ao = add nuw nsw i64 %.174164, 2             ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.174164
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !24
  %i.ar = and <2 x i64> %i.aq, splat (i64 9223372036854775807)
  %i.as = bitcast <2 x i64> %i.ar to <2 x double> ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i82 = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.at = fcmp uno double %.sroa.0.0.vec.extract.i.i.i82, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i83 = extractelement <2 x double> %i.as, i64 1 ; 3 uses
  %i.au = fcmp ord double %.sroa.0.8.vec.extract.i.i.i83, 0.000000e+00
  %i.av = fcmp uge double %.sroa.0.0.vec.extract.i.i.i82, %.sroa.0.8.vec.extract.i.i.i83
  %.not3.i.i.i.i84 = and i1 %i.au, %i.av
  %i.aw = select i1 %i.at, i1 true, i1 %.not3.i.i.i.i84
  %i.ax = select i1 %i.aw, double %.sroa.0.0.vec.extract.i.i.i82, double %.sroa.0.8.vec.extract.i.i.i83 ; 6 uses
  %i.ay = fcmp uno double %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.f, label %.thread20.i

bb.f:                                             ; preds = %bb.e
  %i.az = fcmp ord double %i.an, 0.000000e+00
  %i.ba = fcmp ogt double %i.ax, %i.an
  %or.cond.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i, label %.thread.i, label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit

.thread20.i:                                      ; preds = %bb.e
  %i.bb = fcmp ogt double %i.ax, %i.an
  br i1 %i.bb, label %bb.g, label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit

.thread.i:                                        ; preds = %bb.f
  %i.bc = fcmp uno <2 x double> %i.as, zeroinitializer
  br label %bb.h

bb.g:                                             ; preds = %.thread20.i
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fcmp oeq <2 x double> %i.be, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %.in178 = phi <2 x i1> [ %i.bc, %.thread.i ], [ %i.bf, %bb.g ]
  %i.bg = select <2 x i1> %.in178, <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = extractelement <2 x double> %i.bg, i64 1
  %i.bj = tail call double @llvm.maxnum.f64(double %i.bh, double %i.bi)
  %i.bk = fptosi double %i.bj to i64
  store double %i.ax, ptr %i.ai, align 8, !tbaa !229
  %i.bl = sub nsw i64 %i.ao, %i.bk
  store i64 %i.bl, ptr %1, align 8, !tbaa !233
  store i64 0, ptr %i.aj, align 8, !tbaa !1057
  br label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit

_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit: ; preds = %bb.f, %.thread20.i, %bb.h
  %i.bm = phi double [ %i.an, %bb.f ], [ %i.an, %.thread20.i ], [ %i.ax, %bb.h ] ; 2 uses
  %i.bn = add nuw nsw i64 %.174164, 3
  %i.bo = icmp slt i64 %i.bn, %i.d
  br i1 %i.bo, label %bb.e, label %.preheader, !llvm.loop !1046

bb.i:                                             ; preds = %.lr.ph166, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit
  %i.bp = phi double [ %.promoted167, %.lr.ph166 ], [ %i.bw, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit ] ; 3 uses
  %.2165 = phi i64 [ %.174.lcssa, %.lr.ph166 ], [ %i.bx, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %i.h, i64 %.2165
  %i.br = load double, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br) ; 3 uses
  %i.bt = fcmp uno double %i.br, 0.000000e+00
  %i.bu = fcmp ord double %i.bp, 0.000000e+00
  %or.cond.not12.i = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bv = fcmp ogt double %i.bs, %i.bp
  %or.cond10.i = select i1 %or.cond.not12.i, i1 true, i1 %i.bv
  br i1 %or.cond10.i, label %bb.j, label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit

bb.j:                                             ; preds = %bb.i
  store double %i.bs, ptr %i.al, align 8, !tbaa !229
  store i64 %.2165, ptr %1, align 8, !tbaa !233
  store i64 0, ptr %i.am, align 8, !tbaa !1057
  br label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit

_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit: ; preds = %bb.j, %bb.i
  %i.bw = phi double [ %i.bs, %bb.j ], [ %i.bp, %bb.i ]
  %i.bx = add nuw nsw i64 %.2165, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.d
  br i1 %exitcond.not, label %.critedge81, label %bb.i, !llvm.loop !1047

.critedge81:                                      ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEclERKdll.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space.947", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91
  %i.h = mul nsw i64 %i.g, %i.c
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !91   ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.e
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.k, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.e, ptr %i.o, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.p, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !23
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.q = load i64, ptr %i.n, align 8, !tbaa !139
  %i.r = load i64, ptr %i.p, align 8, !tbaa !138  ; 2 uses
  %i.s = mul nsw i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.s, ptr %i.t, align 8, !tbaa !235
  %i.u = load i64, ptr %i.o, align 8, !tbaa !142
  %i.v = mul nsw i64 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.v, ptr %i.w, align 8, !tbaa !236
  %i.x = load ptr, ptr %0, align 8, !tbaa !217
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !91
  %i.aa = load ptr, ptr %1, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !91
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.e, ptr noundef nonnull %i.x, i64 noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef 1, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %2, align 8, !tbaa !144
  call void @free(ptr noundef %i.ad) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !145
  call void @free(ptr noundef %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !144
  call void @free(ptr noundef %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !145
  call void @free(ptr noundef %i.aj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs.727", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs.948", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.577", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.577", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.577", align 8 ; 11 uses
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !188

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #26
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

common.resume:                                    ; preds = %bb.ao, %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit176, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %.pn135.pn.pn.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit176 ], [ %.pn135.pn.pn.pn.pn.pn.pn, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #26
  br label %common.resume

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !138  ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139
  %.sroa.speculated213 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %0) ; 5 uses
  %i.j = mul nsw i64 %.sroa.speculated213, %i.g   ; 4 uses
  %i.k = mul nsw i64 %i.g, %1                     ; 4 uses
  %i.l = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143: ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.n = load ptr, ptr %7, align 8, !tbaa !144    ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143
  %i.o = shl nuw i64 %i.j, 3                      ; 2 uses
  %i.p = icmp samesign ult i64 %i.j, 16385
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw nsw i64 %i.o, 15
  %i.r = alloca i8, i64 %i.q, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.i:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.o) #30 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143, %bb.h
  %i.v = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143 ], [ %i.r, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
end_hunk_0
