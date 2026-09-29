Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.004?download=true
inline.NumInlined: 5142
inline.NumDeleted: 3641
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types18PayloadFieldSchemaENCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB2n_15universal_query16collection_query5Query17check_strict_mode0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB5B_3vecINtB6i_3VecB5x_E14extend_trustedBN_E0E0EB2p_:bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #39
          to label %bb.i unwind label %bb.g, !noalias !5339

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.f, label %bb.h, !prof !18

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #43
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !5339

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !5339
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5338
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5341
  %i.p = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment5types18PayloadFieldSchemaENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB3R_15universal_query16collection_query5Query17check_strict_mode0NCINvNvB1H_8for_each4callB35_NCINvMsk_NtB39_3vecINtB6z_3VecB35_E14extend_trustedINtB2x_3MapBF_B3I_EE0E0E0EB3T_.exit, label %bb.c

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5342
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment5types18PayloadFieldSchemaENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB3R_15universal_query16collection_query5Query17check_strict_mode0NCINvNvB1H_8for_each4callB35_NCINvMsk_NtB39_3vecINtB6z_3VecB35_E14extend_trustedINtB2x_3MapBF_B3I_EE0E0E0EB3T_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5342
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryENCNvXs_NtNtB1r_6common9anonymizeINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_ENtB2n_9Anonymize9anonymize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4callB1n_NCINvMsk_B2P_B2M_14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [376 x i8], align 8               ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldRBQ_BQ_uNCNvXs_NtNtBU_6common9anonymizeINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_ENtB3i_9Anonymize9anonymize0NCINvNvB1J_8for_each4callBQ_NCINvMsk_B3J_B3G_14extend_trustedINtB2z_3MapBF_B3b_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 376
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [376 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5352
  invoke void @_RNvXs1_NtCs607s0NAIaWN_7segment9telemetryNtB5_16SegmentTelemetryNtNtNtB7_6common9anonymize9Anonymize9anonymize(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !5353

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [376 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(376) %i.a, i64 376, i1 false), !noalias !5354
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5352
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldRBQ_BQ_uNCNvXs_NtNtBU_6common9anonymizeINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_ENtB3i_9Anonymize9anonymize0NCINvNvB1J_8for_each4callBQ_NCINvMsk_B3J_B3G_14extend_trustedINtB2z_3MapBF_B3b_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5353
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldRBQ_BQ_uNCNvXs_NtNtBU_6common9anonymizeINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_ENtB3i_9Anonymize9anonymize0NCINvNvB1J_8for_each4callBQ_NCINvMsk_B3J_B3G_14extend_trustedINtB2z_3MapBF_B3b_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5353
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtBc_2io8io_slice7IoSliceENCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB21_16ConnectionCommonNtNtNtB23_6client11client_conn20ClientConnectionDataENtB1Z_13PlaintextSink14write_vectored0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5N_3VecB5B_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.h, align 8, !noalias !5365, !noundef !7
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load i64, ptr %i.i, align 8, !noalias !5365, !noundef !7
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.j, align 8, !noalias !5366, !captures !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.val16.i, ptr %i.k, align 8, !noalias !5367
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val15.i.1 = load ptr, ptr %i.m, align 8, !noalias !5365, !noundef !7
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val16.i.1 = load i64, ptr %i.n, align 8, !noalias !5365, !noundef !7
  %i.o = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store ptr %.val15.i.1, ptr %i.p, align 8, !noalias !5366, !captures !57
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i64 %.val16.i.1, ptr %i.q, align 8, !noalias !5367
  %i.r = add i64 %i.g, 2                          ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.t = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %.val15.i.epil = load ptr, ptr %i.u, align 8, !noalias !5365, !noundef !7
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val16.i.epil = load i64, ptr %i.v, align 8, !noalias !5365, !noundef !7
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.w, align 8, !noalias !5366, !captures !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.val16.i.epil, ptr %i.x, align 8, !noalias !5367
  %i.y = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5365
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -8
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !5382, !noalias !5383
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !5382, !noalias !5383
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !5384, !noalias !5385
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !5384, !noalias !5385
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5379

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.w, align 4, !noalias !5383, !noundef !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val15.i.prol, ptr %i.x, align 4, !noalias !5386
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5380

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ad, align 4, !noalias !5383, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val15.i, ptr %i.ae, align 4, !noalias !5386
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i32, ptr %i.ag, align 4, !noalias !5383, !noundef !7
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val15.i.1, ptr %i.ai, align 4, !noalias !5386
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val15.i.2 = load i32, ptr %i.ak, align 4, !noalias !5383, !noundef !7
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val15.i.2, ptr %i.am, align 4, !noalias !5386
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val15.i.3 = load i32, ptr %i.ao, align 4, !noalias !5383, !noundef !7
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.3, ptr %i.aq, align 4, !noalias !5386
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5381

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5383
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB3M_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bm, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bn, %bb.p ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5399)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !alias.scope !5400, !noalias !5401, !noundef !7 ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !5402 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.split.i.i.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, !prof !18

.split.i.i.i.i.i:                                 ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !5403

.noexc.i:                                         ; preds = %.split.i.i.i.i.i
  %i.o = and i128 %i.n, 18014398509481984
  %.not1.i.i.i.i.i = icmp eq i128 %i.o, 0
  br i1 %.not1.i.i.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 18014398509481984
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32                ; 5 uses
  %i.r = and i32 %i.q, -2147483648                ; 2 uses
  %i.s = and i32 %i.q, 2139095040                 ; 6 uses
  %i.t = and i32 %i.q, 8388607                    ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.t, 0
  %..i.i.i.i.i.i = select i1 %i.v, i32 0, i32 512
  %i.w = lshr exact i32 %i.r, 16
  %i.x = lshr i32 %i.t, 13
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or i32 %i.y, %..i.i.i.i.i.i
  %i.aa = trunc nuw i32 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 31744
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.ac = lshr exact i32 %i.r, 16                 ; 4 uses
  %i.ad = lshr exact i32 %i.s, 23                 ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.s, 1191182336
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.s, 947912704
  br i1 %i.af, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = trunc nuw i32 %i.ac to i16
  %i.ah = or disjoint i16 %i.ag, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ai = lshr exact i32 %i.s, 13
  %i.aj = add nuw nsw i32 %i.ai, 16384
  %i.ak = lshr i32 %i.t, 13
  %i.al = and i32 %i.q, 4096
  %i.am = icmp ne i32 %i.al, 0
  %i.an = and i32 %i.q, 12287
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.not.i.i.i.i.i.i = and i1 %i.am, %i.ao
  %i.ap = or disjoint i32 %i.aj, %i.ak
  %i.aq = or i32 %i.ap, %i.ac
  %i.ar = trunc i32 %i.aq to i16
  %i.as = zext i1 %or.cond.not.i.i.i.i.i.i to i16
  %spec.select7.i.i.i.i.i.i = add i16 %i.ar, %i.as
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.at = icmp samesign ult i32 %i.s, 855638016
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = sub nsw i32 126, %i.ad
  %i.av = or disjoint i32 %i.t, 8388608           ; 3 uses
  %i.aw = lshr i32 %i.av, %i.au                   ; 2 uses
  %i.ax = sub nsw i32 29, %i.ad
  %i.ay = and i32 %i.ax, 31                       ; 2 uses
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %i.av
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = trunc nuw i32 %i.ac to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bd = shl i32 3, %i.ay
  %i.be = add nuw i32 %i.bd, 16777215
  %i.bf = and i32 %i.be, %i.av
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i.i.i.i.i = add nuw nsw i32 %i.aw, %i.bh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %spec.select.i.i.i.i.i.i, %bb.m ]
  %i.bi = or i32 %.sroa.03.0.i.i.i.i.i.i, %i.ac
  %i.bj = trunc nuw i32 %i.bi to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, %.noexc.i
  %i.bk = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.k) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i16 [ %i.bk, %bb.o ], [ %i.ab, %bb.e ], [ %i.ah, %bb.h ], [ %i.bc, %bb.l ], [ %i.bj, %bb.n ], [ %spec.select7.i.i.i.i.i.i, %bb.i ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i.i.i, ptr %i.bl, align 2, !noalias !5404
  %i.bm = add i64 %.val10.i, 1                    ; 2 uses
  %i.bn = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.h
  br i1 %i.bo, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5403
  resume { ptr, i32 } %i.bp

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bm, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5403
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -8
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !5419, !noalias !5420
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !5419, !noalias !5420
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !5421, !noalias !5422
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !5421, !noalias !5422
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5416

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.w, align 4, !noalias !5420, !noundef !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val15.i.prol, ptr %i.x, align 4, !noalias !5423
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5417

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ad, align 4, !noalias !5420, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val15.i, ptr %i.ae, align 4, !noalias !5423
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i32, ptr %i.ag, align 4, !noalias !5420, !noundef !7
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val15.i.1, ptr %i.ai, align 4, !noalias !5423
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val15.i.2 = load i32, ptr %i.ak, align 4, !noalias !5420, !noundef !7
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val15.i.2, ptr %i.am, align 4, !noalias !5423
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val15.i.3 = load i32, ptr %i.ao, align 4, !noalias !5420, !noundef !7
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.3, ptr %i.aq, align 4, !noalias !5423
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5418

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5420
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -8
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !5438, !noalias !5439
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !5438, !noalias !5439
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !5440, !noalias !5441
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !5440, !noalias !5441
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5435

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.w, align 4, !noalias !5439, !noundef !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val15.i.prol, ptr %i.x, align 4, !noalias !5442
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5436

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ad, align 4, !noalias !5439, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val15.i, ptr %i.ae, align 4, !noalias !5442
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i32, ptr %i.ag, align 4, !noalias !5439, !noundef !7
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val15.i.1, ptr %i.ai, align 4, !noalias !5442
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val15.i.2 = load i32, ptr %i.ak, align 4, !noalias !5439, !noundef !7
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val15.i.2, ptr %i.am, align 4, !noalias !5442
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val15.i.3 = load i32, ptr %i.ao, align 4, !noalias !5439, !noundef !7
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.3, ptr %i.aq, align 4, !noalias !5442
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5437

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5439
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB3M_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !55, !noundef !7 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 3 uses
  %i.j = lshr exact i64 %i.i, 3                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %scevgep2 = getelementptr i8, ptr %i.l, i64 %i.j ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.a, i64 4
  %2 = and i64 %i.i, -8
  %scevgep4 = getelementptr i8, ptr %i.a, i64 %2
  %scevgep5 = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep5
  %bound17 = icmp ult ptr %i.e, %scevgep2
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.j, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.j, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = load float, ptr %i.e, align 4, !alias.scope !5457, !noalias !5458, !noundef !7
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load float, ptr %i.k, align 4, !alias.scope !5457, !noalias !5458, !noundef !7
  %broadcast.splatinsert9 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat10 = shufflevector <4 x float> %broadcast.splatinsert9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %wide.vec = load <8 x float>, ptr %i.u, align 4, !alias.scope !5459, !noalias !5460
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.v = fsub <4 x float> %strided.vec, %broadcast.splat
  %i.w = fdiv <4 x float> %i.v, %broadcast.splat10
  %i.x = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.w) ; 2 uses
  %i.y = fcmp olt <4 x float> %i.x, zeroinitializer
  %i.z = select <4 x i1> %i.y, <4 x float> zeroinitializer, <4 x float> %i.x ; 2 uses
  %i.aa = fcmp ogt <4 x float> %i.z, splat (float 2.550000e+02)
  %i.ab = select <4 x i1> %i.aa, <4 x float> splat (float 2.550000e+02), <4 x float> %i.z
  %i.ac = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ab)
  %i.ad = getelementptr i8, ptr %i.s, i64 %index
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !alias.scope !5461, !noalias !5462
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5455

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.ar, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %.val15.i = load float, ptr %i.ah, align 4, !noalias !5460, !noundef !7
  %i.ai = load float, ptr %i.e, align 4, !noalias !5458, !noundef !7
  %i.aj = load float, ptr %i.k, align 4, !noalias !5458, !noundef !7
  %i.ak = fsub float %.val15.i, %i.ai
  %i.al = fdiv float %i.ak, %i.aj
  %i.am = tail call float @llvm.round.f32(float %i.al) ; 2 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.an, float 0.000000e+00, float %i.am ; 2 uses
  %i.ao = fcmp ogt float %spec.store.select.i.i.i.i.i, 2.550000e+02
  %spec.store.select1.i.i.i.i.i = select i1 %i.ao, float 2.550000e+02, float %spec.store.select.i.i.i.i.i
  %i.ap = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %spec.store.select1.i.i.i.i.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af
  store i8 %i.ap, ptr %i.aq, align 1, !noalias !5463
  %i.ar = add i64 %i.af, 1                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.j
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5456

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5460
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -8
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !5478, !noalias !5479
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !5478, !noalias !5479
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !5480, !noalias !5481
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !5480, !noalias !5481
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5475

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.w, align 4, !noalias !5479, !noundef !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val15.i.prol, ptr %i.x, align 4, !noalias !5482
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5476

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ad, align 4, !noalias !5479, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val15.i, ptr %i.ae, align 4, !noalias !5482
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i32, ptr %i.ag, align 4, !noalias !5479, !noundef !7
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val15.i.1, ptr %i.ai, align 4, !noalias !5482
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val15.i.2 = load i32, ptr %i.ak, align 4, !noalias !5479, !noundef !7
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val15.i.2, ptr %i.am, align 4, !noalias !5482
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val15.i.3 = load i32, ptr %i.ao, align 4, !noalias !5479, !noundef !7
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.3, ptr %i.aq, align 4, !noalias !5482
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5477

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5479
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildfEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -8
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !5497, !noalias !5498
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !5497, !noalias !5498
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !5499, !noalias !5500
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !5499, !noalias !5500
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5494

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.w, align 4, !noalias !5498, !noundef !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val15.i.prol, ptr %i.x, align 4, !noalias !5501
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5495

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ad, align 4, !noalias !5498, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val15.i, ptr %i.ae, align 4, !noalias !5501
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i32, ptr %i.ag, align 4, !noalias !5498, !noundef !7
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val15.i.1, ptr %i.ai, align 4, !noalias !5501
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val15.i.2 = load i32, ptr %i.ak, align 4, !noalias !5498, !noundef !7
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val15.i.2, ptr %i.am, align 4, !noalias !5501
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val15.i.3 = load i32, ptr %i.ao, align 4, !noalias !5498, !noundef !7
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.3, ptr %i.aq, align 4, !noalias !5501
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5496

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5498
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildfEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecfE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_fuNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs1_0NCINvNvB1Z_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.j = lshr exact i64 %i.g, 1
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j
  %scevgep3 = getelementptr i8, ptr %i.a, i64 4
  %2 = and i64 %i.g, -8
  %scevgep4 = getelementptr i8, ptr %i.a, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %i.h, 7                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub nsw i64 %i.h, %i.n                 ; 3 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec
  %i.p = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = getelementptr i8, ptr %i.r, i64 36
  %wide.vec = load <8 x float>, ptr %i.s, align 4, !alias.scope !5516, !noalias !5517
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec5 = load <8 x float>, ptr %i.t, align 4, !alias.scope !5516, !noalias !5517
  %strided.vec6 = shufflevector <8 x float> %wide.vec5, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %strided.vec, ptr %i.u, align 4, !alias.scope !5518, !noalias !5519
  store <4 x float> %strided.vec6, ptr %i.v, align 4, !alias.scope !5518, !noalias !5519
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5513

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub nsw i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ad, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val15.i.prol = load float, ptr %i.aa, align 4, !noalias !5517, !noundef !7
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store float %.val15.i.prol, ptr %i.ab, align 4, !noalias !5520
  %i.ac = add i64 %i.y, 1                         ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5514

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_fuNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs1_0NCINvNvB1Z_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ag = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val15.i = load float, ptr %i.ai, align 4, !noalias !5517, !noundef !7
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  store float %.val15.i, ptr %i.aj, align 4, !noalias !5520
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.al = getelementptr i8, ptr %i.ak, i64 12
  %.val15.i.1 = load float, ptr %i.al, align 4, !noalias !5517, !noundef !7
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  %i.an = getelementptr i8, ptr %i.am, i64 4
  store float %.val15.i.1, ptr %i.an, align 4, !noalias !5520
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 20
  %.val15.i.2 = load float, ptr %i.ap, align 4, !noalias !5517, !noundef !7
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store float %.val15.i.2, ptr %i.ar, align 4, !noalias !5520
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.at = getelementptr i8, ptr %i.as, i64 28
  %.val15.i.3 = load float, ptr %i.at, align 4, !noalias !5517, !noundef !7
  %i.au = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  %i.av = getelementptr i8, ptr %i.au, i64 12
  store float %.val15.i.3, ptr %i.av, align 4, !noalias !5520
  %i.aw = add i64 %i.ag, 4                        ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.h
  br i1 %i.ay, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_fuNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs1_0NCINvNvB1Z_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5515

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_fuNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs1_0NCINvNvB1Z_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecfE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5517
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildfEs2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -8
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <8 x i32>, ptr %i.o, align 4, !alias.scope !5535, !noalias !5536
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !5535, !noalias !5536
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %strided.vec, ptr %i.r, align 4, !alias.scope !5537, !noalias !5538
  store <4 x i32> %strided.vec5, ptr %i.s, align 4, !alias.scope !5537, !noalias !5538
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5532

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.w, align 4, !noalias !5536, !noundef !7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %.val15.i.prol, ptr %i.x, align 4, !noalias !5539
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5533

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ad, align 4, !noalias !5536, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i32 %.val15.i, ptr %i.ae, align 4, !noalias !5539
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i32, ptr %i.ag, align 4, !noalias !5536, !noundef !7
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %.val15.i.1, ptr %i.ai, align 4, !noalias !5539
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val15.i.2 = load i32, ptr %i.ak, align 4, !noalias !5536, !noundef !7
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val15.i.2, ptr %i.am, align 4, !noalias !5539
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val15.i.3 = load i32, ptr %i.ao, align 4, !noalias !5536, !noundef !7
  %i.ap = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  store i32 %.val15.i.3, ptr %i.aq, align 4, !noalias !5539
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5534

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildfEs2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5536
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtB1p_16VectorOperationsNtB2H_27EstimateOperationEffectArea20estimate_effect_area0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Z_8for_each4callNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Y_3VecB62_E14extend_trustedBN_E0E0EB2L_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 80                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 80
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 288230376151711742
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !5544
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = getelementptr [24 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.n = getelementptr i8, ptr %i.m, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !5544
  %i.o = add i64 %i.g, 2                          ; 3 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !5544
  %i.t = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNCNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtBS_16VectorOperationsNtB4m_27EstimateOperationEffectArea20estimate_effect_area0NCINvNvB22_8for_each4callB3q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7e_3VecB3q_E14extend_trustedINtB2S_3MapBF_B4e_EE0E0E0EB4q_.exit.loopexit.unr-lcssa ], [ %i.t, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5545
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENCNvXs9_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer16update_persistedNtB1p_15UpdateVectorsOpNtB2J_11Generalizer14remove_details0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4R_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB67_3VecB1n_E14extend_trustedBN_E0E0EB2N_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldRBQ_BQ_uNCNvXs9_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer16update_persistedNtBS_15UpdateVectorsOpNtB3E_11Generalizer14remove_details0NCINvNvB22_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6l_3VecBQ_E14extend_trustedINtB2S_3MapBF_B3u_EE0E0E0EB3I_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5555
  invoke void @_RNvXsa_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer16update_persistedNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedNtB7_11Generalizer14remove_details(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !5556

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !5557
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5555
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2j_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3b_5accumjNtB5a_3Sum3sumIBO_BN_B45_EE0E0ECsPYQCUnoTxQ_10collection:bb.a
  %i.g = tail call fastcc noundef i64 @_RNvXsKM_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9RawVectorNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f) #41 ; 2 uses
  %i.h = or i64 %i.g, 1
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %i.g, %.sroa.02.0.i
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1H_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2p_jjjNCINvNtNtB3b_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1F_5accumjNtB5c_3Sum3sumINtB2r_3MapIB5E_BF_B31_EB48_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1H_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2p_jjjNCINvNtNtB3b_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1F_5accumjNtB5c_3Sum3sumINtB2r_3MapIB5E_BF_B31_EB48_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.o, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2E_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3w_5accumjNtB5v_3Sum3sumIBO_BN_B4q_EE0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2K_jjjNCINvNtNtB3w_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB20_5accumjNtB5x_3Sum3sumINtB2M_3MapIB5Z_BF_B3m_EB4t_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 808
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.o, %bb.c ]
  %i.f = getelementptr inbounds nuw [808 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.g = tail call fastcc noundef i64 @_RNvYNvYNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRB5_EE8call_mutCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.f) #41, !inline_history !6960 ; 2 uses
  %i.h = or i64 %i.g, 1
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %i.g, %.sroa.02.0.i
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2K_jjjNCINvNtNtB3w_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB20_5accumjNtB5x_3Sum3sumINtB2M_3MapIB5Z_BF_B3m_EB4t_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2K_jjjNCINvNtNtB3w_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB20_5accumjNtB5x_3Sum3sumINtB2M_3MapIB5Z_BF_B3m_EB4t_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.o, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2B_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3t_5accumjNtB5s_3Sum3sumIBO_BN_B4n_EE0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Z_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2H_jjjNCINvNtNtB3t_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1X_5accumjNtB5u_3Sum3sumINtB2J_3MapIB5W_BF_B3j_EB4q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 96
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ak, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.aj, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i ]
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !range !39, !alias.scope !6967, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.g, -2
  br i1 %.not.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorE6map_orjNCNvXs7_NtBL_9raw_queryNtB1K_14RawContextPairNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsPYQCUnoTxQ_10collection.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc noundef i64 @_RNvXsKM_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9RawVectorNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(48) %i.f) #41 ; 2 uses
  %i.i = or i64 %i.h, 1
  %i.j = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add i64 %i.h, 1
  %i.p = add i64 %i.o, %i.n
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorE6map_orjNCNvXs7_NtBL_9raw_queryNtB1K_14RawContextPairNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsPYQCUnoTxQ_10collection.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorE6map_orjNCNvXs7_NtBL_9raw_queryNtB1K_14RawContextPairNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !39, !alias.scope !6967, !noundef !7
  %.not2.i.i.i.i = icmp eq i64 %i.r, -2
  br i1 %.not2.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorE6map_orjNCNvXs7_NtBL_9raw_queryNtB1K_14RawContextPairNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %i.s = tail call fastcc noundef i64 @_RNvXsKM_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9RawVectorNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %i.q) #41 ; 2 uses
  %i.t = or i64 %i.s, 1
  %i.u = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add i64 %i.s, 1
  %i.aa = add i64 %i.z, %i.y
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.e, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorE6map_orjNCNvXs7_NtBL_9raw_queryNtB1K_14RawContextPairNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %.sroa.02.0.i3.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9RawVectorE6map_orjNCNvXs7_NtBL_9raw_queryNtB1K_14RawContextPairNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsPYQCUnoTxQ_10collection.exit.i.i.i.i ]
  %i.ab = add i64 %.sroa.02.0.i3.i.i.i.i, %.sroa.02.0.i.i.i.i.i ; 2 uses
  %i.ac = or i64 %i.ab, 1
  %i.ad = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = xor i64 %i.ad, 63
  %i.af = mul nuw nsw i64 %i.ae, 9
  %i.ag = add nuw nsw i64 %i.af, 73
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = add i64 %i.ab, %.sroa.02.0.i
  %i.aj = add i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.e
  br i1 %i.al, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Z_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2H_jjjNCINvNtNtB3t_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1X_5accumjNtB5u_3Sum3sumINtB2J_3MapIB5W_BF_B3j_EB4q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Z_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2H_jjjNCINvNtNtB3t_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1X_5accumjNtB5u_3Sum3sumINtB2J_3MapIB5W_BF_B3j_EB4q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.aj, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query14RawContextPairjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB29_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB49_3Sum3sumINtB4_3MapIB4J_INtNtNtBa_5slice4iter4IterBV_EB1Z_EB35_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2C_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3u_5accumjNtB5t_3Sum3sumIBO_BN_B4o_EE0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2I_jjjNCINvNtNtB3u_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1Y_5accumjNtB5v_3Sum3sumINtB2K_3MapIB5X_BF_B3k_EB4r_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.ab, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i ]
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !range !39, !alias.scope !6974, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.g, -2
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc noundef i64 @_RNvXsKM_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9RawVectorNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(48) %i.f) #41 ; 2 uses
  %i.i = or i64 %i.h, 1
  %i.j = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add i64 %i.h, 1
  %i.p = add i64 %i.o, %i.n
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.r = load float, ptr %i.q, align 8, !alias.scope !6974, !noundef !7
  %i.s = fcmp une float %i.r, 0.000000e+00
  %.sroa.01.0.i.i.i.i = select i1 %i.s, i64 5, i64 0
  %i.t = add i64 %.sroa.01.0.i.i.i.i, %.sroa.02.0.i.i.i.i.i ; 2 uses
  %i.u = or i64 %i.t, 1
  %i.v = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = mul nuw nsw i64 %i.w, 9
  %i.y = add nuw nsw i64 %i.x, 73
  %i.z = lshr i64 %i.y, 6
  %i.aa = add i64 %i.t, %.sroa.02.0.i
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.e
  br i1 %i.ad, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2I_jjjNCINvNtNtB3u_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1Y_5accumjNtB5v_3Sum3sumINtB2K_3MapIB5X_BF_B3k_EB4r_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2I_jjjNCINvNtNtB3u_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB1Y_5accumjNtB5v_3Sum3sumINtB2K_3MapIB5X_BF_B3k_EB4r_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.ab, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemjjNvYBV_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2a_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4a_3Sum3sumINtB4_3MapIB4K_INtNtNtBa_5slice4iter4IterBV_EB20_EB36_EE0E0E0CsPYQCUnoTxQ_10collection.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTmyEENCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB1B_26SliceBufferedUpdateWrapperNtNtB1F_4mmap8MmapFileyE7flushers_0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecyE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTmyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_yuNCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB2u_26SliceBufferedUpdateWrapperNtNtB2y_4mmap8MmapFileyE7flushers_0s0_0NCINvNvBV_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 240
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %0, i64 8
  %3 = and i64 %i.d, -16
  %scevgep4 = getelementptr i8, ptr %0, i64 %3
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = and i64 %i.e, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 4, i64 %i.i
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = getelementptr i8, ptr %i.o, i64 40
  %wide.vec = load <4 x i64>, ptr %i.p, align 8, !alias.scope !6989, !noalias !6990
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec5 = load <4 x i64>, ptr %i.q, align 8, !alias.scope !6989, !noalias !6990
  %strided.vec6 = shufflevector <4 x i64> %wide.vec5, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = getelementptr [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %strided.vec, ptr %i.r, align 8, !alias.scope !6991, !noalias !6992
  store <2 x i64> %strided.vec6, ptr %i.s, align 8, !alias.scope !6991, !noalias !6992
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !6986

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val15.i.prol = load i64, ptr %i.x, align 8, !noalias !6990, !noundef !7
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i64 %.val15.i.prol, ptr %i.y, align 8, !noalias !6993
  %i.z = add i64 %i.v, 1                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6987

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTmyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_yuNCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB2u_26SliceBufferedUpdateWrapperNtNtB2y_4mmap8MmapFileyE7flushers_0s0_0NCINvNvBV_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val15.i = load i64, ptr %i.af, align 8, !noalias !6990, !noundef !7
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i64 %.val15.i, ptr %i.ag, align 8, !noalias !6993
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val15.i.1 = load i64, ptr %i.ai, align 8, !noalias !6990, !noundef !7
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store i64 %.val15.i.1, ptr %i.ak, align 8, !noalias !6993
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %.val15.i.2 = load i64, ptr %i.am, align 8, !noalias !6990, !noundef !7
  %i.an = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store i64 %.val15.i.2, ptr %i.ao, align 8, !noalias !6993
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %.val15.i.3 = load i64, ptr %i.aq, align 8, !noalias !6990, !noundef !7
  %i.ar = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  store i64 %.val15.i.3, ptr %i.as, align 8, !noalias !6993
  %i.at = add i64 %i.ad, 4                        ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.e
  br i1 %i.av, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTmyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_yuNCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB2u_26SliceBufferedUpdateWrapperNtNtB2y_4mmap8MmapFileyE7flushers_0s0_0NCINvNvBV_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !6988

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTmyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_yuNCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB2u_26SliceBufferedUpdateWrapperNtNtB2y_4mmap8MmapFileyE7flushers_0s0_0NCINvNvBV_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6990
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1n_yNCNvMNtNtNtB1v_6shards11replica_set6updateNtB3A_15ShardReplicaSet31merge_successful_update_resultss0_0E0EB2z_4foldINtNtBc_3cmp11KeyAndValueyB3n_ENvYB5j_NtB5m_3Ord3maxEB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 64
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 288230376151711742
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i = phi i64 [ 0, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ %3, %.new ], [ %..i.i.i.i.1, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %2, %.new ], [ %.2.i.i.i.i.1, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7001, !noalias !7002, !noundef !7 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.sroa.6.0.i
  %..i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %.sroa.6.0.i) ; 2 uses
  %.2.i.i.i.i = select i1 %i.i, ptr %.sroa.02.0.i, ptr %i.g
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !7001, !noalias !7002, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %i.l, %..i.i.i.i
  %..i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %..i.i.i.i) ; 3 uses
  %.2.i.i.i.i.1 = select i1 %i.m, ptr %.2.i.i.i.i, ptr %i.k ; 3 uses
  %i.n = add nuw i64 %.sroa.05.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.o = and i64 %i.d, 64
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.epil.init = phi i64 [ %3, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.epil.init = phi ptr [ %2, %bb.b ], [ %.2.i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i.epil.init ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7001, !noalias !7002, !noundef !7 ; 2 uses
  %i.r = icmp ult i64 %i.q, %.sroa.6.0.i.epil.init
  %..i.i.i.i.epil = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %.sroa.6.0.i.epil.init)
  %.2.i.i.i.i.epil = select i1 %i.r, ptr %.sroa.02.0.i.epil.init, ptr %i.p
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa, %bb.a
  %.pn16.i = phi ptr [ %2, %bb.a ], [ %.2.i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ], [ %.2.i.i.i.i.epil, %.epil.preheader ]
  %.pn14.i = phi i64 [ %3, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ]
  %.pn.i = insertvalue { ptr, i64 } poison, ptr %.pn16.i, 0
  %.merged.i = insertvalue { ptr, i64 } %.pn.i, i64 %.pn14.i, 1
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsk_B3v_B3t_INtNtB2u_7collect6ExtendB3t_E6extendBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7016)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB30_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.y, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7017
  store ptr %i.l, ptr %i.c, align 8, !noalias !7018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7018
  store ptr %i.c, ptr %i.b, align 8, !noalias !7018
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7019
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @26, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7017
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1v_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB2e_Es_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4D_8for_each4callB2e_NCINvMsk_B1v_IB2f_B2e_E14extend_trustedBN_E0E0EB3m_:bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7181
  resume { ptr, i32 } %i.q

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBY_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2J_8adapters3map8map_foldQBT_B1H_uNCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB1H_Es_00NCINvNvB2D_8for_each4callB1H_NCINvMsk_BY_IB1I_B1H_E14extend_trustedINtB3t_3MapBF_B46_EE0E0E0EB4h_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7181
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutTNtNtCsexYYUdYSQU6_5alloc6string6StringjEEINvNtBc_3mem4takeB1q_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2t_8for_each4callB1q_NCINvMsk_NtB1v_3vecINtB3J_3VecB1q_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvB1z_8for_each4callBT_NCINvMsk_NtBY_3vecINtB3X_3VecBT_E14extend_trustedINtB2p_3MapBF_B31_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !7200
  store i64 0, ptr %i.h, align 8, !alias.scope !7201, !noalias !7202
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7201, !noalias !7202
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !7201, !noalias !7202
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !7203
  %i.j = add i64 %i.g, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvB1z_8for_each4callBT_NCINvMsk_NtBY_3vecINtB3X_3VecBT_E14extend_trustedINtB2p_3MapBF_B31_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvB1z_8for_each4callBT_NCINvMsk_NtBY_3vecINtB3X_3VecBT_E14extend_trustedINtB2p_3MapBF_B31_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7204
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutTRejEEINvNtBc_3mem4takeB1q_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1T_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB39_3VecB1q_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTRejEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBZ_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3m_3VecBT_E14extend_trustedINtB1P_3MapBF_B2r_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !7221
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8, !alias.scope !7222, !noalias !7223
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !7222, !noalias !7223
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7224
  %i.j = add i64 %i.g, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTRejEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBZ_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3m_3VecBT_E14extend_trustedINtB1P_3MapBF_B2r_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTRejEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBZ_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3m_3VecBT_E14extend_trustedINtB1P_3MapBF_B2r_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7225
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutTjjEEINvNtBc_3mem4takeB1q_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1S_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB38_3VecB1q_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7240)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.j = load <2 x i64>, ptr %i.h, align 8, !alias.scope !7241, !noalias !7242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !7241, !noalias !7242
  store <2 x i64> %i.j, ptr %i.i, align 8, !noalias !7243
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  %i.m = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load <2 x i64>, ptr %i.l, align 8, !alias.scope !7245, !noalias !7242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !7245, !noalias !7242
  store <2 x i64> %i.o, ptr %i.n, align 8, !noalias !7246
  %i.p = add i64 %i.g, 2                          ; 3 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.r = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.q, %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7240)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  %i.u = load <2 x i64>, ptr %i.s, align 8, !alias.scope !7241, !noalias !7242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !7241, !noalias !7242
  store <2 x i64> %i.u, ptr %i.t, align 8, !noalias !7243
  %i.v = add i64 %.epil.init, 1
  br label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %.epil.preheader, %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7247
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutjEINvNtBc_3mem4takejEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1M_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2Z_3VecjE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQjjuINvNtBb_3mem4takejENCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3a_3VecjE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %3 = and i64 %i.d, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %3
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %i.g, i64 %3
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !alias.scope !7268, !noalias !7269
  %wide.load4 = load <2 x i64>, ptr %i.k, align 8, !alias.scope !7268, !noalias !7269
  store <2 x i64> zeroinitializer, ptr %i.j, align 8, !alias.scope !7268, !noalias !7269
  store <2 x i64> zeroinitializer, ptr %i.k, align 8, !alias.scope !7268, !noalias !7269
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %wide.load, ptr %i.l, align 8, !alias.scope !7270, !noalias !7271
  store <2 x i64> %wide.load4, ptr %i.m, align 8, !alias.scope !7270, !noalias !7271
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !7264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQjjuINvNtBb_3mem4takejENCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3a_3VecjE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.o = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7272, !noalias !7273, !noundef !7
  store i64 0, ptr %i.p, align 8, !alias.scope !7272, !noalias !7273
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i64 %i.q, ptr %i.r, align 8, !noalias !7271
  %i.s = add i64 %.ph, 1                          ; 2 uses
  %i.t = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = icmp eq i64 %i.e, %.neg
  br i1 %i.u, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQjjuINvNtBb_3mem4takejENCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3a_3VecjE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.v = phi i64 [ %i.ae, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !7272, !noalias !7273, !noundef !7
  store i64 0, ptr %i.w, align 8, !alias.scope !7272, !noalias !7273
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i64 %i.x, ptr %i.y, align 8, !noalias !7271
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7274)
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !7275, !noalias !7273, !noundef !7
  store i64 0, ptr %i.aa, align 8, !alias.scope !7275, !noalias !7273
  %i.ac = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !7276
  %i.ae = add i64 %i.v, 2                         ; 2 uses
  %i.af = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.e
  br i1 %i.ag, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQjjuINvNtBb_3mem4takejENCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3a_3VecjE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !7266

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQjjuINvNtBb_3mem4takejENCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3a_3VecjE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ae, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7277
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs9jZsDbilXxj_7roaring6bitmap13serializationNtB1Z_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB1Z_5store11array_store10ArrayStoreINtNtBc_7convert7TryFromINtB12_3VectEE8try_fromNtB3z_5ErrorNvMNtB3B_12bitmap_storeNtB5c_11BitmapStore8try_fromNtB5c_5ErrorEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB3B_14interval_store8IntervalENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtBc_2io5error9ErrorKindEEB6g_8try_foldB6X_NCINvNtB12_16in_place_collect24write_in_place_with_dropB7y_E0IB8D_B6X_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaJ_B6X_EECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterAtj2_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtNtCs9jZsDbilXxj_7roaring6bitmap5store14interval_store8IntervalENCINvNtNtB19_8adapters3map12map_try_foldBX_INtNtB1b_6result6ResultB2H_NtNtNtB1b_2io5error9ErrorKindEB27_INtNtNtB1b_3ops12control_flow11ControlFlowIB4w_B27_zEB27_ENCINvMNtB2N_13serializationNtB2N_13RoaringBitmap21deserialize_from_implRShNvYNtNtB2L_11array_store10ArrayStoreINtNtB1b_7convert7TryFromINtB8_3VectEE8try_fromNtB7H_5ErrorNvMNtB2L_12bitmap_storeNtB9c_11BitmapStore8try_fromNtB9c_5ErrorEs0_0NCINvXB3V_INtB3V_12GenericShuntINtB3T_3MapBI_B6q_EIB4w_zB4W_EEB13_8try_foldB27_NCINvNtB8_16in_place_collect24write_in_place_with_dropB2H_E0B6a_E0E0B5u_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB12_3VecIB1M_IB1M_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEENCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB1W_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4g_8for_each4callIBY_B1W_ENCINvMsk_B12_IB1M_B5j_E14extend_trustedBN_E0E0EB32_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecIBY_IBY_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB28_8adapters3map8map_foldBX_IBJ_B17_EuNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB17_E0NCINvNvB22_8for_each4callB3F_NCINvMsk_B8_IBY_B3F_E14extend_trustedINtB38_3MapBI_B3P_EE0E0E0EB3Y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB12_3VecIB1M_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB1W_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callIBY_B1W_ENCINvMsk_B12_IB1M_B5d_E14extend_trustedBN_E0E0EB2W_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecIBY_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB23_8adapters3map8map_foldBX_IBJ_B17_EuNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB17_E0NCINvNvB1X_8for_each4callB3A_NCINvMsk_B8_IBY_B3A_E14extend_trustedINtB33_3MapBI_B3K_EE0E0E0EB3T_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB12_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB2S_10LocalShard28fill_with_payload_or_vectors0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB5k_zEEB2W_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1Y_8adapters3map12map_try_foldBX_BX_B2W_INtNtB20_6result6ResultB2W_zENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB52_10LocalShard28fill_with_payload_or_vectors0s0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4o_EB56_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtCseUPaKcRZYeZ_4half8binary163f16EEENvMB1O_B1L_6unwrapENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB27_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB27_E0INtNtBc_6result6ResultB54_zEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtCseUPaKcRZYeZ_4half8binary163f16EEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvNtNtB3C_8adapters3map12map_try_foldBX_B1z_B4l_INtNtB12_6result6ResultB4l_zENvMB10_BX_6unwrapNCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0E0B5P_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtNtB2e_6common5types11QuantizedU8EEENvMB1O_B1L_6unwrapENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB27_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB27_E0INtNtBc_6result6ResultB54_zEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtNtB1G_6common5types11QuantizedU8EEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvNtNtB3C_8adapters3map12map_try_foldBX_B1z_B4l_INtNtB12_6result6ResultB4l_zENvMB10_BX_6unwrapNCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0E0B5P_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListfEEENvMB1O_B1L_6unwrapENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB27_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB27_E0INtNtBc_6result6ResultB4v_zEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListfEEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvNtNtB33_8adapters3map12map_try_foldBX_B1z_B3M_INtNtB12_6result6ResultB3M_zENvMB10_BX_6unwrapNCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0E0B5g_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCs2VYanfWSVjt_15crossbeam_deque5deque7StealerNtNtCs62pcyPC2rRp_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3m_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callB3B_NCINvMsk_B12_INtB12_3VecB3B_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs2VYanfWSVjt_15crossbeam_deque5deque7StealerNtNtCs62pcyPC2rRp_10rayon_core3job6JobRefEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsk_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B36_INtB36_11VectorQueryB34_E16ids_into_vectorss0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropIB1M_NtNtNtB1U_10data_types7vectors14VectorInternalEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB3a_5types15CollectionErrorEEB5H_8try_foldB6o_NCINvNtB12_16in_place_collect24write_in_place_with_dropB6Z_E0IB8n_B6o_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaw_B6o_EEB3c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropIBY_NtNtNtB16_10data_types7vectors14VectorInternalEENCINvNtNtB41_8adapters3map12map_try_foldBX_INtNtB43_6result6ResultB5z_NtNtB2m_5types15CollectionErrorEB4Z_INtNtNtB43_3ops12control_flow11ControlFlowIB77_B4Z_zEB4Z_ENCNvMs3_B2i_INtB2i_11VectorQueryB2g_E16ids_into_vectorss0_0NCINvXB6w_INtB6w_12GenericShuntINtB6u_3MapBI_B93_EIB77_zB7x_EEB3V_8try_foldB4Z_NCINvNtB8_16in_place_collect24write_in_place_with_dropB5z_E0B8N_E0E0B87_EB2o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B36_INtB36_11VectorQueryB34_E16ids_into_vectorss1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropIB1M_NtNtNtB1U_10data_types7vectors14VectorInternalEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB3a_5types15CollectionErrorEEB5H_8try_foldB6o_NCINvNtB12_16in_place_collect24write_in_place_with_dropB6Z_E0IB8n_B6o_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaw_B6o_EEB3c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, ptr noalias nofree noundef align 8 dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_2
