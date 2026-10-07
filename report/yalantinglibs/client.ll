Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client?download=true
inline.NumInlined: 70008
inline.NumDeleted: 19195
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1846 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit, label %bb.d

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
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  store i8 %i.q, ptr %i.d, align 1, !tbaa !231
  store ptr %i.d, ptr %i.o, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %3 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %4 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, asio::mutable_buffers_1, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::binder2.1958", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  store ptr %3, ptr %4, align 8, !tbaa !5850
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1836, !nonnull !327, !align !478 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !872
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1115 ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !1115
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !531
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1840 ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !1840
  store ptr null, ptr %i.b, align 8, !tbaa !1845
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = inttoptr i64 %i.j to ptr                 ; 4 uses
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.t, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.lcssa.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !231
  store i8 %i.ac, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.aa, align 8, !tbaa !264
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #44
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1846
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !232 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !530
  store i32 0, ptr %i.g, align 8, !tbaa !1826
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1841
  %i.af = add i64 %i.ae, %i.o                     ; 5 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !1841
  %i.ag = icmp ne i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ah = icmp ne i64 %i.o, 0
  %or.cond.not.not17.not22.i.i.i.i.i.i.i.i = or i1 %i.ah, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ult i64 %i.af, %i.aj
  %or.cond.not19.i.i.i.i.i.i.i.i = select i1 %or.cond.not.not17.not22.i.i.i.i.i.i.i.i, i1 %i.ak, i1 false
  %.not.i.i.i.i.i.i.i.i = xor i1 %i.ag, true
  %or.cond18.i.i.i.i.i.i.i.i = and i1 %or.cond.not19.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond18.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !llvm.loop !118

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !1842
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  %i.an = sub nuw i64 %i.aj, %i.af
  %spec.select.i1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 65536)
  store ptr %i.am, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i1.i.i.i.i.i.i.i.i.i, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !878
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS_15const_buffers_1ENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EES8_EEvRNS1_24base_implementation_typeERKSP_iRSR_RKSV_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.as)
          to label %.noexc unwind label %bb.g, !inline_history !5849

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !232
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.af, ptr %i.au, align 8, !tbaa !323
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !1087 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr nonnull %i.av)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit unwind label %bb.g, !inline_history !5849

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ax

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_11async_writeIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit: ; preds = %.noexc, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseINS_15const_buffers_1EE10do_performEPNS0_10reactor_opE(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1833
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !264
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1835
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_send1EiPKvmiRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %1 = zext i1 %i.h to i32
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1834
  %i.k = and i8 %i.j, 16
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !1847
  %.sroa.2.0.copyload.i18 = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !323
  %i.m = icmp ult i64 %i.l, %.sroa.2.0.copyload.i18
  %spec.select = select i1 %i.m, i32 2, i32 %1
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
  %i.d = tail call ptr @__errno_location() #56
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232
  %i.f = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f, !prof !233

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 0, ptr %4, align 8, !tbaa !565
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.e, ptr %4, align 8, !tbaa !232
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.j = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !233

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i15 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.n = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.o = icmp eq ptr %i.n, @_ZZN4asio15system_categoryEvE8instance
  %i.p = load i32, ptr %4, align 8
  %i.q = icmp eq i32 %i.p, 4
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %.critedge, label %bb.i, !llvm.loop !5851

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.s = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, !prof !233

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i17 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18: ; preds = %bb.i, %bb.j, %bb.k
  %i.w = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.x = icmp eq ptr %i.w, @_ZZN4asio15system_categoryEvE8instance
  %i.y = load i32, ptr %4, align 8
  %i.z = icmp eq i32 %i.y, 11
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %i.ab = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, !prof !233

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.ag = icmp eq ptr %i.af, @_ZZN4asio15system_categoryEvE8instance
  %i.ah = load i32, ptr %4, align 8
  %i.ai = icmp eq i32 %i.ah, 11
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %bb.e
  %.lcssa.sink = phi i64 [ %i.b, %bb.e ], [ 0, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !323
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEENS5_17mutable_buffers_1EEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSG_E_SA_EENSE_ISG_EESI_RT1_ENUlSG_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %3 = alloca %"class.asio::detail::write_op.1975", align 8 ; 10 uses
  %4 = alloca %"class.std::shared_ptr.954", align 8 ; 10 uses
  %5 = alloca %class.anon.1964, align 8           ; 8 uses
  %6 = alloca %class.anon.1965, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = load ptr, ptr %0, align 8, !tbaa !5854, !nonnull !327, !align !478 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1250 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1250
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !260
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !232
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !232
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1250
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5855, !nonnull !327, !align !478
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5856, !nonnull !327, !align !478
  store ptr %i.q, ptr %5, align 8, !tbaa !872
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1250
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !260
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !232
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !232
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11:   ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.y = invoke noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_11async_writeIN4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEENS8_17mutable_buffers_1EEENS_4coro4LazyIS6_EERT_T0_EUlOSI_E_SD_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSI_EUlNS_10SignalTypeEPNS_6SignalEE_EEEbSX_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11
  %i.z = xor i1 %i.y, true
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev:bb.a

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
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  store i8 %i.q, ptr %i.d, align 1, !tbaa !231
  store ptr %i.d, ptr %i.o, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %3 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %4 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::read_op<asio::basic_stream_socket<asio::ip::tcp>, asio::mutable_buffers_1, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::binder2.2017", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  store ptr %3, ptr %4, align 8, !tbaa !5923
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1896, !nonnull !327, !align !478 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !872
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1115 ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !1115
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !531
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1899 ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !1899
  store ptr null, ptr %i.b, align 8, !tbaa !1903
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = inttoptr i64 %i.j to ptr                 ; 4 uses
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.t, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.lcssa.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !231
  store i8 %i.ac, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.aa, align 8, !tbaa !264
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #44
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1904
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !232 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.21.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !530
  store i32 0, ptr %i.g, align 8, !tbaa !1886
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1900
  %i.af = add i64 %i.ae, %i.o                     ; 5 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !1900
  %i.ag = icmp ne i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ah = icmp ne i64 %i.o, 0
  %or.cond.not.not17.not22.i.i.i.i.i.i.i.i = or i1 %i.ah, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ult i64 %i.af, %i.aj
  %or.cond.not19.i.i.i.i.i.i.i.i = select i1 %or.cond.not.not17.not22.i.i.i.i.i.i.i.i, i1 %i.ak, i1 false
  %.not.i.i.i.i.i.i.i.i = xor i1 %i.ag, true
  %or.cond18.i.i.i.i.i.i.i.i = and i1 %or.cond.not19.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond18.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !llvm.loop !120

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !1852
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  %i.an = sub nuw i64 %i.aj, %i.af
  %spec.select.i1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 65536)
  store ptr %i.am, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i1.i.i.i.i.i.i.i.i.i, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !878
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES3_PKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_10async_readIS9_S3_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S9_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EES8_EEvRNS1_24base_implementation_typeERKSO_iRSQ_RKSU_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.as)
          to label %.noexc unwind label %bb.g, !inline_history !5922

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !232
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !530
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.af, ptr %i.au, align 8, !tbaa !323
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !1087 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr nonnull %i.av)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit unwind label %bb.g, !inline_history !5922

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ax

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSF_10async_readIS9_SA_EEN12async_simple4coro4LazyISJ_EERT_T0_EUlOSP_E_S9_EENSN_ISP_EESR_RT1_ENKUlSP_E_clINSF_21callback_awaitor_baseISJ_NSF_16callback_awaitorISJ_EEE15awaitor_handlerEEEDaSP_EUlDpOT_E_EESI_mEESaIvEE3ptrD2Ev.exit: ; preds = %.noexc, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_recv_op_baseINS_17mutable_buffers_1EE10do_performEPNS0_10reactor_opE(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1893
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !264
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1895
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !1894
  %i.h = and i8 %i.g, 16
  %i.i = icmp ne i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, i1 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %1 = zext i1 %i.l to i32
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.f, align 4, !tbaa !1894
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8, !tbaa !1847
  %i.p = icmp eq i64 %i.o, 0
  %spec.select = select i1 %i.p, i32 2, i32 %1
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
  %i.c = tail call ptr @__errno_location() #56
  %i.d = load i32, ptr %i.c, align 4, !tbaa !232
  %i.e = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i, !prof !233

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %bb.i

_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit: ; preds = %.critedge
  store i32 0, ptr %5, align 8, !tbaa !565
  %i.i = icmp eq i64 %i.a, 0
  %or.cond = and i1 %4, %i.i
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  %i.j = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !233

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 2, ptr %5, align 8, !tbaa !232
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !530
  br label %bb.s

bb.h:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  store i64 %i.a, ptr %6, align 8, !tbaa !323
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.d, ptr %5, align 8, !tbaa !232
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !233

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.r = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.s = icmp eq ptr %i.r, @_ZZN4asio15system_categoryEvE8instance
  %i.t = load i32, ptr %5, align 8
  %i.u = icmp eq i32 %i.t, 4
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge, label %bb.l, !llvm.loop !5924

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.w = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !233

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i22 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.aa = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.ab = icmp eq ptr %i.aa, @_ZZN4asio15system_categoryEvE8instance
  %i.ac = load i32, ptr %5, align 8
  %i.ad = icmp eq i32 %i.ac, 11
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.af = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.aj = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.ak = icmp eq ptr %i.aj, @_ZZN4asio15system_categoryEvE8instance
  %i.al = load i32, ptr %5, align 8
  %i.am = icmp eq i32 %i.al, 11
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !323
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEENS5_17mutable_buffers_1EEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSG_E_SA_EENSE_ISG_EESI_RT1_ENUlSG_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %3 = alloca %"class.asio::detail::read_op.2034", align 8 ; 10 uses
  %4 = alloca %"class.std::shared_ptr.954", align 8 ; 10 uses
  %5 = alloca %class.anon.2023, align 8           ; 8 uses
  %6 = alloca %class.anon.2024, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = load ptr, ptr %0, align 8, !tbaa !5927, !nonnull !327, !align !478 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1250 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1250
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !260
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !232
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !232
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1250
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5928, !nonnull !327, !align !478
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5929, !nonnull !327, !align !478
  store ptr %i.q, ptr %5, align 8, !tbaa !872
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1250
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !260
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e
end_hunk_1
begin_hunk_2_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder2INS4_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSD_NS4_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_11async_writeISB_SE_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_SB_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mEEEEvSV_:bb.a
  call void @__clang_call_terminate(ptr %i.aj) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit5:     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  tail call void @_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_11async_writeIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2438
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !2438
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2439 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit, label %bb.d

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
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  store i8 %i.q, ptr %i.d, align 1, !tbaa !231
  store ptr %i.d, ptr %i.o, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::const_buffer, 2>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2.3089", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !6783
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2431, !nonnull !327, !align !478
  store ptr %i.d, ptr %4, align 8, !tbaa !872
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !2318
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2421
  store i32 %i.i, ptr %i.g, align 8, !tbaa !2421
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1115
  store i64 %i.l, ptr %i.j, align 8, !tbaa !1115
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !531
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2434
  store i64 %i.q, ptr %i.o, align 8, !tbaa !2434
  store ptr null, ptr %i.b, align 8, !tbaa !2438
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.u, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !264
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !264
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !231
  store i8 %i.ad, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.ab, align 8, !tbaa !264
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #44
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !2439
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4asio6detail7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_11async_writeIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !6782

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.ae

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_send_op_baseISt5arrayINS_12const_bufferELm2EEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %1 = alloca %"class.asio::detail::buffer_sequence_adapter", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.05.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !264
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.46.0.copyload.i = load i64, ptr %.sroa.46.0..sroa_idx.i, align 8, !tbaa !323 ; 2 uses
  store ptr %.sroa.05.0.copyload.i, ptr %1, align 8, !tbaa !264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.46.0.copyload.i, ptr %i.b, align 8, !tbaa !2441
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !264
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !323 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !264
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %i.e, align 8, !tbaa !2441
  %i.f = add i64 %.sroa.4.0.copyload.i, %.sroa.46.0.copyload.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !6785
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2428
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2430
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = call noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRSt10error_codeRm(i32 noundef %i.i, ptr noundef nonnull %1, i64 noundef 2, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %2 = zext i1 %i.n to i32
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i8, ptr %i.o, align 4, !tbaa !2429
  %i.q = and i8 %i.p, 16
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.m, align 8, !tbaa !1847
  %i.s = load i64, ptr %i.g, align 8, !tbaa !6785
  %i.t = icmp ult i64 %i.r, %i.s
  %spec.select = select i1 %i.t, i32 2, i32 %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !2444
  store i64 %i.b, ptr %i.c, align 8, !tbaa !2445
  %i.e = call i64 @sendmsg(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %i.d) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.g = tail call ptr @__errno_location() #56
  %i.h = load i32, ptr %i.g, align 4, !tbaa !232
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f, !prof !233

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 0, ptr %4, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.h, ptr %4, align 8, !tbaa !232
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !530
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.m = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !233

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.q = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.r = icmp eq ptr %i.q, @_ZZN4asio15system_categoryEvE8instance
  %i.s = load i32, ptr %4, align 8
  %i.t = icmp eq i32 %i.s, 4
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %.critedge, label %bb.i, !llvm.loop !6786

bb.i:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.v = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, !prof !233

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i17 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18: ; preds = %bb.i, %bb.j, %bb.k
  %i.z = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.aa = icmp eq ptr %i.z, @_ZZN4asio15system_categoryEvE8instance
  %i.ab = load i32, ptr %4, align 8
  %i.ac = icmp eq i32 %i.ab, 11
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %i.ae = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, !prof !233

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i20 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21: ; preds = %bb.l, %bb.m, %bb.n
  %i.ai = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.aj = icmp eq ptr %i.ai, @_ZZN4asio15system_categoryEvE8instance
  %i.ak = load i32, ptr %4, align 8
  %i.al = icmp eq i32 %i.ak, 11
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %bb.e
  %.lcssa.sink = phi i64 [ %i.e, %bb.e ], [ 0, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !323
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit18 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit21 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_12const_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.2663", align 8  ; 7 uses
  %3 = alloca %"class.asio::detail::write_op.3106", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.954", align 8 ; 10 uses
  %5 = alloca %class.anon.3095, align 8           ; 8 uses
  %6 = alloca %class.anon.3096, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = load ptr, ptr %0, align 8, !tbaa !6791, !nonnull !327, !align !478 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1250 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1250
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !260
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !232
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !232
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1250
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !6792, !nonnull !327, !align !478
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6793, !nonnull !327, !align !478
  store ptr %i.q, ptr %5, align 8, !tbaa !872
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !1250
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !260
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i10 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !232
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !232
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit11
end_hunk_2
begin_hunk_3_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder2INS4_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSD_NS4_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSI_10async_readISB_SE_EEN12async_simple4coro4LazyISM_EERT_T0_EUlOSS_E_SB_EENSQ_ISS_EESU_RT1_ENKUlSS_E_clINSI_21callback_awaitor_baseISM_NSI_16callback_awaitorISM_EEE15awaitor_handlerEEEDaSS_EUlDpOT_E_EESL_mEEEEvSV_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  tail call void @_ZN4asio6detail7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_10async_readIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2743
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !2743
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2744 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit, label %bb.d

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
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  store i8 %i.q, ptr %i.d, align 1, !tbaa !231
  store ptr %i.d, ptr %i.o, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<asio::detail::read_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::mutable_buffer, 2>, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, std::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder2.3542", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !7316
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2737, !nonnull !327, !align !478
  store ptr %i.d, ptr %4, align 8, !tbaa !872
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !2318
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2727
  store i32 %i.i, ptr %i.g, align 8, !tbaa !2727
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1115
  store i64 %i.l, ptr %i.j, align 8, !tbaa !1115
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !531
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2740
  store i64 %i.q, ptr %i.o, align 8, !tbaa !2740
  store ptr null, ptr %i.b, align 8, !tbaa !2743
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !587  ; 4 uses
  %.not3.i = icmp eq ptr %i.u, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !264
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !264
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !231
  store i8 %i.ad, ptr %0, align 8, !tbaa !231
  store ptr %0, ptr %i.ab, align 8, !tbaa !264
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #44
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !2744
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4asio6detail7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKS9_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSE_10async_readIS7_SA_EEN12async_simple4coro4LazyISI_EERT_T0_EUlOSO_E_S7_EENSM_ISO_EESQ_RT1_ENKUlSO_E_clINSE_21callback_awaitor_baseISI_NSE_16callback_awaitorISI_EEE15awaitor_handlerEEEDaSO_EUlDpOT_E_EESH_mEclEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !7315

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.ae

_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEPKSB_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readIS9_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_S9_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EESJ_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_recv_op_baseISt5arrayINS_14mutable_bufferELm2EEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %1 = alloca %"class.asio::detail::buffer_sequence_adapter.3548", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.05.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !264
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.46.0.copyload.i = load i64, ptr %.sroa.46.0..sroa_idx.i, align 8, !tbaa !323 ; 2 uses
  store ptr %.sroa.05.0.copyload.i, ptr %1, align 8, !tbaa !264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.46.0.copyload.i, ptr %i.b, align 8, !tbaa !2441
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !264
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !323 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !264
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %i.e, align 8, !tbaa !2441
  %i.f = add i64 %.sroa.4.0.copyload.i, %.sroa.46.0.copyload.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !7318
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2734
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2736
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !2735
  %i.n = and i8 %i.m, 16
  %i.o = icmp ne i8 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = call noundef zeroext i1 @_ZN4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRSt10error_codeRm(i32 noundef %i.i, ptr noundef nonnull %1, i64 noundef 2, i32 noundef %i.k, i1 noundef zeroext %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 2 uses
  %2 = zext i1 %i.r to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.l, align 4, !tbaa !2735
  %i.t = and i8 %i.s, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.q, align 8, !tbaa !1847
  %i.v = icmp eq i64 %i.u, 0
  %spec.select = select i1 %i.v, i32 2, i32 %2
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !2444
  store i64 %i.b, ptr %i.c, align 8, !tbaa !2445
  %i.d = call i64 @recvmsg(i32 noundef %0, ptr noundef nonnull %7, i32 noundef %3) ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit

bb.b:                                             ; preds = %.critedge
  %i.f = tail call ptr @__errno_location() #56
  %i.g = load i32, ptr %i.f, align 4, !tbaa !232
  %i.h = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i, !prof !233

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %bb.i

_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit: ; preds = %.critedge
  store i32 0, ptr %5, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.l = icmp eq i64 %i.d, 0
  %or.cond = and i1 %4, %i.l
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit
  %i.m = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !233

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 2, ptr %5, align 8, !tbaa !232
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !530
  br label %bb.s

bb.h:                                             ; preds = %_ZN4asio6detail10socket_ops4recvEiP5iovecmiRSt10error_code.exit
  store i64 %i.d, ptr %6, align 8, !tbaa !323
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.g, ptr %5, align 8, !tbaa !232
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !530
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.q = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !233

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i20 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.u = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.v = icmp eq ptr %i.u, @_ZZN4asio15system_categoryEvE8instance
  %i.w = load i32, ptr %5, align 8
  %i.x = icmp eq i32 %i.w, 4
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %.critedge, label %bb.l, !llvm.loop !7319

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.z = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !233

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i22 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.ad = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.ae = icmp eq ptr %i.ad, @_ZZN4asio15system_categoryEvE8instance
  %i.af = load i32, ptr %5, align 8
  %i.ag = icmp eq i32 %i.af, 11
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.ai = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.ak = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  %.not.i.i.i.i25 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #44
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.am = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !566
  %i.an = icmp eq ptr %i.am, @_ZZN4asio15system_categoryEvE8instance
  %i.ao = load i32, ptr %5, align 8
  %i.ap = icmp eq i32 %i.ao, 11
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !323
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.3141", align 8  ; 7 uses
  %3 = alloca %"class.asio::detail::read_op.3560", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.954", align 8 ; 10 uses
  %5 = alloca %class.anon.3549, align 8           ; 8 uses
  %6 = alloca %class.anon.3550, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.a = load ptr, ptr %0, align 8, !tbaa !7324, !nonnull !327, !align !478 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1250 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !1250
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !260
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !232
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !232
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !1250
  %.pre25 = load ptr, ptr %i.c, align 8, !tbaa !260
  br label %_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIiEEC2ERKS2_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %.pre25, %bb.d ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7325, !nonnull !327, !align !478
end_hunk_3
