Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS9_2ip3tcpENS9_15any_io_executorEEESt6vectorINS9_12const_bufferESaISG_EEEENS1_4coro4LazyIS7_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_EUlvE_SD_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSM_ENKUlvE_clEv:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN12async_simple3TryIvED2Ev.exit7, %bb.b
  %.merged = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.s, %_ZN12async_simple3TryIvED2Ev.exit7 ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %_ZN12async_simple3TryIvED2Ev.exit7
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3703
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !3703
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3704 ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !676  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !675  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !306
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i8, ptr %i.p, align 1, !tbaa !279
  store i8 %i.q, ptr %i.d, align 1, !tbaa !279
  store ptr %i.d, ptr %i.o, align 8, !tbaa !306
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #43
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.317", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder0<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:169:19)>, std::allocator<void>>::ptr.4548", align 8 ; 7 uses
  %4 = alloca %"class.asio::detail::binder0.4546", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %2, ptr %3, align 8, !tbaa !9877
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !3700
  store ptr null, ptr %i.b, align 8, !tbaa !3703
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !676  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !675  ; 4 uses
  %.not3.i = icmp eq ptr %i.g, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !306
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !279
  store i8 %i.p, ptr %0, align 8, !tbaa !279
  store ptr %0, ptr %i.n, align 8, !tbaa !306
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #43
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !3704
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt4pairISt10error_codemEZNS_11async_writeIN4asio19basic_stream_socketINS9_2ip3tcpENS9_15any_io_executorEEESt6vectorINS9_12const_bufferESaISG_EEEENS1_4coro4LazyIS7_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_EUlvE_SD_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSM_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.q

_ZN4asio6detail17executor_function4implINS0_7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZNS4_8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaISK_EEEENS6_4coro4LazyISC_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_EUlvE_SH_EclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvSQ_EUlvE_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7cinatra6finishIvEEvRNS_12sha1_contextEPv(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9878
  %i.d = load i64, ptr %0, align 8, !tbaa !3269   ; 5 uses
  %i.e = shl i64 %i.c, 9
  %i.f = shl i64 %i.d, 3
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.i = add i64 %i.d, 1                          ; 3 uses
  store i64 %i.i, ptr %0, align 8, !tbaa !3269
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  store i8 -128, ptr %i.j, align 1, !tbaa !279
  %i.k = icmp ult i64 %i.i, 64
  br i1 %i.k, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @_ZN7cinatra4sha110make_blockEPKhPj(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.l, i64 37
  %i.m = sub nsw i64 63, %i.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 range(i64 0, 65) %i.m, i1 false), !tbaa !279
  store i64 64, ptr %0, align 8, !tbaa !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @_ZN7cinatra4sha110make_blockEPKhPj(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a)
  %i.n = icmp samesign ugt i64 %i.i, 56
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.thread, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN7cinatra4sha19transformIvEEvPjS2_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a)
          to label %.preheader34.preheader unwind label %bb.d

.preheader34.preheader:                           ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, i8 0, i64 56, i1 false), !tbaa !280
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader34.preheader, %bb.b
  %i.p = trunc i64 %i.g to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.p, ptr %i.q, align 4, !tbaa !280
  %i.r = lshr i64 %i.g, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.s, ptr %i.t, align 8, !tbaa !280
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  invoke void @_ZN7cinatra4sha19transformIvEEvPjS2_(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a)
          to label %.preheader.preheader unwind label %bb.d

.preheader.preheader:                             ; preds = %.loopexit
  %i.v = load i32, ptr %i.u, align 8, !tbaa !280
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !279
  %i.y = load i32, ptr %i.u, align 8, !tbaa !280
  %i.z = lshr i32 %i.y, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !279
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !280
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !279
  %2 = load i32, ptr %i.u, align 8, !tbaa !280
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  store i8 %4, ptr %1, align 1, !tbaa !279
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !280
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !279
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !280
  %i.am = lshr i32 %i.al, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !279
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !280
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !279
  %5 = load i32, ptr %i.ah, align 4, !tbaa !280
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  store i8 %7, ptr %i.ag, align 1, !tbaa !279
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !280
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !279
  %i.ay = load i32, ptr %i.au, align 8, !tbaa !280
  %i.az = lshr i32 %i.ay, 8
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !279
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !280
  %i.bd = lshr i32 %i.bc, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !279
  %8 = load i32, ptr %i.au, align 8, !tbaa !280
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  store i8 %10, ptr %i.at, align 1, !tbaa !279
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !280
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !279
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !280
  %i.bm = lshr i32 %i.bl, 8
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !279
  %i.bp = load i32, ptr %i.bh, align 4, !tbaa !280
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !279
  %11 = load i32, ptr %i.bh, align 4, !tbaa !280
  %12 = lshr i32 %11, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr %i.bg, align 1, !tbaa !279
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !280
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !279
  %i.by = load i32, ptr %i.bu, align 8, !tbaa !280
  %i.bz = lshr i32 %i.by, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !279
  %i.cc = load i32, ptr %i.bu, align 8, !tbaa !280
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !279
  %14 = load i32, ptr %i.bu, align 8, !tbaa !280
  %15 = lshr i32 %14, 24
  %16 = trunc nuw i32 %15 to i8
  store i8 %16, ptr %i.bt, align 1, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void

bb.d:                                             ; preds = %.loopexit, %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cinatra18coro_http_response10add_headerIPKcS3_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cinatra::resp_header", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !283
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.908) #54
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #43 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.909) #54
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !284

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #54
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #55 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !287
  store i64 %i.d, ptr %i.b, align 8, !tbaa !279
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !279
  store i8 %i.k, ptr %i.j, align 1, !tbaa !279
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !288
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !279
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !283
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.908) #54
          to label %.noexc17 unwind label %bb.t

.noexc17:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43 ; 8 uses
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.j, label %._crit_edge.i.i13

bb.j:                                             ; preds = %bb.i
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %.noexc.i16, label %bb.k

.noexc.i16:                                       ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.909) #54
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %.noexc.i16
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc11.i15, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14, !prof !284

.noexc11.i15:                                     ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #54
          to label %.noexc19 unwind label %bb.t

.noexc19:                                         ; preds = %.noexc11.i15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14: ; preds = %bb.k
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #55
          to label %.noexc20 unwind label %bb.t   ; 2 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14
  store ptr %i.v, ptr %i.n, align 8, !tbaa !287
  store i64 %i.q, ptr %i.o, align 8, !tbaa !279
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc20, %bb.i
  %i.w = phi ptr [ %i.v, %.noexc20 ], [ %i.o, %bb.i ] ; 3 uses
  switch i64 %i.q, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i13
  %i.x = load i8, ptr %2, align 1, !tbaa !279
  store i8 %i.x, ptr %i.w, align 1, !tbaa !279
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %2, i64 %i.q, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i13
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store i64 %i.q, ptr %i.y, align 8, !tbaa !288
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.z, align 1, !tbaa !279
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3251 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3252
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !283
  %i.af = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !288 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !287
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !279
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !279
  %.pre = load i64, ptr %i.l, align 8, !tbaa !288
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.p
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.p ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !288
  store ptr %i.b, ptr %3, align 8, !tbaa !287
  store i64 0, ptr %i.l, align 8, !tbaa !288
  store i8 0, ptr %i.b, align 8, !tbaa !279
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !283
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !287 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ar = load i64, ptr %i.y, align 8, !tbaa !288 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIN7cinatra11resp_headerESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !287
  %i.au = load i64, ptr %i.o, align 8, !tbaa !279
end_hunk_0
