Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/core_3_timeouts?download=true
inline.NumInlined: 26958
inline.NumDeleted: 9825
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb":bb.a
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #38, !inline_history !59
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bi = atomicrmw sub ptr %i.bh, i32 1 acq_rel, align 4
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.k, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !395
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #38, !inline_history !60
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseINS_4asio6detail22read_until_delim_op_v2INS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS2_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS0_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EES8_SaIvEEE", i64 16), ptr %4, align 8, !tbaa !395
  %i.bn = load i8, ptr %i.v, align 8, !tbaa !539, !range !433, !noundef !434
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.l, label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2IS9_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmED2Ev.exit"

bb.l:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bp) #38, !inline_history !903
  br label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2IS9_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmED2Ev.exit"

"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2IS9_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmED2Ev.exit": ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i, %bb.l
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.t) #38, !inline_history !903
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  invoke fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit" unwind label %bb.m

bb.m:                                             ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2IS9_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmED2Ev.exit"
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #39
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2IS9_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.n:                                             ; preds = %bb.f
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #39
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !937  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb1ENS2_14mutable_bufferENS2_6detail22read_until_delim_op_v2IS7_NS2_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS0_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEE", i64 16), ptr %i.c, align 8, !tbaa !395
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.e = load i8, ptr %i.d, align 8, !tbaa !548, !range !433, !noundef !434
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !547  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !549
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !544  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #38, !inline_history !3840
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #38, !inline_history !3841
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseINS_4asio6detail22read_until_delim_op_v2INS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS2_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS0_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EES8_SaIvEEE", i64 16), ptr %i.c, align 8, !tbaa !395
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.x = load i8, ptr %i.w, align 8, !tbaa !539, !range !433, !noundef !434
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.h:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #38, !inline_history !903
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEED2Ev.exit": ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.aa) #38, !inline_history !903
  store ptr null, ptr %i.a, align 8, !tbaa !937
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISB_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEED2Ev.exit", %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !938 ; 5 uses
  %.not1 = icmp eq ptr %i.ac, null
  br i1 %.not1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !438
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !438
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.lcssa.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 304
  %i.am = load i8, ptr %i.al, align 1, !tbaa !404
  store i8 %i.am, ptr %i.ac, align 1, !tbaa !404
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !438
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISC_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSU_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.ac) #38
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISC_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSU_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISC_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSU_m.exit": ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.ab, align 8, !tbaa !938
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_14mutable_bufferENS1_22read_until_delim_op_v2ISC_NS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_1EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSU_m.exit", %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_recv_op_baseINS_5beast19buffers_prefix_viewINS0_14mutable_bufferEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter", align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !438
  %.sroa.4.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i, align 8, !tbaa !401 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.d, align 8, !tbaa !940
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.c, align 8, !tbaa !3843
  store i64 1, ptr %i.b, align 8, !tbaa !3844
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !923
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !925
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !924
  %i.k = and i8 %i.j, 16
  %i.l = icmp ne i8 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRNS_6system10error_codeERm(i32 noundef %i.f, ptr noundef nonnull %1, i64 noundef 1, i32 noundef %i.h, i1 noundef zeroext %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.i, align 4, !tbaa !924   ; 2 uses
  %i.q = and i8 %i.p, 16
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.n, align 8, !tbaa !941
  %.not12 = icmp sgt i8 %i.p, -1
  %i.s = load i64, ptr %i.c, align 8
  %spec.select13 = select i1 %.not12, i64 1, i64 %i.s
  %i.t = icmp ult i64 %i.r, %spec.select13
  %spec.select = select i1 %i.t, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRNS_6system10error_codeERm(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail20cancellation_handlerINS_5beast6detail27filtering_cancellation_slotINS0_17cancellation_slotEE15handler_wrapperINS1_28reactive_socket_service_base23reactor_op_cancellationEEEE4callENS0_17cancellation_typeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !943
  %i.c = and i32 %i.b, %1
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = and i32 %1, 7
  %i.e = icmp eq i32 %i.d, 0
  %or.cond.i = or i1 %i.e, %.not.i
  br i1 %or.cond.i, label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEclENS3_17cancellation_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !801
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !803
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !802
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !804
  tail call void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152) %i.g, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  br label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEclENS3_17cancellation_typeE.exit

_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEclENS3_17cancellation_typeE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4asio6detail20cancellation_handlerINS_5beast6detail27filtering_cancellation_slotINS0_17cancellation_slotEE15handler_wrapperINS1_28reactive_socket_service_base23reactor_op_cancellationEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !401
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN5boost4asio6detail28reactive_socket_service_base11do_start_opERNS2_24base_implementation_typeEiPNS1_10reactor_opEbbbbPFvPNS1_19scheduler_operationEbPKvESA_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9impl_type8on_timerIS5_EEvRKT_EN7handlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !555  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !395
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !29
  br label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit

_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10async_waitIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENSC_21unlimited_rate_policyEE9impl_type8on_timerISG_EEvRKT_E7handlerSG_EEvRNSA_19implementation_typeERSL_RKT0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::wait_handler<handler, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %2, ptr %4, align 8, !tbaa !947
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.c = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.b, i64 noundef 240, i64 noundef 8) ; 10 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !948
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !690
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.e, align 8, !tbaa !691
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !692
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %2) #38, !inline_history !3845
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !438
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !438
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  tail call void @_ZN5boost4asio6detail12handler_workIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_vEC2ERSF_RKS7_(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %3) #38, !inline_history !3845
  store ptr %i.c, ptr %i.d, align 8, !tbaa !949
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !611
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.m, align 8, !tbaa !595
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN5boost4asio6detail13epoll_reactor14schedule_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEvRNS1_11timer_queueIT_T0_EERKNSF_9time_typeERNSH_14per_timer_dataEPNS1_7wait_opE(ptr noundef nonnull align 8 dereferenceable(152) %.pre, ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptrD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39
  unreachable

_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptrD2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptrD2Ev.exit13 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptrD2Ev.exit13: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::wait_handler<handler, boost::asio::any_io_executor>::ptr", align 8 ; 9 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.240", align 8 ; 9 uses
  %6 = alloca %"class.boost::asio::detail::binder1.243", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !948
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !949
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #38
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.a) #38
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !438
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !766
  store ptr %6, ptr %4, align 8, !tbaa !947
  invoke void @_ZN5boost4asio6detail12wait_handlerIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !493
  %i.o = icmp ne ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ne ptr %i.q, null
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9impl_type8on_timerIS5_EEvRKT_EN7handlerclENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.l)
          to label %_ZN5boost4asio6detail12handler_workIZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE9impl_type8on_timerIS7_EEvRKT_E7handlerS7_vE8completeINS1_7binder1ISF_NS_6system10error_codeEEEEEvRSC_RSF_.exit unwind label %bb.g, !inline_history !3846

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1IZNS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS7_21unlimited_rate_policyEE9impl_type8on_timerISB_EEvRKT_E7handlerNS_6system10error_codeEEEEEvOSG_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %6)
end_hunk_0
begin_hunk_1_@"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEEEvPNS2_9impl_baseEb":bb.a
bb.m:                                             ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opIS9_NS3_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSH_NS1_14transfer_all_tEZZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSP_mE_EEEESP_mED2Ev.exit"
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #39
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opIS9_NS3_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSH_NS1_14transfer_all_tEZZNS3_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSP_mE_EEEESP_mED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.n:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #39
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEE3ptrD2Ev.exit8": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEE3ptr5resetEv"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1001 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS2_6detail16prepared_buffersINS2_12const_bufferELm64EEENSA_8write_opIS7_NS0_19buffers_prefix_viewINS2_14mutable_bufferEEEPKSG_NSA_14transfer_all_tEZZNS0_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSO_mE_EEEE", i64 16), ptr %i.c, align 8, !tbaa !395
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.e = load i8, ptr %i.d, align 8, !tbaa !548, !range !433, !noundef !434
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !547  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !549
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !544  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #38, !inline_history !3986
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #38, !inline_history !3987
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseINS_4asio6detail8write_opINS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS0_19buffers_prefix_viewINS2_14mutable_bufferEEEPKSC_NS3_14transfer_all_tEZZNS0_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSK_mE_EES8_SaIvEEE", i64 16), ptr %i.c, align 8, !tbaa !395
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.x = load i8, ptr %i.w, align 8, !tbaa !539, !range !433, !noundef !434
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEED2Ev.exit"

bb.h:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #38, !inline_history !966
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEED2Ev.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEED2Ev.exit": ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.aa) #38, !inline_history !966
  store ptr null, ptr %i.a, align 8, !tbaa !1001
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSJ_NS1_14transfer_all_tEZZNS5_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSR_mE_EEEESR_mEESaIvEED2Ev.exit", %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1002 ; 5 uses
  %.not1 = icmp eq ptr %i.ac, null
  br i1 %.not1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !438
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !438
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.lcssa.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 552
  %i.am = load i8, ptr %i.al, align 1, !tbaa !404
  store i8 %i.am, ptr %i.ac, align 1, !tbaa !404
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !438
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSK_NS1_14transfer_all_tEZZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSS_mE_EEEESS_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSY_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.ac) #38
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSK_NS1_14transfer_all_tEZZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSS_mE_EEEESS_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSY_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSK_NS1_14transfer_all_tEZZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSS_mE_EEEESS_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSY_m.exit": ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.ab, align 8, !tbaa !1002
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_19buffers_prefix_viewINS0_14mutable_bufferEEEPKSK_NS1_14transfer_all_tEZZNS6_12_GLOBAL__N_124core_3_timeouts_snippetsEvENK3$_1clENS_6system10error_codeEmEUlSS_mE_EEEESS_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSY_m.exit", %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast19buffers_prefix_viewINS1_16prepared_buffersINS0_12const_bufferELm64EEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.293", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !977, !noalias !3997 ; 2 uses
  %.not.i = icmp eq ptr %i.a, %i.e
  br i1 %.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load i64, ptr %i.f, align 8, !tbaa !978, !noalias !3998
  br label %bb.b

.lr.ph.split.i.i:                                 ; preds = %bb.b
  %i.h = sub i64 %.sroa.43.08.i.i15, %.sroa.5.0.copyload.i.i.i
  %exitcond.not.i = icmp eq i64 %i.o, 64
  br i1 %exitcond.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit, label %bb.b, !llvm.loop !3996

bb.b:                                             ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %.sroa.43.08.i.i15 = phi i64 [ %i.g, %.lr.ph.split.i.preheader.i ], [ %i.h, %.lr.ph.split.i.i ] ; 2 uses
  %.sroa.7.09.i.i14 = phi ptr [ %i.a, %.lr.ph.split.i.preheader.i ], [ %i.n, %.lr.ph.split.i.i ] ; 3 uses
  %i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i ], [ %i.o, %.lr.ph.split.i.i ] ; 2 uses
  %i.j = phi i64 [ 0, %.lr.ph.split.i.preheader.i ], [ %i.m, %.lr.ph.split.i.i ]
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.09.i.i14, align 8, !tbaa !438
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i14, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !401 ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.43.08.i.i15, i64 %.sroa.5.0.copyload.i.i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !438
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select.i.i.i, ptr %i.l, align 8, !tbaa !940
  %i.m = add i64 %spec.select.i.i.i, %i.j         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i14, i64 16 ; 2 uses
  %i.o = add nuw nsw i64 %i.i, 1                  ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit, label %.lr.ph.split.i.i, !llvm.loop !3996

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit: ; preds = %bb.b, %.lr.ph.split.i.i
  %.ph = phi i64 [ 64, %.lr.ph.split.i.i ], [ %i.o, %bb.b ]
  store i64 %i.m, ptr %i.c, align 8, !tbaa !4000
  store i64 %i.o, ptr %i.b, align 8, !tbaa !4001
  br label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit: ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit, %bb.a
  %i.p = phi i64 [ 0, %bb.a ], [ %.ph, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !987
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = load i32, ptr %i.s, align 8, !tbaa !989
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.r, ptr noundef nonnull %1, i64 noundef %i.p, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.y = load i8, ptr %i.x, align 4, !tbaa !988
  %i.z = and i8 %i.y, 16
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !941
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !4000
  %i.ac = icmp ult i64 %i.aa, %i.ab
  %spec.select = select i1 %i.ac, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit
  %.0 = phi i32 [ 0, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit ], [ %spec.select, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !414
  switch i64 %i.d, label %_ZNK5boost6system10error_code8categoryEv.exit.thread [
    i64 1, label %bb.b
    i64 0, label %_ZNK5boost6system10error_code5valueEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !417, !noalias !4009 ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !786, !noalias !4009
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !395, !noalias !4009
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !4009
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g), !inline_history !4004
  br label %bb.f

_ZNK5boost6system10error_code5valueEv.exit:       ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !4012
  %i.l = call ptr @strerror_r(i32 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 128) #38, !noalias !4012 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !399, !alias.scope !4012
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #40
  unreachable

bb.c:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !4012
  store i64 %i.o, ptr %i.a, align 8, !tbaa !401, !noalias !4012
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !403, !alias.scope !4012
  %i.r = load i64, ptr %i.a, align 8, !tbaa !401, !noalias !4012
  store i64 %i.r, ptr %i.m, align 8, !tbaa !404, !alias.scope !4012
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !404
  store i8 %i.t, ptr %i.s, align 1, !tbaa !404
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !401, !noalias !4012 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !405, !alias.scope !4012
  %i.w = load ptr, ptr %0, align 8, !tbaa !403, !alias.scope !4012
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !4012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !4012
  br label %bb.f

_ZNK5boost6system10error_code8categoryEv.exit.thread: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !404  ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !404
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !395
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %i.z, i32 noundef %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.thread, %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost4asio6detail22read_until_delim_op_v2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS0_21dynamic_string_bufferIcSt11char_traitsIcESaIcEEENS3_12_GLOBAL__N_112handler_typeEEclENS_6system10error_codeEmi(ptr noundef nonnull align 8 dereferenceable(57) initializes((36, 40)) %0, i32 %.0.val, i64 %.16.val, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %5 = alloca %"class.boost::asio::detail::binder0.313", align 8 ; 12 uses
  %6 = alloca %"struct.boost::asio::async_result<boost::asio::append_t<boost::asio::detail::read_until_delim_op_v2<boost::beast::basic_stream<boost::asio::ip::tcp>, boost::asio::dynamic_string_buffer<char, std::char_traits<char>, std::allocator<char>>, boost::beast::(anonymous namespace)::handler_type>, boost::system::error_code, unsigned long>, void ()>::init_wrapper", align 8 ; 10 uses
  %7 = alloca %"class.boost::asio::detail::initiate_dispatch_with_executor", align 8 ; 7 uses
  %8 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %9 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %10 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %11 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %12 = alloca %"class.boost::beast::basic_stream<boost::asio::ip::tcp>::ops::transfer_op.307", align 8 ; 27 uses
  %13 = alloca %"class.std::length_error", align 8 ; 5 uses
  %14 = alloca %"class.boost::asio::buffers_iterator", align 8 ; 8 uses
  %15 = alloca %"class.boost::asio::buffers_iterator", align 8 ; 10 uses
  %16 = alloca %"class.boost::asio::const_buffer", align 8 ; 11 uses
  %17 = alloca %"class.boost::asio::buffers_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !1003
  %cond.not = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %cond.not, label %bb.az, label %bb.b

bb.b:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %.not.i = icmp eq i64 %i.d, -1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !885 ; 3 uses
  br i1 %.not.i, label %bb.c, label %._ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit_crit_edge

._ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre137 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !886
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre139 = load i64, ptr %.phi.trans.insert138, align 8, !tbaa !405 ; 2 uses
  %.pre142 = tail call i64 @llvm.umin.i64(i64 %.pre139, i64 %.pre137)
  %i.e = tail call i64 @llvm.umin.i64(i64 %.pre142, i64 %i.d)
  br label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !405  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !886
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g)
  br label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit: ; preds = %._ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %i.e, %._ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit_crit_edge ], [ %.sroa.speculated.i, %bb.c ] ; 10 uses
  %i.j = phi i64 [ %.pre139, %._ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit_crit_edge ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  %i.l = load ptr, ptr %.pre, align 8
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.l ; 4 uses
  store ptr %spec.select.i.i, ptr %16, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.pre-phi, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %.not3.i = icmp eq i64 %.pre-phi, 0
  %spec.select.i = select i1 %.not3.i, ptr %i.n, ptr %16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !4033 ; 6 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit
  %i.r = icmp sgt i64 %.pre-phi, %i.p
  br i1 %i.r, label %._crit_edge63.i, label %.lr.ph62.i

._crit_edge63.i.loopexit:                         ; preds = %bb.d
  %.sroa.054.0.copyload56.le = load ptr, ptr %i.y, align 8, !tbaa !438
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %._crit_edge63.i.loopexit, %.preheader.i
  %.sroa.054.4 = phi ptr [ %spec.select.i.i, %.preheader.i ], [ %.sroa.054.0.copyload56.le, %._crit_edge63.i.loopexit ]
  %.sroa.757.4 = phi i64 [ %.pre-phi, %.preheader.i ], [ %.sroa.757.0.copyload61, %._crit_edge63.i.loopexit ]
  %.sroa.18.4 = phi ptr [ %spec.select.i, %.preheader.i ], [ %i.y, %._crit_edge63.i.loopexit ]
  %i.s = phi i64 [ 0, %.preheader.i ], [ %i.x, %._crit_edge63.i.loopexit ]
  %.024.lcssa.i = phi i64 [ %i.p, %.preheader.i ], [ %i.aa, %._crit_edge63.i.loopexit ] ; 2 uses
  %i.t = add i64 %.024.lcssa.i, %i.s
  br label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit

.lr.ph62.i:                                       ; preds = %.preheader.i, %bb.d
  %i.u = phi ptr [ %i.y, %bb.d ], [ %spec.select.i, %.preheader.i ] ; 3 uses
  %i.v = phi i64 [ %i.x, %bb.d ], [ 0, %.preheader.i ]
  %i.w = phi i64 [ %.sroa.757.0.copyload61, %bb.d ], [ %.pre-phi, %.preheader.i ] ; 2 uses
  %.02461.i = phi i64 [ %i.aa, %bb.d ], [ %i.p, %.preheader.i ]
  %i.x = add i64 %i.w, %i.v                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.u, %16
  br i1 %i.z, label %_ZN5boost4asio16buffers_iteratorINS0_12const_bufferEcE7advanceEl.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph62.i
  %i.aa = sub nsw i64 %.02461.i, %i.w             ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb:bb.a

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !395
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38, !inline_history !92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.k, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !395
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38, !inline_history !93
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS_4asio6detail8write_opINS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS2_14mutable_bufferEPKSB_NS3_14transfer_all_tENS0_12_GLOBAL__N_112handler_typeEEES8_SaIvEEE, i64 16), ptr %4, align 8, !tbaa !395
  %i.be = load i8, ptr %i.m, align 8, !tbaa !539, !range !433, !noundef !434
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opIS9_NS0_14mutable_bufferEPKSE_NS1_14transfer_all_tENS3_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmED2Ev.exit

bb.l:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bg) #38, !inline_history !1037
  br label %_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opIS9_NS0_14mutable_bufferEPKSE_NS1_14transfer_all_tENS3_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmED2Ev.exit

_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opIS9_NS0_14mutable_bufferEPKSE_NS1_14transfer_all_tENS3_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmED2Ev.exit: ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i, %bb.l
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.k) #38, !inline_history !1037
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  invoke fastcc void @_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opIS9_NS0_14mutable_bufferEPKSE_NS1_14transfer_all_tENS3_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #39
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opIS9_NS0_14mutable_bufferEPKSE_NS1_14transfer_all_tENS3_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.n:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #39
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1070 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS2_12const_bufferENS2_6detail8write_opIS7_NS2_14mutable_bufferEPKSD_NSB_14transfer_all_tENS0_12_GLOBAL__N_112handler_typeEEEEE, i64 16), ptr %i.c, align 8, !tbaa !395
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.e = load i8, ptr %i.d, align 8, !tbaa !548, !range !433, !noundef !434
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !547  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !549
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !544  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #38, !inline_history !4228
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !395
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #38, !inline_history !4229
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS_4asio6detail8write_opINS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS2_14mutable_bufferEPKSB_NS3_14transfer_all_tENS0_12_GLOBAL__N_112handler_typeEEES8_SaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !395
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.x = load i8, ptr %i.w, align 8, !tbaa !539, !range !433, !noundef !434
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit

bb.h:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #38, !inline_history !1037
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit: ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.aa) #38, !inline_history !1037
  store ptr null, ptr %i.a, align 8, !tbaa !1070
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1071 ; 5 uses
  %.not1 = icmp eq ptr %i.ac, null
  br i1 %.not1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !438
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !438
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.lcssa.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.am = load i8, ptr %i.al, align 1, !tbaa !404
  store i8 %i.am, ptr %i.ac, align 1, !tbaa !404
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !438
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.ac) #38
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.ab, align 8, !tbaa !1071
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_12_GLOBAL__N_112handler_typeEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast19buffers_prefix_viewINS0_12const_bufferEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.395", align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !438
  %.sroa.4.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i, align 8, !tbaa !401 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.d, align 8, !tbaa !940
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.c, align 8, !tbaa !4231
  store i64 1, ptr %i.b, align 8, !tbaa !4232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1056
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1058
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.f, ptr noundef nonnull %1, i64 noundef 1, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i8, ptr %i.l, align 4, !tbaa !1057
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8, !tbaa !941
  %i.p = load i64, ptr %i.c, align 8, !tbaa !4231
  %i.q = icmp ult i64 %i.o, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERNS3_10io_contextEEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.47") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::shared_ptr.47", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(568) ptr @_Znwm(i64 noundef 568) #43
          to label %_ZNK5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE29_internal_get_untyped_deleterEv.exit unwind label %bb.b ; 9 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #38 ; 0 uses
  invoke void @__cxa_rethrow() #40
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #39
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNK5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE29_internal_get_untyped_deleterEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.i, align 4, !tbaa !644
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !644
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6detail18sp_counted_impl_pdIPNS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeENS0_13sp_ms_deleterISA_EEEE, i64 16), ptr %i.b, align 8, !tbaa !395
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !4237
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1073
  store ptr %i.b, ptr %i.a, align 8, !tbaa !544
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_18simple_rate_policyEE9impl_typeC2IJRNS2_10io_contextEEEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(532) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZNK5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE29_internal_get_untyped_deleterEv.exit
  store i8 1, ptr %i.l, align 8, !tbaa !1073
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !555  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.thread.i.i, label %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.i.i

_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.thread.i.i, label %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit

_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.thread.i.i: ; preds = %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !544 ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i3.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.thread.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i: ; preds = %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.thread.i.i
  store ptr %i.m, ptr %i.m, align 8, !tbaa !4238
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !555  ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i4.i.i, label %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit, label %.thread.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.thread.i.i: ; preds = %bb.f, %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.thread.i.i
  %i.t = phi ptr [ %.pre, %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.thread.i.i ], [ %i.b, %bb.f ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = atomicrmw add ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  store ptr %i.m, ptr %i.m, align 8, !tbaa !4238
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !555
  %.not.i.i47.i.i = icmp eq ptr %i.t, %i.w
  br i1 %.not.i.i47.i.i, label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.thread.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.y = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !555 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread13.i.i, label %.thread.i.i

_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread13.i.i: ; preds = %bb.g
  store ptr %i.t, ptr %i.n, align 8, !tbaa !555
  br label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread.i.i

.thread.i.i:                                      ; preds = %bb.g, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i
  %.not.i.i3.i.i16 = phi i1 [ false, %bb.g ], [ true, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i ]
  %i.z = phi ptr [ %i.t, %bb.g ], [ null, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i ] ; 2 uses
  %i.aa = phi ptr [ %.pr.i.i.i.i, %bb.g ], [ %i.s, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.i.i

bb.h:                                             ; preds = %.thread.i.i
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !395
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #38, !inline_history !4233
  br label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.i.i

_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.i.i: ; preds = %bb.h, %.thread.i.i
  store ptr %i.z, ptr %i.n, align 8, !tbaa !555
  br i1 %.not.i.i3.i.i16, label %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit, label %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread.i.i

_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread.i.i: ; preds = %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.i.i, %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread13.i.i, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.thread.i.i
  %i.ah = phi ptr [ %i.z, %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.i.i ], [ %i.t, %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread13.i.i ], [ %i.t, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.thread.i.i ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit

bb.i:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread.i.i
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !395
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #38, !inline_history !4234
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ap = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !395
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #38, !inline_history !4235
  br label %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit

_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit: ; preds = %_ZNK5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE7expiredEv.exit.i.i, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEC2IS9_EERKNS0_IT_EEPS9_.exit.i.i, %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.i.i, %_ZN5boost8weak_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEEaSIS9_EERSA_RKNS_10shared_ptrIT_EE.exit.thread.i.i, %bb.i, %bb.j
  store ptr %i.m, ptr %0, align 8, !tbaa !641
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !544 ; 8 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !544
  %.not.i.i9 = icmp eq ptr %i.av, null
  br i1 %.not.i.i9, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = atomicrmw add ptr %i.aw, i32 1 monotonic, align 4 ; 0 uses
  %i.ay = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !395
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #38, !inline_history !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.be = atomicrmw sub ptr %i.bd, i32 1 acq_rel, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.m, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !395
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #38, !inline_history !9
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEED2Ev.exit

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEED2Ev.exit: ; preds = %_ZN5boost6detail26sp_enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS2_18simple_rate_policyEE9impl_typeESA_SA_EEvPKNS_10shared_ptrIT_EEPKT0_PKNS_23enable_shared_from_thisIT1_EE.exit, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.n:                                             ; preds = %_ZNK5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEE29_internal_get_untyped_deleterEv.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_18simple_rate_policyEE9impl_typeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_18simple_rate_policyEE9impl_typeC2IJRNS2_10io_contextEEEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(532) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::asio::ip::basic_endpoint", align 4 ; 4 uses
  %3 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %4 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %5 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
end_hunk_2
