Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/voxel_grid?download=true
inline.NumInlined: 6385
inline.NumDeleted: 3756
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN3igl10voxel_gridIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EENS7_6ScalarEiiRNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE:.lr.ph.i.i.i.i.i.i.i
_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %.pn = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %.025.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %.025.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %.025.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader ]
  %.sink56.i.i.i.i.i.i.i = phi double [ %i.g, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.as, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %i.q, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader ]
  br i1 %i.b, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i16.split

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.w = load <2 x double>, ptr %.pre, align 1, !tbaa !31 ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.x = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.pre89
  br i1 %i.x, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.split, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.split ] ; 2 uses
  %.04143.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.split ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.y = getelementptr i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !31
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !31
  %i.ac = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z, <2 x double> %i.ab) #8, !srcloc !32
  %i.ad = getelementptr i8, ptr %i.y, i64 48
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !31
  %i.af = getelementptr i8, ptr %i.y, i64 72
  %i.ag = load <2 x double>, ptr %i.af, align 1, !tbaa !31
  %i.ah = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ae, <2 x double> %i.ag) #8, !srcloc !32
  %i.ai = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac, <2 x double> %i.ah) #8, !srcloc !32
  %i.aj = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.04143.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.ai) #8, !srcloc !32 ; 2 uses
  %i.ak = add nuw nsw i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.al = icmp slt i64 %i.ak, %i.d
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !145

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i
  %.147.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.14246.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ao, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.idx.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.147.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i.i30.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !31
  %i.ao = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.14246.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.an) #8, !srcloc !32 ; 2 uses
  %i.ap = add nuw i64 %.147.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, %.pre89
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !146

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.025.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.pre89, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 4 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !24 ; 3 uses
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.at = icmp eq i64 %.pre89, 2
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i
  %i.au = fadd <2 x double> %i.a, zeroinitializer
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !24
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader.new
  %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i27 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader.new ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i28 = phi double [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26 ] ; 2 uses
  %niter136 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader.new ], [ %niter136.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26 ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i29 = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i27, 24
  %i.ax = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i29
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.az = fcmp olt double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i28, %i.ay
  %i.ba = select i1 %i.az, double %i.ay, double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i28 ; 2 uses
  %i.bb = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i27, 24
  %i.bc = getelementptr i8, ptr %i.cz, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24 ; 2 uses
  %i.bf = fcmp olt double %i.ba, %i.be
  %i.bg = select i1 %i.bf, double %i.be, double %i.ba ; 3 uses
  %i.bh = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i27, 2 ; 2 uses
  %niter136.next.1 = add nuw i64 %niter136, 2     ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26, !llvm.loop !147

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.epil.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader
  %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i27.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader ], [ %i.bh, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i28.epil.init = phi double [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader ], [ %i.bg, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i29.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i27.epil.init, 24
  %i.bi = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i29.epil
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.bk = fcmp olt double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i28.epil.init, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %.02324.i.i.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i28.epil.init
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.epil.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %.sroa.0.0 = phi <2 x double> [ %i.au, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us ], [ %i.cx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %i.cx, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.epil.preheader ] ; 2 uses
  %.sink56.i.i.i.i.i.i.i25 = phi double [ %i.aw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.us ], [ %i.da, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i ], [ %i.bg, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.epil.preheader ]
  %i.bm = fsub double %.sink56.i.i.i.i.i.i.i, %1  ; 4 uses
  %.sroa.0137.0 = fsub <2 x double> %.pn, %i.a    ; 2 uses
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bo = fadd double %1, %.sink56.i.i.i.i.i.i.i25 ; 4 uses
  %i.bp = load <2 x double>, ptr %6, align 16, !tbaa !31
  %i.bq = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp, <2 x double> %.sroa.0137.0) #8, !srcloc !32
  %i.br = fcmp olt double %i.bm, f0x7FEFFFFFFFFFFFFF
  %i.bs = select i1 %i.br, double %i.bm, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bn, align 8, !tbaa !31
  %i.bu = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bt, <2 x double> %.sroa.0137.0) #8, !srcloc !35
  %i.bv = fcmp ogt double %i.bm, f0xFFEFFFFFFFFFFFFF
  %i.bw = select i1 %i.bv, double %i.bm, double f0xFFEFFFFFFFFFFFFF ; 2 uses
  %i.bx = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bq, <2 x double> %.sroa.0.0) #8, !srcloc !32
  store <2 x double> %i.bx, ptr %6, align 16, !tbaa !31
  %i.by = fcmp olt double %i.bo, %i.bs
  %i.bz = select i1 %i.by, double %i.bo, double %i.bs
  store double %i.bz, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !24
  %i.ca = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bu, <2 x double> %.sroa.0.0) #8, !srcloc !35
  store <2 x double> %i.ca, ptr %i.bn, align 8, !tbaa !31
  %i.cb = fcmp olt double %i.bw, %i.bo
  %i.cc = select i1 %i.cb, double %i.bo, double %i.bw
  store double %i.cc, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i2.i.i, align 8, !tbaa !24
  call void @_ZN3igl10voxel_gridIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void

.lr.ph.i.i.i.i.i.i.i16.split:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i
  %i.cd = load <2 x double>, ptr %.pre, align 1, !tbaa !31 ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19

.preheader.i.i.i.i.i.i.i.i.i.i.i.i19:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i.i16.split
  %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i20 = phi <2 x double> [ %i.cd, %.lr.ph.i.i.i.i.i.i.i16.split ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i21 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i16.split ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36 ] ; 2 uses
  %i.ce = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i21, %.pre89
  br i1 %i.ce, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36:                 ; preds = %.lr.ph.i.i.i.i.i.i.i16.split, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36
  %.044.i.i.i.i.i.i.i.i.i.i.i.i37 = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36 ], [ 1, %.lr.ph.i.i.i.i.i.i.i16.split ] ; 2 uses
  %.04143.i.i.i.i.i.i.i.i.i.i.i.i38 = phi <2 x double> [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i16.split ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i39 = mul i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i37, 24
  %i.cf = getelementptr i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i39 ; 4 uses
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !31
  %i.ch = getelementptr i8, ptr %i.cf, i64 24
  %i.ci = load <2 x double>, ptr %i.ch, align 1, !tbaa !31
  %i.cj = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg, <2 x double> %i.ci) #8, !srcloc !35
  %i.ck = getelementptr i8, ptr %i.cf, i64 48
  %i.cl = load <2 x double>, ptr %i.ck, align 1, !tbaa !31
  %i.cm = getelementptr i8, ptr %i.cf, i64 72
  %i.cn = load <2 x double>, ptr %i.cm, align 1, !tbaa !31
  %i.co = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cl, <2 x double> %i.cn) #8, !srcloc !35
  %i.cp = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cj, <2 x double> %i.co) #8, !srcloc !35
  %i.cq = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.04143.i.i.i.i.i.i.i.i.i.i.i.i38, <2 x double> %i.cp) #8, !srcloc !35 ; 2 uses
  %i.cr = add nuw nsw i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i37, 4 ; 3 uses
  %i.cs = icmp slt i64 %i.cr, %i.d
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i36, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19, !llvm.loop !148

.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31
  %.147.i.i.i.i.i.i.i.i.i.i.i.i32 = phi i64 [ %i.cw, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31 ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i21, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19 ] ; 2 uses
  %.14246.i.i.i.i.i.i.i.i.i.i.i.i33 = phi <2 x double> [ %i.cv, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31 ], [ %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i20, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19 ]
  %.idx.i.i30.i.i.i.i.i.i.i.i.i.i.i.i34 = mul nuw nsw i64 %.147.i.i.i.i.i.i.i.i.i.i.i.i32, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i.i30.i.i.i.i.i.i.i.i.i.i.i.i34
  %i.cu = load <2 x double>, ptr %i.ct, align 1, !tbaa !31
  %i.cv = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.14246.i.i.i.i.i.i.i.i.i.i.i.i33, <2 x double> %i.cu) #8, !srcloc !35 ; 2 uses
  %i.cw = add nuw i64 %.147.i.i.i.i.i.i.i.i.i.i.i.i32, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i35 = icmp eq i64 %i.cw, %.pre89
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i35, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i, label %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31, !llvm.loop !149

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19
  %.025.i.i.i.i.i.i.i.i.i.i.i.i22 = phi <2 x double> [ %.041.lcssa.i.i.i.i.i.i.i.i.i.i.i.i20, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i19 ], [ %i.cv, %.lr.ph48.i.i.i.i.i.i.i.i.i.i.i.i31 ]
  %i.cx = fadd <2 x double> %i.a, %.025.i.i.i.i.i.i.i.i.i.i.i.i22 ; 3 uses
  %i.cy = icmp sgt i64 %.pre89, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 4 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !24 ; 3 uses
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit30.sink.split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i
  %xtraiter131 = and i64 %i.c, 1
  %i.db = icmp eq i64 %.pre89, 2
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26.preheader
  %unroll_iter135 = and i64 %i.c, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i26
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10voxel_gridIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.1710", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.804", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1731", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Array.622", align 16 ; 5 uses
  %10 = alloca %"class.Eigen::Matrix.3", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !24
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !24
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.f = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.g = fcmp ogt double %i.f, %i.e               ; 3 uses
  %.sroa.0.0.i.i = zext i1 %i.g to i64
  %.sroa.8.0.i.i = select i1 %i.g, double %i.f, double %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load double, ptr %i.h, align 8, !tbaa !24
  %i.k = load double, ptr %i.i, align 8, !tbaa !24
  %i.l = fsub double %i.j, %i.k                   ; 2 uses
  %i.m = fcmp ule double %i.l, %.sroa.8.0.i.i     ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.m, i64 %.sroa.0.0.i.i, i64 2 ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.1.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.1.i.i
  %i.p = load double, ptr %i.n, align 8, !tbaa !24
  %i.q = load double, ptr %i.o, align 8, !tbaa !24
  %i.r = fsub double %i.p, %i.q                   ; 3 uses
  %i.s = shl nsw i32 %2, 1                        ; 3 uses
  %i.t = sub nsw i32 %1, %i.s                     ; 2 uses
  %i.u = sitofp i32 %i.t to double                ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.0.1.i.i
  store i32 %i.t, ptr %i.v, align 4, !tbaa !36
  %.not = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.w = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.ec
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.eb, i64 %i.w ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %9, i64 %.0810.i.i.i.i.i.i.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !24 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load = load <2 x double>, ptr %i.z, align 8, !tbaa !24
  %wide.load161 = load <2 x double>, ptr %i.aa, align 8, !tbaa !24
  %i.ab = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ac = fmul <2 x double> %broadcast.splat, %wide.load161
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !24
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph, %middle.block
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.ee
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.ah, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i ; 2 uses
  %i.af = load double, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.ag = fmul double %i.y, %i.af
  store double %i.ag, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.ah = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.ec
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !151

_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.ai = sitofp i64 %i.ec to double
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7, !noalias !160
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.aj, align 8, !tbaa !38, !noalias !160
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !38, !noalias !160
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double 2.000000e+00, ptr %i.al, align 8, !tbaa !40, !noalias !160
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %3, ptr %i.am, align 8, !tbaa !79, !noalias !160
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 80
  store double %i.ai, ptr %i.an, align 8, !tbaa !40, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7, !noalias !160
  store ptr %10, ptr %6, align 8, !tbaa !38, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7, !noalias !160
  store ptr %6, ptr %7, align 8, !tbaa !43, !noalias !160
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ao, align 8, !tbaa !81, !noalias !160
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.ap, align 8, !tbaa !46, !noalias !160
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %10, ptr %i.aq, align 8, !tbaa !48, !noalias !160
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS7_INS0_18scalar_quotient_opIddEEKNS7_INS0_13scalar_sum_opIddEEKNS4_IdLi3ELi1ELi0ELi3ELi1EEESG_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEEKNS7_ISC_KNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNSJ_ISL_KNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS18_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7, !noalias !160
  %i.ar = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.as = load i64, ptr %i.ea, align 8, !tbaa !30 ; 10 uses
  %i.at = load i64, ptr %i.ed, align 8, !tbaa !82 ; 4 uses
  %i.au = icmp sgt i64 %i.at, 0
  %i.av = icmp sgt i64 %i.as, 0
  %or.cond.i.i.i.i.i.i35 = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i.i.i.i.i.i35, label %.preheader.i.i.i.i.i.i.i36.preheader, label %_ZN5Eigen12VectorwiseOpINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i36.preheader:             ; preds = %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  %i.aw = mul i64 %i.at, %i.as
  %i.ax = shl i64 %i.aw, 3
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.ax
  %i.ay = shl i64 %i.at, 3
  %scevgep162 = getelementptr i8, ptr %10, i64 %i.ay
  %min.iters.check164 = icmp ult i64 %i.as, 4
  %bound0 = icmp ult ptr %i.ar, %scevgep162
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.as, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.az = or i1 %found.conflict, %stride.check
  %n.vec166 = and i64 %i.as, 8070450532247928828  ; 3 uses
  %cmp.n175 = icmp eq i64 %i.as, %n.vec166
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i36

.preheader.i.i.i.i.i.i.i36:                       ; preds = %.preheader.i.i.i.i.i.i.i36.preheader, %._crit_edge.i.i.i.i.i.i.i42
  %.0810.i.i.i.i.i.i.i37 = phi i64 [ %i.bo, %._crit_edge.i.i.i.i.i.i.i42 ], [ 0, %.preheader.i.i.i.i.i.i.i36.preheader ] ; 3 uses
  %i.ba = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i37, %i.as
  %invariant.gep.i.i.i.i.i.i.i38 = getelementptr [8 x i8], ptr %i.ar, i64 %i.ba ; 6 uses
  %i.bb = getelementptr [8 x i8], ptr %10, i64 %.0810.i.i.i.i.i.i.i37 ; 6 uses
  %brmerge = select i1 %min.iters.check164, i1 true, i1 %i.az
  br i1 %brmerge, label %scalar.ph163.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.preheader.i.i.i.i.i.i.i36
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !24, !alias.scope !161
  %broadcast.splatinsert171 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat172 = shufflevector <2 x double> %broadcast.splatinsert171, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %index168 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %wide.load169 = load <2 x double>, ptr %i.bd, align 8, !tbaa !24, !alias.scope !162, !noalias !161
  %wide.load170 = load <2 x double>, ptr %i.be, align 8, !tbaa !24, !alias.scope !162, !noalias !161
  %i.bf = fadd <2 x double> %broadcast.splat172, %wide.load169
  %i.bg = fadd <2 x double> %broadcast.splat172, %wide.load170
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !24, !alias.scope !162, !noalias !161
  store <2 x double> %i.bg, ptr %i.be, align 8, !tbaa !24, !alias.scope !162, !noalias !161
  %index.next173 = add nuw i64 %index168, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.bh, label %middle.block174, label %vector.body167, !llvm.loop !157

middle.block174:                                  ; preds = %vector.body167
  br i1 %cmp.n175, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph163.preheader

scalar.ph163.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i36, %middle.block174
  %.09.i.i.i.i.i.i.i39.ph = phi i64 [ %n.vec166, %middle.block174 ], [ 0, %.preheader.i.i.i.i.i.i.i36 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph163.prol.loopexit, label %scalar.ph163.prol

scalar.ph163.prol:                                ; preds = %scalar.ph163.preheader, %scalar.ph163.prol
  %.09.i.i.i.i.i.i.i39.prol = phi i64 [ %i.bl, %scalar.ph163.prol ], [ %.09.i.i.i.i.i.i.i39.ph, %scalar.ph163.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph163.prol ], [ 0, %scalar.ph163.preheader ]
  %gep.i.i.i.i.i.i.i40.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39.prol ; 2 uses
  %i.bi = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bj = load double, ptr %gep.i.i.i.i.i.i.i40.prol, align 8, !tbaa !24
  %i.bk = fadd double %i.bi, %i.bj
  store double %i.bk, ptr %gep.i.i.i.i.i.i.i40.prol, align 8, !tbaa !24
  %i.bl = add nuw nsw i64 %.09.i.i.i.i.i.i.i39.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph163.prol.loopexit, label %scalar.ph163.prol, !llvm.loop !158

scalar.ph163.prol.loopexit:                       ; preds = %scalar.ph163.prol, %scalar.ph163.preheader
  %.09.i.i.i.i.i.i.i39.unr = phi i64 [ %.09.i.i.i.i.i.i.i39.ph, %scalar.ph163.preheader ], [ %i.bl, %scalar.ph163.prol ]
  %i.bm = sub nsw i64 %.09.i.i.i.i.i.i.i39.ph, %i.as
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph163

._crit_edge.i.i.i.i.i.i.i42:                      ; preds = %scalar.ph163.prol.loopexit, %scalar.ph163, %middle.block174
  %i.bo = add nuw nsw i64 %.0810.i.i.i.i.i.i.i37, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i43 = icmp eq i64 %i.bo, %i.at
  br i1 %exitcond12.not.i.i.i.i.i.i.i43, label %_ZN5Eigen12VectorwiseOpINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i36, !llvm.loop !13

scalar.ph163:                                     ; preds = %scalar.ph163.prol.loopexit, %scalar.ph163
  %.09.i.i.i.i.i.i.i39 = phi i64 [ %i.ce, %scalar.ph163 ], [ %.09.i.i.i.i.i.i.i39.unr, %scalar.ph163.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i.i40 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39 ; 2 uses
  %i.bp = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bq = load double, ptr %gep.i.i.i.i.i.i.i40, align 8, !tbaa !24
  %i.br = fadd double %i.bp, %i.bq
  store double %i.br, ptr %gep.i.i.i.i.i.i.i40, align 8, !tbaa !24
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.1 = getelementptr i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bt = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bu = load double, ptr %gep.i.i.i.i.i.i.i40.1, align 8, !tbaa !24
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %gep.i.i.i.i.i.i.i40.1, align 8, !tbaa !24
  %i.bw = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.2 = getelementptr i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bx = load double, ptr %i.bb, align 8, !tbaa !24
  %i.by = load double, ptr %gep.i.i.i.i.i.i.i40.2, align 8, !tbaa !24
  %i.bz = fadd double %i.bx, %i.by
  store double %i.bz, ptr %gep.i.i.i.i.i.i.i40.2, align 8, !tbaa !24
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.3 = getelementptr i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cb = load double, ptr %i.bb, align 8, !tbaa !24
  %i.cc = load double, ptr %gep.i.i.i.i.i.i.i40.3, align 8, !tbaa !24
  %i.cd = fadd double %i.cb, %i.cc
  store double %i.cd, ptr %gep.i.i.i.i.i.i.i40.3, align 8, !tbaa !24
  %i.ce = add nuw nsw i64 %.09.i.i.i.i.i.i.i39, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i41.3 = icmp eq i64 %i.ce, %i.as
  br i1 %exitcond.not.i.i.i.i.i.i.i41.3, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph163, !llvm.loop !159

_ZN5Eigen12VectorwiseOpINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i42, %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret void

bb.b:                                             ; preds = %bb.a
  %i.cf = fmul double %i.e, %i.u
  %i.cg = fdiv double %i.cf, %i.r
  %i.ch = tail call double @llvm.ceil.f64(double %i.cg)
  %i.ci = fptosi double %i.ch to i32
  store i32 %i.ci, ptr %4, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not.1 = and i1 %i.m, %i.g
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = fmul double %i.f, %i.u
  %i.ck = fdiv double %i.cj, %i.r
  %i.cl = tail call double @llvm.ceil.f64(double %i.ck)
  %i.cm = fptosi double %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.m, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %4, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = fmul double %i.l, %i.u
  %i.cp = fdiv double %i.co, %i.r
  %i.cq = tail call double @llvm.ceil.f64(double %i.cp)
  %i.cr = fptosi double %i.cq to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.cs = phi i32 [ %.pre, %._crit_edge ], [ %i.cr, %bb.f ]
  %i.ct = load <2 x i32>, ptr %4, align 4, !tbaa !36
  %i.cu = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.cv = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cw = add nsw <2 x i32> %i.ct, %i.cv
  store <2 x i32> %i.cw, ptr %4, align 4, !tbaa !36
  %i.cx = getelementptr i8, ptr %4, i64 8         ; 2 uses
  %i.cy = add nsw i32 %i.cs, %i.s
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !36
  tail call void @_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cz = sitofp i32 %2 to double                 ; 2 uses
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !36
  %i.db = sitofp i32 %i.da to double
  %i.dc = fadd double %i.db, -1.000000e+00        ; 2 uses
  %11 = fdiv double %i.cz, %i.dc
  %i.dd = load <2 x double>, ptr %i.a, align 8, !tbaa !31
  %i.de = load <2 x double>, ptr %0, align 8, !tbaa !31
  %i.df = fsub <2 x double> %i.dd, %i.de
  %i.dg = load double, ptr %i.h, align 8, !tbaa !24
  %i.dh = load double, ptr %i.i, align 8, !tbaa !24
  %12 = fsub double %i.dg, %i.dh
  %13 = fmul double %11, 2.000000e+00
  %i.di = fsub double 1.000000e+00, %13
  %14 = fdiv double %12, %i.di                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.dj = load <2 x i32>, ptr %4, align 4, !tbaa !36
  %i.dk = sitofp <2 x i32> %i.dj to <2 x double>
  %i.dl = fadd <2 x double> %i.dk, splat (double -1.000000e+00) ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x double> %i.dn, %i.dl
  %i.dp = fmul <2 x double> %i.do, splat (double 2.000000e+00)
  %i.dq = fsub <2 x double> splat (double 1.000000e+00), %i.dp
  %i.dr = fdiv <2 x double> %i.df, %i.dq          ; 2 uses
  %.sroa.0120.0.vec.extract = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %.sroa.0120.8.vec.extract = extractelement <2 x double> %i.dr, i64 1 ; 2 uses
  %i.ds = fcmp ogt double %.sroa.0120.8.vec.extract, %.sroa.0120.0.vec.extract ; 2 uses
  %.sroa.0.0.i.i31 = zext i1 %i.ds to i64
  %.sroa.8.0.i.i32 = select i1 %i.ds, double %.sroa.0120.8.vec.extract, double %.sroa.0120.0.vec.extract ; 2 uses
  %i.dt = fcmp ogt double %14, %.sroa.8.0.i.i32   ; 2 uses
  %.sroa.0.1.i.i33 = select i1 %i.dt, i64 2, i64 %.sroa.0.0.i.i31
  %.sroa.8.1.i.i34 = select i1 %i.dt, double %14, double %.sroa.8.0.i.i32 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.0.1.i.i33
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !36
  %i.dw = sitofp i32 %i.dv to double
  %i.dx = fadd double %i.dw, -1.000000e+00        ; 2 uses
  %15 = insertelement <2 x double> poison, double %.sroa.8.1.i.i34, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x double> %i.dl, %16
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fdiv <2 x double> %17, %i.dz
  store <2 x double> %18, ptr %9, align 16, !tbaa !24
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %20 = fmul double %i.dc, %.sroa.8.1.i.i34
  %21 = fdiv double %20, %i.dx
  store double %21, ptr %19, align 16, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !29
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !30 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !82 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  %i.eg = icmp sgt i64 %i.ec, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.ec, 4
  %n.vec = and i64 %i.ec, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br label %.preheader.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10voxel_gridIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarEiiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::AlignedBox", align 16 ; 9 uses
  %7 = alloca %"class.Eigen::Matrix.3", align 16  ; 5 uses
  %8 = alloca %"class.Eigen::Matrix.3", align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %6, align 16, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.b = load ptr, ptr %0, align 8, !tbaa !29, !noalias !169 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30, !noalias !169 ; 15 uses
  %i.e = icmp sgt i64 %i.d, 1                     ; 2 uses
  %i.f = add i64 %i.d, -1                         ; 4 uses
  %i.g = add i64 %i.d, -2                         ; 2 uses
  %xtraiter129 = and i64 %i.f, 3                  ; 3 uses
  %i.h = icmp ult i64 %i.g, 3
  %unroll_iter134 = and i64 %i.f, -4
  %lcmp.mod131.not = icmp eq i64 %xtraiter129, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter129, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, %bb.a
  %.010.i.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.db, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.i = mul nsw i64 %.010.i.i.i.i.i.i.i, %i.d
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i ; 17 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = lshr exact i64 %i.k, 3
  %i.n = and i64 %i.m, 1
  %i.o = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.d, %bb.b ] ; 10 uses
  %i.p = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.q = sdiv i64 %i.p, 4
  %i.r = shl nsw i64 %i.q, 2                      ; 2 uses
  %i.s = sdiv i64 %i.p, 2
  %i.t = shl nsw i64 %i.s, 1                      ; 2 uses
  %i.u = add nsw i64 %i.r, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.v = add nsw i64 %i.t, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.p, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.x = load <2 x double>, ptr %i.w, align 1, !tbaa !31 ; 3 uses
  %i.y = icmp sgt i64 %i.p, 3
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load <2 x double>, ptr %i.z, align 1, !tbaa !31 ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.p, 7
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aa, %bb.e ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.x, %bb.e ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ac = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #8, !srcloc !32 ; 2 uses
  %i.ad = icmp sgt i64 %i.t, %i.r
  br i1 %i.ad, label %bb.f, label %bb.g

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !31
  %i.ag = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.af) #8, !srcloc !32 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.j, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 48
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !31
  %i.ak = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.aj) #8, !srcloc !32 ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.al = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.u
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.u
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !31
  %i.ao = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac, <2 x double> %i.an) #8, !srcloc !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.x, %bb.d ], [ %i.ao, %bb.f ], [ %i.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.ap = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = select i1 %i.ap, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ar = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.g
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.as = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bs, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.aq, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.br, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:    ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ax, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.aw, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.au = load double, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = fcmp olt double %i.au, %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.aw = select i1 %i.av, double %i.au, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ax = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !165

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.g
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.aq, %bb.g ], [ %i.br, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.aw, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.ay = icmp slt i64 %i.v, %i.d
  br i1 %i.ay, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bs, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.aq, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.br, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = fcmp olt double %i.ba, %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = select i1 %i.bb, double %i.ba, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.bc
  %i.bh = select i1 %i.bg, double %i.bf, double %i.bc ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bh
  %i.bm = select i1 %i.bl, double %i.bk, double %i.bh ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %i.bq = fcmp olt double %i.bp, %i.bm
  %i.br = select i1 %i.bq, double %i.bp, double %i.bm ; 3 uses
  %i.bs = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bw, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24 ; 2 uses
  %i.bv = fcmp olt double %i.bu, %.189.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = select i1 %i.bv, double %i.bu, double %.189.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.by = icmp slt i64 %i.bx, %i.d
  br i1 %i.by, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12ArrayWrapperIKNS_16PartialReduxExprIKNS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, !llvm.loop !2

end_hunk_0
begin_hunk_1_@_ZN3igl10voxel_gridIfN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLi3ELi1ELi0ELi3ELi1EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE:bb.a
  br i1 %i.m, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ej = fmul float %i.l, %i.u
  %i.ek = fdiv float %i.ej, %i.r
  %i.el = tail call noundef float @llvm.ceil.f32(float %i.ek)
  %i.em = fptosi float %i.el to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.en = phi i32 [ %.pre, %._crit_edge ], [ %i.em, %bb.f ]
  %i.eo = load <2 x i32>, ptr %4, align 4, !tbaa !36
  %i.ep = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.eq = shufflevector <2 x i32> %i.ep, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.er = add nsw <2 x i32> %i.eo, %i.eq
  store <2 x i32> %i.er, ptr %4, align 4, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.et = add nsw i32 %i.en, %i.s
  store i32 %i.et, ptr %i.es, align 4, !tbaa !36
  tail call void @_ZN3igl4gridIN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEENS2_IfLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.eu = sitofp i32 %2 to float                  ; 2 uses
  %i.ev = load i32, ptr %i.es, align 4, !tbaa !36
  %i.ew = sitofp i32 %i.ev to float
  %i.ex = fadd float %i.ew, -1.000000e+00         ; 2 uses
  %i.ey = fdiv float %i.eu, %i.ex
  %i.ez = load float, ptr %i.h, align 4, !tbaa !55
  %i.fa = load float, ptr %i.i, align 4, !tbaa !55
  %i.fb = fsub float %i.ez, %i.fa
  %i.fc = fmul float %i.ey, 2.000000e+00
  %i.fd = fsub float 1.000000e+00, %i.fc
  %i.fe = fdiv float %i.fb, %i.fd                 ; 2 uses
  %i.ff = load <2 x i32>, ptr %4, align 4, !tbaa !36
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>
  %i.fh = fadd <2 x float> %i.fg, splat (float -1.000000e+00) ; 2 uses
  %i.fi = load <2 x float>, ptr %i.a, align 4, !tbaa !55
  %i.fj = load <2 x float>, ptr %0, align 4, !tbaa !55
  %i.fk = fsub <2 x float> %i.fi, %i.fj
  %i.fl = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fdiv <2 x float> %i.fm, %i.fh
  %i.fo = fmul <2 x float> %i.fn, splat (float 2.000000e+00)
  %i.fp = fsub <2 x float> splat (float 1.000000e+00), %i.fo
  %i.fq = fdiv <2 x float> %i.fk, %i.fp           ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0 ; 2 uses
  %i.fs = extractelement <2 x float> %i.fq, i64 1 ; 2 uses
  %i.ft = fcmp ogt float %i.fs, %i.fr             ; 2 uses
  %.sroa.0.0.i.i31 = zext i1 %i.ft to i64
  %.sroa.8.0.i.i32 = select i1 %i.ft, float %i.fs, float %i.fr ; 2 uses
  %i.fu = fcmp ogt float %i.fe, %.sroa.8.0.i.i32  ; 2 uses
  %.sroa.0.1.i.i33 = select i1 %i.fu, i64 2, i64 %.sroa.0.0.i.i31
  %.sroa.8.1.i.i34 = select i1 %i.fu, float %i.fe, float %.sroa.8.0.i.i32 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.0.1.i.i33
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !36
  %i.fx = sitofp i32 %i.fw to double
  %i.fy = fadd double %i.fx, -1.000000e+00
  %i.fz = fptrunc double %i.fy to float           ; 2 uses
  %i.ga = insertelement <2 x float> poison, float %.sroa.8.1.i.i34, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.fh, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fdiv <2 x float> %i.gc, %i.ge           ; 5 uses
  %i.gg = fmul float %i.ex, %.sroa.8.1.i.i34
  %i.gh = fdiv float %i.gg, %i.fz                 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gj = load ptr, ptr %3, align 8, !tbaa !59    ; 11 uses
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !58 ; 9 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEELi1EEmLINS_5ArrayIfLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.gk, 36
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader187, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.gm = add nsw i64 %i.gk, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gm, i64 12) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gn = getelementptr i8, ptr %i.gj, i64 %mul.result
  %i.go = icmp ult ptr %i.gn, %i.gj
  %scevgep = getelementptr i8, ptr %i.gj, i64 4   ; 2 uses
  %i.gp = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.gq = icmp ult ptr %i.gp, %scevgep
  %scevgep157 = getelementptr i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gr = getelementptr i8, ptr %scevgep157, i64 %mul.result
  %i.gs = icmp ult ptr %i.gr, %scevgep157
  %i.gt = or i1 %i.gs, %mul.overflow
  %i.gu = or i1 %i.gq, %i.go
  %i.gv = or i1 %i.gu, %i.gt
  br i1 %i.gv, label %.lr.ph.i.i.i.i.i.i.i.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.gk, 9223372036854775804     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat159 = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert160 = insertelement <4 x float> poison, float %i.gh, i64 0
  %broadcast.splat161 = shufflevector <4 x float> %broadcast.splatinsert160, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.gw = mul i64 %index, 12
  %i.gx = mul i64 %index, 12
  %i.gy = mul i64 %index, 12
  %i.gz = mul i64 %index, 12
  %i.ha = getelementptr i8, ptr %i.gj, i64 %i.gw  ; 4 uses
  %i.hb = getelementptr i8, ptr %i.gj, i64 %i.gx  ; 3 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 12
  %i.hd = getelementptr i8, ptr %i.gj, i64 %i.gy  ; 3 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 24
  %i.hf = getelementptr i8, ptr %i.gj, i64 %i.gz  ; 3 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 36
  %i.hh = load float, ptr %i.ha, align 4, !tbaa !55
  %i.hi = load float, ptr %i.hc, align 4, !tbaa !55
  %i.hj = load float, ptr %i.he, align 4, !tbaa !55
  %i.hk = load float, ptr %i.hg, align 4, !tbaa !55
  %i.hl = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 2
  %i.ho = insertelement <4 x float> %i.hn, float %i.hk, i64 3
  %i.hp = fmul <4 x float> %broadcast.splat, %i.ho
  %i.hq = getelementptr i8, ptr %i.ha, i64 4
  %i.hr = getelementptr i8, ptr %i.hb, i64 16
  %i.hs = getelementptr i8, ptr %i.hd, i64 28
  %i.ht = getelementptr i8, ptr %i.hf, i64 40
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !55
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !55
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !55
  %i.hx = load float, ptr %i.ht, align 4, !tbaa !55
  %i.hy = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 1
  %i.ia = insertelement <4 x float> %i.hz, float %i.hw, i64 2
  %i.ib = insertelement <4 x float> %i.ia, float %i.hx, i64 3
  %i.ic = fmul <4 x float> %broadcast.splat159, %i.ib
  %i.id = getelementptr i8, ptr %i.ha, i64 8
  %i.ie = getelementptr i8, ptr %i.hb, i64 20
  %i.if = getelementptr i8, ptr %i.hd, i64 32
  %i.ig = getelementptr i8, ptr %i.hf, i64 44
  %i.ih = load float, ptr %i.id, align 4, !tbaa !55
  %i.ii = load float, ptr %i.ie, align 4, !tbaa !55
  %i.ij = load float, ptr %i.if, align 4, !tbaa !55
  %i.ik = load float, ptr %i.ig, align 4, !tbaa !55
  %i.il = insertelement <4 x float> poison, float %i.ih, i64 0
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 1
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 2
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 3
  %i.ip = fmul <4 x float> %broadcast.splat161, %i.io
  %i.iq = shufflevector <4 x float> %i.hp, <4 x float> %i.ic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ir = shufflevector <4 x float> %i.ip, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.iq, <8 x float> %i.ir, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ha, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEELi1EEmLINS_5ArrayIfLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader187

.lr.ph.i.i.i.i.i.i.i.preheader187:                ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.gk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader187
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.05.i.i.i.i.i.i.i.ph, 12
  %i.it = getelementptr i8, ptr %i.gj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol ; 3 uses
  %i.iu = load <2 x float>, ptr %i.it, align 4, !tbaa !55
  %i.iv = fmul <2 x float> %i.gf, %i.iu
  store <2 x float> %i.iv, ptr %i.it, align 4, !tbaa !55
  %i.iw = getelementptr i8, ptr %i.it, i64 8      ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !55
  %i.iy = fmul float %i.gh, %i.ix
  store float %i.iy, ptr %i.iw, align 4, !tbaa !55
  %i.iz = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader187
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader187 ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ja = icmp eq i64 %i.gk, %.neg
  br i1 %i.ja, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEELi1EEmLINS_5ArrayIfLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i
}

declare void @_ZN3igl4gridIN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEENS2_IfLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10voxel_gridIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLi3ELi1ELi0ELi3ELi1EEEEEvRKNS1_10AlignedBoxIT_Li3EEEiiRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.1710", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.804", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1731", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Array.622", align 16 ; 5 uses
  %10 = alloca %"class.Eigen::Matrix.3", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !24
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !24
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.f = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.g = fcmp ogt double %i.f, %i.e               ; 3 uses
  %.sroa.0.0.i.i = zext i1 %i.g to i64
  %.sroa.8.0.i.i = select i1 %i.g, double %i.f, double %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load double, ptr %i.h, align 8, !tbaa !24
  %i.k = load double, ptr %i.i, align 8, !tbaa !24
  %i.l = fsub double %i.j, %i.k                   ; 2 uses
  %i.m = fcmp ule double %i.l, %.sroa.8.0.i.i     ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.m, i64 %.sroa.0.0.i.i, i64 2 ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.1.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.1.i.i
  %i.p = load double, ptr %i.n, align 8, !tbaa !24
  %i.q = load double, ptr %i.o, align 8, !tbaa !24
  %i.r = fsub double %i.p, %i.q                   ; 3 uses
  %i.s = shl nsw i32 %2, 1                        ; 3 uses
  %i.t = sub nsw i32 %1, %i.s                     ; 2 uses
  %i.u = sitofp i32 %i.t to double                ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.0.1.i.i
  store i32 %i.t, ptr %i.v, align 4, !tbaa !36
  %.not = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.w = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.ec
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.eb, i64 %i.w ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %9, i64 %.0810.i.i.i.i.i.i.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !24 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load = load <2 x double>, ptr %i.z, align 8, !tbaa !24
  %wide.load161 = load <2 x double>, ptr %i.aa, align 8, !tbaa !24
  %i.ab = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ac = fmul <2 x double> %broadcast.splat, %wide.load161
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !24
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph, %middle.block
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.ee
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.ah, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i ; 2 uses
  %i.af = load double, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.ag = fmul double %i.y, %i.af
  store double %i.ag, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.ah = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.ec
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !233

_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.ai = sitofp i64 %i.ec to double
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7, !noalias !242
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.aj, align 8, !tbaa !38, !noalias !242
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !38, !noalias !242
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double 2.000000e+00, ptr %i.al, align 8, !tbaa !40, !noalias !242
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %3, ptr %i.am, align 8, !tbaa !79, !noalias !242
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 80
  store double %i.ai, ptr %i.an, align 8, !tbaa !40, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7, !noalias !242
  store ptr %10, ptr %6, align 8, !tbaa !38, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7, !noalias !242
  store ptr %6, ptr %7, align 8, !tbaa !43, !noalias !242
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ao, align 8, !tbaa !81, !noalias !242
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.ap, align 8, !tbaa !46, !noalias !242
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %10, ptr %i.aq, align 8, !tbaa !48, !noalias !242
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS7_INS0_18scalar_quotient_opIddEEKNS7_INS0_13scalar_sum_opIddEEKNS4_IdLi3ELi1ELi0ELi3ELi1EEESG_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEEKNS7_ISC_KNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNSJ_ISL_KNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS18_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7, !noalias !242
  %i.ar = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.as = load i64, ptr %i.ea, align 8, !tbaa !30 ; 10 uses
  %i.at = load i64, ptr %i.ed, align 8, !tbaa !82 ; 4 uses
  %i.au = icmp sgt i64 %i.at, 0
  %i.av = icmp sgt i64 %i.as, 0
  %or.cond.i.i.i.i.i.i35 = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i.i.i.i.i.i35, label %.preheader.i.i.i.i.i.i.i36.preheader, label %_ZN5Eigen12VectorwiseOpINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i36.preheader:             ; preds = %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  %i.aw = mul i64 %i.at, %i.as
  %i.ax = shl i64 %i.aw, 3
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.ax
  %i.ay = shl i64 %i.at, 3
  %scevgep162 = getelementptr i8, ptr %10, i64 %i.ay
  %min.iters.check164 = icmp ult i64 %i.as, 4
  %bound0 = icmp ult ptr %i.ar, %scevgep162
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.as, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.az = or i1 %found.conflict, %stride.check
  %n.vec166 = and i64 %i.as, 8070450532247928828  ; 3 uses
  %cmp.n175 = icmp eq i64 %i.as, %n.vec166
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i36

.preheader.i.i.i.i.i.i.i36:                       ; preds = %.preheader.i.i.i.i.i.i.i36.preheader, %._crit_edge.i.i.i.i.i.i.i42
  %.0810.i.i.i.i.i.i.i37 = phi i64 [ %i.bo, %._crit_edge.i.i.i.i.i.i.i42 ], [ 0, %.preheader.i.i.i.i.i.i.i36.preheader ] ; 3 uses
  %i.ba = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i37, %i.as
  %invariant.gep.i.i.i.i.i.i.i38 = getelementptr [8 x i8], ptr %i.ar, i64 %i.ba ; 6 uses
  %i.bb = getelementptr [8 x i8], ptr %10, i64 %.0810.i.i.i.i.i.i.i37 ; 6 uses
  %brmerge = select i1 %min.iters.check164, i1 true, i1 %i.az
  br i1 %brmerge, label %scalar.ph163.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.preheader.i.i.i.i.i.i.i36
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !24, !alias.scope !243
  %broadcast.splatinsert171 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat172 = shufflevector <2 x double> %broadcast.splatinsert171, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %index168 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %wide.load169 = load <2 x double>, ptr %i.bd, align 8, !tbaa !24, !alias.scope !244, !noalias !243
  %wide.load170 = load <2 x double>, ptr %i.be, align 8, !tbaa !24, !alias.scope !244, !noalias !243
  %i.bf = fadd <2 x double> %broadcast.splat172, %wide.load169
  %i.bg = fadd <2 x double> %broadcast.splat172, %wide.load170
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !24, !alias.scope !244, !noalias !243
  store <2 x double> %i.bg, ptr %i.be, align 8, !tbaa !24, !alias.scope !244, !noalias !243
  %index.next173 = add nuw i64 %index168, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.bh, label %middle.block174, label %vector.body167, !llvm.loop !239

middle.block174:                                  ; preds = %vector.body167
  br i1 %cmp.n175, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph163.preheader

scalar.ph163.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i36, %middle.block174
  %.09.i.i.i.i.i.i.i39.ph = phi i64 [ %n.vec166, %middle.block174 ], [ 0, %.preheader.i.i.i.i.i.i.i36 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph163.prol.loopexit, label %scalar.ph163.prol

scalar.ph163.prol:                                ; preds = %scalar.ph163.preheader, %scalar.ph163.prol
  %.09.i.i.i.i.i.i.i39.prol = phi i64 [ %i.bl, %scalar.ph163.prol ], [ %.09.i.i.i.i.i.i.i39.ph, %scalar.ph163.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph163.prol ], [ 0, %scalar.ph163.preheader ]
  %gep.i.i.i.i.i.i.i40.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39.prol ; 2 uses
  %i.bi = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bj = load double, ptr %gep.i.i.i.i.i.i.i40.prol, align 8, !tbaa !24
  %i.bk = fadd double %i.bi, %i.bj
  store double %i.bk, ptr %gep.i.i.i.i.i.i.i40.prol, align 8, !tbaa !24
  %i.bl = add nuw nsw i64 %.09.i.i.i.i.i.i.i39.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph163.prol.loopexit, label %scalar.ph163.prol, !llvm.loop !240

scalar.ph163.prol.loopexit:                       ; preds = %scalar.ph163.prol, %scalar.ph163.preheader
  %.09.i.i.i.i.i.i.i39.unr = phi i64 [ %.09.i.i.i.i.i.i.i39.ph, %scalar.ph163.preheader ], [ %i.bl, %scalar.ph163.prol ]
  %i.bm = sub nsw i64 %.09.i.i.i.i.i.i.i39.ph, %i.as
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph163

._crit_edge.i.i.i.i.i.i.i42:                      ; preds = %scalar.ph163.prol.loopexit, %scalar.ph163, %middle.block174
  %i.bo = add nuw nsw i64 %.0810.i.i.i.i.i.i.i37, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i43 = icmp eq i64 %i.bo, %i.at
  br i1 %exitcond12.not.i.i.i.i.i.i.i43, label %_ZN5Eigen12VectorwiseOpINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i36, !llvm.loop !13

scalar.ph163:                                     ; preds = %scalar.ph163.prol.loopexit, %scalar.ph163
  %.09.i.i.i.i.i.i.i39 = phi i64 [ %i.ce, %scalar.ph163 ], [ %.09.i.i.i.i.i.i.i39.unr, %scalar.ph163.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i.i40 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39 ; 2 uses
  %i.bp = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bq = load double, ptr %gep.i.i.i.i.i.i.i40, align 8, !tbaa !24
  %i.br = fadd double %i.bp, %i.bq
  store double %i.br, ptr %gep.i.i.i.i.i.i.i40, align 8, !tbaa !24
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.1 = getelementptr i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bt = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bu = load double, ptr %gep.i.i.i.i.i.i.i40.1, align 8, !tbaa !24
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %gep.i.i.i.i.i.i.i40.1, align 8, !tbaa !24
  %i.bw = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.2 = getelementptr i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bx = load double, ptr %i.bb, align 8, !tbaa !24
  %i.by = load double, ptr %gep.i.i.i.i.i.i.i40.2, align 8, !tbaa !24
  %i.bz = fadd double %i.bx, %i.by
  store double %i.bz, ptr %gep.i.i.i.i.i.i.i40.2, align 8, !tbaa !24
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i38, i64 %.09.i.i.i.i.i.i.i39
  %gep.i.i.i.i.i.i.i40.3 = getelementptr i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cb = load double, ptr %i.bb, align 8, !tbaa !24
  %i.cc = load double, ptr %gep.i.i.i.i.i.i.i40.3, align 8, !tbaa !24
  %i.cd = fadd double %i.cb, %i.cc
  store double %i.cd, ptr %gep.i.i.i.i.i.i.i40.3, align 8, !tbaa !24
  %i.ce = add nuw nsw i64 %.09.i.i.i.i.i.i.i39, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i41.3 = icmp eq i64 %i.ce, %i.as
  br i1 %exitcond.not.i.i.i.i.i.i.i41.3, label %._crit_edge.i.i.i.i.i.i.i42, label %scalar.ph163, !llvm.loop !241

_ZN5Eigen12VectorwiseOpINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEpLINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i42, %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret void

bb.b:                                             ; preds = %bb.a
  %i.cf = fmul double %i.e, %i.u
  %i.cg = fdiv double %i.cf, %i.r
  %i.ch = tail call double @llvm.ceil.f64(double %i.cg)
  %i.ci = fptosi double %i.ch to i32
  store i32 %i.ci, ptr %4, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not.1 = and i1 %i.m, %i.g
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = fmul double %i.f, %i.u
  %i.ck = fdiv double %i.cj, %i.r
  %i.cl = tail call double @llvm.ceil.f64(double %i.ck)
  %i.cm = fptosi double %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.m, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = fmul double %i.l, %i.u
  %i.cp = fdiv double %i.co, %i.r
  %i.cq = tail call double @llvm.ceil.f64(double %i.cp)
  %i.cr = fptosi double %i.cq to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.cs = phi i32 [ %.pre, %._crit_edge ], [ %i.cr, %bb.f ]
  %i.ct = load <2 x i32>, ptr %4, align 4, !tbaa !36
  %i.cu = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.cv = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cw = add nsw <2 x i32> %i.ct, %i.cv
  store <2 x i32> %i.cw, ptr %4, align 4, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cy = add nsw i32 %i.cs, %i.s
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !36
  tail call void @_ZN3igl4gridIN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cz = sitofp i32 %2 to double                 ; 2 uses
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !36
  %i.db = sitofp i32 %i.da to double
  %i.dc = fadd double %i.db, -1.000000e+00        ; 2 uses
  %11 = fdiv double %i.cz, %i.dc
  %i.dd = load <2 x double>, ptr %i.a, align 8, !tbaa !31
  %i.de = load <2 x double>, ptr %0, align 8, !tbaa !31
  %i.df = fsub <2 x double> %i.dd, %i.de
  %i.dg = load double, ptr %i.h, align 8, !tbaa !24
  %i.dh = load double, ptr %i.i, align 8, !tbaa !24
  %12 = fsub double %i.dg, %i.dh
  %13 = fmul double %11, 2.000000e+00
  %i.di = fsub double 1.000000e+00, %13
  %14 = fdiv double %12, %i.di                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.dj = load <2 x i32>, ptr %4, align 4, !tbaa !36
  %i.dk = sitofp <2 x i32> %i.dj to <2 x double>
  %i.dl = fadd <2 x double> %i.dk, splat (double -1.000000e+00) ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x double> %i.dn, %i.dl
  %i.dp = fmul <2 x double> %i.do, splat (double 2.000000e+00)
  %i.dq = fsub <2 x double> splat (double 1.000000e+00), %i.dp
  %i.dr = fdiv <2 x double> %i.df, %i.dq          ; 2 uses
  %.sroa.0120.0.vec.extract = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %.sroa.0120.8.vec.extract = extractelement <2 x double> %i.dr, i64 1 ; 2 uses
  %i.ds = fcmp ogt double %.sroa.0120.8.vec.extract, %.sroa.0120.0.vec.extract ; 2 uses
  %.sroa.0.0.i.i31 = zext i1 %i.ds to i64
  %.sroa.8.0.i.i32 = select i1 %i.ds, double %.sroa.0120.8.vec.extract, double %.sroa.0120.0.vec.extract ; 2 uses
  %i.dt = fcmp ogt double %14, %.sroa.8.0.i.i32   ; 2 uses
  %.sroa.0.1.i.i33 = select i1 %i.dt, i64 2, i64 %.sroa.0.0.i.i31
  %.sroa.8.1.i.i34 = select i1 %i.dt, double %14, double %.sroa.8.0.i.i32 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.0.1.i.i33
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !36
  %i.dw = sitofp i32 %i.dv to double
  %i.dx = fadd double %i.dw, -1.000000e+00        ; 2 uses
  %15 = insertelement <2 x double> poison, double %.sroa.8.1.i.i34, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x double> %i.dl, %16
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fdiv <2 x double> %17, %i.dz
  store <2 x double> %18, ptr %9, align 16, !tbaa !24
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %20 = fmul double %i.dc, %.sroa.8.1.i.i34
  %21 = fdiv double %20, %i.dx
  store double %21, ptr %19, align 16, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !29
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !30 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !82 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  %i.eg = icmp sgt i64 %i.ec, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen12VectorwiseOpINS_12ArrayWrapperINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1EEmLINS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.ec, 4
  %n.vec = and i64 %i.ec, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br label %.preheader.i.i.i.i.i.i.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare void @_ZN3igl4gridIN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

declare void @_ZN3igl4gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS7_INS0_18scalar_quotient_opIddEEKNS7_INS0_13scalar_sum_opIddEEKNS4_IdLi3ELi1ELi0ELi3ELi1EEESG_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEEKNS7_ISC_KNS_16PartialReduxExprINS4_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSJ_ISL_KS5_EEEEEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERS17_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !90, !align !91
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = lshr exact i64 %i.c, 3
  %i.e = and i64 %i.d, 1                          ; 3 uses
  %i.f = or disjoint i64 %i.e, 2                  ; 8 uses
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %.not, label %.lr.ph, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !90, !align !91
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258, !nonnull !90, !align !91 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !260, !nonnull !90, !align !91 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50, !noalias !261 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51, !noalias !261 ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br i1 %i.u, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i, label %.lr.ph.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i: ; preds = %.lr.ph.i
  %i.w = load double, ptr %i.l, align 8, !tbaa !24
  %i.x = load double, ptr %i.n, align 8, !tbaa !24
  %i.y = load double, ptr %i.o, align 8, !tbaa !40
  %i.z = fadd double %i.w, %i.x
  %i.aa = fdiv double %i.z, %i.y
  br label %.lr.ph.sink.split

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ab = icmp sgt i64 %i.t, 1
  %i.ac = load double, ptr %i.l, align 8, !tbaa !24 ; 2 uses
  %i.ad = load double, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.ae = load double, ptr %i.o, align 8, !tbaa !40 ; 2 uses
  %i.af = load double, ptr %i.r, align 8, !tbaa !24 ; 3 uses
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader:            ; preds = %.lr.ph.split.i
  %i.ag = add nsw i64 %i.t, -1                    ; 2 uses
  %i.ah = add nsw i64 %i.t, -2
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader
  %unroll_iter = and i64 %i.ag, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.i.i.us.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new
  %.01725.i.i.i.i.i.i.i.i.us.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.i.i.i.us.i = phi double [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.aj = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24
  %i.al = fadd double %.02324.i.i.i.i.i.i.i.i.us.i, %i.ak
  %i.am = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.an = getelementptr i8, ptr %i.r, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24
  %i.aq = fadd double %i.al, %i.ap
  %i.ar = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.as = getelementptr i8, ptr %i.r, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %i.au = load double, ptr %i.at, align 8, !tbaa !24
  %i.av = fadd double %i.aq, %i.au
  %i.aw = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i, 24
  %i.ax = getelementptr i8, ptr %i.r, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 72
  %i.az = load double, ptr %i.ay, align 8, !tbaa !24
  %i.ba = fadd double %i.av, %i.az                ; 3 uses
  %i.bb = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.us.i, !llvm.loop !247

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader:       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.bb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.i.us.i.epil.init = phi double [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.ba, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.i.i.i.us.i.epil:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.i.i.i.us.i.epil = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.i.i.us.i.epil = phi double [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.i.us.i.epil, 24
  %i.bc = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %.02324.i.i.i.i.i.i.i.i.us.i.epil, %i.bd ; 2 uses
  %i.bf = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil, !llvm.loop !248

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa71 = phi double [ %i.ba, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.us.i.epil ]
  %i.bg = fadd double %i.ac, %i.ad
  %i.bh = fdiv double %i.bg, %i.ae
  br label %.lr.ph.sink.split

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i: ; preds = %.lr.ph.split.i
  %i.bi = fadd double %i.ac, %i.ad
  %i.bj = fdiv double %i.bi, %i.ae
  br label %.lr.ph.sink.split

.lr.ph.sink.split:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i
  %.sink = phi double [ 0.000000e+00, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i ], [ %.lcssa71, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ %i.af, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i ]
  %.sink61 = phi double [ %i.aa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i ], [ %i.bh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ %i.bj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i ]
  %i.bk = load double, ptr %i.v, align 8, !tbaa !40
  %i.bl = fdiv double %.sink, %i.bk
  %i.bm = fsub double %.sink61, %i.bl
  store double %i.bm, ptr %i.h, align 8, !tbaa !24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %.0.i36 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit ], [ 1, %.lr.ph.sink.split ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !90, !align !91
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !93
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !258, !nonnull !90, !align !91 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !95
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i36
  %i.bu = load <2 x double>, ptr %i.bt, align 1, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !95
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.0.i36
  %i.by = load <2 x double>, ptr %i.bx, align 1, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.ca = load <1 x double>, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !260, !nonnull !90, !align !91 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i36 ; 7 uses
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !51 ; 7 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %bb.a

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS6_INS0_18scalar_quotient_opIddEEKNS6_INS0_13scalar_sum_opIddEEKNS3_IdLi3ELi1ELi0ELi3ELi1EEESF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEEKNS6_ISB_KNS_16PartialReduxExprINS3_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSI_ISK_KS4_EEEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  br i1 %.not, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_9TransposeIKNS9_INS0_18scalar_quotient_opIddEEKNS9_INS0_13scalar_sum_opIddEEKNS6_IdLi3ELi1ELi0ELi3ELi1EEESI_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESI_EEEEEEKNS9_ISE_KNS_16PartialReduxExprINS6_IdLin1ELi3ELi1ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNSL_ISN_KS7_EEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit34

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.ci = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !90, !align !91
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !93 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !258, !nonnull !90, !align !91 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !95 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !260, !nonnull !90, !align !91 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
end_hunk_1
