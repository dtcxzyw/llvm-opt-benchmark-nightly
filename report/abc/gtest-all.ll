Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/gtest-all?download=true
inline.NumInlined: 9241
inline.NumDeleted: 2357
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7testing8internal9DeathTestC2Ev:bb.a
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #57
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.o = load i64, ptr %i.m, align 8, !tbaa !86
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %common.resume

bb.k:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !193
  %i.k = tail call noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %i.j, ptr noundef nonnull @.str.378) ; 3 uses
  %i.l = tail call i32 @fputc(i32 noundef 73, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !83
  %fputs7 = tail call i32 @fputs(ptr %i.m, ptr %i.k) ; 0 uses
  %i.n = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  tail call void @_exit(i32 noundef 1) #57
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !195
  %i.p = load ptr, ptr %0, align 8, !tbaa !83
  %fputs = tail call i32 @fputs(ptr %i.p, ptr %i.o) #59 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !195
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #57
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef %0, ptr nofree noundef align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200
  store ptr %i.k, ptr %i.i, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !86
  store i64 %i.n, ptr %i.l, align 8, !tbaa !86
  store ptr null, ptr %i.j, align 8, !tbaa !200
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !92
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %0, ptr noundef nonnull align 8 %5, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !92
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !86
  %6 = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.w = icmp eq i32 %6, 1
  br i1 %i.w, label %bb.h, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !202
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !86
  invoke void %i.z(ptr noundef %i.aa)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.i, !inline_history !3

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #60, !inline_history !203
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.f, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.g, %bb.h
  ret i1 %i.r

bb.j:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #55
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !577

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !83
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13DeathTestImpl26ReadAndInterpretStatusByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !208
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.b, i64 noundef 1)
  %i.g = trunc i64 %i.f to i32
  switch i32 %i.g, label %.critedge [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #58
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !578

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.k, align 8, !tbaa !210
  br label %.preheader

bb.e:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.b, align 1, !tbaa !86    ; 2 uses
  switch i8 %i.l, label %bb.af [
    i8 82, label %bb.f
    i8 84, label %bb.g
    i8 76, label %bb.h
    i8 73, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.m, align 8, !tbaa !210
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 4, ptr %i.n, align 8, !tbaa !210
  br label %.preheader

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.o, align 8, !tbaa !210
  br label %.preheader

bb.i:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.d, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  br label %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i

_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i:    ; preds = %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i.backedge, %bb.i
  %i.q = invoke i64 @read(i32 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef 255)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = and i64 %i.q, 2147483647
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !86
  %i.v = load ptr, ptr %1, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.a) #55
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 1 dereferenceable(256) %i.a, i64 noundef %i.x)
          to label %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i.backedge unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i.backedge: ; preds = %bb.k, %bb.n
  br label %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i, !llvm.loop !579

bb.l:                                             ; preds = %bb.k, %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.j
  switch i32 %i.r, label %..critedge_crit_edge.i [
    i32 -1, label %bb.n
    i32 0, label %bb.o
  ]

..critedge_crit_edge.i:                           ; preds = %bb.m
  %.pre.i = tail call ptr @__errno_location() #58
  %.pre = load i32, ptr %.pre.i, align 4, !tbaa !93
  br label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call ptr @__errno_location() #58
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !93 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i.backedge, label %.critedge.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef 365)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.ad = load ptr, ptr %1, align 8, !tbaa !90, !noalias !584
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.ad)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.r

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.p
  %i.ae = load ptr, ptr %3, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !84
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.ai = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !86
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

end_hunk_0
begin_hunk_1_@_ZN7testing8internal8FilePath9NormalizeEv:bb.a
  %.sroa.010.021 = phi ptr [ %i.k, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.sroa.010.021, align 1, !tbaa !86 ; 2 uses
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq ptr %.sroa.013.022, %i.d
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %.sroa.013.022, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !86
  %.not = icmp eq i8 %i.i, 47
  br i1 %.not, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %.lr.ph
  %.sink = phi i8 [ %i.e, %.lr.ph ], [ 47, %bb.b ], [ 47, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 1
  store i8 %.sink, ptr %.sroa.013.022, align 1, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.sroa.013.1 = phi ptr [ %.sroa.013.022, %bb.c ], [ %i.j, %.sink.split ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 1 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !83     ; 3 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %.not18 = icmp eq ptr %i.k, %i.n
  br i1 %.not18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit, label %.lr.ph, !llvm.loop !6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit: ; preds = %bb.d, %bb.a
  %.sroa.013.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %.sroa.013.1, %bb.d ]
  %.lcssa19 = phi ptr [ %i.a, %bb.a ], [ %i.l, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %.sroa.013.0.lcssa to i64
  %i.p = ptrtoint ptr %.lcssa19 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa19, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !86
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES8_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.g, ptr %i.b, align 8, !tbaa !85
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8, !tbaa !83
  %i.j = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.j, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !86
  store i8 %i.l, ptr %i.k, align 1, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !84
  %i.o = load ptr, ptr %4, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !80, !alias.scope !840
  %i.r = load ptr, ptr %4, align 8, !tbaa !83, !noalias !840 ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !84, !noalias !840 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !840
  store i64 %i.s, ptr %i.a, align 8, !tbaa !85, !noalias !840
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.m    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !83, !alias.scope !840
  %i.v = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !840
  store i64 %i.v, ptr %i.q, align 8, !tbaa !86, !alias.scope !840
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc9 ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !86
  store i8 %i.x, ptr %i.w, align 1, !tbaa !86
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !840 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !84, !alias.scope !840
  %i.aa = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !840
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !840
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.ac, align 8, !tbaa !200
  %i.ae = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc10 unwind label %bb.n   ; 5 uses

.noexc10:                                         ; preds = %bb.g
  store i32 1, ptr %i.ae, align 4, !tbaa !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !80
  %i.ah = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc10
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.al, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc10
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !83
  %i.am = load i64, ptr %i.q, align 8, !tbaa !86
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !84
  store ptr %i.q, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.z, align 8, !tbaa !84
  store i8 0, ptr %i.q, align 8, !tbaa !86
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !200 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !202
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %5, 1
  br i1 %i.au, label %bb.k, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !200
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !202
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !86
  invoke void %i.ax(ptr noundef %i.ay)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.o, !inline_history !7

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %bb.i, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i, %bb.j
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !200
  store ptr %i.az, ptr %i.c, align 8, !tbaa !200
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !86
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !86
  %i.bc = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.q
  br i1 %i.bd, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.be = load i64, ptr %i.q, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.l:                                             ; preds = %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

bb.n:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.q
  br i1 %i.bp, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.p
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !86
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %.pn, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.f, ptr %i.b, align 8, !tbaa !85
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !83
  %i.i = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc9, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc9 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !86
  store i8 %i.k, ptr %i.j, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !84
  %i.n = load ptr, ptr %4, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !80, !alias.scope !843
  %i.q = load ptr, ptr %4, align 8, !tbaa !83, !noalias !843 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84, !noalias !843 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !843
  store i64 %i.r, ptr %i.a, align 8, !tbaa !85, !noalias !843
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.o   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !83, !alias.scope !843
  %i.u = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !843
  store i64 %i.u, ptr %i.p, align 8, !tbaa !86, !alias.scope !843
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc10, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc10 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !86
  store i8 %i.w, ptr %i.v, align 1, !tbaa !86
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !843 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !84, !alias.scope !843
  %i.z = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !843
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !843
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.ab, align 8, !tbaa !200
  %i.ad = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc11 unwind label %bb.p   ; 5 uses

.noexc11:                                         ; preds = %bb.i
  store i32 1, ptr %i.ad, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc11
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ak, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc11
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.al = load i64, ptr %i.p, align 8, !tbaa !86
  store i64 %i.al, ptr %i.af, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !84
  store ptr %i.p, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.y, align 8, !tbaa !84
  store i8 0, ptr %i.p, align 8, !tbaa !86
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !200 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !202
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %5, 1
  br i1 %i.at, label %bb.m, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !200
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !202
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !86
  invoke void %i.aw(ptr noundef %i.ax)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.q, !inline_history !7

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.m, %bb.k, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i, %bb.l
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !200
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !200
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !86
  %i.bb = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.n:                                             ; preds = %.noexc.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

bb.p:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.p
  br i1 %i.bo, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14 ], [ %.pn, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher.100", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.g, ptr %i.b, align 8, !tbaa !85
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8, !tbaa !83
  %i.j = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.j, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !86
  store i8 %i.l, ptr %i.k, align 1, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !84
  %i.o = load ptr, ptr %4, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !80, !alias.scope !846
  %i.r = load ptr, ptr %4, align 8, !tbaa !83, !noalias !846 ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !84, !noalias !846 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !846
  store i64 %i.s, ptr %i.a, align 8, !tbaa !85, !noalias !846
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.m    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !83, !alias.scope !846
  %i.v = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !846
  store i64 %i.v, ptr %i.q, align 8, !tbaa !86, !alias.scope !846
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc9 ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !86
  store i8 %i.x, ptr %i.w, align 1, !tbaa !86
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !846 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !84, !alias.scope !846
  %i.aa = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !846
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !846
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINS8_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEPKNS8_6VTableEvE7kVTableB5cxx11, ptr %i.ac, align 8, !tbaa !256
  %i.ae = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc10 unwind label %bb.n   ; 5 uses

.noexc10:                                         ; preds = %bb.g
  store i32 1, ptr %i.ae, align 4, !tbaa !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !80
  %i.ah = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc10
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.al, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc10
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !83
  %i.am = load i64, ptr %i.q, align 8, !tbaa !86
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !84
  store ptr %i.q, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.z, align 8, !tbaa !84
  store i8 0, ptr %i.q, align 8, !tbaa !86
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !258
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %5, 1
  br i1 %i.au, label %bb.k, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !256
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !258
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !86
  invoke void %i.ax(ptr noundef %i.ay)
          to label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.o, !inline_history !8

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %bb.i, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i, %bb.j
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !256
  store ptr %i.az, ptr %i.c, align 8, !tbaa !256
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !86
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !86
  %i.bc = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.q
  br i1 %i.bd, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.be = load i64, ptr %i.q, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.l:                                             ; preds = %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

bb.n:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.q
  br i1 %i.bp, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.p
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !86
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %.pn, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher.100", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.f, ptr %i.b, align 8, !tbaa !85
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !83
  %i.i = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc9, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc9 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !86
  store i8 %i.k, ptr %i.j, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !84
  %i.n = load ptr, ptr %4, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !80, !alias.scope !849
  %i.q = load ptr, ptr %4, align 8, !tbaa !83, !noalias !849 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84, !noalias !849 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !849
  store i64 %i.r, ptr %i.a, align 8, !tbaa !85, !noalias !849
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.o   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !83, !alias.scope !849
  %i.u = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !849
  store i64 %i.u, ptr %i.p, align 8, !tbaa !86, !alias.scope !849
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc10, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc10 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !86
  store i8 %i.w, ptr %i.v, align 1, !tbaa !86
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !849 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !84, !alias.scope !849
  %i.z = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !849
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !849
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINS8_11ValuePolicyINS0_9EqMatcherIS7_EELb0EEEEEPKNS8_6VTableEvE7kVTableB5cxx11, ptr %i.ab, align 8, !tbaa !256
  %i.ad = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc11 unwind label %bb.p   ; 5 uses

.noexc11:                                         ; preds = %bb.i
  store i32 1, ptr %i.ad, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc11
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ak, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc11
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.al = load i64, ptr %i.p, align 8, !tbaa !86
  store i64 %i.al, ptr %i.af, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !84
  store ptr %i.p, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.y, align 8, !tbaa !84
  store i8 0, ptr %i.p, align 8, !tbaa !86
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !258
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %5, 1
  br i1 %i.at, label %bb.m, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !256
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !258
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !86
  invoke void %i.aw(ptr noundef %i.ax)
          to label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.q, !inline_history !8

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.m, %bb.k, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i, %bb.l
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !256
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !256
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !86
  %i.bb = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.n:                                             ; preds = %.noexc.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

bb.p:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.p
  br i1 %i.bo, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14 ], [ %.pn, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher.102", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.g, ptr %i.b, align 8, !tbaa !85
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8, !tbaa !83
  %i.j = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.j, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !86
  store i8 %i.l, ptr %i.k, align 1, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !84
  %i.o = load ptr, ptr %4, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !80, !alias.scope !852
  %i.r = load ptr, ptr %4, align 8, !tbaa !83, !noalias !852 ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !84, !noalias !852 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !852
  store i64 %i.s, ptr %i.a, align 8, !tbaa !85, !noalias !852
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.m    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !83, !alias.scope !852
  %i.v = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !852
  store i64 %i.v, ptr %i.q, align 8, !tbaa !86, !alias.scope !852
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc9 ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !86
  store i8 %i.x, ptr %i.w, align 1, !tbaa !86
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !852 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !84, !alias.scope !852
  %i.aa = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !852
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !852
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS8_11ValuePolicyINS0_9EqMatcherINSt7__cxx1112basic_stringIcS4_SaIcEEEEELb0EEEEEPKNS8_6VTableEvE7kVTable, ptr %i.ac, align 8, !tbaa !261
  %i.ae = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc10 unwind label %bb.n   ; 5 uses

.noexc10:                                         ; preds = %bb.g
  store i32 1, ptr %i.ae, align 4, !tbaa !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !80
  %i.ah = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc10
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.al, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc10
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !83
  %i.am = load i64, ptr %i.q, align 8, !tbaa !86
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !84
  store ptr %i.q, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.z, align 8, !tbaa !84
  store i8 0, ptr %i.q, align 8, !tbaa !86
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %5, 1
  br i1 %i.au, label %bb.k, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !263
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !86
  invoke void %i.ax(ptr noundef %i.ay)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.o, !inline_history !9

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.k, %bb.i, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i, %bb.j
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !261
  store ptr %i.az, ptr %i.c, align 8, !tbaa !261
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !86
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !86
  %i.bc = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.q
  br i1 %i.bd, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.be = load i64, ptr %i.q, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.l:                                             ; preds = %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

bb.n:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.q
  br i1 %i.bp, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.p
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !86
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %.pn, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher.102", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.f, ptr %i.b, align 8, !tbaa !85
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !83
  %i.i = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc9, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc9 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !86
  store i8 %i.k, ptr %i.j, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !84
  %i.n = load ptr, ptr %4, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !80, !alias.scope !855
  %i.q = load ptr, ptr %4, align 8, !tbaa !83, !noalias !855 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84, !noalias !855 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !855
  store i64 %i.r, ptr %i.a, align 8, !tbaa !85, !noalias !855
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.o   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !83, !alias.scope !855
  %i.u = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !855
  store i64 %i.u, ptr %i.p, align 8, !tbaa !86, !alias.scope !855
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc10, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc10 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !86
  store i8 %i.w, ptr %i.v, align 1, !tbaa !86
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !855 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !84, !alias.scope !855
  %i.z = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !855
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !855
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS8_11ValuePolicyINS0_9EqMatcherINSt7__cxx1112basic_stringIcS4_SaIcEEEEELb0EEEEEPKNS8_6VTableEvE7kVTable, ptr %i.ab, align 8, !tbaa !261
  %i.ad = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc11 unwind label %bb.p   ; 5 uses

.noexc11:                                         ; preds = %bb.i
  store i32 1, ptr %i.ad, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc11
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ak, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc11
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.al = load i64, ptr %i.p, align 8, !tbaa !86
  store i64 %i.al, ptr %i.af, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !84
  store ptr %i.p, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.y, align 8, !tbaa !84
  store i8 0, ptr %i.p, align 8, !tbaa !86
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %5, 1
  br i1 %i.at, label %bb.m, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !263
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !86
  invoke void %i.aw(ptr noundef %i.ax)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.q, !inline_history !9

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.m, %bb.k, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i, %bb.l
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !261
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !261
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !86
  %i.bb = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.n:                                             ; preds = %.noexc.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

bb.p:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.p
  br i1 %i.bo, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14 ], [ %.pn, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.testing::Matcher.102", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !80
  %i.e = icmp eq ptr %2, null
  %i.f = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %1, ptr %i.b, align 8, !tbaa !85
  %i.g = icmp ugt i64 %1, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc8 unwind label %bb.n    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %5, align 8, !tbaa !83
  %i.i = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc8 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %2, align 1, !tbaa !86
  store i8 %i.k, ptr %i.j, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !84
  %i.n = load ptr, ptr %5, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !80, !alias.scope !858
  %i.q = load ptr, ptr %5, align 8, !tbaa !83, !noalias !858 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84, !noalias !858 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !858
  store i64 %i.r, ptr %i.a, align 8, !tbaa !85, !noalias !858
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.o    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %4, align 8, !tbaa !83, !alias.scope !858
  %i.u = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !858
  store i64 %i.u, ptr %i.p, align 8, !tbaa !86, !alias.scope !858
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc9 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !86
  store i8 %i.w, ptr %i.v, align 1, !tbaa !86
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !858 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !84, !alias.scope !858
  %i.z = load ptr, ptr %4, align 8, !tbaa !83, !alias.scope !858
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !858
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %3, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS8_11ValuePolicyINS0_9EqMatcherINSt7__cxx1112basic_stringIcS4_SaIcEEEEELb0EEEEEPKNS8_6VTableEvE7kVTable, ptr %i.ab, align 8, !tbaa !261
  %i.ad = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc10 unwind label %bb.p   ; 5 uses

.noexc10:                                         ; preds = %bb.i
  store i32 1, ptr %i.ad, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc10
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ak, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc10
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.al = load i64, ptr %i.p, align 8, !tbaa !86
  store i64 %i.al, ptr %i.af, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !84
  store ptr %i.p, ptr %4, align 8, !tbaa !83
  store i64 0, ptr %i.y, align 8, !tbaa !84
  store i8 0, ptr %i.p, align 8, !tbaa !86
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %3, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %6 = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %6, 1
  br i1 %i.at, label %bb.m, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !263
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !86
  invoke void %i.aw(ptr noundef %i.ax)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.q, !inline_history !9

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.m, %bb.k, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i, %bb.l
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !261
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !261
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !86
  %i.bb = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.n:                                             ; preds = %.noexc.i.i.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

bb.p:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.p
  br i1 %i.bo, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %.pn, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher.104", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.g, ptr %i.b, align 8, !tbaa !85
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8, !tbaa !83
  %i.j = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.j, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !86
  store i8 %i.l, ptr %i.k, align 1, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !84
  %i.o = load ptr, ptr %4, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !80, !alias.scope !861
  %i.r = load ptr, ptr %4, align 8, !tbaa !83, !noalias !861 ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !84, !noalias !861 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !861
  store i64 %i.s, ptr %i.a, align 8, !tbaa !85, !noalias !861
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.m    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !83, !alias.scope !861
  %i.v = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !861
  store i64 %i.v, ptr %i.q, align 8, !tbaa !86, !alias.scope !861
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc9 ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !86
  store i8 %i.x, ptr %i.w, align 1, !tbaa !86
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !861 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !84, !alias.scope !861
  %i.aa = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !861
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !861
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherINSt7__cxx1112basic_stringIcS4_SaIcEEEEELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.ac, align 8, !tbaa !266
  %i.ae = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc10 unwind label %bb.n   ; 5 uses

.noexc10:                                         ; preds = %bb.g
  store i32 1, ptr %i.ae, align 4, !tbaa !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !80
  %i.ah = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc10
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.al, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc10
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !83
  %i.am = load i64, ptr %i.q, align 8, !tbaa !86
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !84
  store ptr %i.q, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.z, align 8, !tbaa !84
  store i8 0, ptr %i.q, align 8, !tbaa !86
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !268
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %5, 1
  br i1 %i.au, label %bb.k, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !268
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !86
  invoke void %i.ax(ptr noundef %i.ay)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.o, !inline_history !10

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.k, %bb.i, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i, %bb.j
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !266
  store ptr %i.az, ptr %i.c, align 8, !tbaa !266
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !86
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !86
  %i.bc = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.q
  br i1 %i.bd, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.be = load i64, ptr %i.q, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.l:                                             ; preds = %.noexc.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

bb.n:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.q
  br i1 %i.bp, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.p
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !86
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %.pn, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Matcher.104", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.f, ptr %i.b, align 8, !tbaa !85
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !83
  %i.i = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc9, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc9 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !86
  store i8 %i.k, ptr %i.j, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !84
  %i.n = load ptr, ptr %4, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !80, !alias.scope !864
  %i.q = load ptr, ptr %4, align 8, !tbaa !83, !noalias !864 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84, !noalias !864 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !864
  store i64 %i.r, ptr %i.a, align 8, !tbaa !85, !noalias !864
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.o   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !83, !alias.scope !864
  %i.u = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !864
  store i64 %i.u, ptr %i.p, align 8, !tbaa !86, !alias.scope !864
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc10, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc10 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !86
  store i8 %i.w, ptr %i.v, align 1, !tbaa !86
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !864 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !84, !alias.scope !864
  %i.z = load ptr, ptr %3, align 8, !tbaa !83, !alias.scope !864
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !864
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherINSt7__cxx1112basic_stringIcS4_SaIcEEEEELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.ab, align 8, !tbaa !266
  %i.ad = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc11 unwind label %bb.p   ; 5 uses

.noexc11:                                         ; preds = %bb.i
  store i32 1, ptr %i.ad, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc11
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ak, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc11
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.al = load i64, ptr %i.p, align 8, !tbaa !86
  store i64 %i.al, ptr %i.af, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !84
  store ptr %i.p, ptr %3, align 8, !tbaa !83
  store i64 0, ptr %i.y, align 8, !tbaa !84
  store i8 0, ptr %i.p, align 8, !tbaa !86
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %2, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !268
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %5 = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %5, 1
  br i1 %i.at, label %bb.m, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !268
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !86
  invoke void %i.aw(ptr noundef %i.ax)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.q, !inline_history !10

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.m, %bb.k, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i, %bb.l
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !266
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !266
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !86
  %i.bb = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.n:                                             ; preds = %.noexc.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

bb.p:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.p
  br i1 %i.bo, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14 ], [ %.pn, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.testing::Matcher.104", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::EqMatcher", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !80
  %i.e = icmp eq ptr %2, null
  %i.f = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %1, ptr %i.b, align 8, !tbaa !85
  %i.g = icmp ugt i64 %1, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc8 unwind label %bb.n    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %5, align 8, !tbaa !83
  %i.i = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc8 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %2, align 1, !tbaa !86
  store i8 %i.k, ptr %i.j, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !84
  %i.n = load ptr, ptr %5, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !80, !alias.scope !867
  %i.q = load ptr, ptr %5, align 8, !tbaa !83, !noalias !867 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !84, !noalias !867 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !867
  store i64 %i.r, ptr %i.a, align 8, !tbaa !85, !noalias !867
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.o    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %4, align 8, !tbaa !83, !alias.scope !867
  %i.u = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !867
  store i64 %i.u, ptr %i.p, align 8, !tbaa !86, !alias.scope !867
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc9 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !86
  store i8 %i.w, ptr %i.v, align 1, !tbaa !86
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !85, !noalias !867 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !84, !alias.scope !867
  %i.z = load ptr, ptr %4, align 8, !tbaa !83, !alias.scope !867
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !867
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %3, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE9GetVTableINS6_11ValuePolicyINS0_9EqMatcherINSt7__cxx1112basic_stringIcS4_SaIcEEEEELb0EEEEEPKNS6_6VTableEvE7kVTable, ptr %i.ab, align 8, !tbaa !266
  %i.ad = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #54
          to label %.noexc10 unwind label %bb.p   ; 5 uses

.noexc10:                                         ; preds = %bb.i
  store i32 1, ptr %i.ad, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc10
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ak, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc10
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !83
  %i.al = load i64, ptr %i.p, align 8, !tbaa !86
  store i64 %i.al, ptr %i.af, align 8, !tbaa !86
  %.pre.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !84
  store ptr %i.p, ptr %4, align 8, !tbaa !83
  store i64 0, ptr %i.y, align 8, !tbaa !84
  store i8 0, ptr %i.p, align 8, !tbaa !86
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %3, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !268
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %6 = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %6, 1
  br i1 %i.at, label %bb.m, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !268
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !86
  invoke void %i.aw(ptr noundef %i.ax)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.q, !inline_history !10

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.m, %bb.k, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i.i, %bb.l
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !266
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !266
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !86
  %i.bb = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.n:                                             ; preds = %.noexc.i.i.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

bb.p:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #55
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.p
  br i1 %i.bo, label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15

_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %.pn, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn.pn, %_ZN7testing8internal14ComparisonBaseINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_St8equal_toIvEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal2RED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @regfree(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @regfree(ptr noundef nonnull %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !86
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #60
  unreachable
}

declare void @regfree(ptr noundef) local_unnamed_addr #16

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #55 ; 0 uses
  tail call void @_ZSt9terminatev() #60
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal2RE9FullMatchEPKcRKS1_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.regmatch_t, align 4         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = call i32 @regexec(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef 1, ptr noundef nonnull %2, i32 noundef 0)
  %i.f = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal2RE12PartialMatchEPKcRKS1_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.regmatch_t, align 4         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = call i32 @regexec(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef 1, ptr noundef nonnull %2, i32 noundef 0)
  %i.f = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}
end_hunk_1
begin_hunk_2_@_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !273
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.b, align 8, !tbaa !86
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #56
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit

_ZN7testing8internal9TraceInfoD2Ev.exit:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.e ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN7testing8internal9TraceInfoD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %.body
  %i.q = load i64, ptr %i.b, align 8, !tbaa !86
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #56
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit5

_ZN7testing8internal9TraceInfoD2Ev.exit5:         ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing11ScopedTraceD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !273
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest13PopGTestTraceEv(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.e, %bb.e ]
  %i.g = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.g) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13DeathTestImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #60
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal16ForkingDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal15NoExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %7 = alloca %"class.std::allocator", align 1    ; 2 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal13DeathTestImplE, i64 16), ptr %0, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !208
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i32 416, ptr %i.a, align 4, !tbaa !93
  invoke void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.510)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #57
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.e, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.k
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %9 = atomicrmw add ptr %i.k, i32 -1 acq_rel, align 4
  %i.l = icmp eq i32 %9, 1
  br i1 %i.l, label %bb.m, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !200
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !86
  invoke void %i.o(ptr noundef %i.p)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.n, !inline_history !3

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #60, !inline_history !203
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.l, %bb.m
  ret void

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13ExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal16DeathTestFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal23DefaultDeathTestFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #56
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal35DefaultGlobalTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #56
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal38DefaultPerThreadTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27PrettyUnitTestResultPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27PrettyUnitTestResultPrinter18OnTestProgramStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27PrettyUnitTestResultPrinter22OnEnvironmentsSetUpEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing17TestEventListener16OnTestSuiteStartERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing17TestEventListener14OnTestSuiteEndERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27PrettyUnitTestResultPrinter25OnEnvironmentsTearDownEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27PrettyUnitTestResultPrinter16OnTestProgramEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing17TestEventListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter18OnTestProgramStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter20OnTestIterationStartERKNS_8UnitTestEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter24OnEnvironmentsSetUpStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter22OnEnvironmentsSetUpEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter15OnTestCaseStartERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter11OnTestStartERKNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter14OnTestDisabledERKNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter13OnTestCaseEndERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter27OnEnvironmentsTearDownStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter25OnEnvironmentsTearDownEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26BriefUnitTestResultPrinter16OnTestProgramEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal24XmlUnitTestResultPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7testing8internal24XmlUnitTestResultPrinterE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal24XmlUnitTestResultPrinterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !86
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #56, !inline_history !527
  br label %_ZN7testing8internal24XmlUnitTestResultPrinterD2Ev.exit

_ZN7testing8internal24XmlUnitTestResultPrinterD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener18OnTestProgramStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener20OnTestIterationStartERKNS_8UnitTestEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener24OnEnvironmentsSetUpStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener22OnEnvironmentsSetUpEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener16OnTestSuiteStartERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener15OnTestCaseStartERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener11OnTestStartERKNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener14OnTestDisabledERKNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener16OnTestPartResultERKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener9OnTestEndERKNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener14OnTestSuiteEndERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener13OnTestCaseEndERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener27OnEnvironmentsTearDownStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener25OnEnvironmentsTearDownEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing22EmptyTestEventListener16OnTestProgramEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal25JsonUnitTestResultPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7testing8internal25JsonUnitTestResultPrinterE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !86
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #56, !inline_history !528
  br label %_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev.exit

_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27OsStackTraceGetterInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18OsStackTraceGetterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal9DeathTestD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal9DeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !203
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 251)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !200
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing7MatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !256
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !47

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !529
  unreachable

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 245)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !256
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !530
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 251)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !256
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !530
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing7MatcherIRKSt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.d, !inline_history !48

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !531
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 245)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !261
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !532
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 251)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !261
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !532
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing7MatcherISt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.d, !inline_history !49

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !533
  unreachable

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 245)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !266
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !534
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.517, i32 noundef 251)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !266
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !534
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal26GoogleTestFailureExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #56
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef %1) #55
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !203
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #40

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #40

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @clone(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: mustprogress noreturn uwtable
define internal noundef i32 @_ZN7testing8internalL22ExecDeathTestChildMainEPv(ptr nofree noundef readonly captures(none) %0) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !249
  %i.d = tail call i32 @close(i32 noundef %i.c)
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %.critedge57

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #58
  %i.g = load i32, ptr %i.f, align 4, !tbaa !93
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !1891

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 19, ptr %i.a, align 8, !tbaa !85
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.critedge
  store ptr %i.j, ptr %8, align 8, !tbaa !83
  %i.k = load i64, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.j, ptr noundef nonnull align 1 dereferenceable(19) @.str.13, i64 19, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !84
  %i.m = load ptr, ptr %8, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %i.o = load i64, ptr %i.l, align 8, !tbaa !84, !noalias !1916
  %i.p = add i64 %i.o, -4611686018427387819
  %i.q = icmp ult i64 %i.p, 85
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #57
          to label %.noexc58 unwind label %bb.v

.noexc58:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, i64 noundef 85)
          to label %.noexc59 unwind label %bb.v   ; 6 uses

.noexc59:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !80, !alias.scope !1916
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !83   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc59
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc59
  store ptr %i.t, ptr %7, align 8, !tbaa !83, !alias.scope !1916
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !86
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !86, !alias.scope !1916
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ab = phi i64 [ %i.x, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !84, !alias.scope !1916
  store ptr %i.u, ptr %i.r, align 8, !tbaa !83
  store i64 0, ptr %i.ac, align 8, !tbaa !84
  store i8 0, ptr %i.u, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !84, !noalias !1917
  %i.af = add i64 %i.ae, -4611686018427387897
  %i.ag = icmp ult i64 %i.af, 7
  br i1 %i.ag, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #57
          to label %.noexc64 unwind label %bb.w

.noexc64:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60: ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, i64 noundef 7)
          to label %.noexc65 unwind label %bb.w   ; 6 uses

.noexc65:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !80, !alias.scope !1917
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.h:                                             ; preds = %.noexc65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !84 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.noexc65
  store ptr %i.aj, ptr %6, align 8, !tbaa !83, !alias.scope !1917
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !86
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !86, !alias.scope !1917
end_hunk_2
begin_hunk_3_@_ZN7testing8internal21UniversalTersePrinterIPKcE5PrintES3_PSo:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !80
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.e, ptr %i.a, align 8, !tbaa !85
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !83
  %i.h = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.h, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !86
  store i8 %i.j, ptr %i.i, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !84
  %i.m = load ptr, ptr %2, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  invoke void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit: ; preds = %bb.f
  %i.o = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !86
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.v = load i64, ptr %i.d, align 8, !tbaa !86
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string.117", align 8 ; 11 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.514, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !2082
  %i.e = call noundef i64 @wcslen(ptr noundef nonnull %0) #61 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.e, ptr %i.a, align 8, !tbaa !85
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !320
  %i.h = load i64, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  store i64 %i.h, ptr %i.d, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.i = phi i64 [ %i.h, %.noexc.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.c ] ; 4 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i32, ptr %0, align 4, !tbaa !316
  store i32 %i.k, ptr %i.j, align 4, !tbaa !316
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = call ptr @wmemcpy(ptr noundef %i.j, ptr noundef nonnull %0, i64 noundef %i.e) #55 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !85
  %.pre7.i.i = load ptr, ptr %2, align 8, !tbaa !320
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i ], [ %i.j, %bb.d ], [ %.pre7.i.i, %bb.e ] ; 2 uses
  %i.n = phi i64 [ %i.i, %._crit_edge.i.i ], [ %i.i, %bb.d ], [ %.pre6.i.i, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !321
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 0, ptr %i.p, align 4, !tbaa !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  invoke fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull %1)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit: ; preds = %bb.f
  %i.q = load ptr, ptr %2, align 8, !tbaa !320    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !86
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #56
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !320    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.y = load i64, ptr %i.d, align 8, !tbaa !86
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #56
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !256
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !2083

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !256
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !47

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !529
  unreachable

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit unwind label %bb.d, !inline_history !2084

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.d, !inline_history !48

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !531
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit unwind label %bb.d, !inline_history !2085

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.d, !inline_history !49

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #60, !inline_history !533
  unreachable

_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing19MatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal24DummyMatchResultListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !241    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.440) #57
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #54 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !80
  %i.t = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.v, ptr %i.a, align 8, !tbaa !85
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !83
  %i.y = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.y, ptr %i.s, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !86
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !86
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !84
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !80, !alias.scope !2092
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !83, !alias.scope !2093 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !84, !alias.scope !2093 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !2094
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !83, !alias.scope !2092
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !86, !alias.scope !2093
  store i64 %i.an, ptr %i.af, align 8, !tbaa !86, !alias.scope !2092
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !84, !alias.scope !2093
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !84, !alias.scope !2092
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !83, !alias.scope !2093
  store i64 0, ptr %i.ap, align 8, !tbaa !84, !alias.scope !2093
  store i8 0, ptr %i.ah, align 8, !tbaa !86, !alias.scope !2093
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !50

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !80, !alias.scope !2095
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !83, !alias.scope !2096 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !84, !alias.scope !2096 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !2097
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !83, !alias.scope !2095
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !86, !alias.scope !2096
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !86, !alias.scope !2095
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !84, !alias.scope !2096
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

end_hunk_3
