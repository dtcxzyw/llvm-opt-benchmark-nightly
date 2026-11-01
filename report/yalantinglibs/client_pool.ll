Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client_pool?download=true
inline.NumInlined: 38388
inline.NumDeleted: 14601
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN2tl6detail21expected_storage_baseIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_9rpc_errorELb0ELb0EED2Ev:bb.a
_ZN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9getFutureEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2021   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !226

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.252)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #40
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !2022, !range !263, !noundef !264
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2EPNS_11FutureStateIS6_EE.exit, !prof !226

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.375)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEC2EPNS_11FutureStateIS6_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store i8 1, ptr %i.d, align 8, !tbaa !2022
  store ptr %i.a, ptr %0, align 8, !tbaa !2033
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.i, align 8, !tbaa !2034
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.j, align 8, !tbaa !2035
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_9rpc_errorEEEEEE12return_valueISH_EEvOT_Qsr3stdE16is_convertible_vIOTL0__SK_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2037
  switch i8 %i.c, label %bb.g [
    i8 -1, label %bb.h
    i8 0, label %bb.h
    i8 1, label %bb.b
    i8 2, label %bb.e
  ], !prof !241

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2039 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr nonnull %i.d)
          to label %bb.h unwind label %bb.d, !inline_history !119

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #51
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !272
  %.not.i.i.i.i.i.i.i8.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i8.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.a) #40
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a, %bb.a
  %i.j = load i64, ptr %1, align 8, !tbaa !247
  store i64 %i.j, ptr %i.a, align 8, !tbaa !247
  store ptr null, ptr %1, align 8, !tbaa !2039
  store i8 1, ptr %i.b, align 8, !tbaa !2037
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc15coro_rpc_client23build_failed_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEESG_(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.2349") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(40) %1) local_unnamed_addr #36 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(240) ptr @_ZnamRKSt9nothrow_t(i64 noundef 240, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #55 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN8coro_rpc15coro_rpc_client23build_failed_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEESG_.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client23build_failed_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEESG_.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.reload.addr48 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i16, ptr %1, align 8, !tbaa !218
  store i16 %i.d, ptr %.reload.addr, align 8, !tbaa !218
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !221
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %.from.39, label %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !247, !alias.scope !5595
  br label %bb.c

.from.39:                                         ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !225  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %AfterCoroEnd

.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  store ptr %i.h, ptr %i.e, align 8, !tbaa !224
  %i.o = load i64, ptr %i.i, align 8, !tbaa !214
  store i64 %i.o, ptr %i.g, align 8, !tbaa !214
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !225
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.from.39
  %i.p = phi i64 [ %.pre, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %.from.39 ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i64 %i.p, ptr %i.r, align 8, !tbaa !225
  store ptr %i.i, ptr %i.f, align 8, !tbaa !224
  store i64 0, ptr %i.q, align 8, !tbaa !225
  store i8 0, ptr %i.i, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.reload.addr48, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.s, align 8, !tbaa !2041
  store ptr %i.a, ptr %0, align 8, !tbaa !247, !alias.scope !5596
  %index.addr49 = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i8 0, ptr %index.addr49, align 8
  br label %bb.c

bb.c:                                             ; preds = %AfterCoroEnd, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSE_IN2tl8expectedINS2_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS2_9rpc_errorEEEEEEENS2_16request_config_tEDpOT0_EUlRT_E_EEDaOSS_(ptr dead_on_unwind noalias writable sret(%"class.async_simple::coro::Lazy.2451") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !918  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5618)
  %i.c = load ptr, ptr %2, align 8, !tbaa !2045, !noalias !5618
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !247, !noalias !5618
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !5619, !noalias !5618, !nonnull !264, !align !382
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2048, !noalias !5618
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !891, !noalias !5618
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !5620, !noalias !5618, !nonnull !264
  %i.l = tail call noalias noundef dereferenceable_or_null(272) ptr @_ZnamRKSt9nothrow_t(i64 noundef 272, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #55, !noalias !5618, !inline_history !5599 ; 11 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.n, align 1, !noalias !5618
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN7coro_io11ib_socket_tEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRNS6_12period_timerEDpOT1_.resume, ptr %i.l, align 8, !noalias !5618
  %destroy.addr.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN7coro_io11ib_socket_tEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRNS6_12period_timerEDpOT1_.destroy, ptr %destroy.addr.i.i, align 8, !noalias !5618
  %.reload.addr253.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.spill.addr244.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  store ptr %i.k, ptr %.spill.addr244.i.i, align 8, !noalias !5618
  %.spill.addr241.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  store ptr %i.i, ptr %.spill.addr241.i.i, align 8, !noalias !5618
  %.spill.addr229.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %3 = insertelement <4 x ptr> poison, ptr %i.c, i64 0
  %4 = insertelement <4 x ptr> %3, ptr %i.b, i64 1
  %5 = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x ptr> %4, <4 x ptr> %5, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %6, ptr %.spill.addr229.i.i, align 8, !noalias !5618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr253.i.i, i8 0, i64 24, i1 false), !noalias !5618
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i8 0, ptr %i.o, align 8, !tbaa !2050, !noalias !5618
  store ptr %i.l, ptr %0, align 8, !tbaa !247, !alias.scope !5621
  %index.addr254.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store i8 0, ptr %index.addr254.i.i, align 8, !noalias !5618
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !247, !alias.scope !5622
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !919  ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5623)
  %i.r = load ptr, ptr %2, align 8, !tbaa !2045, !noalias !5623
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !247, !noalias !5623
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5619, !noalias !5623, !nonnull !264, !align !382
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2048, !noalias !5623
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !891, !noalias !5623
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !5620, !noalias !5623, !nonnull !264
  %i.aa = tail call noalias noundef dereferenceable_or_null(272) ptr @_ZnamRKSt9nothrow_t(i64 noundef 272, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #55, !noalias !5623, !inline_history !5606 ; 11 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i14

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i14: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.ac, align 1, !noalias !5623
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio3ssl6streamIRNS6_19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.resume, ptr %i.aa, align 8, !noalias !5623
  %destroy.addr.i.i5 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio3ssl6streamIRNS6_19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.destroy, ptr %destroy.addr.i.i5, align 8, !noalias !5623
  %.reload.addr253.i.i6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.spill.addr244.i.i7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  store ptr %i.z, ptr %.spill.addr244.i.i7, align 8, !noalias !5623
  %.spill.addr241.i.i8 = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  store ptr %i.x, ptr %.spill.addr241.i.i8, align 8, !noalias !5623
  %.spill.addr229.i.i10 = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %7 = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %8 = insertelement <4 x ptr> %7, ptr %i.q, i64 1
  %9 = shufflevector <2 x ptr> %i.t, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x ptr> %8, <4 x ptr> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %10, ptr %.spill.addr229.i.i10, align 8, !noalias !5623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr253.i.i6, i8 0, i64 24, i1 false), !noalias !5623
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i8 0, ptr %i.ad, align 8, !tbaa !2050, !noalias !5623
  store ptr %i.aa, ptr %0, align 8, !tbaa !247, !alias.scope !5624
  %index.addr254.i.i13 = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store i8 0, ptr %index.addr254.i.i13, align 8, !noalias !5623
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !247, !alias.scope !5625
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.g:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %1, align 8, !tbaa !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5626)
  %i.af = load ptr, ptr %2, align 8, !tbaa !2045, !noalias !5626
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !247, !noalias !5626
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5619, !noalias !5626, !nonnull !264, !align !382
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2048, !noalias !5626
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !891, !noalias !5626
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !5620, !noalias !5626, !nonnull !264
  %i.ao = tail call noalias noundef dereferenceable_or_null(272) ptr @_ZnamRKSt9nothrow_t(i64 noundef 272, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #55, !noalias !5626, !inline_history !5613 ; 11 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i25

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i25: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 264
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.aq, align 1, !noalias !5626
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.resume, ptr %i.ao, align 8, !noalias !5626
  %destroy.addr.i.i16 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client21send_request_for_implITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEN4asio19basic_stream_socketINS6_2ip3tcpENS6_15any_io_executorEEEJRA13_KcEEEN12async_simple4coro4LazyINS_9rpc_errorEEERT0_RNS_16request_config_tERjRN7coro_io12period_timerEDpOT1_.destroy, ptr %destroy.addr.i.i16, align 8, !noalias !5626
  %.reload.addr253.i.i17 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.spill.addr244.i.i18 = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  store ptr %i.an, ptr %.spill.addr244.i.i18, align 8, !noalias !5626
  %.spill.addr241.i.i19 = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  store ptr %i.al, ptr %.spill.addr241.i.i19, align 8, !noalias !5626
  %.spill.addr.i.i23 = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  %i.ar = insertelement <4 x ptr> poison, ptr %i.af, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.ae, i64 1
  %i.at = shufflevector <2 x ptr> %i.ah, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x ptr> %i.as, <4 x ptr> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.au, ptr %.spill.addr.i.i23, align 8, !noalias !5626
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr253.i.i17, i8 0, i64 24, i1 false), !noalias !5626
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store i8 0, ptr %i.av, align 8, !tbaa !2050, !noalias !5626
  store ptr %i.ao, ptr %0, align 8, !tbaa !247, !alias.scope !5627
  %index.addr254.i.i24 = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  store i8 0, ptr %index.addr254.i.i24, align 8, !noalias !5626
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !247, !alias.scope !5628
  br label %_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit

_ZZN8coro_rpc15coro_rpc_client12send_requestITnDaXadL_Z4echoB5cxx11St17basic_string_viewIcSt11char_traitsIcEEEEJRA13_KcEEEN12async_simple4coro4LazyINSB_IN2tl8expectedINS_24async_rpc_result_value_tIDTcl15get_return_typeIXT_EEEEEENS_9rpc_errorEEEEEEENS_16request_config_tEDpOT0_ENKUlRT_E_clIN7coro_io11ib_socket_tEEEDaSQ_.exit: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i25, %bb.h, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i14, %bb.f, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i, %bb.c
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.2349") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(136) %1, ptr nofreeobj noundef align 8 dereferenceable(16) %2, ptr nofreeobj noundef align 8 dereferenceable(8) %3, i64 noundef %4) local_unnamed_addr #36 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.3113, align 8           ; 4 uses
  %i.a = tail call noalias noundef dereferenceable_or_null(816) ptr @_ZnamRKSt9nothrow_t(i64 noundef 816, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #55 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN8coro_rpc15coro_rpc_client22deserialize_rpc_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN12async_simple4coro4LazyIN2tl8expectedINS_24async_rpc_result_value_tIT_EENS_9rpc_errorEEEEENS8_6FutureISt7variantIJNS0_31async_rpc_raw_result_value_typeESt10error_codeEEEESt8weak_ptrINS0_9control_tEENS0_13recving_guardEm.destroy, ptr %destroy.addr, align 8
  %.reload.addr344 = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.reload.addr354 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 760
  store i64 %4, ptr %.spill.addr, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !2033
  store ptr %i.d, ptr %.reload.addr344, align 8, !tbaa !2033
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store i8 -1, ptr %i.g, align 8, !tbaa !2034
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !2034  ; 3 uses
  switch i8 %i.i, label %bb.e [
    i8 0, label %AfterCoroEnd
    i8 1, label %bb.c
    i8 2, label %.from.250
    i8 -1, label %AfterCoroEnd
  ]

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !247, !alias.scope !5633
  br label %bb.f

bb.c:                                             ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  store i8 -1, ptr %i.j, align 8, !tbaa !2052
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.e, ptr %5, align 8, !tbaa !2055
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEC1EOS8_EUlOT_T0_E_JSt7variantIJS6_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #51
  unreachable

.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load i8, ptr %i.m, align 8, !tbaa !2052
  store i8 %i.n, ptr %i.j, align 8, !tbaa !2052
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.h, align 8, !tbaa !2034
  br label %AfterCoroEnd

.from.250:                                        ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !272
  store ptr %i.o, ptr %i.e, align 8, !tbaa !272
  store ptr null, ptr %i.f, align 8, !tbaa !272
  br label %AfterCoroEnd

bb.e:                                             ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit
  unreachable

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i, %.from.250
  %i.p = phi i8 [ 2, %.from.250 ], [ %.pre.i.i.i.i.i.i.i.i, %.from._ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateSt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEENSt15__exception_ptr13exception_ptrEEEC1EOSE_EUlOT_T0_E_OS6_IJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SM_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.i, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit ], [ %i.i, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit ]
  store i8 %i.p, ptr %i.g, align 8, !tbaa !2034
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1092
  store ptr null, ptr %i.r, align 8, !tbaa !1092
  store ptr %i.s, ptr %i.q, align 8, !tbaa !2035
  store ptr null, ptr %1, align 8, !tbaa !2033
  %.spill.addr315 = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !247
  store <2 x ptr> %i.t, ptr %.spill.addr315, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %3, align 8, !tbaa !2057
  %.spill.addr331 = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store ptr %i.u, ptr %.spill.addr331, align 8
  store ptr null, ptr %3, align 8, !tbaa !2057
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.reload.addr354, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.v, align 8, !tbaa !2041
  store ptr %i.a, ptr %0, align 8, !tbaa !247, !alias.scope !5634
  %index.addr355 = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store i8 0, ptr %index.addr355, align 8
  br label %bb.f

bb.f:                                             ; preds = %AfterCoroEnd, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.660, align 1            ; 3 uses
  %2 = alloca %class.anon.660, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2033   ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %i.c, 1
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE9detachOneEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.f = load i8, ptr %i.e, align 8, !tbaa !2034
  switch i8 %i.f, label %bb.j [
    i8 -1, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 0, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit
    i8 1, label %bb.d
    i8 2, label %bb.h
  ], !prof !241

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2052
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEED2Ev.exit, !prof !2058

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load i8, ptr %i.i, align 8, !tbaa !899
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !226

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
end_hunk_0
begin_hunk_1_@_Z4sendv.resume:resume.entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i82581, ptr noundef nonnull align 1 dereferenceable(3) @.str.99, i64 3, i1 false), !tbaa.struct !731
  store i64 %i.ei, ptr %.reload.addr, align 8, !tbaa !253
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 5, ptr %i.ex, align 8, !tbaa !258
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ez = load i8, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.al, label %._crit_edge.i.i3, !prof !259

._crit_edge.i.i3:                                 ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80.thread
  %.pre.i.i4 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  %.pre.i5 = load i32, ptr %.pre.i.i4, align 4, !tbaa !215
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i6

bb.al:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80.thread
  %i.fb = tail call i64 (i64, ...) @syscall(i64 noundef 186) #40
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !215
  store i8 1, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i6

_ZN7easylog8record_t8_get_tidEv.exit.i6:          ; preds = %bb.al, %._crit_edge.i.i3
  %i.fe = phi i32 [ %.pre.i5, %._crit_edge.i.i3 ], [ %i.fc, %bb.al ]
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !260
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !221
  %i.fh = invoke noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #53
          to label %.noexc12 unwind label %bb.aw  ; 5 uses

.noexc12:                                         ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i6
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !224
  store i64 21, ptr %i.fg, align 8, !tbaa !214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.fh, ptr noundef nonnull align 8 dereferenceable(21) %.reload.addr668, i64 21, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 21, ptr %i.fi, align 8, !tbaa !225
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 21
  store i8 0, ptr %i.fj, align 1, !tbaa !214
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !221
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i64 0, ptr %i.fm, align 8, !tbaa !225
  store i8 0, ptr %i.fl, align 8, !tbaa !214
  %i.fn = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #53
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i84 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7 ; 7 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7: ; preds = %.noexc12
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = icmp ne ptr %i.fh, %i.fg
  tail call void @llvm.assume(i1 %i.fp)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 22) #52
  br label %.body38.from.570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i84: ; preds = %.noexc12
  store ptr %i.fn, ptr %i.fk, align 8, !tbaa !224
  store i64 64, ptr %i.fl, align 8, !tbaa !214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.fn, ptr noundef nonnull align 1 dereferenceable(11) @.str.15, i64 11, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 11, ptr %i.fm, align 8, !tbaa !225
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 11 ; 3 uses
  store i8 0, ptr %i.fs, align 1, !tbaa !214
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !224 ; 3 uses
  %i.fu = load i64, ptr %i.fq, align 8, !tbaa !225 ; 5 uses
  %i.fv = icmp ugt i64 %i.fu, 9223372036854775796
  br i1 %i.fv, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i93

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i84
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #54
          to label %.noexc100 unwind label %.body104.from..loopexit.split-lp179

.noexc100:                                        ; preds = %bb.am
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i93: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i84
  %i.fw = add nuw nsw i64 %i.fu, 11               ; 3 uses
  %i.fx = icmp eq ptr %i.fn, %i.fl
  %spec.select = select i1 %i.fx, i64 15, i64 64
  %.not.i.i.i96 = icmp samesign ugt i64 %i.fw, %spec.select
  br i1 %.not.i.i.i96, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i93
  switch i64 %i.fu, label %bb.ap [
    i64 0, label %bb.ar
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fy = load i8, ptr %i.ft, align 1, !tbaa !214
  store i8 %i.fy, ptr %i.fs, align 1, !tbaa !214
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr align 1 %i.ft, i64 %i.fu, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i64 noundef 11, i64 noundef 0, ptr noundef %i.ft, i64 noundef %i.fu)
          to label %._crit_edge18 unwind label %.body104.from..loopexit.split-lp179

._crit_edge18:                                    ; preds = %bb.aq
  %.pre19 = load ptr, ptr %i.fk, align 8, !tbaa !224
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %._crit_edge18, %bb.ap, %bb.ao
  %i.fz = phi ptr [ %.pre19, %._crit_edge18 ], [ %i.fn, %bb.ap ], [ %i.fn, %bb.ao ], [ %i.fn, %bb.an ]
  store i64 %i.fw, ptr %i.fm, align 8, !tbaa !225
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fw
  store i8 0, ptr %i.ga, align 1, !tbaa !214
  %i.gb = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.as, label %_ZN7easylog6loggerILm0EE8instanceEv.exit106, !prof !216

bb.as:                                            ; preds = %bb.ar
  %i.gd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #40
  %.not.i103 = icmp eq i32 %i.gd, 0
  br i1 %.not.i103, label %_ZN7easylog6loggerILm0EE8instanceEv.exit106, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.au unwind label %.body104.from.

bb.au:                                            ; preds = %bb.at
  %i.ge = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #40
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit106

.body104.from.:                                   ; preds = %bb.at
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #40
  br label %.from..body104

_ZN7easylog6loggerILm0EE8instanceEv.exit106:      ; preds = %bb.au, %bb.as, %bb.ar
  %i.gg = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !263, !noundef !264
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit108, label %bb.av, !prof !226

bb.av:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit106
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit108 unwind label %.body104.from..loopexit.split-lp179

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit108: ; preds = %bb.av, %_ZN7easylog6loggerILm0EE8instanceEv.exit106
  %i.gi = load ptr, ptr %i.fk, align 8, !tbaa !224 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fl
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit108
  %i.gk = load i64, ptr %i.fl, align 8, !tbaa !214
  %i.gl = add i64 %i.gk, 1
  tail call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i110: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109
  %i.gm = load ptr, ptr %i.ff, align 8, !tbaa !224 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fg
  br i1 %i.gn, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i110
  %i.go = load i64, ptr %i.fg, align 8, !tbaa !214
  %i.gp = add i64 %i.go, 1
  tail call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #52
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i111
  %.sroa.0136.0265.reload.addr660 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.0136.0265.reload661 = load i64, ptr %.sroa.0136.0265.reload.addr660, align 8, !tbaa !2977
  %.sroa.12.0267.reload.addr614 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gq = load <2 x ptr>, ptr %.sroa.12.0267.reload.addr614, align 8, !tbaa !2977
  %.sroa.0138.0268.reload.addr588 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0138.0268.reload589 = load ptr, ptr %.sroa.0138.0268.reload.addr588, align 8, !tbaa !2977
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

bb.aw:                                            ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i6
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  br label %.body38.from.570

.body104.from..loopexit.split-lp179:              ; preds = %bb.av, %bb.aq, %bb.am
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body104

.from..body104:                                   ; preds = %.body104.from., %.body104.from..loopexit.split-lp179
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.gf, %.body104.from. ], [ %lpad.loopexit.split-lp181, %.body104.from..loopexit.split-lp179 ]
  tail call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.reload.addr) #40
  br label %.body38.from.570

.body38.from.570:                                 ; preds = %.from..body104, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7
  %.pn27 = phi { ptr, i32 } [ %eh.lpad-body105, %.from..body104 ], [ %i.gr, %bb.aw ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7 ]
  %.sroa.18.0266.reload.addr626 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.18.0266.reload627 = load ptr, ptr %.sroa.18.0266.reload.addr626, align 8, !tbaa !2977
  br label %.from..body38

bb.ax:                                            ; preds = %_ZNR2tl8expectedINS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcE5valueIS9_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSE_v.exit
  %.sroa.0136.0265.reload.addr664 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.0136.0265.reload665 = load i64, ptr %.sroa.0136.0265.reload.addr664, align 8, !tbaa !2977
  %.sroa.18.0266.reload.addr652 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.18.0266.reload653 = load ptr, ptr %.sroa.18.0266.reload.addr652, align 8, !tbaa !2977
  %.sroa.12.0267.reload.addr622 = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %.sroa.12.0267.reload623 = load ptr, ptr %.sroa.12.0267.reload.addr622, align 8, !tbaa !2977
  %i.gs = atomicrmw add ptr @qps, i32 1 release, align 4 ; 0 uses
  %i.gt = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #40 ; 3 uses
  %i.gu = sub nsw i64 %i.gt, %.sroa.0136.0265.reload665
  %i.gv = sdiv i64 %i.gu, 1000                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0267.reload623, %.sroa.18.0266.reload653
  %.sroa.12.0267.reload621 = load ptr, ptr %.sroa.12.0267.reload.addr622, align 8, !tbaa !2977 ; 3 uses
  br i1 %.not.i.i, label %bb.ay, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.: ; preds = %bb.ax
  store i64 %i.gv, ptr %.sroa.12.0267.reload621, align 8, !tbaa !253
  %1 = load <2 x ptr>, ptr %.sroa.12.0267.reload.addr622, align 8, !tbaa !2977
  %2 = getelementptr inbounds nuw i8, <2 x ptr> %1, <2 x i64> <i64 8, i64 0>
  %.sroa.0138.0268.reload.addr592 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0138.0268.reload593 = load ptr, ptr %.sroa.0138.0268.reload.addr592, align 8, !tbaa !2977
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

bb.ay:                                            ; preds = %bb.ax
  %.sroa.0138.0268.reload.addr602 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0138.0268.reload603 = load ptr, ptr %.sroa.0138.0268.reload.addr602, align 8, !tbaa !2977 ; 3 uses
  %i.gw = ptrtoint ptr %.sroa.12.0267.reload621 to i64
  %i.gx = ptrtoint ptr %.sroa.0138.0268.reload603 to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 6 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775800
  br i1 %i.gz, label %bb.az, label %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #54
          to label %.noexc115 unwind label %.body38.from..loopexit.split-lp184

.noexc115:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ay
  %i.ha = ashr exact i64 %i.gy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ha ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.ha
  %i.hd = tail call i64 @llvm.umin.i64(i64 %i.hb, i64 1152921504606846975)
  %i.he = select i1 %i.hc, i64 1152921504606846975, i64 %i.hd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.he, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #53
          to label %.noexc116 unwind label %.body38.from..loopexit183 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gy ; 2 uses
  store i64 %i.gv, ptr %i.hh, align 8, !tbaa !253
  %i.hi = icmp sgt i64 %i.gy, 0
  br i1 %i.hi, label %bb.ba, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

bb.ba:                                            ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr align 8 %.sroa.0138.0268.reload603, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %.noexc116, %bb.ba
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0268.reload603, i64 noundef %i.gy) #52
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  %i.hl = insertelement <2 x ptr> poison, ptr %i.hj, i64 0
  %i.hm = insertelement <2 x ptr> %i.hl, ptr %i.hk, i64 1
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from., %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit73, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit
  %.sroa.0136.1 = phi i64 [ %.sroa.0136.0265.reload, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.0136.0265.reload661, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114 ], [ %.sroa.0136.0265.reload659, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80 ], [ %.sroa.0136.0265.reload663, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit73 ], [ %.sroa.0136.0265.reload655, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.0136.0265.reload657, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.gt, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.gt, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ]
  %.sroa.0138.1 = phi ptr [ %.sroa.0138.0268.reload, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.0138.0268.reload589, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114 ], [ %.sroa.0138.0268.reload587, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80 ], [ %.sroa.0138.0268.reload591, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit73 ], [ %.sroa.0138.0268.reload583, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.0138.0268.reload585, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.hg, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0138.0268.reload593, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 2 uses
  %i.hn = phi i1 [ false, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ true, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114 ], [ true, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80 ], [ true, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit73 ], [ false, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ false, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ false, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ false, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ]
  %i.ho = phi <2 x ptr> [ %i.am, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %i.gq, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit114 ], [ %i.ew, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit80 ], [ %i.eh, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8instanceEv.exit73 ], [ %i.dp, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog8record_tD2Ev.exit ], [ %i.bb, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.hm, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %2, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 3 uses
  %i.hp = load i8, ptr %i.ac, align 8, !tbaa !262, !range !263, !noundef !264
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bb, label %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit

bb.bb:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !266, !range !263, !noundef !264
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.hv = load ptr, ptr %.reload.addr667, align 8, !tbaa !224 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hu
  br i1 %i.hw, label %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit, label %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit.sink.split

bb.bd:                                            ; preds = %bb.bb
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !224 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.hx
  br i1 %i.ia, label %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit, label %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit.sink.split

_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit.sink.split: ; preds = %bb.bd, %bb.bc
  %.sink75.in = phi ptr [ %i.hu, %bb.bc ], [ %i.hx, %bb.bd ]
  %.sink = phi ptr [ %i.hv, %bb.bc ], [ %i.hz, %bb.bd ]
  %.sink75 = load i64, ptr %.sink75.in, align 8, !tbaa !214
  %i.ib = add i64 %.sink75, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ib) #52
  br label %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit: ; preds = %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit.sink.split, %bb.bd, %bb.bc, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit
  %.020269.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.020269.reload = load i32, ptr %.020269.reload.addr, align 8, !tbaa !2977
  %i.ic = add nuw nsw i32 %.020269.reload, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ic, 100000
  %or.cond = select i1 %i.hn, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.thread, label %.from._ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit, !llvm.loop !9828

.from._ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit: ; preds = %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit
  %i.id = extractelement <2 x ptr> %i.ho, i64 0
  %i.ie = extractelement <2 x ptr> %i.ho, i64 1
  br label %bb.a, !llvm.loop !9828

.body38.from..loopexit183:                        ; preds = %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit185 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body38

.body38.from..loopexit.split-lp184:               ; preds = %bb.az
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          catch ptr null
  %.sroa.12.0267.reload = load ptr, ptr %.sroa.12.0267.reload.addr622, align 8, !tbaa !2977
  br label %.from..body38

.from..body38:                                    ; preds = %.body38.from., %.body38.from.567, %.body38.from.572, %.body38.from.564, %.body38.from.561, %.body38.from.570, %.body38.from..loopexit183, %.body38.from..loopexit.split-lp184
  %.sroa.18.0266295 = phi ptr [ %.sroa.18.0266.reload627, %.body38.from.570 ], [ %.sroa.18.0266.reload633, %.body38.from.561 ], [ %.sroa.18.0266.reload625, %.body38.from.572 ], [ %.sroa.18.0266.reload635, %.body38.from. ], [ %.sroa.18.0266.reload629, %.body38.from.567 ], [ %.sroa.18.0266.reload631, %.body38.from.564 ], [ %.sroa.12.0267.reload621, %.body38.from..loopexit183 ], [ %.sroa.12.0267.reload, %.body38.from..loopexit.split-lp184 ]
  %.pn28.pn = phi { ptr, i32 } [ %.pn27, %.body38.from.570 ], [ %i.en, %.body38.from.561 ], [ %.pn26.pn.pn, %.body38.from.572 ], [ %i.aj, %.body38.from. ], [ %i.as, %.body38.from.567 ], [ %i.ee, %.body38.from.564 ], [ %lpad.loopexit185, %.body38.from..loopexit183 ], [ %lpad.loopexit.split-lp186, %.body38.from..loopexit.split-lp184 ]
  tail call void @_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.reload.addr667) #40
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121.from.

.thread:                                          ; preds = %_ZN2tl6detail21expected_storage_baseINS_8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcLb0ELb1EED2Ev.exit
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ih = load i8, ptr %i.if, align 8, !tbaa !252
  switch i8 %i.ih, label %bb.bi [
    i8 -1, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
    i8 0, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
    i8 1, label %bb.be
    i8 2, label %bb.bg
  ], !prof !241

bb.be:                                            ; preds = %.thread
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !270
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #52
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread

bb.bg:                                            ; preds = %.thread
  %i.io = load ptr, ptr %i.ig, align 8, !tbaa !272
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.ig) #40
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread

bb.bi:                                            ; preds = %.thread
  unreachable

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %.thread, %.thread
  store ptr %.sroa.0138.1, ptr %i.ig, align 8, !tbaa !269
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x ptr> %i.ho, ptr %i.ip, align 8, !tbaa !280
  store i8 1, ptr %i.if, align 8, !tbaa !252
  br label %bb.bj

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121.from.: ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EED2Ev.exit41, %.from..body38
  %.sroa.18.0266293 = phi ptr [ %.sroa.18.0266295, %.from..body38 ], [ %.sroa.18.0266.reload, %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EED2Ev.exit41 ]
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %.from..body38 ], [ %.pn.pn, %.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EED2Ev.exit41 ]
  %.sroa.0138.0268.reload.addr594 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0138.0268.reload595 = load ptr, ptr %.sroa.0138.0268.reload.addr594, align 8, !tbaa !2977 ; 2 uses
  %i.iq = ptrtoint ptr %.sroa.18.0266293 to i64
  %i.ir = ptrtoint ptr %.sroa.0138.0268.reload595 to i64
  %i.is = sub i64 %i.iq, %i.ir
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0268.reload595, i64 noundef %i.is) #52
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121.from., %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121.from..thread165
  %.pn = phi { ptr, i32 } [ %i.f, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121.from..thread165 ], [ %.pn28.pn.pn, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121.from. ]
  %.11171 = extractvalue { ptr, i32 } %.pn, 0
  %i.it = tail call ptr @__cxa_begin_catch(ptr %.11171) #40 ; 0 uses
  tail call void @_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr674) #40
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 2
  %.sroa.0.0.copyload.i.i16 = load ptr, ptr %.reload.addr674, align 8, !tbaa !247 ; 2 uses
  %i.iu = load ptr, ptr %.sroa.0.0.copyload.i.i16, align 8
  musttail call void %i.iu(ptr nonnull %.sroa.0.0.copyload.i.i16)
  ret void

bb.bk:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit121
  %i.iv = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 2
  resume { ptr, i32 } %i.iv
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_Z4sendv.destroy(ptr noundef nonnull align 8 dereferenceable(304) %0) #50 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 298
  %index = load i8, ptr %index.addr, align 2
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2, label %AfterCoroSuspend, !prof !9838

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2: ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %.reload.addr, align 8, !tbaa !2869 ; 3 uses
  %.not.i34.jt2 = icmp eq ptr %i.b, null
  br i1 %.not.i34.jt2, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread385, label %bb.a

bb.a:                                             ; preds = %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread385 unwind label %.loopexit.split-lp392, !inline_history !147

.loopexit.split-lp392:                            ; preds = %bb.a
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %lpad.loopexit.split-lp394, 0
  tail call void @__clang_call_terminate(ptr %i.e) #51
  unreachable

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread385: ; preds = %bb.a, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedINS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8coro_rpc9rpc_errorEEESt4errcEELb0EE12ValueAwaiter12await_resumeEv.exit.jt2
  %.sroa.18.0266.reload.addr650 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.18.0266.reload651 = load ptr, ptr %.sroa.18.0266.reload.addr650, align 8, !tbaa !2977
  %.sroa.0138.0268.reload.addr596 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.0138.0268.reload597 = load ptr, ptr %.sroa.0138.0268.reload.addr596, align 8, !tbaa !2977 ; 2 uses
  %i.f = ptrtoint ptr %.sroa.18.0266.reload651 to i64
  %i.g = ptrtoint ptr %.sroa.0138.0268.reload597 to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0268.reload597, i64 noundef %i.h) #52
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread385
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !252
  switch i8 %i.k, label %bb.f [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
    i8 1, label %bb.b
    i8 2, label %bb.d
  ], !prof !241

bb.b:                                             ; preds = %AfterCoroSuspend
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !269  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i122 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i122, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
end_hunk_1
