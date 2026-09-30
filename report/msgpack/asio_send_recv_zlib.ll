Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/asio_send_recv_zlib?download=true
inline.NumInlined: 3767
inline.NumDeleted: 1694
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5boost4asio5error6detail17addrinfo_category7messageB5cxx11Ei:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.g, ptr noundef nonnull align 1 dereferenceable(19) @.str.27, i64 19, i1 false)
  store i64 19, ptr %i.b, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 0, ptr %i.h, align 1, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost4asio5error6detail13misc_category4nameEv(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str.28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5boost4asio5error6detail13misc_category7messageB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  switch i32 %2, label %._crit_edge.i.i34 [
    i32 1, label %._crit_edge.i.i
    i32 2, label %._crit_edge.i.i10
    i32 3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19
    i32 4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.c, align 4, !tbaa !77
  br label %bb.b

._crit_edge.i.i10:                                ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.30, i64 11, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.e, align 1, !tbaa !77
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19: ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #44 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  store i64 17, ptr %i.a, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) @.str.31, i64 17, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 17, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 0, ptr %i.h, align 1, !tbaa !77
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27: ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(58) ptr @_Znwm(i64 noundef 58) #44 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !49
  store i64 57, ptr %i.a, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.i, ptr noundef nonnull align 1 dereferenceable(57) @.str.32, i64 57, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 57, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 57
  store i8 0, ptr %i.k, align 1, !tbaa !77
  br label %bb.b

._crit_edge.i.i34:                                ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.33, i64 15, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.m, align 1, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19, %._crit_edge.i.i10, %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost4asio17execution_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::system::system_error", align 8 ; 5 uses
  %2 = alloca %"class.boost::system::error_code", align 8 ; 8 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #44 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef null) #41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store i64 0, ptr %2, align 8
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !219
  %i.e = and i64 %i.d, -2
  %switch.i.i.i.i = icmp eq i64 %i.e, -5572340897628102704
  br i1 %switch.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i32 %i.c, 0
  br label %_ZN5boost15source_locationC2ERKSt15source_location.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.c) #41, !inline_history !598
  br label %_ZN5boost15source_locationC2ERKSt15source_location.exit.i.i

_ZN5boost15source_locationC2ERKSt15source_location.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i1 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = select i1 %.0.i.i.i.i, i64 3, i64 2      ; 2 uses
  store i64 %i.l, ptr %i.k, align 8, !tbaa !211
  store i32 %i.c, ptr %2, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr @.str.35, ptr %3, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.36, ptr %i.n, align 8, !tbaa !178
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 37, ptr %i.o, align 8, !tbaa !179
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 3, ptr %i.p, align 4, !tbaa !180
  %i.q = and i64 %i.l, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i: ; preds = %_ZN5boost15source_locationC2ERKSt15source_location.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  invoke void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @.str.34)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i
  invoke void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #43
          to label %bb.d unwind label %.body.i.i

bb.d:                                             ; preds = %.noexc
  unreachable

.body.i.i:                                        ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %.body

bb.e:                                             ; preds = %_ZN5boost15source_locationC2ERKSt15source_location.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.s, align 8, !tbaa !189
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.t, align 8, !tbaa !186
  store ptr %i.a, ptr %0, align 8, !tbaa !87
  ret void

bb.f:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.r, %.body.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #45
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost4asio6detail9scheduler16get_default_taskERNS0_17execution_contextE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS1_13epoll_reactorEEE, ptr %1, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !286, !nonnull !81, !align !175
  %i.e = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_PvES9_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS1_13epoll_reactorENS0_17execution_contextEEEPNS5_7serviceEPv, ptr noundef nonnull %i.d), !inline_history !599
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost4asio6detail9schedulerC2ERNS0_17execution_contextEibPFPNS1_14scheduler_taskES4_E(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %6 = alloca %"class.boost::asio::detail::posix_signal_blocker", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !189
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !188
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost4asio6detail9schedulerE, i64 16), ptr %0, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = icmp eq i32 %2, 1
  %i.f = and i32 %2, -65535                       ; 2 uses
  %.not = icmp eq i32 %i.f, -1525678080
  %i.g = and i32 %2, -65532
  %.not15 = icmp eq i32 %i.g, -1525678080
  %i.h = or i1 %i.e, %.not15
  %narrow = or i1 %i.h, %.not
  %i.i = zext i1 %narrow to i8
  store i8 %i.i, ptr %i.d, align 8, !tbaa !203
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not.not = icmp ne i32 %i.f, -1525678080
  tail call void @_ZN5boost4asio6detail27conditionally_enabled_mutexC2Eb(ptr noundef nonnull align 8 dereferenceable(49) %i.j, i1 noundef zeroext %.not.not)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN5boost4asio6detail11posix_eventC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.l, align 8, !tbaa !204
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %4, ptr %i.m, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.o, align 8, !tbaa !206
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.p, i8 0, i64 26, i1 false)
  store i32 %2, ptr %i.r, align 4, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !208
  br i1 %3, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.t = atomicrmw add ptr %i.p, i64 1 seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store i8 0, ptr %6, align 8, !tbaa !602
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.u = call i32 @sigfillset(ptr noundef nonnull %5) #41 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.w = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %i.v) #41
  %i.x = icmp eq i32 %i.w, 0                      ; 2 uses
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %6, align 8, !tbaa !602
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.z = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost4asio6detail12posix_threadC2INS1_9scheduler15thread_functionEEET_j(ptr noundef nonnull align 8 dereferenceable(9) %i.z, ptr nonnull %0, i32 noundef 0)
          to label %bb.e unwind label %.split

bb.e:                                             ; preds = %bb.d
  store ptr %i.z, ptr %i.s, align 8, !tbaa !208
  %i.aa = load i8, ptr %6, align 8, !tbaa !602, !range !80, !noundef !81
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.v, ptr noundef null) #41 ; 0 uses
  br label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit

_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.split:                                           ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 16) #45
  %.pre = load i8, ptr %6, align 8, !tbaa !602, !range !80
  %i.af = trunc nuw i8 %.pre to i1
  br i1 %i.af, label %bb.i, label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit20

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.x, label %bb.i, label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit20

bb.i:                                             ; preds = %.split, %bb.h
  %.pn22 = phi { ptr, i32 } [ %i.ae, %.split ], [ %i.ag, %bb.h ]
  %i.ah = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.v, ptr noundef null) #41 ; 0 uses
  br label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit20

_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit20: ; preds = %.split, %bb.h, %bb.i
  %.pn21 = phi { ptr, i32 } [ %i.ae, %.split ], [ %i.ag, %bb.h ], [ %.pn22, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #41
  %i.ai = call i32 @pthread_cond_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #41 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit, %bb.b
  ret void

bb.k:                                             ; preds = %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit20, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn21, %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit20 ], [ %i.ad, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #41 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.04.i.i = load ptr, ptr %i.b, align 8, !tbaa !182 ; 2 uses
  %.not5.i.i = icmp eq ptr %.04.i.i, null
  br i1 %.not5.i.i, label %_ZN5boost4asio17execution_context7destroyEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc
  %.06.i.i = phi ptr [ %.0.i.i, %.noexc ], [ %.04.i.i, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i)
          to label %.noexc unwind label %bb.c, !inline_history !3

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %.0.i.i = load ptr, ptr %i.f, align 8, !tbaa !182 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN5boost4asio17execution_context8shutdownEv.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN5boost4asio17execution_context8shutdownEv.exit: ; preds = %.noexc
  %.pre = load ptr, ptr %0, align 8, !tbaa !87    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre2 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !186 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.not2.i.i = icmp eq ptr %.pre2, null
  br i1 %.not2.i.i, label %_ZN5boost4asio17execution_context7destroyEv.exit, label %_ZN5boost4asio6detail16service_registry7destroyEPNS0_17execution_context7serviceE.exit.i.i

_ZN5boost4asio6detail16service_registry7destroyEPNS0_17execution_context7serviceE.exit.i.i: ; preds = %_ZN5boost4asio17execution_context8shutdownEv.exit, %_ZN5boost4asio6detail16service_registry7destroyEPNS0_17execution_context7serviceE.exit.i.i
  %i.h = phi ptr [ %i.j, %_ZN5boost4asio6detail16service_registry7destroyEPNS0_17execution_context7serviceE.exit.i.i ], [ %.pre2, %_ZN5boost4asio17execution_context8shutdownEv.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #41, !inline_history !603
  store ptr %i.j, ptr %i.g, align 8, !tbaa !186
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZN5boost4asio17execution_context7destroyEv.exitthread-pre-split, label %_ZN5boost4asio6detail16service_registry7destroyEPNS0_17execution_context7serviceE.exit.i.i, !llvm.loop !5

_ZN5boost4asio17execution_context7destroyEv.exitthread-pre-split: ; preds = %_ZN5boost4asio6detail16service_registry7destroyEPNS0_17execution_context7serviceE.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !87
  br label %_ZN5boost4asio17execution_context7destroyEv.exit

_ZN5boost4asio17execution_context7destroyEv.exit: ; preds = %_ZN5boost4asio17execution_context7destroyEv.exitthread-pre-split, %_ZN5boost4asio17execution_context8shutdownEv.exit
  %i.n = phi ptr [ %.pr, %_ZN5boost4asio17execution_context7destroyEv.exitthread-pre-split ], [ %.pre, %_ZN5boost4asio17execution_context8shutdownEv.exit ] ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %_ZN5boost4asio17execution_context7destroyEv.exit.thread

_ZN5boost4asio17execution_context7destroyEv.exit.thread: ; preds = %bb.a, %_ZN5boost4asio17execution_context7destroyEv.exit
  %i.p = phi ptr [ %i.n, %_ZN5boost4asio17execution_context7destroyEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #41 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #45
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio17execution_context7destroyEv.exit.thread, %_ZN5boost4asio17execution_context7destroyEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #42
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !151
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #43
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail9scheduler3runERNS_6system10error_codeE:bb.a
  br i1 %i.f, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #41 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %0, ptr %4, align 8, !tbaa !349
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ae, align 8, !tbaa !350
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ag = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost4asio6detail15keyword_tss_ptrINS1_10call_stackINS1_14thread_contextENS1_16thread_info_baseEE7contextEE6value_E) ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !351
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !657
  store ptr %4, ptr %i.ag, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ai, ptr %5, align 8, !tbaa !658
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !311, !range !80, !noundef !81
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.j, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #41 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS2_.exit

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS2_.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i8 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS2_.exit, %bb.m
  %.sink = phi i8 [ 1, %bb.m ], [ %.sink.i, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS2_.exit ]
  %.0.ph = phi i64 [ %spec.select, %bb.m ], [ 0, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS2_.exit ]
  store i8 %.sink, ptr %i.ao, align 8, !tbaa !354
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, %bb.l
  %.0 = phi i64 [ %spec.select, %bb.l ], [ %.0.ph, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split ] ; 2 uses
  %i.ap = invoke noundef i64 @_ZN5boost4asio6detail9scheduler10do_run_oneERNS1_27conditionally_enabled_mutex11scoped_lockERNS1_21scheduler_thread_infoERKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %.0, i64 1) ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !355, !nonnull !81, !align !175 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !311, !range !80, !noundef !81
  %i.at = trunc nuw i8 %i.as to i1
  %.not15 = xor i1 %i.at, true
  %i.au = load i8, ptr %i.ao, align 8, !range !80
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond = select i1 %.not15, i1 true, i1 %i.av
  br i1 %or.cond, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.m, !llvm.loop !656

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ax = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #41 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, !llvm.loop !656

bb.n:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load i8, ptr %i.ao, align 8, !tbaa !354, !range !80, !noundef !81
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %5, align 8, !tbaa !355, !nonnull !81, !align !175
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #41 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !657
  store ptr %i.be, ptr %i.ag, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN5boost4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %common.resume

bb.p:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %i.ao, align 8, !tbaa !354, !range !80, !noundef !81
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %5, align 8, !tbaa !355, !nonnull !81, !align !175
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #41 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !657
  store ptr %i.bk, ptr %i.ag, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !328 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i, label %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bo = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.bt, %bb.u ] ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !326 ; 2 uses
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !328
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.bn, align 8, !tbaa !321
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.bo, align 8, !tbaa !326
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !327
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void %i.bs(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
          to label %bb.u unwind label %bb.v, !inline_history !15

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !328 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i14, label %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit, label %bb.r

bb.v:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #42
  unreachable

_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit: ; preds = %bb.u, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit13
  call void @_ZN5boost4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(120) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZN5boost4asio6detail9scheduler4stopEv.exit

_ZN5boost4asio6detail9scheduler4stopEv.exit:      ; preds = %bb.f, %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutex11scoped_lockE.exit.i, %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit
  %.010 = phi i64 [ %.0, %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit ], [ 0, %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutex11scoped_lockE.exit.i ], [ 0, %bb.f ]
  ret i64 %.010
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost4asio6detail9scheduler10do_run_oneERNS1_27conditionally_enabled_mutex11scoped_lockERNS1_21scheduler_thread_infoERKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"struct.boost::asio::detail::scheduler::task_cleanup", align 8 ; 8 uses
  %7 = alloca %"struct.boost::asio::detail::scheduler::work_cleanup", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !342, !range !80, !noundef !81
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost4asio6detail27conditionally_enabled_event4waitERNS1_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !328  ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !326  ; 3 uses
  store ptr %i.t, ptr %i.d, align 8, !tbaa !328
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  %.not = icmp eq ptr %i.r, %i.f                  ; 2 uses
  br i1 %i.u, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !321
  br i1 %.not, label %bb.d, label %bb.s

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread: ; preds = %bb.c
  store ptr null, ptr %i.r, align 8, !tbaa !326
  br i1 %.not, label %bb.e, label %bb.t

bb.d:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit
  %.not41 = icmp ne ptr %i.t, null
  %8 = zext i1 %.not41 to i8
  store i8 %8, ptr %i.g, align 8, !tbaa !206
  br label %bb.i

bb.e:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread
  store i8 1, ptr %i.g, align 8, !tbaa !206
  %i.v = load i8, ptr %i.h, align 8, !tbaa !203, !range !80, !noundef !81
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !355, !nonnull !81, !align !175 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i8, ptr %i.y, align 8, !tbaa !311, !range !80, !noundef !81
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !343 ; 2 uses
  %i.ac = or i64 %i.ab, 1
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !343
  %i.ad = icmp ugt i64 %i.ab, 1
  %i.ae = load i8, ptr %i.k, align 8, !tbaa !354, !range !80, !noundef !81
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #41 ; 0 uses
  store i8 0, ptr %i.k, align 8, !tbaa !354
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, %bb.g
  br i1 %i.ad, label %bb.h, label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

bb.h:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i
  %i.ai = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #41 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !354, !range !80, !noundef !81
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %1, align 8, !tbaa !355, !nonnull !81, !align !175 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i8, ptr %i.am, align 8, !tbaa !311, !range !80, !noundef !81
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #41 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.k, align 8, !tbaa !354
  br label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i, %bb.i, %bb.h, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !359
  store ptr %1, ptr %i.l, align 8, !tbaa !360
  store ptr %2, ptr %i.m, align 8, !tbaa !361
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !204 ; 2 uses
  %i.as = sext i1 %i.u to i64
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.av = load i64, ptr %i.p, align 8, !tbaa !365 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = atomicrmw add ptr %i.q, i64 %i.av seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !361
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !360
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %.pre, %bb.m ], [ %1, %bb.l ] ; 2 uses
  %.pre3.i = phi ptr [ %.pre.i, %bb.m ], [ %2, %bb.l ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 112
  store i64 0, ptr %i.az, align 8, !tbaa !365
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !355, !nonnull !81, !align !175 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !311, !range !80, !noundef !81
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.o, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !354, !range !80, !noundef !81
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #41 ; 0 uses
  store i8 1, ptr %i.be, align 8, !tbaa !354
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = load ptr, ptr %6, align 8, !tbaa !359   ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  store i8 1, ptr %i.bk, align 8, !tbaa !206
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 96 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !320 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 232 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !321 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bp, null
  %..i.i = select i1 %.not8.i.i, ptr %i.bn, ptr %i.bp
  store ptr %i.bm, ptr %..i.i, align 8, !tbaa !320
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !320
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !321
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.q, %_ZN5boost4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 184 ; 3 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !326
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 232 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !321 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.bv, null
  %..i2.i = select i1 %.not.i1.i, ptr %i.bs, ptr %i.bv
  store ptr %i.bt, ptr %..i2.i, align 8, !tbaa !320
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !321
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %_ZN5boost4asio6detail27conditionally_enabled_event4waitERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

bb.r:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ao

bb.s:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !335
  %i.bz = zext i32 %i.by to i64
  br label %bb.ad

bb.t:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !335
  %i.cc = zext i32 %i.cb to i64                   ; 4 uses
  %i.cd = load i8, ptr %i.h, align 8, !tbaa !203, !range !80, !noundef !81
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %1, align 8, !tbaa !355, !nonnull !81, !align !175 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !311, !range !80, !noundef !81
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !343 ; 2 uses
  %i.ck = or i64 %i.cj, 1
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !343
  %i.cl = icmp ugt i64 %i.cj, 1
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cm = load i8, ptr %i.k, align 8, !tbaa !354, !range !80, !noundef !81
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i: ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cp = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.co) #41 ; 0 uses
  store i8 0, ptr %i.k, align 8, !tbaa !354
  br label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, %bb.w
  %i.cq = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #41 ; 0 uses
  br label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutex11scoped_lockE.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cr = load i8, ptr %i.g, align 8, !tbaa !206, !range !80, !noundef !81
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !204 ; 3 uses
  %.not.i30 = icmp eq ptr %i.ct, null
  br i1 %.not.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_1
