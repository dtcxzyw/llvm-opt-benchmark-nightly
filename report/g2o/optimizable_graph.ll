Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RT0_:bb.a
  %i.ny = load double, ptr %i.nq, align 8, !tbaa !210
  %i.nz = fadd double %i.ny, %i.nx
  store double %i.nz, ptr %i.nq, align 8, !tbaa !210
  %i.oa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.oa, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !488

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block279, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %i.ob = icmp sgt i64 %i.ly, 1
  br i1 %i.ob, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.oc = shufflevector <2 x double> %.sroa.3.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = shufflevector <2 x double> %.sroa.1223.64.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.oe = icmp slt i64 %i.mb, %i.lm
  br i1 %i.oe, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.of = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.ma
  %i.og = sub i64 %i.lm, %i.of                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.og, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader
  %i.oh = shl i64 %i.lz, 4
  %i.oi = shl i64 %.0.i.i.i.i.i.i.i.i.i, 3
  %i.oj = add i64 %i.oh, %i.oi                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ls, i64 %i.oj ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.ln, i64 %i.oj
  %scevgep239 = getelementptr i8, ptr %i.lj, i64 %i.oj
  %bound0 = icmp ult ptr %scevgep, %scevgep238
  %bound1 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict = and i1 %bound0, %bound1
  %bound0241 = icmp ult ptr %scevgep, %scevgep240
  %bound1242 = icmp ult ptr %scevgep239, %scevgep236
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict, %found.conflict243
  br i1 %conflict.rdx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.og, -4                      ; 3 uses
  %i.ok = add i64 %i.mb, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.lp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert244 = insertelement <2 x double> poison, double %i.lk, i64 0
  %broadcast.splat245 = shufflevector <2 x double> %broadcast.splatinsert244, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ol = add i64 %i.mb, %index                   ; 3 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.ol ; 3 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.ol ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %wide.load = load <2 x double>, ptr %i.on, align 8, !tbaa !210, !alias.scope !535
  %wide.load246 = load <2 x double>, ptr %i.oo, align 8, !tbaa !210, !alias.scope !535
  %i.op = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.ol ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %wide.load247 = load <2 x double>, ptr %i.op, align 8, !tbaa !210, !alias.scope !536
  %wide.load248 = load <2 x double>, ptr %i.oq, align 8, !tbaa !210, !alias.scope !536
  %i.or = fmul <2 x double> %wide.load247, %broadcast.splat
  %i.os = fmul <2 x double> %wide.load248, %broadcast.splat
  %i.ot = fmul <2 x double> %broadcast.splat245, %wide.load
  %i.ou = fmul <2 x double> %broadcast.splat245, %wide.load246
  %i.ov = fsub <2 x double> %i.or, %i.ot
  %i.ow = fsub <2 x double> %i.os, %i.ou
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load249 = load <2 x double>, ptr %i.om, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  %wide.load250 = load <2 x double>, ptr %i.ox, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  %i.oy = fadd <2 x double> %wide.load249, %i.ov
  %i.oz = fadd <2 x double> %wide.load250, %i.ow
  store <2 x double> %i.oy, ptr %i.om, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  store <2 x double> %i.oz, ptr %i.ox, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pa = icmp eq i64 %index.next, %n.vec
  br i1 %i.pa, label %middle.block, label %vector.body, !llvm.loop !493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.og, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329

.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329:          ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mb, %vector.memcheck ], [ %i.mb, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader ], [ %i.ok, %middle.block ] ; 7 uses
  %i.pb = sub i64 %i.lm, %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.pc = add i64 %i.lh, %.05.i18.i.i.i.i.i.i.i.i.ph
  %xtraiter344 = and i64 %i.pb, 1
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod345.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %.05.i18.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !210
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !210
  %i.pi = fmul double %i.ph, %i.lp
  %i.pj = fmul double %i.lk, %i.pf
  %i.pk = fsub double %i.pi, %i.pj
  %i.pl = load double, ptr %i.pd, align 8, !tbaa !210
  %i.pm = fadd double %i.pl, %i.pk
  store double %i.pm, ptr %i.pd, align 8, !tbaa !210
  %i.pn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329
  %.05.i18.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329 ], [ %i.pn, %.lr.ph.i17.i.i.i.i.i.i.i.i.prol ]
  %i.po = icmp eq i64 %i.z, %i.pc
  br i1 %i.po, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i = phi i64 [ %i.qk, %.lr.ph.i17.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %.05.i18.i.i.i.i.i.i.i.i ; 2 uses
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.05.i18.i.i.i.i.i.i.i.i
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !210
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.05.i18.i.i.i.i.i.i.i.i
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !210
  %i.pu = fmul double %i.pt, %i.lp
  %i.pv = fmul double %i.lk, %i.pr
  %i.pw = fsub double %i.pu, %i.pv
  %i.px = load double, ptr %i.pp, align 8, !tbaa !210
  %i.py = fadd double %i.px, %i.pw
  store double %i.py, ptr %i.pp, align 8, !tbaa !210
  %i.pz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.pz ; 2 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.pz
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !210
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.pz
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !210
  %i.qf = fmul double %i.qe, %i.lp
  %i.qg = fmul double %i.lk, %i.qc
  %i.qh = fsub double %i.qf, %i.qg
  %i.qi = load double, ptr %i.qa, align 8, !tbaa !210
  %i.qj = fadd double %i.qi, %i.qh
  store double %i.qj, ptr %i.qa, align 8, !tbaa !210
  %i.qk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.qk, %i.lm
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i, !llvm.loop !494

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i = phi i64 [ %i.qv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.021.i.i.i.i.i.i.i.i ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.021.i.i.i.i.i.i.i.i
  %i.qn = load <2 x double>, ptr %i.qm, align 1, !tbaa !88
  %i.qo = fmul <2 x double> %i.oc, %i.qn
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.021.i.i.i.i.i.i.i.i
  %i.qq = load <2 x double>, ptr %i.qp, align 1, !tbaa !88
  %i.qr = fmul <2 x double> %i.od, %i.qq
  %i.qs = fadd <2 x double> %i.qo, %i.qr
  %i.qt = load <2 x double>, ptr %i.ql, align 16, !tbaa !88
  %i.qu = fadd <2 x double> %i.qt, %i.qs
  store <2 x double> %i.qu, ptr %i.ql, align 16, !tbaa !88
  %i.qv = add nuw nsw i64 %.021.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.qw = icmp slt i64 %i.qv, %i.mb
  br i1 %i.qw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !495

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.qx = add nuw nsw i64 %.070.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qx, %i.al
  br i1 %exitcond.not.i.i, label %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !496

_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i
  %.pre220 = load ptr, ptr %0, align 8, !tbaa !212, !noalias !539
  %.pre221 = load i64, ptr %i.d, align 8, !tbaa !214, !noalias !539 ; 2 uses
  %.pre222 = load ptr, ptr %1, align 8, !tbaa !211
  %.pre223 = mul nsw i64 %.pre221, %.0217
  br label %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit

_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit: ; preds = %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit
  %.pre-phi = phi i64 [ %.pre223, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.kn, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ]
  %i.qy = phi ptr [ %.pre222, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.ks, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ]
  %i.qz = phi i64 [ %.pre221, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.kf, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ]
  %i.ra = phi ptr [ %.pre220, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.kj, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ] ; 2 uses
  %i.rb = load double, ptr %i.b, align 8, !tbaa !210
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %.pre-phi
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.az
  store double %i.rb, ptr %i.rd, align 8, !tbaa !210
  %i.re = load double, ptr %i.c, align 8, !tbaa !210
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %.0217
  store double %i.re, ptr %i.rf, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  %exitcond.not = icmp eq i64 %.0217, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !499
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !208  ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !238    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !88 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !88 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !88 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !88 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !540

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !88 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ai = icmp slt i64 %i.j, %i.c
  br i1 %i.ai, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.aj = xor i64 %i.j, -1
  %i.ak = add i64 %i.b, %i.aj
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.j
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ah, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !210 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !541

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ah, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !210 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !210 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !210 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !210 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !542

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !210 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load double, ptr %i.d, align 8, !tbaa !210
  br label %bb.h

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !210 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !210
  store double %i.bs, ptr %3, align 8, !tbaa !210
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !241   ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !208 ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 8 uses
  %i.cb = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cc = sdiv i64 %i.cb, 2                       ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 1                    ; 2 uses
  %i.ce = add i64 %i.cd, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !210
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cj)
  %i.ck = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = add i64 %smax.i, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = and i64 %i.cm, -16
  %i.co = add i64 %i.cn, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !88
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.ce, %i.bv
  br i1 %i.cp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl i64 %i.cc, 4
  %i.cr = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bu, i64 %i.cq
  %scevgep1.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.ct = sub i64 %i.cb, %i.cd
  %i.cu = shl nuw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !210
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #42 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %spec.select = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %spec.select, ptr %3, align 8, !tbaa !210
  %i.da = fsub double %i.bq, %spec.select         ; 13 uses
  %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !241   ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !208 ; 8 uses
  %i.de = ptrtoint ptr %i.db to i64               ; 4 uses
  %i.df = and i64 %i.de, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.dg = lshr exact i64 %i.de, 3
  %i.dh = and i64 %i.dg, 1
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.j ], [ %i.dd, %.critedge ] ; 11 uses
  %i.dj = sub nsw i64 %i.dd, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = sdiv i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.dk, 1                    ; 2 uses
  %i.dm = add nsw i64 %i.dl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.do = sub i64 %i.de, %i.e
  %i.dp = add i64 %i.do, -9
  %diff.check = icmp ult i64 %i.dp, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !210
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.du = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter61 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58 ] ; 3 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !210
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !210
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !544

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !210
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !210
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !210
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !210
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !210
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !210
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !210
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !210
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !545

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.dj, 1
  br i1 %i.ew, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ex = shufflevector <2 x double> %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dm, %i.dd
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

end_hunk_0
