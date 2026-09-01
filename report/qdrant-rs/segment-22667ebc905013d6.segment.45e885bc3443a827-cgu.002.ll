Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENCNvNtB1r_15query_estimator24combine_must_estimationss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minEB1t_:bb.a
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator24combine_must_estimationss0_0NvYjNtNtBb_3cmp3Ord3minE0EBW_.exit, label %bb.d, !llvm.loop !8101

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator24combine_must_estimationss0_0NvYjNtNtBb_3cmp3Ord3minE0EBW_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator24combine_must_estimationss0_0NvYjNtNtBb_3cmp3Ord3minE0EBW_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator24combine_must_estimationss0_0NvYjNtNtBb_3cmp3Ord3minE0EBW_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef double @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENCNvNtB1r_15query_estimator26combine_should_estimations0ENtNtNtBa_6traits8iterator8Iterator4folddNCINvB6_8map_foldjddNCINvB2A_26expected_should_estimationBN_E0NCINvXs27_NtB3v_5accumdNtB5f_7Product7productIBO_BN_B4p_EE0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8102)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 48                  ; 3 uses
  %i.f = load i64, ptr %3, align 8, !alias.scope !8102, !noundef !5
  %i.g = uitofp i64 %i.f to double                ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.d, 48
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ] ; 3 uses
  %.sroa.02.0.i = phi double [ %2, %.new ], [ %i.t, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val11.i = load i64, ptr %i.j, align 8, !noalias !8102, !noundef !5
  %i.k = uitofp i64 %.val11.i to double
  %i.l = fdiv double %i.k, %i.g
  %i.m = fsub double 1.000000e+00, %i.l
  %i.n = fmul double %.sroa.02.0.i, %i.m
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 80
  %.val11.i.1 = load i64, ptr %i.p, align 8, !noalias !8102, !noundef !5
  %i.q = uitofp i64 %.val11.i.1 to double
  %i.r = fdiv double %i.q, %i.g
  %i.s = fsub double 1.000000e+00, %i.r
  %i.t = fmul double %i.n, %i.s                   ; 3 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ %2, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %.val11.i.epil = load i64, ptr %i.w, align 8, !noalias !8102, !noundef !5
  %i.x = uitofp i64 %.val11.i.epil to double
  %i.y = fdiv double %i.x, %i.g
  %i.z = fsub double 1.000000e+00, %i.y
  %i.aa = fmul double %.sroa.02.0.i.epil.init, %i.z
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtB25_8adapters3map8map_foldRBQ_jdNCNvNtBU_15query_estimator26combine_should_estimations0NCIB2N_jddNCINvB3t_26expected_should_estimationINtB2P_3MapBF_B3p_EE0NCINvXs27_NtB23_5accumdNtB5y_7Product7productIB54_B53_B4s_EE0E0E0EBW_.exit.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENCNvNtB1r_15query_estimator26combine_should_estimationss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1t_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 192
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423484
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %..i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val.i = load i64, ptr %i.h, align 8, !noundef !5
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.val.i, i64 %.sroa.02.0.i)
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !5
  %..i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.1, i64 %..i.i.i.i)
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 120
  %.val.i.2 = load i64, ptr %i.l, align 8, !noundef !5
  %..i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.2, i64 %..i.i.i.i.1)
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 168
  %.val.i.3 = load i64, ptr %i.n, align 8, !noundef !5
  %..i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.3, i64 %..i.i.i.i.2) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %.val.i.epil = load i64, ptr %i.q, align 8, !noundef !5
  %..i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.epil, i64 %.sroa.02.0.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit, label %bb.d, !llvm.loop !8105

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB25_8adapters3map8map_foldRBQ_jjNCNvNtBU_15query_estimator26combine_should_estimationss_0NvYjNtNtBb_3cmp3Ord3maxE0EBW_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeENCNvMs_NtB1r_20struct_payload_indexNtB2F_18StructPayloadIndex12load_from_dbs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB4I_9TakeWhileppEB3P_8try_fold5checkINtNtBc_6result6ResultINtNtBc_6option6OptionNtNtNtNtB1r_11field_index16field_index_base11field_index10FieldIndexENtNtNtB1t_6common15operation_error14OperationErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8i_B6k_EENCB2A_s0_0NCINvNtB8_10filter_map19filter_map_try_foldB5C_IB5D_B6k_B7r_EuB8h_NCB2A_s1_0NCINvXB8_INtB8_12GenericShuntINtB9m_9FilterMapIB50_BN_B97_EBal_EIB5D_zB7r_EEB3P_8try_folduNCINvNvB3P_12try_for_each4callB6k_B8W_NcNtB8W_5Break0E0B8W_E0E0E0IB8i_B8h_EEB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([696 x i8]) align 8 captures(none) dereferenceable(696) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i.i.i = alloca [688 x i8], align 8 ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [696 x i8], align 8               ; 4 uses
  %i.c = alloca [696 x i8], align 8               ; 181 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8109)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !8111, !noalias !8114, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !8111, !noalias !8114, !nonnull !5, !noundef !5
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.ke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store ptr %i.i, ptr %1, align 8, !alias.scope !8111, !noalias !8114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8124
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !8121, !noalias !8127, !nonnull !5, !align !12, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !8121, !noalias !8127, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @_RNvMs_NtNtCs607s0NAIaWN_7segment5index20struct_payload_indexNtB4_18StructPayloadIndex18selector_with_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l), !noalias !8128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !8121, !noalias !8129, !nonnull !5, !align !12, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !8121, !noalias !8129, !nonnull !5, !noundef !5
  %i.q = load i8, ptr %i.p, align 1, !range !1170, !noalias !8128, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8121, !noalias !8129, !nonnull !5, !align !12, !noundef !5
  %i.u = load ptr, ptr %i.t, align 8, !noalias !8128, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !8121, !noalias !8129, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !8121, !noalias !8129, !noundef !5
  call void @_RNvMNtNtNtCs607s0NAIaWN_7segment5index11field_index14index_selectorNtB2_13IndexSelector19new_index_with_type(ptr noalias nofree noundef nonnull sret([696 x i8]) align 8 captures(none) dereferenceable(696) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.d, i1 noundef zeroext %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(504) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y), !noalias !8130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.c, ptr noundef nonnull align 8 dereferenceable(696) %i.b, i64 696, i1 false), !noalias !8116
  call void @llvm.experimental.noalias.scope.decl(metadata !8131)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %.val.i.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !8134, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.c, align 8, !range !8137, !alias.scope !8131, !noalias !8138, !noundef !5 ; 2 uses
  %spec.select.i.i.i.i.a = icmp ugt i64 %.val3.i.i.i, -3 ; 2 uses
  %i.z = load i8, ptr %.val.i.i.i, align 1, !range !1170, !noalias !8134, !noundef !5
  %i.aa = zext i1 %spec.select.i.i.i.i.a to i8
  %i.ab = or i8 %i.z, %i.aa
  store i8 %i.ab, ptr %.val.i.i.i, align 1, !noalias !8134
  br i1 %spec.select.i.i.i.i.a, label %bb.c, label %bb.kd

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  store i8 1, ptr %.sroa.41.0.copyload, align 1, !noalias !8134
  %i.ac = load i64, ptr %i.c, align 8, !range !8137, !alias.scope !8139, !noalias !8138, !noundef !5 ; 7 uses
  switch i64 %i.ac, label %bb.d [
    i64 -2, label %bb.kc
    i64 -1, label %bb.kf
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ne i64 %i.ac, -9223372036854775800
  call void @llvm.assume(i1 %i.ad), !noalias !8142
  %i.ae = add nsw i64 %i.ac, 9223372036854775805
  %i.af = icmp ugt i64 %i.ac, -9223372036854775806
  %i.ag = select i1 %i.af, i64 %i.ae, i64 5
  switch i64 %i.ag, label %bb.e [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
    i64 3, label %bb.az
    i64 4, label %bb.cl
    i64 5, label %bb.ei
    i64 6, label %bb.fw
    i64 7, label %bb.hr
    i64 8, label %bb.hy
    i64 9, label %bb.iq
  ]

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i unwind label %bb.f, !noalias !8143

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ah)
          to label %.body.i.i.i.i.i.i unwind label %bb.g, !noalias !8143

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !8143

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.ai, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10null_index18mutable_null_index7StorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBM_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.al) #37
          to label %common.resume.i.i.i.i.i unwind label %bb.k, !noalias !8143

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs607s0NAIaWN_7segment6common5flags13roaring_flags12RoaringFlagsNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10null_index18mutable_null_index16MutableNullIndexEBL_.exit.i.i.i.i.i unwind label %bb.i, !noalias !8143

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs607s0NAIaWN_7segment6common5flags13roaring_flags12RoaringFlagsNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBK_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ao) #37
          to label %common.resume.i.i.i.i.i unwind label %bb.j, !noalias !8143

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

common.resume.sink.split.i.i.i.i.i:               ; preds = %bb.io, %bb.eg
  %.val.i.i.i60.sink.i.i.i.i.i = phi ptr [ %.val.i.i.i60.i.i.i.i.i, %bb.io ], [ %.val.i.i.i.i.i.i.i.i, %bb.eg ]
  %common.resume.op.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.ps, %bb.io ], [ %i.iw, %bb.eg ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i60.sink.i.i.i.i.i, i64 noundef 360, i64 noundef 8) #36, !noalias !8143
  br label %common.resume.i.i.i.i.i

common.resume.i.i.i.i.i:                          ; preds = %.body.i.i4.i70.i.i.i.i.i, %.body8.i.i65.i.i.i.i.i, %.body.i1.i75.i.i.i.i.i, %.body.i.i77.i.i.i.i.i, %bb.il, %bb.ib, %bb.hv, %.body.i82.i.i.i.i.i, %.body.i4.i.i.i.i.i.i, %.body.i.i49.i.i.i.i.i, %.body.i.i.i32.i.i.i.i.i, %bb.fo, %.body.i1.i37.i.i.i.i.i, %.body.i.i39.i.i.i.i.i, %bb.ed, %.body.i.i.i21.i.i.i.i.i, %.body.i.i4.i10.i.i.i.i.i, %.body8.i.i5.i.i.i.i.i, %.body.i1.i15.i.i.i.i.i, %.body.i.i17.i.i.i.i.i, %.body.i.i4.i.i.i.i.i.i, %.body8.i.i.i.i.i.i.i, %.body.i1.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i, %bb.i, %.body.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %.pn2.i.i.i56.i.i.i.i.i, %bb.il ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn6.i.i.i.i.i.i.i, %.body8.i.i.i.i.i.i.i ], [ %.pn6.i.i6.i.i.i.i.i, %.body8.i.i5.i.i.i.i.i ], [ %.pn2.i.i.i.i.i.i.i.i, %bb.ed ], [ %.pn6.i.i28.i.i.i.i.i, %bb.fo ], [ %eh.lpad-body.i5.i.i.i.i.i.i, %.body.i4.i.i.i.i.i.i ], [ %eh.lpad-body.i83.i.i.i.i.i, %.body.i82.i.i.i.i.i ], [ %i.an, %bb.i ], [ %eh.lpad-body.i2.i.i.i.i.i.i, %.body.i1.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i4.i.i.i.i.i.i ], [ %eh.lpad-body.i2.i16.i.i.i.i.i, %.body.i1.i15.i.i.i.i.i ], [ %eh.lpad-body.i.i18.i.i.i.i.i, %.body.i.i17.i.i.i.i.i ], [ %eh.lpad-body.i.i.i11.i.i.i.i.i, %.body.i.i4.i10.i.i.i.i.i ], [ %eh.lpad-body.i.i.i22.i.i.i.i.i, %.body.i.i.i21.i.i.i.i.i ], [ %eh.lpad-body.i.i.i71.i.i.i.i.i, %.body.i.i4.i70.i.i.i.i.i ], [ %eh.lpad-body.i2.i38.i.i.i.i.i, %.body.i1.i37.i.i.i.i.i ], [ %eh.lpad-body.i.i40.i.i.i.i.i, %.body.i.i39.i.i.i.i.i ], [ %eh.lpad-body.i.i.i33.i.i.i.i.i, %.body.i.i.i32.i.i.i.i.i ], [ %eh.lpad-body.i.i50.i.i.i.i.i, %.body.i.i49.i.i.i.i.i ], [ %i.oo, %bb.hv ], [ %i.pa, %bb.ib ], [ %.pn6.i.i66.i.i.i.i.i, %.body8.i.i65.i.i.i.i.i ], [ %eh.lpad-body.i2.i76.i.i.i.i.i, %.body.i1.i75.i.i.i.i.i ], [ %eh.lpad-body.i.i78.i.i.i.i.i, %.body.i.i77.i.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.k:                                             ; preds = %.body.i.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10null_index18mutable_null_index16MutableNullIndexEBL_.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs607s0NAIaWN_7segment6common5flags13roaring_flags12RoaringFlagsNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBK_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ar), !noalias !8143
  br label %bb.kf

bb.l:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index7storage17NumericIndexInnerxEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.as), !noalias !8143
  br label %bb.kf

bb.m:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index7storage17NumericIndexInnerxEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.at), !noalias !8143
  br label %bb.kf

bb.n:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !range !555, !alias.scope !8144, !noalias !8138, !noundef !5 ; 3 uses
  %i.aw = icmp ne i64 %i.av, -9223372036854775807
  call void @llvm.assume(i1 %i.aw), !noalias !8142
  %i.ax = xor i64 %i.av, -9223372036854775808
  %i.ay = icmp slt i64 %i.av, 0
  %i.az = select i1 %i.ay, i64 %i.ax, i64 1
  switch i64 %i.az, label %bb.o [
    i64 0, label %bb.t
    i64 1, label %bb.ae
  ]

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !8143

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.ba)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.q, !noalias !8143

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexxEEBM_.exit.i.i.i.i.i.i unwind label %bb.r, !noalias !8143

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.r, %bb.p
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.bb, %bb.p ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index7StoragexEEBM_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.be) #37
          to label %common.resume.i.i.i.i.i unwind label %bb.s, !noalias !8143

bb.s:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexxEEBM_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index7StoragexEEBM_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.bg), !noalias !8143
  br label %bb.kf

bb.t:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapxNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !8143

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_xEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #37
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !8143

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapxNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_xEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.w unwind label %bb.v, !noalias !8143

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapxNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !8143

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapxNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_xEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i unwind label %bb.z, !noalias !8143

bb.x:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeENCNvMs_NtB1r_20struct_payload_indexNtB2F_18StructPayloadIndex12load_from_dbs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB4I_9TakeWhileppEB3P_8try_fold5checkINtNtBc_6result6ResultINtNtBc_6option6OptionNtNtNtNtB1r_11field_index16field_index_base11field_index10FieldIndexENtNtNtB1t_6common15operation_error14OperationErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8i_B6k_EENCB2A_s0_0NCINvNtB8_10filter_map19filter_map_try_foldB5C_IB5D_B6k_B7r_EuB8h_NCB2A_s1_0NCINvXB8_INtB8_12GenericShuntINtB9m_9FilterMapIB50_BN_B97_EBal_EIB5D_zB7r_EEB3P_8try_folduNCINvNvB3P_12try_for_each4callB6k_B8W_NcNtB8W_5Break0E0B8W_E0E0E0IB8i_B8h_EEB1t_:bb.a
bb.jf:                                            ; preds = %bb.jd
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i75.i.i.i.i.i

.body.i1.i75.i.i.i.i.i:                           ; preds = %bb.jf, %bb.jb, %.body.i.i.i73.i.i.i.i.i
  %eh.lpad-body.i2.i76.i.i.i.i.i = phi { ptr, i32 } [ %i.qw, %bb.jf ], [ %.pn.i.i.i74.i.i.i.i.i, %bb.jb ], [ %.pn.i.i.i74.i.i.i.i.i, %.body.i.i.i73.i.i.i.i.i ]
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsawMg70ExlpE_9blobstore9blobstore9BlobstoreINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(88) %i.qx) #37
          to label %common.resume.i.i.i.i.i unwind label %bb.jg, !noalias !8143

bb.jg:                                            ; preds = %.body.i1.i75.i.i.i.i.i
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexoEEBM_.exit.i.i.i.i.i.i: ; preds = %bb.jd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_oEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsawMg70ExlpE_9blobstore9blobstore9BlobstoreINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(88) %i.qz), !noalias !8143
  br label %bb.kf

bb.jh:                                            ; preds = %bb.iq
  %i.ra = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index16ContainerSegmentEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ra)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index16ContainerSegmentEEB1G_.exit.i.i.i.i.i.i.i unwind label %bb.ji, !noalias !8143

bb.ji:                                            ; preds = %bb.jh
  %i.rb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(680) %i.pu) #37
          to label %.body.i3.i61.i.i.i.i.i unwind label %bb.kb, !noalias !8143

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index16ContainerSegmentEEB1G_.exit.i.i.i.i.i.i.i: ; preds = %bb.jh
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(680) %i.pu)
          to label %bb.jk unwind label %bb.jj, !noalias !8143

bb.jj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index16ContainerSegmentEEB1G_.exit.i.i.i.i.i.i.i
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(680) %i.pu)
          to label %.body.i3.i61.i.i.i.i.i unwind label %bb.jl, !noalias !8143

bb.jk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index16ContainerSegmentEEB1G_.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(680) %i.pu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs607s0NAIaWN_7segment.exit.i.i69.i.i.i.i.i unwind label %bb.jm, !noalias !8143

bb.jl:                                            ; preds = %bb.jj
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

.body.i3.i61.i.i.i.i.i:                           ; preds = %bb.jm, %bb.jj, %bb.ji
  %.pn.i.i62.i.i.i.i.i = phi { ptr, i32 } [ %i.rb, %bb.ji ], [ %i.rf, %bb.jm ], [ %i.rc, %bb.jj ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsinALYEoamBN_6bitvec3vec6BitVecECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.re) #37
          to label %bb.jn unwind label %bb.kb, !noalias !8143

bb.jm:                                            ; preds = %bb.jk
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3.i61.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs607s0NAIaWN_7segment.exit.i.i69.i.i.i.i.i: ; preds = %bb.jk
  %i.rg = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsinALYEoamBN_6bitvec3vec6BitVecECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.rg)
          to label %bb.jp unwind label %bb.jo, !noalias !8143

bb.jn:                                            ; preds = %bb.jo, %.body.i3.i61.i.i.i.i.i
  %.pn2.i.i63.i.i.i.i.i = phi { ptr, i32 } [ %i.ri, %bb.jo ], [ %.pn.i.i62.i.i.i.i.i, %.body.i3.i61.i.i.i.i.i ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs607s0NAIaWN_7segment5index11field_index25immutable_point_to_values22ImmutablePointToValuesoEEBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.rh) #37
          to label %bb.jq unwind label %bb.kb, !noalias !8143

bb.jo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs607s0NAIaWN_7segment.exit.i.i69.i.i.i.i.i
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.jp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs607s0NAIaWN_7segment.exit.i.i69.i.i.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs607s0NAIaWN_7segment5index11field_index25immutable_point_to_values22ImmutablePointToValuesoEEBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.rj)
          to label %bb.js unwind label %bb.jr, !noalias !8143

bb.jq:                                            ; preds = %bb.jr, %bb.jn
  %.pn4.i.i64.i.i.i.i.i = phi { ptr, i32 } [ %i.rl, %bb.jr ], [ %.pn2.i.i63.i.i.i.i.i, %bb.jn ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.rk) #37
          to label %.body8.i.i65.i.i.i.i.i unwind label %bb.kb, !noalias !8143

bb.jr:                                            ; preds = %bb.jp
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.js:                                            ; preds = %bb.jp
  %i.rm = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 4 uses
  %i.rn = load i64, ptr %i.rm, align 8, !range !7, !alias.scope !8392, !noalias !8138, !noundef !5
  %i.ro = icmp eq i64 %i.rn, -1
  br i1 %i.ro, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecoEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i unwind label %bb.ju, !noalias !8143

bb.ju:                                            ; preds = %bb.jt
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rm)
          to label %.body8.i.i65.i.i.i.i.i unwind label %bb.jv, !noalias !8143

bb.jv:                                            ; preds = %bb.ju
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecoEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i unwind label %bb.jw, !noalias !8143

.body8.i.i65.i.i.i.i.i:                           ; preds = %bb.jw, %bb.ju, %bb.jq
  %.pn6.i.i66.i.i.i.i.i = phi { ptr, i32 } [ %.pn4.i.i64.i.i.i.i.i, %bb.jq ], [ %i.rs, %bb.jw ], [ %i.rp, %bb.ju ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexoEEBM_(ptr noalias nofree noundef align 8 dereferenceable(488) %i.rr) #37
          to label %common.resume.i.i.i.i.i unwind label %bb.kb, !noalias !8143

bb.jw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecoEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i65.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecoEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i, %bb.js
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.rt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i72.i.i.i.i.i unwind label %bb.jx, !noalias !8143

bb.jx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.rt)
          to label %.body.i.i4.i70.i.i.i.i.i unwind label %bb.jy, !noalias !8143

bb.jy:                                            ; preds = %bb.jx
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i72.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.rt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexoEEBM_.exit.i.i.i.i.i.i unwind label %bb.jz, !noalias !8143

bb.jz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i72.i.i.i.i.i
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i4.i70.i.i.i.i.i

.body.i.i4.i70.i.i.i.i.i:                         ; preds = %bb.jz, %bb.jx
  %eh.lpad-body.i.i.i71.i.i.i.i.i = phi { ptr, i32 } [ %i.rw, %bb.jz ], [ %i.ru, %bb.jx ]
  %i.rx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index7StorageoEEBM_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.rx) #37
          to label %common.resume.i.i.i.i.i unwind label %bb.ka, !noalias !8143

bb.ka:                                            ; preds = %.body.i.i4.i70.i.i.i.i.i
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

bb.kb:                                            ; preds = %.body8.i.i65.i.i.i.i.i, %bb.jq, %bb.jn, %.body.i3.i61.i.i.i.i.i, %bb.ji
  %i.rz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexoEEBM_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i.i72.i.i.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index7StorageoEEBM_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.sa), !noalias !8143
  br label %bb.kf

bb.kc:                                            ; preds = %bb.c
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.sb), !noalias !8143
  br label %bb.kf

bb.kd:                                            ; preds = %bb.b
  %i.sc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.410.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.sc, i64 96, i1 false), !noalias !8397
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.410.104..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.410.104..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.5.0..sroa_idx.i.i.i, i64 592, i1 false), !noalias !8397
  br label %bb.kf

bb.ke:                                            ; preds = %bb.a
  store i64 -3, ptr %0, align 8, !alias.scope !8398, !noalias !8401
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtNtBN_11field_index16field_index_base11field_index10FieldIndexENtNtNtBP_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB65_IB65_B49_EEENCNvMs_NtBN_20struct_payload_indexNtB77_18StructPayloadIndex12load_from_dbs_0NCINvNvXs0_NtB2Q_10take_whileINtB8q_9TakeWhileppEB1U_8try_fold5checkB3r_uB6J_NCB72_s0_0NCINvNtB2Q_10filter_map19filter_map_try_foldB3r_IB3s_B49_B5f_EuB6J_NCB72_s1_0NCINvXB2Q_INtB2Q_12GenericShuntINtB9J_9FilterMapIB8J_INtB2O_3MapB3_B70_EB9u_EBaJ_EIB3s_zB5f_EEB1U_8try_folduNCINvNvB1U_12try_for_each4callB49_B6O_NcNtB6O_5Break0E0B6O_E0E0E0E0B64_EBP_.exit

bb.kf:                                            ; preds = %bb.kd, %bb.kc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexoEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexoEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexoEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index23immutable_numeric_index21ImmutableNumericIndexoEEBM_.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index21mutable_numeric_index19MutableNumericIndexoEEBM_.exit.i.i.i.i.i.i.i, %bb.hz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10bool_index18mutable_bool_index16MutableBoolIndexEBL_.exit.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20immutable_text_index22ImmutableFullTextIndexEBL_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18mutable_text_index20MutableFullTextIndexEBL_.exit.i.i.i.i.i.i, %bb.fx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index17ImmutableGeoIndexEBL_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17mutable_geo_index15MutableGeoIndexEBL_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index14OnDiskGeoIndexEBL_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index23immutable_numeric_index21ImmutableNumericIndexdEEBM_.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index21mutable_numeric_index19MutableNumericIndexdEEBM_.exit.i.i.i.i.i.i.i, %bb.cm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexeEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexeEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexeEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexxEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexxEEBM_.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexxEEBM_.exit.i.i.i.i.i.i, %bb.m, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10null_index18mutable_null_index16MutableNullIndexEBL_.exit.i.i.i.i.i, %bb.c
  %.sroa.06.0.i = phi i64 [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10null_index18mutable_null_index16MutableNullIndexEBL_.exit.i.i.i.i.i ], [ -2, %bb.l ], [ -2, %bb.m ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexxEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexxEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexxEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexeEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexeEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexeEEBM_.exit.i.i.i.i.i.i ], [ -2, %bb.cm ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index21mutable_numeric_index19MutableNumericIndexdEEBM_.exit.i.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index23immutable_numeric_index21ImmutableNumericIndexdEEBM_.exit.i.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index14OnDiskGeoIndexEBL_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17mutable_geo_index15MutableGeoIndexEBL_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index17ImmutableGeoIndexEBL_.exit.i.i.i.i.i.i ], [ -2, %bb.fx ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18mutable_text_index20MutableFullTextIndexEBL_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20immutable_text_index22ImmutableFullTextIndexEBL_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index10bool_index18mutable_bool_index16MutableBoolIndexEBL_.exit.i.i.i.i.i ], [ -2, %bb.hz ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index21mutable_numeric_index19MutableNumericIndexoEEBM_.exit.i.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index23immutable_numeric_index21ImmutableNumericIndexoEEBM_.exit.i.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index14OnDiskMapIndexoEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17mutable_map_index15MutableMapIndexoEEBM_.exit.i.i.i.i.i.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index19immutable_map_index17ImmutableMapIndexoEEBM_.exit.i.i.i.i.i.i ], [ -2, %bb.kc ], [ -2, %bb.c ], [ %.val3.i.i.i, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8116
  store i64 %.sroa.06.0.i, ptr %0, align 8, !alias.scope !8402, !noalias !8401
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.410.i.i.i.i.i, i64 688, i1 false), !noalias !8401
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtNtBN_11field_index16field_index_base11field_index10FieldIndexENtNtNtBP_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB65_IB65_B49_EEENCNvMs_NtBN_20struct_payload_indexNtB77_18StructPayloadIndex12load_from_dbs_0NCINvNvXs0_NtB2Q_10take_whileINtB8q_9TakeWhileppEB1U_8try_fold5checkB3r_uB6J_NCB72_s0_0NCINvNtB2Q_10filter_map19filter_map_try_foldB3r_IB3s_B49_B5f_EuB6J_NCB72_s1_0NCINvXB2Q_INtB2Q_12GenericShuntINtB9J_9FilterMapIB8J_INtB2O_3MapB3_B70_EB9u_EBaJ_EIB3s_zB5f_EEB1U_8try_folduNCINvNvB1U_12try_for_each4callB49_B6O_NcNtB6O_5Break0E0B6O_E0E0E0E0B64_EBP_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtNtBN_11field_index16field_index_base11field_index10FieldIndexENtNtNtBP_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB65_IB65_B49_EEENCNvMs_NtBN_20struct_payload_indexNtB77_18StructPayloadIndex12load_from_dbs_0NCINvNvXs0_NtB2Q_10take_whileINtB8q_9TakeWhileppEB1U_8try_fold5checkB3r_uB6J_NCB72_s0_0NCINvNtB2Q_10filter_map19filter_map_try_foldB3r_IB3s_B49_B5f_EuB6J_NCB72_s1_0NCINvXB2Q_INtB2Q_12GenericShuntINtB9J_9FilterMapIB8J_INtB2O_3MapB3_B70_EB9u_EBaJ_EIB3s_zB5f_EEB1U_8try_folduNCINvNvB1U_12try_for_each4callB49_B6O_NcNtB6O_5Break0E0B6O_E0E0E0E0B64_EBP_.exit: ; preds = %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCsQwkrmJLyoL_9geo_types8geometry11line_string10LineStringENCNvNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash25polygon_hashes_estimation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecNtB2t_7GeoHashENCINvMsk_B4W_IB4U_B4T_E14extend_trustedBN_E0E0EB2z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !12, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.d, %i.f
  br i1 %i.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsQwkrmJLyoL_9geo_types8geometry11line_string10LineStringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEuNCNvB3P_25polygon_hashes_estimation0NCINvNvB1S_8for_each4callB3g_NCINvMsk_B3j_IB3h_B3g_E14extend_trustedINtB2I_3MapBF_B4T_EE0E0E0EB3V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8406
  %i.q = load i64, ptr %i.h, align 8, !noalias !8406, !noundef !5
  invoke void @_RNvNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash15boundary_hashes(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, i64 noundef %i.q)
          to label %.noexc.i unwind label %bb.c, !noalias !8415

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8416)
  %i.r = load i64, ptr %i.b, align 8, !range !11, !alias.scope !8416, !noalias !8419, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e, !prof !1821

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !8419
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #41
          to label %bb.g unwind label %bb.f, !noalias !8422

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #37
          to label %bb.j unwind label %bb.h, !noalias !8422

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8422
  unreachable

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !8423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8406
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8424
  %i.v = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.m
  br i1 %i.x, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsQwkrmJLyoL_9geo_types8geometry11line_string10LineStringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEuNCNvB3P_25polygon_hashes_estimation0NCINvNvB1S_8for_each4callB3g_NCINvMsk_B3j_IB3h_B3g_E14extend_trustedINtB2I_3MapBF_B4T_EE0E0E0EB3V_.exit, label %bb.d

bb.j:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.s, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !8415
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsQwkrmJLyoL_9geo_types8geometry11line_string10LineStringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEuNCNvB3P_25polygon_hashes_estimation0NCINvNvB1S_8for_each4callB3g_NCINvMsk_B3j_IB3h_B3g_E14extend_trustedINtB2I_3MapBF_B4T_EE0E0E0EB3V_.exit: ; preds = %bb.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8415
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENCINvXs4_B1p_B1n_NtNtNtB1r_6traits5write14UniversalWrite11write_multihIBO_INtCsgNzSnKyKfuE_6either6EitherINtNtNtBa_7sources4once4OnceTjmNtNtB1r_5types9ReadRangeEEINtNtB4b_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB5w_5PagesB1n_E21get_page_value_ranges0EENCNvMs0_B5w_B6q_14write_to_pages0EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB1r_5error16UniversalIoErrorEEB7J_8try_folduNCINvNvB7J_12try_for_each4callyINtNtNtBc_3ops12control_flow11ControlFlowyENcNtBaB_5Break0E0BaB_E0IBaC_BaB_EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8429)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8432, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8432, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultyNtNtBN_5error16UniversalIoErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_yEENCINvXs4_BL_BJ_NtNtNtBN_6traits5write14UniversalWrite11write_multihINtB2F_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB1R_7sources4once4OnceTjmNtNtBN_5types9ReadRangeEEINtNtB6P_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB8a_5PagesBJ_E21get_page_value_ranges0EENCNvMs0_B8a_B94_14write_to_pages0EE0NCINvXB2H_INtB2H_12GenericShuntIB65_B3_B4Z_EIB3j_zB3F_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callyB4R_NcNtB4R_5Break0E0B4R_E0E0B4c_ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %0, align 8, !alias.scope !8432
  %.val7.i = load ptr, ptr %i.b, align 8, !noalias !8429, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8435
  %i.g = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  call void @_RNvMNtCs3TE53SMfxyL_6fs_err4fileNtB2_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !8435
  %i.h = load i64, ptr %i.a, align 8, !range !1317, !noalias !8435, !noundef !5
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.c, label %_RNCINvXs4_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB8_11IoUringFileNtNtNtBa_6traits5write14UniversalWrite11write_multihINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB29_7sources4once4OnceTjmNtNtBa_5types9ReadRangeEEINtNtB3q_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB4L_5PagesBU_E21get_page_value_ranges0EENCNvMs0_B4L_B5F_14write_to_pages0EE0Cs607s0NAIaWN_7segment.exit.thread.i.i

_RNCINvXs4_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB8_11IoUringFileNtNtNtBa_6traits5write14UniversalWrite11write_multihINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB29_7sources4once4OnceTjmNtNtBa_5types9ReadRangeEEINtNtB3q_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB4L_5PagesBU_E21get_page_value_ranges0EENCNvMs0_B4L_B5F_14write_to_pages0EE0Cs607s0NAIaWN_7segment.exit.thread.i.i: ; preds = %bb.b
  %.sroa.1414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.1414.0.copyload.i.i.i = load i64, ptr %.sroa.1414.0..sroa_idx.i.i.i, align 8, !noalias !8435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8435
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultyNtNtBN_5error16UniversalIoErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_yEENCINvXs4_BL_BJ_NtNtNtBN_6traits5write14UniversalWrite11write_multihINtB2F_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB1R_7sources4once4OnceTjmNtNtBN_5types9ReadRangeEEINtNtB6P_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB8a_5PagesBJ_E21get_page_value_ranges0EENCNvMs0_B8a_B94_14write_to_pages0EE0NCINvXB2H_INtB2H_12GenericShuntIB65_B3_B4Z_EIB3j_zB3F_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callyB4R_NcNtB4R_5Break0E0B4R_E0E0B4c_ECs607s0NAIaWN_7segment.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !8435, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8435
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = load i64, ptr %2, align 8, !range !6543, !alias.scope !8438, !noalias !8441, !noundef !5
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorEEECs607s0NAIaWN_7segment.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorEEECs607s0NAIaWN_7segment.exit.i.i.i unwind label %bb.e, !noalias !8441

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %2, align 8, !noalias !8441
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !8441
  resume { ptr, i32 } %i.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorEEECs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 -9223372036854775808, ptr %2, align 8, !noalias !8441
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !8441
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultyNtNtBN_5error16UniversalIoErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_yEENCINvXs4_BL_BJ_NtNtNtBN_6traits5write14UniversalWrite11write_multihINtB2F_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB1R_7sources4once4OnceTjmNtNtBN_5types9ReadRangeEEINtNtB6P_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB8a_5PagesBJ_E21get_page_value_ranges0EENCNvMs0_B8a_B94_14write_to_pages0EE0NCINvXB2H_INtB2H_12GenericShuntIB65_B3_B4Z_EIB3j_zB3F_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callyB4R_NcNtB4R_5Break0E0B4R_E0E0B4c_ECs607s0NAIaWN_7segment.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultyNtNtBN_5error16UniversalIoErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_yEENCINvXs4_BL_BJ_NtNtNtBN_6traits5write14UniversalWrite11write_multihINtB2F_3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB1R_7sources4once4OnceTjmNtNtBN_5types9ReadRangeEEINtNtB6P_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB8a_5PagesBJ_E21get_page_value_ranges0EENCNvMs0_B8a_B94_14write_to_pages0EE0NCINvXB2H_INtB2H_12GenericShuntIB65_B3_B4Z_EIB3j_zB3F_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callyB4R_NcNtB4R_5Break0E0B4R_E0E0B4c_ECs607s0NAIaWN_7segment.exit: ; preds = %bb.a, %_RNCINvXs4_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB8_11IoUringFileNtNtNtBa_6traits5write14UniversalWrite11write_multihINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB29_7sources4once4OnceTjmNtNtBa_5types9ReadRangeEEINtNtB3q_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB4L_5PagesBU_E21get_page_value_ranges0EENCNvMs0_B4L_B5F_14write_to_pages0EE0Cs607s0NAIaWN_7segment.exit.thread.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorEEECs607s0NAIaWN_7segment.exit.i.i.i
  %.sroa.3.0.i = phi i64 [ undef, %bb.a ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorEEECs607s0NAIaWN_7segment.exit.i.i.i ], [ %.sroa.1414.0.copyload.i.i.i, %_RNCINvXs4_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB8_11IoUringFileNtNtNtBa_6traits5write14UniversalWrite11write_multihINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB29_7sources4once4OnceTjmNtNtBa_5types9ReadRangeEEINtNtB3q_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB4L_5PagesBU_E21get_page_value_ranges0EENCNvMs0_B4L_B5F_14write_to_pages0EE0Cs607s0NAIaWN_7segment.exit.thread.i.i ]
  %.sroa.0.0.i = phi i64 [ 2, %bb.a ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorEEECs607s0NAIaWN_7segment.exit.i.i.i ], [ 1, %_RNCINvXs4_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB8_11IoUringFileNtNtNtBa_6traits5write14UniversalWrite11write_multihINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCsgNzSnKyKfuE_6either6EitherINtNtNtB29_7sources4once4OnceTjmNtNtBa_5types9ReadRangeEEINtNtB3q_7from_fn6FromFnNCNvMs_NtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore5pagesINtB4L_5PagesBU_E21get_page_value_ranges0EENCNvMs0_B4L_B5F_14write_to_pages0EE0Cs607s0NAIaWN_7segment.exit.thread.i.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENCNvMs_NtB1v_20struct_payload_indexNtB31_18StructPayloadIndex12load_from_db0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callNtNtB1v_14payload_config20FullPayloadIndexTypeNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VecB5c_E14extend_trustedBN_E0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtBY_14payload_config20FullPayloadIndexTypeuNCNvMs_NtBY_20struct_payload_indexNtB4C_18StructPayloadIndex12load_from_db0NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6k_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4v_EE0E0E0EB10_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 696
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [696 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke i24 @_RNvMs_NtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_indexNtB4_10FieldIndex19get_full_index_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(696) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !8444

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [3 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i24 %i.g, ptr %i.h, align 1, !noalias !8447
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
end_hunk_1
