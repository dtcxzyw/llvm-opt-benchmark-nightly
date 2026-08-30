Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parallel?download=true
inline.NumInlined: 1169
inline.NumDeleted: 335
begin_hunk_0_@_ZNK4pbrt12AtomicDouble8ToStringB5cxx11Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.e

_ZN4pbrt12StringPrintfIJdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4pbrt7Barrier5BlockEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %0, ptr %1, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.g, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  invoke void @_ZN4pbrt8LogFatalIJRA11_KcRA2_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 34, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, ptr noundef nonnull align 1 dereferenceable(2) @.str.4, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #25
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %i.g, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not, label %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.noexc
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.lr.ph.i
  %.val.val.i = load i32, ptr %i.e, align 8, !tbaa !33
  %i.k = icmp eq i32 %.val.val.i, 0
  br i1 %i.k, label %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit", label %.lr.ph.i, !llvm.loop !40

"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread": ; preds = %bb.e
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j) #23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !42
  br label %bb.f

"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.noexc
  %.pre6 = load i8, ptr %i.c, align 8, !tbaa !32, !range !43
  %i.o = trunc nuw i8 %.pre6 to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = add nsw i32 %i.q, -1                     ; 3 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !42
  br i1 %i.o, label %bb.f, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.f:                                             ; preds = %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit"
  %i.s = phi i32 [ %i.n, %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread" ], [ %i.r, %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit" ] ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit", %bb.f, %bb.g
  %i.v = phi i32 [ %i.r, %"_ZNSt18condition_variable4waitIZN4pbrt7Barrier5BlockEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit" ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  %i.w = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %i.w

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i8, ptr %i.c, align 8, !tbaa !32, !range !43
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit5

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn11 = phi { ptr, i32 } [ %i.i, %.thread ], [ %i.x, %bb.h ] ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4, label %_ZNSt11unique_lockISt5mutexED2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit5

_ZNSt11unique_lockISt5mutexED2Ev.exit5:           ; preds = %bb.h, %bb.i, %bb.j
  %.pn10 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %.pn11, %bb.i ], [ %.pn11, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA11_KcRA2_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(11) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !11, !alias.scope !44
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !44
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !44
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA11_KcJRA2_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(11) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA11_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !44 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21, !alias.scope !44
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA11_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !22
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPoolC2Ei(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 66), (72, 80)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %3 = alloca %"class.std::thread", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %0, i8 0, i64 66, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #23
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = add nsw i32 %1, -2
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.0618 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %3, align 8, !tbaa !55
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN4pbrt10ThreadPoolEFvvEPS4_EEEEEE, i64 16), ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x i64> <i64 ptrtoint (ptr @_ZN4pbrt10ThreadPool6WorkerEv to i64), i64 0>, ptr %i.i, align 8, !tbaa !62
  store ptr %i.g, ptr %2, align 8, !tbaa !64
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %2, align 8, !tbaa !64     ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23, !inline_history !66
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !64     ; 3 uses
  %.not.i6.i = icmp eq ptr %i.o, null
  br i1 %.not.i6.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i: ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #23, !inline_history !66
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !67   ; 7 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !68
  %.not.i.i8 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i8, label %bb.f, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.e
  store i64 0, ptr %i.s, align 8, !tbaa !55
  %i.u = load i64, ptr %3, align 8, !tbaa !69
  store i64 %i.u, ptr %i.s, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.d, align 8, !tbaa !67
  br label %_ZNSt6threadD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !70     ; 12 uses
  %i.x = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 4 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #25
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i13 = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i13)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26
          to label %.noexc15 unwind label %.loopexit ; 12 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = load i64, ptr %3, align 8, !tbaa !69
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !69
  store i64 0, ptr %3, align 8, !tbaa !69
  %.not10.i.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc15
  %i.ak = add i64 %i.x, -8
  %i.al = sub i64 %i.ak, %i.y                     ; 3 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.al, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  %i.ao = add i64 %i.x, -8
  %i.ap = sub i64 %i.ao, %i.y
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %scevgep24 = getelementptr i8, ptr %scevgep, i64 %i.aq
  %scevgep25 = getelementptr i8, ptr %i.w, i64 8
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %i.aq
  %bound0 = icmp ult ptr %i.ah, %scevgep26
  %bound1 = icmp ult ptr %i.w, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.al, 120
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4611686018427387888     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.w, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.av ; 4 uses
  %next.gep28 = getelementptr i8, ptr %i.w, i64 %i.av ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.aw = getelementptr i8, ptr %next.gep28, i64 32 ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep28, i64 64 ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep28, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep28, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  %wide.load29 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  %wide.load30 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  %wide.load31 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  %i.az = getelementptr i8, ptr %next.gep, i64 32
  %i.ba = getelementptr i8, ptr %next.gep, i64 64
  %i.bb = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !69, !alias.scope !79, !noalias !76
  store <4 x i64> %wide.load29, ptr %i.az, align 8, !tbaa !69, !alias.scope !79, !noalias !76
  store <4 x i64> %wide.load30, ptr %i.ba, align 8, !tbaa !69, !alias.scope !79, !noalias !76
  store <4 x i64> %wide.load31, ptr %i.bb, align 8, !tbaa !69, !alias.scope !79, !noalias !76
  store <4 x i64> zeroinitializer, ptr %next.gep28, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  store <4 x i64> zeroinitializer, ptr %i.aw, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  store <4 x i64> zeroinitializer, ptr %i.ax, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  store <4 x i64> zeroinitializer, ptr %i.ay, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.bd = shl i64 %n.vec33, 3                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.ah, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.w, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index34, 3                     ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ah, i64 %i.bg
  %next.gep36 = getelementptr i8, ptr %i.w, i64 %i.bg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %wide.load37 = load <4 x i64>, ptr %next.gep36, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  store <4 x i64> %wide.load37, ptr %next.gep35, align 8, !tbaa !69, !alias.scope !79, !noalias !76
  store <4 x i64> zeroinitializer, ptr %next.gep36, align 8, !tbaa !69, !alias.scope !76, !noalias !71
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.an, %n.vec33
  br i1 %cmp.n39, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.bi = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !69, !alias.scope !74, !noalias !71
  store i64 %i.bi, ptr %.012.i.i.i.i, align 8, !tbaa !69, !alias.scope !71, !noalias !74
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !69, !alias.scope !74, !noalias !71
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %.noexc15 ], [ %i.be, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i
  %4 = load ptr, ptr %i.e, align 8, !tbaa !68
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %6) #24
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, %bb.h
  store ptr %i.ah, ptr %0, align 8, !tbaa !70
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !67
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bm, ptr %i.e, align 8, !tbaa !68
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %3, align 8, !tbaa !69
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.pr, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  call void @_ZSt9terminatev() #27
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bn = add nuw nsw i32 %.0618, 1
  %exitcond.not = icmp eq i32 %.0618, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !87

bb.j:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %3, align 8, !tbaa !69
  %.not.i11 = icmp eq i64 %.sroa.0.0.copyload.i.i10, 0
  br i1 %.not.i11, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #27
  unreachable

.body:                                            ; preds = %bb.k, %bb.j, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.bo, %bb.j ], [ %i.n, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i ], [ %lpad.phi, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #23
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool6WorkerEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !88
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @.str.5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  store i8 1, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = load i8, ptr %i.f, align 8, !tbaa !90, !range !43, !noundef !91
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4pbrt10ThreadPool10WorkOrWaitEPSt11unique_lockISt5mutexEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1, i1 noundef zeroext false)
          to label %bb.e unwind label %.loopexit, !llvm.loop !92

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.i = load i8, ptr %i.d, align 8, !tbaa !32, !range !43, !noundef !91
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %lpad.phi

bb.j:                                             ; preds = %bb.e
  %i.m = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !88
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @.str.6)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.o = load i8, ptr %i.d, align 8, !tbaa !32, !range !43, !noundef !91
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i2, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

_ZNSt11unique_lockISt5mutexED2Ev.exit3:           ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !93

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

declare void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
end_hunk_0
