Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/bench?download=true
inline.NumInlined: 54229
inline.NumDeleted: 19446
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEEC2EOS3_:bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !295  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !296  ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZN8coro_rpc9rpc_errorC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8, !tbaa !295
  %i.n = load i64, ptr %i.h, align 8, !tbaa !285
  store i64 %i.n, ptr %i.f, align 8, !tbaa !285
  br label %_ZN8coro_rpc9rpc_errorC2EOS0_.exit

_ZN8coro_rpc9rpc_errorC2EOS0_.exit:               ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !296
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !296
  store ptr %i.h, ptr %i.e, align 8, !tbaa !295
  store i64 0, ptr %i.o, align 8, !tbaa !296
  store i8 0, ptr %i.h, align 8, !tbaa !285
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEEE, i64 16), ptr %0, align 8, !tbaa !269
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !285
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #52, !inline_history !6884
  br label %_ZN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEED2Ev.exit

_ZN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #43, !inline_history !6884
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK2tl19bad_expected_accessIN8coro_rpc9rpc_errorEE4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret ptr @.str.469
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail15LazyAwaiterBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEEE11awaitResumeEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::coro::Lazy.1837") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2724
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNO12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEEE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1882
  %i.f = load ptr, ptr %1, align 8, !tbaa !2724   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr %i.f)
          to label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit unwind label %bb.b, !inline_history !135

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit: ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !2724
  store i64 %i.d, ptr %0, align 8, !tbaa !416
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.not.i2 = icmp eq i64 %i.d, 0
  br i1 %.not.i2, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit3, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr nonnull %i.e)
          to label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit3 unwind label %bb.d, !inline_history !111

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #51
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit3: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNO12async_simple4coro6detail11LazyPromiseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEEE6resultEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1880
  switch i8 %i.c, label %bb.g [
    i8 2, label %bb.b
    i8 1, label %_ZSt3getIN12async_simple4coro4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEEEEJSt9monostateSE_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !1542

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateN12async_simple4coro4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS8_9rpc_errorEEEEES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.a)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !434  ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !434
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #43
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1) #54
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !tbaa !434
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !269
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str.262, ptr %i.i, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.j, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @.str.261, ptr %i.k, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt3getIN12async_simple4coro4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEEEEJSt9monostateSE_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateN12async_simple4coro4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS8_9rpc_errorEEEEES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1880
  switch i8 %i.b, label %bb.b [
    i8 2, label %_ZSt3getILm2EJSt9monostateN12async_simple4coro4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSM_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !466

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !269
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.262, ptr %i.d, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !269
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.261, ptr %i.f, align 8, !tbaa !469
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt3getILm2EJSt9monostateN12async_simple4coro4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSM_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail15LazyAwaiterBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEEE11awaitResumeEv(ptr dead_on_unwind noalias writable sret(%"class.tl::expected.1816") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tl::expected.1816", align 8 ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = load ptr, ptr %1, align 8, !tbaa !1882
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(113) ptr @_ZNO12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEEE6resultEv(ptr noundef nonnull align 8 dereferenceable(152) %i.b) ; 21 uses
  store i8 0, ptr %2, align 8, !tbaa !285
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !1857
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1857, !range !346, !noundef !347
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !292
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !295  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !296  ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %2, align 8, !tbaa !295
  %i.p = load i64, ptr %i.j, align 8, !tbaa !285
  store i64 %i.p, ptr %i.h, align 8, !tbaa !285
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %4 = load i64, ptr %3, align 8, !tbaa !296
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %4, ptr %i.q, align 8, !tbaa !296
  store ptr %i.j, ptr %i.c, align 8, !tbaa !295
  store i64 0, ptr %3, align 8, !tbaa !296
  store i8 0, ptr %i.j, align 8, !tbaa !285
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i8 -1, ptr %i.t, align 8, !tbaa !1343
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1343  ; 2 uses
  switch i8 %i.v, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 -1, label %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE14construct_withINS0_18expected_move_baseIS8_S9_Lb0EEEEEvOT_.exit.i
  ]

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.r, align 8, !tbaa !292
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !295  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !296 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  %.pre.i.i.i.i.i.i.i.i.i.i.i.pre = load i8, ptr %i.u, align 8, !tbaa !1343
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.x, ptr %i.r, align 8, !tbaa !295
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !285
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !285
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.pre.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.pre, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %5 = load i64, ptr %i.af, align 8, !tbaa !296
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %5, ptr %i.ag, align 8, !tbaa !296
  store ptr %i.y, ptr %i.s, align 8, !tbaa !295
  store i64 0, ptr %i.af, align 8, !tbaa !296
  store i8 0, ptr %i.y, align 8, !tbaa !285
  br label %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE14construct_withINS0_18expected_move_baseIS8_S9_Lb0EEEEEvOT_.exit.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !1367
  store ptr %i.ah, ptr %i.r, align 8, !tbaa !1367
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1555
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1555
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %6, align 8, !tbaa !314
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !416
  store ptr null, ptr %i.an, align 8, !tbaa !314
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 24, i1 false)
  br label %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE14construct_withINS0_18expected_move_baseIS8_S9_Lb0EEEEEvOT_.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  unreachable

_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE14construct_withINS0_18expected_move_baseIS8_S9_Lb0EEEEEvOT_.exit.i: ; preds = %bb.f, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %7 = phi i8 [ 1, %bb.f ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i ]
  store i8 %7, ptr %i.t, align 8, !tbaa !1343
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !1814
  br label %_ZN2tl6detail18expected_move_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorELb0EEC2EOSA_.exit

bb.h:                                             ; preds = %bb.a
  %i.at = load i16, ptr %i.c, align 8, !tbaa !289
  store i16 %i.at, ptr %2, align 8, !tbaa !289
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !292
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !295 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i2

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !296 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE15construct_errorIJNS_10unexpectedIS9_EEEEEvDpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i2: ; preds = %bb.h
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !295
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !285
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !285
  br label %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE15construct_errorIJNS_10unexpectedIS9_EEEEEvDpOT_.exit.i

_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE15construct_errorIJNS_10unexpectedIS9_EEEEEvDpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i2, %bb.i
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %9 = load i64, ptr %8, align 8, !tbaa !296
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %9, ptr %i.bf, align 8, !tbaa !296
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !295
  store i64 0, ptr %8, align 8, !tbaa !296
  store i8 0, ptr %i.ay, align 8, !tbaa !285
  br label %_ZN2tl6detail18expected_move_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorELb0EEC2EOSA_.exit

_ZN2tl6detail18expected_move_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorELb0EEC2EOSA_.exit: ; preds = %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE14construct_withINS0_18expected_move_baseIS8_S9_Lb0EEEEEvOT_.exit.i, %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE15construct_errorIJNS_10unexpectedIS9_EEEEEvDpOT_.exit.i
  %storemerge.i = phi i8 [ 0, %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE15construct_errorIJNS_10unexpectedIS9_EEEEEvDpOT_.exit.i ], [ 1, %_ZN2tl6detail24expected_operations_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEE14construct_withINS0_18expected_move_baseIS8_S9_Lb0EEEEEvOT_.exit.i ]
  store i8 %storemerge.i, ptr %i.d, align 8, !tbaa !1857
  %i.bg = load ptr, ptr %1, align 8, !tbaa !1882  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr %i.bg)
          to label %_ZNKSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS7_9rpc_errorEEEEEE7destroyEv.exit unwind label %bb.ad, !inline_history !111

_ZNKSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS7_9rpc_errorEEEEEE7destroyEv.exit: ; preds = %_ZN2tl6detail18expected_move_baseIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorELb0EEC2EOSA_.exit
  store ptr null, ptr %1, align 8, !tbaa !1882
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bk = load i8, ptr %i.d, align 8, !tbaa !1857, !range !346, !noundef !347
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS7_9rpc_errorEEEEEE7destroyEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !292
  %i.bn = load ptr, ptr %2, align 8, !tbaa !295   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !296 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6: ; preds = %bb.j
  store ptr %i.bn, ptr %0, align 8, !tbaa !295
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !285
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !285
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre16 = load i64, ptr %.phi.trans.insert15, align 8, !tbaa !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6, %bb.k
  %i.bv = phi i64 [ %.pre16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6 ], [ %i.br, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !296
  store ptr %i.bo, ptr %2, align 8, !tbaa !295
  store i64 0, ptr %i.bw, align 8, !tbaa !296
  store i8 0, ptr %i.bo, align 8, !tbaa !285
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !1343 ; 4 uses
  switch i8 %i.cc, label %bb.o [
    i8 0, label %bb.l
    i8 1, label %bb.n
    i8 -1, label %bb.r
  ]

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !292
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !295 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i9

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !296 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i9: ; preds = %bb.l
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !295
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !285
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !285
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre18 = load i64, ptr %.phi.trans.insert17, align 8, !tbaa !296
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i10

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i10: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i9, %bb.m
  %i.cm = phi i64 [ %.pre18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i9 ], [ %i.ci, %bb.m ]
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !296
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !295
  store i64 0, ptr %i.cn, align 8, !tbaa !296
  store i8 0, ptr %i.cf, align 8, !tbaa !285
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !1367
  store ptr %i.cp, ptr %i.by, align 8, !tbaa !1367
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1555
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !1555
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cw = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !416
  store ptr null, ptr %i.cv, align 8, !tbaa !314
  store <2 x ptr> %i.cw, ptr %i.ct, align 8, !tbaa !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i8 0, i64 24, i1 false)
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7
  unreachable

bb.p:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS7_9rpc_errorEEEEEE7destroyEv.exit
  %i.cx = load i16, ptr %2, align 8, !tbaa !289
  store i16 %i.cx, ptr %0, align 8, !tbaa !289
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !292
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !295 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i3

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !296 ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw nsw i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.dh, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i3: ; preds = %bb.p
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !295
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !285
  store i64 %i.di, ptr %i.da, align 8, !tbaa !285
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.a = load i64, ptr %.phi.trans.insert.a, align 8, !tbaa !296
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i2.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i7, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14memory_owner_tEEC1EOSC_EUlOT_T0_E_OSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SL_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i10, %bb.n
  store i8 %i.cc, ptr %i.ca, align 8, !tbaa !1343
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !1814
  store i8 1, ptr %i.bj, align 8, !tbaa !1857
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cc, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, label %bb.s, !prof !297

bb.s:                                             ; preds = %bb.r
  %i.dn = icmp eq i8 %i.cc, 0
  %i.do = load ptr, ptr %i.bz, align 8, !tbaa !326 ; 4 uses
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !285
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #52
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.do, null
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = icmp ne ptr %i.du, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.dv
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.do) #52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !314 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_0
