Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client?download=true
inline.NumInlined: 70008
inline.NumDeleted: 19195
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS9_3tcpEEESaISC_EEEENS1_4coro4LazyIS5_EERNS8_19basic_stream_socketISB_NS8_15any_io_executorEEERKT_EUlOSM_E_SK_EENSG_ISM_EET0_RT1_EUlvE_SJ_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSM_ENKUlvE_clEv:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #44
  br label %_ZN12async_simple3TryIvED2Ev.exit

_ZN12async_simple3TryIvED2Ev.exit:                ; preds = %_ZNK7coro_io21callback_awaitor_baseIN12async_simple3TryIvEENS_16callback_awaitorIS3_EEE15awaitor_handler21set_value_then_resumeIJS3_EEEvDpOT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  call void @__cxa_end_catch()
  br label %_ZNK7coro_io21callback_awaitor_baseIN12async_simple3TryIvEENS_16callback_awaitorIS3_EEE15awaitor_handler6resumeEv.exit

_ZNK7coro_io21callback_awaitor_baseIN12async_simple3TryIvEENS_16callback_awaitorIS3_EEE15awaitor_handler6resumeEv.exit: ; preds = %bb.a, %_ZN12async_simple3TryIvED2Ev.exit
  ret void

bb.g:                                             ; preds = %_ZNK7coro_io21callback_awaitor_baseIN12async_simple3TryIvEENS_16callback_awaitorIS3_EEE15awaitor_handler9set_valueIS3_EEvOT_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %1, align 8, !tbaa !362
  %.not.i.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i.i6, label %_ZN12async_simple3TryIvED2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #44
  br label %_ZN12async_simple3TryIvED2Ev.exit7

_ZN12async_simple3TryIvED2Ev.exit7:               ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN12async_simple3TryIvED2Ev.exit7, %bb.b
  %.merged = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.s, %_ZN12async_simple3TryIvED2Ev.exit7 ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %_ZN12async_simple3TryIvED2Ev.exit7
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #50
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1743
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1743
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1744 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  store i8 %i.q, ptr %i.d, align 1, !tbaa !231
  store ptr %i.d, ptr %i.o, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:169:19)>, std::allocator<void>>::ptr.1807", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder0.1805", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !5563
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !1740
  store ptr null, ptr %i.b, align 8, !tbaa !1743
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.g, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !264
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !231
  store i8 %i.p, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.n, align 8, !tbaa !264
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #44
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1744
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS9_3tcpEEESaISC_EEEENS1_4coro4LazyIS5_EERNS8_19basic_stream_socketISB_NS8_15any_io_executorEEERKT_EUlOSM_E_SK_EENSG_ISM_EET0_RT1_EUlvE_SJ_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSM_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.q

_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINSD_3tcpEEESaISG_EEEENS6_4coro4LazyISA_EERNS_19basic_stream_socketISF_NS_15any_io_executorEEERKT_EUlOSQ_E_SO_EENSK_ISQ_EET0_RT1_EUlvE_SN_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail28initiate_async_range_connectINS_2ip3tcpENS_15any_io_executorEEclIZZN7coro_io8async_ioISt10error_codeZNS7_13async_connectISt6vectorINS2_14basic_endpointIS3_EESaISD_EEEEN12async_simple4coro4LazyIS9_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINS7_21callback_awaitor_baseIS9_NS7_16callback_awaitorIS9_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_SF_NS0_25default_connect_conditionEEEvSQ_RKST_RKSU_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::detail::range_connect_op", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = load ptr, ptr %0, align 8, !tbaa !1746, !nonnull !327, !align !478
  store ptr %i.a, ptr %4, align 8, !tbaa !1747
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1748 ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !329    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !330
  br label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i.i, label %bb.c, !prof !243

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #52 ; 5 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !329
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1748
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.d
  br i1 %i.s, label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.thread
  %i.t = phi ptr [ %i.k, %.thread ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.u = phi ptr [ %i.i, %.thread ], [ %i.n, %.lr.ph.i.i.i.i.i.i ]
  %i.v = phi ptr [ null, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1748
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !1751
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.x, align 8, !tbaa !1752
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load i64, ptr %1, align 8, !tbaa !1237
  store i64 %i.z, ptr %i.y, align 8, !tbaa !1237
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #56
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 0, ptr nonnull %i.aa, i32 noundef 1, ptr %i.v, ptr %.0.lcssa.i.i.i.i.i.i)
          to label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit unwind label %bb.e, !inline_history !5564

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit: ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !330
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #51
  br label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit: ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret void

bb.e:                                             ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i5, label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !330
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #51
  br label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit6

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit6: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 %1, ptr %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit:
  %6 = alloca %"class.asio::detail::initiate_post_with_executor.1128", align 8 ; 10 uses
  %7 = alloca %"class.std::error_code", align 8   ; 6 uses
  %8 = alloca %"class.asio::basic_socket<asio::ip::tcp>::initiate_async_connect", align 8 ; 4 uses
  %9 = alloca %"class.std::error_code", align 8   ; 5 uses
  %10 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  %11 = alloca %"class.asio::detail::binder1.1820", align 8 ; 15 uses
  store i32 %1, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1751 ; 2 uses
  %i.d = getelementptr inbounds [28 x i8], ptr %4, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %3, ptr %i.e, align 8, !tbaa !1752
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %bb.a, label %bb.v

bb.a:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %bb.ab
  %.sroa.027.0 = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ds, %bb.ab ] ; 5 uses
  %i.f = ptrtoint ptr %.sroa.027.0 to i64
  %i.g = ptrtoint ptr %4 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 28                  ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !1751
  %i.j = icmp eq ptr %.sroa.027.0, %5
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !1753, !nonnull !327, !align !478 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !878
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1753, !nonnull !327, !align !478 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  store i32 0, ptr %7, align 8, !tbaa !565
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #56, !inline_history !5565
  store ptr %i.r, ptr %i.q, align 8, !tbaa !566
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !879
  %.not.i = icmp eq i32 %i.t, -1
  br i1 %.not.i, label %bb.c, label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr %.sroa.027.0, align 4, !tbaa !231
  %i.v = icmp eq i16 %i.u, 2
  %spec.select.i.i = select i1 %i.v, i32 2, i32 10 ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !878
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base7do_openERNS1_24base_implementation_typeEiiiRSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.s, i32 noundef %spec.select.i.i, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !5565
  %i.z = extractvalue { i32, ptr } %i.y, 0
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %spec.select.i.i, ptr %i.aa, align 8, !tbaa !232
  br label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit

_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  store ptr %i.p, ptr %8, align 8, !tbaa !1703
  call void @_ZNK4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE22initiate_async_connectclINS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISB_EENS7_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EEEEvST_RKSB_RKSH_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.027.0, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !5566
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !233

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  store i32 3, ptr %9, align 8, !tbaa !232
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %i.a, align 8, !tbaa !530
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.af = load ptr, ptr %0, align 8, !tbaa !1753, !nonnull !327, !align !478 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5573)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !624, !noalias !5573 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !624, !alias.scope !5573
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !623, !noalias !5573
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !623, !alias.scope !5573
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !646, !noalias !5573
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %i.ag)
          to label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit: ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !628, !noalias !5573
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !628, !alias.scope !5573
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !5574)
  %i.au = load ptr, ptr %0, align 8, !tbaa !1753, !noalias !5574, !nonnull !327, !align !478
  store ptr %i.au, ptr %11, align 8, !tbaa !1747, !alias.scope !5574
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1748, !noalias !5574 ; 3 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !329, !noalias !5574 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !5574
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr null, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 0, ptr %i.av, align 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !330, !alias.scope !5574
  br label %.loopexit

bb.j:                                             ; preds = %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit
  %i.bf = icmp ugt i64 %i.bc, 9223372036854775800
  br i1 %i.bf, label %.noexc.i.i.i.i.i, label %bb.k, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #52
          to label %.noexc10 unwind label %bb.s   ; 3 uses

.noexc10:                                         ; preds = %bb.k
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !329, !alias.scope !5574
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !330, !alias.scope !5574
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc10
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bg, %.noexc10 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.az, %.noexc10 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656, !noalias !5574
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.ay
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !1748, !alias.scope !5574
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !1751, !noalias !5574
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !1751, !alias.scope !5574
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !1752, !noalias !5574
  store i32 %i.bq, ptr %i.bp, align 8, !tbaa !1752, !alias.scope !5574
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1237, !noalias !5574
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !1237, !alias.scope !5574
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !624 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !624
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.by = load ptr, ptr %i.ak, align 8, !tbaa !623
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !623
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !646
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i unwind label %bb.l, !inline_history !112

bb.l:                                             ; preds = %.loopexit
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #50, !inline_history !112
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i: ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ce = load ptr, ptr %i.ar, align 8, !tbaa !628
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !628
  invoke void @_ZNK4asio6detail27initiate_post_with_executorINS_15any_io_executorEEclINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS8_S2_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEvST_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_SQ_E4typeEEE5valueEvE4typeEPNS1C_IXntsr6detail27is_work_dispatcher_requiredINSt5decayISQ_E4typeES2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef null, ptr noundef null)
          to label %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i unwind label %bb.n, !inline_history !113

_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i: ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !624
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !631
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.p unwind label %bb.m, !inline_history !112

bb.m:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #50, !inline_history !112
  unreachable

bb.n:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !624
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !631
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i unwind label %bb.o, !inline_history !112

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #50, !inline_history !112
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.co = load ptr, ptr %i.av, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i11, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12, label %bb.t

bb.p:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !330
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.cv = load ptr, ptr %i.ah, align 8, !tbaa !624
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !631
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %bb.ac

bb.s:                                             ; preds = %bb.k, %.noexc.i.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12

bb.t:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !330
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.co to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.de) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12: ; preds = %bb.t, %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.s ], [ %i.cj, %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i ], [ %i.cj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.df = load ptr, ptr %i.ah, align 8, !tbaa !624
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !631
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13 unwind label %bb.u

bb.u:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dj = phi i64 [ %i.i, %bb.e ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.027.1 = phi ptr [ %.sroa.027.0, %bb.e ], [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.dk = icmp eq ptr %.sroa.027.1, %5
  br i1 %i.dk, label %.thread41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1753, !nonnull !327, !align !478
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !879
  %.not47 = icmp eq i32 %i.dn, -1
  br i1 %.not47, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.do = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.y, label %.thread41, !prof !233

bb.y:                                             ; preds = %bb.x
  %i.dq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i, label %.thread41, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %.thread41

bb.aa:                                            ; preds = %bb.w
  %.not48 = icmp eq i32 %1, 0
  br i1 %.not48, label %.thread41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 28
  %i.dt = add i64 %i.dj, 1
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !1751
  br label %bb.a, !llvm.loop !5571

.thread41:                                        ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.v
  %.sroa.21.0.copyload.i = phi ptr [ %2, %bb.v ], [ %2, %bb.aa ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.z ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.y ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.x ]
  %i.du = phi i32 [ %1, %bb.v ], [ 0, %bb.aa ], [ 125, %bb.z ], [ 125, %bb.y ], [ 125, %bb.x ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1240 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.du, ptr %i.dx, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %.sroa.21.0.copyload.i, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !1087 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr nonnull %i.dy), !inline_history !5572
  br label %bb.ac

bb.ac:                                            ; preds = %.thread41, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit, %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE22initiate_async_connectclINS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISB_EENS7_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EEEEvST_RKSB_RKSH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::detail::initiate_post_with_executor.1128", align 8 ; 10 uses
  %5 = alloca %"class.asio::detail::binder1.1820", align 8 ; 15 uses
  %i.a = load i32, ptr %3, align 8, !tbaa !565
  %.not = icmp eq i32 %i.a, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !1703   ; 7 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5577)
  %i.d = load ptr, ptr %1, align 8, !tbaa !1753, !noalias !5577, !nonnull !327, !align !478
  store ptr %i.d, ptr %5, align 8, !tbaa !1747, !alias.scope !5577
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748, !noalias !5577 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !329, !noalias !5577 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !5577
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.e, align 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !330, !alias.scope !5577
  br label %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.o, label %.noexc.i.i.i.i.i, label %bb.d, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53, !noalias !5577
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #52, !noalias !5577 ; 3 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !329, !alias.scope !5577
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !330, !alias.scope !5577
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656, !noalias !5577
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.h
  br i1 %i.u, label %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1748, !alias.scope !5577
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1751, !noalias !5577
  store i64 %i.y, ptr %i.w, align 8, !tbaa !1751, !alias.scope !5577
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1752, !noalias !5577
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !1752, !alias.scope !5577
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1237, !noalias !5577
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1237, !alias.scope !5577
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !624 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !624
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !623
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !623
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !646
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i unwind label %bb.e, !inline_history !112

bb.e:                                             ; preds = %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #50, !inline_history !112
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i: ; preds = %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !628
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !628
  invoke void @_ZNK4asio6detail27initiate_post_with_executorINS_15any_io_executorEEclINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS8_S2_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEvST_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_SQ_E4typeEEE5valueEvE4typeEPNS1C_IXntsr6detail27is_work_dispatcher_requiredINSt5decayISQ_E4typeES2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef null, ptr noundef null)
          to label %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i unwind label %bb.g, !inline_history !113

_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i: ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !624
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !631
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.i unwind label %bb.f, !inline_history !112

bb.f:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #50, !inline_history !112
  unreachable

bb.g:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !624
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !631
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i unwind label %bb.h, !inline_history !112

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #50, !inline_history !112
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i7, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit8, label %bb.k

bb.i:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !330
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.m

bb.k:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !330
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bn) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit8

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit8: ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %i.ax

bb.l:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !878
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZN4asio6detail23reactive_socket_serviceINS_2ip3tcpEE13async_connectINS0_16range_connect_opIS3_NS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS3_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EES7_EEvRNS4_19implementation_typeERKSA_RSP_RKSV_(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 8 dereferenceable(20) %i.bp, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.bq)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail23reactive_socket_serviceINS_2ip3tcpEE13async_connectINS0_16range_connect_opIS3_NS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS3_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EES7_EEvRNS4_19implementation_typeERKSA_RSP_RKSV_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.asio::detail::reactive_socket_connect_op<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  store ptr %3, ptr %5, align 8, !tbaa !1757
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 184, i64 noundef 16) ; 18 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1758
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !1759
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %1, align 8, !tbaa !879
  store ptr null, ptr %i.g, align 8, !tbaa !562
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E11do_completeEPvPNS0_19scheduler_operationERKSE_m, ptr %i.l, align 8, !tbaa !563
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !574
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !531
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr @_ZN4asio6detail31reactive_socket_connect_op_base10do_performEPNS0_10reactor_opE, ptr %i.p, align 8, !tbaa !1440
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.k, ptr %i.q, align 8, !tbaa !1709
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.s = load ptr, ptr %3, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.s, ptr %i.r, align 8, !tbaa !1747
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1748 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !329  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.d, !inline_history !5578

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #52
          to label %.noexc6.i unwind label %bb.d, !inline_history !5578

.noexc6.i:                                        ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit
  %i.ad = phi ptr [ null, %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit ], [ %i.ac, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !329
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1748
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !330
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !1760 ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !1760 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc6.i, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %.noexc6.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ah, %.noexc6.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.ai
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc6.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc6.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !1748
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1751
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !1751
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1752
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !1752
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1237
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1237
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %4) #44, !inline_history !5578
  store ptr %i.g, ptr %i.h, align 8, !tbaa !1759
  %i.ax = load i16, ptr %2, align 4, !tbaa !231
  %i.ay = icmp eq i16 %i.ax, 2
  %..i.i = select i1 %i.ay, i64 16, i64 28
  invoke void @_ZN4asio6detail28reactive_socket_service_base16start_connect_opERNS1_24base_implementation_typeEPNS0_10reactor_opEbPKvm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.g, i1 noundef zeroext false, ptr noundef nonnull %2, i64 noundef %..i.i)
          to label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit unwind label %bb.d

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void

bb.d:                                             ; preds = %.loopexit, %.noexc.i.i.i.i, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1759 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !624
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !631
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #50
  unreachable

_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !330
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #51
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i: ; preds = %bb.d, %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !1759
  br label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1758 ; 5 uses
  %.not1.i = icmp eq ptr %i.q, null
  br i1 %.not1.i, label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !587  ; 4 uses
  %.not4.i = icmp eq ptr %i.u, null
  br i1 %.not4.i, label %.thread.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %.preheader.1.i.i.i.i.i.i.i.i

.preheader.1.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.thread.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.i.i.i ], [ 1, %.preheader.1.i.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !231
  store i8 %i.ac, ptr %i.q, align 1, !tbaa !231
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !264
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.q) #44
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit: ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E11do_completeEPvPNS0_19scheduler_operationERKSE_m(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::reactive_socket_connect_op<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.asio::detail::handler_work.1823", align 8 ; 11 uses
  %6 = alloca %"class.asio::detail::binder1.1820", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !1757
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !1758
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !1759
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !624  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !624
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !623
  store ptr %i.j, ptr %i.h, align 8, !tbaa !623
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.f, align 8, !tbaa !624
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.i, align 8, !tbaa !623
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !761
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #50
  unreachable

_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr null, ptr %i.o, align 8, !tbaa !625
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !628
  store ptr %i.r, ptr %i.p, align 8, !tbaa !628
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.q, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.t, ptr %6, align 8, !tbaa !1747
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1748 ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !329  ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i.i, label %.noexc13.thread, label %bb.c

.noexc13.thread:                                  ; preds = %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr null, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !330
  br label %.loopexit

bb.c:                                             ; preds = %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit
  %i.af = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.af, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #52
          to label %.noexc13 unwind label %bb.k   ; 4 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !329
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1748
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ag, %.noexc13 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.y, %.noexc13 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.x
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13.thread
  %i.an = phi ptr [ %i.ae, %.noexc13.thread ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ %i.ac, %.noexc13.thread ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc13.thread ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !1748
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1751
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !1751
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1752
  store i32 %i.au, ptr %i.as, align 8, !tbaa !1752
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1237
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !1237
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !531
  store ptr %6, ptr %4, align 8, !tbaa !1757
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !624
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !631
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #50
  unreachable

_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i: ; preds = %.loopexit
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !330
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #51
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  store ptr null, ptr %i.c, align 8, !tbaa !1759
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !587 ; 4 uses
  %.not4.i = icmp eq ptr %i.bm, null
  br i1 %.not4.i, label %.thread.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !264
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.g, label %.preheader.1.i.i.i.i.i.i.i.i

.preheader.1.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !264
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.g, label %.thread.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.i.i.i ], [ 1, %.preheader.1.i.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.lcssa.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !231
  store i8 %i.bu, ptr %1, align 8, !tbaa !231
  store ptr %1, ptr %i.bs, align 8, !tbaa !264
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i, %bb.f
  call void @free(ptr noundef nonnull %1) #44
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit: ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.b, align 8, !tbaa !1758
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !625
  %.not.i15 = icmp eq ptr %i.bw, null
  br i1 %.not.i15, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.sroa.21.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !530
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !1760
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !1760
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i, i32 noundef 0, ptr %i.bx, ptr %i.by)
          to label %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit unwind label %bb.l, !inline_history !5579

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvE8dispatchINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS9_14basic_endpointISA_EESaISD_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketISA_S2_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENKUlSS_E_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EES1C_EEvRSS_RSY_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit unwind label %bb.l, !inline_history !5579

_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit: ; preds = %bb.i, %bb.j
  fence release
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  fence release
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i18, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19, label %bb.p

bb.m:                                             ; preds = %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit, %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit
  %i.cc = load ptr, ptr %i.u, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !330
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !624
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !631
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #50
  unreachable

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret void

bb.p:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !330
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cb to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.co) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19: ; preds = %bb.p, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.ca, %bb.l ], [ %i.ca, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !624
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !631
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit20 unwind label %bb.q

bb.q:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #50
  unreachable

_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit20: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvE8dispatchINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS9_14basic_endpointISA_EESaISD_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketISA_S2_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENKUlSS_E_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EES1C_EEvRSS_RSY_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.asio::execution::prefer_only", align 1 ; 3 uses
  %4 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %5 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5588)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !5587
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628, !noalias !5589
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !762, !noalias !5589
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !624, !noalias !5589
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !718, !noalias !5589
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0), !noalias !5589, !inline_history !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44, !noalias !5589
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %4, ptr noundef %i.i, ptr noundef nonnull %3), !noalias !5590, !inline_history !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44, !noalias !5589
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5590 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !624, !alias.scope !5590
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !623, !noalias !5590
  store ptr %i.o, ptr %i.m, align 8, !tbaa !623, !alias.scope !5590
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.k, align 8, !tbaa !624, !noalias !5590
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.n, align 8, !tbaa !623, !noalias !5590
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !761, !noalias !5590
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #50
  unreachable

_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !625, !noalias !5590
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !628, !noalias !5590
  store ptr %i.w, ptr %i.u, align 8, !tbaa !628, !alias.scope !5590
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.v, align 8, !tbaa !628, !noalias !5590
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5590
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !631
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #50
  unreachable

_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit: ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !5587
  invoke void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS7_14basic_endpointIS8_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS_19basic_stream_socketIS8_S9_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEvSU_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit unwind label %bb.e, !inline_history !5586

_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit: ; preds = %_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !631
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void

bb.e:                                             ; preds = %_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !631
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit3: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS7_14basic_endpointIS8_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS_19basic_stream_socketIS8_S9_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEvSU_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::executor_function", align 8 ; 7 uses
  %3 = alloca %"class.asio::detail::binder1.1820", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !764  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4asio6detail22executor_function_view8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EEEEvPv, ptr nonnull %1)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.g = load ptr, ptr %1, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.g, ptr %3, align 8, !tbaa !1747
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1748 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !330
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i, label %bb.e, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #52 ; 4 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !329
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1748
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.k
  br i1 %i.z, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.thread
  %i.aa = phi ptr [ %i.r, %.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.p, %.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !1748
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1751
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1751
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1752
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !1752
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1237
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1237
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_functionC2INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEESP_RKSV_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !727
  invoke void %i.ao(ptr noundef nonnull %i.an, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.p

bb.k:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit7

bb.l:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i6 = icmp eq ptr %i.ay, null
  br i1 %.not.i6, label %_ZN4asio6detail17executor_functionD2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !727
  invoke void %i.az(ptr noundef nonnull %i.ay, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit7 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit7:     ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i8, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit9, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit9

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit9: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_functionC2INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEESP_RKSV_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofreeobj noundef align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code>, std::allocator<void>>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1763
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_21executor_function_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 88, i64 noundef 8) ; 11 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1764
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !1765
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %1, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.j, ptr %i.i, align 8, !tbaa !1747
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1748 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !329  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc5, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.d, !inline_history !5591

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #52
          to label %.noexc5 unwind label %bb.d, !inline_history !5591

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit
  %i.u = phi ptr [ null, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit ], [ %i.t, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !329
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1748
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !330
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !1760 ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !1760 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc5, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %.noexc5 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.y, %.noexc5 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.z
  br i1 %i.ad, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1748
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1751
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1751
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1752
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1752
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1237
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !1237
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !531
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEEvPNS1_9impl_baseEb, ptr %i.g, align 8, !tbaa !727
  store ptr %i.g, ptr %0, align 8, !tbaa !725
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !530
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1760
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1760
  tail call void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i32 noundef 0, ptr %i.c, ptr %i.e), !inline_history !5592
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1765 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1765
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1764 ; 5 uses
  %.not1.i = icmp eq ptr %i.k, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.lcssa.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  store i8 %i.x, ptr %i.k, align 1, !tbaa !231
  store ptr %i.k, ptr %i.v, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder1.1820", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1763
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1764
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !1765
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.d, ptr %4, align 8, !tbaa !1747
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !329  ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc8.thread, label %bb.b

.noexc8.thread:                                   ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !330
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #52
          to label %.noexc8 unwind label %bb.g    ; 5 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %i.e, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1748
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.h
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc8.thread
  %i.x = phi ptr [ null, %.noexc8.thread ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.o, %.noexc8.thread ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.m, %.noexc8.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc8.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !1748
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1751
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1751
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1752
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !1752
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1237
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !1237
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !531
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !330
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ao) #51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  store ptr null, ptr %i.b, align 8, !tbaa !1765
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !587 ; 4 uses
  %.not3.i = icmp eq ptr %i.as, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !264
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !264
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.lcssa.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !231
  store i8 %i.bb, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.az, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  call void @free(ptr noundef nonnull %0) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !1764
  br i1 %1, label %bb.f, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit

bb.f:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !1760
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, i32 noundef 0, ptr %i.x, ptr %i.bc)
          to label %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge unwind label %bb.h, !inline_history !5593

._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !329
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit
  %i.bk = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge ], [ %i.x, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit ] ; 3 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i10, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11.thread, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11.thread: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #51
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !1765 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %.not.i.i = icmp eq ptr %.pre13, null
  br i1 %.not.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre13, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.pre13, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !330
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i: ; preds = %bb.j, %bb.k, %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11.thread, %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !1764 ; 5 uses
  %.not1.i.i = icmp eq ptr %i.bw, null
  br i1 %.not1.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i12, label %.thread.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i: ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !587 ; 4 uses
  %.not3.i.i = icmp eq ptr %i.ca, null
  br i1 %.not3.i.i, label %.thread.i.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !264
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.m, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.preheader.preheader.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !264
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %.thread.i.i.i.i

bb.m:                                             ; preds = %.preheader.1.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.lcssa.i.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i.i ], [ 5, %.preheader.1.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.lcssa.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !231
  store i8 %i.cj, ptr %i.bw, align 1, !tbaa !231
  store ptr %i.bw, ptr %i.ch, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit

.thread.i.i.i.i:                                  ; preds = %.preheader.1.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i, %bb.l
  call void @free(ptr noundef nonnull %i.bw) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit: ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i, %bb.m, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENKUlSN_E_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.be, %bb.h ], [ %i.be, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENKUlSP_E_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail27initiate_post_with_executorINS_15any_io_executorEEclINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS8_S2_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEvST_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_SQ_E4typeEEE5valueEvE4typeEPNS1C_IXntsr6detail27is_work_dispatcher_requiredINSt5decayISQ_E4typeES2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %5 = alloca %"class.asio::any_io_executor", align 8 ; 9 uses
  %6 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  %7 = alloca %"struct.asio::execution::allocator_t", align 1 ; 4 uses
  %8 = alloca %"class.asio::detail::binder0.1831", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5604)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !5603
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628, !noalias !5605
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1277, !noalias !5605
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !624, !noalias !5605
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !718, !noalias !5605
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0), !noalias !5605, !inline_history !76
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %4, ptr noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4asio9execution6detail10blocking_tILi0EE5neverE), !noalias !5606, !inline_history !76
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5606 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !624, !alias.scope !5606
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !623, !noalias !5606
  store ptr %i.o, ptr %i.m, align 8, !tbaa !623, !alias.scope !5606
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.k, align 8, !tbaa !624, !noalias !5606
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.n, align 8, !tbaa !623, !noalias !5606
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !761, !noalias !5606
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #50
  unreachable

_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !625, !noalias !5606
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !628, !noalias !5606
  store ptr %i.w, ptr %i.u, align 8, !tbaa !628, !alias.scope !5606
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.v, align 8, !tbaa !628, !noalias !5606
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5606
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !631
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #50
  unreachable

bb.d:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !5603
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  invoke void @_ZNK14asio_prefer_fn4implclIN4asio15any_io_executorERKNS2_9execution6detail12relationship6fork_tILi0EEENS4_11allocator_tISaIvEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SF_SI_vvvvvvvE11result_typeEE4typeEOSF_OSG_OSH_(ptr dead_on_unwind nonnull writable sret(%"class.asio::any_io_executor") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZN14asio_prefer_fn15static_instanceINS_4implEE8instanceE, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4asio9execution6detail14relationship_tILi0EE4forkE, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !5607)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1753, !noalias !5607, !nonnull !327, !align !478
  store ptr %i.ab, ptr %8, align 8, !tbaa !1747, !alias.scope !5607
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1748, !noalias !5607 ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !329, !noalias !5607 ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !5607
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr null, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.ac, align 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !330, !alias.scope !5607
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.am = icmp ugt i64 %i.aj, 9223372036854775800
  br i1 %i.am, label %.noexc.i.i.i.i.i.i, label %bb.g, !prof !243

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #52
          to label %.noexc8 unwind label %bb.l    ; 3 uses

.noexc8:                                          ; preds = %bb.g
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !329, !alias.scope !5607
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !330, !alias.scope !5607
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc8
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.an, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ag, %.noexc8 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656, !noalias !5607
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.af
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.thread.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !1748, !alias.scope !5607
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1751, !noalias !5607
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1751, !alias.scope !5607
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1752, !noalias !5607
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !1752, !alias.scope !5607
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1237, !noalias !5607
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !1237, !alias.scope !5607
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !531
  invoke void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder0INS4_7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS8_14basic_endpointIS9_EESaISD_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketIS9_SA_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENKUlSS_E_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EEEEEEvSV_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit unwind label %bb.m, !inline_history !5602

_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit: ; preds = %.loopexit
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !330
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit: ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENKUlSR_E_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !624
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !631
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !631
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit10 unwind label %bb.j

bb.j:                                             ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit10: ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void

bb.k:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13

bb.l:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12

bb.m:                                             ; preds = %.loopexit
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !330
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12: ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.bw, %bb.m ], [ %i.bw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !624
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !631
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13 unwind label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13: ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.k ], [ %.pn, %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !631
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit14 unwind label %bb.p

bb.p:                                             ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit14: ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder0INS4_7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS8_14basic_endpointIS9_EESaISD_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketIS9_SA_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENKUlSS_E_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EEEEEEvSV_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::executor_function", align 8 ; 7 uses
  %3 = alloca %"class.asio::detail::binder0.1831", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !764  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4asio6detail22executor_function_view8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEEEvPv, ptr nonnull %1)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.g = load ptr, ptr %1, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.g, ptr %3, align 8, !tbaa !1747
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1748 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !330
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %bb.e, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #52 ; 4 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !329
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1748
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.k
  br i1 %i.z, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread
  %i.aa = phi ptr [ %i.r, %.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.p, %.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !1748
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1751
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1751
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1752
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !1752
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1237
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1237
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_functionC2INS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEESQ_RKSW_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !727
  invoke void %i.ao(ptr noundef nonnull %i.an, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.p

bb.k:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit7

bb.l:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i6 = icmp eq ptr %i.ay, null
  br i1 %.not.i6, label %_ZN4asio6detail17executor_functionD2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !727
  invoke void %i.az(ptr noundef nonnull %i.ay, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit7 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit7:     ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit9, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit9

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit9: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_functionC2INS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEESQ_RKSW_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofreeobj noundef align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code>>, std::allocator<void>>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1768
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_21executor_function_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 88, i64 noundef 8) ; 11 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1769
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !1770
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %1, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.j, ptr %i.i, align 8, !tbaa !1747
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1748 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !329  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc5, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.d, !inline_history !5608

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #52
          to label %.noexc5 unwind label %bb.d, !inline_history !5608

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit
  %i.u = phi ptr [ null, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit ], [ %i.t, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !329
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1748
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !330
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !1760 ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !1760 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc5, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %.noexc5 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.y, %.noexc5 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.z
  br i1 %i.ad, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1748
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1751
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1751
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1752
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1752
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1237
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !1237
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !531
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEEvPNS1_9impl_baseEb, ptr %i.g, align 8, !tbaa !727
  store ptr %i.g, ptr %0, align 8, !tbaa !725
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1760
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1760
  tail call void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i32 noundef 0, ptr %i.c, ptr %i.e), !inline_history !5609
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1770 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1770
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1769 ; 5 uses
  %.not1.i = icmp eq ptr %i.k, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.lcssa.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  store i8 %i.x, ptr %i.k, align 1, !tbaa !231
  store ptr %i.k, ptr %i.v, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code>>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder0.1831", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1768
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1769
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !1770
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1753, !nonnull !327, !align !478
  store ptr %i.d, ptr %4, align 8, !tbaa !1747
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !329  ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc8.thread, label %bb.b

.noexc8.thread:                                   ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !330
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #52
          to label %.noexc8 unwind label %bb.g    ; 5 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.q, ptr %i.e, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1748
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.h
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc8.thread
  %i.x = phi ptr [ null, %.noexc8.thread ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.o, %.noexc8.thread ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.m, %.noexc8.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc8.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !1748
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1751
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1751
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1752
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !1752
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1237
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !1237
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !531
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !330
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ao) #51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  store ptr null, ptr %i.b, align 8, !tbaa !1770
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !587 ; 4 uses
  %.not3.i = icmp eq ptr %i.as, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !264
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !264
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.lcssa.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !231
  store i8 %i.bb, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.az, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  call void @free(ptr noundef nonnull %0) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !1769
  br i1 %1, label %bb.f, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit

bb.f:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !1760
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENKUlSM_E_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i, i32 noundef 0, ptr %i.x, ptr %i.bc)
          to label %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge unwind label %bb.h, !inline_history !5610

._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !329
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit
  %i.bk = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge ], [ %i.x, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit ] ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11.thread, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11.thread: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #51
  %.pre12 = load ptr, ptr %i.b, align 8, !tbaa !1770 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %.not.i.i = icmp eq ptr %.pre12, null
  br i1 %.not.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre12, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.pre12, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !330
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i: ; preds = %bb.j, %bb.k, %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11.thread, %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENKUlSO_E_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !1769 ; 5 uses
  %.not1.i.i = icmp eq ptr %i.bw, null
  br i1 %.not1.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENKUlSQ_E_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i: ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !587 ; 4 uses
  %.not3.i.i = icmp eq ptr %i.ca, null
  br i1 %.not3.i.i, label %.thread.i.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !264
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.m, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.preheader.preheader.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !264
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %.thread.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder0IZZN7coro_io8async_ioISt10error_codeZNS6_13async_connectISt6vectorINS_2ip14basic_endpointINSB_3tcpEEESaISE_EEEEN12async_simple4coro4LazyIS8_EERNS_19basic_stream_socketISD_NS_15any_io_executorEEERKT_EUlOSP_E0_SN_EENSJ_ISP_EET0_RT1_ENUlSP_E0_clINS6_21callback_awaitor_baseIS8_NS6_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSP_EUlvE_EEEEvSS_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !727
  invoke void %i.u(ptr noundef nonnull %i.t, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit5:     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.s

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #56
  %i.b = load ptr, ptr %0, align 8, !tbaa !1240   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 125, ptr %i.c, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !530
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1087 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr nonnull %i.d), !inline_history !5628
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1776
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1776
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1777 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  store i8 %i.q, ptr %i.d, align 1, !tbaa !231
  store ptr %i.d, ptr %i.o, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:314:34)>, std::allocator<void>>::ptr.1842", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !5630
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1237
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1776
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.i, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !264
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !231
  store i8 %i.r, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.p, align 8, !tbaa !264
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #44
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1777
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #56
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 125, ptr %i.t, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1087 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr nonnull %i.u)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !5629

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.w

_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt10error_codeZNS4_13async_connectISt6vectorINS_2ip14basic_endpointINS9_3tcpEEESaISC_EEEEN12async_simple4coro4LazyIS6_EERNS_19basic_stream_socketISB_NS_15any_io_executorEEERKT_EUlOSN_E0_SL_EENSH_ISN_EET0_RT1_ENUlSN_E0_clINS4_21callback_awaitor_baseIS6_NS4_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSN_EUlvE_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail28initiate_async_range_connectINS_2ip3tcpENS_15any_io_executorEEclIZZN7coro_io8async_ioISt10error_codeZNS7_13async_connectISt6vectorINS2_14basic_endpointIS3_EESaISD_EEEEN12async_simple4coro4LazyIS9_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINS7_21callback_awaitor_baseIS9_NS7_16callback_awaitorIS9_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_SF_NS0_25default_connect_conditionEEEvSQ_RKST_RKSU_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::detail::range_connect_op.1848", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = load ptr, ptr %0, align 8, !tbaa !1746, !nonnull !327, !align !478
  store ptr %i.a, ptr %4, align 8, !tbaa !1747
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1748 ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !329    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !330
  br label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i.i, label %bb.c, !prof !243

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #52 ; 5 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !329
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1748
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.d
  br i1 %i.s, label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.thread
  %i.t = phi ptr [ %i.k, %.thread ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.u = phi ptr [ %i.i, %.thread ], [ %i.n, %.lr.ph.i.i.i.i.i.i ]
  %i.v = phi ptr [ null, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1748
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !1780
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.x, align 8, !tbaa !1781
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1263
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #56
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 0, ptr nonnull %i.z, i32 noundef 1, ptr %i.v, ptr %.0.lcssa.i.i.i.i.i.i)
          to label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit unwind label %bb.e, !inline_history !5631

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit: ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !330
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #51
  br label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit: ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EclESD_i.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret void

bb.e:                                             ; preds = %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_EC2ERNS_12basic_socketIS3_S4_EERKS9_RKSA_RS15_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i5, label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !330
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #51
  br label %_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit6

_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_ED2Ev.exit6: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 %1, ptr %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit:
  %6 = alloca %"class.asio::detail::initiate_post_with_executor.1128", align 8 ; 10 uses
  %7 = alloca %"class.std::error_code", align 8   ; 6 uses
  %8 = alloca %"class.asio::basic_socket<asio::ip::tcp>::initiate_async_connect", align 8 ; 4 uses
  %9 = alloca %"class.std::error_code", align 8   ; 5 uses
  %10 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  %11 = alloca %"class.asio::detail::binder1.1851", align 8 ; 15 uses
  store i32 %1, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1780 ; 2 uses
  %i.d = getelementptr inbounds [28 x i8], ptr %4, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %3, ptr %i.e, align 8, !tbaa !1781
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %bb.a, label %bb.v

bb.a:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %bb.ab
  %.sroa.027.0 = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.dr, %bb.ab ] ; 5 uses
  %i.f = ptrtoint ptr %.sroa.027.0 to i64
  %i.g = ptrtoint ptr %4 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 28                  ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !1780
  %i.j = icmp eq ptr %.sroa.027.0, %5
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !1782, !nonnull !327, !align !478 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !878
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1782, !nonnull !327, !align !478 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  store i32 0, ptr %7, align 8, !tbaa !565
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #56, !inline_history !5632
  store ptr %i.r, ptr %i.q, align 8, !tbaa !566
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !879
  %.not.i = icmp eq i32 %i.t, -1
  br i1 %.not.i, label %bb.c, label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr %.sroa.027.0, align 4, !tbaa !231
  %i.v = icmp eq i16 %i.u, 2
  %spec.select.i.i = select i1 %i.v, i32 2, i32 10 ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !878
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base7do_openERNS1_24base_implementation_typeEiiiRSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.s, i32 noundef %spec.select.i.i, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !5632
  %i.z = extractvalue { i32, ptr } %i.y, 0
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %spec.select.i.i, ptr %i.aa, align 8, !tbaa !232
  br label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit

_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  store ptr %i.p, ptr %8, align 8, !tbaa !1703
  call void @_ZNK4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE22initiate_async_connectclINS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISB_EENS7_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EEEEvST_RKSB_RKSH_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.027.0, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !5633
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !233

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  store i32 3, ptr %9, align 8, !tbaa !232
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %i.a, align 8, !tbaa !530
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.af = load ptr, ptr %0, align 8, !tbaa !1782, !nonnull !327, !align !478 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5640)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !624, !noalias !5640 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !624, !alias.scope !5640
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !623, !noalias !5640
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !623, !alias.scope !5640
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !646, !noalias !5640
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %i.ag)
          to label %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit: ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !628, !noalias !5640
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !628, !alias.scope !5640
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !5641)
  %i.au = load ptr, ptr %0, align 8, !tbaa !1782, !noalias !5641, !nonnull !327, !align !478
  store ptr %i.au, ptr %11, align 8, !tbaa !1747, !alias.scope !5641
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1748, !noalias !5641 ; 3 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !329, !noalias !5641 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !5641
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr null, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 0, ptr %i.av, align 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !330, !alias.scope !5641
  br label %.loopexit

bb.j:                                             ; preds = %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv.exit
  %i.bf = icmp ugt i64 %i.bc, 9223372036854775800
  br i1 %i.bf, label %.noexc.i.i.i.i.i, label %bb.k, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #52
          to label %.noexc10 unwind label %bb.s   ; 3 uses

.noexc10:                                         ; preds = %bb.k
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !329, !alias.scope !5641
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !330, !alias.scope !5641
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc10
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bg, %.noexc10 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.az, %.noexc10 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656, !noalias !5641
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.ay
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !1748, !alias.scope !5641
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !1780, !noalias !5641
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !1780, !alias.scope !5641
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !1781, !noalias !5641
  store i32 %i.bq, ptr %i.bp, align 8, !tbaa !1781, !alias.scope !5641
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !1263
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.ah, align 8, !tbaa !624 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !624
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !623
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !623
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !646
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i unwind label %bb.l, !inline_history !114

bb.l:                                             ; preds = %.loopexit
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #50, !inline_history !114
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i: ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cd = load ptr, ptr %i.ar, align 8, !tbaa !628
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !628
  invoke void @_ZNK4asio6detail27initiate_post_with_executorINS_15any_io_executorEEclINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS8_S2_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEvST_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_SQ_E4typeEEE5valueEvE4typeEPNS1C_IXntsr6detail27is_work_dispatcher_requiredINSt5decayISQ_E4typeES2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef null, ptr noundef null)
          to label %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i unwind label %bb.n, !inline_history !115

_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i: ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !624
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !631
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.p unwind label %bb.m, !inline_history !114

bb.m:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #50, !inline_history !114
  unreachable

bb.n:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !624
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !631
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i unwind label %bb.o, !inline_history !114

bb.o:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #50, !inline_history !114
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i11, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12, label %bb.t

bb.p:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.co = load ptr, ptr %i.av, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !330
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.cu = load ptr, ptr %i.ah, align 8, !tbaa !624
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !631
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %bb.ac

bb.s:                                             ; preds = %bb.k, %.noexc.i.i.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12

bb.t:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !330
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cn to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dd) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12: ; preds = %bb.t, %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.s ], [ %i.ci, %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i ], [ %i.ci, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.de = load ptr, ptr %i.ah, align 8, !tbaa !624
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !631
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13 unwind label %bb.u

bb.u:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.di = phi i64 [ %i.i, %bb.e ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.027.1 = phi ptr [ %.sroa.027.0, %bb.e ], [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio2ip14basic_endpointINS3_3tcpEEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.dj = icmp eq ptr %.sroa.027.1, %5
  br i1 %i.dj, label %.thread41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %0, align 8, !tbaa !1782, !nonnull !327, !align !478
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !879
  %.not44 = icmp eq i32 %i.dm, -1
  br i1 %.not44, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.dn = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.y, label %.thread41, !prof !233

bb.y:                                             ; preds = %bb.x
  %i.dp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i, label %.thread41, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %.thread41

bb.aa:                                            ; preds = %bb.w
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %.thread41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 28
  %i.ds = add i64 %i.di, 1
  store i64 %i.ds, ptr %i.b, align 8, !tbaa !1780
  br label %bb.a, !llvm.loop !5638

.thread41:                                        ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.v
  %.sroa.21.0.copyload.i = phi ptr [ %2, %bb.v ], [ %2, %bb.aa ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.z ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.y ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.x ]
  %.sroa.0.0.copyload.i = phi i32 [ %1, %bb.v ], [ 0, %bb.aa ], [ 125, %bb.z ], [ 125, %bb.y ], [ 125, %bb.x ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !5642, !nonnull !327, !align !478
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1067
  %i.dx = tail call noundef zeroext i1 @_ZN12async_simple4Slot5clearENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, i64 noundef 1) ; 0 uses
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !1240 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.dz, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %.sroa.21.0.copyload.i, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !1087 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr nonnull %i.ea), !inline_history !5639
  br label %bb.ac

bb.ac:                                            ; preds = %.thread41, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit, %_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE13async_connectITkNS_20completion_token_forIFvSt10error_codeEEENS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISD_EENS9_25default_connect_conditionEZZN7coro_io8async_ioIS7_ZNSH_13async_connectISF_EEN12async_simple4coro4LazyIS7_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseIS7_NSH_16callback_awaitorIS7_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EEEEDaRKSD_SU_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE22initiate_async_connectclINS_6detail16range_connect_opIS2_S3_St6vectorINS1_14basic_endpointIS2_EESaISB_EENS7_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS2_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EEEEvST_RKSB_RKSH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::detail::initiate_post_with_executor.1128", align 8 ; 10 uses
  %5 = alloca %"class.asio::detail::binder1.1851", align 8 ; 15 uses
  %i.a = load i32, ptr %3, align 8, !tbaa !565
  %.not = icmp eq i32 %i.a, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !1703   ; 7 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5645)
  %i.d = load ptr, ptr %1, align 8, !tbaa !1782, !noalias !5645, !nonnull !327, !align !478
  store ptr %i.d, ptr %5, align 8, !tbaa !1747, !alias.scope !5645
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748, !noalias !5645 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !329, !noalias !5645 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !5645
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.e, align 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !330, !alias.scope !5645
  br label %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.o, label %.noexc.i.i.i.i.i, label %bb.d, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53, !noalias !5645
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #52, !noalias !5645 ; 3 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !329, !alias.scope !5645
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !330, !alias.scope !5645
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656, !noalias !5645
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.h
  br i1 %i.u, label %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1748, !alias.scope !5645
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1780, !noalias !5645
  store i64 %i.y, ptr %i.w, align 8, !tbaa !1780, !alias.scope !5645
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1781, !noalias !5645
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !1781, !alias.scope !5645
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !1263
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !624 ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !624
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !623
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !623
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !646
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i unwind label %bb.e, !inline_history !114

bb.e:                                             ; preds = %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #50, !inline_history !114
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i: ; preds = %_ZN4asio6detail12bind_handlerINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EENS0_7binder1INSt5decayISN_E4typeEST_EESQ_RKST_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !628
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !628
  invoke void @_ZNK4asio6detail27initiate_post_with_executorINS_15any_io_executorEEclINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS8_S2_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEvST_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_SQ_E4typeEEE5valueEvE4typeEPNS1C_IXntsr6detail27is_work_dispatcher_requiredINSt5decayISQ_E4typeES2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef null, ptr noundef null)
          to label %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i unwind label %bb.g, !inline_history !115

_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i: ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !624
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !631
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.i unwind label %bb.f, !inline_history !114

bb.f:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #50, !inline_history !114
  unreachable

bb.g:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEEC2ERKS2_.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !624
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !631
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i unwind label %bb.h, !inline_history !114

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #50, !inline_history !114
  unreachable

_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i7, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit8, label %bb.k

bb.i:                                             ; preds = %_ZN4asio14async_initiateINS_6detail7binder1INS1_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS1_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EETpTkNS_20completion_signatureEJFvvEENS1_27initiate_post_with_executorIS6_EEJEEENS_10constraintIXsr6detail31async_result_has_initiate_memfnISO_DpT0_EE5valueEDTclsr12async_resultINSt5decayISO_E4typeES1F_EE8initiatecl7declvalIOSV_EEcl7declvalISR_EEspcl7declvalIOT2_EEEEE4typeES1J_RSO_DpS1L_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !330
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.m

bb.k:                                             ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !330
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bm) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit8

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit8: ; preds = %_ZN4asio6detail27initiate_post_with_executorINS_15any_io_executorEED2Ev.exit3.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %i.aw

bb.l:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !878
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZN4asio6detail23reactive_socket_serviceINS_2ip3tcpEE13async_connectINS0_16range_connect_opIS3_NS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS3_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EES7_EEvRNS4_19implementation_typeERKSA_RSP_RKSV_(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.bp)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail23reactive_socket_serviceINS_2ip3tcpEE13async_connectINS0_16range_connect_opIS3_NS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS3_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EES7_EEvRNS4_19implementation_typeERKSA_RSP_RKSV_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.asio::detail::reactive_socket_connect_op<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  store ptr %3, ptr %5, align 8, !tbaa !1786
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 192, i64 noundef 16) ; 18 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1787
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !1788
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %1, align 8, !tbaa !879
  store ptr null, ptr %i.g, align 8, !tbaa !562
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E11do_completeEPvPNS0_19scheduler_operationERKSE_m, ptr %i.l, align 8, !tbaa !563
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !574
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !531
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr @_ZN4asio6detail31reactive_socket_connect_op_base10do_performEPNS0_10reactor_opE, ptr %i.p, align 8, !tbaa !1440
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.k, ptr %i.q, align 8, !tbaa !1709
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.s = load ptr, ptr %3, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.s, ptr %i.r, align 8, !tbaa !1747
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1748 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !329  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i.i, label %.noexc6.i, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.d, !inline_history !5646

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #52
          to label %.noexc6.i unwind label %bb.d, !inline_history !5646

.noexc6.i:                                        ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit
  %i.ad = phi ptr [ null, %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr8allocateERS17_.exit ], [ %i.ac, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !329
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1748
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !330
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !1760 ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !1760 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc6.i, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %.noexc6.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ah, %.noexc6.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.ai
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc6.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc6.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !1748
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1780
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !1780
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1781
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !1781
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !1263
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  tail call void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %4) #44, !inline_history !5646
  store ptr %i.g, ptr %i.h, align 8, !tbaa !1788
  %i.aw = load i16, ptr %2, align 4, !tbaa !231
  %i.ax = icmp eq i16 %i.aw, 2
  %..i.i = select i1 %i.ax, i64 16, i64 28
  invoke void @_ZN4asio6detail28reactive_socket_service_base16start_connect_opERNS1_24base_implementation_typeEPNS0_10reactor_opEbPKvm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.g, i1 noundef zeroext false, ptr noundef nonnull %2, i64 noundef %..i.i)
          to label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit unwind label %bb.d

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void

bb.d:                                             ; preds = %.loopexit, %.noexc.i.i.i.i, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1788 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !624
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !631
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #50
  unreachable

_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !330
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #51
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i: ; preds = %bb.d, %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !1788
  br label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_ED2Ev.exit.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1787 ; 5 uses
  %.not1.i = icmp eq ptr %i.q, null
  br i1 %.not1.i, label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !587  ; 4 uses
  %.not4.i = icmp eq ptr %i.u, null
  br i1 %.not4.i, label %.thread.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %.preheader.1.i.i.i.i.i.i.i.i

.preheader.1.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.thread.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.i.i.i ], [ 1, %.preheader.1.i.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !231
  store i8 %i.ac, ptr %i.q, align 1, !tbaa !231
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !264
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.q) #44
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit: ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E11do_completeEPvPNS0_19scheduler_operationERKSE_m(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::reactive_socket_connect_op<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.asio::detail::handler_work.1854", align 8 ; 11 uses
  %6 = alloca %"class.asio::detail::binder1.1851", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !1786
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !1787
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !1788
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !624  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !624
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !623
  store ptr %i.j, ptr %i.h, align 8, !tbaa !623
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.f, align 8, !tbaa !624
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.i, align 8, !tbaa !623
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !761
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #50
  unreachable

_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr null, ptr %i.o, align 8, !tbaa !625
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !628
  store ptr %i.r, ptr %i.p, align 8, !tbaa !628
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.q, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.t, ptr %6, align 8, !tbaa !1747
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1748 ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !329  ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i.i, label %.noexc13.thread, label %bb.c

.noexc13.thread:                                  ; preds = %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr null, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !330
  br label %.loopexit

bb.c:                                             ; preds = %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vEC2EOS18_.exit
  %i.af = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.af, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #52
          to label %.noexc13 unwind label %bb.k   ; 4 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !329
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1748
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ag, %.noexc13 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.y, %.noexc13 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.x
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13.thread
  %i.an = phi ptr [ %i.ae, %.noexc13.thread ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ %i.ac, %.noexc13.thread ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc13.thread ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !1748
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1780
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !1780
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1781
  store i32 %i.au, ptr %i.as, align 8, !tbaa !1781
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !1263
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !531
  store ptr %6, ptr %4, align 8, !tbaa !1786
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !624
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !631
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #50
  unreachable

_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i: ; preds = %.loopexit
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !330
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #51
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit.i.i
  store ptr null, ptr %i.c, align 8, !tbaa !1788
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !587 ; 4 uses
  %.not4.i = icmp eq ptr %i.bl, null
  br i1 %.not4.i, label %.thread.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !264
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.g, label %.preheader.1.i.i.i.i.i.i.i.i

.preheader.1.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !264
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.g, label %.thread.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.i.i.i ], [ 1, %.preheader.1.i.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.lcssa.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !231
  store i8 %i.bt, ptr %1, align 8, !tbaa !231
  store ptr %1, ptr %i.br, align 8, !tbaa !264
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.preheader.1.i.i.i.i.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i, %bb.f
  call void @free(ptr noundef nonnull %1) #44
  br label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit: ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.b, align 8, !tbaa !1787
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !625
  %.not.i15 = icmp eq ptr %i.bv, null
  br i1 %.not.i15, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  %.sroa.21.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !530
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !1760
  %i.bx = load ptr, ptr %i.ao, align 8, !tbaa !1760
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(80) %6, i32 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i, i32 noundef 0, ptr %i.bw, ptr %i.bx)
          to label %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit unwind label %bb.l, !inline_history !5647

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvE8dispatchINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS9_14basic_endpointISA_EESaISD_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketISA_S2_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENUlSS_E0_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EES1C_EEvRSS_RSY_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit unwind label %bb.l, !inline_history !5647

_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit: ; preds = %bb.i, %bb.j
  fence release
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  fence release
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i18, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19, label %bb.p

bb.m:                                             ; preds = %_ZN4asio6detail12handler_workINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_vE8completeINS0_7binder1IS17_SE_EEEEvRSN_RS17_.exit, %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptr5resetEv.exit
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !330
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !624
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !631
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #50
  unreachable

_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev.exit: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret void

bb.p:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %i.an, align 8, !tbaa !330
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ca to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cn) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19: ; preds = %bb.p, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.k ], [ %i.bz, %bb.l ], [ %i.bz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !624
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !631
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit20 unwind label %bb.q

bb.q:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #50
  unreachable

_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvED2Ev.exit20: ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail26reactive_socket_connect_opINS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EES5_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvE8dispatchINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS9_14basic_endpointISA_EESaISD_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketISA_S2_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENUlSS_E0_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EES1C_EEvRSS_RSY_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.asio::execution::prefer_only", align 1 ; 3 uses
  %4 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %5 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !5655
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628, !noalias !5657
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !762, !noalias !5657
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !624, !noalias !5657
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !718, !noalias !5657
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0), !noalias !5657, !inline_history !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44, !noalias !5657
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %4, ptr noundef %i.i, ptr noundef nonnull %3), !noalias !5658, !inline_history !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44, !noalias !5657
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5658 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !624, !alias.scope !5658
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !623, !noalias !5658
  store ptr %i.o, ptr %i.m, align 8, !tbaa !623, !alias.scope !5658
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.k, align 8, !tbaa !624, !noalias !5658
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.n, align 8, !tbaa !623, !noalias !5658
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !761, !noalias !5658
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #50
  unreachable

_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !625, !noalias !5658
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !628, !noalias !5658
  store ptr %i.w, ptr %i.u, align 8, !tbaa !628, !alias.scope !5658
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.v, align 8, !tbaa !628, !noalias !5658
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5658
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !631
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #50
  unreachable

_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit: ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !5655
  invoke void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS7_14basic_endpointIS8_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS_19basic_stream_socketIS8_S9_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEvSU_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit unwind label %bb.e, !inline_history !5654

_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit: ; preds = %_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !631
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS2_19basic_stream_socketIS8_S3_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEENSt9enable_ifIXeqsr11call_traitsIS0_SQ_FvSW_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SQ_S1D_vvvvvE11result_typeEE4typeEST_OSW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void

bb.e:                                             ; preds = %_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !631
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit3: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS7_14basic_endpointIS8_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS_19basic_stream_socketIS8_S9_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEvSU_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::executor_function", align 8 ; 7 uses
  %3 = alloca %"class.asio::detail::binder1.1851", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !764  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4asio6detail22executor_function_view8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EEEEvPv, ptr nonnull %1)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.g = load ptr, ptr %1, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.g, ptr %3, align 8, !tbaa !1747
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1748 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !330
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i, label %bb.e, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #52 ; 4 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !329
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1748
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.k
  br i1 %i.z, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.thread
  %i.aa = phi ptr [ %i.r, %.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.p, %.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !1748
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1780
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1780
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1781
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !1781
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !1263
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_functionC2INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEESP_RKSV_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !727
  invoke void %i.an(ptr noundef nonnull %i.am, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.p

bb.k:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_EC2EOS18_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit7

bb.l:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i6 = icmp eq ptr %i.ax, null
  br i1 %.not.i6, label %_ZN4asio6detail17executor_functionD2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !727
  invoke void %i.ay(ptr noundef nonnull %i.ax, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit7 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit7:     ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %bb.l ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i8, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit9, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit9

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit9: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_functionC2INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEESP_RKSV_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofreeobj noundef align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, std::error_code>, std::allocator<void>>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1791
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_21executor_function_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 96, i64 noundef 8) ; 11 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1792
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !1793
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %1, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.j, ptr %i.i, align 8, !tbaa !1747
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1748 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !329  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc5, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.d, !inline_history !5659

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #52
          to label %.noexc5 unwind label %bb.d, !inline_history !5659

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit
  %i.u = phi ptr [ null, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr8allocateERKS1B_.exit ], [ %i.t, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !329
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1748
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !330
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !1760 ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !1760 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc5, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %.noexc5 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.y, %.noexc5 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.z
  br i1 %i.ad, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1748
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1780
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1780
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1781
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1781
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !1263
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !531
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEEvPNS1_9impl_baseEb, ptr %i.g, align 8, !tbaa !727
  store ptr %i.g, ptr %0, align 8, !tbaa !725
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !530
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1760
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1760
  tail call void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i32 noundef 0, ptr %i.c, ptr %i.e), !inline_history !5660
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1793 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1793
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1792 ; 5 uses
  %.not1.i = icmp eq ptr %i.k, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.lcssa.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  store i8 %i.x, ptr %i.k, align 1, !tbaa !231
  store ptr %i.k, ptr %i.v, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, std::error_code>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder1.1851", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1791
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1792
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !1793
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.d, ptr %4, align 8, !tbaa !1747
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !329  ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc8.thread, label %bb.b

.noexc8.thread:                                   ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !330
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #52
          to label %.noexc8 unwind label %bb.g    ; 5 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %i.e, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1748
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.h
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc8.thread
  %i.x = phi ptr [ null, %.noexc8.thread ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.o, %.noexc8.thread ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.m, %.noexc8.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc8.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !1748
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1780
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1780
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1781
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !1781
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1263
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !531
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !330
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.an) #51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  store ptr null, ptr %i.b, align 8, !tbaa !1793
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !587 ; 4 uses
  %.not3.i = icmp eq ptr %i.ar, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !264
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !264
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.lcssa.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !231
  store i8 %i.ba, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.ay, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  call void @free(ptr noundef nonnull %0) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !1792
  br i1 %1, label %bb.f, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit

bb.f:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !1760
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(80) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, i32 noundef 0, ptr %i.x, ptr %i.bb)
          to label %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge unwind label %bb.h, !inline_history !5661

._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !329
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #51
  br label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit
  %i.bj = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit_crit_edge ], [ %i.x, %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptr5resetEv.exit ] ; 3 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i10, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11.thread, label %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11.thread: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS1_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EES1A_EEvRSP_RSV_.exit
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #51
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !1793 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %.not.i.i = icmp eq ptr %.pre13, null
  br i1 %.not.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre13, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre13, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !330
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i: ; preds = %bb.j, %bb.k, %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11.thread, %_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit11
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !1792 ; 5 uses
  %.not1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not1.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i
  %i.bw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i12, label %.thread.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i: ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !587 ; 4 uses
  %.not3.i.i = icmp eq ptr %i.bz, null
  br i1 %.not3.i.i, label %.thread.i.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !264
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.preheader.preheader.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !264
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.m, label %.thread.i.i.i.i

bb.m:                                             ; preds = %.preheader.1.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.lcssa.i.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i.i ], [ 5, %.preheader.1.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.lcssa.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !231
  store i8 %i.ci, ptr %i.bv, align 1, !tbaa !231
  store ptr %i.bv, ptr %i.cg, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit

.thread.i.i.i.i:                                  ; preds = %.preheader.1.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i, %bb.l
  call void @free(ptr noundef nonnull %i.bv) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit

_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev.exit: ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEED2Ev.exit.i.i, %bb.m, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void

_ZN4asio6detail7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS3_14basic_endpointIS4_EESaIS8_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSC_13async_connectISA_EEN12async_simple4coro4LazyISE_EERNS_19basic_stream_socketIS4_S5_EERKT_EUlOSN_E0_SL_EENSI_ISN_EET0_RT1_ENUlSN_E0_clINSC_21callback_awaitor_baseISE_NSC_16callback_awaitorISE_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EESE_ED2Ev.exit: ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %i.bd, %bb.h ], [ %i.bd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS5_14basic_endpointIS6_EESaISA_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSE_13async_connectISC_EEN12async_simple4coro4LazyISG_EERNS_19basic_stream_socketIS6_S7_EERKT_EUlOSP_E0_SN_EENSK_ISP_EET0_RT1_ENUlSP_E0_clINSE_21callback_awaitor_baseISG_NSE_16callback_awaitorISG_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESG_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail27initiate_post_with_executorINS_15any_io_executorEEclINS0_7binder1INS0_16range_connect_opINS_2ip3tcpES2_St6vectorINS7_14basic_endpointIS8_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS8_S2_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEvST_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_SQ_E4typeEEE5valueEvE4typeEPNS1C_IXntsr6detail27is_work_dispatcher_requiredINSt5decayISQ_E4typeES2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %5 = alloca %"class.asio::any_io_executor", align 8 ; 9 uses
  %6 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  %7 = alloca %"struct.asio::execution::allocator_t", align 1 ; 4 uses
  %8 = alloca %"class.asio::detail::binder0.1862", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5672)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !5671
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628, !noalias !5673
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1277, !noalias !5673
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !624, !noalias !5673
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !718, !noalias !5673
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0), !noalias !5673, !inline_history !76
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %4, ptr noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4asio9execution6detail10blocking_tILi0EE5neverE), !noalias !5674, !inline_history !76
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5674 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !624, !alias.scope !5674
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !623, !noalias !5674
  store ptr %i.o, ptr %i.m, align 8, !tbaa !623, !alias.scope !5674
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.k, align 8, !tbaa !624, !noalias !5674
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.n, align 8, !tbaa !623, !noalias !5674
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !761, !noalias !5674
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #50
  unreachable

_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !625, !noalias !5674
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !628, !noalias !5674
  store ptr %i.w, ptr %i.u, align 8, !tbaa !628, !alias.scope !5674
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.v, align 8, !tbaa !628, !noalias !5674
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !5674
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !631
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #50
  unreachable

bb.d:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !5671
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  invoke void @_ZNK14asio_prefer_fn4implclIN4asio15any_io_executorERKNS2_9execution6detail12relationship6fork_tILi0EEENS4_11allocator_tISaIvEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SF_SI_vvvvvvvE11result_typeEE4typeEOSF_OSG_OSH_(ptr dead_on_unwind nonnull writable sret(%"class.asio::any_io_executor") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZN14asio_prefer_fn15static_instanceINS_4implEE8instanceE, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4asio9execution6detail14relationship_tILi0EE4forkE, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !5675)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1782, !noalias !5675, !nonnull !327, !align !478
  store ptr %i.ab, ptr %8, align 8, !tbaa !1747, !alias.scope !5675
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1748, !noalias !5675 ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !329, !noalias !5675 ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !5675
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr null, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.ac, align 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !330, !alias.scope !5675
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.am = icmp ugt i64 %i.aj, 9223372036854775800
  br i1 %i.am, label %.noexc.i.i.i.i.i.i, label %bb.g, !prof !243

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #52
          to label %.noexc8 unwind label %bb.l    ; 3 uses

.noexc8:                                          ; preds = %bb.g
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !329, !alias.scope !5675
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !330, !alias.scope !5675
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc8
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.an, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ag, %.noexc8 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656, !noalias !5675
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.af
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.thread.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !1748, !alias.scope !5675
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1780, !noalias !5675
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1780, !alias.scope !5675
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1781, !noalias !5675
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !1781, !alias.scope !5675
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !1263
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !531
  invoke void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder0INS4_7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS8_14basic_endpointIS9_EESaISD_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketIS9_SA_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENUlSS_E0_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EEEEEEvSV_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit unwind label %bb.m, !inline_history !5670

_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit: ; preds = %.loopexit
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !330
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit: ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0INS4_7binder1INS4_16range_connect_opINS2_2ip3tcpES3_St6vectorINS8_14basic_endpointIS9_EESaISC_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSG_13async_connectISE_EEN12async_simple4coro4LazyISI_EERNS2_19basic_stream_socketIS9_S3_EERKT_EUlOSR_E0_SP_EENSM_ISR_EET0_RT1_ENUlSR_E0_clINSG_21callback_awaitor_baseISI_NSG_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESI_EEEEEENSt9enable_ifIXeqsr11call_traitsIS0_SR_FvSX_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SR_S1F_vvvvvE11result_typeEE4typeESU_OSX_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !624
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !631
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !631
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit10 unwind label %bb.j

bb.j:                                             ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit10: ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void

bb.k:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13

bb.l:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12

bb.m:                                             ; preds = %.loopexit
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !330
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12: ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.l ], [ %i.bv, %bb.m ], [ %i.bv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !624
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !631
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13 unwind label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13: ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.k ], [ %.pn, %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !631
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit14 unwind label %bb.p

bb.p:                                             ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit14: ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder0INS4_7binder1INS4_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS8_14basic_endpointIS9_EESaISD_EENS4_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSH_13async_connectISF_EEN12async_simple4coro4LazyISJ_EERNS_19basic_stream_socketIS9_SA_EERKT_EUlOSS_E0_SQ_EENSN_ISS_EET0_RT1_ENUlSS_E0_clINSH_21callback_awaitor_baseISJ_NSH_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESJ_EEEEEEvSV_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::executor_function", align 8 ; 7 uses
  %3 = alloca %"class.asio::detail::binder0.1862", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !764  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4asio6detail22executor_function_view8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEEEvPv, ptr nonnull %1)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.g = load ptr, ptr %1, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.g, ptr %3, align 8, !tbaa !1747
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1748 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !330
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %bb.e, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #53
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #52 ; 4 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !329
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1748
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.k
  br i1 %i.z, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread
  %i.aa = phi ptr [ %i.r, %.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.p, %.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !1748
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1780
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1780
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1781
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !1781
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !1263
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_functionC2INS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEESQ_RKSW_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !727
  invoke void %i.an(ptr noundef nonnull %i.am, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.p

bb.k:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEEC2EOS1A_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit7

bb.l:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i6 = icmp eq ptr %i.ax, null
  br i1 %.not.i6, label %_ZN4asio6detail17executor_functionD2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !727
  invoke void %i.ay(ptr noundef nonnull %i.ax, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit7 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit7:     ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %bb.l ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit9, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit9

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit9: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_functionC2INS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEESQ_RKSW_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofreeobj noundef align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, std::error_code>>, std::allocator<void>>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1796
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_21executor_function_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 96, i64 noundef 8) ; 11 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1797
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !1798
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %1, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.j, ptr %i.i, align 8, !tbaa !1747
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1748 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !329  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc5, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit
  %i.s = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.d, !inline_history !5676

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #52
          to label %.noexc5 unwind label %bb.d, !inline_history !5676

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit
  %i.u = phi ptr [ null, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr8allocateERKS1D_.exit ], [ %i.t, %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !329
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1748
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !330
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !1760 ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !1760 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc5, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %.noexc5 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.y, %.noexc5 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.z
  br i1 %i.ad, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1748
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1780
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1780
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1781
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1781
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !1263
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !531
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEEvPNS1_9impl_baseEb, ptr %i.g, align 8, !tbaa !727
  store ptr %i.g, ptr %0, align 8, !tbaa !725
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1760
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1760
  tail call void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i32 noundef 0, ptr %i.c, ptr %i.e), !inline_history !5677
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1798 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1798
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1797 ; 5 uses
  %.not1.i = icmp eq ptr %i.k, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.lcssa.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  store i8 %i.x, ptr %i.k, align 1, !tbaa !231
  store ptr %i.k, ptr %i.v, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<asio::detail::binder1<asio::detail::range_connect_op<asio::ip::tcp, asio::any_io_executor, std::vector<asio::ip::basic_endpoint<asio::ip::tcp>>, asio::detail::default_connect_condition, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, std::error_code>>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder0.1862", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !1796
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1797
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !1798
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1782, !nonnull !327, !align !478
  store ptr %i.d, ptr %4, align 8, !tbaa !1747
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !329  ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc8.thread, label %bb.b

.noexc8.thread:                                   ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !330
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !243

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #53
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #52
          to label %.noexc8 unwind label %bb.g    ; 5 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.q, ptr %i.e, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1748
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !330
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.noexc8 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !1656
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.h
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc8.thread
  %i.x = phi ptr [ null, %.noexc8.thread ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.o, %.noexc8.thread ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.m, %.noexc8.thread ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc8.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !1748
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1780
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1780
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1781
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !1781
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1263
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !531
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !330
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.an) #51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  store ptr null, ptr %i.b, align 8, !tbaa !1798
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !587 ; 4 uses
  %.not3.i = icmp eq ptr %i.ar, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !264
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !264
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.lcssa.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !231
  store i8 %i.ba, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.ay, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  call void @free(ptr noundef nonnull %0) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !1797
  br i1 %1, label %bb.f, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit

bb.f:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !232
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !1760
  invoke void @_ZN4asio6detail16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS2_14basic_endpointIS3_EESaIS7_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSB_13async_connectIS9_EEN12async_simple4coro4LazyISD_EERNS_19basic_stream_socketIS3_S4_EERKT_EUlOSM_E0_SK_EENSH_ISM_EET0_RT1_ENUlSM_E0_clINSB_21callback_awaitor_baseISD_NSB_16callback_awaitorISD_EEE15awaitor_handlerEEEDaSM_EUlDpOT_E_E7processIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvSD_iSM_SM_(ptr noundef nonnull align 8 dereferenceable(80) %4, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i.i, i32 noundef 0, ptr %i.x, ptr %i.bb)
          to label %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge unwind label %bb.h, !inline_history !5678

._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !329
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN4asio2ip14basic_endpointINS1_3tcpEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #51
  br label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit
  %i.bj = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit_crit_edge ], [ %i.x, %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptr5resetEv.exit ] ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11.thread, label %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11.thread: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i

_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0INS2_7binder1INS2_16range_connect_opINS1_2ip3tcpENS1_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS2_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS1_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEES1C_EEvRSQ_RSW_.exit
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #51
  %.pre12 = load ptr, ptr %i.b, align 8, !tbaa !1798 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %.not.i.i = icmp eq ptr %.pre12, null
  br i1 %.not.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre12, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !329 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre12, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !330
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #51
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i

_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i: ; preds = %bb.j, %bb.k, %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11.thread, %_ZN4asio6detail7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS4_14basic_endpointIS5_EESaIS9_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSD_13async_connectISB_EEN12async_simple4coro4LazyISF_EERNS_19basic_stream_socketIS5_S6_EERKT_EUlOSO_E0_SM_EENSJ_ISO_EET0_RT1_ENUlSO_E0_clINSD_21callback_awaitor_baseISF_NSD_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESF_EEED2Ev.exit11
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !1797 ; 5 uses
  %.not1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not1.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEE3ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0INS0_7binder1INS0_16range_connect_opINS_2ip3tcpENS_15any_io_executorESt6vectorINS6_14basic_endpointIS7_EESaISB_EENS0_25default_connect_conditionEZZN7coro_io8async_ioISt10error_codeZNSF_13async_connectISD_EEN12async_simple4coro4LazyISH_EERNS_19basic_stream_socketIS7_S8_EERKT_EUlOSQ_E0_SO_EENSL_ISQ_EET0_RT1_ENUlSQ_E0_clINSF_21callback_awaitor_baseISH_NSF_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESH_EEEESaIvEED2Ev.exit.i.i
  %i.bw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i: ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !587 ; 4 uses
  %.not3.i.i = icmp eq ptr %i.bz, null
  br i1 %.not3.i.i, label %.thread.i.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !264
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.preheader.preheader.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !264
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.m, label %.thread.i.i.i.i

end_hunk_1
