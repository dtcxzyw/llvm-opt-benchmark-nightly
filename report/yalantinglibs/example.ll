Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN4asio3ssl7context21set_password_callbackIZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_bSA_EUlT_T0_E_EEvSD_:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #60 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !303
  store i64 %i.f, ptr %i.c, align 8, !tbaa !295
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_C2ERKSB_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !295
  store i8 %i.m, ptr %i.l, align 1, !tbaa !295
  br label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_C2ERKSB_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_C2ERKSB_.exit

_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_C2ERKSB_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !295
  %i.p = invoke { i32, ptr } @_ZN4asio3ssl7context21set_password_callbackIZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_bSA_EUlT_T0_E_EESt10error_codeSD_RSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_C2ERKSB_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !303    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.c, align 8, !tbaa !295
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #58
  br label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit

_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.u = load i32, ptr %3, align 8, !tbaa !440    ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN4asio6detail11throw_errorERKSt10error_codePKc.exit, label %bb.g

bb.g:                                             ; preds = %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %.sroa.21.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !528
  call void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %i.u, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull @.str.1097)
  %i.v = call ptr @__cxa_allocate_exception(i64 32) #45 ; 4 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2) #45
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %i.v, align 8, !tbaa !279
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !554
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #59
          to label %.noexc.i.i2 unwind label %bb.h

.noexc.i.i2:                                      ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit5, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.z, %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  br label %common.resume

_ZN4asio6detail11throw_errorERKSt10error_codePKc.exit: ; preds = %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret void

bb.i:                                             ; preds = %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_C2ERKSB_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !303   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.i
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !295
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #58
  br label %_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit5

_ZZN7cinatra20coro_http_connection8init_sslERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bS6_ENUlT_T0_E_D2Ev.exit5: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { i32, ptr } @_ZN4asio3ssl7context16load_verify_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @ERR_clear_error()
  %i.a = load ptr, ptr %0, align 8, !tbaa !1398
  %i.b = load ptr, ptr %1, align 8, !tbaa !303
  %i.c = tail call i32 @SSL_CTX_load_verify_locations(ptr noundef %i.a, ptr noundef %i.b, ptr noundef null)
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @ERR_get_error()           ; 2 uses
  %i.e = and i64 %i.d, 2147483648
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = trunc i64 %i.d to i32                    ; 4 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.i.i = and i32 %i.f, 2147483647              ; 3 uses
  %i.g = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZN4asio3ssl7context15translate_errorEl.exit, !prof !274

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #45
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN4asio3ssl7context15translate_errorEl.exit, label %_ZN4asio5error19get_system_categoryEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.j = load atomic i8, ptr @_ZGVZN4asio5error16get_ssl_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN4asio3ssl7context15translate_errorEl.exit, !prof !274

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error16get_ssl_categoryEvE8instance) #45
  %.not.i3.i = icmp eq i32 %i.l, 0
  br i1 %.not.i3.i, label %_ZN4asio3ssl7context15translate_errorEl.exit, label %_ZN4asio5error19get_system_categoryEv.exit.sink.split.i

_ZN4asio5error19get_system_categoryEv.exit.sink.split.i: ; preds = %bb.f, %bb.d
  %_ZZN4asio5error16get_ssl_categoryEvE8instance.sink.i = phi ptr [ @_ZZN4asio15system_categoryEvE8instance, %bb.d ], [ @_ZZN4asio5error16get_ssl_categoryEvE8instance, %bb.f ] ; 2 uses
  %_ZGVZN4asio5error16get_ssl_categoryEvE8instance.sink.i = phi ptr [ @_ZGVZN4asio15system_categoryEvE8instance, %bb.d ], [ @_ZGVZN4asio5error16get_ssl_categoryEvE8instance, %bb.f ]
  %.sroa.0.0.ph.i = phi i32 [ %.0.i.i, %bb.d ], [ %i.f, %bb.f ]
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull %_ZZN4asio5error16get_ssl_categoryEvE8instance.sink.i, ptr nonnull @__dso_handle) #45 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN4asio5error16get_ssl_categoryEvE8instance.sink.i) #45
  br label %_ZN4asio3ssl7context15translate_errorEl.exit

_ZN4asio3ssl7context15translate_errorEl.exit:     ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %_ZN4asio5error19get_system_categoryEv.exit.sink.split.i
  %.sroa.3.0.i = phi ptr [ @_ZZN4asio5error16get_ssl_categoryEvE8instance, %bb.f ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.c ], [ @_ZZN4asio15system_categoryEvE8instance, %bb.d ], [ @_ZZN4asio5error16get_ssl_categoryEvE8instance, %bb.e ], [ %_ZZN4asio5error16get_ssl_categoryEvE8instance.sink.i, %_ZN4asio5error19get_system_categoryEv.exit.sink.split.i ]
  %.sroa.0.0.i = phi i32 [ %i.f, %bb.f ], [ %.0.i.i, %bb.c ], [ %.0.i.i, %bb.d ], [ %i.f, %bb.e ], [ %.sroa.0.0.ph.i, %_ZN4asio5error19get_system_categoryEv.exit.sink.split.i ] ; 2 uses
  %.fca.0.insert.i = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i, 0
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4asio3ssl7context15translate_errorEl.exit
  %.sink13 = phi i32 [ 0, %bb.g ], [ %.sroa.0.0.i, %_ZN4asio3ssl7context15translate_errorEl.exit ]
  %.sink = phi ptr [ %i.n, %bb.g ], [ %.sroa.3.0.i, %_ZN4asio3ssl7context15translate_errorEl.exit ] ; 2 uses
  %.fca.0.insert.i.pn = phi { i32, ptr } [ { i32 0, ptr poison }, %bb.g ], [ %.fca.0.insert.i, %_ZN4asio3ssl7context15translate_errorEl.exit ]
  store i32 %.sink13, ptr %2, align 8, !tbaa !296
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sink, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !528
  %.fca.1.insert.merged = insertvalue { i32, ptr } %.fca.0.insert.i.pn, ptr %.sink, 1
  ret { i32, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !593    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !324
  %i.i = or i32 %i.h, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #45
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !5443)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5444)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1407, !noalias !5445 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.o, align 8, !tbaa !1441, !noalias !5445 ; 2 uses
  %6 = icmp ugt ptr %i.n, %5
  %.08.i.i.i = select i1 %6, ptr %i.n, ptr %5
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1442, !noalias !5445
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.t, ptr %i.u, align 8, !tbaa !304, !noalias !5445
  %i.v = load ptr, ptr %4, align 8, !tbaa !303, !noalias !5445
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !295, !noalias !5445
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !299, !alias.scope !5445
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !303, !noalias !5445 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !304, !noalias !5445 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.z, ptr %3, align 8, !tbaa !303, !alias.scope !5445
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !295, !noalias !5445
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !295, !alias.scope !5445
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !304, !noalias !5445
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ah = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !304, !alias.scope !5445
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !303, !noalias !5445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i8 0, i64 9, i1 false), !noalias !5445
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !303, !alias.scope !5445 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !303   ; 3 uses
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !304 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !304 ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.f:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.992) #59
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !303 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ay = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9
  %i.ba = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9 ]
  %.not.i.i.i = icmp ugt i64 %i.au, %i.ba
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not8.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ap, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load i8, ptr %i.ao, align 1, !tbaa !295
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !295
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.ar, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.k
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !304
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !303
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 0, ptr %i.be, align 1, !tbaa !295
  %i.bf = load ptr, ptr %3, align 8, !tbaa !303   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.y
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !295
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !279
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !279
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !279
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !279
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aa
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !295
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #58
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !279
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #45
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !279
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %2, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !279
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !1454
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret ptr %0

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !303   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.al, %bb.e ], [ %i.cd, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ]
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !295
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cg) #58
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cb, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl7contextC2ENS0_12context_base6methodE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::system_error", align 8 ; 6 uses
  %3 = alloca %"class.std::system_error", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !1398
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4asio3ssl6detail12openssl_initILb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  invoke void @ERR_clear_error()
          to label %bb.b unwind label %bb.cc

end_hunk_0
