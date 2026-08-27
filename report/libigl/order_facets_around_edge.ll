Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edge?download=true
inline.NumInlined: 10255
inline.NumDeleted: 2799
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gj, 0
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gm = atomicrmw add ptr %i.gl, i32 1 monotonic, align 4 ; 0 uses
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.go = load atomic i32, ptr %i.gl monotonic, align 4
  %i.gp = add nsw i32 %i.go, 1
  store atomic i32 %i.gp, ptr %i.gl monotonic, align 4
  %i.gq = load ptr, ptr %i.gg, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load atomic i32, ptr %i.gr monotonic, align 4 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(12) %i.gq) #22, !inline_history !58
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = add nsw i32 %i.gs, -1
  store atomic i32 %i.gx, ptr %i.gr monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gz = load atomic i32, ptr %i.gy monotonic, align 4
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hb = atomicrmw sub ptr %i.gy, i32 1 release, align 4
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.bl, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  fence acquire
  %i.hd = load ptr, ptr %i.gg, align 8, !tbaa !20 ; 3 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(12) %i.hd) #22, !inline_history !58
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hi = load ptr, ptr %i.gi, align 8, !tbaa !20
  store ptr %i.hi, ptr %i.gg, align 8, !tbaa !20
  %i.hj = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %i.hj, %i.ga
  br i1 %exitcond292.not, label %.loopexit262.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148, !llvm.loop !59

.loopexit262.loopexit:                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i
  %.pre303 = load ptr, ptr %28, align 8, !tbaa !15, !noalias !60
  %.pre304 = load i64, ptr %i.cy, align 8, !tbaa !37, !noalias !60
  %.pre305 = load i64, ptr %i.cx, align 8, !tbaa !19
  br label %.loopexit262

.loopexit262:                                     ; preds = %.loopexit262.loopexit, %._crit_edge267
  %i.hk = phi i64 [ %.pre305, %.loopexit262.loopexit ], [ %.pre302, %._crit_edge267 ] ; 2 uses
  %i.hl = phi i64 [ %.pre304, %.loopexit262.loopexit ], [ %.pre301, %._crit_edge267 ] ; 4 uses
  %i.hm = phi ptr [ %.pre303, %.loopexit262.loopexit ], [ %.pre, %._crit_edge267 ] ; 2 uses
  %i.hn = load ptr, ptr %0, align 8, !tbaa !15, !noalias !63 ; 2 uses
  %i.ho = getelementptr inbounds [16 x i8], ptr %i.hn, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.cb ; 2 uses
  store ptr %i.hp, ptr %29, align 8, !tbaa !66, !alias.scope !60
  %i.hq = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.hl, ptr %i.hq, align 8, !tbaa !70, !alias.scope !60
  %i.hr = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %28, ptr %i.hr, align 8, !tbaa !71, !alias.scope !60
  %i.hs = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %i.cb, ptr %i.hs, align 8, !tbaa !70, !alias.scope !60
  %i.ht = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %i.ht, align 8, !tbaa !70, !alias.scope !60
  %i.hu = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i64 1, ptr %i.hu, align 8, !tbaa !73, !alias.scope !60
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.ho, ptr %11, align 8, !tbaa !76
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  store i64 %i.hw, ptr %i.hv, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.hp, ptr %12, align 8, !tbaa !78
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.hk, ptr %i.hx, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !80
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.hy, align 8, !tbaa !82
  %i.hz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.hz, align 8, !tbaa !84
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %29, ptr %i.ia, align 8, !tbaa !86
  %i.ib = icmp sgt i64 %i.hl, 0
  br i1 %i.ib, label %.lr.ph.i.i.i.i.i.i.i.i.i.i149, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i149:                    ; preds = %.loopexit262, %.noexc152
  %.05.i.i.i.i.i.i.i.i.i.i150 = phi i64 [ %i.ic, %.noexc152 ], [ 0, %.loopexit262 ] ; 2 uses
  invoke void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS3_IKSL_Li1ELin1ELb0EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %.05.i.i.i.i.i.i.i.i.i.i150)
          to label %.noexc152 unwind label %bb.bq

.noexc152:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i149
  %i.ic = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i150, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i151 = icmp eq i64 %i.ic, %i.hl
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i151, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i149, !llvm.loop !53

.loopexit.loopexit:                               ; preds = %.noexc152
  %.pre306 = load ptr, ptr %0, align 8, !tbaa !15, !noalias !88
  %.pre307 = load ptr, ptr %28, align 8, !tbaa !15, !noalias !91
  %.pre308 = load i64, ptr %i.cy, align 8, !tbaa !37, !noalias !91
  %.pre309 = load i64, ptr %i.b, align 8, !tbaa !19
  %.pre310 = load i64, ptr %i.cx, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit262
  %i.id = phi i64 [ %.pre310, %.loopexit.loopexit ], [ %i.hk, %.loopexit262 ]
  %i.ie = phi i64 [ %.pre309, %.loopexit.loopexit ], [ %i.hw, %.loopexit262 ]
  %i.if = phi i64 [ %.pre308, %.loopexit.loopexit ], [ %i.hl, %.loopexit262 ] ; 3 uses
  %i.ig = phi ptr [ %.pre307, %.loopexit.loopexit ], [ %i.hm, %.loopexit262 ]
  %i.ih = phi ptr [ %.pre306, %.loopexit.loopexit ], [ %i.hn, %.loopexit262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.ii = getelementptr inbounds [16 x i8], ptr %i.ih, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.ij = add nuw nsw i64 %i.ca, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.ij ; 2 uses
  store ptr %i.ik, ptr %30, align 8, !tbaa !66, !alias.scope !91
  %i.il = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.if, ptr %i.il, align 8, !tbaa !70, !alias.scope !91
  %i.im = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %28, ptr %i.im, align 8, !tbaa !71, !alias.scope !91
  %i.in = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 %i.ij, ptr %i.in, align 8, !tbaa !70, !alias.scope !91
  %i.io = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 0, ptr %i.io, align 8, !tbaa !70, !alias.scope !91
  %i.ip = getelementptr inbounds nuw i8, ptr %30, i64 48
  store i64 1, ptr %i.ip, align 8, !tbaa !73, !alias.scope !91
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.ii, ptr %7, align 8, !tbaa !76
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ie, ptr %i.iq, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ik, ptr %8, align 8, !tbaa !78
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.id, ptr %i.ir, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !80
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.is, align 8, !tbaa !82
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.it, align 8, !tbaa !84
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %30, ptr %i.iu, align 8, !tbaa !86
  %i.iv = icmp sgt i64 %i.if, 0
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i154, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i154:                    ; preds = %.loopexit, %.noexc157
  %.05.i.i.i.i.i.i.i.i.i.i155 = phi i64 [ %i.iw, %.noexc157 ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS3_IKSL_Li1ELin1ELb0EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %.05.i.i.i.i.i.i.i.i.i.i155)
          to label %.noexc157 unwind label %bb.br

.noexc157:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i154
  %i.iw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i155, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i156 = icmp eq i64 %i.iw, %i.if
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i156, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i154, !llvm.loop !53

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.noexc157, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.iy = mul nuw i64 %i.cb, 12
  %i.iz = call noalias ptr @malloc(i64 noundef %i.iy) #37 ; 6 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.jb = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jb, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.jb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc189 unwind label %bb.bo

.noexc189:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.bp:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.iz, ptr %31, align 8, !tbaa !39
  store i64 %i.cb, ptr %i.ix, align 8, !tbaa !41
  store i64 3, ptr %i.jd, align 8, !tbaa !94
  %.pre314 = trunc i64 %i.ij to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge271_crit_edge, label %.lr.ph270

.._crit_edge271_crit_edge:                        ; preds = %bb.bp
  %.pre313 = trunc i64 %i.cb to i32
  %.pre316 = shl nuw i64 %i.cb, 3
  br label %._crit_edge271

.lr.ph270:                                        ; preds = %bb.bp
  %i.je = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.jf = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx260 = shl nuw i64 %i.cb, 3                 ; 5 uses
  %i.jg = icmp eq i64 %i.bz, 4
  br i1 %i.jg, label %.epil.preheader, label %.lr.ph270.new

.lr.ph270.new:                                    ; preds = %.lr.ph270
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %bb.bs

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i149
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.cy

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i154
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cy

bb.bs:                                            ; preds = %bb.bs, %.lr.ph270.new
  %.089268 = phi i64 [ 0, %.lr.ph270.new ], [ %i.kc, %bb.bs ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph270.new ], [ %niter.next.1, %bb.bs ]
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0366383, i64 %.089268
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !31
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !38
  %i.jn = icmp slt i32 %i.jm, 0                   ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %i.iz, i64 %.089268 ; 3 uses
  %i.jp = getelementptr [4 x i8], ptr %i.jo, i64 %i.cb
  %i.jq = getelementptr i8, ptr %i.jo, i64 %.idx260
  %i.jr = trunc i64 %.089268 to i32
  %..pre314 = select i1 %i.jn, i32 %i.jf, i32 %.pre314
  %.pre314. = select i1 %i.jn, i32 %.pre314, i32 %i.jf
  store i32 %..pre314, ptr %i.jo, align 4, !tbaa !38
  store i32 %.pre314., ptr %i.jp, align 4, !tbaa !38
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !38
  %i.js = or disjoint i64 %.089268, 1             ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0366383, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !31
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !38
  %i.jx = icmp slt i32 %i.jw, 0                   ; 2 uses
  %i.jy = getelementptr [4 x i8], ptr %i.iz, i64 %i.js ; 3 uses
  %i.jz = getelementptr [4 x i8], ptr %i.jy, i64 %i.cb
  %i.ka = getelementptr i8, ptr %i.jy, i64 %.idx260
  %i.kb = trunc i64 %i.js to i32
  %..pre314.1 = select i1 %i.jx, i32 %i.jf, i32 %.pre314
  %.pre314..1 = select i1 %i.jx, i32 %.pre314, i32 %i.jf
  store i32 %..pre314.1, ptr %i.jy, align 4, !tbaa !38
  store i32 %.pre314..1, ptr %i.jz, align 4, !tbaa !38
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !38
  %i.kc = add nuw i64 %.089268, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge271.loopexit.unr-lcssa, label %bb.bs, !llvm.loop !95

._crit_edge271.loopexit.unr-lcssa:                ; preds = %bb.bs
  %i.kd = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.kd, 0
  br i1 %lcmp.mod.not, label %._crit_edge271, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge271.loopexit.unr-lcssa, %.lr.ph270
  %.089268.epil.init = phi i64 [ 0, %.lr.ph270 ], [ %i.kc, %._crit_edge271.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod395 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod395)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0366383, i64 %.089268.epil.init
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !31
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !38
  %i.ki = icmp slt i32 %i.kh, 0                   ; 2 uses
  %i.kj = getelementptr [4 x i8], ptr %i.iz, i64 %.089268.epil.init ; 3 uses
  %i.kk = getelementptr [4 x i8], ptr %i.kj, i64 %i.cb
  %i.kl = getelementptr i8, ptr %i.kj, i64 %.idx260
  %i.km = trunc i64 %.089268.epil.init to i32
  %..pre314.epil = select i1 %i.ki, i32 %i.jf, i32 %.pre314
  %.pre314..epil = select i1 %i.ki, i32 %.pre314, i32 %i.jf
  store i32 %..pre314.epil, ptr %i.kj, align 4, !tbaa !38
  store i32 %.pre314..epil, ptr %i.kk, align 4, !tbaa !38
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !38
  br label %._crit_edge271

._crit_edge271:                                   ; preds = %.epil.preheader, %._crit_edge271.loopexit.unr-lcssa, %.._crit_edge271_crit_edge
  %.idx259.pre-phi = phi i64 [ %.pre316, %.._crit_edge271_crit_edge ], [ %.idx260, %._crit_edge271.loopexit.unr-lcssa ], [ %.idx260, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre313, %.._crit_edge271_crit_edge ], [ %i.jf, %._crit_edge271.loopexit.unr-lcssa ], [ %i.jf, %.epil.preheader ]
  %i.kn = getelementptr i8, ptr %i.iz, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.kn, align 4, !tbaa !38
  %i.ko = getelementptr [4 x i8], ptr %i.kn, i64 %i.cb
  store i32 %.pre314, ptr %i.ko, align 4, !tbaa !38
  %i.kp = getelementptr i8, ptr %i.kn, i64 %.idx259.pre-phi
  %i.kq = trunc i64 %i.ca to i32
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kr = shl nuw nsw i64 %i.cb, 2
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #36
          to label %.noexc167 unwind label %bb.bt ; 7 uses

.noexc167:                                        ; preds = %._crit_edge271
  store ptr %i.ks, ptr %32, align 8, !tbaa !30
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.cb
  %i.ku = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !96
  store i32 0, ptr %i.ks, align 4, !tbaa !38
  %i.kv = getelementptr i8, ptr %i.ks, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph274, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc167
  call void @llvm.memset.p0.i64(ptr align 4 %i.kv, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.bz
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.noexc167, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i165 = phi ptr [ %i.kw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kv, %.noexc167 ]
  %i.kx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0.i.i.i.i.i165, ptr %i.kx, align 8, !tbaa !27
  %i.ky = load ptr, ptr %31, align 8, !tbaa !39   ; 3 uses
  %i.kz = load i64, ptr %i.ix, align 8            ; 3 uses
  %i.la = icmp eq ptr %i.bv, %i.bw
  br i1 %i.la, label %.epil.preheader396, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter400 = and i64 %i.cb, 2305843009213693950
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge271
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit175

bb.bu:                                            ; preds = %bb.cc, %.lr.ph274.new
  %.088272 = phi i64 [ 0, %.lr.ph274.new ], [ %i.md, %bb.cc ] ; 6 uses
  %niter401 = phi i64 [ 0, %.lr.ph274.new ], [ %niter401.next.1, %bb.cc ]
  %i.lc = getelementptr [4 x i8], ptr %i.ky, i64 %.088272 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !38
  %i.le = sext i32 %i.ld to i64
  %i.lf = icmp eq i64 %i.cb, %i.le
  br i1 %i.lf, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.lg = getelementptr [4 x i8], ptr %i.lc, i64 %i.kz
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !38
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp eq i64 %i.ij, %i.li
  br i1 %i.lj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lk = trunc i64 %.088272 to i32
  %i.ll = xor i32 %i.lk, -1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.lm = trunc i64 %.088272 to i32
  %i.ln = or disjoint i32 %i.lm, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink391 = phi i32 [ %i.ll, %bb.bw ], [ %i.ln, %bb.bx ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.088272
  store i32 %.sink391, ptr %i.lo, align 4, !tbaa !38
  %i.lp = or disjoint i64 %.088272, 1             ; 4 uses
  %i.lq = getelementptr [4 x i8], ptr %i.ky, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !38
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp eq i64 %i.cb, %i.ls
  br i1 %i.lt, label %bb.bz, label %bb.ca

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gf, 0
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gi = atomicrmw add ptr %i.gh, i32 1 monotonic, align 4 ; 0 uses
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gk = load atomic i32, ptr %i.gh monotonic, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store atomic i32 %i.gl, ptr %i.gh monotonic, align 4
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load atomic i32, ptr %i.gn monotonic, align 4 ; 2 uses
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(12) %i.gm) #22, !inline_history !208
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = add nsw i32 %i.go, -1
  store atomic i32 %i.gt, ptr %i.gn monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gv = load atomic i32, ptr %i.gu monotonic, align 4
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gx = atomicrmw sub ptr %i.gu, i32 1 release, align 4
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.bl, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  fence acquire
  %i.gz = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(12) %i.gz) #22, !inline_history !208
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.he = load ptr, ptr %i.ge, align 8, !tbaa !20
  store ptr %i.he, ptr %i.gd, align 8, !tbaa !20
  %i.hf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i150 = icmp eq i64 %i.hf, %i.fy
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i150, label %.loopexit263.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148, !llvm.loop !209

.loopexit263.loopexit:                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.pre303 = load ptr, ptr %28, align 8, !tbaa !15, !noalias !210
  %.pre304 = load i64, ptr %i.cw, align 8, !tbaa !37, !noalias !210
  %.pre305 = load i64, ptr %i.cv, align 8, !tbaa !19
  br label %.loopexit263

.loopexit263:                                     ; preds = %.loopexit263.loopexit, %._crit_edge268
  %i.hg = phi i64 [ %.pre305, %.loopexit263.loopexit ], [ %.pre302, %._crit_edge268 ] ; 2 uses
  %i.hh = phi i64 [ %.pre304, %.loopexit263.loopexit ], [ %.pre301, %._crit_edge268 ] ; 4 uses
  %i.hi = phi ptr [ %.pre303, %.loopexit263.loopexit ], [ %.pre, %._crit_edge268 ] ; 2 uses
  %i.hj = load ptr, ptr %0, align 8, !tbaa !15, !noalias !213 ; 2 uses
  %i.hk = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.bz ; 2 uses
  store ptr %i.hl, ptr %29, align 8, !tbaa !66, !alias.scope !210
  %i.hm = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.hh, ptr %i.hm, align 8, !tbaa !70, !alias.scope !210
  %i.hn = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %28, ptr %i.hn, align 8, !tbaa !71, !alias.scope !210
  %i.ho = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %i.bz, ptr %i.ho, align 8, !tbaa !70, !alias.scope !210
  %i.hp = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %i.hp, align 8, !tbaa !70, !alias.scope !210
  %i.hq = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i64 1, ptr %i.hq, align 8, !tbaa !73, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.hk, ptr %11, align 8, !tbaa !76
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  store i64 %i.hs, ptr %i.hr, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.hl, ptr %12, align 8, !tbaa !78
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.hg, ptr %i.ht, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !80
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.hu, align 8, !tbaa !82
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.hv, align 8, !tbaa !84
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %29, ptr %i.hw, align 8, !tbaa !86
  %i.hx = icmp sgt i64 %i.hh, 0
  br i1 %i.hx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i151, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i151:                    ; preds = %.loopexit263, %.noexc154
  %.05.i.i.i.i.i.i.i.i.i.i152 = phi i64 [ %i.hy, %.noexc154 ], [ 0, %.loopexit263 ] ; 2 uses
  invoke void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS3_IKSL_Li1ELin1ELb0EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %.05.i.i.i.i.i.i.i.i.i.i152)
          to label %.noexc154 unwind label %bb.bq

.noexc154:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i151
  %i.hy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i152, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i153 = icmp eq i64 %i.hy, %i.hh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i153, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i151, !llvm.loop !53

.loopexit.loopexit:                               ; preds = %.noexc154
  %.pre306 = load ptr, ptr %0, align 8, !tbaa !15, !noalias !216
  %.pre307 = load ptr, ptr %28, align 8, !tbaa !15, !noalias !219
  %.pre308 = load i64, ptr %i.cw, align 8, !tbaa !37, !noalias !219
  %.pre309 = load i64, ptr %i.b, align 8, !tbaa !19
  %.pre310 = load i64, ptr %i.cv, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit263
  %i.hz = phi i64 [ %.pre310, %.loopexit.loopexit ], [ %i.hg, %.loopexit263 ]
  %i.ia = phi i64 [ %.pre309, %.loopexit.loopexit ], [ %i.hs, %.loopexit263 ]
  %i.ib = phi i64 [ %.pre308, %.loopexit.loopexit ], [ %i.hh, %.loopexit263 ] ; 3 uses
  %i.ic = phi ptr [ %.pre307, %.loopexit.loopexit ], [ %i.hi, %.loopexit263 ]
  %i.id = phi ptr [ %.pre306, %.loopexit.loopexit ], [ %i.hj, %.loopexit263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.ie = getelementptr inbounds [16 x i8], ptr %i.id, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.if = add nuw nsw i64 %i.by, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.if ; 2 uses
  store ptr %i.ig, ptr %30, align 8, !tbaa !66, !alias.scope !219
  %i.ih = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.ib, ptr %i.ih, align 8, !tbaa !70, !alias.scope !219
  %i.ii = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %28, ptr %i.ii, align 8, !tbaa !71, !alias.scope !219
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 %i.if, ptr %i.ij, align 8, !tbaa !70, !alias.scope !219
  %i.ik = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 0, ptr %i.ik, align 8, !tbaa !70, !alias.scope !219
  %i.il = getelementptr inbounds nuw i8, ptr %30, i64 48
  store i64 1, ptr %i.il, align 8, !tbaa !73, !alias.scope !219
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.ie, ptr %7, align 8, !tbaa !76
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ia, ptr %i.im, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ig, ptr %8, align 8, !tbaa !78
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.hz, ptr %i.in, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !80
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.io, align 8, !tbaa !82
  %i.ip = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.ip, align 8, !tbaa !84
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %30, ptr %i.iq, align 8, !tbaa !86
  %i.ir = icmp sgt i64 %i.ib, 0
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i.i.i.i.i156, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i156:                    ; preds = %.loopexit, %.noexc159
  %.05.i.i.i.i.i.i.i.i.i.i157 = phi i64 [ %i.is, %.noexc159 ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS3_IKSL_Li1ELin1ELb0EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %.05.i.i.i.i.i.i.i.i.i.i157)
          to label %.noexc159 unwind label %bb.br

.noexc159:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i156
  %i.is = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i157, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i158 = icmp eq i64 %i.is, %i.ib
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i158, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i156, !llvm.loop !53

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.noexc159, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.iu = mul nuw i64 %i.bz, 12
  %i.iv = call noalias ptr @malloc(i64 noundef %i.iu) #37 ; 6 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.ix = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ix, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.ix, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc191 unwind label %bb.bo

.noexc191:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.bp:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.iv, ptr %31, align 8, !tbaa !39
  store i64 %i.bz, ptr %i.it, align 8, !tbaa !41
  store i64 3, ptr %i.iz, align 8, !tbaa !94
  %.pre314 = trunc i64 %i.if to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge272_crit_edge, label %.lr.ph271

.._crit_edge272_crit_edge:                        ; preds = %bb.bp
  %.pre313 = trunc i64 %i.bz to i32
  %.pre316 = shl nuw i64 %i.bz, 3
  br label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.bp
  %i.ja = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.jb = trunc i64 %i.bz to i32                  ; 8 uses
  %.idx261 = shl nuw i64 %i.bz, 3                 ; 5 uses
  %i.jc = icmp eq i64 %i.bx, 4
  br i1 %i.jc, label %.epil.preheader, label %.lr.ph271.new

.lr.ph271.new:                                    ; preds = %.lr.ph271
  %unroll_iter = and i64 %i.by, 1152921504606846974
  br label %bb.bs

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i151
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.cy

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i156
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cy

bb.bs:                                            ; preds = %bb.bs, %.lr.ph271.new
  %.089269 = phi i64 [ 0, %.lr.ph271.new ], [ %i.jy, %bb.bs ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph271.new ], [ %niter.next.1, %bb.bs ]
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0366383, i64 %.089269
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !31
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !38
  %i.jj = icmp slt i32 %i.ji, 0                   ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %i.iv, i64 %.089269 ; 3 uses
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.bz
  %i.jm = getelementptr i8, ptr %i.jk, i64 %.idx261
  %i.jn = trunc i64 %.089269 to i32
  %..pre314 = select i1 %i.jj, i32 %i.jb, i32 %.pre314
  %.pre314. = select i1 %i.jj, i32 %.pre314, i32 %i.jb
  store i32 %..pre314, ptr %i.jk, align 4, !tbaa !38
  store i32 %.pre314., ptr %i.jl, align 4, !tbaa !38
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !38
  %i.jo = or disjoint i64 %.089269, 1             ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0366383, i64 %i.jo
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !31
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !38
  %i.jt = icmp slt i32 %i.js, 0                   ; 2 uses
  %i.ju = getelementptr [4 x i8], ptr %i.iv, i64 %i.jo ; 3 uses
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %i.bz
  %i.jw = getelementptr i8, ptr %i.ju, i64 %.idx261
  %i.jx = trunc i64 %i.jo to i32
  %..pre314.1 = select i1 %i.jt, i32 %i.jb, i32 %.pre314
  %.pre314..1 = select i1 %i.jt, i32 %.pre314, i32 %i.jb
  store i32 %..pre314.1, ptr %i.ju, align 4, !tbaa !38
  store i32 %.pre314..1, ptr %i.jv, align 4, !tbaa !38
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !38
  %i.jy = add nuw i64 %.089269, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge272.loopexit.unr-lcssa, label %bb.bs, !llvm.loop !222

._crit_edge272.loopexit.unr-lcssa:                ; preds = %bb.bs
  %i.jz = and i64 %i.bx, 4
  %lcmp.mod.not = icmp eq i64 %i.jz, 0
  br i1 %lcmp.mod.not, label %._crit_edge272, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge272.loopexit.unr-lcssa, %.lr.ph271
  %.089269.epil.init = phi i64 [ 0, %.lr.ph271 ], [ %i.jy, %._crit_edge272.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod395 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod395)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0366383, i64 %.089269.epil.init
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !31
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !38
  %i.ke = icmp slt i32 %i.kd, 0                   ; 2 uses
  %i.kf = getelementptr [4 x i8], ptr %i.iv, i64 %.089269.epil.init ; 3 uses
  %i.kg = getelementptr [4 x i8], ptr %i.kf, i64 %i.bz
  %i.kh = getelementptr i8, ptr %i.kf, i64 %.idx261
  %i.ki = trunc i64 %.089269.epil.init to i32
  %..pre314.epil = select i1 %i.ke, i32 %i.jb, i32 %.pre314
  %.pre314..epil = select i1 %i.ke, i32 %.pre314, i32 %i.jb
  store i32 %..pre314.epil, ptr %i.kf, align 4, !tbaa !38
  store i32 %.pre314..epil, ptr %i.kg, align 4, !tbaa !38
  store i32 %i.ki, ptr %i.kh, align 4, !tbaa !38
  br label %._crit_edge272

._crit_edge272:                                   ; preds = %.epil.preheader, %._crit_edge272.loopexit.unr-lcssa, %.._crit_edge272_crit_edge
  %.idx260.pre-phi = phi i64 [ %.pre316, %.._crit_edge272_crit_edge ], [ %.idx261, %._crit_edge272.loopexit.unr-lcssa ], [ %.idx261, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre313, %.._crit_edge272_crit_edge ], [ %i.jb, %._crit_edge272.loopexit.unr-lcssa ], [ %i.jb, %.epil.preheader ]
  %i.kj = getelementptr i8, ptr %i.iv, i64 %i.bx  ; 3 uses
  store i32 %.pre-phi, ptr %i.kj, align 4, !tbaa !38
  %i.kk = getelementptr [4 x i8], ptr %i.kj, i64 %i.bz
  store i32 %.pre314, ptr %i.kk, align 4, !tbaa !38
  %i.kl = getelementptr i8, ptr %i.kj, i64 %.idx260.pre-phi
  %i.km = trunc i64 %i.by to i32
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kn = shl nuw nsw i64 %i.bz, 2
  %i.ko = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #36
          to label %.noexc169 unwind label %bb.bt ; 7 uses

.noexc169:                                        ; preds = %._crit_edge272
  store ptr %i.ko, ptr %32, align 8, !tbaa !30
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.bz
  %i.kq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !96
  store i32 0, ptr %i.ko, align 4, !tbaa !38
  %i.kr = getelementptr i8, ptr %i.ko, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph275, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 0, i64 %i.bx, i1 false), !tbaa !38
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.bx
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.noexc169, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i167 = phi ptr [ %i.ks, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kr, %.noexc169 ]
  %i.kt = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0.i.i.i.i.i167, ptr %i.kt, align 8, !tbaa !27
  %i.ku = load ptr, ptr %31, align 8, !tbaa !39   ; 3 uses
  %i.kv = load i64, ptr %i.it, align 8            ; 3 uses
  %i.kw = icmp eq ptr %i.bt, %i.bu
  br i1 %i.kw, label %.epil.preheader396, label %.lr.ph275.new

.lr.ph275.new:                                    ; preds = %.lr.ph275
  %unroll_iter400 = and i64 %i.bz, 2305843009213693950
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge272
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

bb.bu:                                            ; preds = %bb.cc, %.lr.ph275.new
  %.088273 = phi i64 [ 0, %.lr.ph275.new ], [ %i.lz, %bb.cc ] ; 6 uses
  %niter401 = phi i64 [ 0, %.lr.ph275.new ], [ %niter401.next.1, %bb.cc ]
  %i.ky = getelementptr [4 x i8], ptr %i.ku, i64 %.088273 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !38
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp eq i64 %i.bz, %i.la
  br i1 %i.lb, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.lc = getelementptr [4 x i8], ptr %i.ky, i64 %i.kv
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !38
  %i.le = sext i32 %i.ld to i64
  %i.lf = icmp eq i64 %i.if, %i.le
  br i1 %i.lf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lg = trunc i64 %.088273 to i32
  %i.lh = xor i32 %i.lg, -1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.li = trunc i64 %.088273 to i32
  %i.lj = or disjoint i32 %i.li, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink391 = phi i32 [ %i.lh, %bb.bw ], [ %i.lj, %bb.bx ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.088273
  store i32 %.sink391, ptr %i.lk, align 4, !tbaa !38
  %i.ll = or disjoint i64 %.088273, 1             ; 4 uses
  %i.lm = getelementptr [4 x i8], ptr %i.ku, i64 %i.ll ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !38
  %i.lo = sext i32 %i.ln to i64
  %i.lp = icmp eq i64 %i.bz, %i.lo
  br i1 %i.lp, label %bb.bz, label %bb.ca

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gd, 0
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gg = atomicrmw add ptr %i.gf, i32 1 monotonic, align 4 ; 0 uses
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gi = load atomic i32, ptr %i.gf monotonic, align 4
  %i.gj = add nsw i32 %i.gi, 1
  store atomic i32 %i.gj, ptr %i.gf monotonic, align 4
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gm = load atomic i32, ptr %i.gl monotonic, align 4 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 1
  br i1 %i.gn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(12) %i.gk) #22, !inline_history !241
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = add nsw i32 %i.gm, -1
  store atomic i32 %i.gr, ptr %i.gl monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gt = load atomic i32, ptr %i.gs monotonic, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gv = atomicrmw sub ptr %i.gs, i32 1 release, align 4
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.bl, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  fence acquire
  %i.gx = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(12) %i.gx) #22, !inline_history !241
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = load ptr, ptr %i.gc, align 8, !tbaa !20
  store ptr %i.hc, ptr %i.gb, align 8, !tbaa !20
  %i.hd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i150 = icmp eq i64 %i.hd, %i.fx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i150, label %.loopexit263.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148, !llvm.loop !242

.loopexit263.loopexit:                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.pre303 = load ptr, ptr %28, align 8, !tbaa !15, !noalias !243
  %.pre304 = load i64, ptr %i.cv, align 8, !tbaa !37, !noalias !243
  %.pre305 = load i64, ptr %i.cu, align 8, !tbaa !19
  br label %.loopexit263

.loopexit263:                                     ; preds = %.loopexit263.loopexit, %._crit_edge268
  %i.he = phi i64 [ %.pre305, %.loopexit263.loopexit ], [ %.pre302, %._crit_edge268 ] ; 2 uses
  %i.hf = phi i64 [ %.pre304, %.loopexit263.loopexit ], [ %.pre301, %._crit_edge268 ] ; 4 uses
  %i.hg = phi ptr [ %.pre303, %.loopexit263.loopexit ], [ %.pre, %._crit_edge268 ] ; 2 uses
  %i.hh = load ptr, ptr %0, align 8, !tbaa !15, !noalias !246 ; 2 uses
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.hh, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.by ; 2 uses
  store ptr %i.hj, ptr %29, align 8, !tbaa !66, !alias.scope !243
  %i.hk = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.hf, ptr %i.hk, align 8, !tbaa !70, !alias.scope !243
  %i.hl = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %28, ptr %i.hl, align 8, !tbaa !71, !alias.scope !243
  %i.hm = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %i.by, ptr %i.hm, align 8, !tbaa !70, !alias.scope !243
  %i.hn = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %i.hn, align 8, !tbaa !70, !alias.scope !243
  %i.ho = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i64 1, ptr %i.ho, align 8, !tbaa !73, !alias.scope !243
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.hi, ptr %11, align 8, !tbaa !76
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hq = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  store i64 %i.hq, ptr %i.hp, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.hj, ptr %12, align 8, !tbaa !78
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.he, ptr %i.hr, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !80
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.hs, align 8, !tbaa !82
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.ht, align 8, !tbaa !84
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %29, ptr %i.hu, align 8, !tbaa !86
  %i.hv = icmp sgt i64 %i.hf, 0
  br i1 %i.hv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i151, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i151:                    ; preds = %.loopexit263, %.noexc154
  %.05.i.i.i.i.i.i.i.i.i.i152 = phi i64 [ %i.hw, %.noexc154 ], [ 0, %.loopexit263 ] ; 2 uses
  invoke void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS3_IKSL_Li1ELin1ELb0EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %.05.i.i.i.i.i.i.i.i.i.i152)
          to label %.noexc154 unwind label %bb.bq

.noexc154:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i151
  %i.hw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i152, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i153 = icmp eq i64 %i.hw, %i.hf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i153, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i151, !llvm.loop !53

.loopexit.loopexit:                               ; preds = %.noexc154
  %.pre306 = load ptr, ptr %0, align 8, !tbaa !15, !noalias !249
  %.pre307 = load ptr, ptr %28, align 8, !tbaa !15, !noalias !252
  %.pre308 = load i64, ptr %i.cv, align 8, !tbaa !37, !noalias !252
  %.pre309 = load i64, ptr %i.b, align 8, !tbaa !19
  %.pre310 = load i64, ptr %i.cu, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit263
  %i.hx = phi i64 [ %.pre310, %.loopexit.loopexit ], [ %i.he, %.loopexit263 ]
  %i.hy = phi i64 [ %.pre309, %.loopexit.loopexit ], [ %i.hq, %.loopexit263 ]
  %i.hz = phi i64 [ %.pre308, %.loopexit.loopexit ], [ %i.hf, %.loopexit263 ] ; 3 uses
  %i.ia = phi ptr [ %.pre307, %.loopexit.loopexit ], [ %i.hg, %.loopexit263 ]
  %i.ib = phi ptr [ %.pre306, %.loopexit.loopexit ], [ %i.hh, %.loopexit263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.ic = getelementptr inbounds [16 x i8], ptr %i.ib, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.id = add nuw nsw i64 %i.bx, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.id ; 2 uses
  store ptr %i.ie, ptr %30, align 8, !tbaa !66, !alias.scope !252
  %i.if = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.hz, ptr %i.if, align 8, !tbaa !70, !alias.scope !252
  %i.ig = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %28, ptr %i.ig, align 8, !tbaa !71, !alias.scope !252
  %i.ih = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 %i.id, ptr %i.ih, align 8, !tbaa !70, !alias.scope !252
  %i.ii = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 0, ptr %i.ii, align 8, !tbaa !70, !alias.scope !252
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 48
  store i64 1, ptr %i.ij, align 8, !tbaa !73, !alias.scope !252
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.ic, ptr %7, align 8, !tbaa !76
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.hy, ptr %i.ik, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ie, ptr %8, align 8, !tbaa !78
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.hx, ptr %i.il, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !80
  %i.im = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.im, align 8, !tbaa !82
  %i.in = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.in, align 8, !tbaa !84
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %30, ptr %i.io, align 8, !tbaa !86
  %i.ip = icmp sgt i64 %i.hz, 0
  br i1 %i.ip, label %.lr.ph.i.i.i.i.i.i.i.i.i.i156, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i156:                    ; preds = %.loopexit, %.noexc159
  %.05.i.i.i.i.i.i.i.i.i.i157 = phi i64 [ %i.iq, %.noexc159 ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS3_IKSL_Li1ELin1ELb0EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %.05.i.i.i.i.i.i.i.i.i.i157)
          to label %.noexc159 unwind label %bb.br

.noexc159:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i156
  %i.iq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i157, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i158 = icmp eq i64 %i.iq, %i.hz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i158, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i156, !llvm.loop !53

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.noexc159, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.is = mul nuw i64 %i.by, 12
  %i.it = call noalias ptr @malloc(i64 noundef %i.is) #37 ; 6 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.iv = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.iv, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc191 unwind label %bb.bo

.noexc191:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.bp:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.it, ptr %31, align 8, !tbaa !39
  store i64 %i.by, ptr %i.ir, align 8, !tbaa !41
  store i64 3, ptr %i.ix, align 8, !tbaa !94
  %.pre314 = trunc i64 %i.id to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge272_crit_edge, label %.lr.ph271

.._crit_edge272_crit_edge:                        ; preds = %bb.bp
  %.pre313 = trunc i64 %i.by to i32
  %.pre316 = shl nuw i64 %i.by, 3
  br label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.bp
  %i.iy = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.iz = trunc i64 %i.by to i32                  ; 8 uses
  %.idx261 = shl nuw i64 %i.by, 3                 ; 5 uses
  %i.ja = icmp eq i64 %i.bw, 4
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph271.new

.lr.ph271.new:                                    ; preds = %.lr.ph271
  %unroll_iter = and i64 %i.bx, 1152921504606846974
  br label %bb.bs

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i151
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.cy

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i156
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cy

bb.bs:                                            ; preds = %bb.bs, %.lr.ph271.new
  %.089269 = phi i64 [ 0, %.lr.ph271.new ], [ %i.jw, %bb.bs ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph271.new ], [ %niter.next.1, %bb.bs ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0366383, i64 %.089269
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !31
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !38
  %i.jh = icmp slt i32 %i.jg, 0                   ; 2 uses
  %i.ji = getelementptr [4 x i8], ptr %i.it, i64 %.089269 ; 3 uses
  %i.jj = getelementptr [4 x i8], ptr %i.ji, i64 %i.by
  %i.jk = getelementptr i8, ptr %i.ji, i64 %.idx261
  %i.jl = trunc i64 %.089269 to i32
  %..pre314 = select i1 %i.jh, i32 %i.iz, i32 %.pre314
  %.pre314. = select i1 %i.jh, i32 %.pre314, i32 %i.iz
  store i32 %..pre314, ptr %i.ji, align 4, !tbaa !38
  store i32 %.pre314., ptr %i.jj, align 4, !tbaa !38
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !38
  %i.jm = or disjoint i64 %.089269, 1             ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0366383, i64 %i.jm
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !31
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !38
  %i.jr = icmp slt i32 %i.jq, 0                   ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %i.it, i64 %i.jm ; 3 uses
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %i.by
  %i.ju = getelementptr i8, ptr %i.js, i64 %.idx261
  %i.jv = trunc i64 %i.jm to i32
  %..pre314.1 = select i1 %i.jr, i32 %i.iz, i32 %.pre314
  %.pre314..1 = select i1 %i.jr, i32 %.pre314, i32 %i.iz
  store i32 %..pre314.1, ptr %i.js, align 4, !tbaa !38
  store i32 %.pre314..1, ptr %i.jt, align 4, !tbaa !38
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !38
  %i.jw = add nuw i64 %.089269, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge272.loopexit.unr-lcssa, label %bb.bs, !llvm.loop !255

._crit_edge272.loopexit.unr-lcssa:                ; preds = %bb.bs
  %i.jx = and i64 %i.bw, 4
  %lcmp.mod.not = icmp eq i64 %i.jx, 0
  br i1 %lcmp.mod.not, label %._crit_edge272, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge272.loopexit.unr-lcssa, %.lr.ph271
  %.089269.epil.init = phi i64 [ 0, %.lr.ph271 ], [ %i.jw, %._crit_edge272.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod395 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod395)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0366383, i64 %.089269.epil.init
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !31
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !38
  %i.kc = icmp slt i32 %i.kb, 0                   ; 2 uses
  %i.kd = getelementptr [4 x i8], ptr %i.it, i64 %.089269.epil.init ; 3 uses
  %i.ke = getelementptr [4 x i8], ptr %i.kd, i64 %i.by
  %i.kf = getelementptr i8, ptr %i.kd, i64 %.idx261
  %i.kg = trunc i64 %.089269.epil.init to i32
  %..pre314.epil = select i1 %i.kc, i32 %i.iz, i32 %.pre314
  %.pre314..epil = select i1 %i.kc, i32 %.pre314, i32 %i.iz
  store i32 %..pre314.epil, ptr %i.kd, align 4, !tbaa !38
  store i32 %.pre314..epil, ptr %i.ke, align 4, !tbaa !38
  store i32 %i.kg, ptr %i.kf, align 4, !tbaa !38
  br label %._crit_edge272

._crit_edge272:                                   ; preds = %.epil.preheader, %._crit_edge272.loopexit.unr-lcssa, %.._crit_edge272_crit_edge
  %.idx260.pre-phi = phi i64 [ %.pre316, %.._crit_edge272_crit_edge ], [ %.idx261, %._crit_edge272.loopexit.unr-lcssa ], [ %.idx261, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre313, %.._crit_edge272_crit_edge ], [ %i.iz, %._crit_edge272.loopexit.unr-lcssa ], [ %i.iz, %.epil.preheader ]
  %i.kh = getelementptr i8, ptr %i.it, i64 %i.bw  ; 3 uses
  store i32 %.pre-phi, ptr %i.kh, align 4, !tbaa !38
  %i.ki = getelementptr [4 x i8], ptr %i.kh, i64 %i.by
  store i32 %.pre314, ptr %i.ki, align 4, !tbaa !38
  %i.kj = getelementptr i8, ptr %i.kh, i64 %.idx260.pre-phi
  %i.kk = trunc i64 %i.bx to i32
  store i32 %i.kk, ptr %i.kj, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kl = shl nuw nsw i64 %i.by, 2
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kl) #36
          to label %.noexc169 unwind label %bb.bt ; 7 uses

.noexc169:                                        ; preds = %._crit_edge272
  store ptr %i.km, ptr %32, align 8, !tbaa !30
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.by
  %i.ko = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !96
  store i32 0, ptr %i.km, align 4, !tbaa !38
  %i.kp = getelementptr i8, ptr %i.km, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph275, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  call void @llvm.memset.p0.i64(ptr align 4 %i.kp, i8 0, i64 %i.bw, i1 false), !tbaa !38
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.bw
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.noexc169, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i167 = phi ptr [ %i.kq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kp, %.noexc169 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0.i.i.i.i.i167, ptr %i.kr, align 8, !tbaa !27
  %i.ks = load ptr, ptr %31, align 8, !tbaa !39   ; 3 uses
  %i.kt = load i64, ptr %i.ir, align 8            ; 3 uses
  %i.ku = icmp eq ptr %i.bs, %i.bt
  br i1 %i.ku, label %.epil.preheader396, label %.lr.ph275.new

.lr.ph275.new:                                    ; preds = %.lr.ph275
  %unroll_iter400 = and i64 %i.by, 2305843009213693950
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge272
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

bb.bu:                                            ; preds = %bb.cc, %.lr.ph275.new
  %.088273 = phi i64 [ 0, %.lr.ph275.new ], [ %i.lx, %bb.cc ] ; 6 uses
  %niter401 = phi i64 [ 0, %.lr.ph275.new ], [ %niter401.next.1, %bb.cc ]
  %i.kw = getelementptr [4 x i8], ptr %i.ks, i64 %.088273 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !38
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp eq i64 %i.by, %i.ky
  br i1 %i.kz, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.la = getelementptr [4 x i8], ptr %i.kw, i64 %i.kt
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !38
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp eq i64 %i.id, %i.lc
  br i1 %i.ld, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.le = trunc i64 %.088273 to i32
  %i.lf = xor i32 %i.le, -1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.lg = trunc i64 %.088273 to i32
  %i.lh = or disjoint i32 %i.lg, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink391 = phi i32 [ %i.lf, %bb.bw ], [ %i.lh, %bb.bx ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.088273
  store i32 %.sink391, ptr %i.li, align 4, !tbaa !38
  %i.lj = or disjoint i64 %.088273, 1             ; 4 uses
  %i.lk = getelementptr [4 x i8], ptr %i.ks, i64 %i.lj ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !38
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp eq i64 %i.by, %i.lm
  br i1 %i.ln, label %bb.bz, label %bb.ca

end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %exitcond268.not = icmp eq i64 %i.eq, %i.ca
  br i1 %exitcond268.not, label %._crit_edge244, label %bb.ap, !llvm.loop !298

bb.av:                                            ; preds = %bb.at
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.co

._crit_edge244:                                   ; preds = %bb.au
  %.pre = load ptr, ptr %32, align 8, !tbaa !269, !noalias !299 ; 2 uses
  %.pre277 = load i64, ptr %i.cy, align 8, !tbaa !271, !noalias !299 ; 4 uses
  %i.es = mul nsw i64 %.pre277, %i.ca
  %i.et = getelementptr inbounds [16 x i8], ptr %.pre, i64 %i.es
  %i.eu = icmp sgt i64 %.pre277, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge244.thread, %._crit_edge244
  %i.ev = phi ptr [ %i.dc, %._crit_edge244.thread ], [ %i.et, %._crit_edge244 ]
  %i.ew = phi i64 [ 3, %._crit_edge244.thread ], [ %.pre277, %._crit_edge244 ]
  %i.ex = load ptr, ptr %5, align 8, !tbaa !269
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ga, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fa, 0
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fd = atomicrmw add ptr %i.fc, i32 1 monotonic, align 4 ; 0 uses
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ay

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ff = load atomic i32, ptr %i.fc monotonic, align 4
  %i.fg = add nsw i32 %i.ff, 1
  store atomic i32 %i.fg, ptr %i.fc monotonic, align 4
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load atomic i32, ptr %i.fi monotonic, align 4 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(12) %i.fh) #22, !inline_history !302
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = add nsw i32 %i.fj, -1
  store atomic i32 %i.fo, ptr %i.fi monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fq = load atomic i32, ptr %i.fp monotonic, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = atomicrmw sub ptr %i.fp, i32 1 release, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.ba, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  fence acquire
  %i.fu = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(12) %i.fu) #22, !inline_history !302
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fz = load ptr, ptr %i.ez, align 8, !tbaa !20
  store ptr %i.fz, ptr %i.ey, align 8, !tbaa !20
  %i.ga = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ga, %i.ew
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !303

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.pre278 = load ptr, ptr %32, align 8, !tbaa !269, !noalias !304
  %.pre279 = load i64, ptr %i.cy, align 8, !tbaa !271, !noalias !304
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge244
  %i.gb = phi i64 [ %.pre279, %.loopexit.loopexit ], [ %.pre277, %._crit_edge244 ] ; 4 uses
  %i.gc = phi ptr [ %.pre278, %.loopexit.loopexit ], [ %.pre, %._crit_edge244 ]
  %i.gd = load ptr, ptr %0, align 8, !tbaa !269, !noalias !307
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !271, !noalias !307 ; 2 uses
  %i.gf = mul nsw i64 %i.ge, %2
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.gd, i64 %i.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.gh = mul nsw i64 %i.gb, %i.cb
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.gc, i64 %i.gh ; 2 uses
  store ptr %i.gi, ptr %34, align 8, !tbaa !281, !alias.scope !304
  %i.gj = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 %i.gb, ptr %i.gj, align 8, !tbaa !70, !alias.scope !304
  %i.gk = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr %32, ptr %i.gk, align 8, !tbaa !283, !alias.scope !304
  %i.gl = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i64 %i.cb, ptr %i.gl, align 8, !tbaa !70, !alias.scope !304
  %i.gm = getelementptr inbounds nuw i8, ptr %34, i64 40
  store i64 0, ptr %i.gm, align 8, !tbaa !70, !alias.scope !304
  %i.gn = getelementptr inbounds nuw i8, ptr %34, i64 48
  store i64 %i.gb, ptr %i.gn, align 8, !tbaa !285, !alias.scope !304
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.gg, ptr %11, align 8, !tbaa !288
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.ge, ptr %i.go, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.gi, ptr %12, align 8, !tbaa !290
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.gb, ptr %i.gp, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !292
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.gq, align 8, !tbaa !294
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.gr, align 8, !tbaa !84
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %34, ptr %i.gs, align 8, !tbaa !296
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS3_INS4_IKSM_Li1ELin1ELb1EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi0EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.gt = load ptr, ptr %0, align 8, !tbaa !269, !noalias !310
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !271, !noalias !310 ; 2 uses
  %i.gv = mul nsw i64 %i.gu, %3
  %i.gw = getelementptr inbounds [16 x i8], ptr %i.gt, i64 %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.gx = add nuw nsw i64 %i.ca, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.gy = load ptr, ptr %32, align 8, !tbaa !269, !noalias !313
  %i.gz = load i64, ptr %i.cy, align 8, !tbaa !271, !noalias !313 ; 4 uses
  %i.ha = mul nsw i64 %i.gz, %i.gx
  %i.hb = getelementptr inbounds [16 x i8], ptr %i.gy, i64 %i.ha ; 2 uses
  store ptr %i.hb, ptr %35, align 8, !tbaa !281, !alias.scope !313
  %i.hc = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.gz, ptr %i.hc, align 8, !tbaa !70, !alias.scope !313
  %i.hd = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %32, ptr %i.hd, align 8, !tbaa !283, !alias.scope !313
  %i.he = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %i.gx, ptr %i.he, align 8, !tbaa !70, !alias.scope !313
  %i.hf = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 0, ptr %i.hf, align 8, !tbaa !70, !alias.scope !313
  %i.hg = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %i.gz, ptr %i.hg, align 8, !tbaa !285, !alias.scope !313
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.gw, ptr %7, align 8, !tbaa !288
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.gu, ptr %i.hh, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.hb, ptr %8, align 8, !tbaa !290
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.gz, ptr %i.hi, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !292
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.hj, align 8, !tbaa !294
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.hk, align 8, !tbaa !84
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %35, ptr %i.hl, align 8, !tbaa !296
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS3_INS4_IKSM_Li1ELin1ELb1EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi0EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i unwind label %bb.bh

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.hn = mul nuw i64 %i.cb, 12
  %i.ho = call noalias ptr @malloc(i64 noundef %i.hn) #37 ; 6 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.hq = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hq, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.hq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc178 unwind label %bb.be

.noexc178:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.bf:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.ho, ptr %36, align 8, !tbaa !39
  store i64 %i.cb, ptr %i.hm, align 8, !tbaa !41
  store i64 3, ptr %i.hs, align 8, !tbaa !94
  %.pre283 = trunc i64 %i.gx to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge248_crit_edge, label %.lr.ph247

.._crit_edge248_crit_edge:                        ; preds = %bb.bf
  %.pre282 = trunc i64 %i.cb to i32
  %.pre285 = shl nuw i64 %i.cb, 3
  br label %._crit_edge248

.lr.ph247:                                        ; preds = %bb.bf
  %i.ht = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.hu = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx238 = shl nuw i64 %i.cb, 3                 ; 5 uses
  %i.hv = icmp eq i64 %i.bz, 4
  br i1 %i.hv, label %.epil.preheader, label %.lr.ph247.new

.lr.ph247.new:                                    ; preds = %.lr.ph247
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %bb.bi

bb.bg:                                            ; preds = %.loopexit
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.co

bb.bh:                                            ; preds = %bb.bc
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.co

bb.bi:                                            ; preds = %bb.bi, %.lr.ph247.new
  %.089245 = phi i64 [ 0, %.lr.ph247.new ], [ %i.ir, %bb.bi ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph247.new ], [ %niter.next.1, %bb.bi ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %.089245
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !31
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !38
  %i.ic = icmp slt i32 %i.ib, 0                   ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.ho, i64 %.089245 ; 3 uses
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.cb
  %i.if = getelementptr i8, ptr %i.id, i64 %.idx238
  %i.ig = trunc i64 %.089245 to i32
  %..pre283 = select i1 %i.ic, i32 %i.hu, i32 %.pre283
  %.pre283. = select i1 %i.ic, i32 %.pre283, i32 %i.hu
  store i32 %..pre283, ptr %i.id, align 4, !tbaa !38
  store i32 %.pre283., ptr %i.ie, align 4, !tbaa !38
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !38
  %i.ih = or disjoint i64 %.089245, 1             ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !31
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !38
  %i.im = icmp slt i32 %i.il, 0                   ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.ho, i64 %i.ih ; 3 uses
  %i.io = getelementptr [4 x i8], ptr %i.in, i64 %i.cb
  %i.ip = getelementptr i8, ptr %i.in, i64 %.idx238
  %i.iq = trunc i64 %i.ih to i32
  %..pre283.1 = select i1 %i.im, i32 %i.hu, i32 %.pre283
  %.pre283..1 = select i1 %i.im, i32 %.pre283, i32 %i.hu
  store i32 %..pre283.1, ptr %i.in, align 4, !tbaa !38
  store i32 %.pre283..1, ptr %i.io, align 4, !tbaa !38
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !38
  %i.ir = add nuw i64 %.089245, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge248.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !316

._crit_edge248.loopexit.unr-lcssa:                ; preds = %bb.bi
  %i.is = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.is, 0
  br i1 %lcmp.mod.not, label %._crit_edge248, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge248.loopexit.unr-lcssa, %.lr.ph247
  %.089245.epil.init = phi i64 [ 0, %.lr.ph247 ], [ %i.ir, %._crit_edge248.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod351 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %.089245.epil.init
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !31
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !38
  %i.ix = icmp slt i32 %i.iw, 0                   ; 2 uses
  %i.iy = getelementptr [4 x i8], ptr %i.ho, i64 %.089245.epil.init ; 3 uses
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %i.cb
  %i.ja = getelementptr i8, ptr %i.iy, i64 %.idx238
  %i.jb = trunc i64 %.089245.epil.init to i32
  %..pre283.epil = select i1 %i.ix, i32 %i.hu, i32 %.pre283
  %.pre283..epil = select i1 %i.ix, i32 %.pre283, i32 %i.hu
  store i32 %..pre283.epil, ptr %i.iy, align 4, !tbaa !38
  store i32 %.pre283..epil, ptr %i.iz, align 4, !tbaa !38
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !38
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %.epil.preheader, %._crit_edge248.loopexit.unr-lcssa, %.._crit_edge248_crit_edge
  %.idx.pre-phi = phi i64 [ %.pre285, %.._crit_edge248_crit_edge ], [ %.idx238, %._crit_edge248.loopexit.unr-lcssa ], [ %.idx238, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre282, %.._crit_edge248_crit_edge ], [ %i.hu, %._crit_edge248.loopexit.unr-lcssa ], [ %i.hu, %.epil.preheader ]
  %i.jc = getelementptr i8, ptr %i.ho, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.jc, align 4, !tbaa !38
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.cb
  store i32 %.pre283, ptr %i.jd, align 4, !tbaa !38
  %i.je = getelementptr i8, ptr %i.jc, i64 %.idx.pre-phi
  %i.jf = trunc i64 %i.ca to i32
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.jg = shl nuw nsw i64 %i.cb, 2
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #36
          to label %.noexc160 unwind label %bb.bj ; 7 uses

.noexc160:                                        ; preds = %._crit_edge248
  store ptr %i.jh, ptr %37, align 8, !tbaa !30
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !96
  store i32 0, ptr %i.jh, align 4, !tbaa !38
  %i.jk = getelementptr i8, ptr %i.jh, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph251, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc160
  call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.bz
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.noexc160, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i158 = phi ptr [ %i.jl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jk, %.noexc160 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.0.i.i.i.i.i158, ptr %i.jm, align 8, !tbaa !27
  %i.jn = load ptr, ptr %36, align 8, !tbaa !39   ; 3 uses
  %i.jo = load i64, ptr %i.hm, align 8            ; 3 uses
  %i.jp = icmp eq ptr %i.bv, %i.bw
  br i1 %i.jp, label %.epil.preheader352, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter356 = and i64 %i.cb, 2305843009213693950
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge248
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bs, %.lr.ph251.new
  %.088249 = phi i64 [ 0, %.lr.ph251.new ], [ %i.ks, %bb.bs ] ; 6 uses
  %niter357 = phi i64 [ 0, %.lr.ph251.new ], [ %niter357.next.1, %bb.bs ]
  %i.jr = getelementptr [4 x i8], ptr %i.jn, i64 %.088249 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !38
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp eq i64 %i.cb, %i.jt
  br i1 %i.ju, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jv = getelementptr [4 x i8], ptr %i.jr, i64 %i.jo
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !38
  %i.jx = sext i32 %i.jw to i64
  %i.jy = icmp eq i64 %i.gx, %i.jx
  br i1 %i.jy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jz = trunc i64 %.088249 to i32
  %i.ka = xor i32 %i.jz, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.kb = trunc i64 %.088249 to i32
  %i.kc = or disjoint i32 %i.kb, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink347 = phi i32 [ %i.ka, %bb.bm ], [ %i.kc, %bb.bn ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.088249
  store i32 %.sink347, ptr %i.kd, align 4, !tbaa !38
  %i.ke = or disjoint i64 %.088249, 1             ; 4 uses
  %i.kf = getelementptr [4 x i8], ptr %i.jn, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !38
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp eq i64 %i.cb, %i.kh
  br i1 %i.ki, label %bb.bp, label %bb.bq

end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %exitcond268.not = icmp eq i64 %i.eq, %i.ca
  br i1 %exitcond268.not, label %._crit_edge244, label %bb.ap, !llvm.loop !370

bb.av:                                            ; preds = %bb.at
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.co

._crit_edge244:                                   ; preds = %bb.au
  %.pre = load ptr, ptr %32, align 8, !tbaa !269, !noalias !371 ; 2 uses
  %.pre277 = load i64, ptr %i.cy, align 8, !tbaa !271, !noalias !371 ; 4 uses
  %i.es = mul nsw i64 %.pre277, %i.ca
  %i.et = getelementptr inbounds [16 x i8], ptr %.pre, i64 %i.es
  %i.eu = icmp sgt i64 %.pre277, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge244.thread, %._crit_edge244
  %i.ev = phi ptr [ %i.dc, %._crit_edge244.thread ], [ %i.et, %._crit_edge244 ]
  %i.ew = phi i64 [ 3, %._crit_edge244.thread ], [ %.pre277, %._crit_edge244 ]
  %i.ex = load ptr, ptr %5, align 8, !tbaa !191
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ga, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fa, 0
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fd = atomicrmw add ptr %i.fc, i32 1 monotonic, align 4 ; 0 uses
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ay

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ff = load atomic i32, ptr %i.fc monotonic, align 4
  %i.fg = add nsw i32 %i.ff, 1
  store atomic i32 %i.fg, ptr %i.fc monotonic, align 4
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load atomic i32, ptr %i.fi monotonic, align 4 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(12) %i.fh) #22, !inline_history !374
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = add nsw i32 %i.fj, -1
  store atomic i32 %i.fo, ptr %i.fi monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fq = load atomic i32, ptr %i.fp monotonic, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = atomicrmw sub ptr %i.fp, i32 1 release, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.ba, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  fence acquire
  %i.fu = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(12) %i.fu) #22, !inline_history !374
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fz = load ptr, ptr %i.ez, align 8, !tbaa !20
  store ptr %i.fz, ptr %i.ey, align 8, !tbaa !20
  %i.ga = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ga, %i.ew
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !375

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.pre278 = load ptr, ptr %32, align 8, !tbaa !269, !noalias !376
  %.pre279 = load i64, ptr %i.cy, align 8, !tbaa !271, !noalias !376
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge244
  %i.gb = phi i64 [ %.pre279, %.loopexit.loopexit ], [ %.pre277, %._crit_edge244 ] ; 4 uses
  %i.gc = phi ptr [ %.pre278, %.loopexit.loopexit ], [ %.pre, %._crit_edge244 ]
  %i.gd = load ptr, ptr %0, align 8, !tbaa !269, !noalias !379
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !271, !noalias !379 ; 2 uses
  %i.gf = mul nsw i64 %i.ge, %2
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.gd, i64 %i.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.gh = mul nsw i64 %i.gb, %i.cb
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.gc, i64 %i.gh ; 2 uses
  store ptr %i.gi, ptr %34, align 8, !tbaa !281, !alias.scope !376
  %i.gj = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 %i.gb, ptr %i.gj, align 8, !tbaa !70, !alias.scope !376
  %i.gk = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr %32, ptr %i.gk, align 8, !tbaa !283, !alias.scope !376
  %i.gl = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i64 %i.cb, ptr %i.gl, align 8, !tbaa !70, !alias.scope !376
  %i.gm = getelementptr inbounds nuw i8, ptr %34, i64 40
  store i64 0, ptr %i.gm, align 8, !tbaa !70, !alias.scope !376
  %i.gn = getelementptr inbounds nuw i8, ptr %34, i64 48
  store i64 %i.gb, ptr %i.gn, align 8, !tbaa !285, !alias.scope !376
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.gg, ptr %11, align 8, !tbaa !288
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.ge, ptr %i.go, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.gi, ptr %12, align 8, !tbaa !290
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.gb, ptr %i.gp, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !292
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.gq, align 8, !tbaa !294
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.gr, align 8, !tbaa !84
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %34, ptr %i.gs, align 8, !tbaa !296
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS3_INS4_IKSM_Li1ELin1ELb1EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi0EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.gt = load ptr, ptr %0, align 8, !tbaa !269, !noalias !382
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !271, !noalias !382 ; 2 uses
  %i.gv = mul nsw i64 %i.gu, %3
  %i.gw = getelementptr inbounds [16 x i8], ptr %i.gt, i64 %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.gx = add nuw nsw i64 %i.ca, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.gy = load ptr, ptr %32, align 8, !tbaa !269, !noalias !385
  %i.gz = load i64, ptr %i.cy, align 8, !tbaa !271, !noalias !385 ; 4 uses
  %i.ha = mul nsw i64 %i.gz, %i.gx
  %i.hb = getelementptr inbounds [16 x i8], ptr %i.gy, i64 %i.ha ; 2 uses
  store ptr %i.hb, ptr %35, align 8, !tbaa !281, !alias.scope !385
  %i.hc = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.gz, ptr %i.hc, align 8, !tbaa !70, !alias.scope !385
  %i.hd = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %32, ptr %i.hd, align 8, !tbaa !283, !alias.scope !385
  %i.he = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %i.gx, ptr %i.he, align 8, !tbaa !70, !alias.scope !385
  %i.hf = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 0, ptr %i.hf, align 8, !tbaa !70, !alias.scope !385
  %i.hg = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %i.gz, ptr %i.hg, align 8, !tbaa !285, !alias.scope !385
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.gw, ptr %7, align 8, !tbaa !288
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.gu, ptr %i.hh, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.hb, ptr %8, align 8, !tbaa !290
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.gz, ptr %i.hi, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !292
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.hj, align 8, !tbaa !294
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.hk, align 8, !tbaa !84
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %35, ptr %i.hl, align 8, !tbaa !296
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS3_INS4_IKSM_Li1ELin1ELb1EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi0EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i unwind label %bb.bh

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.hn = mul nuw i64 %i.cb, 12
  %i.ho = call noalias ptr @malloc(i64 noundef %i.hn) #37 ; 6 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.hq = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hq, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.hq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc178 unwind label %bb.be

.noexc178:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.bf:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.ho, ptr %36, align 8, !tbaa !39
  store i64 %i.cb, ptr %i.hm, align 8, !tbaa !41
  store i64 3, ptr %i.hs, align 8, !tbaa !94
  %.pre283 = trunc i64 %i.gx to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge248_crit_edge, label %.lr.ph247

.._crit_edge248_crit_edge:                        ; preds = %bb.bf
  %.pre282 = trunc i64 %i.cb to i32
  %.pre285 = shl nuw i64 %i.cb, 3
  br label %._crit_edge248

.lr.ph247:                                        ; preds = %bb.bf
  %i.ht = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.hu = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx238 = shl nuw i64 %i.cb, 3                 ; 5 uses
  %i.hv = icmp eq i64 %i.bz, 4
  br i1 %i.hv, label %.epil.preheader, label %.lr.ph247.new

.lr.ph247.new:                                    ; preds = %.lr.ph247
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %bb.bi

bb.bg:                                            ; preds = %.loopexit
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.co

bb.bh:                                            ; preds = %bb.bc
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.co

bb.bi:                                            ; preds = %bb.bi, %.lr.ph247.new
  %.089245 = phi i64 [ 0, %.lr.ph247.new ], [ %i.ir, %bb.bi ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph247.new ], [ %niter.next.1, %bb.bi ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %.089245
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !31
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !38
  %i.ic = icmp slt i32 %i.ib, 0                   ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.ho, i64 %.089245 ; 3 uses
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.cb
  %i.if = getelementptr i8, ptr %i.id, i64 %.idx238
  %i.ig = trunc i64 %.089245 to i32
  %..pre283 = select i1 %i.ic, i32 %i.hu, i32 %.pre283
  %.pre283. = select i1 %i.ic, i32 %.pre283, i32 %i.hu
  store i32 %..pre283, ptr %i.id, align 4, !tbaa !38
  store i32 %.pre283., ptr %i.ie, align 4, !tbaa !38
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !38
  %i.ih = or disjoint i64 %.089245, 1             ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !31
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !38
  %i.im = icmp slt i32 %i.il, 0                   ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.ho, i64 %i.ih ; 3 uses
  %i.io = getelementptr [4 x i8], ptr %i.in, i64 %i.cb
  %i.ip = getelementptr i8, ptr %i.in, i64 %.idx238
  %i.iq = trunc i64 %i.ih to i32
  %..pre283.1 = select i1 %i.im, i32 %i.hu, i32 %.pre283
  %.pre283..1 = select i1 %i.im, i32 %.pre283, i32 %i.hu
  store i32 %..pre283.1, ptr %i.in, align 4, !tbaa !38
  store i32 %.pre283..1, ptr %i.io, align 4, !tbaa !38
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !38
  %i.ir = add nuw i64 %.089245, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge248.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !388

._crit_edge248.loopexit.unr-lcssa:                ; preds = %bb.bi
  %i.is = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.is, 0
  br i1 %lcmp.mod.not, label %._crit_edge248, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge248.loopexit.unr-lcssa, %.lr.ph247
  %.089245.epil.init = phi i64 [ 0, %.lr.ph247 ], [ %i.ir, %._crit_edge248.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod351 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %.089245.epil.init
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !31
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !38
  %i.ix = icmp slt i32 %i.iw, 0                   ; 2 uses
  %i.iy = getelementptr [4 x i8], ptr %i.ho, i64 %.089245.epil.init ; 3 uses
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %i.cb
  %i.ja = getelementptr i8, ptr %i.iy, i64 %.idx238
  %i.jb = trunc i64 %.089245.epil.init to i32
  %..pre283.epil = select i1 %i.ix, i32 %i.hu, i32 %.pre283
  %.pre283..epil = select i1 %i.ix, i32 %.pre283, i32 %i.hu
  store i32 %..pre283.epil, ptr %i.iy, align 4, !tbaa !38
  store i32 %.pre283..epil, ptr %i.iz, align 4, !tbaa !38
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !38
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %.epil.preheader, %._crit_edge248.loopexit.unr-lcssa, %.._crit_edge248_crit_edge
  %.idx.pre-phi = phi i64 [ %.pre285, %.._crit_edge248_crit_edge ], [ %.idx238, %._crit_edge248.loopexit.unr-lcssa ], [ %.idx238, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre282, %.._crit_edge248_crit_edge ], [ %i.hu, %._crit_edge248.loopexit.unr-lcssa ], [ %i.hu, %.epil.preheader ]
  %i.jc = getelementptr i8, ptr %i.ho, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.jc, align 4, !tbaa !38
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.cb
  store i32 %.pre283, ptr %i.jd, align 4, !tbaa !38
  %i.je = getelementptr i8, ptr %i.jc, i64 %.idx.pre-phi
  %i.jf = trunc i64 %i.ca to i32
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.jg = shl nuw nsw i64 %i.cb, 2
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #36
          to label %.noexc160 unwind label %bb.bj ; 7 uses

.noexc160:                                        ; preds = %._crit_edge248
  store ptr %i.jh, ptr %37, align 8, !tbaa !30
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !96
  store i32 0, ptr %i.jh, align 4, !tbaa !38
  %i.jk = getelementptr i8, ptr %i.jh, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph251, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc160
  call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.bz
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.noexc160, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i158 = phi ptr [ %i.jl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jk, %.noexc160 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.0.i.i.i.i.i158, ptr %i.jm, align 8, !tbaa !27
  %i.jn = load ptr, ptr %36, align 8, !tbaa !39   ; 3 uses
  %i.jo = load i64, ptr %i.hm, align 8            ; 3 uses
  %i.jp = icmp eq ptr %i.bv, %i.bw
  br i1 %i.jp, label %.epil.preheader352, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter356 = and i64 %i.cb, 2305843009213693950
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge248
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bs, %.lr.ph251.new
  %.088249 = phi i64 [ 0, %.lr.ph251.new ], [ %i.ks, %bb.bs ] ; 6 uses
  %niter357 = phi i64 [ 0, %.lr.ph251.new ], [ %niter357.next.1, %bb.bs ]
  %i.jr = getelementptr [4 x i8], ptr %i.jn, i64 %.088249 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !38
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp eq i64 %i.cb, %i.jt
  br i1 %i.ju, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jv = getelementptr [4 x i8], ptr %i.jr, i64 %i.jo
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !38
  %i.jx = sext i32 %i.jw to i64
  %i.jy = icmp eq i64 %i.gx, %i.jx
  br i1 %i.jy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jz = trunc i64 %.088249 to i32
  %i.ka = xor i32 %i.jz, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.kb = trunc i64 %.088249 to i32
  %i.kc = or disjoint i32 %i.kb, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink347 = phi i32 [ %i.ka, %bb.bm ], [ %i.kc, %bb.bn ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.088249
  store i32 %.sink347, ptr %i.kd, align 4, !tbaa !38
  %i.ke = or disjoint i64 %.088249, 1             ; 4 uses
  %i.kf = getelementptr [4 x i8], ptr %i.jn, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !38
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp eq i64 %i.cb, %i.kh
  br i1 %i.ki, label %bb.bp, label %bb.bq

end_hunk_4
begin_hunk_5_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %i.ep = add nuw i64 %.090241, 1                 ; 2 uses
  %exitcond268.not = icmp eq i64 %i.ep, %i.bz
  br i1 %exitcond268.not, label %._crit_edge244, label %bb.ap, !llvm.loop !400

bb.av:                                            ; preds = %bb.at
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.co

._crit_edge244:                                   ; preds = %bb.au
  %.pre = load ptr, ptr %32, align 8, !tbaa !269, !noalias !401 ; 2 uses
  %.pre277 = load i64, ptr %i.cx, align 8, !tbaa !271, !noalias !401 ; 4 uses
  %i.er = mul nsw i64 %.pre277, %i.bz
  %i.es = getelementptr inbounds [16 x i8], ptr %.pre, i64 %i.er
  %i.et = icmp sgt i64 %.pre277, 0
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge244.thread, %._crit_edge244
  %i.eu = phi ptr [ %i.db, %._crit_edge244.thread ], [ %i.es, %._crit_edge244 ]
  %i.ev = phi i64 [ 3, %._crit_edge244.thread ], [ %.pre277, %._crit_edge244 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ey, 0
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fb = atomicrmw add ptr %i.fa, i32 1 monotonic, align 4 ; 0 uses
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ay

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fd = load atomic i32, ptr %i.fa monotonic, align 4
  %i.fe = add nsw i32 %i.fd, 1
  store atomic i32 %i.fe, ptr %i.fa monotonic, align 4
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = load atomic i32, ptr %i.fg monotonic, align 4 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(12) %i.ff) #22, !inline_history !404
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = add nsw i32 %i.fh, -1
  store atomic i32 %i.fm, ptr %i.fg monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fo = load atomic i32, ptr %i.fn monotonic, align 4
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fq = atomicrmw sub ptr %i.fn, i32 1 release, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.ba, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  fence acquire
  %i.fs = load ptr, ptr %i.ew, align 8, !tbaa !20 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(12) %i.fs) #22, !inline_history !404
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = load ptr, ptr %i.ex, align 8, !tbaa !20
  store ptr %i.fx, ptr %i.ew, align 8, !tbaa !20
  %i.fy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fy, %i.ev
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !405

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.pre278 = load ptr, ptr %32, align 8, !tbaa !269, !noalias !406
  %.pre279 = load i64, ptr %i.cx, align 8, !tbaa !271, !noalias !406
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge244
  %i.fz = phi i64 [ %.pre279, %.loopexit.loopexit ], [ %.pre277, %._crit_edge244 ] ; 4 uses
  %i.ga = phi ptr [ %.pre278, %.loopexit.loopexit ], [ %.pre, %._crit_edge244 ]
  %i.gb = load ptr, ptr %0, align 8, !tbaa !269, !noalias !409
  %i.gc = load i64, ptr %i.b, align 8, !tbaa !271, !noalias !409 ; 2 uses
  %i.gd = mul nsw i64 %i.gc, %2
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.gf = mul nsw i64 %i.fz, %i.ca
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.gf ; 2 uses
  store ptr %i.gg, ptr %34, align 8, !tbaa !281, !alias.scope !406
  %i.gh = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 %i.fz, ptr %i.gh, align 8, !tbaa !70, !alias.scope !406
  %i.gi = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr %32, ptr %i.gi, align 8, !tbaa !283, !alias.scope !406
  %i.gj = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i64 %i.ca, ptr %i.gj, align 8, !tbaa !70, !alias.scope !406
  %i.gk = getelementptr inbounds nuw i8, ptr %34, i64 40
  store i64 0, ptr %i.gk, align 8, !tbaa !70, !alias.scope !406
  %i.gl = getelementptr inbounds nuw i8, ptr %34, i64 48
  store i64 %i.fz, ptr %i.gl, align 8, !tbaa !285, !alias.scope !406
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.ge, ptr %11, align 8, !tbaa !288
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.gc, ptr %i.gm, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.gg, ptr %12, align 8, !tbaa !290
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.fz, ptr %i.gn, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !292
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.go, align 8, !tbaa !294
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.gp, align 8, !tbaa !84
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %34, ptr %i.gq, align 8, !tbaa !296
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS3_INS4_IKSM_Li1ELin1ELb1EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi0EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.gr = load ptr, ptr %0, align 8, !tbaa !269, !noalias !412
  %i.gs = load i64, ptr %i.b, align 8, !tbaa !271, !noalias !412 ; 2 uses
  %i.gt = mul nsw i64 %i.gs, %3
  %i.gu = getelementptr inbounds [16 x i8], ptr %i.gr, i64 %i.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.gv = add nuw nsw i64 %i.bz, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.gw = load ptr, ptr %32, align 8, !tbaa !269, !noalias !415
  %i.gx = load i64, ptr %i.cx, align 8, !tbaa !271, !noalias !415 ; 4 uses
  %i.gy = mul nsw i64 %i.gx, %i.gv
  %i.gz = getelementptr inbounds [16 x i8], ptr %i.gw, i64 %i.gy ; 2 uses
  store ptr %i.gz, ptr %35, align 8, !tbaa !281, !alias.scope !415
  %i.ha = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.gx, ptr %i.ha, align 8, !tbaa !70, !alias.scope !415
  %i.hb = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %32, ptr %i.hb, align 8, !tbaa !283, !alias.scope !415
  %i.hc = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %i.gv, ptr %i.hc, align 8, !tbaa !70, !alias.scope !415
  %i.hd = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 0, ptr %i.hd, align 8, !tbaa !70, !alias.scope !415
  %i.he = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %i.gx, ptr %i.he, align 8, !tbaa !285, !alias.scope !415
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.gu, ptr %7, align 8, !tbaa !288
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.gs, ptr %i.hf, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.gz, ptr %8, align 8, !tbaa !290
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.gx, ptr %i.hg, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !292
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.hh, align 8, !tbaa !294
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.hi, align 8, !tbaa !84
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %35, ptr %i.hj, align 8, !tbaa !296
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEEEENS3_INS4_IKSM_Li1ELin1ELb1EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi0EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i unwind label %bb.bh

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.hl = mul nuw i64 %i.ca, 12
  %i.hm = call noalias ptr @malloc(i64 noundef %i.hl) #37 ; 6 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.ho = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ho, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.ho, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc178 unwind label %bb.be

.noexc178:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.bf:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.hm, ptr %36, align 8, !tbaa !39
  store i64 %i.ca, ptr %i.hk, align 8, !tbaa !41
  store i64 3, ptr %i.hq, align 8, !tbaa !94
  %.pre283 = trunc i64 %i.gv to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge248_crit_edge, label %.lr.ph247

.._crit_edge248_crit_edge:                        ; preds = %bb.bf
  %.pre282 = trunc i64 %i.ca to i32
  %.pre285 = shl nuw i64 %i.ca, 3
  br label %._crit_edge248

.lr.ph247:                                        ; preds = %bb.bf
  %i.hr = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.hs = trunc i64 %i.ca to i32                  ; 8 uses
  %.idx238 = shl nuw i64 %i.ca, 3                 ; 5 uses
  %i.ht = icmp eq i64 %i.by, 4
  br i1 %i.ht, label %.epil.preheader, label %.lr.ph247.new

.lr.ph247.new:                                    ; preds = %.lr.ph247
  %unroll_iter = and i64 %i.bz, 1152921504606846974
  br label %bb.bi

bb.bg:                                            ; preds = %.loopexit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.co

bb.bh:                                            ; preds = %bb.bc
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.co

bb.bi:                                            ; preds = %bb.bi, %.lr.ph247.new
  %.089245 = phi i64 [ 0, %.lr.ph247.new ], [ %i.ip, %bb.bi ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph247.new ], [ %niter.next.1, %bb.bi ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %.089245
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !31
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !38
  %i.ia = icmp slt i32 %i.hz, 0                   ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %i.hm, i64 %.089245 ; 3 uses
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %i.ca
  %i.id = getelementptr i8, ptr %i.ib, i64 %.idx238
  %i.ie = trunc i64 %.089245 to i32
  %..pre283 = select i1 %i.ia, i32 %i.hs, i32 %.pre283
  %.pre283. = select i1 %i.ia, i32 %.pre283, i32 %i.hs
  store i32 %..pre283, ptr %i.ib, align 4, !tbaa !38
  store i32 %.pre283., ptr %i.ic, align 4, !tbaa !38
  store i32 %i.ie, ptr %i.id, align 4, !tbaa !38
  %i.if = or disjoint i64 %.089245, 1             ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !31
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !38
  %i.ik = icmp slt i32 %i.ij, 0                   ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.hm, i64 %i.if ; 3 uses
  %i.im = getelementptr [4 x i8], ptr %i.il, i64 %i.ca
  %i.in = getelementptr i8, ptr %i.il, i64 %.idx238
  %i.io = trunc i64 %i.if to i32
  %..pre283.1 = select i1 %i.ik, i32 %i.hs, i32 %.pre283
  %.pre283..1 = select i1 %i.ik, i32 %.pre283, i32 %i.hs
  store i32 %..pre283.1, ptr %i.il, align 4, !tbaa !38
  store i32 %.pre283..1, ptr %i.im, align 4, !tbaa !38
  store i32 %i.io, ptr %i.in, align 4, !tbaa !38
  %i.ip = add nuw i64 %.089245, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge248.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !418

._crit_edge248.loopexit.unr-lcssa:                ; preds = %bb.bi
  %i.iq = and i64 %i.by, 4
  %lcmp.mod.not = icmp eq i64 %i.iq, 0
  br i1 %lcmp.mod.not, label %._crit_edge248, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge248.loopexit.unr-lcssa, %.lr.ph247
  %.089245.epil.init = phi i64 [ 0, %.lr.ph247 ], [ %i.ip, %._crit_edge248.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod351 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0326337, i64 %.089245.epil.init
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !38
  %i.iv = icmp slt i32 %i.iu, 0                   ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.hm, i64 %.089245.epil.init ; 3 uses
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.ca
  %i.iy = getelementptr i8, ptr %i.iw, i64 %.idx238
  %i.iz = trunc i64 %.089245.epil.init to i32
  %..pre283.epil = select i1 %i.iv, i32 %i.hs, i32 %.pre283
  %.pre283..epil = select i1 %i.iv, i32 %.pre283, i32 %i.hs
  store i32 %..pre283.epil, ptr %i.iw, align 4, !tbaa !38
  store i32 %.pre283..epil, ptr %i.ix, align 4, !tbaa !38
  store i32 %i.iz, ptr %i.iy, align 4, !tbaa !38
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %.epil.preheader, %._crit_edge248.loopexit.unr-lcssa, %.._crit_edge248_crit_edge
  %.idx.pre-phi = phi i64 [ %.pre285, %.._crit_edge248_crit_edge ], [ %.idx238, %._crit_edge248.loopexit.unr-lcssa ], [ %.idx238, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre282, %.._crit_edge248_crit_edge ], [ %i.hs, %._crit_edge248.loopexit.unr-lcssa ], [ %i.hs, %.epil.preheader ]
  %i.ja = getelementptr i8, ptr %i.hm, i64 %i.by  ; 3 uses
  store i32 %.pre-phi, ptr %i.ja, align 4, !tbaa !38
  %i.jb = getelementptr [4 x i8], ptr %i.ja, i64 %i.ca
  store i32 %.pre283, ptr %i.jb, align 4, !tbaa !38
  %i.jc = getelementptr i8, ptr %i.ja, i64 %.idx.pre-phi
  %i.jd = trunc i64 %i.bz to i32
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.je = shl nuw nsw i64 %i.ca, 2
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #36
          to label %.noexc160 unwind label %bb.bj ; 7 uses

.noexc160:                                        ; preds = %._crit_edge248
  store ptr %i.jf, ptr %37, align 8, !tbaa !30
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ca
  %i.jh = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !96
  store i32 0, ptr %i.jf, align 4, !tbaa !38
  %i.ji = getelementptr i8, ptr %i.jf, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph251, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc160
  call void @llvm.memset.p0.i64(ptr align 4 %i.ji, i8 0, i64 %i.by, i1 false), !tbaa !38
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.by
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.noexc160, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i158 = phi ptr [ %i.jj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ji, %.noexc160 ]
  %i.jk = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.0.i.i.i.i.i158, ptr %i.jk, align 8, !tbaa !27
  %i.jl = load ptr, ptr %36, align 8, !tbaa !39   ; 3 uses
  %i.jm = load i64, ptr %i.hk, align 8            ; 3 uses
  %i.jn = icmp eq ptr %i.bu, %i.bv
  br i1 %i.jn, label %.epil.preheader352, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter356 = and i64 %i.ca, 2305843009213693950
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge248
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bs, %.lr.ph251.new
  %.088249 = phi i64 [ 0, %.lr.ph251.new ], [ %i.kq, %bb.bs ] ; 6 uses
  %niter357 = phi i64 [ 0, %.lr.ph251.new ], [ %niter357.next.1, %bb.bs ]
  %i.jp = getelementptr [4 x i8], ptr %i.jl, i64 %.088249 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !38
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp eq i64 %i.ca, %i.jr
  br i1 %i.js, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jt = getelementptr [4 x i8], ptr %i.jp, i64 %i.jm
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !38
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp eq i64 %i.gv, %i.jv
  br i1 %i.jw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jx = trunc i64 %.088249 to i32
  %i.jy = xor i32 %i.jx, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.jz = trunc i64 %.088249 to i32
  %i.ka = or disjoint i32 %i.jz, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink347 = phi i32 [ %i.jy, %bb.bm ], [ %i.ka, %bb.bn ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.088249
  store i32 %.sink347, ptr %i.kb, align 4, !tbaa !38
  %i.kc = or disjoint i64 %.088249, 1             ; 4 uses
  %i.kd = getelementptr [4 x i8], ptr %i.jl, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !38
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp eq i64 %i.ca, %i.kf
  br i1 %i.kg, label %bb.bp, label %bb.bq

end_hunk_5
begin_hunk_6_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit173

.lr.ph:                                           ; preds = %.lr.ph.preheader378, %.lr.ph
  %.0110266 = phi i64 [ %i.cy, %.lr.ph ], [ %.0110266.ph, %.lr.ph.preheader378 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.0110266
  store i64 %.0110266, ptr %i.cx, align 8, !tbaa !31
  %i.cy = add nuw i64 %.0110266, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !560

bb.an:                                            ; preds = %.noexc145, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.cz = add nuw nsw i64 %i.ca, 3
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dd = icmp samesign ugt i64 %i.ca, 768614336404564647
  br i1 %i.dd, label %bb.ao, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.de = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.de, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc175 unwind label %bb.aq

.noexc175:                                        ; preds = %bb.ao
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %.thread, %bb.an
  %i.df = phi ptr [ %i.cf, %.thread ], [ %i.dc, %bb.an ]
  %i.dg = phi ptr [ %i.ce, %.thread ], [ %i.db, %bb.an ]
  %i.dh = phi i64 [ 3, %.thread ], [ %i.cz, %bb.an ] ; 8 uses
  %.sroa.0227.0346357365 = phi ptr [ null, %.thread ], [ %i.ch, %bb.an ] ; 12 uses
  %.sroa.15.0343359364 = phi ptr [ null, %.thread ], [ %i.ci, %bb.an ] ; 3 uses
  %i.di = mul nuw i64 %i.dh, 24
  %i.dj = call noalias ptr @malloc(i64 noundef %i.di) #37 ; 7 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.dl = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc176 unwind label %bb.aq

.noexc176:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0227.0346357366 = phi ptr [ %.sroa.0227.0346357365, %bb.ap ], [ %i.ch, %bb.ao ]
  %.sroa.15.0343359363 = phi ptr [ %.sroa.15.0343359364, %bb.ap ], [ %i.ci, %bb.ao ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ar:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.dj, ptr %20, align 8, !tbaa !555
  store i64 %i.dh, ptr %i.dg, align 8, !tbaa !558
  store i64 3, ptr %i.df, align 8, !tbaa !561
  %.pre = load ptr, ptr %0, align 8, !tbaa !555, !noalias !14 ; 3 uses
  %.pre303 = load i64, ptr %i.b, align 8, !tbaa !558 ; 5 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge270_crit_edge, label %.lr.ph269

.._crit_edge270_crit_edge:                        ; preds = %bb.ar
  %.pre307 = shl nuw nsw i64 %i.dh, 1
  %.pre308 = shl nsw i64 %.pre303, 1
  br label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph269:                                        ; preds = %bb.ar
  %i.dn = load ptr, ptr %4, align 8, !tbaa !30
  %i.do = load ptr, ptr %1, align 8, !tbaa !39
  %i.dp = trunc i64 %2 to i32                     ; 3 uses
  %i.dq = trunc i64 %3 to i32                     ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = shl nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dt = shl nsw i64 %.pre303, 1                 ; 2 uses
  br label %bb.as

.thread367:                                       ; preds = %bb.aj, %.noexc145
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.as:                                            ; preds = %.lr.ph269, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.090267 = phi i64 [ 0, %.lr.ph269 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %.090267
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !38
  %i.dz = call i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr [4 x i8], ptr %i.do, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4     ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.ed, %i.dp
  %.not10.i = icmp eq i32 %i.ed, %i.dq
  %or.cond258 = or i1 %.not.i, %.not10.i
  br i1 %or.cond258, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ee = load i64, ptr %i.dr, align 8, !tbaa !41 ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ec, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.eg, %i.dp
  %.not12.i = icmp eq i32 %i.eg, %i.dq
  %or.cond259 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond259, label %bb.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %.idx.i = shl i64 %i.ee, 3
  %i.eh = getelementptr i8, ptr %i.ec, i64 %.idx.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.ei, %i.dp
  br i1 %.not13.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not14.i = icmp eq i32 %i.ei, %i.dq
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.ei
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %bb.as, %bb.av, %bb.au
  %.0.i = phi i32 [ -1, %bb.au ], [ %i.ed, %bb.as ], [ %i.eg, %bb.at ], [ %spec.select.i, %bb.av ]
  %i.ej = sext i32 %.0.i to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %.090267 ; 3 uses
  %i.em = load double, ptr %i.ek, align 8, !tbaa !562
  store double %i.em, ptr %i.el, align 8, !tbaa !562
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.dh
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %.pre303
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !562
  store double %i.ep, ptr %i.en, align 8, !tbaa !562
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ds
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.dt
  %i.es = load double, ptr %i.er, align 8, !tbaa !562
  store double %i.es, ptr %i.eq, align 8, !tbaa !562
  %i.et = add nuw i64 %.090267, 1                 ; 2 uses
  %exitcond294.not = icmp eq i64 %i.et, %i.ca
  br i1 %exitcond294.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %bb.as, !llvm.loop !564

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.._crit_edge270_crit_edge
  %.pre-phi309 = phi i64 [ %.pre308, %.._crit_edge270_crit_edge ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre307, %.._crit_edge270_crit_edge ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ca ; 3 uses
  %i.ev = load ptr, ptr %5, align 8, !tbaa !555   ; 3 uses
  %i.ew = load i64, ptr %i.n, align 8, !tbaa !558 ; 2 uses
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !562
  store double %i.ex, ptr %i.eu, align 8, !tbaa !562
  %i.ey = getelementptr [8 x i8], ptr %i.eu, i64 %i.dh
  %i.ez = getelementptr [8 x i8], ptr %i.ev, i64 %i.ew
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !562
  store double %i.fa, ptr %i.ey, align 8, !tbaa !562
  %i.fb = getelementptr [8 x i8], ptr %i.eu, i64 %.pre-phi
  %.idx338 = shl i64 %i.ew, 4
  %i.fc = getelementptr i8, ptr %i.ev, i64 %.idx338
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !562
  store double %i.fd, ptr %i.fb, align 8, !tbaa !562
  %i.fe = getelementptr inbounds [8 x i8], ptr %.pre, i64 %2 ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.cb ; 3 uses
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !562
  store double %i.fg, ptr %i.ff, align 8, !tbaa !562
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.dh
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.pre303
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !562
  store double %i.fj, ptr %i.fh, align 8, !tbaa !562
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.pre-phi
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.pre-phi309
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !562
  store double %i.fm, ptr %i.fk, align 8, !tbaa !562
  %i.fn = getelementptr inbounds [8 x i8], ptr %.pre, i64 %3 ; 3 uses
  %i.fo = add nuw nsw i64 %i.ca, 2                ; 7 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fo ; 3 uses
  %i.fq = load double, ptr %i.fn, align 8, !tbaa !562
  store double %i.fq, ptr %i.fp, align 8, !tbaa !562
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.dh
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.pre303
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !562
  store double %i.ft, ptr %i.fr, align 8, !tbaa !562
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.pre-phi
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.pre-phi309
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !562
  store double %i.fw, ptr %i.fu, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.fx = mul nuw i64 %i.cb, 12
  %i.fy = call noalias ptr @malloc(i64 noundef %i.fx) #37 ; 9 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.ga = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ga, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc181 unwind label %bb.ax

.noexc181:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.ay:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.fy, ptr %21, align 8, !tbaa !39
  store i64 %i.cb, ptr %i.gd, align 8, !tbaa !41
  store i64 3, ptr %i.gc, align 8, !tbaa !94
  %.pre312 = trunc i64 %i.fo to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge274_crit_edge, label %.lr.ph273

.._crit_edge274_crit_edge:                        ; preds = %bb.ay
  %.pre310 = trunc i64 %i.cb to i32
  %.pre314 = shl nuw i64 %i.cb, 3
  br label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.ay
  %i.ge = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.gf = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx264 = shl nuw i64 %i.cb, 3                 ; 5 uses
  %i.gg = icmp eq i64 %i.bz, 4
  br i1 %i.gg, label %.epil.preheader, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph273.new
  %.089271 = phi i64 [ 0, %.lr.ph273.new ], [ %i.ha, %bb.az ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph273.new ], [ %niter.next.1, %bb.az ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %.089271
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !31
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !38
  %i.gl = icmp slt i32 %i.gk, 0                   ; 2 uses
  %i.gm = getelementptr [4 x i8], ptr %i.fy, i64 %.089271 ; 3 uses
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %i.cb
  %i.go = getelementptr i8, ptr %i.gm, i64 %.idx264
  %i.gp = trunc i64 %.089271 to i32
  %..pre312 = select i1 %i.gl, i32 %i.gf, i32 %.pre312
  %.pre312. = select i1 %i.gl, i32 %.pre312, i32 %i.gf
  store i32 %..pre312, ptr %i.gm, align 4, !tbaa !38
  store i32 %.pre312., ptr %i.gn, align 4, !tbaa !38
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !38
  %i.gq = or disjoint i64 %.089271, 1             ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !38
  %i.gv = icmp slt i32 %i.gu, 0                   ; 2 uses
  %i.gw = getelementptr [4 x i8], ptr %i.fy, i64 %i.gq ; 3 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.cb
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.idx264
  %i.gz = trunc i64 %i.gq to i32
  %..pre312.1 = select i1 %i.gv, i32 %i.gf, i32 %.pre312
  %.pre312..1 = select i1 %i.gv, i32 %.pre312, i32 %i.gf
  store i32 %..pre312.1, ptr %i.gw, align 4, !tbaa !38
  store i32 %.pre312..1, ptr %i.gx, align 4, !tbaa !38
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !38
  %i.ha = add nuw i64 %.089271, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge274.loopexit.unr-lcssa, label %bb.az, !llvm.loop !565

._crit_edge274.loopexit.unr-lcssa:                ; preds = %bb.az
  %i.hb = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.hb, 0
  br i1 %lcmp.mod.not, label %._crit_edge274, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge274.loopexit.unr-lcssa, %.lr.ph273
  %.089271.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.ha, %._crit_edge274.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod379 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %.089271.epil.init
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !31
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !38
  %i.hg = icmp slt i32 %i.hf, 0                   ; 2 uses
  %i.hh = getelementptr [4 x i8], ptr %i.fy, i64 %.089271.epil.init ; 3 uses
  %i.hi = getelementptr [4 x i8], ptr %i.hh, i64 %i.cb
  %i.hj = getelementptr i8, ptr %i.hh, i64 %.idx264
  %i.hk = trunc i64 %.089271.epil.init to i32
  %..pre312.epil = select i1 %i.hg, i32 %i.gf, i32 %.pre312
  %.pre312..epil = select i1 %i.hg, i32 %.pre312, i32 %i.gf
  store i32 %..pre312.epil, ptr %i.hh, align 4, !tbaa !38
  store i32 %.pre312..epil, ptr %i.hi, align 4, !tbaa !38
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !38
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %.epil.preheader, %._crit_edge274.loopexit.unr-lcssa, %.._crit_edge274_crit_edge
  %.idx263.pre-phi = phi i64 [ %.pre314, %.._crit_edge274_crit_edge ], [ %.idx264, %._crit_edge274.loopexit.unr-lcssa ], [ %.idx264, %.epil.preheader ]
  %.pre-phi311 = phi i32 [ %.pre310, %.._crit_edge274_crit_edge ], [ %i.gf, %._crit_edge274.loopexit.unr-lcssa ], [ %i.gf, %.epil.preheader ]
  %i.hl = getelementptr i8, ptr %i.fy, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi311, ptr %i.hl, align 4, !tbaa !38
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.cb
  store i32 %.pre312, ptr %i.hm, align 4, !tbaa !38
  %i.hn = getelementptr i8, ptr %i.hl, i64 %.idx263.pre-phi
  %i.ho = trunc i64 %i.ca to i32
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hp = shl nuw nsw i64 %i.cb, 2
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #36
          to label %.noexc164 unwind label %bb.ba ; 7 uses

.noexc164:                                        ; preds = %._crit_edge274
  store ptr %i.hq, ptr %22, align 8, !tbaa !30
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.cb
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !96
  store i32 0, ptr %i.hq, align 4, !tbaa !38
  %i.ht = getelementptr i8, ptr %i.hq, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph277, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc164
  call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.bz
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %.noexc164, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i162 = phi ptr [ %i.hu, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ht, %.noexc164 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i162, ptr %i.hv, align 8, !tbaa !27
  %i.hw = icmp eq ptr %i.bv, %i.bw
  br i1 %i.hw, label %.epil.preheader380, label %.lr.ph277.new

.lr.ph277.new:                                    ; preds = %.lr.ph277
  %unroll_iter384 = and i64 %i.cb, 2305843009213693950
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge274
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

bb.bb:                                            ; preds = %bb.bj, %.lr.ph277.new
  %.088275 = phi i64 [ 0, %.lr.ph277.new ], [ %i.iz, %bb.bj ] ; 6 uses
  %niter385 = phi i64 [ 0, %.lr.ph277.new ], [ %niter385.next.1, %bb.bj ]
  %i.hy = getelementptr [4 x i8], ptr %i.fy, i64 %.088275 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !38
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp eq i64 %i.cb, %i.ia
  br i1 %i.ib, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ic = getelementptr [4 x i8], ptr %i.hy, i64 %i.cb
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !38
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp eq i64 %i.fo, %i.ie
  br i1 %i.if, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ig = trunc i64 %.088275 to i32
  %i.ih = xor i32 %i.ig, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.ii = trunc i64 %.088275 to i32
  %i.ij = or disjoint i32 %i.ii, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink376 = phi i32 [ %i.ih, %bb.bd ], [ %i.ij, %bb.be ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.088275
  store i32 %.sink376, ptr %i.ik, align 4, !tbaa !38
  %i.il = or disjoint i64 %.088275, 1             ; 4 uses
  %i.im = getelementptr [4 x i8], ptr %i.fy, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !38
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp eq i64 %i.cb, %i.io
  br i1 %i.ip, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.iq = getelementptr [4 x i8], ptr %i.im, i64 %i.cb
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !38
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp eq i64 %i.fo, %i.is
  br i1 %i.it, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.iu = trunc i64 %i.il to i32
  %i.iv = add i32 %i.iu, 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
end_hunk_6
begin_hunk_7_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLi1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EEmmRKSt6vectorIiSaIiEERKNS9_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SO_(ptr nonnull %i.cf, ptr %.0.i.i.i.i.i.ph, ptr nonnull %16, ptr nonnull %4)
          to label %bb.an unwind label %.thread367

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit175

.lr.ph:                                           ; preds = %.lr.ph.preheader378, %.lr.ph
  %.0110267 = phi i64 [ %i.cw, %.lr.ph ], [ %.0110267.ph, %.lr.ph.preheader378 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0110267
  store i64 %.0110267, ptr %i.cv, align 8, !tbaa !31
  %i.cw = add nuw i64 %.0110267, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !612

bb.an:                                            ; preds = %.noexc145, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.cx = add nuw nsw i64 %i.by, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.db = icmp samesign ugt i64 %i.by, 768614336404564647
  br i1 %i.db, label %bb.ao, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dc = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dc, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc177 unwind label %bb.aq

.noexc177:                                        ; preds = %bb.ao
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %.thread, %bb.an
  %i.dd = phi ptr [ %i.cd, %.thread ], [ %i.da, %bb.an ]
  %i.de = phi ptr [ %i.cc, %.thread ], [ %i.cz, %bb.an ]
  %i.df = phi i64 [ 3, %.thread ], [ %i.cx, %bb.an ] ; 8 uses
  %.sroa.0229.0346357365 = phi ptr [ null, %.thread ], [ %i.cf, %bb.an ] ; 12 uses
  %.sroa.15.0343359364 = phi ptr [ null, %.thread ], [ %i.cg, %bb.an ] ; 3 uses
  %i.dg = mul nuw i64 %i.df, 24
  %i.dh = call noalias ptr @malloc(i64 noundef %i.dg) #37 ; 7 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.dj = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc178 unwind label %bb.aq

.noexc178:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0229.0346357366 = phi ptr [ %.sroa.0229.0346357365, %bb.ap ], [ %i.cf, %bb.ao ]
  %.sroa.15.0343359363 = phi ptr [ %.sroa.15.0343359364, %bb.ap ], [ %i.cg, %bb.ao ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ar:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.dh, ptr %20, align 8, !tbaa !555
  store i64 %i.df, ptr %i.de, align 8, !tbaa !558
  store i64 3, ptr %i.dd, align 8, !tbaa !561
  %.pre = load ptr, ptr %0, align 8, !tbaa !555, !noalias !14 ; 3 uses
  %.pre304 = load i64, ptr %i.b, align 8, !tbaa !558 ; 5 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge271_crit_edge, label %.lr.ph270

.._crit_edge271_crit_edge:                        ; preds = %bb.ar
  %.pre308 = shl nuw nsw i64 %i.df, 1
  %.pre309 = shl nsw i64 %.pre304, 1
  br label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph270:                                        ; preds = %bb.ar
  %i.dl = load ptr, ptr %4, align 8, !tbaa !30
  %i.dm = load ptr, ptr %1, align 8, !tbaa !39
  %i.dn = trunc i64 %2 to i32                     ; 3 uses
  %i.do = trunc i64 %3 to i32                     ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = shl nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dr = shl nsw i64 %.pre304, 1                 ; 2 uses
  br label %bb.as

.thread367:                                       ; preds = %bb.aj, %.noexc145
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.as:                                            ; preds = %.lr.ph270, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.090268 = phi i64 [ 0, %.lr.ph270 ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %.090268
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !38
  %i.dx = call i32 @llvm.abs.i32(i32 %i.dw, i1 true)
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4     ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.eb, %i.dn
  %.not10.i = icmp eq i32 %i.eb, %i.do
  %or.cond260 = or i1 %.not.i, %.not10.i
  br i1 %or.cond260, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !41 ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.ee, %i.dn
  %.not12.i = icmp eq i32 %i.ee, %i.do
  %or.cond261 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond261, label %bb.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %.idx.i = shl i64 %i.ec, 3
  %i.ef = getelementptr i8, ptr %i.ea, i64 %.idx.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.eg, %i.dn
  br i1 %.not13.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not14.i = icmp eq i32 %i.eg, %i.do
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.eg
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %bb.as, %bb.av, %bb.au
  %.0.i = phi i32 [ -1, %bb.au ], [ %i.eb, %bb.as ], [ %i.ee, %bb.at ], [ %spec.select.i, %bb.av ]
  %i.eh = sext i32 %.0.i to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.eh ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.090268 ; 3 uses
  %i.ek = load double, ptr %i.ei, align 8, !tbaa !562
  store double %i.ek, ptr %i.ej, align 8, !tbaa !562
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.df
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.pre304
  %i.en = load double, ptr %i.em, align 8, !tbaa !562
  store double %i.en, ptr %i.el, align 8, !tbaa !562
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.dq
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.dr
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !562
  store double %i.eq, ptr %i.eo, align 8, !tbaa !562
  %i.er = add nuw i64 %.090268, 1                 ; 2 uses
  %exitcond295.not = icmp eq i64 %i.er, %i.by
  br i1 %exitcond295.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %bb.as, !llvm.loop !613

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.._crit_edge271_crit_edge
  %.pre-phi310 = phi i64 [ %.pre309, %.._crit_edge271_crit_edge ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre308, %.._crit_edge271_crit_edge ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.by ; 3 uses
  %i.et = load ptr, ptr %5, align 8, !tbaa !609   ; 3 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !562
  store double %i.eu, ptr %i.es, align 8, !tbaa !562
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.df
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !562
  store double %i.ex, ptr %i.ev, align 8, !tbaa !562
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.pre-phi
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !562
  store double %i.fa, ptr %i.ey, align 8, !tbaa !562
  %i.fb = getelementptr inbounds [8 x i8], ptr %.pre, i64 %2 ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.bz ; 3 uses
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !562
  store double %i.fd, ptr %i.fc, align 8, !tbaa !562
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.df
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.pre304
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !562
  store double %i.fg, ptr %i.fe, align 8, !tbaa !562
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.pre-phi
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.pre-phi310
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !562
  store double %i.fj, ptr %i.fh, align 8, !tbaa !562
  %i.fk = getelementptr inbounds [8 x i8], ptr %.pre, i64 %3 ; 3 uses
  %i.fl = add nuw nsw i64 %i.by, 2                ; 7 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.fl ; 3 uses
  %i.fn = load double, ptr %i.fk, align 8, !tbaa !562
  store double %i.fn, ptr %i.fm, align 8, !tbaa !562
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.df
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.pre304
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !562
  store double %i.fq, ptr %i.fo, align 8, !tbaa !562
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.pre-phi
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.pre-phi310
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !562
  store double %i.ft, ptr %i.fr, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.fu = mul nuw i64 %i.bz, 12
  %i.fv = call noalias ptr @malloc(i64 noundef %i.fu) #37 ; 9 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.fx = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fx, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc183 unwind label %bb.ax

.noexc183:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body160

bb.ay:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.fv, ptr %21, align 8, !tbaa !39
  store i64 %i.bz, ptr %i.ga, align 8, !tbaa !41
  store i64 3, ptr %i.fz, align 8, !tbaa !94
  %.pre313 = trunc i64 %i.fl to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge275_crit_edge, label %.lr.ph274

.._crit_edge275_crit_edge:                        ; preds = %bb.ay
  %.pre311 = trunc i64 %i.bz to i32
  %.pre315 = shl nuw i64 %i.bz, 3
  br label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.ay
  %i.gb = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.gc = trunc i64 %i.bz to i32                  ; 8 uses
  %.idx265 = shl nuw i64 %i.bz, 3                 ; 5 uses
  %i.gd = icmp eq i64 %i.bx, 4
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter = and i64 %i.by, 1152921504606846974
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph274.new
  %.089272 = phi i64 [ 0, %.lr.ph274.new ], [ %i.gx, %bb.az ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph274.new ], [ %niter.next.1, %bb.az ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %.089272
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !31
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !38
  %i.gi = icmp slt i32 %i.gh, 0                   ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %i.fv, i64 %.089272 ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %i.bz
  %i.gl = getelementptr i8, ptr %i.gj, i64 %.idx265
  %i.gm = trunc i64 %.089272 to i32
  %..pre313 = select i1 %i.gi, i32 %i.gc, i32 %.pre313
  %.pre313. = select i1 %i.gi, i32 %.pre313, i32 %i.gc
  store i32 %..pre313, ptr %i.gj, align 4, !tbaa !38
  store i32 %.pre313., ptr %i.gk, align 4, !tbaa !38
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !38
  %i.gn = or disjoint i64 %.089272, 1             ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !31
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !38
  %i.gs = icmp slt i32 %i.gr, 0                   ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %i.fv, i64 %i.gn ; 3 uses
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %i.bz
  %i.gv = getelementptr i8, ptr %i.gt, i64 %.idx265
  %i.gw = trunc i64 %i.gn to i32
  %..pre313.1 = select i1 %i.gs, i32 %i.gc, i32 %.pre313
  %.pre313..1 = select i1 %i.gs, i32 %.pre313, i32 %i.gc
  store i32 %..pre313.1, ptr %i.gt, align 4, !tbaa !38
  store i32 %.pre313..1, ptr %i.gu, align 4, !tbaa !38
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !38
  %i.gx = add nuw i64 %.089272, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge275.loopexit.unr-lcssa, label %bb.az, !llvm.loop !614

._crit_edge275.loopexit.unr-lcssa:                ; preds = %bb.az
  %i.gy = and i64 %i.bx, 4
  %lcmp.mod.not = icmp eq i64 %i.gy, 0
  br i1 %lcmp.mod.not, label %._crit_edge275, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274
  %.089272.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %i.gx, %._crit_edge275.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod379 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %.089272.epil.init
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !31
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !38
  %i.hd = icmp slt i32 %i.hc, 0                   ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.fv, i64 %.089272.epil.init ; 3 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.bz
  %i.hg = getelementptr i8, ptr %i.he, i64 %.idx265
  %i.hh = trunc i64 %.089272.epil.init to i32
  %..pre313.epil = select i1 %i.hd, i32 %i.gc, i32 %.pre313
  %.pre313..epil = select i1 %i.hd, i32 %.pre313, i32 %i.gc
  store i32 %..pre313.epil, ptr %i.he, align 4, !tbaa !38
  store i32 %.pre313..epil, ptr %i.hf, align 4, !tbaa !38
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !38
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %.epil.preheader, %._crit_edge275.loopexit.unr-lcssa, %.._crit_edge275_crit_edge
  %.idx264.pre-phi = phi i64 [ %.pre315, %.._crit_edge275_crit_edge ], [ %.idx265, %._crit_edge275.loopexit.unr-lcssa ], [ %.idx265, %.epil.preheader ]
  %.pre-phi312 = phi i32 [ %.pre311, %.._crit_edge275_crit_edge ], [ %i.gc, %._crit_edge275.loopexit.unr-lcssa ], [ %i.gc, %.epil.preheader ]
  %i.hi = getelementptr i8, ptr %i.fv, i64 %i.bx  ; 3 uses
  store i32 %.pre-phi312, ptr %i.hi, align 4, !tbaa !38
  %i.hj = getelementptr [4 x i8], ptr %i.hi, i64 %i.bz
  store i32 %.pre313, ptr %i.hj, align 4, !tbaa !38
  %i.hk = getelementptr i8, ptr %i.hi, i64 %.idx264.pre-phi
  %i.hl = trunc i64 %i.by to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hm = shl nuw nsw i64 %i.bz, 2
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #36
          to label %.noexc166 unwind label %bb.ba ; 7 uses

.noexc166:                                        ; preds = %._crit_edge275
  store ptr %i.hn, ptr %22, align 8, !tbaa !30
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.bz
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !96
  store i32 0, ptr %i.hn, align 4, !tbaa !38
  %i.hq = getelementptr i8, ptr %i.hn, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph278, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  call void @llvm.memset.p0.i64(ptr align 4 %i.hq, i8 0, i64 %i.bx, i1 false), !tbaa !38
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.bx
  br label %.lr.ph278

.lr.ph278:                                        ; preds = %.noexc166, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i164 = phi ptr [ %i.hr, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hq, %.noexc166 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i164, ptr %i.hs, align 8, !tbaa !27
  %i.ht = icmp eq ptr %i.bt, %i.bu
  br i1 %i.ht, label %.epil.preheader380, label %.lr.ph278.new

.lr.ph278.new:                                    ; preds = %.lr.ph278
  %unroll_iter384 = and i64 %i.bz, 2305843009213693950
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge275
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit173

bb.bb:                                            ; preds = %bb.bj, %.lr.ph278.new
  %.088276 = phi i64 [ 0, %.lr.ph278.new ], [ %i.iw, %bb.bj ] ; 6 uses
  %niter385 = phi i64 [ 0, %.lr.ph278.new ], [ %niter385.next.1, %bb.bj ]
  %i.hv = getelementptr [4 x i8], ptr %i.fv, i64 %.088276 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !38
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp eq i64 %i.bz, %i.hx
  br i1 %i.hy, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.hz = getelementptr [4 x i8], ptr %i.hv, i64 %i.bz
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !38
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp eq i64 %i.fl, %i.ib
  br i1 %i.ic, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.id = trunc i64 %.088276 to i32
  %i.ie = xor i32 %i.id, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.if = trunc i64 %.088276 to i32
  %i.ig = or disjoint i32 %i.if, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink376 = phi i32 [ %i.ie, %bb.bd ], [ %i.ig, %bb.be ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.088276
  store i32 %.sink376, ptr %i.ih, align 4, !tbaa !38
  %i.ii = or disjoint i64 %.088276, 1             ; 4 uses
  %i.ij = getelementptr [4 x i8], ptr %i.fv, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !38
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp eq i64 %i.bz, %i.il
  br i1 %i.im, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.in = getelementptr [4 x i8], ptr %i.ij, i64 %i.bz
  %i.io = load i32, ptr %i.in, align 4, !tbaa !38
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp eq i64 %i.fl, %i.ip
  br i1 %i.iq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ir = trunc i64 %i.ii to i32
  %i.is = add i32 %i.ir, 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
end_hunk_7
