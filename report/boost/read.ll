inline.NumInlined: 689
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
@_ZTVN5boost10wrapexceptINS_4asio9execution12bad_executorEEE = linkonce_odr constant { [6 x ptr], [5 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, ptr @_ZNK5boost10wrapexceptINS_4asio9execution12bad_executorEE5cloneEv, ptr @_ZNK5boost10wrapexceptINS_4asio9execution12bad_executorEE7rethrowEv, ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEED2Ev, ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEED0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, ptr @_ZThn8_N5boost10wrapexceptINS_4asio9execution12bad_executorEED1Ev, ptr @_ZThn8_N5boost10wrapexceptINS_4asio9execution12bad_executorEED0Ev, ptr @_ZNK5boost4asio9execution12bad_executor4whatEv], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN5boost10wrapexceptINS_4asio9execution12bad_executorEEE, ptr @_ZThn16_N5boost10wrapexceptINS_4asio9execution12bad_executorEED1Ev, ptr @_ZThn16_N5boost10wrapexceptINS_4asio9execution12bad_executorEED0Ev] }, comdat, align 8
@_ZTVN5boost16exception_detail10clone_baseE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost16exception_detail10clone_baseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5boost16exception_detail10clone_baseD2Ev, ptr @_ZN5boost16exception_detail10clone_baseD0Ev] }, comdat, align 8
@_ZTVN5boost9exceptionE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5boost9exceptionE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN5boost6cobalt6detail12sbo_resourceE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost6cobalt6detail12sbo_resourceE, ptr @_ZNSt3pmr15memory_resourceD2Ev, ptr @_ZN5boost6cobalt6detail12sbo_resourceD0Ev, ptr @_ZN5boost6cobalt6detail12sbo_resource11do_allocateEmm, ptr @_ZN5boost6cobalt6detail12sbo_resource13do_deallocateEPvmm, ptr @_ZNK5boost6cobalt6detail12sbo_resource11do_is_equalERKNSt3pmr15memory_resourceE] }, comdat, align 8
@_ZTIN5boost6cobalt6detail12sbo_resourceE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6cobalt6detail12sbo_resourceE, ptr @_ZTINSt3pmr15memory_resourceE }, comdat, align 8
@_ZTSN5boost6cobalt6detail12sbo_resourceE = linkonce_odr hidden constant [37 x i8] c"N5boost6cobalt6detail12sbo_resourceE\00", comdat, align 1
@_ZTINSt3pmr15memory_resourceE = external constant ptr
@.str.30 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE = linkonce_odr global { ptr, ptr, [8 x i8] } { ptr @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE7__frame22__dummy_resume_destroyEv, ptr @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE7__frame22__dummy_resume_destroyEv, [8 x i8] undef }, comdat, align 8
@llvm.global_ctors = appending global [8 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN5boost4asio5error15system_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.2, ptr @_ZN5boost4asio5error14netdb_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.3, ptr @_ZN5boost4asio5error17addrinfo_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.4, ptr @_ZN5boost4asio5error13misc_categoryE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.5, ptr @_ZN5boost4asio6detail10call_stackINS1_14thread_contextENS1_16thread_info_baseEE4top_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.6, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS0_14config_serviceEE2idE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.7, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_9schedulerEE2idE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.8, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_13epoll_reactorEE2idE }]
@llvm.used = appending global [8 x ptr] [ptr @_ZN5boost4asio5error13misc_categoryE, ptr @_ZN5boost4asio5error14netdb_categoryE, ptr @_ZN5boost4asio5error15system_categoryE, ptr @_ZN5boost4asio5error17addrinfo_categoryE, ptr @_ZN5boost4asio6detail10call_stackINS1_14thread_contextENS1_16thread_info_baseEE4top_E, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS0_14config_serviceEE2idE, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_13epoll_reactorEE2idE, ptr @_ZN5boost4asio6detail30execution_context_service_baseINS1_9schedulerEE2idE], section "llvm.metadata"

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
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
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
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %4, align 8, !tbaa !11
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str, ptr noundef %i.d) #25 ; 0 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !11     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #25 ; 0 uses
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.1, i32 noundef %1) #25 ; 0 uses
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
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error15system_categoryE) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr @_ZN5boost4asio5error15system_categoryE, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error15system_categoryE) #25
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
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5boost4asio5error18get_netdb_categoryEvE8instance, ptr @_ZN5boost4asio5error14netdb_categoryE, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #25
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
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5boost4asio5error21get_addrinfo_categoryEvE8instance, ptr @_ZN5boost4asio5error17addrinfo_categoryE, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #25
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
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5boost4asio5error17get_misc_categoryEvE8instance, ptr @_ZN5boost4asio5error13misc_categoryE, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.boost::asio::any_io_executor", align 8 ; 10 uses
  %.sroa.9 = alloca [12 x i8], align 4            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 16 ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i64 noundef 400, i64 noundef 16), !inline_history !21 ; 61 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 16, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 368, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  store ptr @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume, ptr %i.g, align 16
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr253 = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 3 uses
  %.reload.addr254 = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 4 uses
  %.reload.addr256 = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %.reload.addr257 = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 5 uses
  %.reload.addr258 = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 376 ; 5 uses
  store ptr %0, ptr %.spill.addr, align 8
  %i.h = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  store i64 %i.h, ptr %.reload.addr253, align 16, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.184, label %bb.a

bb.a:                                             ; preds = %.from.
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr %i.n, ptr %i.o, align 16, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.q, ptr %i.r, align 16, !tbaa !34
  store ptr null, ptr %i.m, align 8, !tbaa !33
  store ptr null, ptr %i.p, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from. unwind label %bb.b

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.: ; preds = %bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !28
  %.pre = load i64, ptr %.reload.addr253, align 16, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.pre100 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  %i.u = icmp eq ptr %.pre100, null
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.184: ; preds = %.from.
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from., %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.184
  %.not.i.i.i.i.i.i = phi i1 [ %i.u, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from. ], [ true, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.184 ]
  %i.y = phi i64 [ %.pre, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from. ], [ %i.h, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.184 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !37
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !40
  store ptr null, ptr %i.af, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41, !nonnull !55, !align !56 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.reload.addr258, i8 0, i64 16, i1 false)
  store i64 %i.y, ptr %i.ak, align 16, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  br i1 %.not.i.i.i.i.i.i, label %.from.188, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !33 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.as, ptr %i.at, align 16, !tbaa !34
  store ptr null, ptr %i.ao, align 16, !tbaa !33
  store ptr null, ptr %i.ar, align 16, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %.from.187 unwind label %bb.d

.from.187:                                        ; preds = %bb.c
  store ptr null, ptr %i.al, align 8, !tbaa !28
  %.pre101 = load ptr, ptr %i.z, align 8, !tbaa !37
  %.pre102 = load i64, ptr %i.ae, align 16, !tbaa !40
  %.pre103 = load ptr, ptr %i.ah, align 8, !tbaa !41
  br label %.from.193

.from.188:                                        ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %.from.193

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

.from.193:                                        ; preds = %.from.188, %.from.187
  %i.az = phi ptr [ %.pre103, %.from.187 ], [ %i.aj, %.from.188 ]
  %i.ba = phi i64 [ %.pre102, %.from.187 ], [ %i.ag, %.from.188 ]
  %i.bb = phi ptr [ %.pre101, %.from.187 ], [ %i.ab, %.from.188 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !37
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.z, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i64 %i.ba, ptr %i.be, align 16, !tbaa !40
  store ptr null, ptr %i.ae, align 16, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 5 uses
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !57
  %.058.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 3 uses
  store i64 0, ptr %.058.spill.addr, align 16
  %.reload242289 = load ptr, ptr %.spill.addr, align 8, !tbaa !58 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i220290 = getelementptr inbounds nuw i8, ptr %.reload242289, i64 40
  %.sroa.2.0.copyload.i.i.i294 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i220290, align 8, !tbaa !60, !noalias !61 ; 2 uses
  %.not.i295 = icmp eq i64 %.sroa.2.0.copyload.i.i.i294, -1
  br i1 %.not.i295, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph: ; preds = %.from.193
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %index.addr259 = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 3 uses
  %.sroa.952.8..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.sroa.9.8..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit
  %.sroa.2.0.copyload.i.i.i300 = phi i64 [ %.sroa.2.0.copyload.i.i.i294, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.sroa.2.0.copyload.i.i.i, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ] ; 3 uses
  %.reload242297 = phi ptr [ %.reload242289, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.reload242, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ] ; 3 uses
  %.058296 = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %i.cs, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ] ; 2 uses
  %.sroa.22.0.copyload.i.i.i298.in = getelementptr inbounds nuw i8, ptr %.reload242297, i64 24
  %.sroa.22.0.copyload.i.i.i298 = load i64, ptr %.sroa.22.0.copyload.i.i.i298.in, align 8, !tbaa !60, !noalias !61 ; 2 uses
  %.sroa.0.0.copyload.i.i.i299.in = getelementptr inbounds nuw i8, ptr %.reload242297, i64 32
  %.sroa.0.0.copyload.i.i.i299 = load ptr, ptr %.sroa.0.0.copyload.i.i.i299.in, align 8, !tbaa !66, !noalias !61 ; 3 uses
  %i.bm = add i64 %.sroa.2.0.copyload.i.i.i300, 1 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.2.0.copyload.i.i.i300, 0
  br i1 %i.bn, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.bm, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit, %.from.193
  %.058.lcssa = phi i64 [ 0, %.from.193 ], [ %i.cs, %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.pre105 = load ptr, ptr %i.bo, align 8, !tbaa !68
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us30.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bu, %.cont.us.i.i ]
  %.sroa.11.0.us29.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bv, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.bp = icmp eq i64 %.sroa.11.0.us29.i.i, -1
  br i1 %i.bp, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i299, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !71
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.br = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i298, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.bs = add i64 %i.br, %.0.us30.i.i
  %i.bt = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i299, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.bt, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !71
  %i.bu = add i64 %.else.val.us.i.i.1, %i.bs      ; 3 uses
  %i.bv = add i64 %.sroa.11.0.us29.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !73

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.bw = and i64 %.sroa.2.0.copyload.i.i.i300, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us30.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us29.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bv, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod430 = trunc i64 %i.bm to i1
  tail call void @llvm.assume(i1 %lcmp.mod430)
  %i.bx = icmp eq i64 %.sroa.11.0.us29.i.i.epil.init, -1
  br i1 %i.bx, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i299, i64 %.sroa.11.0.us29.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !71
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.bz = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i298, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.ca = add i64 %i.bz, %.0.us30.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa = phi i64 [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.ca, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa, 0
  %.pre106 = load ptr, ptr %i.bg, align 8, !tbaa !68 ; 3 uses
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i29 = icmp eq ptr %.pre106, null
  br i1 %.not.i.i29, label %.thread62, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre106, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !75
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.thread62, label %.thread.thread.thread

.thread62:                                        ; preds = %bb.e, %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %.reload242297, i64 8
  %.sroa.0.0.copyload.i.i30 = load ptr, ptr %i.bd, align 16, !tbaa !19
  store ptr %i.ce, ptr %.reload.addr256, align 16
  store ptr %.sroa.0.0.copyload.i.i30, ptr %i.bh, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr254, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr256)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread62
  %i.cf = load ptr, ptr %.reload.addr254, align 16, !tbaa !80, !nonnull !55, !align !56 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !9
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr nonnull %i.bi)
          to label %bb.g unwind label %.body.from.200, !inline_history !90

bb.g:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ci = load i8, ptr %i.bj, align 8, !tbaa !91, !range !92, !noundef !55
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i1 false, ptr %index.addr259, align 8
  %i.ck = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr254, ptr nonnull %i.g) #25
  br i1 %i.ck, label %AfterCoroEnd, label %bb.i

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203: ; preds = %.thread62
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.200:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %.body.from.198, %.body.from.200
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %.body.from.200 ], [ %i.cp, %.body.from.198 ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %i.bk, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = load ptr, ptr %i.bk, align 8, !tbaa !93, !noalias !94 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.co, null
  br i1 %.not.i.i31, label %bb.l, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.i
  store ptr %i.co, ptr %.reload.addr257, align 16, !tbaa !93, !noalias !94
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr257) #25, !noalias !94
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr257) #28
          to label %bb.j unwind label %bb.k, !noalias !94

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cq = load ptr, ptr %.reload.addr257, align 16, !tbaa !93, !noalias !94
  %.not.i2.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.198

.body.from.198:                                   ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr257) #25, !noalias !94
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.058.reload = load i64, ptr %.058.spill.addr, align 16, !tbaa !58
  %i.cr = load i64, ptr %i.bi, align 8, !tbaa !60, !noalias !94 ; 5 uses
  %.sroa.650.8.copyload = load i32, ptr %i.bl, align 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.8..sroa_idx223, i64 12, i1 false)
  %.sroa.952.8.copyload = load i64, ptr %.sroa.952.8..sroa_idx224, align 16, !tbaa !60 ; 3 uses
  %i.cs = add i64 %i.cr, %.058.reload             ; 4 uses
  %i.ct = and i64 %.sroa.952.8.copyload, 1
  %.not.i.i34 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i34, label %_ZNK5boost6system10error_codecvbEv.exit.thread64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp ne i64 %.sroa.952.8.copyload, 1
  %i.cv = icmp ne i32 %.sroa.650.8.copyload, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread64

_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread: ; preds = %bb.m
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.cs, ptr %i.cw, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sroa.650.8.copyload, ptr %i.cy, align 8
  %.sroa.247.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.247.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %.sroa.247.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.952.8.copyload, ptr %.sroa.247.sroa.3.0..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.cx, align 8, !tbaa !91
  br label %.thread73

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203
  %.pn = phi { ptr, i32 } [ %i.cl, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.cz = tail call ptr @__cxa_begin_catch(ptr %.012) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread64: ; preds = %bb.m, %bb.l
  %.reload236 = load ptr, ptr %.spill.addr, align 8, !tbaa !58 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i219 = getelementptr inbounds nuw i8, ptr %.reload236, i64 24 ; 4 uses
  %i.da = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71 ; 3 uses
  %i.db = icmp ult i64 %i.cr, %i.da
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread64
  %i.dc = getelementptr inbounds nuw i8, ptr %.reload236, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !102
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cr
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !102
  %i.df = sub nuw i64 %i.da, %i.cr
  store i64 %i.df, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71
  br label %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit

bb.o:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread64
  %.sroa.2.0..sroa_idx.i.i.i222 = getelementptr inbounds nuw i8, ptr %.reload236, i64 40 ; 2 uses
  %i.dg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i222, align 8, !tbaa !103 ; 4 uses
  %.not.i35 = icmp eq i64 %i.dg, 0
  br i1 %.not.i35, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.reload236, i64 32 ; 2 uses
  %i.di = sub nuw i64 %i.cr, %i.da                ; 3 uses
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !105 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !71 ; 2 uses
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i400 = icmp eq i64 %i.dg, 1
  br i1 %exitcond.not.i400, label %.loopexit, label %.from.204.lr.ph, !llvm.loop !107

.from.204.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.204, !llvm.loop !107

.lr.ph:                                           ; preds = %.from.204
  %i.dn = add nuw i64 %i.do, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.dg
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.204, !llvm.loop !107

.from.204:                                        ; preds = %.from.204.lr.ph, %.lr.ph
  %i.do = phi i64 [ 1, %.from.204.lr.ph ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.018.i285402 = phi i64 [ %i.di, %.from.204.lr.ph ], [ %i.dq, %.lr.ph ]
  %.01217.i286401 = phi i64 [ 0, %.from.204.lr.ph ], [ %i.do, %.lr.ph ]
  %i.dp = phi i64 [ %i.dl, %.from.204.lr.ph ], [ %i.dt, %.lr.ph ]
  %i.dq = sub nuw i64 %.018.i285402, %i.dp        ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !71 ; 2 uses
  %i.du = icmp ugt i64 %i.dq, %i.dt
  br i1 %i.du, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !107

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.reload236, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i8 0, i64 32, i1 false)
  %.reload246 = load ptr, ptr %.spill.addr, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw i8, ptr %.reload246, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 16, i1 false)
  br label %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit

.critedge.i.loopexit:                             ; preds = %.from.204
  %i.dx = add i64 %.01217.i286401, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.di, %.from..lr.ph.i ], [ %i.dq, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.dx, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa262 = phi ptr [ %i.dj, %.from..lr.ph.i ], [ %i.dr, %.critedge.i.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.reload236, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa262, i64 16, i1 false), !tbaa.struct !108
  %i.dz = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.dz) ; 2 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %..i14.i
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !102
  %i.ec = sub i64 %i.dz, %..i14.i
  store i64 %i.ec, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71
  %i.ed = sub i64 %i.dg, %.01217.i.lcssa
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.01217.i.lcssa
  store ptr %i.ee, ptr %i.dh, align 8, !tbaa !66
  store i64 %i.ed, ptr %.sroa.2.0..sroa_idx.i.i.i222, align 8, !tbaa !60
  br label %.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit

.from._ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit: ; preds = %bb.n, %.loopexit, %.critedge.i
  store i64 %i.cs, ptr %.058.spill.addr, align 16
  %.reload242 = load ptr, ptr %.spill.addr, align 8, !tbaa !58 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i220 = getelementptr inbounds nuw i8, ptr %.reload242, i64 40
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i220, align 8, !tbaa !60, !noalias !61 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %.058275 = phi i64 [ %.058.lcssa, %.thread.from...thread_crit_edge ], [ %.058296, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %i.ef = phi ptr [ %.pre105, %.thread.from...thread_crit_edge ], [ %.pre106, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i36, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert327 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre328 = load i32, ptr %.phi.trans.insert327, align 8, !tbaa !75
  %i.eg = icmp eq i32 %.pre328, 0
  br i1 %i.eg, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.f, %.thread.thread
  %.058274351 = phi i64 [ %.058275, %.thread.thread ], [ %.058296, %bb.f ]
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !109, !noalias !114
  %i.ei = and i64 %i.eh, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.ei, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.ej = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !114
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !114
  %i.em = tail call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !114, !inline_history !117
  br i1 %i.em, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread.thread.thread
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.en = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.eo = load ptr, ptr %i.bf, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i64 %.058274351, ptr %i.eo, align 8, !tbaa !60
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 125, ptr %i.eq, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %i.en, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.ep, align 8, !tbaa !91
  br label %.thread73

.critedge:                                        ; preds = %.thread, %.thread.thread
  %i.er = load ptr, ptr %i.bf, align 8, !tbaa !99, !nonnull !55, !align !56 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 %.058275, ptr %i.er, align 8, !tbaa !60
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.es, align 8, !tbaa !91
  br label %.thread73

.thread73:                                        ; preds = %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.eu = load i64, ptr %i.ak, align 16, !tbaa !25, !noalias !118
  store i64 %i.eu, ptr %.reload.addr254, align 16, !tbaa !25, !alias.scope !118
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28, !noalias !118
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i.i38, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread73
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !33, !noalias !118 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  store ptr %i.fa, ptr %i.fb, align 16, !tbaa !33, !alias.scope !118
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !34, !noalias !118
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store ptr %i.fd, ptr %i.fe, align 16, !tbaa !34, !alias.scope !118
  store ptr null, ptr %i.ez, align 16, !tbaa !33, !noalias !118
  store ptr null, ptr %i.fc, align 16, !tbaa !34, !noalias !118
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35, !noalias !118
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(56) %i.ey, ptr noundef nonnull align 8 dereferenceable(56) %i.ex)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ev, align 8, !tbaa !28, !noalias !118
  %.phi.trans.insert329 = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %.pre330 = load ptr, ptr %.phi.trans.insert329, align 8, !tbaa !28
  %i.fh = icmp eq ptr %.pre330, null
  br label %AfterCoroSave177

bb.r:                                             ; preds = %.thread73
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 288
end_hunk_0
begin_hunk_1_@_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE:.from.
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %AfterCoroSuspend179 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #26
  unreachable

AfterCoroSuspend179:                              ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.gv = load ptr, ptr %.sroa.03.0.i.i, align 8
  call void %i.gv(ptr nonnull %.sroa.03.0.i.i)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %AfterCoroEnd181 unwind label %bb.ac

AfterCoroEnd:                                     ; preds = %bb.h, %AfterCoroSuspend179
  ret void

AfterCoroEnd181:                                  ; preds = %bb.ab
  tail call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.reload.addr258) #25
  tail call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.reload.addr253) #25
  tail call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv(ptr noundef nonnull %i.g) #25
  resume { ptr, i32 } %i.gw

bb.ac:                                            ; preds = %bb.ab
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  tail call void @__clang_call_terminate(ptr %i.gy) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !124
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !40
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr nonnull %i.b)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.g, !inline_history !126

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.f, %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !124
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !40
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr nonnull %i.b)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit unwind label %bb.g, !inline_history !126

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit:      ; preds = %bb.a, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5boost6cobalt6detail23completion_handler_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %_ZN5boost6cobalt6detail23completion_handler_baseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN5boost6cobalt6detail23completion_handler_baseD2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv(ptr noundef %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = add i64 %.sroa.4.0.copyload, 32
  %i.c = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload, ptr noundef nonnull %i.a, i64 noundef %i.b, i64 noundef 16)
          to label %_ZNSt3pmr15memory_resource10deallocateEPvmm.exit unwind label %bb.b, !inline_history !127

_ZNSt3pmr15memory_resource10deallocateEPvmm.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.boost::asio::any_io_executor", align 8 ; 10 uses
  %.sroa.10 = alloca [12 x i8], align 4           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 16 ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i64 noundef 400, i64 noundef 16), !inline_history !128 ; 61 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 16, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 368, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  store ptr @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume, ptr %i.g, align 16
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr257 = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 3 uses
  %.reload.addr258 = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 4 uses
  %.reload.addr260 = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %.reload.addr261 = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 5 uses
  %.reload.addr262 = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 376 ; 5 uses
  store ptr %0, ptr %.spill.addr, align 8
  %i.h = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  store i64 %i.h, ptr %.reload.addr257, align 16, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.185, label %bb.a

bb.a:                                             ; preds = %.from.
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr %i.n, ptr %i.o, align 16, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.q, ptr %i.r, align 16, !tbaa !34
  store ptr null, ptr %i.m, align 8, !tbaa !33
  store ptr null, ptr %i.p, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from. unwind label %bb.b

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.: ; preds = %bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !28
  %.pre = load i64, ptr %.reload.addr257, align 16, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.pre102 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  %i.u = icmp eq ptr %.pre102, null
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.185: ; preds = %.from.
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from., %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.185
  %.not.i.i.i.i.i.i = phi i1 [ %i.u, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from. ], [ true, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.185 ]
  %i.y = phi i64 [ %.pre, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from. ], [ %i.h, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit.from.185 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !37
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !40
  store ptr null, ptr %i.af, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41, !nonnull !55, !align !56 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.reload.addr262, i8 0, i64 16, i1 false)
  store i64 %i.y, ptr %i.ak, align 16, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  br i1 %.not.i.i.i.i.i.i, label %.from.189, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !33 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.as, ptr %i.at, align 16, !tbaa !34
  store ptr null, ptr %i.ao, align 16, !tbaa !33
  store ptr null, ptr %i.ar, align 16, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %.from.188 unwind label %bb.d

.from.188:                                        ; preds = %bb.c
  store ptr null, ptr %i.al, align 8, !tbaa !28
  %.pre103 = load ptr, ptr %i.z, align 8, !tbaa !37
  %.pre104 = load i64, ptr %i.ae, align 16, !tbaa !40
  %.pre105 = load ptr, ptr %i.ah, align 8, !tbaa !41
  br label %.from.195

.from.189:                                        ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEEC2EOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %.from.195

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

.from.195:                                        ; preds = %.from.189, %.from.188
  %i.az = phi ptr [ %.pre105, %.from.188 ], [ %i.aj, %.from.189 ]
  %i.ba = phi i64 [ %.pre104, %.from.188 ], [ %i.ag, %.from.189 ]
  %i.bb = phi ptr [ %.pre103, %.from.188 ], [ %i.ab, %.from.189 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !37
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.z, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i64 %i.ba, ptr %i.be, align 16, !tbaa !40
  store ptr null, ptr %i.ae, align 16, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 5 uses
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !57
  %.059.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 3 uses
  store i64 0, ptr %.059.spill.addr, align 16
  %.reload246293 = load ptr, ptr %.spill.addr, align 8, !tbaa !129 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i222294 = getelementptr inbounds nuw i8, ptr %.reload246293, i64 48
  %.sroa.2.0.copyload.i.i.i298 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i222294, align 8, !tbaa !60, !noalias !131 ; 2 uses
  %.not.i299 = icmp eq i64 %.sroa.2.0.copyload.i.i.i298, -1
  br i1 %.not.i299, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph: ; preds = %.from.195
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %index.addr263 = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 3 uses
  %.sroa.1053.8..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.sroa.10.8..sroa_idx225 = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph, %.from.193
  %.sroa.2.0.copyload.i.i.i304 = phi i64 [ %.sroa.2.0.copyload.i.i.i298, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.sroa.2.0.copyload.i.i.i, %.from.193 ] ; 3 uses
  %.reload246301 = phi ptr [ %.reload246293, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %.reload, %.from.193 ] ; 3 uses
  %.059300 = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.lr.ph ], [ %i.cs, %.from.193 ] ; 2 uses
  %.sroa.22.0.copyload.i.i.i302.in = getelementptr inbounds nuw i8, ptr %.reload246301, i64 32
  %.sroa.22.0.copyload.i.i.i302 = load i64, ptr %.sroa.22.0.copyload.i.i.i302.in, align 8, !tbaa !60, !noalias !131 ; 2 uses
  %.sroa.0.0.copyload.i.i.i303.in = getelementptr inbounds nuw i8, ptr %.reload246301, i64 40
  %.sroa.0.0.copyload.i.i.i303 = load ptr, ptr %.sroa.0.0.copyload.i.i.i303.in, align 8, !tbaa !66, !noalias !131 ; 3 uses
  %i.bm = add i64 %.sroa.2.0.copyload.i.i.i304, 1 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.2.0.copyload.i.i.i304, 0
  br i1 %i.bn, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.bm, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %.from.193, %.from.195
  %.059.lcssa = phi i64 [ 0, %.from.195 ], [ %i.cs, %.from.193 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.pre107 = load ptr, ptr %i.bo, align 8, !tbaa !68
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us30.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bu, %.cont.us.i.i ]
  %.sroa.11.0.us29.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.bv, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.bp = icmp eq i64 %.sroa.11.0.us29.i.i, -1
  br i1 %i.bp, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i303, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !71
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.br = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i302, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.bs = add i64 %i.br, %.0.us30.i.i
  %i.bt = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i303, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.bt, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !71
  %i.bu = add i64 %.else.val.us.i.i.1, %i.bs      ; 3 uses
  %i.bv = add i64 %.sroa.11.0.us29.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !73

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.bw = and i64 %.sroa.2.0.copyload.i.i.i304, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us30.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us29.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.bv, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i64 %i.bm to i1
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.bx = icmp eq i64 %.sroa.11.0.us29.i.i.epil.init, -1
  br i1 %i.bx, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i303, i64 %.sroa.11.0.us29.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !71
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.bz = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i302, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.ca = add i64 %i.bz, %.0.us30.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa = phi i64 [ %i.bu, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.ca, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa, 0
  %.pre108 = load ptr, ptr %i.bg, align 8, !tbaa !68 ; 3 uses
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i30 = icmp eq ptr %.pre108, null
  br i1 %.not.i.i30, label %.thread63, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre108, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !75
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.thread63, label %.thread.thread.thread

.thread63:                                        ; preds = %bb.e, %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %.reload246301, i64 8
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.bd, align 16, !tbaa !19
  store ptr %i.ce, ptr %.reload.addr260, align 16
  store ptr %.sroa.0.0.copyload.i.i31, ptr %i.bh, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr258, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr260)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread63
  %i.cf = load ptr, ptr %.reload.addr258, align 16, !tbaa !80, !nonnull !55, !align !56 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !9
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr nonnull %i.bi)
          to label %bb.g unwind label %.body.from.202, !inline_history !90

bb.g:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ci = load i8, ptr %i.bj, align 8, !tbaa !91, !range !92, !noundef !55
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i1 false, ptr %index.addr263, align 8
  %i.ck = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr258, ptr nonnull %i.g) #25
  br i1 %i.ck, label %AfterCoroEnd, label %bb.i

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205: ; preds = %.thread63
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.202:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %.body.from.200, %.body.from.202
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %.body.from.202 ], [ %i.cp, %.body.from.200 ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %i.bk, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = load ptr, ptr %i.bk, align 8, !tbaa !93, !noalias !136 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.co, null
  br i1 %.not.i.i32, label %bb.l, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.i
  store ptr %i.co, ptr %.reload.addr261, align 16, !tbaa !93, !noalias !136
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr261) #25, !noalias !136
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr261) #28
          to label %bb.j unwind label %bb.k, !noalias !136

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cq = load ptr, ptr %.reload.addr261, align 16, !tbaa !93, !noalias !136
  %.not.i2.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.200

.body.from.200:                                   ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr261) #25, !noalias !136
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.059.reload = load i64, ptr %.059.spill.addr, align 16, !tbaa !129
  %i.cr = load i64, ptr %i.bi, align 8, !tbaa !60, !noalias !136 ; 6 uses
  %.sroa.7.8.copyload = load i32, ptr %i.bl, align 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.8..sroa_idx225, i64 12, i1 false)
  %.sroa.1053.8.copyload = load i64, ptr %.sroa.1053.8..sroa_idx226, align 16, !tbaa !60 ; 3 uses
  %i.cs = add i64 %i.cr, %.059.reload             ; 4 uses
  %i.ct = and i64 %.sroa.1053.8.copyload, 1
  %.not.i.i35 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i35, label %_ZNK5boost6system10error_codecvbEv.exit.thread65, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp ne i64 %.sroa.1053.8.copyload, 1
  %i.cv = icmp ne i32 %.sroa.7.8.copyload, 0
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %.thread70, label %_ZNK5boost6system10error_codecvbEv.exit.thread65

.thread70:                                        ; preds = %bb.m
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.cs, ptr %i.cw, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sroa.7.8.copyload, ptr %i.cy, align 8
  %.sroa.248.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.248.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.248.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.1053.8.copyload, ptr %.sroa.248.sroa.3.0..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.cx, align 8, !tbaa !91
  br label %.thread75

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205
  %.pn = phi { ptr, i32 } [ %i.cl, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.013 = extractvalue { ptr, i32 } %.pn, 0
  %i.cz = tail call ptr @__cxa_begin_catch(ptr %.013) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread65: ; preds = %bb.m, %bb.l
  %.reload240 = load ptr, ptr %.spill.addr, align 8, !tbaa !129 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i221 = getelementptr inbounds nuw i8, ptr %.reload240, i64 32 ; 4 uses
  %i.da = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71 ; 3 uses
  %i.db = icmp ult i64 %i.cr, %i.da
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %i.dc = getelementptr inbounds nuw i8, ptr %.reload240, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !102
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cr
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !102
  %i.df = sub nuw i64 %i.da, %i.cr
  store i64 %i.df, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71
  br label %.from.193

bb.o:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %.sroa.2.0..sroa_idx.i.i.i224 = getelementptr inbounds nuw i8, ptr %.reload240, i64 48 ; 2 uses
  %i.dg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i224, align 8, !tbaa !103 ; 4 uses
  %.not.i36 = icmp eq i64 %i.dg, 0
  br i1 %.not.i36, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.reload240, i64 40 ; 2 uses
  %i.di = sub nuw i64 %i.cr, %i.da                ; 3 uses
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !105 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !71 ; 2 uses
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i404 = icmp eq i64 %i.dg, 1
  br i1 %exitcond.not.i404, label %.loopexit, label %.from.206.lr.ph, !llvm.loop !107

.from.206.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.206, !llvm.loop !107

.lr.ph:                                           ; preds = %.from.206
  %i.dn = add nuw i64 %i.do, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.dg
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.206, !llvm.loop !107

.from.206:                                        ; preds = %.from.206.lr.ph, %.lr.ph
  %i.do = phi i64 [ 1, %.from.206.lr.ph ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.018.i289406 = phi i64 [ %i.di, %.from.206.lr.ph ], [ %i.dq, %.lr.ph ]
  %.01217.i290405 = phi i64 [ 0, %.from.206.lr.ph ], [ %i.do, %.lr.ph ]
  %i.dp = phi i64 [ %i.dl, %.from.206.lr.ph ], [ %i.dt, %.lr.ph ]
  %i.dq = sub nuw i64 %.018.i289406, %i.dp        ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !71 ; 2 uses
  %i.du = icmp ugt i64 %i.dq, %i.dt
  br i1 %i.du, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !107

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.reload240, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i8 0, i64 32, i1 false)
  %.reload250 = load ptr, ptr %.spill.addr, align 8, !tbaa !129
  %i.dw = getelementptr inbounds nuw i8, ptr %.reload250, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 16, i1 false)
  br label %.from.193

.critedge.i.loopexit:                             ; preds = %.from.206
  %i.dx = add i64 %.01217.i290405, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.di, %.from..lr.ph.i ], [ %i.dq, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.dx, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa266 = phi ptr [ %i.dj, %.from..lr.ph.i ], [ %i.dr, %.critedge.i.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.reload240, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa266, i64 16, i1 false), !tbaa.struct !108
  %i.dz = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.dz) ; 2 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %..i14.i
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !102
  %i.ec = sub i64 %i.dz, %..i14.i
  store i64 %i.ec, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71
  %i.ed = sub i64 %i.dg, %.01217.i.lcssa
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.01217.i.lcssa
  store ptr %i.ee, ptr %i.dh, align 8, !tbaa !66
  store i64 %i.ed, ptr %.sroa.2.0..sroa_idx.i.i.i224, align 8, !tbaa !60
  br label %.from.193

.from.193:                                        ; preds = %bb.n, %.loopexit, %.critedge.i
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !129 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !141
  %i.eh = add i64 %i.eg, %i.cr
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !141
  store i64 %i.cs, ptr %.059.spill.addr, align 16
  %.sroa.2.0..sroa_idx.i.i.i222 = getelementptr inbounds nuw i8, ptr %.reload, i64 48
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i222, align 8, !tbaa !60, !noalias !131 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %.059279 = phi i64 [ %.059.lcssa, %.thread.from...thread_crit_edge ], [ %.059300, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %i.ei = phi ptr [ %.pre107, %.thread.from...thread_crit_edge ], [ %.pre108, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i37, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert331 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.pre332 = load i32, ptr %.phi.trans.insert331, align 8, !tbaa !75
  %i.ej = icmp eq i32 %.pre332, 0
  br i1 %i.ej, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.f, %.thread.thread
  %.059278355 = phi i64 [ %.059279, %.thread.thread ], [ %.059300, %bb.f ]
  %i.ek = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !109, !noalias !146
  %i.el = and i64 %i.ek, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.el, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.em = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !146
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !146
  %i.ep = tail call noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !146, !inline_history !117
  br i1 %i.ep, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread.thread.thread
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.eq = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.er = load ptr, ptr %i.bf, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 %.059278355, ptr %i.er, align 8, !tbaa !60
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 125, ptr %i.et, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store i64 %i.eq, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.es, align 8, !tbaa !91
  br label %.thread75

.critedge:                                        ; preds = %.thread, %.thread.thread
  %i.eu = load ptr, ptr %i.bf, align 8, !tbaa !99, !nonnull !55, !align !56 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i64 %.059279, ptr %i.eu, align 8, !tbaa !60
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ev, align 8, !tbaa !91
  br label %.thread75

.thread75:                                        ; preds = %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread70, %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ex = load i64, ptr %i.ak, align 16, !tbaa !25, !noalias !149
  store i64 %i.ex, ptr %.reload.addr258, align 16, !tbaa !25, !alias.scope !149
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !28, !noalias !149
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i39, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread75
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !33, !noalias !149 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  store ptr %i.fd, ptr %i.fe, align 16, !tbaa !33, !alias.scope !149
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !34, !noalias !149
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store ptr %i.fg, ptr %i.fh, align 16, !tbaa !34, !alias.scope !149
  store ptr null, ptr %i.fc, align 16, !tbaa !33, !noalias !149
  store ptr null, ptr %i.ff, align 16, !tbaa !34, !noalias !149
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !35, !noalias !149
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(56) %i.fb, ptr noundef nonnull align 8 dereferenceable(56) %i.fa)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ey, align 8, !tbaa !28, !noalias !149
  %.phi.trans.insert333 = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %.pre334 = load ptr, ptr %.phi.trans.insert333, align 8, !tbaa !28
  %i.fk = icmp eq ptr %.pre334, null
end_hunk_1
begin_hunk_2_@_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE:bb.a
  br i1 %i.at, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !125
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.m
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !191 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 3
  br i1 %i.bb, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  store i32 0, ptr %i.a, align 8, !tbaa !191
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  %.0 = extractvalue { ptr, i32 } %i.bc, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #25
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bf = load ptr, ptr %4, align 8, !tbaa !93
  store ptr null, ptr %4, align 8, !tbaa !93
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !93 ; 2 uses
  store ptr %i.bg, ptr %2, align 8, !tbaa !93
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.pr = load ptr, ptr %4, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i5, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.o, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  %i.bh = phi i32 [ 0, %bb.o ], [ %i.ba, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit ]
  %i.bi = icmp ne i32 %i.bh, 2
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.r
  %.04 = phi i1 [ %i.bi, %bb.r ], [ false, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ]
  ret i1 %.04

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #26
  unreachable
}

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind noalias writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !217, !nonnull !55, !align !56
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4168 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !187, !alias.scope !220
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !91, !alias.scope !220
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !191, !alias.scope !220
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  store ptr null, ptr %i.e, align 8, !tbaa !93, !alias.scope !220
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.b, ptr %i.f, align 8, !tbaa !192, !alias.scope !220
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.h = call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6cobalt6detail12sbo_resourceE, i64 16), ptr %i.b, align 8, !tbaa !9, !alias.scope !220
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4176 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !193, !alias.scope !220
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4184 ; 2 uses
  store i64 4096, ptr %i.j, align 8, !tbaa !195, !alias.scope !220
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4192 ; 2 uses
  store i64 4096, ptr %i.k, align 8, !tbaa !196, !alias.scope !220
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4200
  store i8 0, ptr %i.l, align 8, !tbaa !197, !alias.scope !220
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4208
  store ptr %i.h, ptr %i.m, align 8, !tbaa !198, !alias.scope !220
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = and i64 %i.n, 8                          ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 16, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  store ptr %i.q, ptr %i.i, align 8, !tbaa !201, !alias.scope !220
  store i64 4088, ptr %i.k, align 8, !tbaa !202, !alias.scope !220
  store i64 4088, ptr %i.j, align 8, !tbaa !203, !alias.scope !220
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit

_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !223
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.t = load ptr, ptr %2, align 8, !tbaa !80, !noalias !224, !nonnull !55, !align !56
  store ptr %i.t, ptr %0, align 8, !tbaa !187, !alias.scope !224
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !91, !alias.scope !224
  %i.v = load i8, ptr %i.c, align 8, !tbaa !91, !range !92, !noalias !224, !noundef !55
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit

bb.c:                                             ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !60, !noalias !224
  store i64 %i.z, ptr %i.x, align 8, !tbaa !60, !alias.scope !224
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !208
  store i8 1, ptr %i.u, align 8, !tbaa !91, !alias.scope !224
  br label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit

_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit: ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !191, !noalias !224
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !191, !alias.scope !224
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !93, !noalias !224
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !93, !alias.scope !224
  store ptr null, ptr %i.e, align 8, !tbaa !93, !noalias !224
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !192, !alias.scope !224
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #25
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit

_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit: ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE7__frame22__dummy_resume_destroyEv() #8 comdat align 2 {
bb.a:
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume(ptr noundef nonnull align 8 dereferenceable(368) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.0:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %.sroa.9 = alloca [12 x i8], align 4            ; 2 uses
  %.reload.addr254 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr256 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr257 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %.058.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.sroa.952.8..sroa_idx224 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.9.8..sroa_idx223 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.reload.addr235 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %index.addr259 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !227 ; 2 uses
  %.not.i.i3170 = icmp eq ptr %i.h, null
  br i1 %.not.i.i3170, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.a:                                             ; preds = %bb.i, %.loopexit, %.critedge.i
  store i64 %i.ao, ptr %.058.reload.addr, align 8
  %.reload242 = load ptr, ptr %.reload.addr235, align 8, !tbaa !58 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i220 = getelementptr inbounds nuw i8, ptr %.reload242, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %.reload242, i64 32
  %.sroa.22.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload242, i64 24
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !60, !noalias !232 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !66, !noalias !232 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i220, align 8, !tbaa !60, !noalias !232 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %bb.a
  %i.j = add i64 %.sroa.2.0.copyload.i.i.i, 1     ; 2 uses
  %i.k = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.k, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %bb.a
  %.pre105 = load ptr, ptr %i.d, align 8, !tbaa !68
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us30.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.q, %.cont.us.i.i ]
  %.sroa.11.0.us29.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.r, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.l = icmp eq i64 %.sroa.11.0.us29.i.i, -1
  br i1 %i.l, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !71
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.n = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.o = add i64 %i.n, %.0.us30.i.i
  %i.p = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.p, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !71
  %i.q = add i64 %.else.val.us.i.i.1, %i.o        ; 3 uses
  %i.r = add i64 %.sroa.11.0.us29.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !237

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.s = and i64 %.sroa.2.0.copyload.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us30.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.q, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us29.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.r, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod229 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.t = icmp eq i64 %.sroa.11.0.us29.i.i.epil.init, -1
  br i1 %i.t, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !71
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.v = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.w = add i64 %i.v, %.0.us30.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa199 = phi i64 [ %i.q, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.w, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa199, 0
  %.pre106 = load ptr, ptr %i.d, align 8, !tbaa !68 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i29 = icmp eq ptr %.pre106, null
  br i1 %.not.i.i29, label %.thread62, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.pre106, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !75
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.thread62, label %.thread.thread.thread

.thread62:                                        ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.reload242, i64 8
  %.sroa.0.0.copyload.i.i30 = load ptr, ptr %i.f, align 8, !tbaa !19
  store ptr %i.aa, ptr %.reload.addr256, align 8
  store ptr %.sroa.0.0.copyload.i.i30, ptr %i.e, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr254, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr256)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread62
  %i.ab = load ptr, ptr %.reload.addr254, align 8, !tbaa !80, !nonnull !55, !align !56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr nonnull %i.c)
          to label %bb.d unwind label %.body.from.200, !inline_history !90

bb.d:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ae = load i8, ptr %i.g, align 8, !tbaa !91, !range !92, !noundef !55
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !227 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i31, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i1 false, ptr %index.addr259, align 8
  %i.ah = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr254, ptr nonnull %0) #25
  br i1 %i.ah, label %CoroEnd, label %.backedge

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203: ; preds = %.thread62
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.200:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %.body.from.198, %.body.from.200
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %.body.from.200 ], [ %i.al, %.body.from.198 ], [ %i.al, %bb.g ] ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %.backedge, %resume.0
  %.lcssa7 = phi ptr [ %i.h, %resume.0 ], [ %i.ag, %.backedge ]
  store ptr %.lcssa7, ptr %.reload.addr257, align 8, !tbaa !93, !noalias !227
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr257) #25, !noalias !227
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr257) #28
          to label %bb.f unwind label %bb.g, !noalias !227

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.am = load ptr, ptr %.reload.addr257, align 8, !tbaa !93, !noalias !227
  %.not.i2.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.198

.body.from.198:                                   ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr257) #25, !noalias !227
  br label %.body

.lr.ph71:                                         ; preds = %resume.0, %.backedge
  %.058.reload = load i64, ptr %.058.reload.addr, align 8, !tbaa !58
  %i.an = load i64, ptr %i.c, align 8, !tbaa !60, !noalias !227 ; 5 uses
  %.sroa.650.8.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.8..sroa_idx223, i64 12, i1 false)
  %.sroa.952.8.copyload = load i64, ptr %.sroa.952.8..sroa_idx224, align 8, !tbaa !60 ; 3 uses
  %i.ao = add i64 %i.an, %.058.reload             ; 4 uses
  %i.ap = and i64 %.sroa.952.8.copyload, 1
  %.not.i.i34 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i34, label %_ZNK5boost6system10error_codecvbEv.exit.thread64, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.aq = icmp ne i64 %.sroa.952.8.copyload, 1
  %i.ar = icmp ne i32 %.sroa.650.8.copyload, 0
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread64

_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 %i.ao, ptr %i.at, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.650.8.copyload, ptr %i.av, align 8
  %.sroa.247.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.247.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %.sroa.247.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.952.8.copyload, ptr %.sroa.247.sroa.3.0..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.au, align 8, !tbaa !91
  br label %.thread73

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203
  %.pn = phi { ptr, i32 } [ %i.ai, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.203 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.012) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread64: ; preds = %bb.h, %.lr.ph71
  %.reload236 = load ptr, ptr %.reload.addr235, align 8, !tbaa !58 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i219 = getelementptr inbounds nuw i8, ptr %.reload236, i64 24 ; 4 uses
  %i.ax = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71 ; 3 uses
  %i.ay = icmp ult i64 %i.an, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread64
  %i.az = getelementptr inbounds nuw i8, ptr %.reload236, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.an
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !102
  %i.bc = sub nuw i64 %i.ax, %i.an
  store i64 %i.bc, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71
  br label %bb.a

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread64
  %.sroa.2.0..sroa_idx.i.i.i222 = getelementptr inbounds nuw i8, ptr %.reload236, i64 40 ; 2 uses
  %i.bd = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i222, align 8, !tbaa !103 ; 4 uses
  %.not.i35 = icmp eq i64 %i.bd, 0
  br i1 %.not.i35, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.reload236, i64 32 ; 2 uses
  %i.bf = sub nuw i64 %i.an, %i.ax                ; 3 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !105 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !71 ; 2 uses
  %i.bj = icmp ugt i64 %i.bf, %i.bi
  br i1 %i.bj, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i191 = icmp eq i64 %i.bd, 1
  br i1 %exitcond.not.i191, label %.loopexit, label %.from.204.lr.ph, !llvm.loop !238

.from.204.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.204, !llvm.loop !238

.lr.ph:                                           ; preds = %.from.204
  %i.bk = add nuw i64 %i.bl, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.bd
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.204, !llvm.loop !238

.from.204:                                        ; preds = %.from.204.lr.ph, %.lr.ph
  %i.bl = phi i64 [ 1, %.from.204.lr.ph ], [ %i.bk, %.lr.ph ] ; 3 uses
  %.018.i63193 = phi i64 [ %i.bf, %.from.204.lr.ph ], [ %i.bn, %.lr.ph ]
  %.01217.i64192 = phi i64 [ 0, %.from.204.lr.ph ], [ %i.bl, %.lr.ph ]
  %i.bm = phi i64 [ %i.bi, %.from.204.lr.ph ], [ %i.bq, %.lr.ph ]
  %i.bn = sub nuw i64 %.018.i63193, %i.bm         ; 3 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bl ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  %i.br = icmp ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !238

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !238

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.reload236, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i8 0, i64 32, i1 false)
  %.reload246 = load ptr, ptr %.reload.addr235, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %.reload246, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 16, i1 false)
  br label %bb.a

.critedge.i.loopexit:                             ; preds = %.from.204
  %i.bu = add i64 %.01217.i64192, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.bf, %.from..lr.ph.i ], [ %i.bn, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.bu, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.bg, %.from..lr.ph.i ], [ %i.bo, %.critedge.i.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.reload236, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i64 16, i1 false), !tbaa.struct !108
  %i.bw = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.bw) ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %..i14.i
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !102
  %i.bz = sub i64 %i.bw, %..i14.i
  store i64 %i.bz, ptr %.sroa.22.0..sroa_idx.i.i.i219, align 8, !tbaa !71
  %i.ca = sub i64 %i.bd, %.01217.i.lcssa
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.01217.i.lcssa
  store ptr %i.cb, ptr %i.be, align 8, !tbaa !66
  store i64 %i.ca, ptr %.sroa.2.0..sroa_idx.i.i.i222, align 8, !tbaa !60
  br label %bb.a

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %i.cc = phi ptr [ %.pre105, %.thread.from...thread_crit_edge ], [ %.pre106, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i36, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !75
  %i.cd = icmp eq i32 %.pre, 0
  br i1 %i.cd, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.c, %.thread.thread
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !109, !noalias !239
  %i.cf = and i64 %i.ce, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.cf, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.cg = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !239
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !239
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !239, !inline_history !117
  br i1 %i.cj, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %.thread.thread.thread, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.ck = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 %i.ao, ptr %i.cm, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 125, ptr %i.co, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 %i.ck, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.cn, align 8, !tbaa !91
  br label %.thread73

.critedge:                                        ; preds = %.thread.thread, %.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !99, !nonnull !55, !align !56 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i64 %i.ao, ptr %i.cq, align 8, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cr, align 8, !tbaa !91
  br label %.thread73

.thread73:                                        ; preds = %.critedge, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !25, !noalias !242
  store i64 %i.cu, ptr %.reload.addr254, align 8, !tbaa !25, !alias.scope !242
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28, !noalias !242
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i38, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread73
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !33, !noalias !242 ; 2 uses
  store ptr %i.cz, ptr %.sroa.952.8..sroa_idx224, align 8, !tbaa !33, !alias.scope !242
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !34, !noalias !242
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !34, !alias.scope !242
  store ptr null, ptr %i.cy, align 8, !tbaa !33, !noalias !242
  store ptr null, ptr %i.da, align 8, !tbaa !34, !noalias !242
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !35, !noalias !242
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.cx)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.cv, align 8, !tbaa !28, !noalias !242
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.df = icmp eq ptr %.pre107, null
  br label %AfterCoroSave177

bb.m:                                             ; preds = %.thread73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.952.8..sroa_idx224, i8 0, i64 24, i1 false), !alias.scope !242
  br label %AfterCoroSave177

bb.n:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  tail call void @__clang_call_terminate(ptr %i.dh) #26
  unreachable

AfterCoroSave177:                                 ; preds = %bb.m, %bb.l
end_hunk_2
begin_hunk_3_@_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy:resume.entry
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.f, null
  br i1 %.not.i.i39, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !124
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !40
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr nonnull %i.d)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !126

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend179
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit74, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %.loopexit74 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

.loopexit74:                                      ; preds = %AfterCoroSuspend, %bb.a, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 3 uses
  %.not2.i.i40 = icmp eq ptr %i.y, null
  br i1 %.not2.i.i40, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42, label %bb.j

bb.j:                                             ; preds = %.loopexit74
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !123 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i41, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !124
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.x, align 8, !tbaa !40
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr nonnull %i.y)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42 unwind label %bb.o, !inline_history !126

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42: ; preds = %bb.n, %bb.m, %.loopexit74
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 3 uses
  %.not2.i = icmp eq ptr %i.at, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !123 ; 2 uses
  %.not.i43 = icmp eq ptr %i.av, null
  br i1 %.not.i43, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !124
  %i.ax = icmp eq i32 %i.aw, 3
  br i1 %i.ax, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.as, align 8, !tbaa !40
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr nonnull %i.at)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !126

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(56) %i.bh)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.x
  %i.bn = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bo = add i64 %.sroa.4.0.copyload.i, 32
  %i.bp = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.bn, i64 noundef %i.bo, i64 noundef 16)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit unwind label %bb.z, !inline_history !127

bb.z:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume(ptr noundef nonnull align 8 dereferenceable(368) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.0:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %.sroa.10 = alloca [12 x i8], align 4           ; 2 uses
  %.reload.addr258 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr260 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr261 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %.059.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.sroa.1053.8..sroa_idx226 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.10.8..sroa_idx225 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %index.addr263 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !246 ; 2 uses
  %.not.i.i3270 = icmp eq ptr %i.h, null
  br i1 %.not.i.i3270, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.a:                                             ; preds = %bb.i, %.loopexit, %.critedge.i
  %.reload = load ptr, ptr %.reload.addr239, align 8, !tbaa !129 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !141
  %i.k = add i64 %i.j, %i.aq
  store i64 %i.k, ptr %i.i, align 8, !tbaa !141
  store i64 %i.ar, ptr %.059.reload.addr, align 8
  %.sroa.2.0..sroa_idx.i.i.i222 = getelementptr inbounds nuw i8, ptr %.reload, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %.sroa.22.0..sroa_idx.i.i.i217 = getelementptr inbounds nuw i8, ptr %.reload, i64 32
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i217, align 8, !tbaa !60, !noalias !251 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !66, !noalias !251 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i222, align 8, !tbaa !60, !noalias !251 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %bb.a
  %i.m = add i64 %.sroa.2.0.copyload.i.i.i, 1     ; 2 uses
  %i.n = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.n, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %bb.a
  %.pre107 = load ptr, ptr %i.d, align 8, !tbaa !68
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us30.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.t, %.cont.us.i.i ]
  %.sroa.11.0.us29.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.u, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.o = icmp eq i64 %.sroa.11.0.us29.i.i, -1
  br i1 %i.o, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !71
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.q = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.r = add i64 %i.q, %.0.us30.i.i
  %i.s = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.s, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !71
  %i.t = add i64 %.else.val.us.i.i.1, %i.r        ; 3 uses
  %i.u = add i64 %.sroa.11.0.us29.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !256

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.v = and i64 %.sroa.2.0.copyload.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us30.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.t, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us29.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.u, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.w = icmp eq i64 %.sroa.11.0.us29.i.i.epil.init, -1
  br i1 %i.w, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !71
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.y = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.z = add i64 %i.y, %.0.us30.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa201 = phi i64 [ %i.t, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.z, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa201, 0
  %.pre108 = load ptr, ptr %i.d, align 8, !tbaa !68 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i30 = icmp eq ptr %.pre108, null
  br i1 %.not.i.i30, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre108, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !75
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread63, label %.thread.thread.thread

.thread63:                                        ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.reload, i64 8
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.f, align 8, !tbaa !19
  store ptr %i.ad, ptr %.reload.addr260, align 8
  store ptr %.sroa.0.0.copyload.i.i31, ptr %i.e, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr258, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr260)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread63
  %i.ae = load ptr, ptr %.reload.addr258, align 8, !tbaa !80, !nonnull !55, !align !56 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr nonnull %i.c)
          to label %bb.d unwind label %.body.from.202, !inline_history !90

bb.d:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ah = load i8, ptr %i.g, align 8, !tbaa !91, !range !92, !noundef !55
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !246 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i32, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i1 false, ptr %index.addr263, align 8
  %i.ak = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr258, ptr nonnull %0) #25
  br i1 %i.ak, label %CoroEnd, label %.backedge

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205: ; preds = %.thread63
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.202:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %.body.from.200, %.body.from.202
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %.body.from.202 ], [ %i.ao, %.body.from.200 ], [ %i.ao, %bb.g ] ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %.backedge, %resume.0
  %.lcssa7 = phi ptr [ %i.h, %resume.0 ], [ %i.aj, %.backedge ]
  store ptr %.lcssa7, ptr %.reload.addr261, align 8, !tbaa !93, !noalias !246
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr261) #25, !noalias !246
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr261) #28
          to label %bb.f unwind label %bb.g, !noalias !246

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ap = load ptr, ptr %.reload.addr261, align 8, !tbaa !93, !noalias !246
  %.not.i2.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.200

.body.from.200:                                   ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr261) #25, !noalias !246
  br label %.body

.lr.ph71:                                         ; preds = %resume.0, %.backedge
  %.059.reload = load i64, ptr %.059.reload.addr, align 8, !tbaa !129
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !60, !noalias !246 ; 6 uses
  %.sroa.7.8.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.8..sroa_idx225, i64 12, i1 false)
  %.sroa.1053.8.copyload = load i64, ptr %.sroa.1053.8..sroa_idx226, align 8, !tbaa !60 ; 3 uses
  %i.ar = add i64 %i.aq, %.059.reload             ; 4 uses
  %i.as = and i64 %.sroa.1053.8.copyload, 1
  %.not.i.i35 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i35, label %_ZNK5boost6system10error_codecvbEv.exit.thread65, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.at = icmp ne i64 %.sroa.1053.8.copyload, 1
  %i.au = icmp ne i32 %.sroa.7.8.copyload, 0
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond, label %.thread70, label %_ZNK5boost6system10error_codecvbEv.exit.thread65

.thread70:                                        ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %.sroa.7.8.copyload, ptr %i.ay, align 8
  %.sroa.248.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.248.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.248.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %.sroa.1053.8.copyload, ptr %.sroa.248.sroa.3.0..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.ax, align 8, !tbaa !91
  br label %.thread75

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205
  %.pn = phi { ptr, i32 } [ %i.al, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.205 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.013 = extractvalue { ptr, i32 } %.pn, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.013) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread65: ; preds = %bb.h, %.lr.ph71
  %.reload240 = load ptr, ptr %.reload.addr239, align 8, !tbaa !129 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i221 = getelementptr inbounds nuw i8, ptr %.reload240, i64 32 ; 4 uses
  %i.ba = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71 ; 3 uses
  %i.bb = icmp ult i64 %i.aq, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %i.bc = getelementptr inbounds nuw i8, ptr %.reload240, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aq
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !102
  %i.bf = sub nuw i64 %i.ba, %i.aq
  store i64 %i.bf, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71
  br label %bb.a

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %.sroa.2.0..sroa_idx.i.i.i224 = getelementptr inbounds nuw i8, ptr %.reload240, i64 48 ; 2 uses
  %i.bg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i224, align 8, !tbaa !103 ; 4 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.reload240, i64 40 ; 2 uses
  %i.bi = sub nuw i64 %i.aq, %i.ba                ; 3 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !71 ; 2 uses
  %i.bm = icmp ugt i64 %i.bi, %i.bl
  br i1 %i.bm, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i193 = icmp eq i64 %i.bg, 1
  br i1 %exitcond.not.i193, label %.loopexit, label %.from.206.lr.ph, !llvm.loop !257

.from.206.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.206, !llvm.loop !257

.lr.ph:                                           ; preds = %.from.206
  %i.bn = add nuw i64 %i.bo, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %i.bg
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.206, !llvm.loop !257

.from.206:                                        ; preds = %.from.206.lr.ph, %.lr.ph
  %i.bo = phi i64 [ 1, %.from.206.lr.ph ], [ %i.bn, %.lr.ph ] ; 3 uses
  %.018.i63195 = phi i64 [ %i.bi, %.from.206.lr.ph ], [ %i.bq, %.lr.ph ]
  %.01217.i64194 = phi i64 [ 0, %.from.206.lr.ph ], [ %i.bo, %.lr.ph ]
  %i.bp = phi i64 [ %i.bl, %.from.206.lr.ph ], [ %i.bt, %.lr.ph ]
  %i.bq = sub nuw i64 %.018.i63195, %i.bp         ; 3 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !71 ; 2 uses
  %i.bu = icmp ugt i64 %i.bq, %i.bt
  br i1 %i.bu, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !257

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !257

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.reload240, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i8 0, i64 32, i1 false)
  %.reload250 = load ptr, ptr %.reload.addr239, align 8, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %.reload250, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i8 0, i64 16, i1 false)
  br label %bb.a

.critedge.i.loopexit:                             ; preds = %.from.206
  %i.bx = add i64 %.01217.i64194, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.bi, %.from..lr.ph.i ], [ %i.bq, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.bx, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.bj, %.from..lr.ph.i ], [ %i.br, %.critedge.i.loopexit ]
  %i.by = getelementptr inbounds nuw i8, ptr %.reload240, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i64 16, i1 false), !tbaa.struct !108
  %i.bz = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.bz) ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !102
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %..i14.i
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !102
  %i.cc = sub i64 %i.bz, %..i14.i
  store i64 %i.cc, ptr %.sroa.22.0..sroa_idx.i.i.i221, align 8, !tbaa !71
  %i.cd = sub i64 %i.bg, %.01217.i.lcssa
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.01217.i.lcssa
  store ptr %i.ce, ptr %i.bh, align 8, !tbaa !66
  store i64 %i.cd, ptr %.sroa.2.0..sroa_idx.i.i.i224, align 8, !tbaa !60
  br label %bb.a

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %i.cf = phi ptr [ %.pre107, %.thread.from...thread_crit_edge ], [ %.pre108, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i37, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !75
  %i.cg = icmp eq i32 %.pre, 0
  br i1 %i.cg, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.c, %.thread.thread
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !109, !noalias !258
  %i.ci = and i64 %i.ch, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.ci, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.cj = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !258
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !258
  %i.cm = tail call noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !258, !inline_history !117
  br i1 %i.cm, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %.thread.thread.thread, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.cn = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !99, !nonnull !55, !align !56 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i64 %i.ar, ptr %i.cp, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 125, ptr %i.cr, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.cn, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !60
  store i8 1, ptr %i.cq, align 8, !tbaa !91
  br label %.thread75

.critedge:                                        ; preds = %.thread.thread, %.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !99, !nonnull !55, !align !56 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store i64 %i.ar, ptr %i.ct, align 8, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cu, align 8, !tbaa !91
  br label %.thread75

.thread75:                                        ; preds = %.critedge, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread70
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !25, !noalias !261
  store i64 %i.cx, ptr %.reload.addr258, align 8, !tbaa !25, !alias.scope !261
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28, !noalias !261
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i39, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread75
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33, !noalias !261 ; 2 uses
  store ptr %i.dc, ptr %.sroa.1053.8..sroa_idx226, align 8, !tbaa !33, !alias.scope !261
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34, !noalias !261
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.de, ptr %i.df, align 8, !tbaa !34, !alias.scope !261
  store ptr null, ptr %i.db, align 8, !tbaa !33, !noalias !261
  store ptr null, ptr %i.dd, align 8, !tbaa !34, !noalias !261
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35, !noalias !261
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.da)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.cy, align 8, !tbaa !28, !noalias !261
  %.pre109 = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.di = icmp eq ptr %.pre109, null
  br label %AfterCoroSave178

bb.m:                                             ; preds = %.thread75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1053.8..sroa_idx226, i8 0, i64 24, i1 false), !alias.scope !261
  br label %AfterCoroSave178

bb.n:                                             ; preds = %bb.k
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  tail call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

AfterCoroSave178:                                 ; preds = %bb.m, %bb.l
end_hunk_3
