Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/http_snippets?download=true
inline.NumInlined: 8773
inline.NumDeleted: 3539
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEEEvPNS2_9impl_baseEb":bb.a
"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mEclEv.exit": ; preds = %.noexc, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 2 uses
  %.pr.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !263 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mEclEv.exit", %.noexc.i.i.i.i
  %i.n = phi ptr [ %i.p, %.noexc.i.i.i.i ], [ %.pr.i.i.i.i.i, %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mEclEv.exit" ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !232  ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc.i.i.i.i unwind label %bb.g, !inline_history !1

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !263
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mEclEv.exit"
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.l, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.u = load i8, ptr %i.t, align 8, !tbaa !222, !range !262, !noundef !140
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mED2Ev.exit"

bb.f:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.w) #32, !inline_history !276
  br label %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mED2Ev.exit"

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #33, !inline_history !277
  unreachable

"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 232
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.z) #32, !inline_history !276
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 160
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aa) #32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ab) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  invoke fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEE3ptr5resetEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEE3ptrD2Ev.exit" unwind label %bb.h

bb.h:                                             ; preds = %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mED2Ev.exit"
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #33
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEESW_mED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #33
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEE3ptrD2Ev.exit9": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEE3ptr5resetEv"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !518  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.c, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !263 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.noexc.i.i.i.i.i
  %i.e = phi ptr [ %i.g, %.noexc.i.i.i.i.i ], [ %.pr.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !232  ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc.i.i.i.i.i unwind label %bb.d, !inline_history !1

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.g, ptr %i.d, align 8, !tbaa !263
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.c, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.l = load i8, ptr %i.k, align 8, !tbaa !222, !range !262, !noundef !140
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEED2Ev.exit"

bb.c:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #32, !inline_history !276
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEED2Ev.exit"

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #33, !inline_history !277
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.q) #32, !inline_history !276
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.r) #32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.s) #32
  store ptr null, ptr %i.a, align 8, !tbaa !518
  br label %bb.e

bb.e:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEESY_mEESaIvEED2Ev.exit", %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !519  ; 5 uses
  %.not1 = icmp eq ptr %i.u, null
  br i1 %.not1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !362
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !362
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.lcssa.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !129
  store i8 %i.ae, ptr %i.u, align 1, !tbaa !129
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSE_EEENS6_INS9_7read_opISF_SI_Lb0ENS9_14parser_is_doneEEESM_NS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJS10_EEESZ_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS15_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.u) #32
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSE_EEENS6_INS9_7read_opISF_SI_Lb0ENS9_14parser_is_doneEEESM_NS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJS10_EEESZ_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS15_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSE_EEENS6_INS9_7read_opISF_SI_Lb0ENS9_14parser_is_doneEEESM_NS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJS10_EEESZ_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS15_m.exit": ; preds = %bb.g, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !519
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS7_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSE_EEENS6_INS9_7read_opISF_SI_Lb0ENS9_14parser_is_doneEEESM_NS9_11read_msg_opISF_SI_Lb0ENS8_17basic_string_bodyIcSt11char_traitsIcESH_EESH_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJS10_EEESZ_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS15_m.exit", %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_recv_op_baseINS0_14mutable_bufferEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !489
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !362
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !491
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !490
  %i.h = and i8 %i.g, 16
  %i.i = icmp ne i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops18non_blocking_recv1EiPvmibRNS_6system10error_codeERm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, i1 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.f, align 4, !tbaa !490   ; 2 uses
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8, !tbaa !520
  %.not14 = icmp sgt i8 %i.m, -1
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %.sroa.2.0.copyload.i22, %bb.d ], [ 1, %bb.c ]
  %i.q = icmp ult i64 %i.o, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.e ], [ 1, %bb.b ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops18non_blocking_recv1EiPvmibRNS_6system10error_codeERm(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5boost4asio15any_io_executorC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail20cancellation_handlerINS1_28reactive_socket_service_base23reactor_op_cancellationEE4callENS0_17cancellation_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationclENS0_17cancellation_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !501
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !503
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !502
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !504
  tail call void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_ZN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationclENS0_17cancellation_typeE.exit

_ZN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationclENS0_17cancellation_typeE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4asio6detail20cancellation_handlerINS1_28reactive_socket_service_base23reactor_op_cancellationEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN5boost4asio6detail28reactive_socket_service_base11do_start_opERNS2_24base_implementation_typeEiPNS1_10reactor_opEbbbbPFvPNS1_19scheduler_operationEbPKvESA_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN5boost4asio6detail13epoll_reactor30call_post_immediate_completionEPNS1_19scheduler_operationEbPKv(ptr noundef, i1 noundef zeroext, ptr noundef) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEEJSW_EED2Ev"(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) initializes((216, 224)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.pr.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !263 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not5.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.noexc.i.i.i
  %i.c = phi ptr [ %i.e, %.noexc.i.i.i ], [ %.pr.i.i.i.i, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc.i.i.i unwind label %bb.c, !inline_history !1

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  store ptr %i.e, ptr %i.b, align 8, !tbaa !263
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.a, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = load i8, ptr %i.i, align 8, !tbaa !222, !range !262, !noundef !140
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit"

bb.b:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.l) #32, !inline_history !276
  br label %"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33, !inline_history !277
  unreachable

"_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SE_Lb0ENS5_14parser_is_doneEEESI_NS5_11read_msg_opISB_SE_Lb0ENS4_17basic_string_bodyIcSt11char_traitsIcESD_EESD_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.o) #32, !inline_history !276
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEEJSY_EEESD_vED2Ev"(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast17stable_async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.pr.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.noexc.i.i.i.i
  %i.d = phi ptr [ %i.f, %.noexc.i.i.i.i ], [ %.pr.i.i.i.i.i, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc.i.i.i.i unwind label %bb.c, !inline_history !1

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.f, ptr %i.c, align 8, !tbaa !263
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.b, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load i8, ptr %i.j, align 8, !tbaa !222, !range !262, !noundef !140
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %"_ZN5boost4asio6detail14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEEJSW_EED2Ev.exit"

bb.b:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #32, !inline_history !276
  br label %"_ZN5boost4asio6detail14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEEJSW_EED2Ev.exit"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #33, !inline_history !277
  unreachable

"_ZN5boost4asio6detail14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEEJSW_EED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.p) #32, !inline_history !276
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.r) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSD_EEENS5_INS8_7read_opISE_SH_Lb0ENS8_14parser_is_doneEEESL_NS8_11read_msg_opISE_SH_Lb0ENS7_17basic_string_bodyIcSt11char_traitsIcESG_EESG_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSZ_EEEJSY_EEESD_vEC2EOS13_"(ptr noundef nonnull align 8 dereferenceable(480) initializes((0, 56)) %0, ptr noundef nonnull align 8 dereferenceable(480) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !275
  store i64 %i.a, ptr %0, align 8, !tbaa !275
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.e) #32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !275
  store i64 %i.h, ptr %i.f, align 8, !tbaa !275
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l) #32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN17doc_http_snippets3fxxEvE3$_0NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.m, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.n, ptr noundef nonnull align 8 dereferenceable(113) %i.o) #32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !222, !range !262, !noundef !140 ; 2 uses
  %i.s = trunc nuw i8 %i.r to i1
  store i8 %i.r, ptr %i.p, align 8, !tbaa !222
  br i1 %i.s, label %bb.b, label %"_ZN5boost4asio6detail14append_handlerINS1_11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_17basic_flat_bufferISaIcEEELb0EEENS1_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SF_Lb0ENS6_14parser_is_doneEEESJ_NS6_11read_msg_opISC_SF_Lb0ENS5_17basic_string_bodyIcSt11char_traitsIcESE_EESE_ZN17doc_http_snippets3fxxEvE3$_0EEJFvNS_6system10error_codeEmEEEEJSX_EEEJSW_EEC2EOS10_.exit"

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 288
end_hunk_0
begin_hunk_1_@"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptrD2Ev":bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %i.c) #32
  store ptr null, ptr %i.a, align 8, !tbaa !827
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !828  ; 5 uses
  %.not1.i = icmp eq ptr %i.e, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.lcssa.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  %i.o = load i8, ptr %i.n, align 1, !tbaa !129
  store i8 %i.o, ptr %i.e, align 1, !tbaa !129
  store ptr %i.e, ptr %i.m, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.e) #32
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb"(ptr noundef %0, i1 noundef zeroext %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.1", align 1  ; 4 uses
  %4 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !2094
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !828
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %5, ptr noundef nonnull align 8 dereferenceable(520) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 488 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !381
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.h = load i64, ptr %i.g, align 8, !tbaa !743
  store i64 %i.h, ptr %i.f, align 8, !tbaa !743
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %i.c) #32
  store ptr null, ptr %i.b, align 8, !tbaa !827
  %i.i = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.g     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !362
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.r = load i8, ptr %i.q, align 8, !tbaa !129
  store i8 %i.r, ptr %0, align 8, !tbaa !129
  store ptr %0, ptr %i.p, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %0) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !828
  br i1 %1, label %bb.d, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit"

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.s = load i64, ptr %i.f, align 8, !tbaa !743  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !211  ; 2 uses
  %i.v = and i64 %i.u, 1
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i64 %i.u, 1
  %i.x = load i32, ptr %2, align 8
  %i.y = icmp ne i32 %i.x, 0
  %or.cond.i.i = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i: ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !744, !nonnull !140, !align !141
  invoke void @_ZN5boost5beast4http10serializerILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS6_EEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(391) %i.aa, i64 noundef %i.s)
          to label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i unwind label %bb.g, !inline_history !2093

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i, %bb.e
  %i.ab = load ptr, ptr %5, align 8, !tbaa !120
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(520) %5)
          to label %.noexc9 unwind label %bb.g, !inline_history !2093

.noexc9:                                          ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 456 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !222, !range !262, !noundef !140
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EclENS_6system10error_codeEm.exit.i"

bb.f:                                             ; preds = %.noexc9
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 400
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ag) #32, !inline_history !32
  store i8 0, ptr %i.ad, align 8, !tbaa !222
  br label %"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EclENS_6system10error_codeEm.exit.i"

"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EclENS_6system10error_codeEm.exit.i": ; preds = %bb.f, %.noexc9
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke fastcc void @"_ZN5boost5beast4http6detail8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISG_EEEESC_NS2_18serializer_is_doneELb0ESH_SJ_EclENS_6system10error_codeEm"(ptr noundef nonnull align 8 dereferenceable(336) %i.ah, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %2, i64 noundef %i.s)
          to label %"_ZN5boost4asio6detail7binder2INS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EENS_6system10error_codeEmEclEv.exit" unwind label %bb.g, !inline_history !2093

"_ZN5boost4asio6detail7binder2INS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EENS_6system10error_codeEmEclEv.exit": ; preds = %"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EclENS_6system10error_codeEm.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit"

bb.g:                                             ; preds = %"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EclENS_6system10error_codeEm.exit.i", %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i, %_ZNK5boost6system10error_codecvbEv.exit.thread3.i.i, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ai

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast4http6detail13write_some_opINS7_8write_opINS7_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS6_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS6_12basic_fieldsISL_EEEESH_NS7_18serializer_is_doneELb0ESM_SO_EESH_Lb0ESM_SO_EENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EENS_6system10error_codeEmEclEv.exit", %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES9_EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES3_EEEEEEEEEEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !573
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !830
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !576
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !574
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !831
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES3_EEEEEEEEEEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 32 uses
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !738, !noalias !2115 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  store ptr %i.b, ptr %2, align 8, !tbaa !740, !alias.scope !2118
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !734, !noalias !2118
  store i64 %i.e, ptr %i.c, align 8, !tbaa !741, !alias.scope !2118
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !730, !noalias !2118, !nonnull !140, !align !141 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !723, !noalias !2119 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !725, !noalias !2119 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !725, !alias.scope !2119
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !710, !noalias !2119 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.q = load i8, ptr %i.p, align 8, !tbaa !713, !noalias !2119 ; 2 uses
  switch i8 %i.q, label %bb.d [
    i8 0, label %.thread.i
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread.i:                                        ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.r, align 8, !tbaa !710, !alias.scope !2119
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.t, align 8, !tbaa !713, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.v, align 8, !tbaa !710, !alias.scope !2119
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.u, ptr %i.x, align 8, !tbaa !351, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.z, align 8, !tbaa !710, !alias.scope !2119
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !351, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !710, !alias.scope !2119
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !351, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !715, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !710, !alias.scope !2119
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !546, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.al, align 8, !tbaa !710, !alias.scope !2119
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !351, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !129, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !710, !alias.scope !2119
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.ao, ptr %i.ar, align 8, !tbaa !129, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.as = phi ptr [ %i.aq, %bb.j ], [ %i.am, %bb.i ], [ %i.ai, %bb.h ], [ %i.ae, %bb.g ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 %i.q, ptr %i.at, align 8, !tbaa !713, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !725, !alias.scope !2119
  store ptr %i.au, ptr %i.av, align 8, !tbaa !351, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.ax = load i8, ptr %i.j, align 8, !tbaa !129, !noalias !2119
  store ptr %i.i, ptr %i.f, align 8, !tbaa !723, !alias.scope !2119
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !725, !alias.scope !2119
  store i8 %i.ax, ptr %i.ay, align 8, !tbaa !129, !alias.scope !2119
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i
  %i.ba = phi ptr [ %i.az, %bb.l ], [ %i.aw, %bb.k ], [ %i.as, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %.thread.i ]
  store i8 %i.l, ptr %i.ba, align 8, !tbaa !725, !alias.scope !2119
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit: ; preds = %.sink.split.i.i.i.i.i.i.i, %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.g, ptr %i.bb, align 8, !tbaa !731, !alias.scope !2119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  store ptr %i.b, ptr %3, align 8, !tbaa !740, !alias.scope !2124
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !735, !noalias !2124
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !741, !alias.scope !2124
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !723, !noalias !2124
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !723, !alias.scope !2124
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.bk, align 8, !tbaa !725, !alias.scope !2124
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !725, !noalias !2124 ; 2 uses
  switch i8 %i.bm, label %bb.m [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.n
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]
end_hunk_1
begin_hunk_2_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS6_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEE9all_emptyERKSN_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptrD2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #32
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.c) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.e) #32
  store ptr null, ptr %i.a, align 8, !tbaa !593
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !585  ; 5 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !585
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !584
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !593
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !585
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSA_6detail13write_some_opINSO_8write_opINSO_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EESY_NSO_18serializer_is_doneELb0ES12_SD_EESY_Lb0ES12_SD_EESX_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.287", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS6_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEEC2ERKSN_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !589
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !843
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !590
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !844
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS6_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEEC2ERKSN_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator", align 8 ; 12 uses
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !838, !noalias !2201 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  store ptr %i.b, ptr %2, align 8, !tbaa !840, !alias.scope !2204
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !836, !noalias !2204
  store i64 %i.e, ptr %i.c, align 8, !tbaa !841, !alias.scope !2204
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !835, !noalias !2204, !nonnull !140, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !710, !noalias !2207 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !713, !noalias !2207 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2207
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !351, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2207
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !351, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2207
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !351, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !715, !noalias !2207
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !546, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2207
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !351, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load i8, ptr %i.j, align 8, !tbaa !129, !noalias !2207
  store ptr %i.i, ptr %i.f, align 8, !tbaa !710, !alias.scope !2207
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.w, ptr %i.x, align 8, !tbaa !129, !alias.scope !2207
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.l, ptr %i.y, align 8, !tbaa !713, !alias.scope !2207
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.g, ptr %i.z, align 8, !tbaa !746, !alias.scope !2207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  store ptr %i.b, ptr %3, align 8, !tbaa !840, !alias.scope !2212
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !837, !noalias !2212
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !841, !alias.scope !2212
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !710, !noalias !2212
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !710, !alias.scope !2212
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !713, !alias.scope !2212
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !713, !noalias !2212 ; 2 uses
  switch i8 %i.ak, label %bb.i [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
  ]

bb.i:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  unreachable

bb.j:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2212
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2212
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2212
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2212
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2212
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2212
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !715, !noalias !2212
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !546, !alias.scope !2212
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2212
  store ptr %i.ap, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2212
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.aq = load i8, ptr %i.ah, align 8, !tbaa !129, !noalias !2212
  store i8 %i.aq, ptr %i.ag, align 8, !tbaa !129, !alias.scope !2212
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !713, !alias.scope !2212
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !746, !noalias !2212
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !746, !alias.scope !2212
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS6_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEE4initINSM_14const_iteratorEEEvT_SR_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS6_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEE4initINSM_14const_iteratorEEEvT_SR_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !710
  store ptr %i.c, ptr %i.a, align 8, !tbaa !710
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i8 0, ptr %i.f, align 8, !tbaa !713
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !713   ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorC2ERKSL_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]
end_hunk_2
begin_hunk_3_@"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E3ptrD2Ev":bb.a
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !606
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !605
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !614
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !606
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENS3_4http6detail13write_some_opINSF_8write_opINSF_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSE_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSE_12basic_fieldsIST_EEEESP_NSF_18serializer_is_doneELb0ESU_SW_EESP_Lb0ESU_SW_EESO_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator", align 8 ; 7 uses
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator", align 8 ; 6 uses
  %3 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.294", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1024 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !845, !noalias !2236 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  store ptr %i.c, ptr %1, align 8, !tbaa !847, !alias.scope !2239
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !599, !noalias !2239
  store i64 %i.f, ptr %i.d, align 8, !tbaa !848, !alias.scope !2239
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !615, !noalias !2239, !nonnull !140, !align !141 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !536, !noalias !2239
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !2239
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.h, ptr %i.k, align 8, !alias.scope !2239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  store ptr %i.c, ptr %2, align 8, !tbaa !847, !alias.scope !2244
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !601, !noalias !2244
  store i64 %i.n, ptr %i.l, align 8, !tbaa !848, !alias.scope !2244
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !849
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEEE4initINSC_14const_iteratorEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(1040) %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %1, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !610
  %i.s = load i64, ptr %i.b, align 8, !tbaa !851
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !613
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.r, ptr noundef nonnull %3, i64 noundef %i.s, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.z = load i8, ptr %i.y, align 4, !tbaa !611
  %i.aa = and i8 %i.z, 16
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !520
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 1032
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !852
  %i.ae = icmp ult i64 %i.ab, %i.ad
  %spec.select = select i1 %i.ae, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEEE4initINSC_14const_iteratorEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %1, ptr noundef byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !612
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !126 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !351 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !596 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !847
  %i.b = icmp eq ptr %.sroa.05.0.copyload, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %.sroa.11.0.copyload, %i.e
  %.fr = freeze i1 %i.f                           ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload, i64 24 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 6 uses
  br i1 %i.b, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.l = icmp ne ptr %.sroa.7.0.copyload, %i.g
  %.not3.i.us13 = select i1 %.fr, i1 true, i1 %i.l
  br i1 %.not3.i.us13, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph, label %.critedge

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph: ; preds = %.split.us
  %i.m = load i64, ptr %i.h, align 8, !tbaa !851  ; 3 uses
  %i.n = icmp ult i64 %i.m, 64                    ; 2 uses
  br i1 %.fr, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph.split.us, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.preheader

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.preheader: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph
  br i1 %i.n, label %.lr.ph37.preheader, label %.critedge

.lr.ph37.preheader:                               ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.preheader
  %.promoted40 = load i64, ptr %i.k, align 8, !tbaa !852
  br label %.lr.ph37

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph.split.us: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph
  br i1 %i.n, label %.lr.ph18, label %.critedge

.lr.ph18:                                         ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.lr.ph.split.us
  %.promoted19 = load i64, ptr %i.k, align 8, !tbaa !852
  %.pre25 = load ptr, ptr %i.i, align 8, !tbaa !536
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us
  %i.o = phi ptr [ %.pre25, %.lr.ph18 ], [ %i.z, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us ]
  %i.p = phi i64 [ %.promoted19, %.lr.ph18 ], [ %i.x, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us ]
  %i.q = phi i64 [ %i.m, %.lr.ph18 ], [ %i.ae, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us ] ; 2 uses
  %.sroa.7.0.us14.us17 = phi ptr [ %.sroa.7.0.copyload, %.lr.ph18 ], [ %i.y, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us ] ; 5 uses
  %.sroa.46.0.us15.us16 = phi i64 [ %.sroa.46.0.copyload, %.lr.ph18 ], [ %i.ad, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us ] ; 2 uses
  %i.r = icmp eq ptr %.sroa.7.0.us14.us17, %i.o
  %.sroa.0.0.copyload1.i.i.us.us = load ptr, ptr %.sroa.7.0.us14.us17, align 8, !tbaa !362 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us14.us17, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.us.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !126 ; 3 uses
  br i1 %i.r, label %bb.c, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us.us

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.j, align 8, !tbaa !594
  %spec.select.i.i.i.us.us = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %.sroa.4.0.copyload.i.i.us.us) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.us.us, i64 %spec.select.i.i.i.us.us
  %i.u = sub i64 %.sroa.4.0.copyload.i.i.us.us, %spec.select.i.i.i.us.us
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us.us

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us.us: ; preds = %bb.c, %bb.b
  %.pn3.i.i.us.us = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0.copyload1.i.i.us.us, %bb.b ]
  %.pn.i.i.us.us = phi i64 [ %i.u, %bb.c ], [ %.sroa.4.0.copyload.i.i.us.us, %bb.b ]
  %spec.select.i.us.us = tail call i64 @llvm.umin.i64(i64 %.sroa.46.0.us15.us16, i64 %.pn.i.i.us.us) ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 2 uses
  store ptr %.pn3.i.i.us.us, ptr %i.v, align 8, !tbaa !362
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %spec.select.i.us.us, ptr %i.w, align 8, !tbaa !833
  %i.x = add i64 %i.p, %spec.select.i.us.us       ; 2 uses
  store i64 %i.x, ptr %i.k, align 8, !tbaa !852
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us14.us17, i64 16
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !536  ; 2 uses
  %i.aa = icmp eq ptr %.sroa.7.0.us14.us17, %i.z
  %.sroa.4.0.copyload.i.i2.us.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !126 ; 2 uses
  br i1 %i.aa, label %bb.d, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us

bb.d:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us.us
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !594
  %i.ac = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i2.us.us, i64 %i.ab)
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.us: ; preds = %bb.d, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us.us
  %.pn.i.i3.us.us = phi i64 [ %i.ac, %bb.d ], [ %.sroa.4.0.copyload.i.i2.us.us, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us.us ]
  %i.ad = sub i64 %.sroa.46.0.us15.us16, %.pn.i.i3.us.us
  %i.ae = add nuw nsw i64 %i.q, 1                 ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !851
  %exitcond23.not = icmp eq i64 %i.ae, 64
  br i1 %exitcond23.not, label %.critedge, label %bb.b

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us
  %i.af = sub i64 %.sroa.46.0.us1535, %.pn.i.i3.us
  %i.ag = icmp ult i64 %i.ai, 63
  br i1 %i.ag, label %.lr.ph37, label %.critedge, !llvm.loop !2245

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us
  %i.ah = phi i64 [ %i.aq, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us ], [ %.promoted40, %.lr.ph37.preheader ]
  %.sroa.7.0.us1436 = phi ptr [ %i.ar, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us ], [ %.sroa.7.0.copyload, %.lr.ph37.preheader ] ; 5 uses
  %.sroa.46.0.us1535 = phi i64 [ %i.af, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us ], [ %.sroa.46.0.copyload, %.lr.ph37.preheader ] ; 2 uses
  %i.ai = phi i64 [ %i.aw, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us ], [ %i.m, %.lr.ph37.preheader ] ; 3 uses
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !536
  %i.ak = icmp eq ptr %.sroa.7.0.us1436, %i.aj
  %.sroa.0.0.copyload1.i.i.us = load ptr, ptr %.sroa.7.0.us1436, align 8, !tbaa !362 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us1436, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us, align 8, !tbaa !126 ; 3 uses
  br i1 %i.ak, label %bb.e, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us

bb.e:                                             ; preds = %.lr.ph37
  %i.al = load i64, ptr %i.j, align 8, !tbaa !594
  %spec.select.i.i.i.us = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.sroa.4.0.copyload.i.i.us) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.us, i64 %spec.select.i.i.i.us
  %i.an = sub i64 %.sroa.4.0.copyload.i.i.us, %spec.select.i.i.i.us
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us: ; preds = %bb.e, %.lr.ph37
  %.pn3.i.i.us = phi ptr [ %i.am, %bb.e ], [ %.sroa.0.0.copyload1.i.i.us, %.lr.ph37 ]
  %.pn.i.i.us = phi i64 [ %i.an, %bb.e ], [ %.sroa.4.0.copyload.i.i.us, %.lr.ph37 ]
  %spec.select.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.46.0.us1535, i64 %.pn.i.i.us) ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  store ptr %.pn3.i.i.us, ptr %i.ao, align 8, !tbaa !362
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %spec.select.i.us, ptr %i.ap, align 8, !tbaa !833
  %i.aq = add i64 %i.ah, %spec.select.i.us        ; 2 uses
  store i64 %i.aq, ptr %i.k, align 8, !tbaa !852
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us1436, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !536
  %i.at = icmp eq ptr %.sroa.7.0.us1436, %i.as
  %.sroa.4.0.copyload.i.i2.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us, align 8, !tbaa !126 ; 2 uses
  br i1 %i.at, label %bb.f, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us

bb.f:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us
  %i.au = load i64, ptr %i.j, align 8, !tbaa !594
  %i.av = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i2.us, i64 %i.au)
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us: ; preds = %bb.f, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us
  %.pn.i.i3.us = phi i64 [ %i.av, %bb.f ], [ %.sroa.4.0.copyload.i.i2.us, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.us ]
  %i.aw = add nuw nsw i64 %i.ai, 1                ; 2 uses
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !851
  %.not = icmp eq ptr %i.ar, %i.g
  br i1 %.not, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us..critedge.loopexit33_crit_edge, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us, !llvm.loop !2245

.split:                                           ; preds = %bb.a
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !851 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 64
  br i1 %i.ay, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %.promoted = load i64, ptr %i.k, align 8, !tbaa !852
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !536
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit
  %i.az = phi ptr [ %.pre, %.lr.ph ], [ %i.bk, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit ]
  %i.ba = phi i64 [ %.promoted, %.lr.ph ], [ %i.bi, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit ]
  %i.bb = phi i64 [ %i.ax, %.lr.ph ], [ %i.bp, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit ] ; 2 uses
  %.sroa.46.011 = phi i64 [ %.sroa.46.0.copyload, %.lr.ph ], [ %i.bo, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit ] ; 2 uses
  %.sroa.7.010 = phi ptr [ %.sroa.7.0.copyload, %.lr.ph ], [ %i.bj, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit ] ; 5 uses
  %i.bc = icmp eq ptr %.sroa.7.010, %i.az
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %.sroa.7.010, align 8, !tbaa !362 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.010, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !126 ; 3 uses
  br i1 %i.bc, label %bb.h, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !594
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.bf = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit: ; preds = %bb.g, %bb.h
  %.pn3.i.i = phi ptr [ %i.be, %bb.h ], [ %.sroa.0.0.copyload1.i.i, %bb.g ]
  %.pn.i.i = phi i64 [ %i.bf, %bb.h ], [ %.sroa.4.0.copyload.i.i, %bb.g ]
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.46.011, i64 %.pn.i.i) ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bb ; 2 uses
  store ptr %.pn3.i.i, ptr %i.bg, align 8, !tbaa !362
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %spec.select.i, ptr %i.bh, align 8, !tbaa !833
  %i.bi = add i64 %i.ba, %spec.select.i           ; 2 uses
  store i64 %i.bi, ptr %i.k, align 8, !tbaa !852
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.010, i64 16
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !536 ; 2 uses
  %i.bl = icmp eq ptr %.sroa.7.010, %i.bk
  %.sroa.4.0.copyload.i.i2 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !126 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_EEEEEEEEEE9all_emptyERKSQ_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptrD2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !631  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #32
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.c) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.e) #32
  store ptr null, ptr %i.a, align 8, !tbaa !631
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !623  ; 5 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !623
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !622
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !631
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !623
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.305", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_EEEEEEEEEEC2ERKSQ_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !627
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !862
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !630
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !628
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !863
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_EEEEEEEEEEC2ERKSQ_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 40 uses
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !857, !noalias !2309 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  store ptr %i.b, ptr %2, align 8, !tbaa !859, !alias.scope !2312
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !855, !noalias !2312
  store i64 %i.e, ptr %i.c, align 8, !tbaa !860, !alias.scope !2312
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !854, !noalias !2312, !nonnull !140, !align !141 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !750, !noalias !2313 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !751, !noalias !2313 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratorC2ERKSI_.exit.thread20.i
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratorC2ERKSI_.exit.thread20.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !751, !alias.scope !2313
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !710, !noalias !2313 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.q = load i8, ptr %i.p, align 8, !tbaa !713, !noalias !2313 ; 2 uses
  switch i8 %i.q, label %bb.d [
    i8 0, label %.thread.i
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread.i:                                        ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.r, align 8, !tbaa !710, !alias.scope !2313
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.t, align 8, !tbaa !713, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.v, align 8, !tbaa !710, !alias.scope !2313
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.u, ptr %i.x, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.z, align 8, !tbaa !710, !alias.scope !2313
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !710, !alias.scope !2313
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !715, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !710, !alias.scope !2313
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !546, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.al, align 8, !tbaa !710, !alias.scope !2313
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !129, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !710, !alias.scope !2313
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.ao, ptr %i.ar, align 8, !tbaa !129, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.as = phi ptr [ %i.aq, %bb.j ], [ %i.am, %bb.i ], [ %i.ai, %bb.h ], [ %i.ae, %bb.g ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 %i.q, ptr %i.at, align 8, !tbaa !713, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.au, ptr %i.av, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2313
  store ptr %i.i, ptr %i.f, align 8, !tbaa !750, !alias.scope !2313
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !751, !alias.scope !2313
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !351, !alias.scope !2313
  br label %.sink.split.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.bj = load i8, ptr %i.j, align 8, !tbaa !129, !noalias !2313
end_hunk_4
begin_hunk_5_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_EEEEEEEEEE9all_emptyERKSJ_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptrD2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !645  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #32
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.c) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.e) #32
  store ptr null, ptr %i.a, align 8, !tbaa !645
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !637  ; 5 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !637
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !636
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !645
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !637
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.312", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_EEEEEEEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !641
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !873
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !644
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !642
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !874
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_EEEEEEEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 12 uses
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !868, !noalias !2393 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  store ptr %i.b, ptr %2, align 8, !tbaa !870, !alias.scope !2396
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !866, !noalias !2396
  store i64 %i.e, ptr %i.c, align 8, !tbaa !871, !alias.scope !2396
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !865, !noalias !2396, !nonnull !140, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344, !noalias !2399 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !354, !noalias !2399 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2399
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !351, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2399
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !351, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2399
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !351, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2399
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !351, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2399
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !351, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load i8, ptr %i.j, align 8, !tbaa !129, !noalias !2399
  store ptr %i.i, ptr %i.f, align 8, !tbaa !344, !alias.scope !2399
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.w, ptr %i.x, align 8, !tbaa !129, !alias.scope !2399
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.l, ptr %i.y, align 8, !tbaa !354, !alias.scope !2399
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.g, ptr %i.z, align 8, !tbaa !775, !alias.scope !2399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  store ptr %i.b, ptr %3, align 8, !tbaa !870, !alias.scope !2404
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !867, !noalias !2404
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !871, !alias.scope !2404
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !344, !noalias !2404
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !344, !alias.scope !2404
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !354, !alias.scope !2404
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !354, !noalias !2404 ; 2 uses
  switch i8 %i.ak, label %bb.i [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
  ]

bb.i:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  unreachable

bb.j:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2404
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2404
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2404
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2404
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2404
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2404
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2404
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2404
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !2404
  store ptr %i.ap, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2404
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.aq = load i8, ptr %i.ah, align 8, !tbaa !129, !noalias !2404
  store i8 %i.aq, ptr %i.ag, align 8, !tbaa !129, !alias.scope !2404
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !354, !alias.scope !2404
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !775, !noalias !2404
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !775, !alias.scope !2404
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_EEEEEEEEEE4initINSI_14const_iteratorEEEvT_SN_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_EEEEEEEEEE4initINSI_14const_iteratorEEEvT_SN_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344
  store ptr %i.c, ptr %i.a, align 8, !tbaa !344
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i8 0, ptr %i.f, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !354   ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE14const_iteratorC2ERKSF_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]
end_hunk_5
begin_hunk_6_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_S3_S3_SD_EEEEEEEEEE9all_emptyERKSJ_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptrD2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #32
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.c) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.e) #32
  store ptr null, ptr %i.a, align 8, !tbaa !659
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !651  ; 5 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !651
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !650
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !659
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !651
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEENSA_13write_some_opINSA_8write_opINSA_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS9_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS9_12basic_fieldsISX_EEEEST_NSA_18serializer_is_doneELb0ESY_S10_EEST_Lb0ESY_S10_EESS_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS3_4http6detail10chunk_sizeENS0_12const_bufferENS9_10chunk_crlfESC_SD_SC_SC_SD_EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.319", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_S3_S3_SD_EEEEEEEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !655
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !884
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !658
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !656
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !885
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS4_4http6detail10chunk_sizeES3_NSA_10chunk_crlfES3_SD_S3_S3_SD_EEEEEEEEEEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 24 uses
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !879, !noalias !2474 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  store ptr %i.b, ptr %2, align 8, !tbaa !881, !alias.scope !2477
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !877, !noalias !2477
  store i64 %i.e, ptr %i.c, align 8, !tbaa !882, !alias.scope !2477
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !876, !noalias !2477, !nonnull !140, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !779, !noalias !2480 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.l = load i8, ptr %i.k, align 8, !tbaa !780, !noalias !2480 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.m, align 8, !tbaa !780, !alias.scope !2480
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.q, ptr %i.r, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.t, ptr %i.u, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !351, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.al = load i8, ptr %i.j, align 8, !tbaa !129, !noalias !2480
  store ptr %i.i, ptr %i.f, align 8, !tbaa !779, !alias.scope !2480
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !780, !alias.scope !2480
  store i8 %i.al, ptr %i.am, align 8, !tbaa !129, !alias.scope !2480
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ao = phi ptr [ %i.an, %bb.k ], [ %i.ak, %bb.j ], [ %i.ah, %bb.i ], [ %i.ae, %bb.h ], [ %i.ab, %bb.g ], [ %i.y, %bb.f ], [ %i.v, %bb.e ], [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store i8 %i.l, ptr %i.ao, align 8, !tbaa !780, !alias.scope !2480
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iteratorC2ERKS9_.exit.thread.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.g, ptr %i.ap, align 8, !tbaa !812, !alias.scope !2480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  store ptr %i.b, ptr %3, align 8, !tbaa !881, !alias.scope !2485
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !878, !noalias !2485
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !882, !alias.scope !2485
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !779, !noalias !2485
  store ptr %i.av, ptr %i.at, align 8, !tbaa !779, !alias.scope !2485
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !780, !alias.scope !2485
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !780, !noalias !2485 ; 2 uses
  switch i8 %i.ba, label %bb.l [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
    i8 6, label %bb.r
    i8 7, label %bb.s
    i8 8, label %bb.t
    i8 9, label %bb.u
  ]

bb.l:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  unreachable

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !351, !noalias !2485
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !351, !alias.scope !2485
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !351, !noalias !2485
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !351, !alias.scope !2485
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !351, !noalias !2485
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !351, !alias.scope !2485
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !351, !noalias !2485
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !351, !alias.scope !2485
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !351, !noalias !2485
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !351, !alias.scope !2485
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE.exit
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !351, !noalias !2485
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !351, !alias.scope !2485
end_hunk_6
begin_hunk_7_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEE9all_emptyERKSQ_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptrD2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !673  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #32
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.c) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.e) #32
  store ptr null, ptr %i.a, align 8, !tbaa !673
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !665  ; 5 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !665
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !664
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !673
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !665
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEENSJ_13write_some_opINSJ_8write_opINSJ_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESC_EESD_EES10_NSJ_18serializer_is_doneELb0ES14_SD_EES10_Lb0ES14_SD_EESZ_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_S9_S9_SG_EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.326", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEEC2ERKSQ_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !669
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !895
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !672
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !670
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !896
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEEC2ERKSQ_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %4 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %5 = alloca %"class.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator", align 8 ; 6 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !890, !noalias !2560 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  store ptr %i.b, ptr %6, align 8, !tbaa !892, !alias.scope !2563
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !888, !noalias !2563
  store i64 %i.e, ptr %i.c, align 8, !tbaa !893, !alias.scope !2563
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !887, !noalias !2563, !nonnull !140, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2566
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !794, !noalias !2567
  store ptr %i.h, ptr %5, align 8, !tbaa !794, !noalias !2567
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !795, !noalias !2567
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = load i8, ptr %i.l, align 8, !tbaa !795, !noalias !2567
  %i.n = zext i8 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !2567
  store ptr %i.i, ptr %4, align 8, !tbaa !806, !noalias !2567
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !806, !noalias !2567
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b, !noalias !2566

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !2567
  %i.q = load ptr, ptr %5, align 8, !tbaa !794, !noalias !2567
  store ptr %i.q, ptr %i.p, align 8, !tbaa !794, !alias.scope !2567
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !795, !alias.scope !2567
  %i.t = load i8, ptr %i.k, align 8, !tbaa !795, !noalias !2567
  %i.u = zext i8 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !2567
  store ptr %i.r, ptr %3, align 8, !tbaa !806, !noalias !2567
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.v, align 8, !tbaa !806, !noalias !2567
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !2567
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.f, ptr %i.y, align 8, !tbaa !808, !alias.scope !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2566
  call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  %i.z = load ptr, ptr %1, align 8, !tbaa !890, !noalias !2570 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  store ptr %i.z, ptr %7, align 8, !tbaa !892, !alias.scope !2573
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !889, !noalias !2573
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !893, !alias.scope !2573
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !794, !noalias !2573
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !794, !alias.scope !2573
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.ai, align 8, !tbaa !795, !alias.scope !2573
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !795, !noalias !2573
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !2573
  store ptr %i.ag, ptr %2, align 8, !tbaa !806, !noalias !2573
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !806, !noalias !2573
  invoke void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_S8_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !2573
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !808, !noalias !2574
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !808, !alias.scope !2573
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEE4initINSP_14const_iteratorEEEvT_SU_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS6_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_S3_S3_SG_EEEEEEEEEE4initINSP_14const_iteratorEEEvT_SU_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 16 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, const boost::asio::const_buffer *, boost::beast::detail::buffers_cat_view_iterator_base::past_end>::copy", align 8 ; 5 uses
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !794
  store ptr %i.c, ptr %i.a, align 8, !tbaa !794
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  store i8 0, ptr %i.e, align 8, !tbaa !795
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !795
  %i.h = zext i8 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !806
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %i.x = insertelement <2 x ptr> poison, ptr %5, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %7, i64 1
  %i.z = getelementptr inbounds nuw i8, <2 x ptr> %i.y, <2 x i64> <i64 8, i64 24>
  store ptr %i.w, ptr %6, align 8, !tbaa !806
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm11EE4callILm0ENS_5beast6detail7variantIJNS5_16buffers_cat_viewIJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEE14const_iteratorEPKSA_SL_SL_SL_SL_SL_SL_SL_NS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_(i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !808
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !808
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.ad = load ptr, ptr %7, align 8, !tbaa !892
  %i.ae = load ptr, ptr %2, align 8, !tbaa !892
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !808
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !808
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !794
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !794
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.am = load i8, ptr %i.e, align 8, !tbaa !795  ; 2 uses
  %i.an = load i8, ptr %i.o, align 8, !tbaa !795
  %.not.i.i.i.i.i = icmp eq i8 %i.am, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  switch i8 %i.am, label %bb.g [
    i8 0, label %.critedge
end_hunk_7
begin_hunk_8_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJS3_S3_NS4_4http10chunk_crlfEEEEEEEEEEE9all_emptyERKSH_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptrD2Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !701  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #32
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.c) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.e) #32
  store ptr null, ptr %i.a, align 8, !tbaa !701
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !693  ; 5 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptr5resetEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 696
  %i.p = load i8, ptr %i.o, align 1, !tbaa !129
  store i8 %i.p, ptr %i.g, align 1, !tbaa !129
  store ptr %i.g, ptr %i.n, align 8, !tbaa !362
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptr5resetEv.exit"

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.g) #32
  br label %"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptr5resetEv.exit"

"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptr5resetEv.exit": ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm"(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::beast::detail::buffers_ref<boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>>, boost::beast::http::detail::write_some_op<boost::beast::http::detail::write_op<boost::beast::http::detail::write_msg_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/http_snippets.cpp:130:9), boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::http::detail::serializer_is_done, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::basic_stream_socket<boost::asio::ip::tcp>, false, boost::beast::http::basic_string_body<char>, boost::beast::http::basic_fields<std::allocator<char>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.261", align 8 ; 8 uses
  %6 = alloca %"class.boost::asio::detail::binder2.264", align 8 ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !693
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.h = and i64 %.sroa.5.0.copyload4.i, 1
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @"_ZZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEmE3loc" to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.i
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZN5boost5beast4http6detail13write_some_opINS2_8write_opINS2_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsISH_EEEESD_NS2_18serializer_is_doneELb0ESI_SK_EESD_Lb0ESI_SK_EC2EOSO_"(ptr noundef nonnull align 8 dereferenceable(520) %6, ptr noundef nonnull align 8 dereferenceable(488) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !381
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 512
  %i.m = load i64, ptr %i.j, align 8, !tbaa !126
  store i64 %i.m, ptr %i.l, align 8, !tbaa !743
  store ptr %6, ptr %4, align 8, !tbaa !692
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %i.d) #32
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #32
  store ptr null, ptr %i.c, align 8, !tbaa !701
  %i.n = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !362
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ 1, %.preheader.1.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.v = load i8, ptr %i.u, align 8, !tbaa !129
  store i8 %i.v, ptr %1, align 8, !tbaa !129
  store ptr %1, ptr %i.t, align 8, !tbaa !362
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %1) #32
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !693
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5boost4asio6detail12handler_workINS_5beast4http6detail13write_some_opINS5_8write_opINS5_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENS4_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS4_12basic_fieldsISJ_EEEESF_NS5_18serializer_is_doneELb0ESK_SM_EESF_Lb0ESK_SM_EESE_vE8completeINS1_7binder2ISQ_NS_6system10error_codeEmEEEEvRT_RSQ_"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(520) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  fence release
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  fence release
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  call void @"_ZN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS_4asio19basic_stream_socketINS8_2ip3tcpENS8_15any_io_executorEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISH_EEEESD_NS3_18serializer_is_doneELb0ESI_SK_EESC_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(520) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #32
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(112) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call fastcc void @"_ZN5boost4asio6detail23reactive_socket_send_opINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEENSA_6detail13write_some_opINSI_8write_opINSI_12write_msg_opIZN17doc_http_snippets3fxxEvE3$_1NS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEELb0ENSA_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSA_12basic_fieldsISW_EEEESS_NSI_18serializer_is_doneELb0ESX_SZ_EESS_Lb0ESX_SZ_EESR_E3ptrD2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES9_NS3_4http10chunk_crlfEEEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.333", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJS3_S3_NS4_4http10chunk_crlfEEEEEEEEEEEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !697
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !906
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !700
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i8, ptr %i.k, align 4, !tbaa !698
  %i.m = and i8 %i.l, 16
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !tbaa !520
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.p = load i64, ptr %i.o, align 8, !tbaa !907
  %i.q = icmp ult i64 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJS3_S3_NS4_4http10chunk_crlfEEEEEEEEEEEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 10 uses
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !901, !noalias !2647 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  store ptr %i.b, ptr %2, align 8, !tbaa !903, !alias.scope !2650
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !899, !noalias !2650
  store i64 %i.e, ptr %i.c, align 8, !tbaa !904, !alias.scope !2650
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !898, !noalias !2650, !nonnull !140, !align !141 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !677, !noalias !2653 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !369, !noalias !2653 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratorC2ERKS7_.exit.thread.i.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratorC2ERKS7_.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !677, !alias.scope !2653
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2653
  store ptr %i.i, ptr %i.f, align 8, !tbaa !677, !alias.scope !2653
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !351, !alias.scope !2653
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2653
  store ptr %i.i, ptr %i.f, align 8, !tbaa !677, !alias.scope !2653
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !351, !alias.scope !2653
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !351, !noalias !2653
  store ptr %i.i, ptr %i.f, align 8, !tbaa !677, !alias.scope !2653
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !351, !alias.scope !2653
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.j, align 8, !tbaa !129, !noalias !2653
  store ptr %i.i, ptr %i.f, align 8, !tbaa !677, !alias.scope !2653
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.s, ptr %i.t, align 8, !tbaa !129, !alias.scope !2653
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_4http10chunk_crlfEEE14const_iteratorC2ERKS7_.exit.thread.i.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.l, ptr %i.u, align 8, !tbaa !369, !alias.scope !2653
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.g, ptr %i.v, align 8, !tbaa !810, !alias.scope !2653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  store ptr %i.b, ptr %3, align 8, !tbaa !903, !alias.scope !2658
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !900, !noalias !2658
  store i64 %i.y, ptr %i.w, align 8, !tbaa !904, !alias.scope !2658
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !677, !noalias !2658
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !677, !alias.scope !2658
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !369, !alias.scope !2658
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !369, !noalias !2658 ; 2 uses
  switch i8 %i.ag, label %bb.g [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  unreachable

bb.h:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !351, !noalias !2658
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !351, !alias.scope !2658
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !351, !noalias !2658
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !351, !alias.scope !2658
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !351, !noalias !2658
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !351, !alias.scope !2658
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit
  %i.ak = load i8, ptr %i.ad, align 8, !tbaa !129, !noalias !2658
  store i8 %i.ak, ptr %i.ac, align 8, !tbaa !129, !alias.scope !2658
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !369, !alias.scope !2658
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES8_NS2_4http10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSJ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSL_IXntsr14is_convertibleISM_PKS8_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_SN_EE5valueEiE4typeENSL_IXntsr14is_convertibleISI_S8_EE5valueEiE4typeE.exit, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !810, !noalias !2658
  store ptr %i.an, ptr %i.al, align 8, !tbaa !810, !alias.scope !2658
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJS3_S3_NS4_4http10chunk_crlfEEEEEEEEEEE4initINSG_14const_iteratorEEEvT_SL_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJS3_S3_NS4_4http10chunk_crlfEEEEEEEEEEE4initINSG_14const_iteratorEEEvT_SL_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !677
  store ptr %i.c, ptr %i.a, align 8, !tbaa !677
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i8 0, ptr %i.f, align 8, !tbaa !369
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !369   ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !351
  store ptr %i.i, ptr %i.d, align 8, !tbaa !351
  br label %.sink.split.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !351
  store ptr %i.j, ptr %i.d, align 8, !tbaa !351
  br label %.sink.split.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !351
  store ptr %i.k, ptr %i.d, align 8, !tbaa !351
  br label %.sink.split.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.e, align 8, !tbaa !129
  store i8 %i.l, ptr %i.d, align 8, !tbaa !129
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  store i8 %i.h, ptr %i.f, align 8, !tbaa !369
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE14const_iteratorC2ERKSD_.exit: ; preds = %bb.a, %.sink.split.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
end_hunk_8
