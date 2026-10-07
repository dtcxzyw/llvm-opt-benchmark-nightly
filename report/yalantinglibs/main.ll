Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/main?download=true
inline.NumInlined: 42225
inline.NumDeleted: 15802
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS7_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSF_15async_handshakeIRSt10unique_ptrINS6_6streamIRSD_EESt14default_deleteISM_EEEEN12async_simple4coro4LazyISH_EEOT_NS6_11stream_base14handshake_typeEEUlSW_E_SM_EENST_ISV_EET0_RT1_ENKUlSV_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSV_EUlDpOT_E_EESH_mEEEEvSW_:bb.a
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit5:     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %i.ai

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEEEEvPv(ptr noundef %0) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !259
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !428
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1664
  tail call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNS9_15async_handshakeIRSt10unique_ptrINS0_6streamIRS7_EESt14default_deleteISG_EEEEN12async_simple4coro4LazyISB_EEOT_NS0_11stream_base14handshake_typeEEUlSQ_E_SG_EENSN_ISP_EET0_RT1_ENKUlSP_E_clINS9_21callback_awaitor_baseISB_NS9_16callback_awaitorISB_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EclESB_mi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i64 noundef %i.c, i32 noundef 0), !inline_history !4959
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1667
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1667
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1668 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !759  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !758  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !329
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.q = load i8, ptr %i.p, align 1, !tbaa !258
  store i8 %i.q, ptr %i.d, align 1, !tbaa !258
  store ptr %i.d, ptr %i.o, align 8, !tbaa !329
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #53
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.242", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::handshake_op, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  store ptr %2, ptr %3, align 8, !tbaa !4961
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !329
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !329
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !258
  store <2 x i32> %i.g, ptr %i.e, align 16, !tbaa !258
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1639
  store i32 %i.j, ptr %i.h, align 8, !tbaa !1639
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !543
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x i64>, ptr %i.n, align 8, !tbaa !258
  store <2 x i64> %i.o, ptr %i.m, align 16, !tbaa !258
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !543
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1664 ; 2 uses
  store i64 %i.t, ptr %i.r, align 16, !tbaa !1664
  store ptr null, ptr %i.b, align 8, !tbaa !1667
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !759  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !758  ; 4 uses
  %.not3.i = icmp eq ptr %i.x, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !329
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !329
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.lcssa.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !258
  store i8 %i.ag, ptr %0, align 8, !tbaa !258
  store ptr %0, ptr %i.ae, align 8, !tbaa !329
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #53
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1668
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.p, align 16, !tbaa !259
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !428
  invoke void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNS9_15async_handshakeIRSt10unique_ptrINS0_6streamIRS7_EESt14default_deleteISG_EEEEN12async_simple4coro4LazyISB_EEOT_NS0_11stream_base14handshake_typeEEUlSQ_E_SG_EENSN_ISP_EET0_RT1_ENKUlSP_E_clINS9_21callback_awaitor_baseISB_NS9_16callback_awaitorISB_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EclESB_mi(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.t, i32 noundef 0)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !4960

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %i.ah

_ZN4asio6detail17executor_function4implINS0_7binder2INS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSD_15async_handshakeIRSt10unique_ptrINS4_6streamIRSB_EESt14default_deleteISK_EEEEN12async_simple4coro4LazyISF_EEOT_NS4_11stream_base14handshake_typeEEUlSU_E_SK_EENSR_IST_EET0_RT1_ENKUlST_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaST_EUlDpOT_E_EESF_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_recv_op_baseINS_17mutable_buffers_1EE10do_performEPNS0_10reactor_opE(ptr noundef %0) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1659
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !329
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !309
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1661
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !1660
  %i.h = and i8 %i.g, 16
  %i.i = icmp ne i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, i1 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %1 = zext i1 %i.l to i32
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.f, align 4, !tbaa !1660
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8, !tbaa !1669
  %i.p = icmp eq i64 %i.o, 0
  %spec.select = select i1 %i.p, i32 2, i32 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  %i.a = tail call i64 @recv(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit

bb.b:                                             ; preds = %.critedge
  %i.c = tail call ptr @__errno_location() #60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !259
  %i.e = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i, !prof !237

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %bb.i

_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit: ; preds = %.critedge
  store i32 0, ptr %5, align 8, !tbaa !438
  %i.i = icmp eq i64 %i.a, 0
  %or.cond = and i1 %4, %i.i
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  %i.j = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !237

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #53
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 2, ptr %5, align 8, !tbaa !259
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !428
  br label %bb.s

bb.h:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  store i64 %i.a, ptr %6, align 8, !tbaa !309
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.d, ptr %5, align 8, !tbaa !259
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !428
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !237

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.r = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.s = icmp eq ptr %i.r, @_ZZN4asio15system_categoryEvE8instance
  %i.t = load i32, ptr %5, align 8
  %i.u = icmp eq i32 %i.t, 4
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge, label %bb.l, !llvm.loop !4962

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.w = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !237

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i22 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.aa = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.ab = icmp eq ptr %i.aa, @_ZZN4asio15system_categoryEvE8instance
  %i.ac = load i32, ptr %5, align 8
  %i.ad = icmp eq i32 %i.ac, 11
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.af = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !237

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.aj = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.ak = icmp eq ptr %i.aj, @_ZZN4asio15system_categoryEvE8instance
  %i.al = load i32, ptr %5, align 8
  %i.am = icmp eq i32 %i.al, 11
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !309
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSK_15async_handshakeIRSt10unique_ptrINSB_6streamIRSI_EESt14default_deleteISR_EEEEN12async_simple4coro4LazyISM_EEOT_NSB_11stream_base14handshake_typeEEUlS11_E_SR_EENSY_IS10_EET0_RT1_ENKUlS10_E_clINSK_21callback_awaitor_baseISM_NSK_16callback_awaitorISM_EEE15awaitor_handlerEEEDaS10_EUlDpOT_E_EESH_EEvRNS9_19implementation_typeERS10_RKS16_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::wait_handler<asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::handshake_op, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  store ptr %2, ptr %4, align 8, !tbaa !1672
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !759  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !758
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 168, i64 noundef 16) ; 15 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1673
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !738
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSB_15async_handshakeIRSt10unique_ptrINS2_6streamIRS9_EESt14default_deleteISI_EEEEN12async_simple4coro4LazyISD_EEOT_NS2_11stream_base14handshake_typeEEUlSS_E_SI_EENSP_ISR_EET0_RT1_ENKUlSR_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EES8_E11do_completeEPvPNS0_19scheduler_operationERKSD_m, ptr %i.i, align 8, !tbaa !739
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !746
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !438
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #60, !inline_history !4963
  store ptr %i.m, ptr %i.l, align 8, !tbaa !618
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !1533
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !329
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !329
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load <2 x i32>, ptr %i.r, align 8, !tbaa !258
  store <2 x i32> %i.s, ptr %i.q, align 8, !tbaa !258
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1639
  store i32 %i.v, ptr %i.t, align 8, !tbaa !1639
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !543
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !258
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !258
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 112
end_hunk_0
begin_hunk_1_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptrD2Ev:bb.a
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !759  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !758  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !329
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.q = load i8, ptr %i.p, align 1, !tbaa !258
  store i8 %i.q, ptr %i.d, align 1, !tbaa !258
  store ptr %i.d, ptr %i.o, align 8, !tbaa !329
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #53
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %3 = alloca %"class.std::allocator.242", align 1 ; 4 uses
  %4 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, asio::mutable_buffer, const asio::mutable_buffer *, asio::detail::transfer_all_t, asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::handshake_op, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::binder2.1489", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  store ptr %3, ptr %4, align 8, !tbaa !4998
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1688, !nonnull !315, !align !602 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !874
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !329
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !329
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load <2 x i32>, ptr %i.l, align 8, !tbaa !258
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !258
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1639
  store i32 %i.p, ptr %i.n, align 8, !tbaa !1639
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !543
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !258
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !258
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !543
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1691 ; 3 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !1691
  store ptr null, ptr %i.b, align 8, !tbaa !1694
  %i.aa = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !759 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !758 ; 4 uses
  %.not3.i = icmp eq ptr %i.ad, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !329
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !329
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.lcssa.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load i8, ptr %i.al, align 8, !tbaa !258
  store i8 %i.am, ptr %0, align 8, !tbaa !258
  store ptr %0, ptr %i.ak, align 8, !tbaa !329
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #53
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1695
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.v, align 8, !tbaa !259 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !428
  store i32 0, ptr %i.g, align 8, !tbaa !1651
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1648
  %i.ap = add i64 %i.ao, %i.z                     ; 5 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !1648
  %i.aq = icmp ne i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ar = icmp ne i64 %i.z, 0
  %or.cond.not.not20.not25.i.i.i.i.i.i.i.i.i.i = or i1 %i.ar, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp ult i64 %i.ap, %i.at
  %or.cond.not22.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.not.not20.not25.i.i.i.i.i.i.i.i.i.i, i1 %i.au, i1 false
  %.not.i.i.i.i.i.i.i.i.i.i = xor i1 %i.aq, true
  %or.cond21.i.i.i.i.i.i.i.i.i.i = and i1 %or.cond.not22.i.i.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond21.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !llvm.loop !95

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !1642
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap
  %i.ax = sub nuw i64 %i.at, %i.ap
  %spec.select.i1.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 65536)
  store ptr %i.aw, ptr %2, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i1.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !628
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEES8_EEvRNS1_24base_implementation_typeERKSY_iRS14_RKS15_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.bc)
          to label %.noexc unwind label %bb.g, !inline_history !4997

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptrD2Ev.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNS9_15async_handshakeIRSt10unique_ptrINS0_6streamIRS7_EESt14default_deleteISG_EEEEN12async_simple4coro4LazyISB_EEOT_NS0_11stream_base14handshake_typeEEUlSQ_E_SG_EENSN_ISP_EET0_RT1_ENKUlSP_E_clINS9_21callback_awaitor_baseISB_NS9_16callback_awaitorISB_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EclESB_mi(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.ap, i32 noundef 0)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptrD2Ev.exit unwind label %bb.g, !inline_history !4997

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %i.bd

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tENS_3ssl6detail5io_opIS9_NSF_12handshake_opEZZN7coro_io8async_ioISt10error_codeZNSI_15async_handshakeIRSt10unique_ptrINSE_6streamIRS9_EESt14default_deleteISP_EEEEN12async_simple4coro4LazyISK_EEOT_NSE_11stream_base14handshake_typeEEUlSZ_E_SP_EENSW_ISY_EET0_RT1_ENKUlSY_E_clINSI_21callback_awaitor_baseISK_NSI_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSY_EUlDpOT_E_EEEESK_mEESaIvEE3ptrD2Ev.exit: ; preds = %.noexc, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseINS_15const_buffers_1EE10do_performEPNS0_10reactor_opE(ptr noundef %0) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1685
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !329
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !309
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1687
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_send1EiPKvmiRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %1 = zext i1 %i.h to i32
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1686
  %i.k = and i8 %i.j, 16
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !1669
  %.sroa.2.0.copyload.i18 = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !309
  %i.m = icmp ult i64 %i.l, %.sroa.2.0.copyload.i18
  %spec.select = select i1 %i.m, i32 2, i32 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_send1EiPKvmiRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %3, 16384
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  %i.b = tail call i64 @send(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.a) ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.d = tail call ptr @__errno_location() #60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !259
  %i.f = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f, !prof !237

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 0, ptr %4, align 8, !tbaa !438
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.e, ptr %4, align 8, !tbaa !259
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !428
  %i.j = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !237

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i15 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.n = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.o = icmp eq ptr %i.n, @_ZZN4asio15system_categoryEvE8instance
  %i.p = load i32, ptr %4, align 8
  %i.q = icmp eq i32 %i.p, 4
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %.critedge, label %bb.i, !llvm.loop !4999

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.s = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, !prof !237

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i17 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18: ; preds = %bb.i, %bb.j, %bb.k
  %i.w = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.x = icmp eq ptr %i.w, @_ZZN4asio15system_categoryEvE8instance
  %i.y = load i32, ptr %4, align 8
  %i.z = icmp eq i32 %i.y, 11
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %i.ab = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, !prof !237

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.ag = icmp eq ptr %i.af, @_ZZN4asio15system_categoryEvE8instance
  %i.ah = load i32, ptr %4, align 8
  %i.ai = icmp eq i32 %i.ah, 11
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %bb.e
  %.lcssa.sink = phi i64 [ %i.b, %bb.e ], [ 0, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !309
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #14

declare i32 @SSL_get_shutdown(ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt10error_codeZNS_15async_handshakeIRSt10unique_ptrIN4asio3ssl6streamIRNS4_19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEEEESt14default_deleteISD_EEEEN12async_simple4coro4LazyIS1_EEOT_NS5_11stream_base14handshake_typeEEUlSN_E_SD_EENSK_ISM_EET0_RT1_ENUlSM_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaSM_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::ssl::detail::io_op.1506", align 8 ; 13 uses
  %3 = alloca %"class.std::shared_ptr.620", align 8 ; 10 uses
  %4 = alloca %class.anon.1495, align 8           ; 8 uses
  %5 = alloca %class.anon.1496, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.a = load ptr, ptr %0, align 8, !tbaa !5002, !nonnull !315, !align !602 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1011 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !1011
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !304
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !258
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !259
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !259
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !1011
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !304
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5003, !nonnull !315, !align !602
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5004, !nonnull !315, !align !602
  store ptr %i.q, ptr %4, align 8, !tbaa !950
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1011
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !304
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !258
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !259
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !259
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11:   ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.y = invoke noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZZN7coro_io8async_ioISt10error_codeZNS2_15async_handshakeIRSt10unique_ptrIN4asio3ssl6streamIRNS7_19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEEEESt14default_deleteISG_EEEENS_4coro4LazyIS4_EEOT_NS8_11stream_base14handshake_typeEEUlSP_E_SG_EENSM_ISO_EET0_RT1_ENUlSO_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaSO_EUlNS_10SignalTypeEPNS_6SignalEE_EEEbS14_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %4)
end_hunk_1
begin_hunk_2_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptrD2Ev:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.242", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, std::vector<asio::const_buffer>, __gnu_cxx::__normal_iterator<const asio::const_buffer *, std::vector<asio::const_buffer>>, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2.1898", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  store ptr %2, ptr %3, align 8, !tbaa !5738
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1106
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !329
  store <2 x ptr> %i.g, ptr %4, align 16, !tbaa !329
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1948
  store <2 x ptr> %i.k, ptr %i.h, align 16, !tbaa !1948
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2052
  store i32 %i.p, ptr %i.n, align 16, !tbaa !2052
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1386
  store i64 %i.s, ptr %i.q, align 8, !tbaa !1386
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !543
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !2064 ; 2 uses
  store i64 %i.x, ptr %i.v, align 16, !tbaa !2064
  store ptr null, ptr %i.b, align 8, !tbaa !2067
  %i.y = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !759  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !758 ; 4 uses
  %.not3.i = icmp eq ptr %i.ab, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !329
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !329
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.lcssa.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !258
  store i8 %i.ak, ptr %0, align 8, !tbaa !258
  store ptr %0, ptr %i.ai, align 8, !tbaa !329
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #53
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.b, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !2068
  br i1 %1, label %bb.c, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit

bb.c:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptr5resetEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.t, align 16, !tbaa !259
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !428
  invoke void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeIS6_SA_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_S6_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.x, i32 noundef 0)
          to label %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit_crit_edge unwind label %bb.d, !inline_history !5737

._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1106
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit

bb.d:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !1106 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS9_EEN9__gnu_cxx17__normal_iteratorIPKS9_SB_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_11async_writeIS7_SB_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_S7_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !1105
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #55
  br label %_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS9_EEN9__gnu_cxx17__normal_iteratorIPKS9_SB_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_11async_writeIS7_SB_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_S7_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mED2Ev.exit

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit_crit_edge, %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptr5resetEv.exit
  %i.ar = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit_crit_edge ], [ %i.f, %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptr5resetEv.exit ] ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !1105
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #55
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptrD2Ev.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptrD2Ev.exit: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2INS2_8write_opINS1_19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt6vectorINS1_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS2_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEES1E_EEvSV_RSW_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS9_EEN9__gnu_cxx17__normal_iteratorIPKS9_SB_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_11async_writeIS7_SB_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_S7_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mED2Ev.exit: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISB_EEN9__gnu_cxx17__normal_iteratorIPKSB_SD_EENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_11async_writeIS9_SD_EEN12async_simple4coro4LazyISO_EERT_T0_EUlOSU_E_S9_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EESN_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseINS0_16prepared_buffersINS_12const_bufferELm64EEEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.asio::detail::buffer_sequence_adapter", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1944 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 2 uses
  %.not7.i.i = icmp eq i64 %i.e, 0
  br i1 %.not7.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i.1
  %i.g = phi i64 [ %i.p, %.lr.ph.i.i.1 ], [ 0, %bb.a ]
  %i.h = phi i64 [ %i.r, %.lr.ph.i.i.1 ], [ 0, %bb.a ] ; 4 uses
  %.08.i.i = phi ptr [ %i.q, %.lr.ph.i.i.1 ], [ %i.a, %bb.a ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %i.h, 64
  br i1 %exitcond.not.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !329
  %.sroa.4.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i, align 8, !tbaa !309 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !329
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.j, align 8, !tbaa !5741
  %i.k = add i64 %.sroa.4.0.copyload.i.i, %i.g    ; 2 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !5743
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.m = or disjoint i64 %i.h, 1                  ; 3 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !5744
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.1 = load ptr, ptr %i.l, align 8, !tbaa !329
  %.sroa.4.0..0.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24
  %.sroa.4.0.copyload.i.i.1 = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.1, align 8, !tbaa !309 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.m ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.1, ptr %i.n, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.4.0.copyload.i.i.1, ptr %i.o, align 8, !tbaa !5741
  %i.p = add i64 %.sroa.4.0.copyload.i.i.1, %i.k  ; 2 uses
  store i64 %i.p, ptr %i.c, align 8, !tbaa !5743
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %i.r = add nuw nsw i64 %i.h, 2                  ; 3 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !5744
  %.not.i.i.1 = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.1, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !5739

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit: ; preds = %.lr.ph.i.i, %bb.b, %.lr.ph.i.i.1, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ 64, %.lr.ph.i.i ], [ %i.m, %bb.b ], [ %i.r, %.lr.ph.i.i.1 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !2059
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2061
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = call noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRSt10error_codeRm(i32 noundef %i.u, ptr noundef nonnull %1, i64 noundef %i.s, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.y) ; 2 uses
  %2 = zext i1 %i.z to i32
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !2060
  %i.ac = and i8 %i.ab, 16
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !1669
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !5743
  %i.af = icmp ult i64 %i.ad, %i.ae
  %spec.select = select i1 %i.af, i32 2, i32 %2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit
  %.0 = phi i32 [ 0, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm64EEEEC2ERKS4_.exit ], [ %spec.select, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !5748
  store i64 %i.b, ptr %i.c, align 8, !tbaa !5749
  %i.e = call i64 @sendmsg(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %i.d) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.g = tail call ptr @__errno_location() #60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !259
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f, !prof !237

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 0, ptr %4, align 8, !tbaa !438
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.h, ptr %4, align 8, !tbaa !259
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !428
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  %i.m = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !237

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.q = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.r = icmp eq ptr %i.q, @_ZZN4asio15system_categoryEvE8instance
  %i.s = load i32, ptr %4, align 8
  %i.t = icmp eq i32 %i.s, 4
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %.critedge, label %bb.i, !llvm.loop !5745

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.v = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, !prof !237

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i17 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18: ; preds = %bb.i, %bb.j, %bb.k
  %i.z = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.aa = icmp eq ptr %i.z, @_ZZN4asio15system_categoryEvE8instance
  %i.ab = load i32, ptr %4, align 8
  %i.ac = icmp eq i32 %i.ab, 11
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %i.ae = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, !prof !237

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  %.not.i.i.i.i20 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #53
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21: ; preds = %bb.l, %bb.m, %bb.n
  %i.ai = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !618
  %i.aj = icmp eq ptr %i.ai, @_ZZN4asio15system_categoryEvE8instance
  %i.ak = load i32, ptr %4, align 8
  %i.al = icmp eq i32 %i.ak, 11
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %bb.e
  %.lcssa.sink = phi i64 [ %i.e, %bb.e ], [ 0, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !309
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt6vectorINS5_12const_bufferESaISC_EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSJ_E_SA_EENSH_ISJ_EESL_RT1_ENUlSJ_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSJ_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.1773", align 8 ; 4 uses
  %3 = alloca %"class.asio::detail::transfer_all_t", align 1 ; 3 uses
  %4 = alloca %"class.std::shared_ptr.620", align 8 ; 10 uses
  %5 = alloca %class.anon.1904, align 8           ; 8 uses
  %6 = alloca %class.anon.1905, align 8           ; 5 uses
  %7 = alloca %class.anon.1906, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.a = load ptr, ptr %0, align 8, !tbaa !5752, !nonnull !315, !align !602 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1011 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1011
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !304
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !258
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !259
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !259
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1011
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !304
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5753, !nonnull !315, !align !602
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5754, !nonnull !315, !align !602
  store ptr %i.q, ptr %5, align 8, !tbaa !874
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1011
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !304
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !258
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !259
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !259
end_hunk_2
