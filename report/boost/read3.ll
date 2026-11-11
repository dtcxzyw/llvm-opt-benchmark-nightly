Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZN5boost4asio6detail17executor_function8completeINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEEEvPNS2_9impl_baseEb
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function8completeINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEEEvPNS2_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.19", align 1 ; 4 uses
  %3 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::beast::websocket::stream<boost::beast::test::basic_stream<> &>::impl_type::timeout_handler<boost::asio::any_io_executor>, boost::system::error_code>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::detail::binder1", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %2, ptr %3, align 8, !tbaa !9661
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !2409
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.c) #35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !1356
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !1356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !1634
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %i.c) #35
  store ptr null, ptr %i.b, align 8, !tbaa !2408
  %i.j = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.d     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1356
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1356
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.lcssa.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1321
  store i8 %i.s, ptr %0, align 8, !tbaa !1321
  store ptr %0, ptr %i.q, align 8, !tbaa !1356
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %0) #35
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.b, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !2409
  br i1 %1, label %bb.c, label %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEEclEv.exit

bb.c:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptr5resetEv.exit
  invoke void @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type15timeout_handlerIS6_EclENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.h)
          to label %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEEclEv.exit unwind label %bb.d, !inline_history !117

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.t

_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEEclEv.exit: ; preds = %bb.c, %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptr5resetEv.exit
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !1464 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEEclEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !1312
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #35, !inline_history !105
  br label %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev.exit

_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev.exit: ; preds = %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEEclEv.exit, %bb.e, %bb.f
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !2408 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1464 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEED2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !1312
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !9660
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEED2Ev.exit.i.i

_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %i.ak) #35
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEED2Ev.exit.i.i, %_ZN5boost4asio6detail7binder1INS_5beast9websocket6streamIRNS3_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerIS8_EENS_6system10error_codeEED2Ev.exit
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !2409 ; 5 uses
  %.not1.i.i = icmp eq ptr %i.al, null
  br i1 %.not1.i.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc.i unwind label %bb.m   ; 4 uses

.noexc.i:                                         ; preds = %bb.k
  %.not3.i.i = icmp eq ptr %i.am, null
  br i1 %.not3.i.i, label %.thread.i.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.noexc.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1356
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.preheader.preheader.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1356
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %.thread.i.i.i.i

bb.l:                                             ; preds = %.preheader.1.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.lcssa.i.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i.i ], [ 5, %.preheader.1.i.i.i.i ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.lcssa.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.av = load i8, ptr %i.au, align 1, !tbaa !1321
  store i8 %i.av, ptr %i.al, align 1, !tbaa !1321
  store ptr %i.al, ptr %i.at, align 8, !tbaa !1356
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptrD2Ev.exit

.thread.i.i.i.i:                                  ; preds = %.preheader.1.i.i.i.i, %.noexc.i
  call void @free(ptr noundef nonnull %i.al) #35
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptrD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #36
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast9websocket6streamIRNS5_4test12basic_streamINS0_15any_io_executorEEELb1EE9impl_type15timeout_handlerISA_EENS_6system10error_codeEEESaIvEE3ptrD2Ev.exit: ; preds = %bb.j, %bb.l, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost4asio15any_io_executorC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE13enqueue_timerERKNS4_10time_pointIS6_NS4_8durationIlSt5ratioILl1ELl1000000000EEEEEERNSD_14per_timer_dataEPNS1_7wait_opE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::timer_queue<boost::asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, boost::asio::wait_traits<std::chrono::_V2::steady_clock>>, boost::asio::execution_context::allocator<void>>::heap_entry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1747
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1726
  %.not = icmp eq ptr %2, %i.e
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1728 ; 7 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1727 ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !1711
  %i.p = load i64, ptr %1, align 8, !tbaa !1318   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1731
  %.not.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.p, ptr %i.i, align 8, !tbaa !1318
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1729
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !1728
  br label %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.m, 9223372036854775792
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #37
  unreachable

_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.n
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !1732 ; 2 uses
  %i.z = shl nuw nsw i64 %i.x, 4
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !1312
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.z, i64 noundef 8), !inline_history !9662 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.m ; 2 uses
  store i64 %i.p, ptr %i.ae, align 8, !tbaa !1318
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx22, align 8, !tbaa !1729
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE11_S_relocateEPSF_SI_SI_RSG_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1730, !alias.scope !9667
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE11_S_relocateEPSF_SI_SI_RSG_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE11_S_relocateEPSF_SI_SI_RSG_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE11_S_relocateEPSF_SI_SI_RSG_.exit22.i.i
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !1731
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.l
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !1732 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1312
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.j, i64 noundef %i.ak, i64 noundef 8), !inline_history !9666
  br label %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i

_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE11_S_relocateEPSF_SI_SI_RSG_.exit22.i.i
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !1727
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !1728
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.x
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !1731
  %.pre = ptrtoint ptr %i.ad to i64
  br label %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit

_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit: ; preds = %bb.d, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.l, %bb.d ], [ %.pre, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i ]
  %.pre.i = phi ptr [ %i.j, %bb.d ], [ %i.ad, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i ]
  %i.aq = phi ptr [ %i.s, %bb.d ], [ %i.ah, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE17_M_realloc_insertIJRKSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i ]
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %.pre-phi
  %i.at = ashr exact i64 %i.as, 4
  %i.au = add nsw i64 %i.at, -1                   ; 2 uses
  %.not11.i = icmp eq i64 %i.au, 0
  br i1 %.not11.i, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit, %bb.h
  %i.av = phi ptr [ %i.bd, %bb.h ], [ %.pre.i, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit ] ; 2 uses
  %.0812.i = phi i64 [ %i.ax, %bb.h ], [ %i.au, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit ] ; 4 uses
  %i.aw = add nsw i64 %.0812.i, -1
  %i.ax = lshr i64 %i.aw, 1                       ; 6 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0812.i ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !1318
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.az, align 8, !tbaa !1318
  %i.ba = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.ba, label %bb.h, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit

bb.h:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !1730
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !1730
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !1727
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1730
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !1727 ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.0812.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1740
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.0812.i, ptr %i.bh, align 8, !tbaa !1711
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ax
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1740
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.ax, ptr %i.bl, align 8, !tbaa !1711
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i19 = icmp eq i64 %i.ax, 0
  br i1 %.not.i19, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit, label %.lr.ph.i

_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit: ; preds = %bb.h, %.lr.ph.i, %_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEE9push_backERKSF_.exit
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !1726 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1746
  store ptr null, ptr %i.a, align 8, !tbaa !1747
  %.not18 = icmp eq ptr %i.bm, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %2, ptr %i.bo, align 8, !tbaa !1747
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE7up_heapEm.exit
  store ptr %2, ptr %i.d, align 8, !tbaa !1726
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  store ptr null, ptr %3, align 8, !tbaa !1651
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1742 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bq, null
  %..i = select i1 %.not.i20, ptr %2, ptr %i.bq
  store ptr %3, ptr %..i, align 8, !tbaa !1356
  store ptr %3, ptr %i.bp, align 8, !tbaa !1742
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1711
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %2, align 8, !tbaa !1741
  %i.bv = icmp eq ptr %i.bu, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bw = phi i1 [ false, %bb.k ], [ %i.bv, %bb.l ]
  ret i1 %i.bw
}

declare void @_ZN5boost4asio6detail13epoll_reactor14update_timeoutEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #9

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionINS_12bad_weak_ptrEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #35 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.e, align 8, !tbaa !1658
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 -1, ptr %i.f, align 4, !tbaa !1659
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_12bad_weak_ptrEEE, i64 16), ptr %i.a, align 8, !tbaa !1312
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_12bad_weak_ptrEEE, i64 64), ptr %i.b, align 8, !tbaa !1312
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_12bad_weak_ptrEEE, i64 104), ptr %i.c, align 8, !tbaa !1312
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINS_12bad_weak_ptrEEE, ptr nonnull @_ZN5boost10wrapexceptINS_12bad_weak_ptrEED2Ev) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_12bad_weak_ptrEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !1312
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1660 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1312
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !20 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #36
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptINS_12bad_weak_ptrEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #40 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !1312
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12bad_weak_ptrE, i64 16), ptr %i.b, align 8, !tbaa !1312
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !1312
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1660 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1660
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1312
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %.body, !inline_history !9668

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #35, !inline_history !9670
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #38
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_12bad_weak_ptrEEE, i64 16), ptr %i.a, align 8, !tbaa !1312
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_12bad_weak_ptrEEE, i64 64), ptr %i.b, align 8, !tbaa !1312
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_12bad_weak_ptrEEE, i64 104), ptr %i.c, align 8, !tbaa !1312
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %_ZN5boost10wrapexceptINS_12bad_weak_ptrEE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptINS_12bad_weak_ptrEE7deleterD2Ev.exit7

_ZN5boost10wrapexceptINS_12bad_weak_ptrEE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptINS_12bad_weak_ptrEE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !1312
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #35, !inline_history !9669
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptINS_12bad_weak_ptrEE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.n, %_ZN5boost10wrapexceptINS_12bad_weak_ptrEE7deleterD2Ev.exit7 ], [ %i.j, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost10wrapexceptINS_12bad_weak_ptrEE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #35 ; 3 uses
  invoke void @_ZN5boost10wrapexceptINS_12bad_weak_ptrEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINS_12bad_weak_ptrEEE, ptr nonnull @_ZN5boost10wrapexceptINS_12bad_weak_ptrEED2Ev) #37
  unreachable
end_hunk_0
