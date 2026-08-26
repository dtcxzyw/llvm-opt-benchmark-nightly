Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_solid_signed_squared_distance?download=true
inline.NumInlined: 1738
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESL_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISL_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISL_EENS2_ISL_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIbbEEEEvRT_RKT0_RKT1_:bb.a

bb.j:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_18scalar_constant_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEE5coeffIlEEKSJ_T_.exit.i.i.i
  %i.ae = load ptr, ptr %3, align 8, !tbaa !28    ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !294
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i

bb.n:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ah, -1
  store atomic i32 %i.am, ptr %i.ag monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i

bb.o:                                             ; preds = %bb.k
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = atomicrmw sub ptr %i.ag, i32 1 release, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.q, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  fence acquire
  %i.ap = load ptr, ptr %3, align 8, !tbaa !28    ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(12) %i.ap) #23, !inline_history !294
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_18scalar_constant_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEE5coeffIlEEKSJ_T_.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 %.05.i
  %i.aw = xor i1 %i.ad, true
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ax = zext i1 %i.aw to i8
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !102
  %i.ay = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.m
  br i1 %exitcond.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit.loopexit, label %.lr.ph.i, !llvm.loop !295

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEESN_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISN_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISN_EENS3_ISN_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EE11assignCoeffEl.exit.i
  %.pre14 = load ptr, ptr %i.d, align 8, !tbaa !28
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit: ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit.loopexit, %bb.g
  %i.az = phi ptr [ %.pre14, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit.loopexit ], [ %i.f, %bb.g ] ; 4 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i13, label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #23, !inline_history !296
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bh = add nsw i32 %i.bc, -1
  store atomic i32 %i.bh, ptr %i.bb monotonic, align 4
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit

bb.x:                                             ; preds = %bb.t
  br i1 %i.bd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = atomicrmw sub ptr %i.bb, i32 1 release, align 4
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  fence acquire
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !28  ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(12) %i.bk) #23, !inline_history !296
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev.exit: ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEESO_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISO_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISO_EENS4_ISO_Lin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIbbEELi0EEELi1ELi0EE3runERS16_.exit, %bb.v, %bb.w, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.ab:                                            ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.ab ], [ %i.au, %bb.s ]
  call void @_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !297
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !297
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_LNS0_14ComparisonNameE4EEEKNS_12ArrayWrapperINS_6MatrixISJ_Lin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opISJ_EENS_5ArrayISJ_Lin1ELi1ELi0ELin1ELi1EEEEEEENS0_10IndexBasedESZ_SJ_SJ_E4DataD2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALeqIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.185, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.185, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = load double, ptr %i.d, align 16, !tbaa !11
  %i.e = fneg double %6                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.h = fcmp olt double %i.g, %i.e
  br i1 %i.h, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %8 = load double, ptr %7, align 8, !tbaa !11    ; 2 uses
  %9 = load double, ptr %i.i, align 16, !tbaa !11
  %i.j = fneg double %9                           ; 2 uses
  %i.k = fcmp olt double %8, %i.j
  br i1 %i.k, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp oeq double %i.g, %i.e
  %i.m = fcmp oeq double %8, %i.j
  %or.cond.i = and i1 %i.l, %i.m
  %i.n = zext i1 %or.cond.i to i16
  %i.o = or disjoint i16 %i.n, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i16 [ %i.o, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.p = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit
  %i.q = trunc i16 %.sroa.4.0.i to i1
  br label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.f:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.a, ptr %5, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !301
  %i.s = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.s, align 8, !tbaa !301
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.t, align 8, !tbaa !301
  %i.u = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.u) #36
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.s, align 8, !tbaa !301
  store ptr null, ptr %i.t, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.s, align 8, !tbaa !301
  store ptr null, ptr %i.t, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load atomic ptr, ptr %i.w monotonic, align 8 ; 10 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.y, ptr %3, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !301
  store ptr %2, ptr %i.s, align 8, !tbaa !301
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.t, align 8, !tbaa !301
  %i.aa = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aa) #36
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.s, align 8, !tbaa !301
  store ptr null, ptr %i.t, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.s, align 8, !tbaa !301
  store ptr null, ptr %i.t, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !145, !range !47, !noundef !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !145, !range !47, !noundef !48
  %.not.i.i = icmp eq i8 %i.af, %i.ah
  br i1 %.not.i.i, label %bb.m, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.m:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !136 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !136
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.n, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !44, !range !47, !noundef !48
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %i.ap, ptr %i.x, ptr %i.ar    ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.aj, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i
  %.not10.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not10.i.i.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  %i.av = load i8, ptr %i.au, align 1, !tbaa !44, !range !47, !noundef !48
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %i.aw, ptr %i.ad, ptr %i.ay
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.preheader.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %bb.o ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.as, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.ba = load i64, ptr %.0811.i.i.i, align 8, !tbaa !137
  %i.bb = load i64, ptr %.012.i.i.i, align 8, !tbaa !137
  %.not9.i.i.i = icmp eq i64 %i.ba, %i.bb
  br i1 %.not9.i.i.i, label %bb.o, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i13 = icmp eq ptr %i.bc, %i.at
  br i1 %.not.i.i.i13, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, label %.lr.ph.i.i.i, !llvm.loop !221

_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i: ; preds = %bb.o, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !145, !range !47, !noundef !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !145, !range !47, !noundef !48
  %.not13.i.i = icmp eq i8 %i.bh, %i.bj
  br i1 %.not13.i.i, label %bb.p, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.bl = load i64, ptr %i.bk, align 16, !tbaa !136 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !136
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !44, !range !47, !noundef !48
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = select i1 %i.br, ptr %i.be, ptr %i.bt   ; 2 uses
  %.idx14.i.i = shl nuw nsw i64 %i.bl, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx14.i.i
  %.not10.i5.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not10.i5.i.i, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, label %.lr.ph.i6.preheader.i.i

.lr.ph.i6.preheader.i.i:                          ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !44, !range !47, !noundef !48
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %i.by, ptr %i.bf, ptr %i.ca
  br label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %.lr.ph.i6.i.i, %.lr.ph.i6.preheader.i.i
  %.012.i7.i.i = phi ptr [ %i.cf, %.lr.ph.i6.i.i ], [ %i.cb, %.lr.ph.i6.preheader.i.i ] ; 2 uses
  %.0811.i8.i.i = phi ptr [ %i.ce, %.lr.ph.i6.i.i ], [ %i.bu, %.lr.ph.i6.preheader.i.i ] ; 2 uses
  %i.cc = load i64, ptr %.0811.i8.i.i, align 8, !tbaa !137
  %i.cd = load i64, ptr %.012.i7.i.i, align 8, !tbaa !137
  %.not9.i9.i.i = icmp eq i64 %i.cc, %i.cd        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i8.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i7.i.i, i64 8
end_hunk_0
begin_hunk_1_@_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev:bb.a
bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit3

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.r, align 16, !tbaa !28 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !63
  br label %_ZN4CGAL6HandleD2Ev.exit3

_ZN4CGAL6HandleD2Ev.exit3:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit3
  fence acquire
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !44, !range !47, !noundef !48
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !range !47
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i1.i.i.i = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 16
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #34, !inline_history !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !44, !range !47, !noundef !48
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  %i.az = load i8, ptr %i.ay, align 2, !range !47
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.aj, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #34, !inline_history !49
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #34, !inline_history !49
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit3, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_MulIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_MulIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.185, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.185, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !28  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.c, ptr %5, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !301
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !301
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !301
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !301
  store ptr null, ptr %i.f, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !28  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !301
  store ptr %2, ptr %i.e, align 8, !tbaa !301
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !301
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #36
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !301
  store ptr null, ptr %i.f, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !301
  store ptr null, ptr %i.f, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  %i.r = icmp eq ptr %i.j, %i.q
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %i.s, ptr noundef nonnull align 16 dereferenceable(27) %i.t, ptr noundef nonnull align 16 dereferenceable(27) %i.u)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.l

bb.k:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(27) %i.v)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc.i, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %bb.k, %.noexc.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  %6 = load double, ptr %i.x, align 16, !tbaa !11
  %i.aa = fneg double %6
  %i.ab = fcmp oeq double %i.z, %i.aa
  br i1 %i.ab, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ac = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1
  %i.af = fneg double %i.ad
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  store <2 x double> %i.ah, ptr %i.x, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.l, %bb.n, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ai, %bb.n ], [ %i.w, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.m, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.aj release, align 16
  %i.ak = load ptr, ptr %i.b, align 16, !tbaa !28 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i12 = icmp eq i8 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load atomic i32, ptr %i.am monotonic, align 4 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ak) #23, !inline_history !333
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.as = add nsw i32 %i.an, -1
  store atomic i32 %i.as, ptr %i.am monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.p
  br i1 %i.ao, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = atomicrmw sub ptr %i.am, i32 1 release, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.v, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.v:                                             ; preds = %bb.u, %bb.t
  fence acquire
  %i.av = load ptr, ptr %i.b, align 16, !tbaa !28 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #23, !inline_history !333
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  store ptr null, ptr %i.b, align 16, !tbaa !28
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.o
  %i.ba = load ptr, ptr %i.k, align 16, !tbaa !28 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.ba, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i2.i = icmp eq i8 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 4 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(12) %i.ba) #23, !inline_history !333
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.bi = add nsw i32 %i.bd, -1
  store atomic i32 %i.bi, ptr %i.bc monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.x
  br i1 %i.be, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = atomicrmw sub ptr %i.bc, i32 1 release, align 4
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.ad, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  fence acquire
  %i.bl = load ptr, ptr %i.k, align 16, !tbaa !28 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bl) #23, !inline_history !333
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z
  store ptr null, ptr %i.k, align 16, !tbaa !28
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::multiprecision::number.90", align 16 ; 21 uses
  %3 = alloca %"class.boost::multiprecision::number.90", align 16 ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  store i64 0, ptr %2, align 16, !tbaa !11, !alias.scope !334
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.c = load i8, ptr %i.b, align 2, !tbaa !146, !range !47, !noalias !334, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 16, !tbaa !136, !noalias !334
  store i64 %i.f, ptr %i.a, align 16, !tbaa !136, !alias.scope !334
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !145, !range !47, !noalias !334, !noundef !48
  store i8 %i.i, ptr %i.g, align 8, !tbaa !145, !alias.scope !334
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.j, align 1, !tbaa !44, !alias.scope !334
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 1, ptr %i.k, align 2, !tbaa !146, !alias.scope !334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !211
  br label %_ZN5boost14multiprecision9numeratorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !145, !range !47, !noalias !334, !noundef !48
  store i8 %i.n, ptr %i.l, align 8, !tbaa !145, !alias.scope !334
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  store i8 1, ptr %i.o, align 1, !tbaa !44, !alias.scope !334
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.p, align 2, !tbaa !146, !alias.scope !334
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !136, !noalias !334 ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711744) ; 2 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.c
  %.sroa.speculated16.i.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i, i64 8) ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.speculated16.i.i, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33, !noalias !334 ; 2 uses
end_hunk_1
