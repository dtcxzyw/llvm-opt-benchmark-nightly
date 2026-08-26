Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/voxel_grid?download=true
inline.NumInlined: 6383
inline.NumDeleted: 3754
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS2_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  br i1 %i.jk, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2, !llvm.loop !248

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2
  %i.jl = load double, ptr %i.gw, align 8, !tbaa !9 ; 3 uses
  br i1 %i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader:         ; preds = %bb.s
  %i.jm = add nsw i64 %i.h, -1                    ; 2 uses
  %i.jn = add nsw i64 %i.h, -2
  %xtraiter127 = and i64 %i.jm, 3                 ; 3 uses
  %i.jo = icmp ult i64 %i.jn, 3
  br i1 %i.jo, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new:     ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader
  %unroll_iter132 = and i64 %i.jm, -4
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new
  %.094.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.ki, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ] ; 5 uses
  %.293.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.jl, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.kh, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ] ; 2 uses
  %niter133 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %niter133.next.3, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !9 ; 2 uses
  %i.jr = fcmp olt double %.293.i.i.i.i.i.i.i.i.i.i.2, %i.jq
  %i.js = select i1 %i.jr, double %i.jq, double %.293.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !9 ; 2 uses
  %i.jw = fcmp olt double %i.js, %i.jv
  %i.jx = select i1 %i.jw, double %i.jv, double %i.js ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !9 ; 2 uses
  %i.kb = fcmp olt double %i.jx, %i.ka
  %i.kc = select i1 %i.kb, double %i.ka, double %i.jx ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !9 ; 2 uses
  %i.kg = fcmp olt double %i.kc, %i.kf
  %i.kh = select i1 %i.kg, double %i.kf, double %i.kc ; 3 uses
  %i.ki = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.2, 4 ; 2 uses
  %niter133.next.3 = add nuw i64 %niter133, 4     ; 2 uses
  %niter133.ncmp.3 = icmp eq i64 %niter133.next.3, %unroll_iter132
  br i1 %niter133.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2, !llvm.loop !249

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2
  %lcmp.mod129.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod129.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader:    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.ki, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.jl, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.kh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter127, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil:              ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.kn, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.2.epil = phi double [ %i.km, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %epil.iter128 = phi i64 [ %epil.iter128.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.094.i.i.i.i.i.i.i.i.i.i.2.epil
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !9 ; 2 uses
  %i.kl = fcmp olt double %.293.i.i.i.i.i.i.i.i.i.i.2.epil, %i.kk
  %i.km = select i1 %i.kl, double %i.kk, double %.293.i.i.i.i.i.i.i.i.i.i.2.epil ; 2 uses
  %i.kn = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter128.next = add i64 %epil.iter128, 1   ; 2 uses
  %epil.iter128.cmp.not = icmp eq i64 %epil.iter128.next, %xtraiter127
  br i1 %epil.iter128.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil, !llvm.loop !254

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil, %bb.s, %.preheader.i.i.i.i.i.i.i.i.i.i.2
  %.3.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.km, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %i.jl, %bb.s ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.kh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.2.loopexit.unr-lcssa ], [ %i.ji, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kp = fadd double %i.d, %.3.i.i.i.i.i.i.i.i.i.i.2
  store double %i.kp, ptr %i.ko, align 8, !tbaa !9
  ret void
}

declare void @_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS7_INS0_18scalar_quotient_opIddEEKNS7_INS0_13scalar_sum_opIddEEKNS4_IdLi3ELi1ELi0ELi3ELi1EEESG_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEEKNS7_ISC_KNS_16PartialReduxExprINS4_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSJ_ISL_KS5_EEEEEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERS17_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255, !nonnull !224, !align !225
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = lshr exact i64 %i.c, 3
  %i.e = and i64 %i.d, 1                          ; 3 uses
  %i.f = or disjoint i64 %i.e, 2                  ; 8 uses
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %.not, label %.lr.ph, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !224, !align !225
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !258
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !260, !nonnull !224, !align !225 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !261  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !261  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !263, !nonnull !224, !align !225 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47, !noalias !266 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49, !noalias !266 ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br i1 %i.u, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader, label %.lr.ph.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader: ; preds = %.lr.ph.i
  %i.w = load double, ptr %i.l, align 8, !tbaa !9
  %i.x = load double, ptr %i.n, align 8, !tbaa !9
  %i.y = load double, ptr %i.o, align 8, !tbaa !21
  %i.z = fadd double %i.w, %i.x
  %i.aa = fdiv double %i.z, %i.y
  br label %.lr.ph.sink.split

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ab = icmp sgt i64 %i.t, 1
  %i.ac = load double, ptr %i.l, align 8, !tbaa !9 ; 2 uses
  %i.ad = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.ae = load double, ptr %i.o, align 8, !tbaa !21 ; 2 uses
  %i.af = load double, ptr %i.r, align 8, !tbaa !9 ; 3 uses
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader:            ; preds = %.lr.ph.split.i
  %i.ag = add nsw i64 %i.t, -1                    ; 2 uses
  %i.ah = add nsw i64 %i.t, -2
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader
  %unroll_iter = and i64 %i.ag, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %i.aj = fadd double %i.ac, %i.ad
  %i.ak = fdiv double %i.aj, %i.ae
  br label %.lr.ph.sink.split

.lr.ph.i.i.i.i.i.i.i.i.us.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new
  %.01725.i.i.i.i.i.i.i.i.us.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.i.i.i.us.i = phi double [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.al = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !9
  %i.an = fadd double %.02324.i.i.i.i.i.i.i.i.us.i, %i.am
  %i.ao = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !9
  %i.as = fadd double %i.an, %i.ar
  %i.at = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.au = getelementptr i8, ptr %i.r, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 48
  %i.aw = load double, ptr %i.av, align 8, !tbaa !9
  %i.ax = fadd double %i.as, %i.aw
  %i.ay = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.az = getelementptr i8, ptr %i.r, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 72
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !9
  %i.bc = fadd double %i.ax, %i.bb                ; 3 uses
  %i.bd = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.us.i, !llvm.loop !269

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader:       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.bd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.us.i.epil.init = phi double [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.bc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.i.i.i.us.i.epil:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i.epil = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.i.i.us.i.epil = phi double [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i.epil, 24
  %i.be = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.bf = load double, ptr %i.be, align 8, !tbaa !9
  %i.bg = fadd double %.02324.i.i.i.i.i.i.i.i.us.i.epil, %i.bf ; 2 uses
  %i.bh = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil, !llvm.loop !270

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa73 = phi double [ %i.bc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ]
  %i.bi = fadd double %i.ac, %i.ad
  %i.bj = fdiv double %i.bi, %i.ae
  br label %.lr.ph.sink.split

.lr.ph.sink.split:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.sink = phi double [ %.lcssa73, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0.000000e+00, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader ], [ %i.af, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ]
  %.sink63 = phi double [ %i.bj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ %i.aa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader ], [ %i.ak, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ]
  %i.bk = load double, ptr %i.v, align 8, !tbaa !21
  %i.bl = fdiv double %.sink, %i.bk
  %i.bm = fsub double %.sink63, %i.bl
  store double %i.bm, ptr %i.h, align 8, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %.0.i36 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit ], [ 1, %.lr.ph.sink.split ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !224, !align !225
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !258
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !260, !nonnull !224, !align !225 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !261
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i36
  %i.bu = load <2 x double>, ptr %i.bt, align 1, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !261
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.0.i36
  %i.by = load <2 x double>, ptr %i.bx, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.ca = load <1 x double>, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !263, !nonnull !224, !align !225 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i36 ; 7 uses
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !49 ; 7 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %bb.a

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  br i1 %.not, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.ci = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !224, !align !225
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !258 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !260, !nonnull !224, !align !225 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !261 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !261 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !263, !nonnull !224, !align !225 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !49, !noalias !271 ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 80 ; 3 uses
  br i1 %i.cv, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i31.preheader, label %.lr.ph.split.i18

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i31.preheader: ; preds = %.lr.ph.i17
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.f
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.f
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !9
  %i.da = load double, ptr %i.cy, align 8, !tbaa !9
  %i.db = load double, ptr %i.cq, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f
  %i.dd = fadd double %i.cz, %i.da
  %i.de = fdiv double %i.dd, %i.db
  %i.df = load double, ptr %i.cw, align 8, !tbaa !21
  %i.dg = fdiv double 0.000000e+00, %i.df
  %i.dh = fsub double %i.de, %i.dg
  store double %i.dh, ptr %i.dc, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !47, !noalias !271
  %i.dj = icmp sgt i64 %i.cu, 1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.f
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.f
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !9 ; 2 uses
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !9 ; 2 uses
  %i.do = load double, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.f ; 6 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !9 ; 3 uses
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader:          ; preds = %.lr.ph.split.i18
  %i.dr = add nsw i64 %i.cu, -1                   ; 2 uses
  %i.ds = add nsw i64 %i.cu, -2
  %xtraiter79 = and i64 %i.dr, 3                  ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 3
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader
  %unroll_iter84 = and i64 %i.dr, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i24

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f
  %i.dv = fadd double %i.dm, %i.dn
  %i.dw = fdiv double %i.dv, %i.do
  %i.dx = load double, ptr %i.cw, align 8, !tbaa !21
  %i.dy = fdiv double %i.dq, %i.dx
  %i.dz = fsub double %i.dw, %i.dy
  store double %i.dz, ptr %i.du, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

.lr.ph.i.i.i.i.i.i.i.i.us.i24:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new
  %.01725.i.i.i.i.i.i.i.i.us.i25 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.us.i24 ] ; 5 uses
  %.02324.i.i.i.i.i.i.i.i.us.i26 = phi double [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.us.i24 ]
  %niter85 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader.new ], [ %niter85.next.3, %.lr.ph.i.i.i.i.i.i.i.i.us.i24 ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.ea = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i27
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !9
  %i.ec = fadd double %.02324.i.i.i.i.i.i.i.i.us.i26, %i.eb
  %i.ed = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !9
  %i.eh = fadd double %i.ec, %i.eg
  %i.ei = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.ej = getelementptr i8, ptr %i.dp, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 48
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %i.em = fadd double %i.eh, %i.el
  %i.en = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 24
  %i.eo = getelementptr i8, ptr %i.dp, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 72
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !9
  %i.er = fadd double %i.em, %i.eq                ; 3 uses
  %i.es = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter85.next.3 = add nuw i64 %niter85, 4       ; 2 uses
  %niter85.ncmp.3 = icmp eq i64 %niter85.next.3, %unroll_iter84
  br i1 %niter85.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24, !llvm.loop !269

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24
  %lcmp.mod81.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader:     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader ], [ %i.es, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.us.i26.epil.init = phi double [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.preheader ], [ %i.er, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter79, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i25.epil = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.i.i.us.i26.epil = phi double [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter80 = phi i64 [ %epil.iter80.next, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i25.epil, 24
  %i.et = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  %i.ev = fadd double %.02324.i.i.i.i.i.i.i.i.us.i26.epil, %i.eu ; 2 uses
  %i.ew = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i25.epil, 1
  %epil.iter80.next = add i64 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i64 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil, !llvm.loop !274

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.er, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.us.i24.epil ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f
  %i.ey = fadd double %i.dm, %i.dn
  %i.ez = fdiv double %i.ey, %i.do
  %i.fa = load double, ptr %i.cw, align 8, !tbaa !21
  %i.fb = fdiv double %.lcssa, %i.fa
  %i.fc = fsub double %i.ez, %i.fb
  store double %i.fc, ptr %i.ex, align 8, !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i31.preheader, %._crit_edge
  ret void

bb.a:                                             ; preds = %.lr.ph
  %i.fd = add nsw i64 %i.cg, -1
  %i.fe = and i64 %i.fd, -4
  %i.ff = load <2 x double>, ptr %i.cf, align 1, !tbaa !26 ; 2 uses
  %i.fg = icmp sgt i64 %i.cg, 4
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.041.lcssa.i.i.i.i.i = phi <2 x double> [ %i.ff, %bb.a ], [ %i.ga, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.gb, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.fh = icmp slt i64 %.0.lcssa.i.i.i.i.i, %i.cg
  br i1 %i.fh, label %.lr.ph48.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph48.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.fi = sub i64 %i.cg, %.0.lcssa.i.i.i.i.i
  %xtraiter76 = and i64 %i.fi, 3                  ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph48.i.i.i.i.i.prol.loopexit, label %.lr.ph48.i.i.i.i.i.prol

.lr.ph48.i.i.i.i.i.prol:                          ; preds = %.lr.ph48.i.i.i.i.i.preheader, %.lr.ph48.i.i.i.i.i.prol
  %.147.i.i.i.i.i.prol = phi i64 [ %i.fm, %.lr.ph48.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.preheader ] ; 2 uses
  %.14246.i.i.i.i.i.prol = phi <2 x double> [ %i.fl, %.lr.ph48.i.i.i.i.i.prol ], [ %.041.lcssa.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.i.i.i.i.prol ], [ 0, %.lr.ph48.i.i.i.i.i.preheader ]
  %.idx.i.i30.i.i.i.i.i.prol = mul nuw nsw i64 %.147.i.i.i.i.i.prol, 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i30.i.i.i.i.i.prol
  %i.fk = load <2 x double>, ptr %i.fj, align 1, !tbaa !26
  %i.fl = fadd <2 x double> %.14246.i.i.i.i.i.prol, %i.fk ; 3 uses
  %i.fm = add nuw nsw i64 %.147.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter76
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.i.i.i.i.prol.loopexit, label %.lr.ph48.i.i.i.i.i.prol, !llvm.loop !275

.lr.ph48.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph48.i.i.i.i.i.prol, %.lr.ph48.i.i.i.i.i.preheader
  %.lcssa72.unr = phi <2 x double> [ poison, %.lr.ph48.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph48.i.i.i.i.i.prol ]
end_hunk_0
