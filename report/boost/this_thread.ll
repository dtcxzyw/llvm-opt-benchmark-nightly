Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/this_thread?download=true
inline.NumInlined: 273
inline.NumDeleted: 165
begin_hunk_0
@_ZTIN5boost4asio6detail11noncopyableE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost4asio6detail11noncopyableE }, comdat, align 8
@_ZTSN5boost4asio6detail11noncopyableE = linkonce_odr constant [34 x i8] c"N5boost4asio6detail11noncopyableE\00", comdat, align 1
@__tls_guard = internal thread_local global i8 0, align 1
@llvm.global_ctors = appending global [9 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN5boost4asio5error15system_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.2, ptr @_ZN5boost4asio5error14netdb_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.3, ptr @_ZN5boost4asio5error17addrinfo_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.4, ptr @_ZN5boost4asio5error13misc_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.7, ptr @_ZN5boost4asio6detail10call_stackINS1_14thread_contextENS1_16thread_info_baseEE4top_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.8, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS0_14config_serviceEE2idE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.9, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_9schedulerEE2idE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.10, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_13epoll_reactorEE2idE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.11, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS_6cobalt11this_thread19this_thread_serviceEE2idE }]
@llvm.used = appending global [9 x ptr] [ptr @_ZN5boost4asio5error13misc_categoryE, ptr @_ZN5boost4asio5error14netdb_categoryE, ptr @_ZN5boost4asio5error15system_categoryE, ptr @_ZN5boost4asio5error17addrinfo_categoryE, ptr @_ZN5boost4asio6detail10call_stackINS1_14thread_contextENS1_16thread_info_baseEE4top_E, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS0_14config_serviceEE2idE, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_13epoll_reactorEE2idE, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_9schedulerEE2idE, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS_6cobalt11this_thread19this_thread_serviceEE2idE], section "llvm.metadata"

@_ZTHN5boost6cobalt11this_thread6detail8executorE = hidden alias void (), ptr @_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK5boost6system6detail21system_error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr null, 1
  ret { i32, ptr } %.fca.1.insert
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6system14error_category7messageEiPcm(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i64 %3, label %bb.c [
    i64 0, label %bb.f
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %4, align 8, !tbaa !17
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str, ptr noundef %i.d) #9 ; 0 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !9
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #9 ; 0 uses
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.1, i32 noundef %1) #9 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret ptr %2

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #26
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" comdat($_ZN5boost4asio5error15system_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error15system_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error15system_categoryE) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr @_ZN5boost4asio5error15system_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error15system_categoryE) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.2() #5 section ".text.startup" comdat($_ZN5boost4asio5error14netdb_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error14netdb_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5boost4asio5error18get_netdb_categoryEvE8instance, ptr @_ZN5boost4asio5error14netdb_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.3() #5 section ".text.startup" comdat($_ZN5boost4asio5error17addrinfo_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error17addrinfo_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5boost4asio5error21get_addrinfo_categoryEvE8instance, ptr @_ZN5boost4asio5error17addrinfo_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.4() #5 section ".text.startup" comdat($_ZN5boost4asio5error13misc_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error13misc_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5boost4asio5error17get_misc_categoryEvE8instance, ptr @_ZN5boost4asio5error13misc_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %2 = load i8, ptr %1, align 8, !tbaa !22, !range !23, !noundef !24
  %3 = trunc nuw i8 %2 to i1
  store i8 0, ptr %1, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %4 = icmp ne ptr %i.b, null
  %or.cond.not.i.i = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadIN5boost4asio15any_io_executorELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(57) %0)
          to label %_ZNSt17_Optional_payloadIN5boost4asio15any_io_executorELb0ELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZNSt17_Optional_payloadIN5boost4asio15any_io_executorELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef ptr @_ZN5boost6cobalt11this_thread20get_default_resourceEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i, !prof !32

._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  br label %_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE) ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit: ; preds = %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i, %bb.b
  %.pre-phi.i = phi ptr [ %.pre.i, %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i ], [ %i.e, %bb.b ]
  %i.g = load ptr, ptr %.pre-phi.i, align 8, !tbaa !34
  ret ptr %i.g
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE() local_unnamed_addr #11 comdat {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge, !prof !32

._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  br label %_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE) ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit: ; preds = %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge, %bb.b
  %.pre-phi = phi ptr [ %.pre, %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge ], [ %i.e, %bb.b ]
  ret ptr %.pre-phi
}

; Function Attrs: nounwind uwtable
define noundef ptr @_ZN5boost6cobalt11this_thread20set_default_resourceEPNSt3pmr15memory_resourceE(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit, label %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit.thread, !prof !32

_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit.thread: ; preds = %bb.a
  %.pre.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE) ; 2 uses
  %i.c = load ptr, ptr %.pre.i.i, align 8, !tbaa !34
  br label %_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit: ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.e = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE) ; 5 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.i = icmp eq i8 %.pr, 0
  br i1 %i.i, label %bb.b, label %_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit, !prof !72

bb.b:                                             ; preds = %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.k = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  store ptr %i.k, ptr %i.f, align 8, !tbaa !34
  %i.l = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

_ZTWN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit: ; preds = %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit, %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit.thread, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.c, %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit.thread ], [ %i.h, %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit ]
  %.pre-phi.i = phi ptr [ %i.f, %bb.b ], [ %.pre.i.i, %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit.thread ], [ %i.f, %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit ]
  store ptr %0, ptr %.pre-phi.i, align 8, !tbaa !34
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define ptr @_ZN5boost6cobalt11this_thread13get_allocatorEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i.i, !prof !32

._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  br label %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE) ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit

_ZN5boost6cobalt11this_thread20get_default_resourceEv.exit: ; preds = %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i.i, %bb.b
  %.pre-phi.i.i = phi ptr [ %.pre.i.i, %._ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit_crit_edge.i.i ], [ %i.e, %bb.b ]
  %i.g = load ptr, ptr %.pre-phi.i.i, align 8, !tbaa !34
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN5boost6cobalt11this_thread12has_executorEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit: ; preds = %bb.a, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail8executorE)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !22, !range !23, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  ret i1 %i.j
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN5boost6cobalt11this_thread6detail8executorE() local_unnamed_addr #11 comdat {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit

_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE.exit: ; preds = %bb.a, %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail8executorE)
  ret ptr %i.g
}

; Function Attrs: uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6cobalt11this_thread12get_executorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit: ; preds = %bb.a, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail8executorE) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !22, !range !23, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit
  tail call void @_ZN5boost6cobalt6detail18throw_bad_executorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  unreachable

bb.d:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit
  %i.k = load i8, ptr @__tls_guard, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1, !prof !32

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @__tls_guard, align 1
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.n = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1: ; preds = %bb.d, %bb.e
  ret ptr %i.g
}

; Function Attrs: noreturn
declare void @_ZN5boost6cobalt6detail18throw_bad_executorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @_ZN5boost6cobalt11this_thread12set_executorENS_4asio15any_io_executorE(ptr noundef align 8 %0) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %2 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.boost::asio::execution::context_as_t", align 1 ; 3 uses
  %i.b = load i8, ptr @__tls_guard, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.e = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit: ; preds = %bb.a, %bb.b
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail8executorE) ; 5 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8optionalIN5boost4asio15any_io_executorEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %0) #9 ; 0 uses
  %i.j = load i8, ptr @__tls_guard, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1, !prof !32

bb.c:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.m = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !34
  %i.o = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1: ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.d, label %_ZNK5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE5queryINS7_9context_tILi0EEEEENST_25find_convertible_propertyIT_E17query_result_typeERKSY_PNSt9enable_ifIXaantsr7is_sameIS10_vEE5valuesr12is_referenceIS10_EE5valueEvE4typeE.exit.i

bb.d:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost4asio9execution12bad_executorE, i64 16), ptr %2, align 8, !tbaa !11
  invoke void @_ZN5boost15throw_exceptionINS_4asio9execution12bad_executorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.body

_ZNK5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE5queryINS7_9context_tILi0EEEEENST_25find_convertible_propertyIT_E17query_result_typeERKSY_PNSt9enable_ifIXaantsr7is_sameIS10_vEE5valuesr12is_referenceIS10_EE5valueEvE4typeE.exit.i: ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.noexc unwind label %bb.i, !inline_history !73

.noexc:                                           ; preds = %_ZNK5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE5queryINS7_9context_tILi0EEEEENST_25find_convertible_propertyIT_E17query_result_typeERKSY_PNSt9enable_ifIXaantsr7is_sameIS10_vEE5valuesr12is_referenceIS10_EE5valueEvE4typeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  invoke void %i.u(ptr noundef nonnull %i.a, ptr noundef %i.z, ptr noundef nonnull %3)
          to label %bb.g unwind label %bb.i, !inline_history !73

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS_6cobalt11this_thread19this_thread_serviceEEE, ptr %1, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56, !nonnull !24, !align !57
  %i.ag = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS_6cobalt11this_thread19this_thread_serviceENS0_17execution_contextEJEEEPNS7_7serviceERS7_PvDpOT1_, ptr noundef nonnull %i.af)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.i:                                             ; preds = %bb.g, %.noexc, %_ZNK5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE5queryINS7_9context_tILi0EEEEENST_25find_convertible_propertyIT_E17query_result_typeERKSY_PNSt9enable_ifIXaantsr7is_sameIS10_vEE5valuesr12is_referenceIS10_EE5valueEvE4typeE.exit.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.r, %bb.f ]
  %i.ai = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8optionalIN5boost4asio15any_io_executorEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN5boost4asio15any_io_executoraSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !75
  store ptr null, ptr %i.p, align 8, !tbaa !29
  store ptr null, ptr %i.s, align 8, !tbaa !75
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !35
  br label %_ZN5boost4asio15any_io_executoraSEOS1_.exit

bb.h:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executoraSEOS1_.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !75
  store ptr null, ptr %i.ad, align 8, !tbaa !29
  store ptr null, ptr %i.ag, align 8, !tbaa !75
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ab, align 8, !tbaa !35
  br label %_ZNSt19_Optional_base_implIN5boost4asio15any_io_executorESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  br label %_ZNSt19_Optional_base_implIN5boost4asio15any_io_executorESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit

bb.n:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZNSt19_Optional_base_implIN5boost4asio15any_io_executorESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit: ; preds = %bb.l, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !40
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aq, align 8, !tbaa !40
  store i8 1, ptr %i.a, align 8, !tbaa !22
  br label %_ZN5boost4asio15any_io_executoraSEOS1_.exit

_ZN5boost4asio15any_io_executoraSEOS1_.exit:      ; preds = %bb.h, %bb.g, %bb.b, %_ZNSt19_Optional_base_implIN5boost4asio15any_io_executorESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit
  ret ptr %0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK5boost6system14error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i32, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) #9 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 4 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !78
  %.not.i = icmp eq i32 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79   ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null              ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = icmp eq i64 %i.l, -5572340897628102704
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZNK5boost6system15error_condition6cat_idEv.exit12.i, label %bb.f

_ZNK5boost6system15error_condition6cat_idEv.exit12.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp eq i64 %i.o, -5572340897628102704
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp eq ptr %i.f, %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, %i.r
  %i.x = select i1 %i.s, i1 %i.t, i1 %i.w
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZNK5boost6system15error_condition6cat_idEv.exit12.i, %bb.f
  %.0.i = phi i1 [ %i.x, %bb.f ], [ false, %bb.a ], [ %i.p, %_ZNK5boost6system15error_condition6cat_idEv.exit12.i ], [ %i.m, %bb.d ], [ true, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  switch i64 %i.b, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, -5572340897628102703
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
  %i.j = icmp eq i64 %i.i, -5572340897628102702
  br i1 %i.j, label %_ZNK5boost6system10error_code5valueEv.exit.i, label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = urem i64 %i.n, 2097143
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 1000
  %i.r = add i32 %i.q, %i.k
  %i.s = icmp eq i32 %2, %i.r
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.d:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 8, !tbaa !9
  %i.u = icmp eq i32 %2, %i.t
  br i1 %i.u, label %bb.e, label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !62   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq ptr %0, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, %i.y
  %i.ae = select i1 %i.z, i1 %i.aa, i1 %i.ad
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit: ; preds = %bb.b, %bb.c, %_ZNK5boost6system10error_code5valueEv.exit.i, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.b ], [ %i.s, %_ZNK5boost6system10error_code5valueEv.exit.i ], [ false, %bb.c ], [ false, %bb.d ], [ %i.ae, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category6failedEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6system6detail21system_error_category4nameEv(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret ptr @.str.33
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9, !noalias !91
  %i.b = call ptr @strerror_r(i32 noundef %2, ptr noundef nonnull %i.a, i64 noundef 128) #9, !noalias !91 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !63, !alias.scope !91
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc.i.i, label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !92

.noexc11.i.i.i:                                   ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #28
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail16service_registry6createINS_6cobalt11this_thread19this_thread_serviceENS0_17execution_contextEJEEEPNS7_7serviceERS7_PvDpOT1_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6cobalt11this_thread19this_thread_serviceE, i64 16), ptr %i.e, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_ZN5boost4asio6detail16service_registry17destroy_allocatedINS_6cobalt11this_thread19this_thread_serviceEEEvPNS0_17execution_context7serviceE, ptr %i.i, align 8, !tbaa !70
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.01750 = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %.not51 = icmp eq ptr %.01750, null
  br i1 %.not51, label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEE4lockEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit
  %.01752 = phi ptr [ %.01750, %.lr.ph ], [ %.017, %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01752, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp ne ptr %i.g, null
  %i.h = icmp eq ptr %i.g, %i.e
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01752, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %.not14.i = icmp eq ptr %i.j, null
  br i1 %.not14.i, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %.not15.i = icmp eq ptr %i.k, null
  br i1 %.not15.i, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 3 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.m, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.q, 42
  br i1 %.not.i.i, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit, label %_ZNKSt9type_infoeqERKS_.exit.i

_ZNKSt9type_infoeqERKS_.exit.i:                   ; preds = %bb.f
  %i.r = load i8, ptr %i.o, align 1, !tbaa !9
  %i.s = icmp eq i8 %i.r, 42
  %.idx.i.i.i = zext i1 %i.s to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.t) #9
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit

_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i, %bb.f, %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.01752, i64 32
  %.017 = load ptr, ptr %i.w, align 8, !tbaa !106 ; 2 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEE4lockEv.exit, label %bb.b, !llvm.loop !104

_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEE4lockEv.exit: ; preds = %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit, %bb.a
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56, !nonnull !24, !align !57
  %i.aa = tail call noundef ptr %2(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %3) ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !112
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9 ; 0 uses
  %.153 = load ptr, ptr %i.c, align 8, !tbaa !106 ; 3 uses
  %.not2154 = icmp eq ptr %.153, null
  br i1 %.not2154, label %.thread, label %.lr.ph56

.lr.ph56:                                         ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEE4lockEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph56, %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31
  %.155 = phi ptr [ %.153, %.lr.ph56 ], [ %.1, %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31 ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.155, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52 ; 2 uses
  %.not.i22 = icmp ne ptr %i.ag, null
  %i.ah = icmp eq ptr %i.ag, %i.ae
  %or.cond.i23 = select i1 %.not.i22, i1 %i.ah, i1 false
  br i1 %or.cond.i23, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.155, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %.not14.i24 = icmp eq ptr %i.aj, null
  br i1 %.not14.i24, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %.not15.i25 = icmp eq ptr %i.ak, null
  br i1 %.not15.i25, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !108 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108 ; 3 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i.i26 = icmp eq i8 %i.aq, 42
  br i1 %.not.i.i26, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31, label %_ZNKSt9type_infoeqERKS_.exit.i27

_ZNKSt9type_infoeqERKS_.exit.i27:                 ; preds = %bb.k
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 42
  %.idx.i.i.i28 = zext i1 %i.as to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i.i28
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) %i.at) #9
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31

_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i27, %bb.k, %bb.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.155, i64 32
  %.1 = load ptr, ptr %i.aw, align 8, !tbaa !106  ; 2 uses
  %.not21 = icmp eq ptr %.1, null
  br i1 %.not21, label %.thread, label %bb.g, !llvm.loop !105

.thread:                                          ; preds = %_ZN5boost4asio6detail16service_registry10keys_matchERKNS0_17execution_context7service3keyES7_.exit31, %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEE4lockEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.153, ptr %i.ax, align 8, !tbaa !113
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !114
  br label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit

bb.l:                                             ; preds = %bb.g, %_ZNKSt9type_infoeqERKS_.exit.i27, %bb.j
  %.not.i32 = icmp eq ptr %i.aa, null
  br i1 %.not.i32, label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70
  invoke void %i.az(ptr noundef nonnull %i.aa)
          to label %_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #26
  unreachable

_ZN5boost4asio6detail11scoped_lockINS1_11posix_mutexEED2Ev.exit: ; preds = %bb.e, %_ZNKSt9type_infoeqERKS_.exit.i, %bb.b, %bb.m, %bb.l, %.thread
  %.119 = phi ptr [ %.155, %bb.m ], [ %i.aa, %.thread ], [ %.155, %bb.l ], [ %.01752, %bb.b ], [ %.01752, %_ZNKSt9type_infoeqERKS_.exit.i ], [ %.01752, %bb.e ]
  %i.bc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9 ; 0 uses
  ret ptr %.119
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail16service_registry17destroy_allocatedINS_6cobalt11this_thread19this_thread_serviceEEEvPNS0_17execution_context7serviceE(ptr noundef %0) #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71, !nonnull !24, !align !57
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !11
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #9, !inline_history !115
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0, i64 noundef 48, i64 noundef 8), !inline_history !116
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt11this_thread19this_thread_serviceD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt11this_thread19this_thread_service8shutdownEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.boost::asio::execution::context_as_t", align 1 ; 3 uses
  %i.b = load i8, ptr @__tls_guard, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.e = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit: ; preds = %bb.a, %bb.b
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail8executorE) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !22, !range !23, !noundef !24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNSt8optionalIN5boost4asio15any_io_executorEE5resetEv.exit

bb.c:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit
  %i.l = load i8, ptr @__tls_guard, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1, !prof !32

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr @__tls_guard, align 1
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.o = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !34
  %i.q = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1: ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.e, label %_ZNK13asio_query_fn4implclIRN5boost4asio15any_io_executorERKNS3_9execution6detail9context_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SD_SF_vvvvE11result_typeEE4typeEOSD_OSE_.exit

bb.e:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost4asio9execution12bad_executorE, i64 16), ptr %1, align 8, !tbaa !11
  invoke void @_ZN5boost15throw_exceptionINS_4asio9execution12bad_executorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.t

_ZNK13asio_query_fn4implclIRN5boost4asio15any_io_executorERKNS3_9execution6detail9context_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SD_SF_vvvvE11result_typeEE4typeEOSD_OSE_.exit: ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(56) %i.h), !inline_history !117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void %i.w(ptr noundef nonnull %i.a, ptr noundef %i.ab, ptr noundef nonnull %2), !inline_history !117
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71, !nonnull !24, !align !57
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %_ZNSt8optionalIN5boost4asio15any_io_executorEE5resetEv.exit

bb.h:                                             ; preds = %_ZNK13asio_query_fn4implclIRN5boost4asio15any_io_executorERKNS3_9execution6detail9context_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SD_SF_vvvvE11result_typeEE4typeEOSD_OSE_.exit
  %i.ag = load i8, ptr @__tls_guard, align 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit2.a, !prof !32

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr @__tls_guard, align 1
  %i.ai = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.aj = call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.ak = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !34
  %i.al = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit2.a

_ZTWN5boost6cobalt11this_thread6detail8executorE.exit2.a: ; preds = %bb.h, %bb.i
  %3 = load i8, ptr %i.i, align 8, !tbaa !22, !range !23, !noundef !24
  %4 = trunc nuw i8 %3 to i1
  store i8 0, ptr %i.i, align 8, !tbaa !22
  %i.am = load ptr, ptr %i.r, align 8
  %5 = icmp ne ptr %i.am, null
  %or.cond.not.i.i.i = select i1 %4, i1 %5, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.j, label %_ZNSt8optionalIN5boost4asio15any_io_executorEE5resetEv.exit

bb.j:                                             ; preds = %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit2.a
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_ZNSt8optionalIN5boost4asio15any_io_executorEE5resetEv.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #26
  unreachable

_ZNSt8optionalIN5boost4asio15any_io_executorEE5resetEv.exit: ; preds = %bb.j, %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit2.a, %_ZNK13asio_query_fn4implclIRN5boost4asio15any_io_executorERKNS3_9execution6detail9context_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SD_SF_vvvvE11result_typeEE4typeEOSD_OSE_.exit, %_ZTWN5boost6cobalt11this_thread6detail8executorE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio17execution_context7service11notify_forkENS1_10fork_eventE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @_ZTHN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE() #5 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #9
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost6cobalt11this_thread6detail28default_coro_memory_resourceE)
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt14_Optional_baseIN5boost4asio15any_io_executorELb0ELb0EED2Ev, ptr nonnull @_ZN5boost6cobalt11this_thread6detail8executorE, ptr nonnull @__dso_handle) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"vtable pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !5, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!"p1 _ZTSN5boost6system14error_categoryE", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSSt22_Optional_payload_baseIN5boost4asio15any_io_executorEE", !5, i64 0, !20, i64 56}
!22 = !{!21, !20, i64 56}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!"_ZTSN5boost4asio15aligned_storageILm24ELm8EE4typeE", !5, i64 0}
!26 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base10object_fnsE", !12, i64 0}
!27 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base10target_fnsE", !12, i64 0}
!28 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_baseE", !25, i64 0, !26, i64 24, !12, i64 32, !27, i64 40}
!29 = !{!28, !26, i64 24}
!30 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_base10object_fnsE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!31 = !{!30, !12, i64 0}
!32 = !{!"branch_weights", i32 1, i32 1023}
!33 = !{!"p1 _ZTSNSt3pmr15memory_resourceE", !12, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!28, !12, i64 32}
!36 = !{!"p1 _ZTSN5boost4asio17execution_contextE", !12, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base8prop_fnsINS1_12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS2_8blocking7never_tILi0EEENS1_11prefer_onlyINSA_10possibly_tILi0EEEEENSD_INS2_16outstanding_work9tracked_tILi0EEEEENSD_INSH_11untracked_tILi0EEEEENSD_INS2_12relationship6fork_tILi0EEEEENSD_INSO_14continuation_tILi0EEEEEEEEEE", !12, i64 0}
!39 = !{!"_ZTSN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEEE", !28, i64 0, !38, i64 48}
!40 = !{!39, !38, i64 48}
!41 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_base8prop_fnsINS1_12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS2_8blocking7never_tILi0EEENS1_11prefer_onlyINSA_10possibly_tILi0EEEEENSD_INS2_16outstanding_work9tracked_tILi0EEEEENSD_INSH_11untracked_tILi0EEEEENSD_INS2_12relationship6fork_tILi0EEEEENSD_INSO_14continuation_tILi0EEEEEEEEEE", !12, i64 0, !12, i64 8, !12, i64 16}
!42 = !{!41, !12, i64 0}
!43 = !{!30, !12, i64 24}
!44 = !{!"p1 _ZTSN5boost4asio17execution_context19allocator_impl_baseE", !12, i64 0}
!45 = !{!"_ZTSN5boost4asio17execution_context18auto_allocator_ptrE", !44, i64 0}
!46 = !{!"p1 _ZTSN5boost4asio6detail16service_registryE", !12, i64 0}
!47 = !{!"_ZTSN5boost4asio17execution_contextE", !45, i64 0, !46, i64 8}
!48 = !{!"p1 _ZTSSt9type_info", !12, i64 0}
!49 = !{!"p1 _ZTSN5boost4asio17execution_context2idE", !12, i64 0}
!50 = !{!"_ZTSN5boost4asio17execution_context7service3keyE", !48, i64 0, !49, i64 8}
!51 = !{!50, !48, i64 0}
!52 = !{!50, !49, i64 8}
!53 = !{!"_ZTSN5boost4asio6detail11posix_mutexE", !5, i64 0}
!54 = !{!"p1 _ZTSN5boost4asio17execution_context7serviceE", !12, i64 0}
!55 = !{!"_ZTSN5boost4asio6detail16service_registryE", !53, i64 8, !36, i64 48, !54, i64 56}
!56 = !{!55, !36, i64 48}
!57 = !{i64 8}
!58 = !{!"long long", !5, i64 0}
!59 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!60 = !{!"_ZTSSt6atomicIjE", !59, i64 0}
!61 = !{!"_ZTSN5boost6system14error_categoryE", !58, i64 8, !5, i64 16, !60, i64 48}
!62 = !{!61, !58, i64 8}
!63 = !{!14, !13, i64 0}
!64 = !{!16, !15, i64 8}
!65 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !12, i64 0}
!66 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !65, i64 0}
!67 = !{!66, !65, i64 0}
!68 = !{!47, !44, i64 0}
!69 = !{!"_ZTSN5boost4asio17execution_context7serviceE", !50, i64 8, !36, i64 24, !54, i64 32, !12, i64 40}
!70 = !{!69, !12, i64 40}
!71 = !{!69, !36, i64 24}
!72 = !{!"branch_weights", i32 -2147483648, i32 0}
!73 = distinct !{null}
!74 = !{!47, !46, i64 8}
!75 = !{!28, !27, i64 40}
!76 = !{!30, !12, i64 16}
!77 = !{!"_ZTSN5boost6system15error_conditionE", !6, i64 0, !18, i64 8}
!78 = !{!77, !6, i64 0}
!79 = !{!77, !18, i64 8}
!80 = !{!"_ZTSN5boost6system10error_codeE", !5, i64 0, !15, i64 16}
!81 = !{!80, !15, i64 16}
!82 = !{!"p1 _ZTSNSt3_V214error_categoryE", !12, i64 0}
!83 = !{!"_ZTSSt10error_code", !6, i64 0, !82, i64 8}
!84 = !{!83, !82, i64 8}
!85 = distinct !{!85, i1 true, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei"}
!86 = distinct !{!86, !85, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!88 = distinct !{!88, !87, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!89 = !{!86}
!90 = !{!88}
!91 = !{!88, !86}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!"_ZTSN5boost9exceptionE", !66, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !6, i64 36}
!94 = !{!93, !6, i64 32}
!95 = !{!93, !6, i64 36}
!96 = distinct !{ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEEC2ERKS4_, null}
!97 = distinct !{null}
!98 = !{ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEEC2ERKS4_}
!99 = distinct !{null}
!100 = distinct !{null}
!101 = !{!13, !13, i64 0}
!102 = !{!6, !6, i64 0}
!103 = distinct !{null, null, null}
!104 = distinct !{!104, !109}
!105 = distinct !{!105, !109}
!106 = !{!54, !54, i64 0}
!107 = !{!"_ZTSSt9type_info", !13, i64 8}
!108 = !{!107, !13, i64 8}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!48, !48, i64 0}
!111 = !{!49, !49, i64 0}
!112 = !{i64 0, i64 8, !110, i64 8, i64 8, !111}
!113 = !{!69, !54, i64 32}
!114 = !{!55, !54, i64 56}
!115 = distinct !{null, null, null, null, null}
!116 = distinct !{null, null, null}
!117 = distinct !{null, null}
end_hunk_1
