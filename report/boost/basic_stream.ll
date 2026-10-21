Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_stream?download=true
inline.NumInlined: 19842
inline.NumDeleted: 6964
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev:bb.a
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.h, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #36, !inline_history !5
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit: ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit2, %bb.f, %bb.g, %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_EE, i64 16), ptr %0, align 8, !tbaa !271
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !779, !range !309, !noundef !310
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i

bb.i:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !351
  %i.ad = and i64 %i.ac, -4
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !611, !nonnull !310, !align !313 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 seq_cst, align 8
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5boost4asio6detail9scheduler4stopEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ag)
          to label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i unwind label %bb.k, !inline_history !1161

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #37, !inline_history !1161
  unreachable

_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i: ; preds = %bb.j, %bb.i, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !316
  %i.ao = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 789)
          to label %_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED2Ev.exit unwind label %bb.l, !inline_history !1161 ; 0 uses

bb.l:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #37, !inline_history !1161
  unreachable

_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED2Ev.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_E18before_invoke_hookEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_EE, i64 16), ptr %0, align 8, !tbaa !271
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !779, !range !309, !noundef !310
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !351
  %i.f = and i64 %i.e, -4
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !611, !nonnull !310, !align !313 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.k = atomicrmw sub ptr %i.j, i64 1 seq_cst, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost4asio6detail9scheduler4stopEv(ptr noundef nonnull align 8 dereferenceable(272) %i.i)
          to label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #37
  unreachable

_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !316
  %i.q = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 789)
          to label %_ZZN5boost5beast17basic_stream_test11testConnectEvEN16iterator_handlerD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #37
  unreachable

_ZZN5boost5beast17basic_stream_test11testConnectEvEN16iterator_handlerD2Ev.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_EE, i64 16), ptr %0, align 8, !tbaa !271
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !779, !range !309, !noundef !310
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !351
  %i.f = and i64 %i.e, -4
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !611, !nonnull !310, !align !313 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.k = atomicrmw sub ptr %i.j, i64 1 seq_cst, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost4asio6detail9scheduler4stopEv(ptr noundef nonnull align 8 dereferenceable(272) %i.i)
          to label %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i unwind label %bb.d, !inline_history !1161

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #37, !inline_history !1161
  unreachable

_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !316
  %i.q = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 789)
          to label %_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED2Ev.exit unwind label %bb.e, !inline_history !1161 ; 0 uses

bb.e:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #37, !inline_history !1161
  unreachable

_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED2Ev.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_10io_context19basic_executor_typeISaIvELm0EEEvvED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail19iterator_connect_opINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEPKNS3_14basic_endpointIS4_EENS_5beast6detail12any_endpointENSD_12basic_streamIS4_S8_NSD_21unlimited_rate_policyEE3ops10connect_opIZNSD_17basic_stream_test11testConnectEvE16iterator_handlerEEEclENS_6system10error_codeEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %4 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %5 = alloca %"class.boost::asio::basic_socket<boost::asio::ip::tcp, boost::asio::io_context::basic_executor_type<std::allocator<void>, 0>>::initiate_async_connect", align 8 ; 4 uses
  %6 = alloca %"class.boost::asio::detail::initiate_post_with_executor", align 8 ; 5 uses
  %7 = alloca %"struct.boost::asio::detail::empty_work_function", align 1 ; 4 uses
  %8 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  %9 = alloca %"class.boost::asio::detail::binder1.548", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %2, ptr %i.a, align 8, !tbaa !1160
  %cond = icmp eq i32 %2, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1162 ; 3 uses
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !1162 ; 4 uses
  %.not.i.i38 = icmp eq ptr %.pre, %.pre26        ; 3 uses
  br i1 %cond, label %._crit_edge.thread, label %._crit_edge27

._crit_edge:                                      ; preds = %_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit, %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 28 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %.pre26           ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, ptr %.pre26, ptr %i.b
  store ptr %spec.select.i.i, ptr %.phi.trans.insert, align 8, !tbaa !1162
  br i1 %.not.i.i, label %bb.f, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %spec.select.i.i39 = select i1 %.not.i.i38, ptr %.pre26, ptr %.pre
  store ptr %spec.select.i.i39, ptr %.phi.trans.insert, align 8, !tbaa !1162
  br i1 %.not.i.i38, label %.thread, label %._crit_edge.thread._crit_edge

._crit_edge.thread._crit_edge:                    ; preds = %._crit_edge.thread
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !4087
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread._crit_edge, %._crit_edge
  %10 = phi ptr [ %.pre43, %._crit_edge.thread._crit_edge ], [ %i.bz, %._crit_edge ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %10, align 8, !tbaa !373
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @_ZN5boost4asio6detail28reactive_socket_service_base5closeERNS2_24base_implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, ptr noundef nonnull align 8 dereferenceable(33) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.f = load ptr, ptr %11, align 8, !tbaa !4087, !nonnull !310, !align !313 ; 4 uses
  %i.g = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1158 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !376
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %bb.c, label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EENS_5beast6detail12any_endpointENSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSG_17basic_stream_test11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISS_ELi0EEEvEEfp0_fp_clL_ZSW_IRSU_ESY_vEEEERSE_OSS_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.g, align 4, !tbaa !280
  %i.k = icmp eq i16 %i.j, 2
  %spec.select.i.i35 = select i1 %i.k, i32 2, i32 10 ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !4088
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @_ZN5boost4asio6detail28reactive_socket_service_base7do_openERNS2_24base_implementation_typeEiiiRNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i32 noundef %spec.select.i.i35, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !4088, !inline_history !4077
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !290, !noalias !4088 ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread12.i.i, label %bb.d

_ZNK5boost6system10error_codecvbEv.exit.thread12.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !4088
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %_ZNK5boost6system10error_codecvbEv.exit.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !4088
  br label %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i

_ZNK5boost6system10error_codecvbEv.exit.i.i:      ; preds = %bb.d
  %i.r = load i32, ptr %3, align 8, !tbaa !403, !noalias !4088
  %.not.i.i37 = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !4088
  br i1 %.not.i.i37, label %bb.e, label %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i

bb.e:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread12.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %spec.select.i.i35, ptr %i.s, align 8, !tbaa !374, !noalias !4088
  br label %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i

_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i: ; preds = %bb.e, %_ZNK5boost6system10error_codecvbEv.exit.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.5.0.copyload4.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !tbaa !277, !noalias !4088 ; 3 uses
  %switch.i.i.i.i36 = icmp ult i64 %.sroa.5.0.copyload4.i.i.i, 2
  %i.t = and i64 %.sroa.5.0.copyload4.i.i.i, 1
  %i.u = or disjoint i64 %i.t, ptrtoint (ptr @_ZZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeEE3loc to i64)
  %.sroa.5.0.i.i.i = select i1 %switch.i.i.i.i36, i64 %.sroa.5.0.copyload4.i.i.i, i64 %i.u
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !tbaa !277, !noalias !4088
  br label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EENS_5beast6detail12any_endpointENSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSG_17basic_stream_test11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISS_ELi0EEEvEEfp0_fp_clL_ZSW_IRSU_ESY_vEEEERSE_OSS_.exit

_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EENS_5beast6detail12any_endpointENSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSG_17basic_stream_test11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISS_ELi0EEEvEEfp0_fp_clL_ZSW_IRSU_ESY_vEEEERSE_OSS_.exit: ; preds = %bb.b, %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.f, ptr %5, align 8, !tbaa !1054
  call void @_ZNK5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE22initiate_async_connectclINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EENS_5beast6detail12any_endpointENSH_12basic_streamIS3_S7_NSH_21unlimited_rate_policyEE3ops10connect_opIZNSH_17basic_stream_test11testConnectEvE16iterator_handlerEEEEEEvOT_RSF_RKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !4078
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.q

bb.f:                                             ; preds = %._crit_edge
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.g   ; 4 uses

.noexc.i:                                         ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !288, !noalias !4089
  %i.y = and i64 %i.x, -2
  %switch.i.i.i.i = icmp eq i64 %i.y, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

bb.g:                                             ; preds = %.thread
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #37
  unreachable

_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %.noexc.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !271, !noalias !4089
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !4089
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(52) %i.v, i32 noundef 3) #36, !noalias !4089, !inline_history !99
  br i1 %i.ae, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.h

_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.af = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 3, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !280
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !277
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  %i.ah = load i64, ptr %0, align 8, !tbaa !1099, !noalias !4090
  store i64 %i.ah, ptr %9, align 8, !tbaa !1099, !alias.scope !4090
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !noalias !4090
  store i8 %i.ak, ptr %i.ai, align 8, !alias.scope !4090
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !314
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !4087, !nonnull !310, !align !313
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !314, !alias.scope !4090
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aq = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !1159, !noalias !4090
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !1159, !alias.scope !4090
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.as = load i32, ptr %i.a, align 8, !tbaa !1160, !noalias !4090
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !1160, !alias.scope !4090
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !375, !range !309, !noalias !4090, !noundef !310
  store i8 1, ptr %i.av, align 8, !tbaa !375, !noalias !4090
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !479, !alias.scope !4090
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !351, !noalias !4090
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !351, !alias.scope !4090
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !779, !range !309, !noalias !4090, !noundef !310
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !779, !alias.scope !4090
  store i8 0, ptr %i.bb, align 8, !tbaa !779, !noalias !4090
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1154, !noalias !4090
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !1154, !alias.scope !4090
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEE, i64 16), ptr %i.at, align 8, !tbaa !271, !alias.scope !4090
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !314, !noalias !4090
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !314, !alias.scope !4090
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !noalias !4090
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !777, !noalias !4090
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !777, !alias.scope !4090
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !375, !range !309, !noalias !4090, !noundef !310
  store i8 0, ptr %i.bn, align 8, !tbaa !375, !noalias !4090
  store i8 %i.bo, ptr %i.bm, align 8, !tbaa !776, !alias.scope !4090
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !777, !noalias !4090
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !777, !alias.scope !4090
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !375, !range !309, !noalias !4090, !noundef !310
  store i8 0, ptr %i.bt, align 8, !tbaa !375, !noalias !4090
  store i8 %i.bu, ptr %i.bs, align 8, !tbaa !776, !alias.scope !4090
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !459
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bw = load i64, ptr %i.ao, align 8, !tbaa !351
  store i64 %i.bw, ptr %6, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZNK5boost4asio6detail27initiate_post_with_executorINS0_10io_context19basic_executor_typeISaIvELm0EEEEclINS1_7binder1INS1_19iterator_connect_opINS0_2ip3tcpES6_PKNSB_14basic_endpointISC_EENS_5beast6detail12any_endpointENSH_12basic_streamISC_S6_NSH_21unlimited_rate_policyEE3ops10connect_opIZNSH_17basic_stream_test11testConnectEvE16iterator_handlerEEEENS_6system10error_codeEEENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES6_SX_E4typeEEE5valueEvE4typeEPNS11_IXsr27is_work_dispatcher_requiredINSt5decayISZ_E4typeENS18_ISX_E4typeES6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef null, ptr noundef null)
          to label %bb.i unwind label %.body, !inline_history !104

.body:                                            ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.at) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  resume { ptr, i32 } %i.bx

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.at) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.q

._crit_edge27:                                    ; preds = %bb.a
  br i1 %.not.i.i38, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %bb.j

bb.j:                                             ; preds = %._crit_edge27
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !4087, !nonnull !310, !align !313 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !376
  %.not = icmp eq i32 %i.cb, -1
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !288, !noalias !4091
  %i.cd = and i64 %i.cc, -2
  %switch.i.i.i.i6 = icmp eq i64 %i.cd, -5572340897628102704
  br i1 %switch.i.i.i.i6, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %bb.k
  %i.ce = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !271, !noalias !4091
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !4091
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !4091, !inline_history !56
  br i1 %i.ch, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.l

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %bb.k, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.ci = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 125, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i8, align 8, !tbaa !280
  %.sroa.6.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i9, align 8, !tbaa !277
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread20

bb.m:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !290 ; 2 uses
  %i.cl = and i64 %i.ck, 1
  %.not.i.i10 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i10, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = icmp ne i64 %i.ck, 1
  %i.cn = load i32, ptr %1, align 8
  %i.co = icmp ne i32 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread20

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.n
  %i.cp = load ptr, ptr %0, align 8, !tbaa !1087  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i11, label %._crit_edge, label %_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit

_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !1102
  %.not5 = icmp eq i32 %i.cr, 0
  br i1 %.not5, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit
  %i.cs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !288, !noalias !4092
  %i.ct = and i64 %i.cs, -2
  %switch.i.i.i.i12 = icmp eq i64 %i.ct, -5572340897628102704
  br i1 %switch.i.i.i.i12, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16: ; preds = %bb.o
  %i.cu = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !271, !noalias !4092
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !4092
  %i.cx = tail call noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !4092, !inline_history !56
  br i1 %i.cx, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread, label %bb.p

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread: ; preds = %bb.o, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread
  %i.cy = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16 ]
  store i64 125, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i14, align 8, !tbaa !280
  store i64 %i.cy, ptr %i.cj, align 8, !tbaa !277
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread20

_ZNK5boost6system10error_codecvbEv.exit.thread20: ; preds = %bb.f, %bb.n, %bb.m, %._crit_edge27, %bb.p, %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEclIJRKPKNS3_14basic_endpointIS4_EEEEEvNS_6system10error_codeEDpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.cz, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %.phi.trans.insert)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread20, %bb.i, %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EENS_5beast6detail12any_endpointENSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSG_17basic_stream_test11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISS_ELi0EEEvEEfp0_fp_clL_ZSW_IRSU_ESY_vEEEERSE_OSS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEclIJRKPKNS3_14basic_endpointIS4_EEEEEvNS_6system10error_codeEDpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.0 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !277
  %.not = icmp eq i64 %.sroa.0.0.copyload.i.i, 9223372036854775807
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !510
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !510
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !432, !range !309, !noundef !310
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !433  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !449, !nonnull !310, !align !313
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.p = tail call noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 noundef -1)
  store i8 0, ptr %i.h, align 8, !tbaa !432
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit._ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread_crit_edge, label %bb.e

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit._ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread_crit_edge: ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !356
  br label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread: ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit._ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread_crit_edge, %bb.b
  %i.r = phi ptr [ %.pre, %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit._ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread_crit_edge ], [ %i.b, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 225
  %i.t = load i8, ptr %i.s, align 1, !tbaa !512, !range !309, !noundef !310
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !459
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !277 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.x = and i64 %.sroa.5.0.copyload, 1
  %i.y = or disjoint i64 %i.x, ptrtoint (ptr @_ZZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEclIJRKPKNS3_14basic_endpointIS4_EEEEEvNS_6system10error_codeEDpOT_E7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !356
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 225
  store i8 0, ptr %i.aa, align 1, !tbaa !512
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit, %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit.thread, %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE6cancelEv.exit, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !777 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.ac, align 1, !tbaa !375
  br label %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit

_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit: ; preds = %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ad, align 8, !tbaa !776
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !777 ; 2 uses
  %.not.i2 = icmp eq ptr %i.af, null
  br i1 %.not.i2, label %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit3, label %bb.g

bb.g:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit
  store i8 0, ptr %i.af, align 1, !tbaa !375
  br label %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit3

_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit3: ; preds = %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ag, align 8, !tbaa !776
  %i.ah = load ptr, ptr %0, align 8, !tbaa !271
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !4093
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !779, !range !309, !noundef !310
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_E12complete_nowIJRNS_6system10error_codeERKPKNS4_2ip14basic_endpointINSE_3tcpEEEEEEvDpOT_.exit

bb.h:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guard5resetEv.exit3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !351
end_hunk_0
begin_hunk_1_@_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEC2IPKNS3_14basic_endpointIS4_EEZNSD_11testConnectEvE17connect_conditionSE_EEOT1_RSA_T_SP_RKT0_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre25, i64 12
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  %.pre21 = load ptr, ptr %i.o, align 8, !tbaa !356
  br label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEEC2ISC_EERKNS_10shared_ptrIT_EENS_6detail24sp_enable_if_convertibleISG_SC_E4typeE.exit

_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEEC2ISC_EERKNS_10shared_ptrIT_EENS_6detail24sp_enable_if_convertibleISG_SC_E4typeE.exit: ; preds = %bb.d, %bb.e
  %i.ak = phi ptr [ %i.v, %bb.d ], [ %.pre21, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.an = load i64, ptr %i.am, align 8, !tbaa !510
  store i64 %i.an, ptr %i.al, align 8, !tbaa !797
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !351, !noalias !4181
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !351, !alias.scope !4180
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !433
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  invoke void @_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10async_waitINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENSC_21unlimited_rate_policyEE15timeout_handlerISJ_EESJ_EEvRNSA_19implementation_typeERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(112) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10async_waitINS_5beast12basic_streamINS0_2ip3tcpESA_NSD_21unlimited_rate_policyEE15timeout_handlerISA_EEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINSB_19initiate_async_waitEEDTcl9__declvalISL_ELi0EEEvEEfp_EEOSL_.exit unwind label %bb.h

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10async_waitINS_5beast12basic_streamINS0_2ip3tcpESA_NSD_21unlimited_rate_policyEE15timeout_handlerISA_EEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINSB_19initiate_async_waitEEDTcl9__declvalISL_ELi0EEEvEEfp_EEOSL_.exit: ; preds = %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEEC2ISC_EERKNS_10shared_ptrIT_EENS_6detail24sp_enable_if_convertibleISG_SC_E4typeE.exit
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !504 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10async_waitINS_5beast12basic_streamINS0_2ip3tcpESA_NSD_21unlimited_rate_policyEE15timeout_handlerISA_EEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINSB_19initiate_async_waitEEDTcl9__declvalISL_ELi0EEEvEEfp_EEOSL_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.g, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !271
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #36, !inline_history !52
  br label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit

_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit: ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10async_waitINS_5beast12basic_streamINS0_2ip3tcpESA_NSD_21unlimited_rate_policyEE15timeout_handlerISA_EEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINSB_19initiate_async_waitEEDTcl9__declvalISL_ELi0EEEvEEfp_EEOSL_.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.pre22 = load ptr, ptr %i.o, align 8, !tbaa !356
  %.pre23 = load i32, ptr %i.n, align 8, !tbaa !1154
  %i.az = load <2 x ptr>, ptr %i.q, align 8, !tbaa !314
  %.pre27 = load ptr, ptr %i.z, align 8, !tbaa !777
  br label %bb.k

bb.h:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEEC2ISC_EERKNS_10shared_ptrIT_EENS_6detail24sp_enable_if_convertibleISG_SC_E4typeE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !504 ; 4 uses
  %.not.i.i.i15 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i15, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.j, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit16

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !271
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #36, !inline_history !52
  br label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit16

_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit16: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.k:                                             ; preds = %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit, %bb.c
  %i.bi = phi ptr [ %.pre27, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit ], [ %i.aa, %bb.c ]
  %i.bj = phi i32 [ %.pre23, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit ], [ -1, %bb.c ]
  %i.bk = phi ptr [ %.pre22, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit ], [ %i.v, %bb.c ] ; 2 uses
  %i.bl = phi <2 x ptr> [ %i.az, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit ], [ %i.af, %bb.c ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr null, ptr %6, align 8, !tbaa !1087
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1081
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.bo, align 8, !tbaa !1185
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.bp, align 8, !tbaa !1186
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.bq, align 8, !tbaa !1187
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bt = load i8, ptr %i.d, align 8, !tbaa !375, !range !309, !noundef !310
  store i8 1, ptr %i.d, align 8, !tbaa !375
  store i8 %i.bt, ptr %i.bs, align 8, !tbaa !479
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !351
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !351
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bx = load i8, ptr %i.g, align 8, !tbaa !779, !range !309, !noundef !310
  store i8 %i.bx, ptr %i.bw, align 8, !tbaa !779
  store i8 0, ptr %i.g, align 8, !tbaa !779
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 %i.bj, ptr %i.by, align 8, !tbaa !1154
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEE, i64 16), ptr %i.br, align 8, !tbaa !271
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.bk, ptr %i.bz, align 8, !tbaa !356
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.bl, ptr %i.ca, align 8, !tbaa !314
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cc = load i8, ptr %i.y, align 8, !tbaa !375, !range !309, !noundef !310
  store i8 0, ptr %i.y, align 8, !tbaa !375
  store i8 %i.cc, ptr %i.cb, align 8, !tbaa !776
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr %i.bi, ptr %i.cd, align 8, !tbaa !777
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cf = load i8, ptr %i.ab, align 8, !tbaa !375, !range !309, !noundef !310
  store i8 0, ptr %i.ab, align 8, !tbaa !375
  store i8 %i.cf, ptr %i.ce, align 8, !tbaa !776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost4asio6detail19iterator_connect_opINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEPKNS3_14basic_endpointIS4_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSD_12basic_streamIS4_S8_NSD_21unlimited_rate_policyEE3ops10connect_opIZNSE_11testConnectEvE16iterator_handlerEEEclENS_6system10error_codeEi(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %7, i32 noundef 1)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.br) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.body

bb.m:                                             ; preds = %bb.k
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.br) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %bb.l, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit16
  %.pn11 = phi { ptr, i32 } [ %i.cg, %bb.l ], [ %i.ba, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE15timeout_handlerIS8_ED2Ev.exit16 ]
  %i.ch = load i8, ptr %i.ab, align 8, !tbaa !776, !range !309, !noundef !310
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.n, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit

bb.n:                                             ; preds = %.body
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !777 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.cj, align 1, !tbaa !375
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit: ; preds = %.body, %bb.n, %bb.o
  %i.ck = load i8, ptr %i.y, align 8, !tbaa !776, !range !309, !noundef !310
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.p, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit18

bb.p:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !777 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cm, null
  br i1 %.not.i17, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.cm, align 1, !tbaa !375
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit18

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit18: ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit, %bb.p, %bb.q
  call void @_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.o) #36
  call void @_ZN5boost5beast10async_baseIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerNS_4asio10io_context19basic_executor_typeISaIvELm0EEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #36
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail19iterator_connect_opINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEPKNS3_14basic_endpointIS4_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSD_12basic_streamIS4_S8_NSD_21unlimited_rate_policyEE3ops10connect_opIZNSE_11testConnectEvE16iterator_handlerEEEclENS_6system10error_codeEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %4 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %5 = alloca %"class.boost::asio::basic_socket<boost::asio::ip::tcp, boost::asio::io_context::basic_executor_type<std::allocator<void>, 0>>::initiate_async_connect", align 8 ; 4 uses
  %6 = alloca %"class.boost::asio::detail::initiate_post_with_executor", align 8 ; 5 uses
  %7 = alloca %"struct.boost::asio::detail::empty_work_function", align 1 ; 4 uses
  %8 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  %9 = alloca %"class.boost::asio::detail::binder1.569", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %2, ptr %i.a, align 8, !tbaa !1187
  %cond = icmp eq i32 %2, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1162 ; 3 uses
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre26 = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !1162 ; 4 uses
  %.not.i.i38 = icmp eq ptr %.pre, %.pre26        ; 3 uses
  br i1 %cond, label %._crit_edge.thread, label %._crit_edge27

._crit_edge:                                      ; preds = %_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit, %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 28 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %.pre26           ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, ptr %.pre26, ptr %i.b
  store ptr %spec.select.i.i, ptr %.phi.trans.insert, align 8, !tbaa !1162
  br i1 %.not.i.i, label %bb.f, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %spec.select.i.i39 = select i1 %.not.i.i38, ptr %.pre26, ptr %.pre
  store ptr %spec.select.i.i39, ptr %.phi.trans.insert, align 8, !tbaa !1162
  br i1 %.not.i.i38, label %.thread, label %._crit_edge.thread._crit_edge

._crit_edge.thread._crit_edge:                    ; preds = %._crit_edge.thread
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !4194
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread._crit_edge, %._crit_edge
  %10 = phi ptr [ %.pre43, %._crit_edge.thread._crit_edge ], [ %i.bz, %._crit_edge ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %10, align 8, !tbaa !373
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @_ZN5boost4asio6detail28reactive_socket_service_base5closeERNS2_24base_implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, ptr noundef nonnull align 8 dereferenceable(33) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.f = load ptr, ptr %11, align 8, !tbaa !4194, !nonnull !310, !align !313 ; 4 uses
  %i.g = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !376
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %bb.c, label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSH_11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISR_ELi0EEEvEEfp0_fp_clL_ZSV_IRST_ESX_vEEEERSE_OSR_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.g, align 4, !tbaa !280
  %i.k = icmp eq i16 %i.j, 2
  %spec.select.i.i35 = select i1 %i.k, i32 2, i32 10 ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !4195
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @_ZN5boost4asio6detail28reactive_socket_service_base7do_openERNS2_24base_implementation_typeEiiiRNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i32 noundef %spec.select.i.i35, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !4195, !inline_history !4184
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !290, !noalias !4195 ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread12.i.i, label %bb.d

_ZNK5boost6system10error_codecvbEv.exit.thread12.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !4195
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %_ZNK5boost6system10error_codecvbEv.exit.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !4195
  br label %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i

_ZNK5boost6system10error_codecvbEv.exit.i.i:      ; preds = %bb.d
  %i.r = load i32, ptr %3, align 8, !tbaa !403, !noalias !4195
  %.not.i.i37 = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !4195
  br i1 %.not.i.i37, label %bb.e, label %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i

bb.e:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread12.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %spec.select.i.i35, ptr %i.s, align 8, !tbaa !374, !noalias !4195
  br label %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i

_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i: ; preds = %bb.e, %_ZNK5boost6system10error_codecvbEv.exit.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.5.0.copyload4.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !tbaa !277, !noalias !4195 ; 3 uses
  %switch.i.i.i.i36 = icmp ult i64 %.sroa.5.0.copyload4.i.i.i, 2
  %i.t = and i64 %.sroa.5.0.copyload4.i.i.i, 1
  %i.u = or disjoint i64 %i.t, ptrtoint (ptr @_ZZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeEE3loc to i64)
  %.sroa.5.0.i.i.i = select i1 %switch.i.i.i.i36, i64 %.sroa.5.0.copyload4.i.i.i, i64 %i.u
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !tbaa !277, !noalias !4195
  br label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSH_11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISR_ELi0EEEvEEfp0_fp_clL_ZSV_IRST_ESX_vEEEERSE_OSR_.exit

_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSH_11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISR_ELi0EEEvEEfp0_fp_clL_ZSV_IRST_ESX_vEEEERSE_OSR_.exit: ; preds = %bb.b, %_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE4openERNS5_19implementation_typeERKS4_RNS_6system10error_codeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.f, ptr %5, align 8, !tbaa !1054
  call void @_ZNK5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE22initiate_async_connectclINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSH_12basic_streamIS3_S7_NSH_21unlimited_rate_policyEE3ops10connect_opIZNSI_11testConnectEvE16iterator_handlerEEEEEEvOT_RSF_RKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !4185
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.q

bb.f:                                             ; preds = %._crit_edge
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.g   ; 4 uses

.noexc.i:                                         ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !288, !noalias !4196
  %i.y = and i64 %i.x, -2
  %switch.i.i.i.i = icmp eq i64 %i.y, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

bb.g:                                             ; preds = %.thread
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #37
  unreachable

_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %.noexc.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !271, !noalias !4196
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !4196
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(52) %i.v, i32 noundef 3) #36, !noalias !4196, !inline_history !99
  br i1 %i.ae, label %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.h

_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.af = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error11misc_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 3, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !280
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !277
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  %i.ah = load i64, ptr %0, align 8, !tbaa !1099, !noalias !4197
  store i64 %i.ah, ptr %9, align 8, !tbaa !1099, !alias.scope !4197
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !noalias !4197
  store i8 %i.ak, ptr %i.ai, align 8, !alias.scope !4197
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !314
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !4194, !nonnull !310, !align !313
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !314, !alias.scope !4197
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aq = load ptr, ptr %.phi.trans.insert25, align 8, !tbaa !1186, !noalias !4197
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !1186, !alias.scope !4197
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.as = load i32, ptr %i.a, align 8, !tbaa !1187, !noalias !4197
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !1187, !alias.scope !4197
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !375, !range !309, !noalias !4197, !noundef !310
  store i8 1, ptr %i.av, align 8, !tbaa !375, !noalias !4197
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !479, !alias.scope !4197
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !351, !noalias !4197
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !351, !alias.scope !4197
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !779, !range !309, !noalias !4197, !noundef !310
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !779, !alias.scope !4197
  store i8 0, ptr %i.bb, align 8, !tbaa !779, !noalias !4197
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1154, !noalias !4197
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !1154, !alias.scope !4197
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEE, i64 16), ptr %i.at, align 8, !tbaa !271, !alias.scope !4197
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !314, !noalias !4197
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !314, !alias.scope !4197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !noalias !4197
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !777, !noalias !4197
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !777, !alias.scope !4197
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !375, !range !309, !noalias !4197, !noundef !310
  store i8 0, ptr %i.bn, align 8, !tbaa !375, !noalias !4197
  store i8 %i.bo, ptr %i.bm, align 8, !tbaa !776, !alias.scope !4197
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !777, !noalias !4197
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !777, !alias.scope !4197
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !375, !range !309, !noalias !4197, !noundef !310
  store i8 0, ptr %i.bt, align 8, !tbaa !375, !noalias !4197
  store i8 %i.bu, ptr %i.bs, align 8, !tbaa !776, !alias.scope !4197
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !459
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bw = load i64, ptr %i.ao, align 8, !tbaa !351
  store i64 %i.bw, ptr %6, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZNK5boost4asio6detail27initiate_post_with_executorINS0_10io_context19basic_executor_typeISaIvELm0EEEEclINS1_7binder1INS1_19iterator_connect_opINS0_2ip3tcpES6_PKNSB_14basic_endpointISC_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSH_12basic_streamISC_S6_NSH_21unlimited_rate_policyEE3ops10connect_opIZNSI_11testConnectEvE16iterator_handlerEEEENS_6system10error_codeEEENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES6_SW_E4typeEEE5valueEvE4typeEPNS10_IXsr27is_work_dispatcher_requiredINSt5decayISY_E4typeENS17_ISW_E4typeES6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef null, ptr noundef null)
          to label %bb.i unwind label %.body, !inline_history !106

.body:                                            ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.at) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  resume { ptr, i32 } %i.bx

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.at) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.q

._crit_edge27:                                    ; preds = %bb.a
  br i1 %.not.i.i38, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %bb.j

bb.j:                                             ; preds = %._crit_edge27
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !4194, !nonnull !310, !align !313 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !376
  %.not = icmp eq i32 %i.cb, -1
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !288, !noalias !4198
  %i.cd = and i64 %i.cc, -2
  %switch.i.i.i.i6 = icmp eq i64 %i.cd, -5572340897628102704
  br i1 %switch.i.i.i.i6, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %bb.k
  %i.ce = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !271, !noalias !4198
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !4198
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !4198, !inline_history !56
  br i1 %i.ch, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.l

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %bb.k, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.ci = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 125, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i8, align 8, !tbaa !280
  %.sroa.6.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i9, align 8, !tbaa !277
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread20

bb.m:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !290 ; 2 uses
  %i.cl = and i64 %i.ck, 1
  %.not.i.i10 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i10, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = icmp ne i64 %i.ck, 1
  %i.cn = load i32, ptr %1, align 8
  %i.co = icmp ne i32 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread20

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.n
  %i.cp = load ptr, ptr %0, align 8, !tbaa !1087  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i11, label %._crit_edge, label %_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit

_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !1102
  %.not5 = icmp eq i32 %i.cr, 0
  br i1 %.not5, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %_ZNK5boost4asio6detail28base_from_cancellation_stateINS_5beast12basic_streamINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEENS3_21unlimited_rate_policyEE3ops10connect_opIZNS3_17basic_stream_test11testConnectEvE16iterator_handlerEEvE9cancelledEv.exit
  %i.cs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !288, !noalias !4199
  %i.ct = and i64 %i.cs, -2
  %switch.i.i.i.i12 = icmp eq i64 %i.ct, -5572340897628102704
  br i1 %switch.i.i.i.i12, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16: ; preds = %bb.o
  %i.cu = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !271, !noalias !4199
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !4199
  %i.cx = tail call noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !4199, !inline_history !56
  br i1 %i.cx, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread, label %bb.p

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread: ; preds = %bb.o, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread
  %i.cy = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit16 ]
  store i64 125, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i14, align 8, !tbaa !280
  store i64 %i.cy, ptr %i.cj, align 8, !tbaa !277
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread20

_ZNK5boost6system10error_codecvbEv.exit.thread20: ; preds = %bb.f, %bb.n, %bb.m, %._crit_edge27, %bb.p, %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEclIJRKPKNS3_14basic_endpointIS4_EEEEEvNS_6system10error_codeEDpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.cz, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %.phi.trans.insert)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread20, %bb.i, %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE13async_connectINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSG_12basic_streamIS3_S7_NSG_21unlimited_rate_policyEE3ops10connect_opIZNSH_11testConnectEvE16iterator_handlerEEEEEEDTcl14async_initiateIT_FvNS_6system10error_codeEEEclL_ZSt7declvalINS8_22initiate_async_connectEEDTcl9__declvalISR_ELi0EEEvEEfp0_fp_clL_ZSV_IRST_ESX_vEEEERSE_OSR_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio12basic_socketINS0_2ip3tcpENS0_10io_context19basic_executor_typeISaIvELm0EEEE22initiate_async_connectclINS0_6detail19iterator_connect_opIS3_S7_PKNS2_14basic_endpointIS3_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSH_12basic_streamIS3_S7_NSH_21unlimited_rate_policyEE3ops10connect_opIZNSI_11testConnectEvE16iterator_handlerEEEEEEvOT_RSF_RKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::asio::detail::initiate_post_with_executor", align 8 ; 5 uses
  %5 = alloca %"struct.boost::asio::detail::empty_work_function", align 1 ; 4 uses
  %6 = alloca %"class.boost::asio::detail::binder1.569", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !290  ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.b, 1
  %i.e = load i32, ptr %3, align 8
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread8

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !1054
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  %i.i = load i64, ptr %1, align 8, !tbaa !1099, !noalias !4202
  store i64 %i.i, ptr %6, align 8, !tbaa !1099, !alias.scope !4202
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !noalias !4202
  store i8 %i.l, ptr %i.j, align 8, !alias.scope !4202
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !314, !noalias !4202
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !314, !alias.scope !4202
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1186, !noalias !4202
  store ptr %i.r, ptr %i.p, align 8, !tbaa !1186, !alias.scope !4202
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1187, !noalias !4202
  store i32 %i.u, ptr %i.s, align 8, !tbaa !1187, !alias.scope !4202
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !375, !range !309, !noalias !4202, !noundef !310
  store i8 1, ptr %i.x, align 8, !tbaa !375, !noalias !4202
  store i8 %i.y, ptr %i.w, align 8, !tbaa !479, !alias.scope !4202
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !351, !noalias !4202
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !351, !alias.scope !4202
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !779, !range !309, !noalias !4202, !noundef !310
  store i8 %i.ae, ptr %i.ac, align 8, !tbaa !779, !alias.scope !4202
  store i8 0, ptr %i.ad, align 8, !tbaa !779, !noalias !4202
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1154, !noalias !4202
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !1154, !alias.scope !4202
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerEE, i64 16), ptr %i.v, align 8, !tbaa !271, !alias.scope !4202
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !314, !noalias !4202
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !314, !alias.scope !4202
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !noalias !4202
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !777, !noalias !4202
  store ptr %i.an, ptr %i.al, align 8, !tbaa !777, !alias.scope !4202
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !375, !range !309, !noalias !4202, !noundef !310
  store i8 0, ptr %i.ap, align 8, !tbaa !375, !noalias !4202
  store i8 %i.aq, ptr %i.ao, align 8, !tbaa !776, !alias.scope !4202
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !777, !noalias !4202
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !777, !alias.scope !4202
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !375, !range !309, !noalias !4202, !noundef !310
  store i8 0, ptr %i.av, align 8, !tbaa !375, !noalias !4202
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !776, !alias.scope !4202
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !459
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !351
  store i64 %i.ay, ptr %4, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNK5boost4asio6detail27initiate_post_with_executorINS0_10io_context19basic_executor_typeISaIvELm0EEEEclINS1_7binder1INS1_19iterator_connect_opINS0_2ip3tcpES6_PKNSB_14basic_endpointISC_EEZNS_5beast17basic_stream_test11testConnectEvE17connect_conditionNSH_12basic_streamISC_S6_NSH_21unlimited_rate_policyEE3ops10connect_opIZNSI_11testConnectEvE16iterator_handlerEEEENS_6system10error_codeEEENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES6_SW_E4typeEEE5valueEvE4typeEPNS10_IXsr27is_work_dispatcher_requiredINSt5decayISY_E4typeENS17_ISW_E4typeES6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null, ptr noundef null)
          to label %bb.c unwind label %.body, !inline_history !106

.body:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.v) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  resume { ptr, i32 } %i.az

bb.c:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE16iterator_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.v) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.d

_ZNK5boost6system10error_codecvbEv.exit.thread8:  ; preds = %bb.b, %bb.a
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1054  ; 3 uses
end_hunk_1
