Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.006?download=true
inline.NumInlined: 5529
inline.NumDeleted: 3142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB15_8adapters9enumerateINtB2a_9EnumeratepEBZ_4fold9enumerateduNCINvNtB2c_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB3Q_14TurboQuantizer10dequantizefEs0_0NCINvNvBZ_8for_each4callfNCINvMsk_B8_INtB8_3VecfE14extend_trustedINtB3j_3MapIB2C_BI_EB3I_EE0E0E0E0ECs607s0NAIaWN_7segment:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit
  %.val919 = phi i64 [ %.promoted30, %.lr.ph ], [ %i.an, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 3 uses
  %i.p = phi i64 [ %.promoted29, %.lr.ph ], [ %i.ao, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 6 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5291)
  %i.t = load i64, ptr %i.i, align 8, !noalias !5289, !noundef !7 ; 2 uses
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.j, align 8, !noalias !5289, !noundef !7 ; 2 uses
  %i.w = icmp ult i64 %i.p, %i.v
  br i1 %i.w, label %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.x = phi i64 [ %i.t, %bb.b ], [ %i.v, %bb.c ]
  %i.y = phi ptr [ @1, %bb.b ], [ @2, %bb.c ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #23
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  %i.z = load ptr, ptr %i.k, align 8, !noalias !5289, !nonnull !7, !noundef !7
  %i.aa = load ptr, ptr %i.l, align 8, !noalias !5289, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.p
  %i.ac = load float, ptr %i.ab, align 4, !noalias !5289, !noundef !7
  %i.ad = fpext float %i.ac to double
  %i.ae = fdiv double %i.r, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.p
  %i.ag = load float, ptr %i.af, align 4, !noalias !5289, !noundef !7
  %i.ah = fpext float %i.ag to double
  %i.ai = fsub double %i.ae, %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.aj = load double, ptr %.val1.i.i, align 8, !noalias !5289, !noundef !7
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = fptrunc double %i.ak to float
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.val919
  store float %i.al, ptr %i.am, align 4, !noalias !5294
  %i.an = add i64 %.val919, 1                     ; 2 uses
  store i64 %i.an, ptr %i.o, align 8, !alias.scope !5294
  %i.ao = add nuw i64 %i.p, 1
  %.not.not = icmp eq ptr %i.s, %i.d
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ar, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ap, ptr %i.as, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.at, align 8, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  ret void

bb.e:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load i64, ptr %i.av, align 8, !noundef !7
  store i64 %.val9, ptr %.val8, align 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit
  %.pn15 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.f ], [ %lpad.thr_comm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn15

bb.g:                                             ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %.val818 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  store i64 %.val919, ptr %.val818, align 8
  %.val = load ptr, ptr %0, align 8, !alias.scope !5295, !nonnull !7, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.aw, align 8, !alias.scope !5295, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5296
  store i64 %.val5, ptr %i.a, align 8, !noalias !5296
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.ax, align 8, !noalias !5296
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5296
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folddNCINvNtNtB15_8adapters3map8map_foldjddNCINvNtNtCs607s0NAIaWN_7segment5index15query_estimator26expected_should_estimationBI_E0NCINvXs27_NtB13_5accumdNtB4b_7Product7productINtB25_3MapBI_B2C_EE0E0EB2L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, double noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs607s0NAIaWN_7segment.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !noundef !7
  %i.f = uitofp i64 %i.e to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.09 = phi double [ %1, %.lr.ph ], [ %i.m, %bb.b ]
  %i.g = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = uitofp i64 %i.h to double
  %i.k = fdiv double %i.j, %i.f
  %i.l = fsub double 1.000000e+00, %i.k
  %i.m = fmul double %.sroa.0.09, %i.l            ; 2 uses
  %.not.not = icmp eq ptr %i.i, %i.c
  br i1 %.not.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs607s0NAIaWN_7segment.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs607s0NAIaWN_7segment.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi double [ %1, %bb.a ], [ %i.m, %bb.b ]
  %i.n = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.q, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %.sroa.0.0.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNvYjNtNtB17_3cmp3Ord3minECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not7 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs607s0NAIaWN_7segment.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.08 = phi i64 [ %..i.i, %.lr.ph ], [ %1, %bb.a ]
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %.sroa.0.08) ; 2 uses
  %.not.not = icmp eq ptr %i.g, %i.c
  br i1 %.not.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs607s0NAIaWN_7segment.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %..i.i, %.lr.ph ]
  %i.h = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.k, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoItermENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropmENCINvNtNtB15_8adapters10filter_map19filter_map_try_foldmmB23_INtNtB17_6result6ResultB23_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB4e_17GraphLayersHealer17save_into_builder00NCINvNtB8_16in_place_collect24write_in_place_with_dropmE0E0B3E_EB4k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not13 = icmp eq ptr %i.e, %i.d
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val10.i.a = load i64, ptr %i.g, align 8
  %.val.i = load ptr, ptr %3, align 8, !nonnull !7
  %.val10.i.pre = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.x, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit ]
  %.val10.i = phi i64 [ %.val10.i.a, %.lr.ph ], [ %.val10.i18, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit ] ; 3 uses
  %i.i = phi ptr [ %i.e, %.lr.ph ], [ %i.w, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit ] ; 2 uses
  %.sroa.4.014 = phi ptr [ %2, %.lr.ph ], [ %.pn2.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit ] ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  store ptr %.sroa.4.014, ptr %i.f, align 8
  %i.l = zext i32 %i.j to i64                     ; 3 uses
  %i.m = icmp ugt i64 %.val10.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %.val10.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !range !26, !noundef !7
  %i.p = trunc nuw i32 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4
  store i32 %i.r, ptr %.sroa.4.014, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 4
  %.pre = load ptr, ptr %i.b, align 8
  %.pre17 = load ptr, ptr %i.c, align 8
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = invoke noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropmE3lenCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit: ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre17, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %.val10.i18 = phi i64 [ %.val10.i.pre, %bb.e ], [ %.val10.i, %bb.d ]
  %.pn2.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.4.014, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.w, %i.x
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldmmINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropmEINtNtBa_6result6ResultB1g_zENCNCNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index19graph_layers_healerNtB2O_17GraphLayersHealer17save_into_builder00NCINvNtB1l_16in_place_collect24write_in_place_with_dropmE0E0B2U_.exit ]
  %i.y = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.z = insertvalue { ptr, ptr } %i.y, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoItermENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB17_3num7nonzero7NonZerojENCINvNtNtB15_8adapters6filter15filter_try_foldmB23_INtNtB17_6option6OptionB23_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB3Y_14OnDiskMapIndexeEINtNtB40_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvBZ_10advance_byINtB2F_6FilterBI_B3R_ENtB6G_13SpecAdvanceBy15spec_advance_by0E0B3p_EB46_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8
  %.val.i = load ptr, ptr %2, align 8, !nonnull !7, !align !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit, %bb.a
  %i.f = phi ptr [ %.promoted, %bb.a ], [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ] ; 3 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.j = zext i32 %i.g to i64                     ; 2 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = icmp samesign ugt i64 %i.k, %i.j
  br i1 %i.l, label %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexeEINtNtB8_8read_ops12MapIndexReadeE12get_iterator0Be_.exit.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit

_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexeEINtNtB8_8read_ops12MapIndexReadeE12get_iterator0Be_.exit.i: ; preds = %bb.c
  %i.m = load ptr, ptr %.val.i, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = and i64 %i.n, -8
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = sub i64 0, %i.n
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = shl i64 %i.n, 3
  %i.t = and i64 %i.s, 56
  %i.u = and i64 %i.i, 7
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = add nuw nsw i64 %i.v, %i.j               ; 2 uses
  %i.x = lshr i64 %i.w, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5302
  store i64 %i.x, ptr %i.a, align 8, !noalias !5302
  %i.y = call noundef nonnull ptr @_RINvMs9_NtCs1i37ktrehWY_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs607s0NAIaWN_7segment(ptr noundef nonnull readonly %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !5303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5302
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !5303, !noundef !7
  %i.z = and i64 %i.w, 63
  %i.aa = lshr i64 %.val.i.i.i.i, %i.z
  %i.ab = or i64 %i.aa, -2
  %.neg.i = add i64 %.sroa.0.0, 1
  %spec.select.i = add i64 %.neg.i, %i.ab
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit: ; preds = %bb.c, %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexeEINtNtB8_8read_ops12MapIndexReadeE12get_iterator0Be_.exit.i
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0, %bb.c ], [ %spec.select.i, %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexeEINtNtB8_8read_ops12MapIndexReadeE12get_iterator0Be_.exit.i ] ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ac, label %bb.d, label %bb.b

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit, %bb.b
  %.sroa.02.0 = phi i64 [ %.sroa.0.0, %bb.b ], [ 0, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexeEINtNtB2c_8read_ops12MapIndexReadeE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ]
  ret i64 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoItermENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB17_3num7nonzero7NonZerojENCINvNtNtB15_8adapters6filter15filter_try_foldmB23_INtNtB17_6option6OptionB23_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB3Y_14OnDiskMapIndexoEINtNtB40_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvBZ_10advance_byINtB2F_6FilterBI_B3R_ENtB6G_13SpecAdvanceBy15spec_advance_by0E0B3p_EB46_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8
  %.val.i = load ptr, ptr %2, align 8, !nonnull !7, !align !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit, %bb.a
  %i.f = phi ptr [ %.promoted, %bb.a ], [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ] ; 3 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.j = zext i32 %i.g to i64                     ; 2 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = icmp samesign ugt i64 %i.k, %i.j
  br i1 %i.l, label %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexoEINtNtB8_8read_ops12MapIndexReadoE12get_iterator0Be_.exit.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit

_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexoEINtNtB8_8read_ops12MapIndexReadoE12get_iterator0Be_.exit.i: ; preds = %bb.c
  %i.m = load ptr, ptr %.val.i, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = and i64 %i.n, -8
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = sub i64 0, %i.n
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = shl i64 %i.n, 3
  %i.t = and i64 %i.s, 56
  %i.u = and i64 %i.i, 7
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = add nuw nsw i64 %i.v, %i.j               ; 2 uses
  %i.x = lshr i64 %i.w, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5309
  store i64 %i.x, ptr %i.a, align 8, !noalias !5309
  %i.y = call noundef nonnull ptr @_RINvMs9_NtCs1i37ktrehWY_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs607s0NAIaWN_7segment(ptr noundef nonnull readonly %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !5310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5309
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !5310, !noundef !7
  %i.z = and i64 %i.w, 63
  %i.aa = lshr i64 %.val.i.i.i.i, %i.z
  %i.ab = or i64 %i.aa, -2
  %.neg.i = add i64 %.sroa.0.0, 1
  %spec.select.i = add i64 %.neg.i, %i.ab
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit: ; preds = %bb.c, %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexoEINtNtB8_8read_ops12MapIndexReadoE12get_iterator0Be_.exit.i
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0, %bb.c ], [ %spec.select.i, %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexoEINtNtB8_8read_ops12MapIndexReadoE12get_iterator0Be_.exit.i ] ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ac, label %bb.d, label %bb.b

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit, %bb.b
  %.sroa.02.0 = phi i64 [ %.sroa.0.0, %bb.b ], [ 0, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexoEINtNtB2c_8read_ops12MapIndexReadoE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ]
  ret i64 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoItermENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB17_3num7nonzero7NonZerojENCINvNtNtB15_8adapters6filter15filter_try_foldmB23_INtNtB17_6option6OptionB23_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB3Y_14OnDiskMapIndexxEINtNtB40_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvBZ_10advance_byINtB2F_6FilterBI_B3R_ENtB6G_13SpecAdvanceBy15spec_advance_by0E0B3p_EB46_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8
  %.val.i = load ptr, ptr %2, align 8, !nonnull !7, !align !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit, %bb.a
  %i.f = phi ptr [ %.promoted, %bb.a ], [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit ] ; 3 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.j = zext i32 %i.g to i64                     ; 2 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = icmp samesign ugt i64 %i.k, %i.j
  br i1 %i.l, label %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexxEINtNtB8_8read_ops12MapIndexReadxE12get_iterator0Be_.exit.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit

_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexxEINtNtB8_8read_ops12MapIndexReadxE12get_iterator0Be_.exit.i: ; preds = %bb.c
  %i.m = load ptr, ptr %.val.i, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = and i64 %i.n, -8
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = sub i64 0, %i.n
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = shl i64 %i.n, 3
  %i.t = and i64 %i.s, 56
  %i.u = and i64 %i.i, 7
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = add nuw nsw i64 %i.v, %i.j               ; 2 uses
  %i.x = lshr i64 %i.w, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5316
  store i64 %i.x, ptr %i.a, align 8, !noalias !5316
  %i.y = call noundef nonnull ptr @_RINvMs9_NtCs1i37ktrehWY_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_6offset0ECs607s0NAIaWN_7segment(ptr noundef nonnull readonly %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !5317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5316
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !5317, !noundef !7
  %i.z = and i64 %i.w, 63
  %i.aa = lshr i64 %.val.i.i.i.i, %i.z
  %i.ab = or i64 %i.aa, -2
  %.neg.i = add i64 %.sroa.0.0, 1
  %spec.select.i = add i64 %.neg.i, %i.ab
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit: ; preds = %bb.c, %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexxEINtNtB8_8read_ops12MapIndexReadxE12get_iterator0Be_.exit.i
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0, %bb.c ], [ %spec.select.i, %_RNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB6_14OnDiskMapIndexxEINtNtB8_8read_ops12MapIndexReadxE12get_iterator0Be_.exit.i ] ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ac, label %bb.d, label %bb.b

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB16_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index8read_opsINtB2a_14OnDiskMapIndexxEINtNtB2c_8read_ops12MapIndexReadxE12get_iterator0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoItermEB23_ENtB4S_13SpecAdvanceBy15spec_advance_by0E0B2i_.exit, %bb.b
end_hunk_0
