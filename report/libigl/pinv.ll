Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/pinv?download=true
inline.NumInlined: 9165
inline.NumDeleted: 4463
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_13MatrixWrapperINS1_INS2_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS1_INS2_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSA_IKNS6_IKNSB_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS5_ISF_EELin1ELi1ELb0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_:bb.a
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  %i.cn = load i64, ptr %i.d, align 8, !tbaa !91  ; 4 uses
  %i.co = mul nsw i64 %i.cn, %i.cl
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.bv
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !38
  %i.cs = getelementptr [8 x i8], ptr %i.bq, i64 %i.cl
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !38
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = load double, ptr %i.cf, align 8, !tbaa !38
  %i.cw = fmul double %i.cu, %i.cv                ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !91 ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cm, i64 %i.bv ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %.lr.ph.i.preheader, label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN5Eigen8internal15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_13MatrixWrapperINS2_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS2_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSA_IKNS6_IKNSB_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS5_ISF_EELin1ELi1ELb0EEEEEEC2ERKS1H_.exit
  %i.da = add nsw i64 %i.cy, -1                   ; 3 uses
  %xtraiter7 = and i64 %i.da, 1
  %i.db = icmp eq i64 %i.cy, 2
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.da, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01724.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.dz, %.lr.ph.i ] ; 4 uses
  %.02223.i = phi double [ %i.cw, %.lr.ph.i.preheader.new ], [ %i.dy, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dc = add i64 %.01724.i, %i.cl                ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.cn
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dd
  %i.de = load double, ptr %gep.i, align 8, !tbaa !38
  %i.df = getelementptr [8 x i8], ptr %i.bq, i64 %i.dc
  %i.dg = load double, ptr %i.df, align 8, !tbaa !38
  %i.dh = fmul double %i.de, %i.dg
  %i.di = mul nsw i64 %.01724.i, %i.ck
  %i.dj = getelementptr [8 x i8], ptr %i.cf, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !38
  %i.dl = fmul double %i.dh, %i.dk
  %i.dm = fadd double %.02223.i, %i.dl
  %i.dn = add nuw nsw i64 %.01724.i, 1            ; 2 uses
  %i.do = add i64 %i.dn, %i.cl                    ; 2 uses
  %i.dp = mul nsw i64 %i.do, %i.cn
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dp
  %i.dq = load double, ptr %gep.i.1, align 8, !tbaa !38
  %i.dr = getelementptr [8 x i8], ptr %i.bq, i64 %i.do
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !38
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = mul nsw i64 %i.dn, %i.ck
  %i.dv = getelementptr [8 x i8], ptr %i.cf, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !38
  %i.dx = fmul double %i.dt, %i.dw
  %i.dy = fadd double %i.dm, %i.dx                ; 3 uses
  %i.dz = add nuw nsw i64 %.01724.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1164

_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod8.not, label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01724.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.dz, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.epil.init = phi double [ %i.cw, %.lr.ph.i.preheader ], [ %i.dy, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod10)
  %i.ea = add i64 %.01724.i.epil.init, %i.cl      ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %i.cn
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.eb
  %i.ec = load double, ptr %gep.i.epil, align 8, !tbaa !38
  %i.ed = getelementptr [8 x i8], ptr %i.bq, i64 %i.ea
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !38
  %i.ef = fmul double %i.ec, %i.ee
  %i.eg = mul nsw i64 %.01724.i.epil.init, %i.ck
  %i.eh = getelementptr [8 x i8], ptr %i.cf, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !38
  %i.ej = fmul double %i.ef, %i.ei
  %i.ek = fadd double %.02223.i.epil.init, %i.ej
  br label %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit

_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa, %_ZN5Eigen8internal15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_13MatrixWrapperINS2_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS2_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSA_IKNS6_IKNSB_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS5_ISF_EELin1ELi1ELb0EEEEEEC2ERKS1H_.exit
  %.022.lcssa.i = phi double [ %i.cw, %_ZN5Eigen8internal15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS6_IKNS_13MatrixWrapperINS2_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS2_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSA_IKNS6_IKNSB_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS6_IKNS5_ISF_EELin1ELi1ELb0EEEEEEC2ERKS1H_.exit ], [ %i.dy, %_ZN5Eigen8internal10redux_implINS0_13scalar_sum_opIddEENS0_15redux_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS9_IKNS_13MatrixWrapperINS5_INS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS9_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS8_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS9_IKNSE_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEEEKNS9_IKNS8_ISI_EELin1ELi1ELb0EEEEEEELi0ELi0EE3runIS1K_EEdRKS1L_RKS3_RKT_.exit.loopexit.unr-lcssa ], [ %i.ek, %.lr.ph.i.epil.preheader ]
  call void @free(ptr noundef nonnull %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret double %.022.lcssa.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_IKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEEENS4_IKNS5_IKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperISA_EEKNS_9ReplicateINS4_IKNSF_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSI_IKNS5_IKNS6_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEENS4_INS5_IS7_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS1L_6ScalarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.10", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::Transpose.1723", align 8 ; 10 uses
  %7 = alloca %"class.Eigen::internal::const_blas_data_mapper.578", align 8 ; 6 uses
  %8 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %.sroa.055.0.copyload = load ptr, ptr %0, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.657.0.copyload = load i64, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.758.0.copyload = load ptr, ptr %.sroa.758.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i64, ptr %i.b, align 8, !noalias !1177
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !1177
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load double, ptr %i.e, align 8, !tbaa !43, !noalias !1177
  store double %i.f, ptr %i.d, align 8, !tbaa !43, !alias.scope !1177
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = load i64, ptr %i.j, align 8, !noalias !1177
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !1177
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.o = load i64, ptr %i.n, align 8, !tbaa !91
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.o, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS8_INS9_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSC_IKNS6_IKS2_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.b

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS8_INS9_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSC_IKNS6_IKS2_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS5_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS4_IKNS7_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSA_IKNS5_IKS3_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit44, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn29.pn.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit44 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS8_INS9_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSC_IKNS6_IKS2_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !34
  call void @free(ptr noundef %i.q) #19
  br label %common.resume

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_12ArrayWrapperIKNS6_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS5_IKNS8_INS9_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSC_IKNS6_IKS2_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.r = load double, ptr %3, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !91   ; 10 uses
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc39 unwind label %bb.j

.noexc39:                                         ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.c
  %i.w = shl nuw i64 %i.t, 3                      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, 16384        ; 4 uses
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.y = call noalias ptr @malloc(i64 noundef %i.w) #22 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.ab = call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ab, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc40 unwind label %bb.k

.noexc40:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.ac = add nuw nsw i64 %i.w, 15
  %i.ad = alloca i8, i64 %i.ac, align 16          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.g
  %i.af = phi ptr [ %i.aa, %.thread ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ag = phi ptr [ %i.y, %.thread ], [ %i.ad, %bb.g ] ; 9 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !1179  ; 6 uses
  %.pn = load ptr, ptr %i.af, align 8, !tbaa !1182, !nonnull !62, !align !87
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ai = load i64, ptr %.in, align 8, !tbaa !41  ; 6 uses
  %min.iters.check = icmp ugt i64 %i.t, 3
  %ident.check.not = icmp eq i64 %i.ai, 1
  %or.cond79 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond79, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader85

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !38
  %wide.load62 = load <2 x double>, ptr %i.al, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x double> %wide.load, ptr %i.aj, align 8, !tbaa !38
  store <2 x double> %wide.load62, ptr %i.am, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader85

.lr.ph.i.i.i.i.i.i.i.i.preheader85:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader85, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader85 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader85 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ap = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.ai
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !38
  store double %i.ar, ptr %i.ao, align 8, !tbaa !38
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1172

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader85
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader85 ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.at = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.t
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i
  %i.aw = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.ai
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !38
  store double %i.ay, ptr %i.av, align 8, !tbaa !38
  %i.az = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.az
  %i.bb = mul nsw i64 %i.az, %i.ai
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !38
  store double %i.bd, ptr %i.ba, align 8, !tbaa !38
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.be
  %i.bg = mul nsw i64 %i.be, %i.ai
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !38
  store double %i.bi, ptr %i.bf, align 8, !tbaa !38
  %i.bj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bj
  %i.bl = mul nsw i64 %i.bj, %i.ai
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !38
  store double %i.bn, ptr %i.bk, align 8, !tbaa !38
  %i.bo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bo, %i.t
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1173

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.g
  %i.bp = phi ptr [ %i.ae, %bb.g ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bq = phi i1 [ false, %bb.g ], [ %i.x, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.br = phi ptr [ %i.ad, %bb.g ], [ %i.ag, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.758.0.copyload, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !41
  store ptr %.sroa.055.0.copyload, ptr %7, align 8, !tbaa !137
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bw = load ptr, ptr %5, align 8, !tbaa !34
  store ptr %i.bw, ptr %8, align 8, !tbaa !134
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.bx, align 8, !tbaa !135
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.556.0.copyload, i64 noundef %.sroa.657.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.br, i64 noundef 1, double noundef %i.r)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.by = load ptr, ptr %2, align 8, !tbaa !1179  ; 7 uses
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !1182, !nonnull !62, !align !87
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !41 ; 6 uses
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !91  ; 7 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i41.preheader, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i41.preheader:               ; preds = %bb.h
  %i.ce = ptrtoaddr ptr %i.by to i64
  %min.iters.check68 = icmp ult i64 %i.cc, 10
  %ident.check64.not = icmp ne i64 %i.cb, 1
  %or.cond80.not83 = select i1 %min.iters.check68, i1 true, i1 %ident.check64.not
  %i.cf = sub i64 %i.bs, %i.ce
  %diff.check66 = icmp ugt i64 %i.cf, -32
  %or.cond81 = select i1 %or.cond80.not83, i1 true, i1 %diff.check66
  br i1 %or.cond81, label %.lr.ph.i.i.i.i.i.i.i.i41.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i41.preheader
  %n.vec70 = and i64 %i.cc, 9223372036854775804   ; 3 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body71 ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.by, i64 %index72 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load73 = load <2 x double>, ptr %i.ch, align 8, !tbaa !38
  %wide.load74 = load <2 x double>, ptr %i.ci, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %wide.load73, ptr %i.cg, align 8, !tbaa !38
  store <2 x double> %wide.load74, ptr %i.cj, align 8, !tbaa !38
  %index.next75 = add nuw i64 %index72, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.ck, label %middle.block76, label %vector.body71, !llvm.loop !1174

middle.block76:                                   ; preds = %vector.body71
  %cmp.n77 = icmp eq i64 %i.cc, %n.vec70
  br i1 %cmp.n77, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i41.preheader84

.lr.ph.i.i.i.i.i.i.i.i41.preheader84:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i41.preheader, %middle.block76
  %.05.i.i.i.i.i.i.i.i42.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i41.preheader ], [ %n.vec70, %middle.block76 ] ; 3 uses
  %xtraiter86 = and i64 %i.cc, 3                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph.i.i.i.i.i.i.i.i41.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i41.prol

.lr.ph.i.i.i.i.i.i.i.i41.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i41.preheader84, %.lr.ph.i.i.i.i.i.i.i.i41.prol
  %.05.i.i.i.i.i.i.i.i42.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i41.prol ], [ %.05.i.i.i.i.i.i.i.i42.ph, %.lr.ph.i.i.i.i.i.i.i.i41.preheader84 ] ; 3 uses
  %prol.iter88 = phi i64 [ %prol.iter88.next, %.lr.ph.i.i.i.i.i.i.i.i41.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i41.preheader84 ]
  %i.cl = mul nsw i64 %.05.i.i.i.i.i.i.i.i42.prol, %i.cb
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.05.i.i.i.i.i.i.i.i42.prol
  %i.co = load double, ptr %i.cn, align 8, !tbaa !38
  store double %i.co, ptr %i.cm, align 8, !tbaa !38
  %i.cp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i42.prol, 1 ; 2 uses
  %prol.iter88.next = add i64 %prol.iter88, 1     ; 2 uses
  %prol.iter88.cmp.not = icmp eq i64 %prol.iter88.next, %xtraiter86
  br i1 %prol.iter88.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i41.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i41.prol, !llvm.loop !1175

.lr.ph.i.i.i.i.i.i.i.i41.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i41.prol, %.lr.ph.i.i.i.i.i.i.i.i41.preheader84
  %.05.i.i.i.i.i.i.i.i42.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i42.ph, %.lr.ph.i.i.i.i.i.i.i.i41.preheader84 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i41.prol ]
  %i.cq = sub nsw i64 %.05.i.i.i.i.i.i.i.i42.ph, %i.cc
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i.i.i41:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i41
  %.05.i.i.i.i.i.i.i.i42 = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i41 ], [ %.05.i.i.i.i.i.i.i.i42.unr, %.lr.ph.i.i.i.i.i.i.i.i41.prol.loopexit ] ; 6 uses
  %i.cs = mul nsw i64 %.05.i.i.i.i.i.i.i.i42, %i.cb
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.05.i.i.i.i.i.i.i.i42
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !38
  store double %i.cv, ptr %i.ct, align 8, !tbaa !38
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i42, 1 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.cb
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cw
  %i.da = load double, ptr %i.cz, align 8, !tbaa !38
  store double %i.da, ptr %i.cy, align 8, !tbaa !38
  %i.db = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i42, 2 ; 2 uses
  %i.dc = mul nsw i64 %i.db, %i.cb
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.db
  %i.df = load double, ptr %i.de, align 8, !tbaa !38
  store double %i.df, ptr %i.dd, align 8, !tbaa !38
  %i.dg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i42, 3 ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.cb
  %i.di = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.dg
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !38
  store double %i.dk, ptr %i.di, align 8, !tbaa !38
  %i.dl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i42, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i43.3 = icmp eq i64 %i.dl, %i.cc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i43.3, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i41, !llvm.loop !1176

_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i41, %middle.block76, %bb.h
  br i1 %i.bq, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.i:                                             ; preds = %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  call void @free(ptr noundef nonnull %i.br) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

end_hunk_0
