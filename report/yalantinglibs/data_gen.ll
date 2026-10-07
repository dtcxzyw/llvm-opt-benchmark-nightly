Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN4asio6detail22executor_function_view8completeINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEEEEvPv:bb.a
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !759
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1736
  tail call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opISt5arrayINS_12const_bufferELm2EEEENS_6detail8write_opINS0_6streamIRS7_EESB_PKSA_NSD_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSL_11async_writeISH_SB_EEN12async_simple4coro4LazyISP_EERT_T0_EUlOSV_E_SH_EENST_ISV_EESX_RT1_ENKUlSV_E_clINSL_21callback_awaitor_baseISP_NSL_16callback_awaitorISP_EEE15awaitor_handlerEEEDaSV_EUlDpOT_E_EEEclESO_mi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i64 noundef %i.c, i32 noundef 0), !inline_history !5955
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1739
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1739
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1740 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !376
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !376
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.q = load i8, ptr %i.p, align 1, !tbaa !279
  store i8 %i.q, ptr %i.d, align 1, !tbaa !279
  store ptr %i.d, ptr %i.o, align 8, !tbaa !376
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #36
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.418", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::write_op<std::array<asio::const_buffer, 2>>, asio::detail::write_op<asio::ssl::stream<asio::basic_stream_socket<asio::ip::tcp> &>, std::array<asio::const_buffer, 2>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2", align 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %2, ptr %3, align 8, !tbaa !5957
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1740
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !376
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !376
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !1717
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !279
  store <2 x i32> %i.i, ptr %i.g, align 16, !tbaa !279
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !760
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1706
  store i64 %i.n, ptr %i.l, align 8, !tbaa !1706
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1709, !nonnull !366, !align !367
  store ptr %i.q, ptr %i.o, align 16, !tbaa !1189
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !tbaa.struct !1710
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1707
  store i32 %i.v, ptr %i.t, align 16, !tbaa !1707
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1432
  store i64 %i.y, ptr %i.w, align 8, !tbaa !1432
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !760
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1736 ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 16, !tbaa !1736
  store ptr null, ptr %i.b, align 8, !tbaa !1739
  %i.ae = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !819 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !818 ; 4 uses
  %.not3.i = icmp eq ptr %i.ah, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !376
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !376
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.lcssa.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !279
  store i8 %i.aq, ptr %0, align 8, !tbaa !279
  store ptr %0, ptr %i.ao, align 8, !tbaa !376
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1740
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.z, align 16, !tbaa !280
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 152
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !759
  invoke void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opISt5arrayINS_12const_bufferELm2EEEENS_6detail8write_opINS0_6streamIRS7_EESB_PKSA_NSD_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSL_11async_writeISH_SB_EEN12async_simple4coro4LazyISP_EERT_T0_EUlOSV_E_SH_EENST_ISV_EESX_RT1_ENKUlSV_E_clINSL_21callback_awaitor_baseISP_NSL_16callback_awaitorISP_EEE15awaitor_handlerEEEDaSV_EUlDpOT_E_EEEclESO_mi(ptr noundef nonnull align 8 dereferenceable(168) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i32 noundef 0)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !5956

bb.e:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.ar

_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS4_6streamIRSB_EESF_PKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSO_11async_writeISK_SF_EEN12async_simple4coro4LazyISS_EERT_T0_EUlOSY_E_SK_EENSW_ISY_EES10_RT1_ENKUlSY_E_clINSO_21callback_awaitor_baseISS_NSO_16callback_awaitorISS_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESR_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_recv_op_baseINS_17mutable_buffers_1EE10do_performEPNS0_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1731
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !376
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !411
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1733
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !1732
  %i.h = and i8 %i.g, 16
  %i.i = icmp ne i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, i1 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.f, align 4, !tbaa !1732
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8, !tbaa !1741
  %i.p = icmp eq i64 %i.o, 0
  %spec.select = select i1 %i.p, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  %i.a = tail call i64 @recv(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit

bb.b:                                             ; preds = %.critedge
  %i.c = tail call ptr @__errno_location() #55
  %i.d = load i32, ptr %i.c, align 4, !tbaa !280
  %i.e = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %bb.i

_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit: ; preds = %.critedge
  store i32 0, ptr %5, align 8, !tbaa !796
  %i.i = icmp eq i64 %i.a, 0
  %or.cond = and i1 %4, %i.i
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  %i.j = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !281

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #36
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 2, ptr %5, align 8, !tbaa !280
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !759
  br label %bb.s

bb.h:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  store i64 %i.a, ptr %6, align 8, !tbaa !411
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.d, ptr %5, align 8, !tbaa !280
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !759
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.r = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.s = icmp eq ptr %i.r, @_ZZN4asio15system_categoryEvE8instance
  %i.t = load i32, ptr %5, align 8
  %i.u = icmp eq i32 %i.t, 4
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge, label %bb.l, !llvm.loop !5958

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.w = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !281

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i22 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.aa = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.ab = icmp eq ptr %i.aa, @_ZZN4asio15system_categoryEvE8instance
  %i.ac = load i32, ptr %5, align 8
  %i.ad = icmp eq i32 %i.ac, 11
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.af = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !281

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.aj = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.ak = icmp eq ptr %i.aj, @_ZZN4asio15system_categoryEvE8instance
  %i.al = load i32, ptr %5, align 8
  %i.am = icmp eq i32 %i.al, 11
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !411
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops25set_internal_non_blockingEiRhbRSt10error_code(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i32 9, ptr %3, align 8, !tbaa !280
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !759
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %1, align 1, !tbaa !279
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.h, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, !prof !281

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i15 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16: ; preds = %bb.g, %bb.h, %bb.i
end_hunk_0
begin_hunk_1_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptrD2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !376
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.q = load i8, ptr %i.p, align 1, !tbaa !279
  store i8 %i.q, ptr %i.d, align 1, !tbaa !279
  store ptr %i.d, ptr %i.o, align 8, !tbaa !376
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #36
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %3 = alloca %"class.std::allocator.418", align 1 ; 4 uses
  %4 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, asio::mutable_buffer, const asio::mutable_buffer *, asio::detail::transfer_all_t, asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::write_op<std::array<asio::const_buffer, 2>>, asio::detail::write_op<asio::ssl::stream<asio::basic_stream_socket<asio::ip::tcp> &>, std::array<asio::const_buffer, 2>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>>>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::binder2.1673", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %3, ptr %4, align 8, !tbaa !5994
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1767
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1760, !nonnull !366, !align !367 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !1190
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1720
  store i32 %i.i, ptr %i.g, align 8, !tbaa !1720
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !376
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !376
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !1717
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load <2 x i32>, ptr %i.p, align 8, !tbaa !279
  store <2 x i32> %i.q, ptr %i.o, align 8, !tbaa !279
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !760
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1706
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1706
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1709, !nonnull !366, !align !367
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1189
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !tbaa.struct !1710
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1707
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !1707
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1432
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1432
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !760
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1763 ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !1763
  store ptr null, ptr %i.b, align 8, !tbaa !1766
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !819 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !818 ; 4 uses
  %.not3.i = icmp eq ptr %i.ap, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !376
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !376
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.lcssa.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !279
  store i8 %i.ay, ptr %0, align 8, !tbaa !279
  store ptr %0, ptr %i.aw, align 8, !tbaa !376
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1767
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !280 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 192
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !759
  store i32 0, ptr %i.g, align 8, !tbaa !1720
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !1716
  %i.bb = add i64 %i.ba, %i.al                    ; 5 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !1716
  %i.bc = icmp ne i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.bd = icmp ne i64 %i.al, 0
  %or.cond.not.not20.not25.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.bd, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult i64 %i.bb, %i.bf
  %or.cond.not22.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.not.not20.not25.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.bg, i1 false
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = xor i1 %i.bc, true
  %or.cond21.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %or.cond.not22.i.i.i.i.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond21.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !llvm.loop !103

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !1614
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  %i.bj = sub nuw i64 %i.bf, %i.bb
  %spec.select.i1.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 65536)
  store ptr %i.bi, ptr %2, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1208
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEES8_EEvRNS1_24base_implementation_typeERKS11_iRS13_RKS17_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %.noexc unwind label %bb.g, !inline_history !5993

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptrD2Ev.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opISt5arrayINS_12const_bufferELm2EEEENS_6detail8write_opINS0_6streamIRS7_EESB_PKSA_NSD_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSL_11async_writeISH_SB_EEN12async_simple4coro4LazyISP_EERT_T0_EUlOSV_E_SH_EENST_ISV_EESX_RT1_ENKUlSV_E_clINSL_21callback_awaitor_baseISP_NSL_16callback_awaitorISP_EEE15awaitor_handlerEEEDaSV_EUlDpOT_E_EEEclESO_mi(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bb, i32 noundef 0)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptrD2Ev.exit unwind label %bb.g, !inline_history !5993

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.bp

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_8write_opISt5arrayINS_12const_bufferELm2EEEENS4_INSE_6streamIRS9_EESK_PKSJ_SD_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNSR_11async_writeISO_SK_EEN12async_simple4coro4LazyISV_EERT_T0_EUlOS11_E_SO_EENSZ_IS11_EES13_RT1_ENKUlS11_E_clINSR_21callback_awaitor_baseISV_NSR_16callback_awaitorISV_EEE15awaitor_handlerEEEDaS11_EUlDpOT_E_EEEEEESU_mEESaIvEE3ptrD2Ev.exit: ; preds = %.noexc, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseINS_15const_buffers_1EE10do_performEPNS0_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1757
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !376
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !411
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1759
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_send1EiPKvmiRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1758
  %i.k = and i8 %i.j, 16
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !1741
  %.sroa.2.0.copyload.i18 = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !411
  %i.m = icmp ult i64 %i.l, %.sroa.2.0.copyload.i18
  %spec.select = select i1 %i.m, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_send1EiPKvmiRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %3, 16384
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  %i.b = tail call i64 @send(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.a) ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.d = tail call ptr @__errno_location() #55
  %i.e = load i32, ptr %i.d, align 4, !tbaa !280
  %i.f = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 0, ptr %4, align 8, !tbaa !796
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.e, ptr %4, align 8, !tbaa !280
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !759
  %i.j = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i15 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.n = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.o = icmp eq ptr %i.n, @_ZZN4asio15system_categoryEvE8instance
  %i.p = load i32, ptr %4, align 8
  %i.q = icmp eq i32 %i.p, 4
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %.critedge, label %bb.i, !llvm.loop !5995

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.s = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, !prof !281

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i17 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18: ; preds = %bb.i, %bb.j, %bb.k
  %i.w = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.x = icmp eq ptr %i.w, @_ZZN4asio15system_categoryEvE8instance
  %i.y = load i32, ptr %4, align 8
  %i.z = icmp eq i32 %i.y, 11
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %i.ab = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, !prof !281

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.ag = icmp eq ptr %i.af, @_ZZN4asio15system_categoryEvE8instance
  %i.ah = load i32, ptr %4, align 8
  %i.ai = icmp eq i32 %i.ah, 11
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %bb.e
  %.lcssa.sink = phi i64 [ %i.b, %bb.e ], [ 0, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !411
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare i32 @SSL_get_shutdown(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio3ssl6streamIRNS5_19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEEEESt5arrayINS5_12const_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_ENUlSM_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSM_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::ssl::detail::io_op.1694", align 8 ; 23 uses
  %3 = alloca %"class.std::shared_ptr.841", align 8 ; 10 uses
  %4 = alloca %class.anon.1679, align 8           ; 8 uses
  %5 = alloca %class.anon.1680, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !5999, !nonnull !366, !align !367 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1118 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !1118
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !308
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !280
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !1118
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !308
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !6000, !nonnull !366, !align !367
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6001, !nonnull !366, !align !367
  store ptr %i.q, ptr %4, align 8, !tbaa !1189
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1118
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !308
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !280
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11:   ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.y = invoke noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_11async_writeIN4asio3ssl6streamIRNS8_19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEEEESt5arrayINS8_12const_bufferELm2EEEENS_4coro4LazyIS6_EERT_T0_EUlOSO_E_SH_EENSM_ISO_EESQ_RT1_ENUlSO_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSO_EUlNS_10SignalTypeEPNS_6SignalEE_EEEbS13_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %4)
end_hunk_1
begin_hunk_2_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder2INS4_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSD_NS4_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_11async_writeISB_SE_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_SB_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mEEEEvSV_:bb.a
  call void @__clang_call_terminate(ptr %i.aj) #49
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit5:     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEEEEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  tail call void @_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_11async_writeIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1956
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1956
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1957 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !376
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !376
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.q = load i8, ptr %i.p, align 1, !tbaa !279
  store i8 %i.q, ptr %i.d, align 1, !tbaa !279
  store ptr %i.d, ptr %i.o, align 8, !tbaa !376
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #36
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.418", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::const_buffer, 2>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2.1877", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %2, ptr %3, align 8, !tbaa !6289
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1949, !nonnull !366, !align !367
  store ptr %i.d, ptr %4, align 8, !tbaa !1190
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !1710
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1939
  store i32 %i.i, ptr %i.g, align 8, !tbaa !1939
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1432
  store i64 %i.l, ptr %i.j, align 8, !tbaa !1432
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !760
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1952
  store i64 %i.q, ptr %i.o, align 8, !tbaa !1952
  store ptr null, ptr %i.b, align 8, !tbaa !1956
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.u, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !376
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !376
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !279
  store i8 %i.ad, ptr %0, align 8, !tbaa !279
  store ptr %0, ptr %i.ab, align 8, !tbaa !376
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1957
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_11async_writeIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !6288

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.ae

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseISt5arrayINS_12const_bufferELm2EEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.asio::detail::buffer_sequence_adapter", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.05.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !376
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.46.0.copyload.i = load i64, ptr %.sroa.46.0..sroa_idx.i, align 8, !tbaa !411 ; 2 uses
  store ptr %.sroa.05.0.copyload.i, ptr %1, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.46.0.copyload.i, ptr %i.b, align 8, !tbaa !1959
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !376
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !411 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !376
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %i.e, align 8, !tbaa !1959
  %i.f = add i64 %.sroa.4.0.copyload.i, %.sroa.46.0.copyload.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !6291
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1946
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1948
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = call noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRSt10error_codeRm(i32 noundef %i.i, ptr noundef nonnull %1, i64 noundef 2, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i8, ptr %i.o, align 4, !tbaa !1947
  %i.q = and i8 %i.p, 16
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.m, align 8, !tbaa !1741
  %i.s = load i64, ptr %i.g, align 8, !tbaa !6291
  %i.t = icmp ult i64 %i.r, %i.s
  %spec.select = select i1 %i.t, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.msghdr, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %sext.i = shl i64 %2, 32
  %i.b = ashr exact i64 %sext.i, 32
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = or i32 %3, 16384
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !1962
  store i64 %i.b, ptr %i.c, align 8, !tbaa !1963
  %i.e = call i64 @sendmsg(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %i.d) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.g = tail call ptr @__errno_location() #55
  %i.h = load i32, ptr %i.g, align 4, !tbaa !280
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 0, ptr %4, align 8, !tbaa !796
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.h, ptr %4, align 8, !tbaa !280
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !759
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.m = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.q = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.r = icmp eq ptr %i.q, @_ZZN4asio15system_categoryEvE8instance
  %i.s = load i32, ptr %4, align 8
  %i.t = icmp eq i32 %i.s, 4
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %.critedge, label %bb.i, !llvm.loop !6292

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.v = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, !prof !281

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i17 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18: ; preds = %bb.i, %bb.j, %bb.k
  %i.z = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.aa = icmp eq ptr %i.z, @_ZZN4asio15system_categoryEvE8instance
  %i.ab = load i32, ptr %4, align 8
  %i.ac = icmp eq i32 %i.ab, 11
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %i.ae = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, !prof !281

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i20 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21: ; preds = %bb.l, %bb.m, %bb.n
  %i.ai = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.aj = icmp eq ptr %i.ai, @_ZZN4asio15system_categoryEvE8instance
  %i.ak = load i32, ptr %4, align 8
  %i.al = icmp eq i32 %i.ak, 11
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %bb.e
  %.lcssa.sink = phi i64 [ %i.e, %bb.e ], [ 0, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !411
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1488", align 8  ; 7 uses
  %3 = alloca %"class.asio::detail::write_op.1894", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.841", align 8 ; 10 uses
  %5 = alloca %class.anon.1883, align 8           ; 8 uses
  %6 = alloca %class.anon.1884, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !6297, !nonnull !366, !align !367 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1118 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1118
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !308
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !280
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1118
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !308
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !6298, !nonnull !366, !align !367
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6299, !nonnull !366, !align !367
  store ptr %i.q, ptr %5, align 8, !tbaa !1190
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1118
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !308
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !280
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11
end_hunk_2
begin_hunk_3_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev:bb.a
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !376
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !376
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.q = load i8, ptr %i.p, align 1, !tbaa !279
  store i8 %i.q, ptr %i.d, align 1, !tbaa !279
  store ptr %i.d, ptr %i.o, align 8, !tbaa !376
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #36
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.418", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::const_buffer, 3>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2.1938", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %2, ptr %3, align 8, !tbaa !6382
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2000, !nonnull !366, !align !367
  store ptr %i.d, ptr %4, align 8, !tbaa !1190
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !tbaa.struct !1838
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1999
  store i32 %i.i, ptr %i.g, align 8, !tbaa !1999
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1432
  store i64 %i.l, ptr %i.j, align 8, !tbaa !1432
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !760
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2012 ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !2012
  store ptr null, ptr %i.b, align 8, !tbaa !2015
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.u, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !376
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !376
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !279
  store i8 %i.ad, ptr %0, align 8, !tbaa !279
  store ptr %0, ptr %i.ab, align 8, !tbaa !376
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !2016
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8, !tbaa !280
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !759
  invoke void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKS8_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSD_11async_writeIS6_S9_EEN12async_simple4coro4LazyISH_EERT_T0_EUlOSN_E_S6_EENSL_ISN_EESP_RT1_ENKUlSN_E_clINSD_21callback_awaitor_baseISH_NSD_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EclESG_mi(ptr noundef nonnull align 8 dereferenceable(128) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.q, i32 noundef 0)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !6381

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.ae

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseINS0_16prepared_buffersINS_12const_bufferELm3EEEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.asio::detail::buffer_sequence_adapter.1944", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1841 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 2 uses
  %.not7.i.i = icmp eq i64 %i.e, 0
  br i1 %.not7.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i.1
  %i.g = phi i64 [ %i.p, %.lr.ph.i.i.1 ], [ 0, %bb.a ]
  %i.h = phi i64 [ %i.r, %.lr.ph.i.i.1 ], [ 0, %bb.a ] ; 4 uses
  %.08.i.i = phi ptr [ %i.q, %.lr.ph.i.i.1 ], [ %i.a, %bb.a ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %i.h, 64
  br i1 %exitcond.not.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !376
  %.sroa.4.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i, align 8, !tbaa !411 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !376
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.j, align 8, !tbaa !1959
  %i.k = add i64 %.sroa.4.0.copyload.i.i, %i.g    ; 2 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !6385
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.m = or disjoint i64 %i.h, 1                  ; 3 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !6386
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.1 = load ptr, ptr %i.l, align 8, !tbaa !376
  %.sroa.4.0..0.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24
  %.sroa.4.0.copyload.i.i.1 = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.1, align 8, !tbaa !411 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.m ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.1, ptr %i.n, align 8, !tbaa !376
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.4.0.copyload.i.i.1, ptr %i.o, align 8, !tbaa !1959
  %i.p = add i64 %.sroa.4.0.copyload.i.i.1, %i.k  ; 2 uses
  store i64 %i.p, ptr %i.c, align 8, !tbaa !6385
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %i.r = add nuw nsw i64 %i.h, 2                  ; 3 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !6386
  %.not.i.i.1 = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.1, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !6383

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit: ; preds = %.lr.ph.i.i, %bb.b, %.lr.ph.i.i.1, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ 64, %.lr.ph.i.i ], [ %i.m, %bb.b ], [ %i.r, %.lr.ph.i.i.1 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !2007
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2009
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = call noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRSt10error_codeRm(i32 noundef %i.u, ptr noundef nonnull %1, i64 noundef %i.s, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !2008
  %i.ac = and i8 %i.ab, 16
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !1741
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !6385
  %i.af = icmp ult i64 %i.ad, %i.ae
  %spec.select = select i1 %i.af, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit
  %.0 = phi i32 [ 0, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEEC2ERKS4_.exit ], [ %spec.select, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 10 uses
  %3 = alloca %"class.asio::detail::write_op.1956", align 8 ; 15 uses
  %4 = alloca %"class.std::shared_ptr.841", align 8 ; 10 uses
  %5 = alloca %class.anon.1945, align 8           ; 8 uses
  %6 = alloca %class.anon.1946, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !6391, !nonnull !366, !align !367 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1118 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1118
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !308
  %.not.i.i.i = icmp eq ptr %i.e, null
  %.ph.sroa.gep32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !280
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1118
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !308
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !6392, !nonnull !366, !align !367
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6393, !nonnull !366, !align !367
  store ptr %i.q, ptr %5, align 8, !tbaa !1190
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1118
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !308
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !280
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11:   ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.y = invoke noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_11async_writeIN4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEESt5arrayINS8_12const_bufferELm3EEEENS_4coro4LazyIS6_EERT_T0_EUlOSK_E_SD_EENSI_ISK_EESM_RT1_ENUlSK_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSK_EUlNS_10SignalTypeEPNS_6SignalEE_EEEbSZ_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11
  %i.z = xor i1 %i.y, true
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !6394, !nonnull !366
  %i.ac = zext i1 %i.z to i8
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !304
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i12, label %_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !310
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !311
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #36, !inline_history !6387
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !263
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #36, !inline_history !6387
  br label %_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i13 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit, !prof !291

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #36
  br label %_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit

_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !6394, !nonnull !366
  %i.au = load i8, ptr %i.at, align 1, !tbaa !304, !range !414, !noundef !366
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.o, label %bb.s, !prof !291

bb.o:                                             ; preds = %_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !6395, !nonnull !366, !align !367
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %1, ptr %6, align 8, !tbaa !1432
  invoke void @_ZN4asio8dispatchINS_15any_io_executorETkNS_20completion_token_forIFvvEEEZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpES1_EESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSL_E_SD_EENSJ_ISL_EESN_RT1_ENUlSL_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSL_EUlvE_EEDaRKSL_OSN_NS_10constraintIXoosr9execution11is_executorISL_EE5valuesr11is_executorISL_EE5valueEiE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit8

bb.q:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.ai

bb.r:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.ai

bb.s:                                             ; preds = %_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !6396, !nonnull !366, !align !367 ; 5 uses
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !6392, !nonnull !366, !align !367
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1996, !nonnull !366, !align !367 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.be, ptr %3, align 8, !tbaa !1190
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.bb, i64 48, i1 false), !tbaa.struct !1881
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.3.0..0.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..0.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !411
  %.sroa.3.0..0.sroa_idx.i.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.3.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..0.sroa_idx.i.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !411
  %i.bh = add i64 %.sroa.3.0.copyload.i.1.i.i.i.i.i.i.i.i.i, %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0..0.sroa_idx.i.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.3.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..0.sroa_idx.i.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !411
  %i.bi = add i64 %i.bh, %.sroa.3.0.copyload.i.2.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !1840
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %1, ptr %i.bl, align 8, !tbaa !1432
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1120
  store i32 1, ptr %i.bk, align 8, !tbaa !2019
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !6397)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_3
begin_hunk_4_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder2INS4_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSD_NS4_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_10async_readISB_SE_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_SB_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mEEEEvSV_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEEEEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  tail call void @_ZN4asio6detail7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_10async_readIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3187
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !3187
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3188 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !376
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !376
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.q = load i8, ptr %i.p, align 1, !tbaa !279
  store i8 %i.q, ptr %i.d, align 1, !tbaa !279
  store ptr %i.d, ptr %i.o, align 8, !tbaa !376
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #36
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.418", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::read_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::mutable_buffer, 2>, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2.4388", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %2, ptr %3, align 8, !tbaa !9371
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3181, !nonnull !366, !align !367
  store ptr %i.d, ptr %4, align 8, !tbaa !1190
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !1710
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3171
  store i32 %i.i, ptr %i.g, align 8, !tbaa !3171
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1432
  store i64 %i.l, ptr %i.j, align 8, !tbaa !1432
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !760
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !3184
  store i64 %i.q, ptr %i.o, align 8, !tbaa !3184
  store ptr null, ptr %i.b, align 8, !tbaa !3187
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !818  ; 4 uses
  %.not3.i = icmp eq ptr %i.u, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !376
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !376
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !279
  store i8 %i.ad, ptr %0, align 8, !tbaa !279
  store ptr %0, ptr %i.ab, align 8, !tbaa !376
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !3188
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4asio6detail7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_10async_readIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !9370

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.ae

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_recv_op_baseISt5arrayINS_14mutable_bufferELm2EEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.asio::detail::buffer_sequence_adapter.4394", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.05.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !376
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.46.0.copyload.i = load i64, ptr %.sroa.46.0..sroa_idx.i, align 8, !tbaa !411 ; 2 uses
  store ptr %.sroa.05.0.copyload.i, ptr %1, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.46.0.copyload.i, ptr %i.b, align 8, !tbaa !1959
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !376
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !411 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !376
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %i.e, align 8, !tbaa !1959
  %i.f = add i64 %.sroa.4.0.copyload.i, %.sroa.46.0.copyload.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !9373
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3178
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3180
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !3179
  %i.n = and i8 %i.m, 16
  %i.o = icmp ne i8 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = call noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRSt10error_codeRm(i32 noundef %i.i, ptr noundef nonnull %1, i64 noundef 2, i32 noundef %i.k, i1 noundef zeroext %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.l, align 4, !tbaa !3179
  %i.t = and i8 %i.s, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.q, align 8, !tbaa !1741
  %i.v = icmp eq i64 %i.u, 0
  %spec.select = select i1 %i.v, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %struct.msghdr, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  %sext.i = shl i64 %2, 32
  %i.b = ashr exact i64 %sext.i, 32
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !1962
  store i64 %i.b, ptr %i.c, align 8, !tbaa !1963
  %i.d = call i64 @recvmsg(i32 noundef %0, ptr noundef nonnull %7, i32 noundef %3) ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit

bb.b:                                             ; preds = %.critedge
  %i.f = tail call ptr @__errno_location() #55
  %i.g = load i32, ptr %i.f, align 4, !tbaa !280
  %i.h = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %bb.i

_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit: ; preds = %.critedge
  store i32 0, ptr %5, align 8, !tbaa !796
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.l = icmp eq i64 %i.d, 0
  %or.cond = and i1 %4, %i.l
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit
  %i.m = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !281

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #36
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 2, ptr %5, align 8, !tbaa !280
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !759
  br label %bb.s

bb.h:                                             ; preds = %_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit
  store i64 %i.d, ptr %6, align 8, !tbaa !411
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.g, ptr %5, align 8, !tbaa !280
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !759
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.q = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i20 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.u = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.v = icmp eq ptr %i.u, @_ZZN4asio15system_categoryEvE8instance
  %i.w = load i32, ptr %5, align 8
  %i.x = icmp eq i32 %i.w, 4
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %.critedge, label %bb.l, !llvm.loop !9374

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.z = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !281

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i22 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.ad = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.ae = icmp eq ptr %i.ad, @_ZZN4asio15system_categoryEvE8instance
  %i.af = load i32, ptr %5, align 8
  %i.ag = icmp eq i32 %i.af, 11
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.ai = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !281

bb.p:                                             ; preds = %bb.o
  %i.ak = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i25 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.am = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.an = icmp eq ptr %i.am, @_ZZN4asio15system_categoryEvE8instance
  %i.ao = load i32, ptr %5, align 8
  %i.ap = icmp eq i32 %i.ao, 11
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !411
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.4181", align 8  ; 7 uses
  %3 = alloca %"class.asio::detail::read_op.4406", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.841", align 8 ; 10 uses
  %5 = alloca %class.anon.4395, align 8           ; 8 uses
  %6 = alloca %class.anon.4396, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !9379, !nonnull !366, !align !367 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1118 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1118
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !308
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !280
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1118
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !308
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9380, !nonnull !366, !align !367
end_hunk_4
