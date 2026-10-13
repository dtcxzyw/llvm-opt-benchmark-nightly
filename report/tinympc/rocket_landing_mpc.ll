Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rocket_landing_mpc?download=true
inline.NumInlined: 2427
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@main:bb.a

bb.bt:                                            ; preds = %bb.bs, %bb.bj
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn, %bb.bs ], [ %i.ix, %bb.bj ]
  %i.ji = load ptr, ptr %30, align 8, !tbaa !126
  call void @free(ptr noundef %i.ji) #20
  br label %.body161

bb.bu:                                            ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.jj = trunc nuw nsw i64 %indvars.iv to i32
  %i.jk = uitofp nneg i32 %i.jj to double         ; 5 uses
  %i.jl = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !135 ; 2 uses
  %i.jm = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !135 ; 7 uses
  %i.jn = mul nsw i64 %i.jm, %indvars.iv
  %.not.i.i.i.i.i239 = icmp eq ptr %i.jl, null
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.jn ; 6 uses
  %i.jp = select i1 %.not.i.i.i.i.i239, ptr null, ptr %i.jo
  %.sroa.15.56.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jr = and i64 %i.jq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.js = lshr exact i64 %i.jq, 3
  %i.jt = and i64 %i.js, 1
  %i.ju = call i64 @llvm.smin.i64(i64 %i.jt, i64 %i.jm)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ju, %bb.bv ], [ %i.jm, %bb.bu ] ; 9 uses
  %i.jv = sub nsw i64 %i.jm, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jw = sdiv i64 %i.jv, 2
  %i.jx = shl nsw i64 %i.jw, 1                    ; 2 uses
  %i.jy = add nsw i64 %i.jx, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.jz = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check719 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check719, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823, label %vector.ph720

vector.ph720:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec721 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert722 = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat723 = shufflevector <2 x double> %broadcast.splatinsert722, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body724

vector.body724:                                   ; preds = %vector.body724, %vector.ph720
  %index725 = phi i64 [ 0, %vector.ph720 ], [ %index.next728, %vector.body724 ] ; 4 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %index725
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %index725
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %index725
  %wide.load726 = load <2 x double>, ptr %i.kc, align 16, !tbaa !35
  %wide.load727 = load <2 x double>, ptr %i.kb, align 16, !tbaa !35 ; 2 uses
  %i.kd = fsub <2 x double> %wide.load726, %wide.load727
  %i.ke = fmul <2 x double> %i.kd, %broadcast.splat723
  %i.kf = fdiv <2 x double> %i.ke, splat (double 9.900000e+01)
  %i.kg = fadd <2 x double> %wide.load727, %i.kf
  store <2 x double> %i.kg, ptr %i.ka, align 8, !tbaa !35
  %index.next728 = add nuw i64 %index725, 2       ; 2 uses
  %i.kh = icmp eq i64 %index.next728, %n.vec721
  br i1 %i.kh, label %middle.block729, label %vector.body724, !llvm.loop !78

middle.block729:                                  ; preds = %vector.body724
  %cmp.n730 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec721
  br i1 %cmp.n730, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block729
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec721, %middle.block729 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823 ] ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !35
  %i.km = load double, ptr %i.kj, align 8, !tbaa !35 ; 2 uses
  %i.kn = fsub double %i.kl, %i.km
  %i.ko = fmul double %i.kn, %i.jk
  %i.kp = fdiv double %i.ko, 9.900000e+01
  %i.kq = fadd double %i.km, %i.kp
  store double %i.kq, ptr %i.ki, align 8, !tbaa !35
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kr, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !79

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block729, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ks = icmp sgt i64 %i.jv, 1
  br i1 %i.ks, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.kt = shufflevector <2 x double> %.sroa.15.56.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ku = icmp slt i64 %i.jy, %i.jm
  br i1 %i.ku, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.kv = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.jx
  %i.kw = sub i64 %i.jm, %i.kv                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.kw, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.kw, -2                      ; 3 uses
  %i.kx = add i64 %i.jy, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ky = add i64 %i.jy, %index                   ; 3 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ky
  %i.la = getelementptr inbounds [8 x i8], ptr %36, i64 %i.ky
  %i.lb = getelementptr inbounds [8 x i8], ptr %38, i64 %i.ky
  %wide.load = load <2 x double>, ptr %i.lb, align 8, !tbaa !35
  %wide.load717 = load <2 x double>, ptr %i.la, align 8, !tbaa !35 ; 2 uses
  %i.lc = fsub <2 x double> %wide.load, %wide.load717
  %i.ld = fmul <2 x double> %i.lc, %broadcast.splat
  %i.le = fdiv <2 x double> %i.ld, splat (double 9.900000e+01)
  %i.lf = fadd <2 x double> %wide.load717, %i.le
  store <2 x double> %i.lf, ptr %i.kz, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lg = icmp eq i64 %index.next, %n.vec
  br i1 %i.lg, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kw, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822:      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.jy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.kx, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822 ] ; 4 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds [8 x i8], ptr %36, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.lj = getelementptr inbounds [8 x i8], ptr %38, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !35
  %i.ll = load double, ptr %i.li, align 8, !tbaa !35 ; 2 uses
  %i.lm = fsub double %i.lk, %i.ll
  %i.ln = fmul double %i.lm, %i.jk
  %i.lo = fdiv double %i.ln, 9.900000e+01
  %i.lp = fadd double %i.ll, %i.lo
  store double %i.lp, ptr %i.lh, align 8, !tbaa !35
  %i.lq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.lq, %i.jm
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !81

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ma, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.ls = getelementptr inbounds [8 x i8], ptr %36, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.lt = load <2 x double>, ptr %i.ls, align 8, !tbaa !17 ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %38, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.lv = load <2 x double>, ptr %i.lu, align 8, !tbaa !17
  %i.lw = fsub <2 x double> %i.lv, %i.lt
  %i.lx = fmul <2 x double> %i.kt, %i.lw
  %i.ly = fdiv <2 x double> %i.lx, splat (double 9.900000e+01)
  %i.lz = fadd <2 x double> %i.lt, %i.ly
  store <2 x double> %i.lz, ptr %i.lr, align 16, !tbaa !17
  %i.ma = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mb = icmp slt i64 %i.ma, %i.jy
  br i1 %i.mb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !82

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.bw, label %bb.bu, !llvm.loop !83

bb.bw:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  %i.mc = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !136
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !137 ; 2 uses
  %i.mg = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !137 ; 3 uses
  %.not.i.i.i.i.i240 = icmp eq ptr %i.mf, null
  %.idx = mul nsw i64 %i.mg, 72
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 %.idx
  %i.mi = select i1 %.not.i.i.i.i.i240, ptr null, ptr %i.mh
  store ptr %i.me, ptr %39, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.mi, ptr %i.mj, align 8
  %.sroa.5441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %i.mg, ptr %.sroa.5441.0..sroa_idx, align 8
  %.sroa.6443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 40
  store ptr %i.ib, ptr %.sroa.6443.0..sroa_idx, align 8
  %.sroa.7444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i64 0, ptr %.sroa.7444.0..sroa_idx, align 8
  %.sroa.8445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 56
  store i64 9, ptr %.sroa.8445.0..sroa_idx, align 8
  %.sroa.9446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 64
  store i64 %i.mg, ptr %.sroa.9446.0..sroa_idx, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !25, !noalias !138 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !26, !noalias !138 ; 9 uses
  %.idx642 = mul i64 %i.mn, 72                    ; 3 uses
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 %.idx642 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSD_RKSF_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i unwind label %.body254

.body254:                                         ; preds = %bb.bw
  %i.mp = landingpad { ptr, i32 }
          cleanup
  %i.mq = load ptr, ptr %4, align 8, !tbaa !32
  call void @free(ptr noundef %i.mq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.cr

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i: ; preds = %bb.bw
  %.not.i.i.i.i.i241 = icmp eq ptr %i.ml, null
  %i.mr = select i1 %.not.i.i.i.i.i241, ptr null, ptr %i.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ms = load ptr, ptr %4, align 8, !tbaa !32    ; 15 uses
  %i.mt = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mu = and i64 %i.mt, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i242 = icmp eq i64 %i.mu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i242, label %bb.bx, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243

bb.bx:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i
  %i.mv = lshr exact i64 %i.mt, 3
  %i.mw = and i64 %i.mv, 1
  %i.mx = call i64 @llvm.smin.i64(i64 %i.mw, i64 %i.mn)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243: ; preds = %bb.bx, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i244 = phi i64 [ %i.mx, %bb.bx ], [ %i.mn, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i ] ; 11 uses
  %i.my = sub nsw i64 %i.mn, %.0.i.i.i.i.i.i.i.i.i.i.i244 ; 2 uses
  %i.mz = sdiv i64 %i.my, 2
  %i.na = shl nsw i64 %i.mz, 1                    ; 2 uses
  %i.nb = add nsw i64 %i.na, %.0.i.i.i.i.i.i.i.i.i.i.i244 ; 6 uses
  %i.nc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 0
  br i1 %i.nc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader:        ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243
  %min.iters.check733 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 10
  br i1 %min.iters.check733, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader
  %41 = ptrtoaddr ptr %i.ml to i64
  %42 = ptrtoaddr ptr %i.ms to i64
  %i.nd = add i64 %.idx642, %41
  %i.ne = sub i64 %42, %i.nd
  %diff.check = icmp ugt i64 %i.ne, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821, label %vector.ph734

vector.ph734:                                     ; preds = %vector.memcheck
  %n.vec735 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 9223372036854775804 ; 3 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph734
  %index737 = phi i64 [ 0, %vector.ph734 ], [ %index.next740, %vector.body736 ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %index737 ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %index737 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %wide.load738 = load <2 x double>, ptr %i.ng, align 8, !tbaa !35
  %wide.load739 = load <2 x double>, ptr %i.nh, align 8, !tbaa !35
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store <2 x double> %wide.load738, ptr %i.nf, align 8, !tbaa !35
  store <2 x double> %wide.load739, ptr %i.ni, align 8, !tbaa !35
  %index.next740 = add nuw i64 %index737, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next740, %n.vec735
  br i1 %i.nj, label %middle.block741, label %vector.body736, !llvm.loop !88

middle.block741:                                  ; preds = %vector.body736
  %cmp.n742 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, %n.vec735
  br i1 %cmp.n742, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader, %middle.block741
  %.05.i.i.i.i.i.i.i.i.i.i.i252.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader ], [ %n.vec735, %middle.block741 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i252.prol = phi i64 [ %i.nn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821 ]
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.prol
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.prol
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !35
  store double %i.nm, ptr %i.nk, align 8, !tbaa !35
  %i.nn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol, !llvm.loop !89

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821
  %.05.i.i.i.i.i.i.i.i.i.i.i252.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821 ], [ %i.nn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol ]
  %i.no = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.ph, %.0.i.i.i.i.i.i.i.i.i.i.i244
  %i.np = icmp ugt i64 %i.no, -4
  br i1 %i.np, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251
  %.05.i.i.i.i.i.i.i.i.i.i.i252 = phi i64 [ %i.of, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i252.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit ] ; 6 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !35
  store double %i.ns, ptr %i.nq, align 8, !tbaa !35
  %i.nt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 1 ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.nt
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.nt
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !35
  store double %i.nw, ptr %i.nu, align 8, !tbaa !35
  %i.nx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.nx
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.nx
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !35
  store double %i.oa, ptr %i.ny, align 8, !tbaa !35
  %i.ob = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 3 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.ob
  %i.oe = load double, ptr %i.od, align 8, !tbaa !35
  store double %i.oe, ptr %i.oc, align 8, !tbaa !35
  %i.of = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i253.3 = icmp eq i64 %i.of, %.0.i.i.i.i.i.i.i.i.i.i.i244
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i253.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251, !llvm.loop !90

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251, %middle.block741, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243
  %i.og = icmp sgt i64 %i.my, 1
  br i1 %i.og, label %.lr.ph.i.i.i.i.i.i.i.i.i.i249, label %._crit_edge.i.i.i.i.i.i.i.i.i.i245

._crit_edge.i.i.i.i.i.i.i.i.i.i245:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i249, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.oh = icmp slt i64 %i.nb, %i.mn
  br i1 %i.oh, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader, label %.loopexit643

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i245
  %i.oi = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, %i.na
  %i.oj = sub i64 %i.mn, %i.oi                    ; 3 uses
  %min.iters.check747 = icmp ult i64 %i.oj, 10
  br i1 %min.iters.check747, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820, label %vector.memcheck744

vector.memcheck744:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader
  %43 = ptrtoaddr ptr %i.ml to i64
  %44 = ptrtoaddr ptr %i.ms to i64
  %i.ok = add i64 %.idx642, %43
  %i.ol = sub i64 %44, %i.ok
  %diff.check745 = icmp ugt i64 %i.ol, -32
  br i1 %diff.check745, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820, label %vector.ph748

vector.ph748:                                     ; preds = %vector.memcheck744
  %n.vec749 = and i64 %i.oj, -4                   ; 3 uses
  %i.om = add i64 %i.nb, %n.vec749
  br label %vector.body750

vector.body750:                                   ; preds = %vector.body750, %vector.ph748
  %index751 = phi i64 [ 0, %vector.ph748 ], [ %index.next754, %vector.body750 ] ; 2 uses
  %i.on = add i64 %i.nb, %index751                ; 2 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.on ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %wide.load752 = load <2 x double>, ptr %i.op, align 8, !tbaa !35
  %wide.load753 = load <2 x double>, ptr %i.oq, align 8, !tbaa !35
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store <2 x double> %wide.load752, ptr %i.oo, align 8, !tbaa !35
  store <2 x double> %wide.load753, ptr %i.or, align 8, !tbaa !35
  %index.next754 = add nuw i64 %index751, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next754, %n.vec749
  br i1 %i.os, label %middle.block755, label %vector.body750, !llvm.loop !91

middle.block755:                                  ; preds = %vector.body750
  %cmp.n756 = icmp eq i64 %i.oj, %n.vec749
  br i1 %cmp.n756, label %.loopexit643, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820:   ; preds = %vector.memcheck744, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader, %middle.block755
  %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph = phi i64 [ %i.nb, %vector.memcheck744 ], [ %i.nb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader ], [ %i.om, %middle.block755 ] ; 4 uses
  %i.ot = sub i64 %i.mn, %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph
  %xtraiter824 = and i64 %i.ot, 3                 ; 2 uses
  %lcmp.mod825.not = icmp eq i64 %xtraiter824, 0
  br i1 %lcmp.mod825.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol = phi i64 [ %i.ox, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820 ] ; 3 uses
  %prol.iter826 = phi i64 [ %prol.iter826.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820 ]
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !35
  store double %i.ow, ptr %i.ou, align 8, !tbaa !35
  %i.ox = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol, 1 ; 2 uses
  %prol.iter826.next = add i64 %prol.iter826, 1   ; 2 uses
  %prol.iter826.cmp.not = icmp eq i64 %prol.iter826.next, %xtraiter824
  br i1 %prol.iter826.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol, !llvm.loop !92

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820
  %.05.i18.i.i.i.i.i.i.i.i.i.i247.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820 ], [ %i.ox, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol ]
  %i.oy = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph, %i.mn
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.loopexit643, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246
  %.05.i18.i.i.i.i.i.i.i.i.i.i247 = phi i64 [ %i.pp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i247.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !35
  store double %i.pc, ptr %i.pa, align 8, !tbaa !35
  %i.pd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 1 ; 2 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.pd
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.pd
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !35
  store double %i.pg, ptr %i.pe, align 8, !tbaa !35
  %i.ph = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 2 ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.ph
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.ph
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !35
  store double %i.pk, ptr %i.pi, align 8, !tbaa !35
  %i.pl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 3 ; 2 uses
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.pl
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.pl
  %i.po = load double, ptr %i.pn, align 8, !tbaa !35
  store double %i.po, ptr %i.pm, align 8, !tbaa !35
  %i.pp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i248.3 = icmp eq i64 %i.pp, %i.mn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i248.3, label %.loopexit643, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246, !llvm.loop !93

.lr.ph.i.i.i.i.i.i.i.i.i.i249:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i249
  %.021.i.i.i.i.i.i.i.i.i.i250 = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i.i.i249 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i244, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %.021.i.i.i.i.i.i.i.i.i.i250
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.021.i.i.i.i.i.i.i.i.i.i250
  %i.ps = load <2 x double>, ptr %i.pr, align 1, !tbaa !17
  store <2 x double> %i.ps, ptr %i.pq, align 16, !tbaa !17
  %i.pt = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i250, 2 ; 2 uses
  %i.pu = icmp slt i64 %i.pt, %i.nb
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i249, label %._crit_edge.i.i.i.i.i.i.i.i.i.i245, !llvm.loop !94

.loopexit643:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246, %middle.block755, %._crit_edge.i.i.i.i.i.i.i.i.i.i245
  %i.pv = load ptr, ptr %4, align 8, !tbaa !32
  call void @free(ptr noundef %i.pv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.pw = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %i.hb, i64 1160 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.hb, i64 40 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.qb = getelementptr inbounds nuw i8, ptr %i.hb, i64 1184
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1208
  %i.qd = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %.sroa.7363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 32
  %.sroa.8364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 40
  %.sroa.10366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 56
  %.sroa.11367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 80
  %i.qe = getelementptr inbounds nuw i8, ptr %40, i64 96 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1168
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.qm = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.bz

bb.by:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @free(ptr noundef %i.bq) #20
  call void @free(ptr noundef %i.az) #20
  %i.qn = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.qn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.qo = load ptr, ptr %15, align 8, !tbaa !25
  call void @free(ptr noundef %i.qo) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.qp = load ptr, ptr %12, align 8, !tbaa !32
  call void @free(ptr noundef %i.qp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.qq = load ptr, ptr %11, align 8, !tbaa !32
  call void @free(ptr noundef %i.qq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @free(ptr noundef %i.q) #20
  %i.qr = load ptr, ptr %9, align 8, !tbaa !25
  call void @free(ptr noundef %i.qr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.qs = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.qs) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0

bb.bz:                                            ; preds = %.loopexit643, %bb.cq
  %indvars.iv660 = phi i64 [ 0, %.loopexit643 ], [ %indvars.iv.next661, %bb.cq ] ; 2 uses
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 16)
          to label %bb.ca unwind label %bb.ch     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.qu = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !139
  %i.qv = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !139
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.qv ; 3 uses
  %i.qx = load <2 x double>, ptr %37, align 16, !tbaa !17
  %i.qy = load <2 x double>, ptr %i.qw, align 1, !tbaa !17
  %i.qz = fsub <2 x double> %i.qx, %i.qy          ; 2 uses
  %i.ra = fmul <2 x double> %i.qz, %i.qz
  %i.rb = load <2 x double>, ptr %i.he, align 16, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rd = load <2 x double>, ptr %i.rc, align 1, !tbaa !17
  %i.re = fsub <2 x double> %i.rb, %i.rd          ; 2 uses
  %i.rf = fmul <2 x double> %i.re, %i.re
  %i.rg = load <2 x double>, ptr %i.hf, align 16, !tbaa !17
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.ri = load <2 x double>, ptr %i.rh, align 1, !tbaa !17
  %i.rj = fsub <2 x double> %i.rg, %i.ri          ; 2 uses
  %i.rk = fmul <2 x double> %i.rj, %i.rj
  %i.rl = fadd <2 x double> %i.rf, %i.rk
  %i.rm = fadd <2 x double> %i.ra, %i.rl          ; 2 uses
  %shift = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.rm, %shift
  %i.rn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.rn)
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.scalar.i)
          to label %_ZNSolsEd.exit unwind label %.loopexit ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %bb.ca
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !23
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %i.ro, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 240
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i, label %bb.cb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.cb:                                            ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc343 unwind label %.loopexit.split-lp

.noexc343:                                        ; preds = %bb.cb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  %i.rw = load i8, ptr %i.rv, align 8, !tbaa !160
end_hunk_0
